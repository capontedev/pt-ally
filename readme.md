# 🌟 Prueba Técnica Ally - Carlos Aponte

<div align="center">
  <img src="https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white" alt="Angular"/>
  <img src="https://img.shields.io/badge/NestJS-EA2845?style=for-the-badge&logo=nestjs&logoColor=white" alt="NestJS"/>
  <img src="https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript"/>
  <img src="https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL"/>
</div>

## 📋 Índice
- [Descripción](#-descripción)
- [Características](#-características)
- [Tecnologías](#-tecnologías)
- [Instalación](#-instalación)

## 🚀 Descripción
Aplicación web full-stack desarrollada con Angular y NestJS que implementa un sistema de gestión de usuarios y tareas, incluyendo integración con servicios de clima.

## ✨ Características
- 🔐 **Autenticación**
  - Login de usuarios
  - Creación de usuarios
  - Protección de rutas
  - Manejo de sesiones

- 👥 **Gestión de Usuarios**
  - Listado con paginación
  - Búsqueda en tiempo real

- ✅ **Gestión de Tareas**
  - Listado

- 🌤️ **Clima**
  - Visualización actual
  - Pronóstico del tiempo

## 🛠️ Tecnologías

### Frontend
- Angular 18
- TypeScript
- SCSS
- RxJS

### Backend
- NestJS
- TypeScript
- TypeORM
- MySQL

## 💻 Instalación

### Backend
```bash
# Navegar al directorio
cd back

# Instalar dependencias
npm install

# Iniciar servidor
npm run start:dev
```

### Frontend
```bash
# Navegar al directorio
cd front

# Instalar dependencias
npm install

# Iniciar aplicación
npm start
```

## 🔑 Acceso de Prueba
Para facilitar la revisión de la prueba técnica, la base de datos existe en la nube y se han creado usuarios de prueba con tareas predefinidas:

### Credenciales de Acceso
| Email | Contraseña |
|-------|------------|
| valeria.diaz@example.com | 123456 |
| gustavo.mendoza@example.com | 123456 |

> ⚠️ **Nota de Seguridad**: Las credenciales están hardcodeadas en el código únicamente para fines de revisión de la prueba técnica. En un entorno de producción, esto sería una mala práctica de seguridad y las credenciales deberían manejarse de forma segura a través de variables de entorno o un sistema de gestión de secretos.


## 🗄️ Base de Datos Local
Si deseas recrear la base de datos localmente, sigue estos pasos:

1. Asegúrate de tener MySQL instalado y corriendo
2. Crea una nueva base de datos:
```sql
CREATE DATABASE freedb_test-ally;
```

3. Ejecuta el script SQL proporcionado:
```bash
# Desde la raíz del proyecto
mysql -u tu_usuario -p freedb_test-ally < back/sql.sql
```