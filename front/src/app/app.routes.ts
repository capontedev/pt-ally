import { Routes } from '@angular/router';

export const routes: Routes = [
    {
        path: 'login',
        loadChildren: () => import('./pages/login/login.module').then(m => m.LoginModule)
    },
    {
        path: 'register',
        loadChildren: () => import('./pages/register/register.module').then(m => m.RegisterModule)
    },
    {
        path: 'dashboard',
        loadChildren: () => import('./pages/dashboard/dashboard.module').then(m => m.DashboardModule)
    },
    {
        path: 'users',
        loadChildren: () => import('./pages/users/users.module').then(m => m.UsersModule)
    },
    {
        path: '',
        redirectTo: 'login',
        pathMatch: 'full'
    }
];
