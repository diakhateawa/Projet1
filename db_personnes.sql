-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 31 mars 2021 à 16:37
-- Version du serveur :  10.3.15-MariaDB
-- Version de PHP :  7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_personnes`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2021-03-29 15:21:49'),
(2, 0, 4, 'Admin', 'fa-tasks', '', NULL, NULL, '2021-03-29 15:21:49'),
(3, 2, 5, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2021-03-29 15:21:49'),
(4, 2, 6, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2021-03-29 15:21:49'),
(5, 2, 7, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2021-03-29 15:21:49'),
(6, 2, 8, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2021-03-29 15:21:49'),
(7, 2, 9, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2021-03-29 15:21:49'),
(8, 0, 3, 'Menu pour personne', 'fa-bars', 'personnes', NULL, '2021-03-29 12:30:21', '2021-03-29 15:21:49'),
(10, 0, 1, 'Users', 'fa-user', '/users', 'auth.login', '2021-03-29 15:19:53', '2021-03-29 15:21:49');

-- --------------------------------------------------------

--
-- Structure de la table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-03-29 12:29:48', '2021-03-29 12:29:48'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:30:00', '2021-03-29 12:30:00'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Menu pour personne\",\"icon\":\"fa-bars\",\"uri\":\"personnes\",\"roles\":[null],\"permission\":null,\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\"}', '2021-03-29 12:30:21', '2021-03-29 12:30:21'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-03-29 12:30:22', '2021-03-29 12:30:22'),
(5, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:30:29', '2021-03-29 12:30:29'),
(6, 1, 'admin/personnes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:33:06', '2021-03-29 12:33:06'),
(7, 1, 'admin/personnes', 'POST', '127.0.0.1', '{\"parent_id\":null,\"order\":\"2\",\"nom\":\"Awa DIAKHATE\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/personnes\"}', '2021-03-29 12:33:26', '2021-03-29 12:33:26'),
(8, 1, 'admin/personnes', 'GET', '127.0.0.1', '[]', '2021-03-29 12:33:26', '2021-03-29 12:33:26'),
(9, 1, 'admin/personnes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:36:01', '2021-03-29 12:36:01'),
(10, 1, 'admin/personnes', 'POST', '127.0.0.1', '{\"parent_id\":null,\"order\":\"3\",\"nom\":\"Adama DIENG\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/personnes\"}', '2021-03-29 12:36:27', '2021-03-29 12:36:27'),
(11, 1, 'admin/personnes', 'GET', '127.0.0.1', '[]', '2021-03-29 12:36:28', '2021-03-29 12:36:28'),
(12, 1, 'admin/personnes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:36:31', '2021-03-29 12:36:31'),
(13, 1, 'admin/personnes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:36:32', '2021-03-29 12:36:32'),
(14, 1, 'admin/personnes', 'POST', '127.0.0.1', '{\"parent_id\":null,\"order\":\"3\",\"nom\":\"Aissata SY\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\"}', '2021-03-29 12:36:48', '2021-03-29 12:36:48'),
(15, 1, 'admin/personnes', 'GET', '127.0.0.1', '[]', '2021-03-29 12:36:48', '2021-03-29 12:36:48'),
(16, 1, 'admin/personnes/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:36:58', '2021-03-29 12:36:58'),
(17, 1, 'admin/personnes/3', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"order\":\"4\",\"nom\":\"Aissata SY\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/personnes\"}', '2021-03-29 12:37:11', '2021-03-29 12:37:11'),
(18, 1, 'admin/personnes', 'GET', '127.0.0.1', '[]', '2021-03-29 12:37:12', '2021-03-29 12:37:12'),
(19, 1, 'admin/personnes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:37:16', '2021-03-29 12:37:16'),
(20, 1, 'admin/personnes', 'POST', '127.0.0.1', '{\"parent_id\":null,\"order\":\"5\",\"nom\":\"Moussa SARR\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/personnes\"}', '2021-03-29 12:37:40', '2021-03-29 12:37:40'),
(21, 1, 'admin/personnes', 'GET', '127.0.0.1', '[]', '2021-03-29 12:37:40', '2021-03-29 12:37:40'),
(22, 1, 'admin/personnes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:37:44', '2021-03-29 12:37:44'),
(23, 1, 'admin/personnes', 'POST', '127.0.0.1', '{\"parent_id\":null,\"order\":\"6\",\"nom\":\"Bacary SYLL\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/personnes\"}', '2021-03-29 12:38:03', '2021-03-29 12:38:03'),
(24, 1, 'admin/personnes', 'GET', '127.0.0.1', '[]', '2021-03-29 12:38:04', '2021-03-29 12:38:04'),
(25, 1, 'admin/personnes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:38:08', '2021-03-29 12:38:08'),
(26, 1, 'admin/personnes', 'POST', '127.0.0.1', '{\"parent_id\":null,\"order\":\"7\",\"nom\":\"Ousmane MBALLO\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/personnes\"}', '2021-03-29 12:38:30', '2021-03-29 12:38:30'),
(27, 1, 'admin/personnes', 'GET', '127.0.0.1', '[]', '2021-03-29 12:38:31', '2021-03-29 12:38:31'),
(28, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:40:14', '2021-03-29 12:40:14'),
(29, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Personnes\",\"icon\":\"fa-bars\",\"uri\":\"\\/personnes\",\"roles\":[null],\"permission\":null,\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\"}', '2021-03-29 12:40:59', '2021-03-29 12:40:59'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-03-29 12:41:00', '2021-03-29 12:41:00'),
(31, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:41:14', '2021-03-29 12:41:14'),
(32, 1, 'admin/auth/menu/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:43:33', '2021-03-29 12:43:33'),
(33, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '[]', '2021-03-29 12:43:34', '2021-03-29 12:43:34'),
(34, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:43:41', '2021-03-29 12:43:41'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-03-29 12:44:41', '2021-03-29 12:44:41'),
(36, 1, 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\"}', '2021-03-29 12:45:00', '2021-03-29 12:45:00'),
(37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:45:01', '2021-03-29 12:45:01'),
(38, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:45:09', '2021-03-29 12:45:09'),
(39, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:45:17', '2021-03-29 12:45:17'),
(40, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 12:45:22', '2021-03-29 12:45:22'),
(41, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-03-29 12:58:57', '2021-03-29 12:58:57'),
(42, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-03-29 14:55:04', '2021-03-29 14:55:04'),
(43, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-03-29 15:12:46', '2021-03-29 15:12:46'),
(44, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2021-03-29 15:16:55', '2021-03-29 15:16:55'),
(45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:17:47', '2021-03-29 15:17:47'),
(46, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-user\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":\"auth.login\",\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\"}', '2021-03-29 15:19:52', '2021-03-29 15:19:52'),
(47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-03-29 15:19:53', '2021-03-29 15:19:53'),
(48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-03-29 15:20:41', '2021-03-29 15:20:41'),
(49, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-03-29 15:21:19', '2021-03-29 15:21:19'),
(50, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\",\"_order\":\"[{\\\"id\\\":10},{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-03-29 15:21:48', '2021-03-29 15:21:48'),
(51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:21:49', '2021-03-29 15:21:49'),
(52, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2021-03-29 15:22:03', '2021-03-29 15:22:03'),
(53, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:23:51', '2021-03-29 15:23:51'),
(54, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:23:55', '2021-03-29 15:23:55'),
(55, 1, 'admin/users', 'POST', '127.0.0.1', '{\"name\":\"Awa BEN\",\"email\":\"aben@gmail.com\",\"email_verified_at\":\"2021-03-28 15:23:55\",\"password\":\"passer\",\"remember_token\":null,\"_token\":\"MGNZ7uXfbZBR184mYMEc8iltIVzDVQmpxDQ6RDXo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2021-03-29 15:24:57', '2021-03-29 15:24:57'),
(56, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2021-03-29 15:24:58', '2021-03-29 15:24:58'),
(57, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:27:21', '2021-03-29 15:27:21'),
(58, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2021-03-29 15:27:43', '2021-03-29 15:27:43'),
(59, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2021-03-29 15:27:58', '2021-03-29 15:27:58'),
(60, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2021-03-29 15:28:01', '2021-03-29 15:28:01'),
(61, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:49:58', '2021-03-29 15:49:58'),
(62, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2021-03-29 15:58:25', '2021-03-29 15:58:25'),
(63, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:58:49', '2021-03-29 15:58:49'),
(64, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:58:58', '2021-03-29 15:58:58'),
(65, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:59:04', '2021-03-29 15:59:04'),
(66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 15:59:57', '2021-03-29 15:59:57'),
(67, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 16:00:07', '2021-03-29 16:00:07'),
(68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 16:00:12', '2021-03-29 16:00:12'),
(69, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 16:00:17', '2021-03-29 16:00:17'),
(70, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 16:00:24', '2021-03-29 16:00:24'),
(71, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 16:00:30', '2021-03-29 16:00:30'),
(72, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 16:13:44', '2021-03-29 16:13:44'),
(73, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 16:13:47', '2021-03-29 16:13:47'),
(74, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-03-29 20:43:06', '2021-03-29 20:43:06'),
(75, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 20:43:31', '2021-03-29 20:43:31'),
(76, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 20:43:35', '2021-03-29 20:43:35'),
(77, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 20:43:37', '2021-03-29 20:43:37'),
(78, 1, 'admin/personnes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-29 20:44:44', '2021-03-29 20:44:44'),
(79, 1, 'admin/personnes', 'POST', '127.0.0.1', '{\"parent_id\":null,\"order\":\"7\",\"nom\":\"Astou BA\",\"_token\":\"KA0LNm6z3jmsirJ4j8axi5tZKx5HXsIEJbnFlEyC\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/personnes\"}', '2021-03-29 20:45:08', '2021-03-29 20:45:08'),
(80, 1, 'admin/personnes', 'GET', '127.0.0.1', '[]', '2021-03-29 20:45:09', '2021-03-29 20:45:09'),
(81, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-03-31 11:22:28', '2021-03-31 11:22:28'),
(82, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-03-31 11:23:16', '2021-03-31 11:23:16'),
(83, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-31 11:24:07', '2021-03-31 11:24:07'),
(84, 1, 'admin', 'GET', '127.0.0.1', '[]', '2021-03-31 13:04:18', '2021-03-31 13:04:18'),
(85, 1, 'admin/personnes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2021-03-31 13:12:45', '2021-03-31 13:12:45');

-- --------------------------------------------------------

--
-- Structure de la table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-03-29 12:26:42', '2021-03-29 12:26:42');

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$C/I6o4fvXIf7l7zSreh9D.N9ZSwKxZGyYKar.IcSUHxJcTMn2KIja', 'Administrator', NULL, 'iYUgvNxNoInBZUJZMrO0paOUh46qEtWLvVaDSS7BbMUSsBQX2PVibM81pSN8', '2021-03-29 12:26:42', '2021-03-29 12:26:42');

-- --------------------------------------------------------

--
-- Structure de la table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2016_01_04_173148_create_admin_tables', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2021_03_29_121938_personne', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`id`, `parent_id`, `order`, `nom`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 'Awa DIAKHATE', '2021-03-29 12:33:26', '2021-03-29 12:33:26'),
(2, NULL, 3, 'Adama DIENG', '2021-03-29 12:36:27', '2021-03-29 12:36:27'),
(3, NULL, 4, 'Aissata SY', '2021-03-29 12:36:48', '2021-03-29 12:37:11'),
(4, NULL, 5, 'Moussa SARR', '2021-03-29 12:37:40', '2021-03-29 12:37:40'),
(5, NULL, 6, 'Bacary SYLL', '2021-03-29 12:38:03', '2021-03-29 12:38:03'),
(6, NULL, 7, 'Ousmane MBALLO', '2021-03-29 12:38:30', '2021-03-29 12:38:30'),
(7, NULL, 7, 'Astou BA', '2021-03-29 20:45:08', '2021-03-29 20:45:08');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Awa BEN', 'aben@gmail.com', '2021-03-28 15:23:55', 'passer', NULL, '2021-03-29 15:24:57', '2021-03-29 15:24:57');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Index pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Index pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Index pour la table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Index pour la table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Index pour la table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Index pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Index pour la table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personnes_parent_id_foreign` (`parent_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT pour la table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `personnes`
--
ALTER TABLE `personnes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `personnes`
--
ALTER TABLE `personnes`
  ADD CONSTRAINT `personnes_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `personnes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
