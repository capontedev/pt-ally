import { Injectable, ConflictException, UnauthorizedException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateUserDto } from './dto/create-user.dto';
import { LoginUserDto } from './dto/login-user.dto';
import { PaginationQueryDto } from './dto/pagination-query.dto';
import { User } from './entities/user.entity';
import { plainToInstance } from 'class-transformer';

@Injectable()
export class UsersService {
  constructor(
    @InjectRepository(User)
    private usersRepository: Repository<User>,
  ) {}

  async create(createUserDto: CreateUserDto): Promise<User> {
    const existingUser = await this.usersRepository.findOne({
      where: { email: createUserDto.email },
    });

    if (existingUser) {
      throw new ConflictException('El email ya está registrado');
    }

    const user = this.usersRepository.create({
      ...createUserDto,
    });

    return this.usersRepository.save(user);
  }

  async login(loginUserDto: LoginUserDto): Promise<User> {
    const user = await this.usersRepository.findOne({
      where: { email: loginUserDto.email },
    });

    if (!user) {
      throw new UnauthorizedException('Credenciales inválidas');
    }

    if (user.password !== loginUserDto.password) {
      throw new UnauthorizedException('Credenciales inválidas');
    }

    user.last_login_at = new Date();
    await this.usersRepository.save(user);

    return plainToInstance(User, user, {
      excludeExtraneousValues: true,
    });
  }

  async findAll(paginationQuery: PaginationQueryDto) {
    const { page = 1, limit = 10, search } = paginationQuery;
    const skip = (page - 1) * limit;

    const queryBuilder = this.usersRepository.createQueryBuilder('user');

    if (search) {
      queryBuilder.where('(user.full_name LIKE :search OR user.email LIKE :search)', {
        search: `%${search}%`,
      });
    }

    const [users, total] = await queryBuilder
      .skip(skip)
      .take(limit)
      .orderBy('user.create_at', 'DESC')
      .getManyAndCount();

    const transformedUsers = users.map(user =>
      plainToInstance(User, user, {
        excludeExtraneousValues: true,
      }),
    );

    return {
      data: transformedUsers,
      meta: {
        total,
        page,
        limit,
        totalPages: Math.ceil(total / limit),
        hasNextPage: page < Math.ceil(total / limit),
        hasPreviousPage: page > 1,
      },
    };
  }
}
