import { IsString, IsNotEmpty, MinLength, MaxLength, Matches, IsEmail } from 'class-validator';

export class CreateUserDto {
  @IsString()
  @IsNotEmpty()
  @MinLength(3)
  @MaxLength(125)
  full_name: string;

  @IsEmail()
  @IsNotEmpty()
  @MaxLength(125)
  email: string;

  @IsString()
  @IsNotEmpty()
  @MinLength(6)
  @MaxLength(50)
  password: string;
}
