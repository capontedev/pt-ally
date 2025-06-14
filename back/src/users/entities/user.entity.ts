import { Exclude, Expose } from 'class-transformer';
import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn } from 'typeorm';

@Entity('user')
export class User {
  @PrimaryGeneratedColumn()
  @Expose()
  id: number;

  @Column({ length: 125 })
  @Expose()
  full_name: string;

  @Column({ length: 125, unique: true })
  @Expose()
  email: string;

  @Column({ length: 50 })
  @Exclude()
  password: string;

  @CreateDateColumn({ name: 'create_at' })
  @Expose()
  create_at: Date;

  @Column({ name: 'last_login_at', nullable: true })
  @Expose()
  last_login_at: Date;
}
