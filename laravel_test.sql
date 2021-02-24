-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2021 at 08:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Framework', 'framework', '2021-01-19 01:59:35', '2021-01-19 01:59:35'),
(2, 'Design', 'design', '2021-01-19 01:59:35', '2021-01-19 01:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `edited_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `user_id`, `thumbnail`, `title`, `slug`, `body`, `edited_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'images/products/ZKmwwFg4dqBaJDDEHUTvdzwdkIdgIhAlCoNzkV0k.png', 'Laravel-framework', 'laravel-framework', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a egestas ex. Nam et facilisis nunc, volutpat laoreet magna. Quisque commodo augue non congue mattis. Fusce consequat quam et felis commodo pellentesque. Nulla venenatis ligula neque, a rutrum ipsum pharetra ut. Sed lorem ipsum, consequat eget maximus nec, ultricies a metus. Curabitur tincidunt, mi eget commodo blandit, elit enim tristique turpis, eget lobortis leo dui eu orci. Fusce iaculis mauris vel ligula mattis, dictum vulputate nibh vulputate. Fusce et quam eget tellus volutpat dictum. Mauris et turpis augue. Aliquam lobortis nisi vel ante dignissim sagittis. Fusce nulla justo, vehicula pellentesque elit sed, tincidunt ornare felis. Duis lacus quam, elementum vel sem in, sodales venenatis lacus.\r\n\r\nNulla facilisi. Donec ut ligula tortor. Vestibulum neque sapien, condimentum sed aliquet ut, ornare in lacus. Praesent eu massa vel nisi pulvinar convallis. Proin eget tortor mi. Nam volutpat sapien vel gravida ultricies. Nulla eu tempus arcu, at fringilla nunc. Vestibulum velit purus, pellentesque et sapien at, consequat pretium metus. Phasellus tempus sollicitudin sapien, eu pulvinar dolor venenatis ac. Donec nec magna pretium, volutpat ipsum a, auctor mi. Praesent scelerisque risus diam, quis consequat nulla mattis eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris non velit quis enim luctus posuere. Donec consectetur fringilla lorem pulvinar mattis. Vestibulum suscipit elit sed varius luctus.', NULL, '2021-02-23 23:56:10', '2021-02-23 23:56:10'),
(2, 2, 1, 'images/products/BfWrwzEvxPRt04S1hkBAUtIUnipylxxhXUnCxzSK.png', 'adobe-illustrator', 'adobe-illustrator', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a egestas ex. Nam et facilisis nunc, volutpat laoreet magna. Quisque commodo augue non congue mattis. Fusce consequat quam et felis commodo pellentesque. Nulla venenatis ligula neque, a rutrum ipsum pharetra ut. Sed lorem ipsum, consequat eget maximus nec, ultricies a metus. Curabitur tincidunt, mi eget commodo blandit, elit enim tristique turpis, eget lobortis leo dui eu orci. Fusce iaculis mauris vel ligula mattis, dictum vulputate nibh vulputate. Fusce et quam eget tellus volutpat dictum. Mauris et turpis augue. Aliquam lobortis nisi vel ante dignissim sagittis. Fusce nulla justo, vehicula pellentesque elit sed, tincidunt ornare felis. Duis lacus quam, elementum vel sem in, sodales venenatis lacus.\r\n\r\nNulla facilisi. Donec ut ligula tortor. Vestibulum neque sapien, condimentum sed aliquet ut, ornare in lacus. Praesent eu massa vel nisi pulvinar convallis. Proin eget tortor mi. Nam volutpat sapien vel gravida ultricies. Nulla eu tempus arcu, at fringilla nunc. Vestibulum velit purus, pellentesque et sapien at, consequat pretium metus. Phasellus tempus sollicitudin sapien, eu pulvinar dolor venenatis ac. Donec nec magna pretium, volutpat ipsum a, auctor mi. Praesent scelerisque risus diam, quis consequat nulla mattis eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris non velit quis enim luctus posuere. Donec consectetur fringilla lorem pulvinar mattis. Vestibulum suscipit elit sed varius luctus.\r\n\r\nMorbi nulla dolor, fringilla at ornare nec, rutrum vitae tortor. Aliquam condimentum pharetra rhoncus. Phasellus sed rhoncus orci. Sed tincidunt ipsum tincidunt metus finibus, nec porta est dapibus. Donec ornare, metus sit amet maximus facilisis, sem massa elementum mi, vitae scelerisque turpis tortor a urna. Morbi dictum nisi ipsum, sed venenatis massa luctus at. Duis sagittis augue ac eros aliquam, vitae hendrerit tellus tristique.', NULL, '2021-02-23 23:56:46', '2021-02-23 23:56:46'),
(3, 1, 1, 'images/products/QqdClUWmyPfE1Pa5kEkjR7ysE551qAfovrhUqtaP.png', 'CodeIgniter', 'codeigniter', 'Proin pharetra dignissim libero a tristique. Nunc eu consectetur diam. Duis sed tellus in nulla suscipit lobortis non quis erat. Pellentesque lobortis pretium quam, vitae tincidunt tortor convallis sed. Aliquam viverra tortor congue, lacinia nibh sed, efficitur leo. Sed et molestie nisi. Pellentesque libero lacus, sodales consectetur accumsan sit amet, varius ut augue. Vestibulum et mollis arcu, rutrum aliquam tortor. Fusce in auctor purus, at ultricies erat. Suspendisse laoreet varius porta. Fusce sagittis nulla pharetra nisi blandit porta.', NULL, '2021-02-23 23:57:10', '2021-02-23 23:57:10'),
(4, 2, 1, 'images/products/RICTgpI55KKa6yjoPgSbWRQ1Rb6qBLLZGInNA3DL.png', 'Adobe XD', 'adobe-xd', 'Proin pharetra dignissim libero a tristique. Nunc eu consectetur diam. Duis sed tellus in nulla suscipit lobortis non quis erat. Pellentesque lobortis pretium quam, vitae tincidunt tortor convallis sed. Aliquam viverra tortor congue, lacinia nibh sed, efficitur leo. Sed et molestie nisi. Pellentesque libero lacus, sodales consectetur accumsan sit amet, varius ut augue. Vestibulum et mollis arcu, rutrum aliquam tortor. Fusce in auctor purus, at ultricies erat. Suspendisse laoreet varius porta. Fusce sagittis nulla pharetra nisi blandit porta.\r\n\r\nQuisque sagittis convallis urna et ultricies. Etiam suscipit, eros non fringilla ultrices, risus leo fringilla nisi, eu convallis justo sem eget sapien. Donec non pulvinar mi. Maecenas eget metus condimentum, lobortis sapien id, pretium nisi. Suspendisse placerat, leo in feugiat ornare, elit erat pharetra orci, a mattis arcu dui non ligula. Quisque interdum consequat arcu, rhoncus tempor tellus facilisis quis. Mauris sollicitudin, tortor vitae dapibus porta, ligula nunc ornare enim, vitae gravida tortor libero ut elit. Aliquam erat volutpat. Proin nec leo at velit posuere cursus. In et ex at augue lacinia ultrices. Proin metus leo, tristique eu euismod vel, sagittis eu diam. Donec ut tempus mauris. Vestibulum pulvinar viverra tortor, vel hendrerit nulla tincidunt in. Nulla varius quam id leo auctor, et bibendum nisl luctus. Praesent id tellus eget nisi laoreet placerat at id ipsum.', NULL, '2021-02-23 23:57:50', '2021-02-23 23:57:50'),
(5, 2, 1, 'images/products/TRTEwBEtA8fXP3JyV93eijHgYFxG5b3kVBoSaUGK.png', 'Marvel app', 'marvel-app', 'Quisque sagittis convallis urna et ultricies. Etiam suscipit, eros non fringilla ultrices, risus leo fringilla nisi, eu convallis justo sem eget sapien. Donec non pulvinar mi. Maecenas eget metus condimentum, lobortis sapien id, pretium nisi. Suspendisse placerat, leo in feugiat ornare, elit erat pharetra orci, a mattis arcu dui non ligula. Quisque interdum consequat arcu, rhoncus tempor tellus facilisis quis. Mauris sollicitudin, tortor vitae dapibus porta, ligula nunc ornare enim, vitae gravida tortor libero ut elit. Aliquam erat volutpat. Proin nec leo at velit posuere cursus. In et ex at augue lacinia ultrices. Proin metus leo, tristique eu euismod vel, sagittis eu diam. Donec ut tempus mauris. Vestibulum pulvinar viverra tortor, vel hendrerit nulla tincidunt in. Nulla varius quam id leo auctor, et bibendum nisl luctus. Praesent id tellus eget nisi laoreet placerat at id ipsum.', NULL, '2021-02-23 23:58:31', '2021-02-23 23:58:31'),
(6, 1, 1, 'images/products/2QYV2IzytJkpj12A60EVUMYG2wjICclFjKU3LdZH.png', 'My SQL', 'my-sql', 'Quisque sagittis convallis urna et ultricies. Etiam suscipit, eros non fringilla ultrices, risus leo fringilla nisi, eu convallis justo sem eget sapien. Donec non pulvinar mi. Maecenas eget metus condimentum, lobortis sapien id, pretium nisi. Suspendisse placerat, leo in feugiat ornare, elit erat pharetra orci, a mattis arcu dui non ligula. Quisque interdum consequat arcu, rhoncus tempor tellus facilisis quis. Mauris sollicitudin, tortor vitae dapibus porta, ligula nunc ornare enim, vitae gravida tortor libero ut elit. Aliquam erat volutpat. Proin nec leo at velit posuere cursus. In et ex at augue lacinia ultrices. Proin metus leo, tristique eu euismod vel, sagittis eu diam. Donec ut tempus mauris. Vestibulum pulvinar viverra tortor, vel hendrerit nulla tincidunt in. Nulla varius quam id leo auctor, et bibendum nisl luctus. Praesent id tellus eget nisi laoreet placerat at id ipsum.', NULL, '2021-02-23 23:59:48', '2021-02-23 23:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Test', 'admin@test.com', NULL, '$2y$10$LeZJYs8WqjpCwutmWXMte.vvcAkuS69Tm6ZoKUZUXXIqPVy7JFzFm', NULL, '2021-02-23 23:09:04', '2021-02-23 23:09:04'),
(2, 'member', 'member@gmail.com', NULL, '$2y$10$GqPgXcVHacbKQHU.EU1TyOSS8wqDfZ3bqmbTThGHhXaiS8DB2f7Ue', NULL, '2021-02-24 00:40:04', '2021-02-24 00:40:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
