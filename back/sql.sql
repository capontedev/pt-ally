-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               9.3.0 - MySQL Community Server - GPL
-- Server OS:                    Linux
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ally
CREATE DATABASE IF NOT EXISTS `ally` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ally`;

-- Dumping structure for table ally.task
CREATE TABLE IF NOT EXISTS `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `description` text NOT NULL,
  `done` tinyint(1) DEFAULT '0',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `done_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ally.task: ~0 rows (approximately)
INSERT INTO `task` (`id`, `user_id`, `description`, `done`, `create_at`, `done_at`) VALUES
	(4, 3, 'Configurar entorno de desarrollo', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(5, 3, 'Diseñar interfaz de usuario', 0, '2025-06-14 01:30:58', NULL),
	(6, 3, 'Implementar validación en el registro', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(7, 3, 'Realizar conexión con la base de datos', 0, '2025-06-14 01:30:58', NULL),
	(8, 4, 'Crear API REST para usuarios', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(9, 4, 'Integrar API de clima en el dashboard', 0, '2025-06-14 01:30:58', NULL),
	(10, 4, 'Optimizar consultas SQL', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(11, 4, 'Implementar autenticación JWT', 0, '2025-06-14 01:30:58', NULL),
	(12, 5, 'Realizar pruebas de seguridad', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(13, 5, 'Configurar Docker para desarrollo', 0, '2025-06-14 01:30:58', NULL),
	(14, 5, 'Añadir soporte multi-idioma', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(15, 5, 'Documentar la API en Swagger', 0, '2025-06-14 01:30:58', NULL),
	(16, 6, 'Realizar pruebas unitarias', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(17, 6, 'Refactorizar código backend', 0, '2025-06-14 01:30:58', NULL),
	(18, 6, 'Añadir sistema de roles y permisos', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(19, 6, 'Optimizar carga de imágenes', 0, '2025-06-14 01:30:58', NULL),
	(20, 7, 'Implementar gestión de tareas en el dashboard', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(21, 7, 'Crear endpoints para usuarios', 0, '2025-06-14 01:30:58', NULL),
	(22, 7, 'Añadir filtro de búsqueda en la lista de usuarios', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(23, 7, 'Mejorar estilos en la pantalla de login', 0, '2025-06-14 01:30:58', NULL),
	(24, 8, 'Agregar notificaciones en el sistema', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(25, 8, 'Diseñar iconografía del dashboard', 0, '2025-06-14 01:30:58', NULL),
	(26, 8, 'Optimizar el rendimiento de carga', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(27, 8, 'Implementar paginación de datos', 0, '2025-06-14 01:30:58', NULL),
	(28, 9, 'Mejorar la experiencia de usuario en el registro', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(29, 9, 'Configurar logs para auditoría', 0, '2025-06-14 01:30:58', NULL),
	(30, 9, 'Crear sistema de recuperación de contraseñas', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(31, 9, 'Integrar API de zonas horarias', 0, '2025-06-14 01:30:58', NULL),
	(32, 10, 'Refactorizar código CSS', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(33, 10, 'Añadir gráficos estadísticos al dashboard', 0, '2025-06-14 01:30:58', NULL),
	(34, 10, 'Integrar sistema de comentarios', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(35, 10, 'Optimizar el consumo de API externa', 0, '2025-06-14 01:30:58', NULL),
	(36, 11, 'Configurar servidor en producción', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(37, 11, 'Crear guía de instalación del sistema', 0, '2025-06-14 01:30:58', NULL),
	(38, 11, 'Integrar almacenamiento en la nube', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(39, 11, 'Optimizar tiempo de respuesta de la API', 0, '2025-06-14 01:30:58', NULL),
	(40, 12, 'Analizar carga del sistema bajo pruebas de estrés', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(41, 12, 'Documentar pruebas unitarias y de integración', 0, '2025-06-14 01:30:58', NULL),
	(42, 12, 'Crear sistema de comentarios por usuario', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(43, 12, 'Añadir accesibilidad para usuarios con discapacidad', 0, '2025-06-14 01:30:58', NULL),
	(44, 13, 'Automatizar despliegues con CI/CD', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(45, 13, 'Añadir control de versiones en API', 0, '2025-06-14 01:30:58', NULL),
	(46, 13, 'Optimizar consultas complejas en la base de datos', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(47, 13, 'Rediseñar interfaz de usuario', 0, '2025-06-14 01:30:58', NULL),
	(48, 14, 'Mejorar seguridad de los endpoints', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(49, 14, 'Implementar API Gateway', 0, '2025-06-14 01:30:58', NULL),
	(50, 14, 'Refactorizar código JavaScript', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(51, 14, 'Mejorar compatibilidad con navegadores antiguos', 0, '2025-06-14 01:30:58', NULL),
	(52, 15, 'Añadir soporte a dispositivos móviles', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(53, 15, 'Crear módulo de reportes dinámicos', 0, '2025-06-14 01:30:58', NULL),
	(54, 15, 'Realizar pruebas de carga', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(55, 15, 'Configurar permisos avanzados', 0, '2025-06-14 01:30:58', NULL),
	(56, 16, 'Agregar botón de ayuda contextual', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(57, 16, 'Optimizar imágenes en la aplicación', 0, '2025-06-14 01:30:58', NULL),
	(58, 16, 'Reestructurar el menú de navegación', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(59, 16, 'Configurar notificaciones en tiempo real', 0, '2025-06-14 01:30:58', NULL),
	(60, 17, 'Añadir opción de exportación de datos', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(61, 17, 'Configurar balanceo de carga', 0, '2025-06-14 01:30:58', NULL),
	(62, 17, 'Refactorizar el sistema de permisos', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(63, 17, 'Integrar autenticación con terceros', 0, '2025-06-14 01:30:58', NULL),
	(64, 18, 'Crear módulo de integración con redes sociales', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(65, 18, 'Documentar estructura de la base de datos', 0, '2025-06-14 01:30:58', NULL),
	(66, 18, 'Añadir filtros avanzados en las búsquedas', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(67, 18, 'Optimizar rendimiento en consultas grandes', 0, '2025-06-14 01:30:58', NULL),
	(68, 19, 'Implementar sistema de auditoría de cambios', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(69, 19, 'Añadir opción de personalización de UI', 0, '2025-06-14 01:30:58', NULL),
	(70, 19, 'Configurar herramientas de monitoreo', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(71, 19, 'Mejorar escalabilidad de la aplicación', 0, '2025-06-14 01:30:58', NULL),
	(72, 20, 'Crear módulo de estadísticas avanzadas', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(73, 20, 'Optimizar respuesta de API en dispositivos móviles', 0, '2025-06-14 01:30:58', NULL),
	(74, 20, 'Añadir opción de recuperación de cuentas', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(75, 20, 'Implementar feedback de usuario en tiempo real', 0, '2025-06-14 01:30:58', NULL),
	(76, 21, 'Configurar seguridad avanzada en base de datos', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(77, 21, 'Añadir soporte a múltiples formatos de exportación', 0, '2025-06-14 01:30:58', NULL),
	(78, 21, 'Mejorar accesibilidad en formularios', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(79, 21, 'Automatizar pruebas funcionales', 0, '2025-06-14 01:30:58', NULL),
	(80, 22, 'Optimizar lógica de negocio en API', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(81, 22, 'Añadir opción de compartir datos entre usuarios', 0, '2025-06-14 01:30:58', NULL),
	(82, 22, 'Mejorar uso de caché en servidor', 1, '2025-06-14 01:30:58', '2025-06-14 01:30:58'),
	(83, 22, 'Documentar guía de instalación en servidores locales', 0, '2025-06-14 01:30:58', NULL);

-- Dumping structure for table ally.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(125) DEFAULT NULL,
  `full_name` varchar(125) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ally.user: ~0 rows (approximately)
INSERT INTO `user` (`id`, `email`, `full_name`, `password`, `create_at`, `last_login_at`) VALUES
	(3, 'juan.perez@example.com', 'Juan Pérez', '123456', '2025-06-14 01:28:19', '2025-06-13 21:36:03'),
	(4, 'maria.gomez@example.com', 'María Gómez', '123456', '2025-06-14 01:28:19', NULL),
	(5, 'carlos.rodriguez@example.com', 'Carlos Rodríguez', '123456', '2025-06-14 01:28:19', NULL),
	(6, 'ana.lopez@example.com', 'Ana López', '123456', '2025-06-14 01:28:19', NULL),
	(7, 'david.martinez@example.com', 'David Martínez', '123456', '2025-06-14 01:28:19', NULL),
	(8, 'sofia.torres@example.com', 'Sofía Torres', '123456', '2025-06-14 01:28:19', NULL),
	(9, 'fernando.ramirez@example.com', 'Fernando Ramírez', '123456', '2025-06-14 01:28:19', NULL),
	(10, 'luisa.hernandez@example.com', 'Luisa Hernández', '123456', '2025-06-14 01:28:19', NULL),
	(11, 'ricardo.sanchez@example.com', 'Ricardo Sánchez', '123456', '2025-06-14 01:28:19', NULL),
	(12, 'paola.vargas@example.com', 'Paola Vargas', '123456', '2025-06-14 01:28:19', NULL),
	(13, 'gustavo.mendoza@example.com', 'Gustavo Mendoza', '123456', '2025-06-14 01:28:19', NULL),
	(14, 'valeria.diaz@example.com', 'Valeria Díaz', '123456', '2025-06-14 01:28:19', NULL),
	(15, 'sergio.alvarez@example.com', 'Sergio Álvarez', '123456', '2025-06-14 01:28:19', NULL),
	(16, 'patricia.silva@example.com', 'Patricia Silva', '123456', '2025-06-14 01:28:19', NULL),
	(17, 'andres.ruiz@example.com', 'Andrés Ruiz', '123456', '2025-06-14 01:28:19', NULL),
	(18, 'camila.ortiz@example.com', 'Camila Ortiz', '123456', '2025-06-14 01:28:19', NULL),
	(19, 'javier.fernandez@example.com', 'Javier Fernández', '123456', '2025-06-14 01:28:19', NULL),
	(20, 'martina.ramos@example.com', 'Martina Ramos', '123456', '2025-06-14 01:28:19', NULL),
	(21, 'roberto.castillo@example.com', 'Roberto Castillo', '123456', '2025-06-14 01:28:19', NULL),
	(22, 'elena.morales@example.com', 'Elena Morales', '123456', '2025-06-14 01:28:19', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
