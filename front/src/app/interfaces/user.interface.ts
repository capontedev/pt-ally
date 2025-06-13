export interface User {
    id: number;
    full_name: string;
    email: string;
    create_at: Date;
    last_login_at: Date | null;
}

export interface PaginatedResponse<T> {
    data: T[];
    meta: {
        total: number;
        page: number;
        limit: number;
        totalPages: number;
    };
}

export interface LoginRequest {
    email: string;
    password: string;
}

export interface CreateUserRequest {
    full_name: string;
    email: string;
    password: string;
} 