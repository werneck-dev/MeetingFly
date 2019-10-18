-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Out-2019 às 00:30
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apifly`
--
CREATE DATABASE IF NOT EXISTS `apifly` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `apifly`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_meeting_room` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_meeting` datetime NOT NULL,
  `finish_meeting` datetime NOT NULL,
  `situation` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `meetings`
--

INSERT INTO `meetings` (`id`, `id_meeting_room`, `email`, `start_meeting`, `finish_meeting`, `situation`, `description`, `created_at`, `updated_at`) VALUES
(61, 110, 'rh3@empresa.com', '2019-10-16 06:00:00', '2019-10-16 07:01:00', 'A', 'Reuniao para contratacao.', '2019-10-17 18:20:51', '2019-10-17 18:20:51'),
(62, 105, 'rh3@empresa.com', '2019-10-17 06:00:00', '2019-10-16 07:01:00', 'A', 'Reuniao para contratacao.', '2019-10-17 19:55:43', '2019-10-17 19:55:43'),
(63, 115, 'rh3@empresa.com', '2019-10-18 06:00:00', '2019-10-16 07:01:00', 'A', 'Reuniao para contratacao.', '2019-10-17 22:17:57', '2019-10-17 22:17:57'),
(64, 210, 'rh3@empresa.com', '2019-10-19 06:00:00', '2019-10-16 07:01:00', 'A', 'Reuniao para contratacao.', '2019-10-17 22:44:06', '2019-10-17 22:44:06'),
(65, 216, 'rh3@empresa.com', '2019-10-20 06:00:00', '2019-10-16 07:01:00', 'A', 'Reuniao para contratacao.', '2019-10-18 02:24:23', '2019-10-18 02:24:23'),
(66, 217, 'rh3@empresa.com', '2019-10-16 06:00:00', '2019-10-16 07:01:00', 'A', 'Reuniao para contratacao.', '2019-10-18 03:08:41', '2019-10-18 03:08:41'),
(67, 217, 'rh3@empresa.com', '2019-10-16 07:02:00', '2019-10-16 07:05:00', 'A', 'Reuniao para contratacao.', '2019-10-18 03:09:09', '2019-10-18 03:09:09'),
(68, 220, 'rh3@empresa.com', '2019-10-19 07:02:00', '2019-10-19 07:05:00', 'A', 'Reuniao para contratacao.', '2019-10-18 03:28:51', '2019-10-18 03:28:51'),
(69, 220, 'rh3@empresa.com', '2019-10-20 07:02:00', '2019-10-20 07:05:00', 'A', 'Reuniao para contratacao.', '2019-10-18 03:29:00', '2019-10-18 03:29:00'),
(70, 220, 'rh3@empresa.com', '2019-10-21 07:02:00', '2019-10-21 07:05:00', 'A', 'Reuniao para contratacao.', '2019-10-18 03:29:06', '2019-10-18 03:29:06'),
(71, 220, 'rh3@empresa.com', '2019-10-22 07:02:00', '2019-10-22 07:05:00', 'A', 'Reuniao para contratacao.', '2019-10-18 03:29:12', '2019-10-18 03:29:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_10_16_092613_create_meetings_table', 1),
(2, '2019_10_16_223435_create_meetings_table', 2),
(3, '2019_10_16_230343_create_meetings_table', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
