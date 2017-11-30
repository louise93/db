-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 12:38 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('louisesalas8.26@gmail.com', '31190cede619fc766e879cb27faa4e6e1bfb10a68f20b56cbe3a61c24e09c9f1', '2017-11-30 01:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pubkey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prvkey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wallet_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bitcoin_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lname`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `pubkey`, `prvkey`, `wallet_address`, `bitcoin_address`) VALUES
(1, 'Louise Salas', '', 'louisesalas8.26@gmail.com', '$2y$10$eMGORmrBkeDf7NsH9vzP7eOD1rf3FPRPF8nHQ8q0MpXnQucmb2p3G', 'CZA3Y2ozb4oAfJMQxzy5rvrpHj3vInUZINbnDvJPo3JvTLDxIfWqHCkWhWF4', '2017-11-29 19:58:29', '2017-11-30 03:38:26', '0x43f4bE760F4AC3758E45916a459e849ee8C23E19', '0x6d39c20a1e02dbf79268cc6720e4b72d36dc2749bff95622b455e2991cabdfe2', '', ''),
(2, 'Adrian Ray Casas', '', 'cyberspace418@gmail.com', '$2y$10$KQ0zTspYzYfoPmxfACHCMec/erqimDeMfd1ycEow9yrI56F2bxjmi', 'rt46Zi4g5jd69onzh0RT8NiFsFwZhqTz2hDV7Gcl1OsuQSlCHF7DjxioAeR1', '2017-11-29 23:24:27', '2017-11-30 02:55:16', '0x633a701BE6a130d3a03b5c28A54254A5941ce35C', '0x6dae14c6694150f199de044f58ccfb7abed1f4a333adc6ffd18e984da73578c0', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
