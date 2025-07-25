-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table live_messenger.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table live_messenger.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table live_messenger.favorites
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `favorite_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorites_user_id_foreign` (`user_id`),
  KEY `favorites_favorite_id_foreign` (`favorite_id`),
  CONSTRAINT `favorites_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `users` (`id`),
  CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table live_messenger.favorites: ~0 rows (approximately)
DELETE FROM `favorites`;
INSERT INTO `favorites` (`id`, `user_id`, `favorite_id`, `created_at`, `updated_at`) VALUES
	(15, 22, 2, '2024-03-13 23:56:34', '2024-03-13 23:56:34'),
	(16, 22, 3, '2024-03-13 23:56:37', '2024-03-13 23:56:37'),
	(17, 22, 18, '2024-03-13 23:56:40', '2024-03-13 23:56:40'),
	(18, 22, 17, '2024-03-13 23:56:44', '2024-03-13 23:56:44'),
	(19, 22, 1, '2024-03-13 23:56:56', '2024-03-13 23:56:56'),
	(20, 22, 23, '2024-03-14 00:58:57', '2024-03-14 00:58:57'),
	(22, 23, 25, '2024-03-14 01:47:13', '2024-03-14 01:47:13'),
	(23, 23, 22, '2024-03-14 01:47:16', '2024-03-14 01:47:16'),
	(24, 22, 24, '2024-03-14 03:36:37', '2024-03-14 03:36:37');

-- Dumping structure for table live_messenger.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_id` bigint unsigned NOT NULL,
  `to_id` bigint unsigned NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` json DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table live_messenger.messages: ~203 rows (approximately)
DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
	(1, 22, 23, 'hi', NULL, 1, '2024-03-04 23:41:52', '2024-03-07 04:58:12'),
	(2, 22, 23, 'hello', NULL, 1, '2024-03-04 23:45:55', '2024-03-07 04:58:12'),
	(3, 22, 23, 'hey', NULL, 1, '2024-03-04 23:47:16', '2024-03-07 04:58:12'),
	(4, 22, 23, 'hello', NULL, 1, '2024-03-04 23:50:02', '2024-03-07 04:58:12'),
	(5, 22, 23, 'hello', NULL, 1, '2024-03-04 23:52:56', '2024-03-07 04:58:12'),
	(6, 22, 23, 'hey', NULL, 1, '2024-03-04 23:54:28', '2024-03-07 04:58:12'),
	(7, 22, 23, 'hello', NULL, 1, '2024-03-04 23:54:58', '2024-03-07 04:58:12'),
	(8, 22, 23, 'hey', NULL, 1, '2024-03-04 23:56:01', '2024-03-07 04:58:12'),
	(9, 22, 23, 'hello', NULL, 1, '2024-03-05 01:04:02', '2024-03-07 04:58:12'),
	(10, 22, 23, 'hey', NULL, 1, '2024-03-05 01:07:57', '2024-03-07 04:58:12'),
	(11, 22, 23, 'hey', NULL, 1, '2024-03-05 04:52:58', '2024-03-07 04:58:12'),
	(12, 22, 23, 'hello', NULL, 1, '2024-03-05 04:54:36', '2024-03-07 04:58:12'),
	(19, 22, 23, 'fsdfas', '"/uploads/media_65e704cdc968b.png"', 1, '2024-03-05 05:41:01', '2024-03-07 04:58:12'),
	(20, 22, 23, NULL, '"/uploads/media_65e7058c8cc9b.png"', 1, '2024-03-05 05:44:12', '2024-03-07 04:58:12'),
	(21, 22, 23, NULL, '"/uploads/media_65e705ad78ef2.png"', 1, '2024-03-05 05:44:45', '2024-03-07 04:58:12'),
	(24, 22, 23, 'hi zohan', NULL, 1, '2024-03-06 01:14:28', '2024-03-07 04:58:12'),
	(25, 23, 22, 'hello jhon how are you ?', NULL, 1, '2024-03-06 01:19:42', '2024-03-07 04:50:55'),
	(26, 23, 22, 'hey jhon look at this😃😃', '"/uploads/media_65e81a488db93.jpg"', 1, '2024-03-06 01:24:56', '2024-03-07 04:50:55'),
	(27, 22, 23, 'great', NULL, 1, '2024-03-06 01:26:18', '2024-03-07 04:58:12'),
	(28, 22, 23, 'hi', NULL, 1, '2024-03-06 01:57:34', '2024-03-07 04:58:12'),
	(29, 22, 23, 'hey', NULL, 1, '2024-03-06 01:58:23', '2024-03-07 04:58:12'),
	(30, 22, 23, 'hello', NULL, 1, '2024-03-06 01:59:02', '2024-03-07 04:58:12'),
	(31, 22, 1, 'hello there', NULL, 1, '2024-03-06 03:44:56', '2024-03-12 01:52:39'),
	(32, 22, 23, '😑😑', NULL, 1, '2024-03-06 06:00:06', '2024-03-07 04:58:12'),
	(33, 22, 1, 'hey leanna', NULL, 1, '2024-03-06 23:43:19', '2024-03-12 01:52:39'),
	(34, 22, 2, 'hello', NULL, 0, '2024-03-06 23:44:39', '2024-03-06 23:44:39'),
	(35, 22, 3, 'hi', NULL, 0, '2024-03-07 00:04:14', '2024-03-07 00:04:14'),
	(36, 22, 5, 'hello', NULL, 0, '2024-03-07 00:04:25', '2024-03-07 00:04:25'),
	(37, 22, 9, 'hello', NULL, 0, '2024-03-07 00:06:09', '2024-03-07 00:06:09'),
	(38, 22, 13, 'hey', NULL, 0, '2024-03-07 00:06:19', '2024-03-07 00:06:19'),
	(39, 22, 19, 'hello', NULL, 0, '2024-03-07 00:06:31', '2024-03-07 00:06:31'),
	(40, 22, 17, 'hey there', NULL, 0, '2024-03-07 00:07:07', '2024-03-07 00:07:07'),
	(41, 22, 18, 'hey', NULL, 0, '2024-03-07 00:07:22', '2024-03-07 00:07:22'),
	(42, 22, 12, 'hello', NULL, 0, '2024-03-07 00:07:46', '2024-03-07 00:07:46'),
	(43, 22, 23, 'hello', NULL, 1, '2024-03-07 01:02:27', '2024-03-07 04:58:12'),
	(44, 22, 18, 'hello', NULL, 0, '2024-03-07 03:08:54', '2024-03-07 03:08:54'),
	(45, 22, 23, 'hey', NULL, 1, '2024-03-07 03:11:37', '2024-03-07 04:58:12'),
	(46, 22, 18, 'hey', NULL, 0, '2024-03-07 03:19:37', '2024-03-07 03:19:37'),
	(47, 22, 18, 'hello', NULL, 0, '2024-03-07 03:20:30', '2024-03-07 03:20:30'),
	(48, 22, 18, 'hey', NULL, 0, '2024-03-07 03:24:50', '2024-03-07 03:24:50'),
	(49, 22, 17, 'hey', NULL, 0, '2024-03-07 03:53:41', '2024-03-07 03:53:41'),
	(50, 22, 23, 'hi zohan!', NULL, 1, '2024-03-07 03:54:14', '2024-03-07 04:58:12'),
	(51, 22, 18, 'hey', NULL, 0, '2024-03-07 04:02:14', '2024-03-07 04:02:14'),
	(52, 22, 17, 'hey', NULL, 0, '2024-03-07 04:03:47', '2024-03-07 04:03:47'),
	(53, 22, 23, 'hey', NULL, 1, '2024-03-07 04:04:40', '2024-03-07 04:58:12'),
	(54, 22, 12, 'hello!', NULL, 0, '2024-03-07 04:06:43', '2024-03-07 04:06:43'),
	(55, 23, 22, 'hey jhon whats up', NULL, 1, '2024-03-07 04:58:34', '2024-03-07 04:59:16'),
	(56, 22, 17, 'hi', NULL, 0, '2024-03-08 21:01:36', '2024-03-08 21:01:36'),
	(57, 22, 17, 'helo', NULL, 0, '2024-03-08 21:01:44', '2024-03-08 21:01:44'),
	(59, 22, 22, 'hello', NULL, 1, '2024-03-08 21:13:58', '2024-03-08 21:14:42'),
	(60, 22, 22, 'hey', NULL, 1, '2024-03-08 21:18:40', '2024-03-09 00:19:25'),
	(61, 22, 12, 'hello', NULL, 0, '2024-03-09 00:19:58', '2024-03-09 00:19:58'),
	(62, 22, 17, 'hey', NULL, 0, '2024-03-09 03:15:12', '2024-03-09 03:15:12'),
	(63, 22, 22, '😀😁', NULL, 1, '2024-03-09 03:19:07', '2024-03-09 03:19:21'),
	(64, 22, 22, NULL, '"/uploads/media_65ec30ee91311.jpg"', 1, '2024-03-09 03:50:38', '2024-03-09 04:55:04'),
	(75, 22, 23, 'hi', NULL, 1, '2024-03-10 00:12:42', '2024-03-10 04:30:10'),
	(76, 22, 23, 'hello', NULL, 1, '2024-03-10 03:41:58', '2024-03-10 04:30:10'),
	(77, 22, 23, 'hi zohan', NULL, 1, '2024-03-10 03:43:31', '2024-03-10 04:30:10'),
	(78, 22, 23, 'hello', NULL, 1, '2024-03-10 04:30:58', '2024-03-10 04:33:11'),
	(79, 22, 23, 'hey zohan', NULL, 1, '2024-03-10 04:32:51', '2024-03-10 04:33:11'),
	(80, 23, 22, 'hey jhon', NULL, 1, '2024-03-10 04:33:19', '2024-03-10 04:35:15'),
	(81, 22, 17, 'hey blick', NULL, 0, '2024-03-10 04:34:47', '2024-03-10 04:34:47'),
	(82, 22, 17, 'hey', NULL, 0, '2024-03-10 04:35:02', '2024-03-10 04:35:02'),
	(83, 22, 23, 'hey', NULL, 1, '2024-03-10 04:35:42', '2024-03-10 05:04:15'),
	(84, 22, 23, 'hello', NULL, 1, '2024-03-10 05:04:25', '2024-03-10 05:09:02'),
	(85, 22, 23, 'hey', NULL, 1, '2024-03-10 05:04:34', '2024-03-10 05:09:02'),
	(86, 22, 23, 'hello', NULL, 1, '2024-03-10 05:09:14', '2024-03-10 05:10:26'),
	(87, 22, 23, 'hey', NULL, 1, '2024-03-10 05:10:33', '2024-03-10 05:24:42'),
	(88, 22, 23, 'hello', NULL, 1, '2024-03-10 05:24:51', '2024-03-10 05:25:33'),
	(89, 22, 23, 'hellooooo zooohan!!', NULL, 1, '2024-03-10 05:25:58', '2024-03-10 05:26:58'),
	(90, 22, 23, 'hey', NULL, 1, '2024-03-10 05:26:14', '2024-03-10 05:26:58'),
	(91, 23, 22, '🔥😘😘😘', NULL, 1, '2024-03-10 05:26:36', '2024-03-10 05:29:26'),
	(92, 22, 17, 'hey blick', NULL, 0, '2024-03-10 05:27:09', '2024-03-10 05:27:09'),
	(93, 23, 22, 'hi jhon', NULL, 1, '2024-03-10 05:28:19', '2024-03-10 05:29:26'),
	(94, 23, 22, 'hey jho', NULL, 1, '2024-03-10 05:32:34', '2024-03-10 05:33:41'),
	(95, 23, 22, 'hello', NULL, 1, '2024-03-10 05:33:50', '2024-03-10 05:35:26'),
	(96, 23, 22, 'hey', NULL, 1, '2024-03-10 05:38:59', '2024-03-10 05:41:15'),
	(97, 23, 22, 'hey', NULL, 1, '2024-03-10 05:41:27', '2024-03-10 05:42:26'),
	(98, 23, 22, 'hey zohan', NULL, 1, '2024-03-10 05:42:34', '2024-03-10 05:43:29'),
	(99, 22, 23, 'hey jhon', NULL, 1, '2024-03-10 05:42:44', '2024-03-10 05:44:58'),
	(100, 23, 22, 'hey hey', NULL, 1, '2024-03-10 05:43:03', '2024-03-10 05:43:29'),
	(101, 22, 23, 'hey', NULL, 1, '2024-03-10 05:43:35', '2024-03-10 05:44:58'),
	(102, 22, 23, 'hey zhonan', NULL, 1, '2024-03-10 05:45:08', '2024-03-10 21:28:13'),
	(103, 23, 22, 'hey', NULL, 1, '2024-03-10 05:45:22', '2024-03-10 06:07:22'),
	(104, 22, 23, 'hey', NULL, 1, '2024-03-10 21:29:38', '2024-03-10 21:30:21'),
	(105, 22, 23, 'jey zohan', NULL, 1, '2024-03-10 21:30:07', '2024-03-10 21:30:21'),
	(106, 22, 23, 'hello', NULL, 1, '2024-03-10 21:31:49', '2024-03-10 21:35:27'),
	(107, 22, 23, 'hi', NULL, 1, '2024-03-10 21:35:35', '2024-03-10 21:37:15'),
	(108, 22, 23, 'hello', NULL, 1, '2024-03-10 21:37:27', '2024-03-10 21:39:30'),
	(109, 22, 23, 'hi', NULL, 1, '2024-03-10 21:40:28', '2024-03-10 21:41:02'),
	(110, 22, 23, 'hey jhon', NULL, 1, '2024-03-10 21:40:42', '2024-03-10 21:41:02'),
	(111, 22, 23, 'hellooooo', NULL, 1, '2024-03-10 21:41:12', '2024-03-10 22:17:33'),
	(112, 23, 22, 'hey hello', NULL, 1, '2024-03-10 21:41:36', '2024-03-10 21:45:25'),
	(114, 22, 23, 'hello', NULL, 1, '2024-03-10 21:45:30', '2024-03-10 22:17:33'),
	(116, 22, 23, 'Hello', NULL, 1, '2024-03-10 22:10:35', '2024-03-10 22:17:33'),
	(117, 22, 23, 'hello world', NULL, 1, '2024-03-10 22:17:06', '2024-03-10 22:17:33'),
	(118, 23, 22, 'hey', NULL, 1, '2024-03-10 22:17:43', '2024-03-10 22:22:27'),
	(119, 22, 23, 'helo', NULL, 1, '2024-03-10 22:22:35', '2024-03-10 22:24:53'),
	(120, 23, 22, 'helllooooo', NULL, 1, '2024-03-10 22:24:58', '2024-03-10 22:29:25'),
	(121, 23, 22, '1234', NULL, 1, '2024-03-10 22:25:18', '2024-03-10 22:29:25'),
	(122, 23, 22, 'fasdkfjasldfjasldjflasdkfsadflksadf sadflkjasldfjasldfkj sadfkjasldfjk', NULL, 1, '2024-03-10 22:25:38', '2024-03-10 22:29:25'),
	(123, 23, 22, 'ey', NULL, 1, '2024-03-10 22:29:56', '2024-03-10 22:39:19'),
	(124, 23, 22, 'fasdkfjasldfjasldjflasdkfsadflksadf sadflkjasldfjasldfkj sadfkjasldfjk', NULL, 1, '2024-03-10 22:30:11', '2024-03-10 22:39:19'),
	(125, 22, 23, 'dkfsadflksadf sadflkjasldfjasldfkj sadfkjasldfjk', NULL, 1, '2024-03-10 22:39:26', '2024-03-10 22:39:44'),
	(126, 23, 22, 'hey jhon', NULL, 1, '2024-03-10 23:31:37', '2024-03-10 23:35:13'),
	(127, 23, 22, 'hey', NULL, 1, '2024-03-10 23:35:25', '2024-03-10 23:37:00'),
	(128, 23, 22, 'hello', NULL, 1, '2024-03-10 23:37:29', '2024-03-10 23:37:47'),
	(129, 23, 22, 'helloworld', NULL, 1, '2024-03-10 23:38:16', '2024-03-10 23:49:15'),
	(130, 22, 17, 'hey', NULL, 0, '2024-03-11 00:11:32', '2024-03-11 00:11:32'),
	(131, 22, 12, 'heys', NULL, 0, '2024-03-11 00:11:47', '2024-03-11 00:11:47'),
	(132, 23, 22, 'hello', NULL, 1, '2024-03-11 00:11:58', '2024-03-11 00:16:15'),
	(133, 23, 22, 'hells', NULL, 1, '2024-03-11 00:12:40', '2024-03-11 00:16:15'),
	(134, 22, 12, 'hey', NULL, 0, '2024-03-11 00:17:29', '2024-03-11 00:17:29'),
	(135, 22, 17, 'hello', NULL, 0, '2024-03-11 00:21:06', '2024-03-11 00:21:06'),
	(136, 23, 22, 'hey there', NULL, 1, '2024-03-11 00:25:51', '2024-03-11 00:27:42'),
	(137, 22, 17, 'hello', NULL, 0, '2024-03-11 00:28:12', '2024-03-11 00:28:12'),
	(138, 23, 22, 'they', NULL, 1, '2024-03-11 00:28:43', '2024-03-11 01:02:16'),
	(139, 22, 18, 'hey', NULL, 0, '2024-03-11 00:29:26', '2024-03-11 00:29:26'),
	(140, 22, 17, 'hi', NULL, 0, '2024-03-11 00:29:38', '2024-03-11 00:29:38'),
	(141, 23, 22, 'hello', NULL, 1, '2024-03-11 00:29:56', '2024-03-11 01:02:16'),
	(142, 22, 17, 'hey', NULL, 0, '2024-03-11 00:34:37', '2024-03-11 00:34:37'),
	(143, 23, 22, 'hey hello', NULL, 1, '2024-03-11 00:36:28', '2024-03-11 01:02:16'),
	(144, 23, 22, 'hello', NULL, 1, '2024-03-11 00:59:32', '2024-03-11 01:02:16'),
	(145, 23, 22, 'hello12', NULL, 1, '2024-03-11 01:00:18', '2024-03-11 01:02:16'),
	(146, 23, 22, 'hey jhon', NULL, 1, '2024-03-11 01:06:39', '2024-03-11 01:07:17'),
	(147, 23, 22, 'hey', NULL, 1, '2024-03-11 01:06:49', '2024-03-11 01:07:17'),
	(148, 23, 22, 'hey', NULL, 1, '2024-03-11 01:07:27', '2024-03-11 01:08:06'),
	(149, 23, 22, 'hey there', NULL, 1, '2024-03-11 01:08:46', '2024-03-11 01:22:50'),
	(150, 23, 22, 'helllooooo', NULL, 1, '2024-03-11 01:09:44', '2024-03-11 01:22:50'),
	(151, 24, 22, 'hey', NULL, 1, '2024-03-11 03:28:44', '2024-03-11 03:55:49'),
	(152, 22, 24, 'hi', NULL, 1, '2024-03-11 04:07:13', '2024-03-12 21:32:56'),
	(153, 22, 23, 'hey', NULL, 1, '2024-03-12 01:00:38', '2024-03-12 04:05:17'),
	(154, 22, 23, 'hy', NULL, 1, '2024-03-12 01:18:35', '2024-03-12 04:05:17'),
	(155, 22, 23, 'hello', NULL, 1, '2024-03-12 01:21:14', '2024-03-12 04:05:17'),
	(167, 22, 23, 'ye', NULL, 1, '2024-03-12 03:56:58', '2024-03-12 04:05:17'),
	(168, 22, 1, 'hello', NULL, 0, '2024-03-12 03:57:31', '2024-03-12 03:57:31'),
	(169, 1, 22, 'hello', NULL, 1, '2024-03-12 03:57:58', '2024-03-12 04:02:33'),
	(170, 1, 22, 'good', NULL, 1, '2024-03-12 03:58:15', '2024-03-12 04:02:33'),
	(171, 22, 23, '🔥🔥🔥', NULL, 1, '2024-03-12 04:05:04', '2024-03-12 04:05:17'),
	(172, 22, 23, 'hey', NULL, 1, '2024-03-12 04:24:48', '2024-03-12 04:33:43'),
	(175, 22, 24, 'hi', NULL, 1, '2024-03-12 21:17:29', '2024-03-12 21:32:56'),
	(181, 22, 24, 'hey', NULL, 1, '2024-03-12 21:46:26', '2024-03-12 21:52:34'),
	(190, 22, 24, 'hello', NULL, 1, '2024-03-12 22:08:18', '2024-03-12 23:19:28'),
	(191, 22, 24, 'hi', NULL, 1, '2024-03-12 22:08:46', '2024-03-12 23:19:28'),
	(192, 22, 23, 'hey', NULL, 1, '2024-03-12 22:10:07', '2024-03-13 04:44:18'),
	(193, 22, 24, 'hey', NULL, 1, '2024-03-12 22:35:47', '2024-03-12 23:19:28'),
	(194, 22, 24, 'hey', NULL, 1, '2024-03-12 23:06:12', '2024-03-12 23:19:28'),
	(195, 22, 24, 'hey', NULL, 1, '2024-03-12 23:13:52', '2024-03-12 23:19:28'),
	(196, 22, 24, 'hey', NULL, 1, '2024-03-12 23:19:12', '2024-03-12 23:19:28'),
	(197, 24, 22, 'hello', NULL, 1, '2024-03-12 23:19:31', '2024-03-12 23:21:55'),
	(198, 22, 23, 'heya', NULL, 1, '2024-03-12 23:21:41', '2024-03-13 04:44:18'),
	(199, 22, 24, 'hello', NULL, 1, '2024-03-12 23:22:00', '2024-03-13 01:15:21'),
	(200, 22, 24, 'hey', NULL, 1, '2024-03-13 01:32:43', '2024-03-14 00:05:55'),
	(201, 22, 24, 'how are you', NULL, 1, '2024-03-13 01:32:51', '2024-03-14 00:05:55'),
	(202, 22, 10, 'hey', NULL, 0, '2024-03-13 01:33:53', '2024-03-13 01:33:53'),
	(203, 22, 23, 'hey zohan', NULL, 1, '2024-03-13 01:47:59', '2024-03-13 04:44:18'),
	(204, 22, 23, 'hello', NULL, 1, '2024-03-13 03:33:21', '2024-03-13 04:44:18'),
	(205, 22, 23, 'hello', NULL, 1, '2024-03-13 03:38:59', '2024-03-13 04:44:18'),
	(206, 22, 23, 'hello', NULL, 1, '2024-03-13 03:41:27', '2024-03-13 04:44:18'),
	(207, 22, 23, 'hello', NULL, 1, '2024-03-13 03:41:44', '2024-03-13 04:44:18'),
	(208, 22, 23, 'hey', NULL, 1, '2024-03-13 03:42:14', '2024-03-13 04:44:18'),
	(209, 22, 23, 'hello', NULL, 1, '2024-03-13 03:43:08', '2024-03-13 04:44:18'),
	(210, 22, 23, 'hello', NULL, 1, '2024-03-13 03:44:35', '2024-03-13 04:44:18'),
	(211, 22, 23, 'helloa', NULL, 1, '2024-03-13 03:51:12', '2024-03-13 04:44:18'),
	(212, 22, 23, 'hola', NULL, 1, '2024-03-13 03:52:20', '2024-03-13 04:44:18'),
	(213, 22, 23, 'hola', NULL, 1, '2024-03-13 03:52:22', '2024-03-13 04:44:18'),
	(214, 22, 23, 'hola', NULL, 1, '2024-03-13 03:53:41', '2024-03-13 04:44:18'),
	(215, 22, 23, 'hello', NULL, 1, '2024-03-13 03:54:10', '2024-03-13 04:44:18'),
	(216, 22, 23, 'hey', NULL, 1, '2024-03-13 04:02:28', '2024-03-13 04:44:18'),
	(217, 22, 23, 'heyaaaaaaaaa', NULL, 1, '2024-03-13 04:04:28', '2024-03-13 04:44:18'),
	(218, 22, 23, 'hey', NULL, 1, '2024-03-13 04:04:32', '2024-03-13 04:44:18'),
	(219, 22, 23, NULL, '"/uploads/media_65f17a4781e9e.png"', 1, '2024-03-13 04:04:55', '2024-03-13 04:44:18'),
	(220, 22, 23, 'hello', NULL, 1, '2024-03-13 04:06:42', '2024-03-13 04:44:18'),
	(225, 22, 23, 'hey', NULL, 1, '2024-03-13 04:34:52', '2024-03-13 04:44:18'),
	(226, 22, 23, 'hello', NULL, 1, '2024-03-13 04:35:15', '2024-03-13 04:44:18'),
	(227, 22, 23, 'hello', NULL, 1, '2024-03-13 04:35:21', '2024-03-13 04:44:18'),
	(228, 22, 23, 'hey', NULL, 1, '2024-03-13 04:35:28', '2024-03-13 04:44:18'),
	(229, 22, 23, 'heys', NULL, 1, '2024-03-13 04:35:38', '2024-03-13 04:44:18'),
	(230, 22, 23, 'hello', NULL, 1, '2024-03-13 04:40:14', '2024-03-13 04:44:18'),
	(231, 22, 23, 'hello', NULL, 1, '2024-03-13 04:40:22', '2024-03-13 04:44:18'),
	(232, 22, 23, 'hey', '"/uploads/media_65f182a3995b1.png"', 1, '2024-03-13 04:40:35', '2024-03-13 04:44:18'),
	(233, 23, 22, 'hello', NULL, 1, '2024-03-13 04:44:37', '2024-03-13 04:45:12'),
	(234, 23, 22, 'hey there', NULL, 1, '2024-03-13 04:45:37', '2024-03-13 04:45:47'),
	(235, 22, 23, 'hey', NULL, 1, '2024-03-13 04:45:44', '2024-03-13 04:47:40'),
	(236, 23, 22, 'hey there', NULL, 1, '2024-03-13 04:47:46', '2024-03-13 04:47:56'),
	(237, 22, 23, 'hey', NULL, 1, '2024-03-13 04:48:45', '2024-03-13 04:48:57'),
	(238, 23, 22, 'hello', NULL, 1, '2024-03-13 04:48:55', '2024-03-13 04:49:07'),
	(239, 22, 23, 'hey', NULL, 1, '2024-03-13 04:49:06', '2024-03-13 23:41:17'),
	(240, 25, 22, 'hey', NULL, 1, '2024-03-13 05:13:48', '2024-03-13 20:59:03'),
	(241, 25, 23, 'hey', NULL, 1, '2024-03-13 05:18:50', '2024-03-14 01:47:13'),
	(243, 26, 2, 'hey', NULL, 0, '2024-03-13 21:38:56', '2024-03-13 21:38:56'),
	(245, 27, 1, 'hello', NULL, 0, '2024-03-13 21:48:07', '2024-03-13 21:48:07'),
	(246, 22, 23, 'hello', NULL, 1, '2024-03-13 22:47:52', '2024-03-13 23:41:17'),
	(250, 22, 23, NULL, '"/uploads/media_65f2860ac5ea3.png"', 1, '2024-03-13 23:07:22', '2024-03-13 23:41:17'),
	(251, 22, 23, NULL, '"/uploads/media_65f2861ca28c5.png"', 1, '2024-03-13 23:07:40', '2024-03-13 23:41:17'),
	(252, 22, 23, NULL, '"/uploads/media_65f28633756de.png"', 1, '2024-03-13 23:08:03', '2024-03-13 23:41:17'),
	(253, 22, 23, 'hello', NULL, 1, '2024-03-13 23:08:12', '2024-03-13 23:41:17'),
	(254, 22, 25, NULL, '"/uploads/media_65f28663e44d2.png"', 0, '2024-03-13 23:08:51', '2024-03-13 23:08:51'),
	(255, 22, 25, NULL, '"/uploads/media_65f2866d82ed6.png"', 0, '2024-03-13 23:09:01', '2024-03-13 23:09:01'),
	(256, 22, 25, NULL, '"/uploads/media_65f286760935d.jpg"', 0, '2024-03-13 23:09:10', '2024-03-13 23:09:10'),
	(257, 22, 25, NULL, '"/uploads/media_65f2868800d7e.png"', 0, '2024-03-13 23:09:28', '2024-03-13 23:09:28'),
	(258, 22, 23, 'fsadfs', NULL, 1, '2024-03-13 23:29:10', '2024-03-13 23:41:17'),
	(259, 22, 23, 'hey', NULL, 1, '2024-03-13 23:29:22', '2024-03-13 23:41:17'),
	(260, 22, 1, 'hey there!', NULL, 0, '2024-03-13 23:51:15', '2024-03-13 23:51:15'),
	(261, 22, 17, 'hi ryann', NULL, 0, '2024-03-13 23:51:30', '2024-03-13 23:51:30'),
	(262, 22, 18, 'Hellooo', NULL, 0, '2024-03-13 23:51:41', '2024-03-13 23:51:41'),
	(263, 22, 3, 'how are your doing?', NULL, 0, '2024-03-13 23:51:59', '2024-03-13 23:51:59'),
	(264, 22, 2, 'see you then', NULL, 0, '2024-03-13 23:52:11', '2024-03-13 23:52:11'),
	(265, 22, 23, 'hello', NULL, 1, '2024-03-13 23:52:27', '2024-03-14 01:40:11'),
	(266, 22, 23, '🔥🔥🔥', NULL, 1, '2024-03-13 23:55:48', '2024-03-14 01:40:11'),
	(267, 22, 24, 'Hi Yni 👋', NULL, 1, '2024-03-14 00:05:37', '2024-03-14 00:05:55'),
	(268, 22, 23, '👋👋👋', NULL, 1, '2024-03-14 01:01:25', '2024-03-14 01:40:11'),
	(269, 24, 22, 'hi jhon', NULL, 1, '2024-03-14 01:40:57', '2024-03-14 03:33:40'),
	(270, 22, 23, '🔥🔥🔥🔥', NULL, 1, '2024-03-14 01:41:16', '2024-03-14 01:42:11'),
	(271, 24, 22, 'How are you doing?', NULL, 1, '2024-03-14 01:41:44', '2024-03-14 03:33:40'),
	(272, 23, 22, 'hey how are you', NULL, 1, '2024-03-14 01:42:10', '2024-03-14 01:42:36'),
	(274, 24, 1, 'hello', NULL, 0, '2024-03-14 01:46:28', '2024-03-14 01:46:28'),
	(282, 22, 23, 'hey', NULL, 1, '2024-03-14 02:18:15', '2024-03-14 02:18:36'),
	(283, 23, 22, 'hello', NULL, 1, '2024-03-14 02:18:34', '2024-03-14 02:22:07'),
	(284, 22, 22, 'hey', '"/uploads/media_65f2b3a0bc422.png"', 1, '2024-03-14 02:21:52', '2024-03-14 02:21:54'),
	(285, 22, 23, 'hey zohan', NULL, 0, '2024-03-14 03:37:43', '2024-03-14 03:37:43'),
	(286, 24, 22, 'hello jhon', NULL, 1, '2024-03-14 03:38:34', '2024-03-14 03:39:47'),
	(287, 22, 23, 'hello', NULL, 0, '2024-03-14 03:39:37', '2024-03-14 03:39:37'),
	(288, 22, 24, '🔥🔥', NULL, 1, '2024-03-14 03:45:44', '2024-03-14 03:47:13'),
	(290, 22, 24, 'hello', NULL, 1, '2024-03-14 04:11:30', '2024-03-14 04:11:56'),
	(302, 24, 22, NULL, '"/uploads/media_65f2d5a6e2f78.png"', 1, '2024-03-14 04:47:02', '2024-03-14 04:48:49'),
	(303, 24, 22, NULL, '"/uploads/media_65f2d61f18b6b.png"', 1, '2024-03-14 04:49:03', '2024-03-14 04:50:59'),
	(304, 24, 22, NULL, '"/uploads/media_65f2d69fab417.png"', 1, '2024-03-14 04:51:11', '2024-03-14 04:52:57'),
	(305, 24, 22, NULL, '"/uploads/media_65f2d71830e4a.png"', 0, '2024-03-14 04:53:12', '2024-03-14 04:53:12');

-- Dumping structure for table live_messenger.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table live_messenger.migrations: ~0 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2024_02_29_114532_create_messages_table', 2),
	(6, '2024_03_09_041732_create_favorites_table', 3);

-- Dumping structure for table live_messenger.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table live_messenger.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table live_messenger.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table live_messenger.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table live_messenger.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default/avatar.png',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table live_messenger.users: ~26 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `avatar`, `name`, `user_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, '/uploads/media_65f28f00a8c76.jpg', 'Prof. Leanna Davis DDS', 'ayla87', 'celia72@example.org', '2024-02-29 05:31:09', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'gqIYldKOAh0oGXlANipTZOQHcjo5Tthxl2CGPJFE780bOWTbVbpVEIMZv42n', '2024-02-29 05:31:10', '2024-03-13 23:45:36'),
	(2, '/uploads/media_65f28f2508373.jpg', 'Baylee Kub', 'gus33', 'hagenes.milford@example.com', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'R9I3LjZR8H8U4HyRj6XpOtNiQDjIeJW6YXPctgYgdPBX3248n39buNVlU45F', '2024-02-29 05:31:10', '2024-03-13 23:46:13'),
	(3, '/uploads/media_65f2903964f11.jpg', 'Miss Roslyn Ryan', 'maria51', 'johnston.natalia@example.com', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'lCUApdowXLPkuHMQ4xWaHkNRzOxdJHm21yYqLvwQTpJSBBzfKswCP9ozrrDX', '2024-02-29 05:31:10', '2024-03-13 23:50:49'),
	(4, 'default/avatar.png', 'Maximillian Dooley Sr.', 'oharris', 'mosciski.zelda@example.org', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'w8tI0rGFJrVaZ4k9k0tLRkefhCu6lvKpVdlRNQWZy6fM2IaLJ9FKfsDV0VTy', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(5, 'default/avatar.png', 'Monroe Champlin', 'heathcote.henriette', 'lora98@example.org', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'DMQ8MPudkR', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(6, 'default/avatar.png', 'Virginia Olson', 'qharris', 'hoyt71@example.net', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'jBZvOeIw8q', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(7, 'default/avatar.png', 'Enrique Hegmann', 'wklocko', 'ramona.schinner@example.org', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'iwFVprHA1N', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(8, 'default/avatar.png', 'Celestine Johns MD', 'cassie.tremblay', 'zcasper@example.com', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'fwQrYJ8To9', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(9, 'default/avatar.png', 'Hillary Russel', 'leda.dubuque', 'kip10@example.net', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'rUPyUmd9em', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(10, '/uploads/media_65f2931659cbc.png', 'Rene Bechtelar DDS', 'dooley.mauricio', 'eliseo41@example.org', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'pWiOhxHZVysP3Xrjvx51ovusF1FpQ05f60p7UckRzQik740hyRpJclwO5Tqd', '2024-02-29 05:31:10', '2024-03-14 00:03:02'),
	(11, 'default/avatar.png', 'Clifford Witting Sr.', 'gconnelly', 'grobel@example.com', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'WFuIDY3iuo', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(12, 'default/avatar.png', 'Trycia Kohler', 'maria59', 'sschuster@example.com', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'M6jtWUeznD', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(13, 'default/avatar.png', 'Bernice Schiller', 'alessia88', 'pmuller@example.org', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'bqOzJR6c7s', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(14, 'default/avatar.png', 'Fleta Pfeffer V', 'turner.micaela', 'wilhelmine.heaney@example.org', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'KN1GPJkGra', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(15, 'default/avatar.png', 'Nova Kub IV', 'harber.cleo', 'hailee21@example.org', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'E8MWrKEluW', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(16, 'default/avatar.png', 'Prof. Sallie Gutkowski DVM', 'grimes.hailee', 'javier68@example.net', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'HbcDoyt3xh', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(17, '/uploads/media_65f28faabe6ed.jpg', 'Ryann Blick', 'damaris.crona', 'vjohnson@example.net', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'nKFS2i0vR3z2Pc4ecqZ47xxf7EUr4IZlxYjPjiKaGuW3W8nYuE30UmyWkn4C', '2024-02-29 05:31:10', '2024-03-13 23:48:26'),
	(18, '/uploads/media_65f28f89e593d.jpg', 'Bettie Mante', 'claudie28', 'donnell.dicki@example.net', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', 'IhF0KiExwcSnJZMkVHxvvLsrg7jiKoBAhnAMByRnX3L8OYl6gd2LALMBD2eP', '2024-02-29 05:31:10', '2024-03-13 23:47:53'),
	(19, 'default/avatar.png', 'Travon Waelchi', 'stoltenberg.alicia', 'lzemlak@example.com', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', '0d0QTtXExw', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(20, 'default/avatar.png', 'Kyla Orn', 'gondricka', 'elody.mann@example.com', '2024-02-29 05:31:10', '$2y$12$vUGqlmb2KW9svC25xQqbbuyLyeffBrGIPLzrOajzcB1TEW8sixOTe', '11gM3RhGd0', '2024-02-29 05:31:10', '2024-02-29 05:31:10'),
	(22, '/uploads/media_65f2adcebdbd9.png', 'jhon Deo', 'jhon_dx_23', 'jhon@gmail.com', NULL, '$2y$12$IBHbZURrOx8oTpZxnRnrCe29vFP2RfDi7cRBmgbtI.wXDbCht0rHK', NULL, '2024-03-01 21:02:52', '2024-03-14 01:57:02'),
	(23, '/uploads/media_65f28e7491146.jpg', 'zohan', 'zohan_324', 'zohan@gmail.com', NULL, '$2y$12$1d7Qa3ZJ2JC25FcyxSkZHecD1f1dPIpLwrNTCWNdrjx3wEA7whohW', NULL, '2024-03-02 04:55:05', '2024-03-13 23:43:16'),
	(24, '/uploads/media_65f2933610da5.png', 'Ynifer', '@Ynifer_5780', 'ynifer@gmail.com', NULL, '$2y$12$/nmswU93sIQ861DXSzEyX.FGhZUPIVuueVqM31r1pwtqBSFdrRLyC', NULL, '2024-03-11 03:28:13', '2024-03-14 00:03:34'),
	(25, '/uploads/media_65f292f4e9ccf.png', 'Judith Daugherty', '@Judith Daugherty_2691', 'jekyg@mailinator.com', NULL, '$2y$12$/nmswU93sIQ861DXSzEyX.FGhZUPIVuueVqM31r1pwtqBSFdrRLyC', NULL, '2024-03-13 05:06:18', '2024-03-14 00:02:28'),
	(26, 'default/avatar.png', 'Isaac Contreras', '@Isaac Contreras_9485', 'gozohudoqu@mailinator.com', NULL, '$2y$12$rKvz8ARyiG8H.FgeNl3Gg.KmY2nI2aEOhUJn9mcyoUUkqy5rDSVPW', NULL, '2024-03-13 21:35:35', '2024-03-13 21:35:35'),
	(27, 'default/avatar.png', 'Bianca Bray', '@Bianca Bray_2493', 'qekavu@mailinator.com', NULL, '$2y$12$4S1vHDtLm6sp9aNnrKITC.Wb3Wb9EiyphQ/qzYpcUOp37TR6q9Peu', NULL, '2024-03-13 21:45:36', '2024-03-13 21:45:36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
