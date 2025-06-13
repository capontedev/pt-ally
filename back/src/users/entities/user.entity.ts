import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn } from 'typeorm';

@Entity('user')
export class User {
    @PrimaryGeneratedColumn()
    id: number;

    @Column({ length: 125 })
    full_name: string;

    @Column({ length: 125, unique: true })
    email: string;

    @Column({ length: 50 })
    password: string;

    @CreateDateColumn({ name: 'create_at' })
    create_at: Date;

    @Column({ name: 'last_login_at', nullable: true })
    last_login_at: Date;
}
