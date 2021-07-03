-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 01:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_companies`
--

CREATE TABLE `category_companies` (
  `company_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes_users`
--

CREATE TABLE `classes_users` (
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_code` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_phone` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `company_web`, `company_address`, `company_code`, `company_phone`, `created_at`, `updated_at`) VALUES
(1, 'Công ty TNHH Một mình Tao Chấp Hết', 'signup-test-v.000wehostapp.com', 'BT', '35568997', '037550712', '2021-07-03 02:09:09', '2021-07-03 02:09:09'),
(2, 'Công ty TNHH Hai mình', 'FPT Sofware', 'Khu công nghệ cao', '84688484', '038889798', '2021-07-03 02:09:09', '2021-07-03 02:09:09'),
(3, 'qQiKJwg85D', 'SHluzj74sY', 'x799ro2baGOhSVlci6fs1GUzxjpxdjHqJKLlrKC53hdbQGQc3Y', 'bKiUP0rsyJ', 'krVkH99DK2', NULL, NULL),
(4, 'fXkImnRV8i', 'n1WpipDPle', '8Nm8uDO2QuQhGpLSJb3E2lAnH1h4ycnunepbTfF74Ayjj4KJWe', 'pICVrBKeD1', 'vosQKyA4CP', NULL, NULL),
(5, '14cmKqe3w7', 'YrOTLutUj8', 'nFCYiXC4XxyJLa8tbspm86352uVDbI3FHElLerRQDdvCmDNtyz', 'Ai9mVPwtMT', '6OrluDWHpj', NULL, NULL),
(6, 'LKa4jRU660', 'omje0eJLKE', '7qqaG7lVeb4out0BgrS4NxLHO7hwtx982HeZkdLHqIUwPiwtbu', 'UIy3Lyji6S', 'guLHhV9OOe', NULL, NULL),
(7, 'zBV7bIXqML', 'wUgSXdw36n', 'n3Fdme9Ajhezv76qE6VTWuXfRF96OMuq7RwDweL8ZPxzjvKeKW', 'EBfvIZyeH3', 'JQAOL3ubrs', NULL, NULL),
(8, 'MxHMkERjIH', 'poBPZ5qQ5e', 'qTRkonTZdF8C3HL2kLpd5l4r3glEGl0lLeE4naRFKqJhf97n2k', 'dwHTd8cLVc', 'GGBVvdmI82', NULL, NULL),
(9, 'oPUbOIJRf1', 'pymgwMlJiS', 'Klpl7uTFjUDBn9KsHUeQkX4qXUf32BRuIb0vqsdZDS2ZMV8dXv', 'xHhEJ0TID7', 'Ly3Yb6Y2wL', NULL, NULL),
(10, '8LQtuhF21c', 'umYid5TJff', 'ESMkqHqebBLs2vRMTjGchfxLet5gjbz5CUxmYzgzvB7urRdvhm', 'xlWdL7PxlZ', 'fiXYWTTEUP', NULL, NULL),
(11, 'osk4Pm24fv', 'w9B9hNjBXB', 'YiQEVl1f7vF2d7CjnwfOIZ1E9eJGk3mpz6rYIqz73FRDB3mRvO', 'ff3EBV7tIU', '2AvKNt02kV', NULL, NULL),
(12, 'kCxDaT0dlU', 'Tz4qPsvxxA', '6rhIxcQVvX6BFkIZJyxrB5IJvi2kfdsHxMafGHUDk1tmq8Bqsc', 'E18BHO84sI', 'KkFEGdeRSH', NULL, NULL),
(13, 'oXA4Tf1dMP', 'T2RQYgM2wz', 'WL2Hq5h8m7dH89WpRf7lHRH2EuB1YpPSPuB9oJjpONeZvGBGCS', 's2jluvwIHS', 'Wq0hvGLnmd', NULL, NULL),
(14, '28XQnpMNlj', 'vych3IVJVE', 'j6uIhc61hxkyJ4NYTNoFtY3qcoiUwhzMtQNMlentekRJwu9tSv', 'tCqDKNE9yW', 'NlJubdhRGl', NULL, NULL),
(15, 'uf5Nbe4VRg', 'QrijM6qjlb', 'vRAz60NQR2HWCXMFwpgxIhwqFFZJQjLaMT2Xv93EugmX502vvK', 'vwHCy5XHOf', 'zvDiTuMTus', NULL, NULL),
(16, 'nKKxniziHx', 'fKkneK2zat', 'oGmEdcfJSN07vDWKUXo9JlSlZgszY8ktiUlTTNxulvQT0rSCu4', 'ijjgaPTDWt', 'XzugAbA1nW', NULL, NULL),
(17, 'HHH6TX4N95', 'v5XiSWIhsx', 'CHZRXOA1plZzd21p2EzgfLzTjhd9gZWOCSfiDXsu41hnIQomJo', 'wgvMbfUBad', 'u193EkPaEz', NULL, NULL),
(18, 'gLrfCyNVj1', 'w7UcyO97C2', '6jqTDBskW4tgx7EAIhXGYdNfXDpj86VgoTyXeG8GAUAz0iLj8w', 'OuOmmKX5Oc', 'kUsUAjp2LA', NULL, NULL),
(19, '1djajb5HW0', 'WuVs1UQpJZ', 'jF0xEPA2EZQdBMriRHEJ3X3DqS0wm1tBBe54mjw68YPE1h4Ssh', 'sJDm8Hk90l', 'Kd0JwkTIxh', NULL, NULL),
(20, 'eMWyNaKxsN', 'ea0qMzHIQP', 'HNPQAHdQftqoQJ75uqLnI3FHMCdf0pr9VCpLHGPgbANNdV4NYn', 'Iv41Zmz5Z7', '2gkHnoWiox', NULL, NULL),
(21, 'hs6HXIsxj2', '9CbY9k1edV', '2OXz2dSaY2sX2clCoUjhKKakibN8iv0u2TtEoBzGkXUNZIzChE', 'rDqSUUE4xi', 'vh3mRdAkzR', NULL, NULL),
(22, '01377BWgNE', 'lBr38nGhmv', 'F90KNvyay1Ed2pq7JPBqo9SMzjqjbUxyL68geT6sqwcCNRnxrV', 'W8Qc7zCUok', 'HpaelO03FK', NULL, NULL),
(23, 'jpA06kfOq4', 'GKDlzc6PUh', '5DTcLM0UFGTYbUxkeZD6reLC1xA2RkMvcShzyHa9Oi8f8ZcDVC', 'ujDolab7XN', 'tXwo3Rn0YH', NULL, NULL),
(24, 'YWwcE2iZ4q', '0uVwX1ZugU', '3vk9zW3N8e5OU9YBFmxUtmJIwcTQbXV7J0scY6Hds85llSufPx', 'zofYAIjKq4', 'UvNyyrzrrp', NULL, NULL),
(25, 'ZboadHWGsS', 'L5BC1xSyaA', 'aOJHrjarOtqzLYDoqUNjp9HN2goEF0eluwb7o40FM2mqNUKGge', 'uLM57UOtcX', 'NugpNPCMM8', NULL, NULL),
(26, 'zkTVOL02Ws', 'Z6vgZwDQEi', 'rdstbrSPl7Hh753TlasqzXoyhKWRhT5oCIhMUxik0wLONipOAj', 'PIipHkCyLQ', 'rVd1ooY864', NULL, NULL),
(27, 'iBCESmWFtP', '6AbMJV9xHg', 'a5kc5Yv8mpqG6E3d9kiy2syIIZ1C0EGzvYM2TDZU9UmnZ6gPRX', '6cYevWwoHq', 'gKh0OC0gl2', NULL, NULL),
(28, 'xld6S60KL9', 'aU6XcASWzw', 'TSEUphHwuEwjvkvkyLFVeqkHQWZoAIGYm6u7hpSPXFhXB1GRt5', 'LrZSsPgUNI', '5k6WufUsdV', NULL, NULL),
(29, 'G8t9D2v4V4', 'L8kGIHgmtP', 'P2Umss1nZixMBQVEQ8ORPE2U4sJMTJqWPw5Wh546jlUzhBqES4', 'j58y0BjlJj', '60xMgCjs3l', NULL, NULL),
(30, '0dakmYdqd2', 'Ywu74r4b3J', 'eBnHeNCaTN8Un0a3x1uAFUJjeo8Qdp6DJaPa78SiYZvp3Vzvkv', 'dGGCNrdGIK', '9JC1GUDwgU', NULL, NULL),
(31, 'ZqmuGsPqi5', 'mY2jtB1kWw', 'zeQKquCFp8hOEYp7cH6qmHzetmmQWfGRR9WQLGd6L9jgGBmqOt', 'evsHD4pvOg', '1gj2OmQXTY', NULL, NULL),
(32, 'Fkdz634wdp', '8go4gN74Vy', 'AVGoNHeHLHuuW9JDKlBNJLCXLuZd3ZJ3Eb3wdKtzksBRdMFE0Q', '0z3wQmoDKF', 'HPsCUa7FgS', NULL, NULL),
(33, '2b0q3c1vnd', 'dxWgWXINuE', 'A6WwcBVch59dzWFit70CXi60QwEH7Mi3bOKm55LSlNZP3peoKS', 'tcqGlFfFcy', 'UzuW0GFBWT', NULL, NULL),
(34, 'vUX83JMat6', 'rXK4zgK1cd', 'RN5oMUZN2ctT8eS6gvUJRwLnFdnIGG7qUjmuU72pBFwLYu2Lb6', 'qARgBgBAA4', '3IBRt8ktjM', NULL, NULL),
(35, 'fyU5Nk9o7m', 'C0LUf2chYr', 'sTBh74dZi6FwuFCsobgSrfEeKAqZKVcGzOtlNpmDxZORs0KjGM', 'O4FIX8WGuB', '6DLuBGlCtp', NULL, NULL),
(36, 'CwdMWU8uEF', 'JQoIIug1sI', 'CQ0PvnzYb5j9PxKnxnOnB78l0f52ladxLkT0ux94IrjBHxtog9', 'M8rud0B2mQ', 'uswwgWTd8B', NULL, NULL),
(37, 'NGOqPIVtmg', 'NmjV4HwarC', 'uX4ihmqHfIZfKLY7Q7bEcOQWBaqBgzXR2slYkTrYU5m4cBlE1C', 'qPRG2pZhWL', 'DzUEnHHmMR', NULL, NULL),
(38, 'qHVoYMchkI', 'vS9WPwfRR8', 'DLHICxgfDlxyiZxcTvjhMpkoaICw9bhT8YORQWOC736QaQlOqB', 'c6RIEtsS9l', '2rZCLfW2Us', NULL, NULL),
(39, 'wvFc6zwLrs', 'Q1niLtIK7D', 'oWxpljFCQPfUAQGhDYUjDe1MYRWDcmdi3MhrzZG1aarOyypdWn', '94zLjyv4q8', 'KUlLiKqeAV', NULL, NULL),
(40, 'L3tC986K4e', 'uwy7yeC1JT', 'kGibrFCd6Uzowqo9WuUd4aLdW8k9B4URmxRssGjp55vOe7BI9V', 'BfnoiEEuD8', 'bmRExwPAxV', NULL, NULL),
(41, 'BbmrR7JAwi', 'EMtf59dqDm', 'lSZEyDSsOCtnD08HbMVio5keZQj4woglnHYUVjm9fx5prnvZqI', 'hk9V0NmXdk', 'hOWpecApow', NULL, NULL),
(42, 'QjKaDUmGso', 'Ref7zpqvDk', '1EavjCglNgUG6yIuvJBsbiwkE9LsEXOrYoMIveyGhXohXMOJNo', 'cemFIBMsR5', 'gw27XyvjkU', NULL, NULL),
(43, '9DAlucXowW', 'arHD41gF3C', 'Bdrby9QccG5ThdhmnEcwlCvTyYudvSPwIMmaKAKg8yhD8ETIVp', 'tvEp4Dlbn0', 'HI6s8A2xLl', NULL, NULL),
(44, 'M3oG9tiT32', 'YNv25vNdka', 'zFwfLe7hQCAUO0pVe0ldmxXiHWxFyhBpvV36NNcoB37MXnQ9Hl', 'ZLpa6svKSH', 'WUA7a3EZ82', NULL, NULL),
(45, 'GtJLyC7pYn', 'o9WmIpXJrk', 'kvqOIFN9OInAZpbMvh5DWfjQrcIAYee2C1BOaPZYqeZknJ4Z6T', 'FPOgV8QFQN', 'K15jUZcz0E', NULL, NULL),
(46, 't49ccaDMvy', 'si0DBx3bwR', '2IFa8OqfbAh2AHorMzZn43UX3RKsB7otNoE2uPFFEwaNekN7sC', '9J9UylbtOv', 'UxG0GMH7vv', NULL, NULL),
(47, 'Nyzv0ZV9yw', '4RW12P38ZK', 'VLg8EgyhyoRSvpX49IjptBCl2imjbycHQk0Gn4eCTcBBk6TCrr', 's3B4LMkn7W', 'UhOw5dd5Hp', NULL, NULL),
(48, '2LWQ1o3csX', 'JwwDYUhu9R', 'EOU40KgQzETsp1jZ9HhLGXLadZ3EPi8EaYR0hMkgEkrQsU4SDN', 'Ss1Ts81MW5', 'AXPA8rdrax', NULL, NULL),
(49, 'YNRLrtC9Gk', 'rBGw1zulNm', 'qPYgT6yj6jj7AOp2fhBbLAHN28GTJNQUUYd9uETIm5xbQtEXhu', 'DCCofRCbyc', 'BO9TUeDiCn', NULL, NULL),
(50, 'qSz6hpKTzh', 'u3K2PeamCs', 'VNTIR36P802jsO46C8s3HvkGDF36nGoraxyMUjf8rMwUxFVLd7', 'ka6wdAqTDs', 'uGvmvpjOD2', NULL, NULL),
(51, 'ug4BJiKZdr', 'hIJr14znAN', 'qrZc5jLTZdcRbbTZkPQCHjffMaHmGOctZJxmC3Ek10trJol2Jv', 'L9LceN9MXO', 'W6kXvWWscC', NULL, NULL),
(52, '3WfgpQ8MzS', 'ywj38RIO4r', 'SaKFyz7q8fWLKv6GN4tCJNNz1GySIDf5yJKIwZknWu7R4q20i9', '3IOgelhEIJ', 'ub7cRbxto3', NULL, NULL),
(53, 'Tkv79JMQUH', 'LX5ESIaeVZ', 'DKg0YbUQlKOK8VJZnOliPGylxCMjb14Hpb7UNJDVsPx9gZvFRc', 'ql4wnzv1ug', 'cgNBOzjf9A', NULL, NULL),
(54, 'dJ6HzYZrwm', 'PDMQQHNXWO', 'rYxKK1udKQCfZD9vPxdT3hDGXeS76OaGq0FOhxaVDDAbB1yEFA', '8jSYxqB6bE', 'Gz89v80F0b', NULL, NULL),
(55, 'xQYDyG32lO', 'FKOAjum8rk', '87sEAkVIFsFcVDHBgfgWpOIIutLvGyQNmQJaiFazmQ05Sa6MeE', 'oyVVmDeqwG', 'VT5HrUiYXk', NULL, NULL),
(56, '6w9skHm3MY', 'wqcr403yK5', '6RuIge1JuXDubclQUOBFfkRtsurUfdhTTKm7tpnRA4PHUeKTd0', 'vbhFX4tqTl', 'HGJCIVCgtr', NULL, NULL),
(57, '1Akb6l7FJ0', '4s9T9Tepw7', 'PbKxFiKhdWQA3D8QKvz64XAa76hrqDD1bedIktPW0DN7XQueYT', '6WTKPZveCc', 'mD0uGm37zi', NULL, NULL),
(58, 'DLjqgTyAzY', 'mE6teCFohF', 'Ckuo2MoHF2qRfWpd62D63pwVdY8tjq4uMgudRLT2OhZXb3eQ6r', 'nIKUvaz82Y', 'qrA2MbZaoV', NULL, NULL),
(59, 'EtQJao5nAc', 'q5217lOTGr', 'r6mXoWi8lCwDrv7nOhGOGX9VjM4XUEdqfvfxaCcAEYmuhb6RM0', 'KDwtdjqfaa', 'D4GpiiwZhY', NULL, NULL),
(60, 'JiRiJtiKPg', 'FT8bLUVQaz', 'Mz6EHRtlZzDOUWRf6F2SVntoP6yT2UZLkXBPxdDKY7re025cYD', 'GABpKSQ85V', 'HwdoxgoWDb', NULL, NULL),
(61, 'JcIKvmO2UI', 'FyKyZbjMO6', 'JDWGCyMnTyebxUhd1WWtZM9Rsv8KEKu0WTeoR0AHAiwhQdIJM7', 'DFEOwH86L6', 'xgQVNh6otK', NULL, NULL),
(62, 'yUCe0t7Mte', '5b3zKiDeMB', '1j3eCR0UC1rGUqgXx0G6bLgXj0GdzjHeZGsdyCtme8uFipTv79', 'UKbkbjAX3J', 'LRCycbYpp5', NULL, NULL),
(63, 'MOCwxFEXeK', 'sSlPrq7QXR', 'Aj0O6NTCXXOYb1an04neX61gJw4GdlIhZIq6Zl5IQD3hhpbyna', 'zHfQwXdAk8', 'R0m0rMpoig', NULL, NULL),
(64, 'f6a2ARjL5z', 'SRzvcwo8xS', 's2KWfbXqC9cHBEngPnFXIKRevhbY9NTNYmjWQfsuR7ho0IHxdO', '335uVNEnt5', 'tNyYDaPza4', NULL, NULL),
(65, '2NLPnRltRO', 'SQZ66jiyjT', 'cCE8JHYwMvo5cITIPiVpdvLQj7s8st8q6kQTOG9npCN5IO1sAO', '6QsbIOSzjU', 'G1VBz12dzj', NULL, NULL),
(66, 'P1w7uvpvCp', 'SzX0PjfX5S', 'C6NzkhXOUc6I5dDUaFRjoQfcC6ryqbmU0oouon4ouzLeBSN75D', 'fxYa9kxe3G', 'w3G5SUm5rx', NULL, NULL),
(67, 'DEOYyVXD22', 'qXYGreqU5W', '8rak1oOsJsk2b2EBsR4HBR8tSGXTYRaMLLOBcNJ2Ebjr3WUuyD', 'ZBujo4JKaA', 'dGj299fwCf', NULL, NULL),
(68, '8nMFDw7Nhb', 'brfUAUzbYb', 'aRL2EMvsSZA5R3M9ciKV8t0uEmQ5CqBw0m9rcMNvM5PQpokuVT', '9RxJHQOpj5', 'IuOL6yf6mK', NULL, NULL),
(69, '7cxcCYemoB', 'powo3MPjMw', 'JrOL0gI6lyZdOYTU5GOOij6c4VKiJENCpkEfWlRVfdelmQMWfc', 'bZXZDeFwwu', 'fpBfH4W8GX', NULL, NULL),
(70, '9Gt01tXp3d', 'tFGzqlDDm9', 'm1OeNolRDZ9FjzdUJYcraNoaij68GiGmEwfrS90S4zzoduoGhG', 'Sh9zAeWiN7', 'bjGXXamkgN', NULL, NULL),
(71, 'zS5UzeKPHt', 'F6o9ZzVDPc', 'bUDDs58UBn6yv78pu3iEsREZoPkS0j4ixQY8lIDOG1Scp3OrSt', 'tuCuDYSeOc', 'bom7rfrR3Q', NULL, NULL),
(72, 'BatNSQTWpR', 'UWz0VIGrAE', 'hj4mo9Mszl6UJVmkDCEjOPXchkhX5Njrp393MpqZAyovWKCKwJ', '5E0gEenkw9', 'cYN0BeFF2h', NULL, NULL),
(73, 'qgG8pbXkrT', 'wA9WBoDgG1', 'UpZgcuwSPjCyKJaqzgpsYaUsd2j4cEuWnPD5uHnMa3bJoLDQbD', 'UXhAX3WbSe', 'vCvbAH3Kgf', NULL, NULL),
(74, '1gJztmgvfW', 'iFB1N2FHDh', 'JDnhyrmcv69G96Xm0YlTEnm3ShXqL0VP36H4h0OvY8JS2p9NHD', 'ZBI95CW9nU', 'GwPGih8MnG', NULL, NULL),
(75, 'Ooo2ct49m6', 'JsQbPQlGCZ', '8vtAHsGtHBGV5BDu2KNJ4msdiEtNRvHyx5nDtdDIhu9zrHYN3B', '5Mzne01sTf', '6CBNIletWI', NULL, NULL),
(76, 'z39SYZb6nx', 'g0yAJkdd46', 'okmOqR2Kf4cQW18d9azyXeV85taxn084PEaMHhjwCeBRRMXO27', 'lNyv15iwII', 'UjCpLfTcWQ', NULL, NULL),
(77, 'LnIHdvQvFH', 'RyDRjDv4sO', 'vhNMpcG6BzgCYYBQJ4wAuFDX5le5SNDGBUuss6EyKWP37nI8JC', 'VH3LjbS8bl', 'otuNHyNUC5', NULL, NULL),
(78, '9d7AD0pfTU', 'IO738FVVgP', 'hl4wiWApbg9QorA3MyWrIv83gcQXKW0TQ7q01eZ1VIIjAxy7M6', 'mrpHivoDqU', 'q8b3PgvEJm', NULL, NULL),
(79, 'BzoWQe9yKZ', 'nxLCu0uhOs', 'usTDvYX0m8z6Tr0ac6w2v07jyS1hqpgCgpXOj6CcWLzacMiRRF', 'qHSyFKEedV', 'Zn3IIapKYh', NULL, NULL),
(80, 'dsh2yDQgBJ', 'gHubh8Sx9l', 'JU2X4ChRFBCA7mDKqvBslYRhiZMUIDCoXmkIlWIWKAixifMXHc', 'OeEXdWCog0', 'moYxHFtW4E', NULL, NULL),
(81, 'vkUP1bAoyd', 'AKySEQvio9', 'zDluLj7dr3fYkHIn8SF3tPIfqsY6TDMhoLoa2efYf6vtMeYeUj', 'mRs9P31fEa', 'xXdHzqxuXw', NULL, NULL),
(82, 'oI2zgJBtr3', 'IxeQMEt3qi', 'HHbAfNJTEdu5eG3XYaeAHbYAa6TAmjVOd8F69l3j3JsGPiICvY', 'CnIqqGtYEe', 'DM42RWdbE7', NULL, NULL),
(83, 'JkMQXTDdQ2', '8aQDNbmx0p', 'moWE6wpvTPjXBezhCzpUuZycP9vArknL0ZeL4AV0hhpb7036Qr', '5cd2oDLkX5', 'MgkcMQPUvH', NULL, NULL),
(84, 'cjjFRR4s56', 'rsdtGBLg0I', 'ITdJtsSE3OOgzHO35QSQkDePrUn4uqqfT2P8RKAdWEocKZVJY3', 'iqcnGzL0cn', 'fSpPdNaCyf', NULL, NULL),
(85, '2pytCDjzYb', 'D6z8DBtNFu', 'LYVuoEHfaxqUSNO7naznR3dsXyQaul7QfupdW9vV0VEGrSnQpI', '6l1OwQrIfG', '8tfj3GKEtK', NULL, NULL),
(86, 'qteyQqCaqx', 'cwaIWmRSWY', '8vM2teww5n2IkpzNkvAstfrO8EJnd4eH1DWt8vRcNRDwAwfi7A', 'YB0uXQWI6F', '3un6T2ypiu', NULL, NULL),
(87, 'SHLAPbOrK2', 'G9op0WlkNJ', 'vFqHAjxvDpfcJLp9y5vp2mMbU7BTkNy5ChHzmKZiHM5sz1hp1X', '4LGfTr82AN', 'uRYRfofyBI', NULL, NULL),
(88, 'NTToOzP1QM', 'SZ6VhlCPGO', 'HXsSAdbo6WfoP4DRhQK094atzLSe6QFlKVcjO1WtvH3QCrSkSs', 'O1gjWFd4qP', '7PDHjqhAtR', NULL, NULL),
(89, 'sDQgElqT5s', 'L9HTzud3N6', '2NxAwlVucxTE94pdmjQe27creIZjn1JLnVYpBDLHnnfHt70gi1', 'WtmgNrJJHq', 'P4FTez4hem', NULL, NULL),
(90, 'hNgUi33DZv', 'XB3zxJi7LP', 'w8oMnkBJ7W5UIgCkyYBSpdtPo1OGZCtUFPUoueBZpDHy1MOlwO', '00fJSG6DJp', 'eBw0s7xdMU', NULL, NULL),
(91, 'ZDVK6j6EZW', 'IXbPWlTpfo', '0giZOte0Z9tU2w85DrWxu4zLGA3erUh3KVYiCYBrw2ANG6uCs7', 'yhCZ16oPn4', 'AWtLGN2KJz', NULL, NULL),
(92, 'cysrGOwpk1', 'W0qfDjmdUz', 'zESMYLv0Nxxn1jG5ZDU952VkeEdmEix4OdLjdRCrASitLDkJZs', 'o8crxqJ2l3', 'SMRsUWF8oM', NULL, NULL),
(93, 'Kl0Fgt9fiO', 'wBr2aUClWQ', 'deQ5jUKEnQayJkdVEi8CqltBbVXgL9su4LrzyQHSOi4S7ZFNpT', 'qG7ryVDiFz', '5BwAqw8WVN', NULL, NULL),
(94, 's2bT88QyQQ', 'fw8zL8V49K', 'z9rHi9rf61Kotjy0LF8dcBbfPaqjFOnkWCY1IUeCxZk2zNr10R', 'TjewbtkMav', 'eurbSi0DFQ', NULL, NULL),
(95, '7XQTucPOpw', 'ZI3U9Y9nVQ', 'kd7r53taCscyEW0V7EV0ObpjhUi8hfIaA7WjNXe9fuSHcH1jYh', 'glMCvbHn1g', 'fbx8VQvaTi', NULL, NULL),
(96, 'dt8CmWLBOd', 'sHoLtBOTGl', 'chbvCr0q7BZt7rNkxVgNJANA8hCt1H5LhSfkM6E5E9vnaVYw0l', 'W4OGrgj38m', 'X8LaZLxfLC', NULL, NULL),
(97, 'Pv56uS5oOE', 'dIV7xKPKsF', 'XVEgDVUL5L7idyoBXw1ZcpTE0If1qreNCipMKu6tkupyefKa8R', '5fqGdQb4rD', '24uYrVOUS4', NULL, NULL),
(98, 't85ZXJdm4M', 'RpzHIr3xDU', '9lDarRGfyPpIOUJLDPhUwwZX6okVeCcw8doiqJOmbRNUDBhArv', 'A8c68Rsixb', '41xgM2Vq4c', NULL, NULL),
(99, '1EYvnnTmF7', 'BJqvQMTkkb', 'HmhzOhHqeG3afTHqE2EktOsypJD21KbXxKx2kJbEqXkuo7SaF9', 'Km9UctzbfQ', 'PNq8aquRXq', NULL, NULL),
(100, 'HY1LSw33Vx', 'ZYQwvcfJ2H', 'D4up6nGRFKO9XssvtB5ytIBRZQApTRlKsw3dSrp0jMU4mcN9yx', 'IJuOyJCYfs', 'YPpKNdFIri', NULL, NULL),
(101, 'J5GuORGWgQ', 'GTUCNPV1gN', 'Y3xo7LvKhIRghYutSH7yWkh9nrm3bNxjqi7y7YbK2pMMjwUxnr', 'u4UC9amsje', '1tdT9OQNZI', NULL, NULL),
(102, 'jvzrd0Onz4', 'XRNuSqj90x', 'RqDLin8GGG3cIKjorf59jffzeCWOI7KZwumGRxuqe46iGoCECn', 'RiglhvPoyQ', 'VU2gj9rtYN', NULL, NULL),
(103, 'qgpU5efWPx', 'u7vPzjF32x', 'BvquT40FRwBmLMMDYhe7LEtgme5bxJsVXCIJtan4RRgYxARmpt', 'EFtpeoiASH', 'llibTZzuyY', NULL, NULL),
(104, 'Ymv98KDq3d', '86edI2C92P', 'pThDwujNxwXUMBsgiD82ZYBeM82ExSYYG77n77jihfOemxQnKe', '4bRTKaU8MN', 'RX9N5UK1T9', NULL, NULL),
(105, 'fnTOlbMMB7', 'JrzZRFxPiu', 'I4C2FYu0r9XXXc3oXV7QQw2zkwkUqLsvC3D9E8gnF988q8Tip8', 'tplkwu0VMQ', 'IehRBt4N3w', NULL, NULL),
(106, 'pGQ7zSFqWW', 'i7dQIG2k3H', 'Z8x0tge7L0PyUP5R7gF0MjSfUAtuRqL1rUSsMEeSetE9iLqgRv', 'MbF6c4fmaV', 'p5mMlhIjQD', NULL, NULL),
(107, '7tpECxdZ0V', '5eqlzLlacl', 'ckpQdKrFTYEKWxHX0x34DQuAYmS61n2j3BQjKdQCgALlL1Yntw', 'tQp1y3TozL', 'Z2d2wScQ0a', NULL, NULL),
(108, 'h6TPbEcQnI', 'z7N2W1jxSx', '6exVzcn2M7DQmtkKfLENCqHXCqMo0lUEFpX0wBe7OyoF9UtdDy', 'g23UHLoIQa', 'RzrIAca9mA', NULL, NULL),
(109, 'xE8lXf0bZ0', 'vL2sJkWsox', 'gx4NrAbyhEfv34hqZgb52K6af3KW6ZAkTRdxyPJOEXkNmReWOT', 'QylJhSuuO0', 'xgYaMg6NAC', NULL, NULL),
(110, 'AOiqEF3tyK', 'ITwwjKb1Ml', 'y4TyaijUouZFZ01YrJLvGqfJ3nY9dO1KKEOqux3YI2SNYiJj3p', '5zgkoUsByi', 'ui2XCtVUeY', NULL, NULL),
(111, 'xiaywd4zY2', 'KW3L1JlWFw', 'ibYcTwUfBd0jnJjetVGcYx89x7jzheZdlxHwxfNG3E0a1UuXvR', '2plzXRFDt8', 'yiAynNdjac', NULL, NULL),
(112, 'axJpK8N9uU', '0KoEpo5QLJ', 'hPxEOpjgeaUysYL3fJLXmhGwTn8RScz7XG8hkxGX1mwiwn1LSt', 'CPuuZaJu1k', 'FPnoHG06Kn', NULL, NULL),
(113, 'O9EnD06Ene', 'zL9aMbttD8', 'MbYMdVobmv7PIh8eFMt301pXQVI1eVpdWb8HGPZ66KgArvR9v0', '9CVWk4ISYY', 'Ki2cwQRJHB', NULL, NULL),
(114, 'OH9j4JY95t', 'EZ7yum7DMD', 'nuBZWc6iQwfdl2mnblQ1PApPUcxl06boROwP6T988bBYuBSW2S', 'DudBrEB1vV', 'gGAdf2BObG', NULL, NULL),
(115, 'WoZNkaXtIA', 'U5PtCt2raj', '2ZMKrZuaxelccgTaok9NK3AWjDTWnGLzC7JbLaCmRh0iRTVVWO', 'PqXmaGQvQZ', '1uHYBNEscT', NULL, NULL),
(116, 'muMZX3FSFA', 'kSrTHnFIRi', '8NW3xGYmJPTD6TDRPINZLiB4LWhBWzgTcx5pOen0baKY3EcNo7', 'KXD0SVsELV', 'NmbrsgYh5y', NULL, NULL),
(117, 'nV0kiJAsrr', 'dTGw22nRsC', 'XGtW6q6guOknngZezxTilbBcpyYKGAiaNKQU6yK6yjSiENeLPr', '2TEUkH7bRm', 'IdYdyty5Ie', NULL, NULL),
(118, 'buGF0him1M', 'M1TcWOZmND', '8uhf4CrYpg5irSWGhYKyVch2WlSOi1TzucBMQHRBe2nLAr7AI5', '0yBt9gve7d', 'LwojGdY2Wo', NULL, NULL),
(119, 'diaZyaUNew', 'KLh0Lv8h8F', 'BSU7ZVG08VSFY4aVXbvKIVaom1wGMJXih5uIoqCpi3JpPFkRa4', 'sMUnFDaH2l', 'xS2k4Xw7kK', NULL, NULL),
(120, '9U0ZWKbO8i', 'V3RIjcl405', 'oiwlX7a4KKLTxzva6VhCN83noH5wYiESsOaQnqVCTmrHMUMLem', 'EISXtRxLZW', 'Rf8xAfQHsz', NULL, NULL),
(121, 'Mpjogs8kLr', 'qQUITPr3iz', '4RsjzKuRkYJNPgIG27evFFd5NCp3WBU8sDj8fkN2qFO6idpuHe', 'JkfN4YviKL', '9soSbF7WwH', NULL, NULL),
(122, 'kygYE6e3lg', 'pN3LkuV3Dv', 'GQlDoguHywVO8H2duNG1m4ew7E5YWfsbOrDkZVVgezfNIkpdFL', 'DbmcpDuuFv', 'Ojuh6OeWVj', NULL, NULL),
(123, 'b9neXAmPvw', 'pyXJtOuThr', 'aYU9WH64bEPPMxV5QqUF41xwYZXBPYskd88gCY0C7rI4yqEF1J', 'FYUXePBOHS', 'bfJZ2Oqwmr', NULL, NULL),
(124, 'dfFsZoPtNX', 'ktg5dLIMte', 'ttoLx3HDZZBqLLQjMFdMNfwTGbk5pA9TI5bX9JL8gq1xfvjwYR', 'gYAfVhzW80', '7wVdN9ue8p', NULL, NULL),
(125, 'Jmct9eHOZi', 'hn5KPIO3PE', 'tGeXOwrtpe6luiBIAzzp1mkGcAM51JINNIy0NlEamvcrXvRZ1B', 'rO7M6UzIvY', '1F8eTHCLqx', NULL, NULL),
(126, 'UFe1UwoMFU', 'zWAvYDhCys', '3bsJfC90yCFMgqrwkEH39QGc1jklitvNbjPtl6tNoiqMRvEYor', '1XRPQ8N5OG', 'dntALmlFpY', NULL, NULL),
(127, 'xmv023yqCP', 'QR7uPfxMkJ', 'Bqrk8JSzb8nMBCYFVXf9gvdDBIcbm90mZB3if83juCU3ihtQl1', 'B4LlCzhLPj', 'UBidzzxW4Y', NULL, NULL),
(128, 'aryAeJJUC3', 'hvMTrV20vh', 'wykQNk30iUOYPiJl0QODa6lzL7ZigBirRsscULwHkwrQT9nGv1', 'mbl8kKsvCv', 'xuXwlwoXIo', NULL, NULL),
(129, 'lMJR8ardYT', 'ul5cqPyWSX', 'XcHmzBOjk2rX9BXjRIitHNiCBEdz8Y9bGYD2zaKbYtO0FZI7tl', 'gEv8JMfNQw', 'R9Fd85osq7', NULL, NULL),
(130, 'bTU1iVKsUv', '9MuRiOSr0n', 'WwMVH5EIayoVUTzzLXlVTxLMIEX8PAIzFYSzvhaBsMzkpHOybw', 'I7kkXEPHfm', 'wOsjcqNCiC', NULL, NULL),
(131, 'mE0DtA6fmQ', 'TwkVaNBrDm', 'wqcKrg0hIumbpla1uaKBpmhD7b0sF8qyqW35VAOQzvwC2l3LsM', '878OySYCq6', 'iv0sWtSaOL', NULL, NULL),
(132, '8ypyybDaHw', 'q7vtkPc6DR', 'xTQjcpXsovdOqVmlKD2roJcsPsPx5zvftwOr3JjSOLf6i91D31', 'rRXdphP7A4', 'MtaG28Gcnv', NULL, NULL),
(133, 'WUUPyMNqCa', 'ew5zM58b6g', 'HSaRnOG3fd4jr2EWs1QiPzUAOqqyKNNQOJeS8zeAEWjiCXalG3', 'jllLUDNqPt', 'AOg0CjrCBg', NULL, NULL),
(134, 'pflArhbWZu', '0Aok5inf4E', 'yHOZAaxWRAX4fua5hj1524q5FQxbufEEUBPzz5DsZB8nTFp4Ed', 'pIsuFwBgWL', '7K3hAR8KHY', NULL, NULL),
(135, 'sOy3rhfow2', 'LoHDNugmjv', 'mvrtNIGB0UwoHC22k73FDERJi5nOyLBKfNAYXSR542CiWy4OZg', 'n5irZxkAsU', 'bzPWn8l30w', NULL, NULL),
(136, 'QCDDZxyAYW', '74xdFqcFZN', 'A5hKiTdkQ7aL2PkxHuI8zBtbcSI3WGa7hB4Vn32XybABM1LvQu', 'A9vaG8Iad6', 'P38BRGNkUt', NULL, NULL),
(137, 'C0TQVdxPgO', 'TUK32OU3Bo', 'LgJrXrsDOooZynW4l9ebkhi6Tlug2fOSrxD3PyiJ6lZVRyfUxu', 'CwTAsgWTFv', 'qWTtfhFGUe', NULL, NULL),
(138, 'ujUgOlrqKA', '7Nxqsh46kN', '4X0LCuodCIc6G6p6Hdbdr9YenD6PATMweN77gf6cvYOsQgsQn3', 'mgQTYNjkgu', 'YQCuO2EeM4', NULL, NULL),
(139, 'WB2rhUW5Zr', 'x3LRCDsyw5', 'Kiv8fAyyRBfG4mOBhylxPjioy8ZTgvgwLdQWBQV6rfUOr3P9HX', 'OhR3ckDDhK', 'eDKFyt2CFS', NULL, NULL),
(140, 'R7qT4aYb98', '3KTYkVX9gL', 'QMxjKvLhwZg8R4fNgrYiA26rirzU4ZZ9CDBS1dgck2DfmAVs1h', 'G2LK0TWCeX', 'f4WqzvPMOc', NULL, NULL),
(141, 'IReAhbBpvJ', 'm5xa9adzFK', 'JDwWMTwbBjqCbvPyVftwHZaak2n00rGcGed0J6ngoE5b3ssKsP', 'v49JwPwks1', '2WeFe0wzda', NULL, NULL),
(142, 'QrHZ6bGdzs', 's8dx2DX1uX', 'fW6sFplo1Jhw5WXd82m0EvpkY1Po5NRkFv8P3nxJoFi8W8Rsxh', 'YjXK56uiUe', 'YXfi58PqVS', NULL, NULL),
(143, 'Kd1ibEcO2i', 'oOO0q1gsdf', 'LkBs3Ln9Wqfe7qiqLjsWe1WbzEnZZv1ZUPKHYuUjtrs43RRFnk', 'GHw4aRNHHA', 'l3USp4VIIN', NULL, NULL),
(144, 'J4STM6rSuE', 'Kzl76IyFIH', '67jAH5CwmJL69Ba501IZnTyIBw3U1cGifqXHypZA9nxHeHHmJi', '68ZhgSBQ6R', 'QHCTMPEUkF', NULL, NULL),
(145, 'tyuCRbs21Y', 'hUrPN2MFAo', 'c2GddbxUyrYRGmrQsLHPveJcKTvRBAQNGLsKFVGzdRU6MddwDg', 'ab9kt19AcO', 'GlS1hbIBeS', NULL, NULL),
(146, 'sitK6Clp5S', 'Zd1slXhOR9', 'Hj5asYlXjemduUncK4aMvNfSYLXmuJI7LpMMSCGctlTkePfbY4', 'kjLlPssZSQ', 'DHCBweNorO', NULL, NULL),
(147, 'AiYFQFXfMQ', 'yems5wvLAW', 'YYeskbCSFka1UvhHMv2ukyckJ0mS6SiZJmVPLm7O64PW74HirW', 'xFrxbgd4GF', 'TwtkstYhjs', NULL, NULL),
(148, 'qcgQxPDcjI', 'OIJeO6oRqk', '7lzFAu7xL5ceR1SULThAc2VrzCeFPPZ4Mtxu7OnmUBd5Uuer95', 'SPNvWdMEgT', '1CqK8zh0rZ', NULL, NULL),
(149, 'Q75FFgx6sm', 'l5OE0ZtgLG', '3s1ktGkAXQ1v4XHBWOiCU2XbH8LDH1nG0citmkdxHQSlRvQTly', 'mdvg3ZJDf1', 'EL44FsSV3c', NULL, NULL),
(150, 'UuCNGSkoqn', 'dRTw8DtCgj', 'TFc8eDyPe3CwLyXGqZpOmHRIABXWY3420WR5dhhQcSEhU8Yb63', 'EZy6shYjZp', 'S3PoZFt4UX', NULL, NULL),
(151, 'hXDiwre2cN', 'UXOdIclZXL', 'tLsKUihDCZJIP9ulhAzELd5lZI1jlmydFDCLqwcg59hIls89vT', 'w7KmcWa5s3', 'itfoplMIL8', NULL, NULL),
(152, 'PKKREzTOUM', 'Itsr2pmlD4', 'Z4bEbvy7vNr02abLiDQInbZCzydeAb6R8RIzrGBngsgHCVZq23', 'UkuJ4FhITP', 'OFKcBqngEB', NULL, NULL),
(153, 'L0RvM2e2Kq', '3amcs7vgQP', '6Atv3AyscJ0awK9wLfy081PgqrgoVwsTDBymDKTkNZN0A9JjAK', '7vDVS7aWXg', 'hwSbvFsU3u', NULL, NULL),
(154, 'gWcwVaMzTO', 'gbShDSSQq1', '1nslAlMGilpl6ol8T2EamfSWX9AlkmgP7rddwcsVXyKOF43p1R', '5wMsyYjnfV', 's2uz1uyYNp', NULL, NULL),
(155, 'Y4XUMprPLm', 'QEtp7DGxEP', 'S0XfuVDrsDuBdL9MbkVw8AEF7TDqpSTRE4U234LMMLFbUSm3nP', 'dUI0W97EOY', '71BCiQY9Uv', NULL, NULL),
(156, 'f14wYQ0LzZ', '0jXY1MttED', 'kRnT2t9gGAjHjeZKem4MdbohZaOLn26luLBrjYjeuTgrE6umBN', 'QE1LNO3qkB', 'OOIHtBIMhw', NULL, NULL),
(157, 'WVJSfUH6Xe', 'vmjJLtmeOw', 'ZK5dUSiED7w83v43Rs4eS8uzo0fL4Dyw335J66fkFKJ0QK0KJz', 'umMHVT9ajk', 'vHGE7H1mn9', NULL, NULL),
(158, 'xUtZOuoxEl', '6fzidfYt2Z', 'Q9DBlLWRLO0YXgTohQtTbmw4XqmHdwqXZEvP87ALeTGi0UwR4l', 'q6SVAK4xSh', 'FFLaQ9qtda', NULL, NULL),
(159, '7D9mwBzMNO', '9AWkxSOEbX', 'rckLEMXMCnbkLuQohDpQIP8zYkPYEvaomDjLtK3dYabGLTBdYr', 'hwnipROiCv', 'iDn10b4Vzk', NULL, NULL),
(160, 'cD2sYbZgCv', 'X4SpcJ7DZT', 'EWC95qc98iZLccHkFLW6WyKbbWz519H4u2SLEJZp3WMRaC3dzm', 'SKKQVEZbgo', '3u0oodEyEn', NULL, NULL),
(161, 'T86HWVxP3E', 'o66DsnvbTb', 'KQjueHapGMoJQa9tvNq6bXUdIV5qoMWiwp0mznPGDkipgHF4Wb', 'W3bsMc2HQ6', '39Wo61tywu', NULL, NULL),
(162, 'mNB8y0C3bo', '31gQeLDjeV', 'fjqIJ1aU6UXMsIkvQf6O6UQ46G6aWwc9qqGIeQ3oI66m6z53Tj', 'zCK8kKFFpm', 'XSJdUZASI9', NULL, NULL),
(163, 'Q8axrYFh34', 'CiSbMsCsTR', 'L9GLLc8183y5GjCr7Ye04SW3QRdHMyeL7I3eSMIvZnZsaKRPYv', 'Hbi2ZqtGzD', 'NmTDBpuukB', NULL, NULL),
(164, 'FaHowrgdWQ', 'WbBcSKJj7P', 'N7ozzAKZ3KTy2LvoBRUKQyz4poVAqIcBdHlo7Z6uwL7qVhyJn5', 'NmmBqd9qqV', 'YXEI6Mkp3q', NULL, NULL),
(165, 'wBmXrvHyDm', 'Hw21y7mZzt', 'yeXUUd736fYYaDdfYZzN0a6HY2spIvlzAGStlxw7chKPstXEdO', 'NEb0THQ67S', 'S36bA16cnK', NULL, NULL),
(166, 'dq9ijzOt2i', 'nX91Ki3VtF', 'WKrNkvCRzBpUnzgCricIeiXdX6RPMinhTtVFLyX8BJ44ig5txU', '0qru4Qxq1T', '6Sy30nTZXn', NULL, NULL),
(167, 'Zq4KdEo5yI', 'a3Bu5Ilyit', '1HYg78f01mf4FaWW6zRMLMfvz8XKI7zs9pBD4ivSErD5WVEYSV', 'quGFMcpbsz', 'XRdU51SbLS', NULL, NULL),
(168, 'NZsksJs2bw', 'R3rKB4xh7K', 'YibIuLvKo0iNynWNm3ySxofykL5xzLkLR5fHkBJUbq4aiKBUKE', 'ahhu1ITxlQ', '0Ys1aBsYVy', NULL, NULL),
(169, 'yJJVXTahNW', 'TA1Jtx9wpK', 'NKlmS030Jzu4p826yFEQW0MARNsd85EUstFCWipfzptR5nuKE0', '4CVHmBXLPp', 'kIJHuP8TaO', NULL, NULL),
(170, 'IRq37LTa6d', 'FikdctFGYM', 'kd3bVfXtAXUGwMknhw4YOxmAD0iJDBAU9eXjheUHEms4R9kh1M', '8ApX2Ji2GB', 'xR2C5RywzQ', NULL, NULL),
(171, 'B3mL257aDe', 'EF80KMkCja', 'W5yWzxaoxKeK1F8HhMNZxfAncv93C9z2QWJjyY1JiLSLlzZKGr', 'DZNf3PfuVr', 'T5aXoNoEku', NULL, NULL),
(172, 'JmREB29Cfg', 'PKGXdJECW9', 'JUi6XrgqVEuMzkY1cXzbEbqloMCVXC5JmKGRMHAcWTknzXwwPA', 'dmzGqAenRu', 'HXrA3YRlIK', NULL, NULL),
(173, '3auvm3kDOm', 'N4YlG2BmZB', 'aw0MYRKYxFBNP0oiYgP1vxCfLlVibUNZrnu8aw4jEXSOl0ktxx', 'GZdBfEc0Ut', 'vXqyeqUBJ3', NULL, NULL),
(174, 'xxW5jGicyc', 'kt5cXVRFP2', 'lH4kCK8x4duT0MKtxraqe4TMZA0oBqFHxQ3CLKHdn3VB6Xb06O', 'TcayMS2LY5', 'vb3tyAsqDK', NULL, NULL),
(175, '55xuDRwqjP', 'qNOk7JQXU1', 'Vue4fodxYAoDxQuuTJExIx34h5dUaMkRv9VJwLTq18nPrl6zw7', 'QFDJnZY1Mr', 'zmQzYM6jKl', NULL, NULL),
(176, 'd76RzI4bvj', 'BisAvrRbgn', 'aU4hH2h7iSBK5Yb6geK3VNfcyWsqNdcch6aa2zlHJ9te8snaSt', 'vHvQtRYRiI', 'JRiLMt3KmW', NULL, NULL),
(177, 'JgksWFhBFn', 'AcDUIbrEam', 'LkKrBkmYgPbjAZHakPgDheQ6rH3SmTUgHPEQh0Vy7ZMwpHQ1xR', 'K2eyW1hEST', 'udu9O7MwtN', NULL, NULL),
(178, 'jEscYMVRRE', 'EjmCep3rK2', 'LA8xgKkQAAoIjGgivP1e9cF0Mt1g5sxR4hkcscl0TtEndgplWD', '9b8ikIiJBS', 'RHfJBrkHgt', NULL, NULL),
(179, 'iLvMUdmFE8', 'FoOLFQTqXf', 'xnfwBEB7ARXwEjeyYIkY4rsFdkCnE7smdfWXMNuDn8Ww56Dg9Q', 'svMNsYGCLE', 'jnjWLvVqNJ', NULL, NULL),
(180, 'AoTa6ZhnXc', 'HhQQRBtmZY', 'VVfis9CTsNjoqtccEDHz6o42GnHtZuqEeOYbVKtTgjiPvzPQy4', 'ZtgbVefy2R', 'aJQDn6hc8Y', NULL, NULL),
(181, 'zR6zyuD4sC', '7S4M92JVMc', 'EXUl3bwQeERpfM8fLEvySpzjARAZ3TU2g2H5mbrPyDvY6rpzYy', '6xLcxqmGbW', 'qOnr8PmqKg', NULL, NULL),
(182, 'gpPzxhufXs', 'SfWYJPkhwH', 'VRSXzDp8uVAmYR6YXCVnsYh29FFgETX97mdotNow4l3AktUOod', 'rLrwatoOZm', 'VDVByYWAl8', NULL, NULL),
(183, '8fyoLs1t0y', 'QPRwe2b8OY', 'QnwU1Ndibt6d3BUZb9twOzkAM20pCj8sgz1EnWJqeG6CxMRUWm', 'ucSMfqtrqh', 'VvdF57R7Ih', NULL, NULL),
(184, 'g4mfsUytsv', 'rBaCkn8Ftj', 'F85RZTm7TWnip4jzQ2zJpcJoRWsVO44LVWdcud4UVSxdssVvS0', 'CD32OBvSWQ', 'QTwGps0ViN', NULL, NULL),
(185, 'IjYRU8MxWF', 'JtX388wpXm', '7qzkOb0YOxXl66kfNzHgKWvawLEx0XfI2S2JPN9YDpv00BIZQi', 'Fxz6xXpCT8', 'ixSx3OMcwj', NULL, NULL),
(186, 'DZPBaqkvnN', 'jgMnOM51Nw', '9PkTuFguISjBDK9SxbWKvKsTRmbzPiTERgkht9d5WZz9NFZqUW', 'xJ58NezVEo', 'Ak1Cjozg5D', NULL, NULL),
(187, 'YJv3WO7O7t', 'OlaXcdSEqe', 'WlzU7oCEspvH9yEzfSF7piPpc35hzbIjJKebk6alpJVY3QscaO', '0JzV1UC9bK', 'E1KjkylAQ5', NULL, NULL),
(188, 'uiYYbmu06q', 'W8M40Yz1Hr', 'H4M9UD5LdnEsno3EjVoH0e8EPjgPLUuSKXDQUqIZtjP3v5VC43', 'PSrrdirlFm', 'jNxS7KAUC2', NULL, NULL),
(189, 'z8smzcfEOd', 'Yfgvmwvb4z', '4GBWDzvUi2BiVSfLfcAbE3n7FFnXXkR3aS4MskOnjijoVuWuxi', 'fCHNTPZOjq', 'Z8AhCigc8x', NULL, NULL),
(190, 'msUxyifrcn', 'YeGAojqosM', 'zNz4dHaka09OLSvNNFd0iZVCDnLaqTzTcWGvdBO11Vbha9VBcR', 'GqjmCe406O', 'tGmzOC5wRv', NULL, NULL),
(191, 'zHy1V4nQVa', 'RgoM7Qlgu6', 'SSddXg0SejCIXsm4sLqpTB7tzF1dedQdXB0Wm6AtaRouZUQM7m', 'gpQpypqfB7', '38yFil51kJ', NULL, NULL),
(192, 'edQ5HT5WHd', 'KavkHP1Y5u', 'z6Ge3auBCr5bUKZZRrO4Y6AedGsWs87YPE8RqkHhTVeRxwsUNH', 'MGk4exE6I5', 'Ltp1oU5FP1', NULL, NULL),
(193, '4RsLLzATdf', '0gTq4VqvVS', 'pdMxQrqcwalVt4sSOctGrSbMXnFw1ygZIlfE3tdcIWkBFb5eDn', 'CCbmmDfGUm', 'zwLbamu3Cm', NULL, NULL),
(194, 'Rvzbb0fOoj', 'HFWeSyyDsX', 'qFJAVyqkxpxvUzD0AbH28T4b3WQaN7rmBYZ5DTmuhFKVN9xuGL', '8wRminsArd', 'WwnTJMK4DF', NULL, NULL),
(195, 'K3SD4femgs', 'DASljTe2dg', 'EtPuxdDhqJ6mxrNL3Vw1yVay9cXd4CeI5PYnLcHGYB4Xy5uf0o', 'ytR56UMHVe', 'q107EelweF', NULL, NULL),
(196, 'vFd5HZQiPh', 'zu7ZoATZAl', 'ehUIqNIeQlzkhRi45S8MQOkv9tGBo0fN0qZcKABn9Ks2ch0UvR', 'x29wRxXJyB', 'tkmqdyUdHG', NULL, NULL),
(197, 'SYZttdQ7g3', 'VSpgFS0Qo9', 'M7KjkL5whf56Kp9RZpjZcXI7zaflRzAQ00NWHz4t1RGmdMxydh', 'nJlnJ5FKoY', 'ZpubRcP4jz', NULL, NULL),
(198, '7qLaX0AR5z', 'sAPAD7A0jy', 'sZFUBIKfpSJEiK92xiheVpzqdMcNzCMPelgVy3J5yyztO2tOcs', 'whSaiAtagt', 'x5HwqtO5zA', NULL, NULL),
(199, 'ewlWstx60B', 'f7qeaugvzx', 'qyvRkGFLyLXRIlVbFJXiZM6mnQ056TIogdmYmdLgPyUt860SOD', 'HqeQVwBnRz', 'Pi7PfWPztk', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_semester` int(11) NOT NULL,
  `course_year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diaries`
--

CREATE TABLE `diaries` (
  `diary_id` int(10) UNSIGNED NOT NULL,
  `diary_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `diaries_contents`
--

CREATE TABLE `diaries_contents` (
  `diarycontent_id` int(10) UNSIGNED NOT NULL,
  `diarycontent_weekday` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diarycontent_work` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diarycontent_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diarycontent_note` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diarycontent_teacher_comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diarycontent_trainer_comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `week_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups_permissions`
--

CREATE TABLE `groups_permissions` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_18_144553_create_companies_table', 1),
(5, '2021_04_18_144906_create_trainers_table', 1),
(6, '2021_05_17_035842_category_table', 1),
(7, '2021_05_24_005942_create_categories_table', 1),
(8, '2021_06_07_004410_create_category_companies_table', 1),
(9, '2021_06_07_013458_create_types_table', 1),
(10, '2021_06_07_013719_create_groups_table', 1),
(11, '2021_06_07_013819_create_users_permission_table', 1),
(12, '2021_06_07_014113_create_permissions_table', 1),
(13, '2021_06_07_014227_create_groups_permissions_table', 1),
(14, '2021_06_07_014710_create_classes_users_table', 1),
(15, '2021_06_07_014939_create_classes_table', 1),
(16, '2021_06_07_015133_create_courses_table', 1),
(17, '2021_06_07_015624_create_diaries_table', 1),
(18, '2021_06_07_015726_create_weeks_table', 1),
(19, '2021_06_07_020441_create_diaries_contents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `permission_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `trainer_id` int(10) UNSIGNED NOT NULL,
  `trainer_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_leader` tinyint(4) NOT NULL,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trainer_email` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trainer_phone` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`trainer_id`, `trainer_name`, `is_leader`, `company_id`, `user_id`, `trainer_email`, `trainer_phone`, `created_at`, `updated_at`) VALUES
(1, 'Sơn Tùng MTP', 1, 1, 1, 'sontung@gmail.com', '068654684', '2021-07-03 02:16:45', '2021-07-03 02:16:45'),
(2, 'iyZfUmimaS', 1, 1, 1, 'BqbJfRg8NIm475PzFmW2WsctLcA9AGl9ZuA44cwLwCuWOH8LTE', 'W8gzmrK8bB', NULL, NULL),
(3, 'Fspr4IOggW', 0, 1, 1, 'CTBmcDJNxZ52A4nmliJNQ5O0PPhwAKkIPNyZ0Zp1tqMjHlu56S', 'X78OWiLGoR', NULL, NULL),
(4, 'z1bWSb44nH', 0, 2, 2, 'n6MhpBSYhInnfHI72FUInReg9wsblufBzwHK9aMrUcnk5qlRWm', 'jtFEZgY9qd', NULL, NULL),
(5, '9VncQveXgm', 0, 3, 3, 'CRjyxQ1XrBrvHc7eYTqzrTX1e6hQiFy3EMJmLCh3Z5KJnZBlWG', 'zeldGGs9RD', NULL, NULL),
(6, 'e1XzDBGytF', 0, 4, 4, '1NetQta1lfvMo1LmVRgbhTxh4Cm4dIofN8gb2OcE3ykSYEG68l', 'C8fF9I5A59', NULL, NULL),
(7, 'ngV8c8ZPU9', 0, 5, 5, 'XrqA6FezSXMYfxieeocz2oC9bQGEkxO4HBu75o6RWOpiwPevUP', 'LCmYBrpYrd', NULL, NULL),
(8, '0ojivbUgtN', 0, 6, 6, 'Cx9FHEjTxtOdBzHuU5EmsmPWiEn88smF4R6vMOQZFWFWxAEdhM', 'v843DEz1aO', NULL, NULL),
(9, 'x42S6ezVPn', 0, 7, 7, 'jMW4dU0SmmNMKQyGFzASSKEVuAqcz6Mu9M7J9WXZGIkMVxuXQA', 'B8qWoWbYPO', NULL, NULL),
(10, 'bjhOOogqHt', 0, 8, 8, 'OfqW9cpb3FM9MvaJY3wRlNi3UUfEvVVATi0DPETuXiRw8N7AFp', 'CT94qtxzYN', NULL, NULL),
(11, 'WTSwZVN6gj', 0, 9, 9, 'HSeHoYDHU3aNIMcuejbL1xds3fjx1vlLZl7Hu4NgvGVVHmESgI', 'quCP45mXmF', NULL, NULL),
(12, 'oNk7rq0dzm', 0, 10, 10, 'hFPQXtalHF7FLZU6zaDT1jNlsthktfuio6bGyMvQMvn42SvnMx', 'iXYwIKkH8H', NULL, NULL),
(13, '6P8cbshx88', 0, 11, 11, 'SZtaPwYjiraEii0dDrW336Knu8LbrIkIdgJ3MHFCFgC0gMFj2p', 'Eh09ByuaBT', NULL, NULL),
(14, 'OeVYSTWOx0', 0, 12, 12, 'c9neQ1o2ndtVLCwDROsSWf03jfGNB5fcYJrKRw3boGU5AHzWok', 'ddPxCzqnRZ', NULL, NULL),
(15, 'mHFhjwDMTJ', 0, 13, 13, 'zKVLkhSL59GOnwIUcDlmemi1ayQdlqwhgEdRJEcpNTbHERPUnU', 'yBVt7Ph5Nf', NULL, NULL),
(16, 'sURlYWmtU7', 0, 14, 14, 'IorsKX38s1cNmfwqjiT7jNBIBzQEPypu5lAflAg1AeltLhEpOW', '3n8SIrpZWL', NULL, NULL),
(17, 'OdJzcp92Rp', 0, 15, 15, 'BQXHnxEh9r09RD6gq8GLciIbqyRWjMFsSBJQN9xw2DXGnfSqQu', 'r1zn3E8bld', NULL, NULL),
(18, 'FUL1k8kcBb', 0, 16, 16, 'RzLXt9OqRhWC4Ggye9tG6cfntJRaJ2yUbJjF8VzRwI3ZPc4zj4', 'UpQSKGKAf3', NULL, NULL),
(19, 'h7EnXyFarx', 0, 17, 17, 'igHZQkDTW1JJccMkPEbQuQQ9nvuIcB0y9fKW4bPfYQHPwTGbOG', 'zYQNgWE1q0', NULL, NULL),
(20, 'MLH0MmU7Ue', 0, 18, 18, 'hqvxPu1jQ5XYBet9I7dUpIidgv4zqtP1xM86Ztp4RrLOBuiPTZ', '0jATYJmUuW', NULL, NULL),
(21, 'cZhGxmHKiv', 0, 19, 19, 'dFVHcsxTaE2Z7CIDEogLqb27gMnZQRiDUL3ZYRUmBZrK8754Z0', 'VI3ISjW94Q', NULL, NULL),
(22, 'rqEZ2IIyp6', 0, 20, 20, '4pxyE1Z8Ksx0fCoMVlrIWsXY6Mg5wmoqxPrqfOJ2hLdLdTJviV', 'OJDGZeB1Zj', NULL, NULL),
(23, 'BlhTMbv0fZ', 0, 21, 21, '6bJH9oZBqWX8sjuVsxknaSaZTuRQuViREr8fos2NWwAP1vw3Un', 'xj9RyIEcAy', NULL, NULL),
(24, 'NIAmDk6mz8', 0, 22, 22, 'rnhTxdJpN6o899qLxyGse7qCGeqURE9TR15t0LO0maebqhpUtx', 'd5E6FiPx5b', NULL, NULL),
(25, 'Ab9I5cEnwq', 0, 23, 23, 'ZfPCIDCO8eU4Q5KCWXC0qTcQTTegsXt5gvV5uw0cavQvAiXeLH', 'OAQqPLxhO9', NULL, NULL),
(26, 'j4B84RyvNa', 0, 24, 24, 'DuQ4O17Ph1l76OoKvWgOdou5GXZ4Bz3jOLqiqi5WCVcRWFjqk6', 'hycMbMjc9J', NULL, NULL),
(27, 'je6Wg9xOWz', 0, 25, 25, 'SfeTclzjJz8viNJGwxwlqvycZXSt0VQMRlhbrEIyq4LAhiQuU7', 'x1gR4PjTCn', NULL, NULL),
(28, '0uGZQKM8lt', 0, 26, 26, 'rKwmoRewVMbFs1ASAx9rXwKFWW6gFgX3oyHPgWbNNKg9Wiso5F', '097eQlfrmj', NULL, NULL),
(29, 'SGpYNOKeOt', 0, 27, 27, 'jy0IL3NmNtpAdmxdFEjB6d9hi3jPIoopna1IVe4HDMcwjeB9of', 'Eeh0iuuUVT', NULL, NULL),
(30, 'Bcl1qJKgWn', 0, 28, 28, 'GMLDMPT8bmXoNltuO97NeE09AoPu2II2oYobPAXZmSXyBqRrfQ', '67ZlKnX0fi', NULL, NULL),
(31, '2p2aLPGCFI', 0, 29, 29, 'eM4OAjB3FY8QBSnxAnszy310yUTMpwTFRrylB4Tak8RZheLiON', 'guG9Fz5sDA', NULL, NULL),
(32, 'Q3Iu6K6FKa', 0, 30, 30, 'okA5cz01Shq0wpiR5jWaL2o9LDD293CAepnjWokrOV5pTnxoCO', 'z3J2gm4K7P', NULL, NULL),
(33, 'CHlUDxSE7p', 0, 31, 31, 'GbM8SWIKRaToNJFTzi5UcvUXmdABkvYWH5ZyzGCNNmenrHjDbU', 'ilEiNcxLF5', NULL, NULL),
(34, 'JgiSvMT02r', 0, 32, 32, 'VXTzFzunN9SzTwazYcr3yWUdVyy11vnWKPJm13Y4mkM0bMf0pK', '8o8LaMmOVU', NULL, NULL),
(35, 'jBZ3wJ70pu', 0, 33, 33, 'ltDV0NVZRb9cEyRg6FnDaYktom7t9GzEfvu6nUaT9NRVHlfeth', 'vKn3ib1STe', NULL, NULL),
(36, 'MxIgtSVCwb', 0, 34, 34, 'N4Z82Nu6CPmPNkWqeymOpt3KZVjR9AYnTtJotyT0ZKm3WiHABv', 'x3x6oUbU2Z', NULL, NULL),
(37, 'ctfQtmEUIV', 0, 35, 35, 'cALdQIxejuZmn1QtyXrQ2STnQ1WW01Fixd5ph6AEtTfl6Ca0YS', 'fdGMCkIa3Y', NULL, NULL),
(38, 'zjBszirWS1', 0, 36, 36, '0OQEmMRyiZFjhZfm9GBCsPzEpmppWdRytEV2RDfcHt8UyWuhhZ', 'WckLPqva8w', NULL, NULL),
(39, 'BeoCAhpm7M', 0, 37, 37, 'zSpbFXPV3zwR6bZGIb71RknC1LujaDEqxsjrJBxBi5O9xtNv8m', 'moqXQkZbxi', NULL, NULL),
(40, 'bH6L1kn023', 0, 38, 38, 'NmdKlz7ghA6XONR02h1Q2qP1ZssmFhSOxnVBDYHLJXWf0vsz4t', 'SDIVQT2d9A', NULL, NULL),
(41, 'IW5DqR0v00', 0, 39, 39, 'hlG8NZsfaFWcnpO4h5J837p7bzu2YD4oV5OKZb9WyMpnMMhfxu', 'lcvcEH5bX6', NULL, NULL),
(42, '2T39Arpct1', 0, 40, 40, 'cD1BECll25TjAe03q8JkUCxTvK2pWbDpJLLVw77iwvm280PmIB', 'waFDBjG2m8', NULL, NULL),
(43, 'Hu4bkQO7Uj', 0, 41, 41, 'iwRvf5q8iS3lt6WEaelFHwBF7yZX9e0YLaCaMhYQB6U6yXqvz8', 'XmobuX6f8h', NULL, NULL),
(44, 'VYY9YdKAAi', 0, 42, 42, 'jS7Lt4kyb7vqgPxWRrNl0PhxhaMKeYmA0YoiCnXglbPUKIJh2n', 'RWOrDvIBAY', NULL, NULL),
(45, 'CzMMeyJVf4', 0, 43, 43, 'yHQrDm7F5xpFjWVj8SnTZAEuJCxua10okQChJ7afJM4qEQHtY4', 'RNw2gXCToR', NULL, NULL),
(46, '1onkHAmeXV', 0, 44, 44, '3Rcg2hNFxyKelB2GUKlX5L8VLmk61KqG8oUYOTeJtDSSIIA8jc', 'gWA77s3BaP', NULL, NULL),
(47, 'SkrDdjvyx8', 0, 45, 45, 'l2SzmJwpeG3fmTZN8ci0ZJHZKH4VD9Q676E6gQZ1mMQylxgMH3', 'mq79ZAlIpO', NULL, NULL),
(48, 'SJqG360oKQ', 0, 46, 46, 'owcLjz04jWKFlPTztWpzXqxczb0Q3wvkSPnLLa9yKlAFdP4doE', '6GI6n49uu5', NULL, NULL),
(49, 'IzIReu2Hgc', 0, 47, 47, '21W2XsFGlWzvNgNWfqMRWXdHjl2bnmpraW5RKe02OWS13aOhXy', 'jDCpkNB2s0', NULL, NULL),
(50, '0XuCbN0YDx', 0, 48, 48, 'ODwhp0cIxfCEDjyYinwerYR77wiES6IIMTgTO4u8h7cUKYQCH0', 'i6T1fjvScD', NULL, NULL),
(51, 'TCyHsKeBfQ', 0, 49, 49, '84RexYuGGYG50w4gQxXfKk3bDTxWJ6QwTo3Px1mlN8BiWGBjut', 'OYvdzbpFHb', NULL, NULL),
(52, 'TUa3E7UmHN', 0, 50, 50, 'bTK4dNKAEjnbIxObh6D41hrRTTbNlMqOuJ9ZzHvZ48n0NnnACg', 'MROP3PLTKr', NULL, NULL),
(53, 'IdbAgrzTjf', 0, 51, 51, 'lOXLjaqyPfLuNwWmtweEzv1ZQvyVR2UYIsAYlQlul6nG9k61Wd', 'eFq1QHLJwo', NULL, NULL),
(54, '9aGCzRa82U', 0, 52, 52, 'Sim0W5fyF8MY5J4k3NOfhfCW61VjgFqByqgxkdjDAVPXjaw84Q', 'FQvW8yOzD5', NULL, NULL),
(55, 'juAxfM4pwF', 0, 53, 53, 'YFPmRsrZUtGPLtKBknoMLpLPZDswTIRJOXlJ30POOvT8XUcUBP', 'vyd0CZaJjj', NULL, NULL),
(56, 'wmzYCtolpr', 0, 54, 54, 'pkwrqNxKaViCagA3tn1qnnWyN7eDHCjnbvn2QL5VGSUL1YZLPR', 'RCD4Okrk2R', NULL, NULL),
(57, 'wPqbDbQ9kz', 0, 55, 55, '6IYH0e8ENSlusp0S4ZISg07xTqCbWKxPagOecJoyoB5EmoZpI8', '5n6PZ3cM8w', NULL, NULL),
(58, 'vSa2qjUI1Z', 0, 56, 56, 'us7QJD3kEAsKx7aHxNeXGV9EY64OkvMij9NltZidhnis09fBG8', 'Mcl3Zh1KxL', NULL, NULL),
(59, 'hPSQW4ECSZ', 0, 57, 57, 'eabmqWAY9BMmTskZUH0ufUyxZo9J3buabbmkr2OK7cpl4fcwdf', 'Z4kFiK6XFS', NULL, NULL),
(60, 'hqm3BDIuCv', 0, 58, 58, 'usCWy7cRzwrVHAEo5CcoFkP6T2gNxlg6n4jIAQgnjW108QNH6o', 'CYZjeePZr5', NULL, NULL),
(61, 'Dee5mfRYiW', 0, 59, 59, '9PHbxUAEczidE7pDVrYjEfysN7D3KX5Oy28YSZ7x6Ubdu4RTQy', 'c5jQcBUVNR', NULL, NULL),
(62, '0CeZ3Kc3IP', 0, 60, 60, 'Iq4dpw6VQhoyLaCqrixdFGwrvUgH4bJCSLTgPKH6S0WBViyZFe', 'TQu3yAG6Q8', NULL, NULL),
(63, 'JRa9XUegHC', 0, 61, 61, 'veSLyfCFePoxN6UdJJtdBrFQdzFK71sbdxAOhm17CprExXFOVr', 'bKERilIdLw', NULL, NULL),
(64, '10MZWDy28u', 0, 62, 62, 'QI3MzUhmDhznvBKtoXFr7w8ykR0cq489bkEYP4V5THyQxcjjWx', 'vazE3ZHr2j', NULL, NULL),
(65, '5AW00RbJgo', 0, 63, 63, 'tEgV1h07JJDR2I96YJ1LZKuGZnpIGyZ10bc8APGemwyNH4RYo1', 'OuRMTniuZH', NULL, NULL),
(66, 'GV6rTzOOeI', 0, 64, 64, '7JHhqbObHDO87lTFRNiDOXr6u88c7xHoAEcdmoiX35yCGKzoeQ', 'zrMloejTdk', NULL, NULL),
(67, 'gpvNEvkMFc', 0, 65, 65, '8szx9TNA87qcG4HkTKwpCkaFRIFrqj0cizyHEwbIQEybNmiVR6', 'SCZUItMqvs', NULL, NULL),
(68, 'NmAveQaYme', 0, 66, 66, '0b5LYvrqCtYFeUbMN2Bm43dQEoGEKKUphIA0Te1GS3zdK9PEMF', '4PRy6PVlqp', NULL, NULL),
(69, 'CXPhV72q5b', 0, 67, 67, 'rsL6ASX7Tv8dxNUjtkB3HuVHgmard8jzfHQNqoT7JtVrjiDOeN', 'qRt9gHhVgs', NULL, NULL),
(70, 'whdmnop6SY', 0, 68, 68, 'bymmDenhBXqYOq3lBp4ucKlKpotWk43HlYcltzMtszqNYRmQli', 'NswIazxa0Q', NULL, NULL),
(71, 'WQWppJU1ZX', 0, 69, 69, 'eL3LwMWzZzqiOUidrraphJSeNyrnnMnSRPTxYMny5qNGbFeWfT', 'vot8wNROip', NULL, NULL),
(72, 'AXO7X2VWaw', 0, 70, 70, 'ULeL92wVugUNhXXVbCYUaLwoVafLI6WKfAeE8R00I60qU8tOaU', 'pwaTNyDJy7', NULL, NULL),
(73, 'fJgMXsD6Vs', 0, 71, 71, 'zOgMpeUL1ETO5G1sEYMgSyeICjnuu7W8dI6IZZrCa7MMz5EDBl', 'OFLAH1GijQ', NULL, NULL),
(74, 'RMRAA6nJ85', 0, 72, 72, '1va77wz888rQa7Tobbl8eGHuqufuzwHVfLVaVy7lLK5SuQa46Y', 'Rf32Yn5WSq', NULL, NULL),
(75, 'pprB9iXuKG', 0, 73, 73, 'uN6MegyCceqIV5FlyQgnZ33nS40Ye0EA6KjxThrBlTxR1j1NEQ', 'M9Cj9LTh8j', NULL, NULL),
(76, 'x7sdDlF9RE', 0, 74, 74, 'bkpXdjyUhs3gjQfQlgsCRxxgEwd57h6RdnQqcdfoirzH756cfw', 'ouNVNKOvpx', NULL, NULL),
(77, 'sZQfzH4Xa6', 0, 75, 75, 'L7dac25FiaxNbMMzPxQFpDQBiIJ7kNjICB5Ng6n50cwid2jbp4', 'vTraQKVyKX', NULL, NULL),
(78, 'XBBfPG54q4', 0, 76, 76, 'gqxEdQq3rKzdYJDrJM41Wj0ymLzsGrVwMfsJq9cGJYuX9fr2Ul', 'RKrqxEHTPp', NULL, NULL),
(79, '6kqJiOVAMN', 0, 77, 77, 'RXR2oLpRekAS2nzDcBT9FM33csFUlQI8k54tTGJFcz5joNFaH8', 'aOMnG9ARqc', NULL, NULL),
(80, 'yG3dArkWj3', 0, 78, 78, 'VPsxDwZgXCnvPIcQquvVO4mSsMz0H5cE3bnf9xEc4Y1ybf2uME', 'O54wOo1FG1', NULL, NULL),
(81, 'K0daSUqPtl', 0, 79, 79, 'Uai5IsE6TeylHkLfVWREg6OoiQPuByKrYUM5ReWaq0f5AObSZd', '1y5di9fRcD', NULL, NULL),
(82, 'TeeiOVHTUU', 0, 80, 80, 'UWoDQ0iU1CMkAuvMtFphLDwhyau2Z48SvSqvfYV8fQMoHEYhly', 'm00GmfWcTr', NULL, NULL),
(83, 'ZP8wzgVa7V', 0, 81, 81, 'wIVRjgqXpniyV766yJMNTwnEUmS9amDtzkUlL6xYITLOp3NDJh', 'rdKAklPvKO', NULL, NULL),
(84, '3JoUxx2qav', 0, 82, 82, 'KzakNkhudxakKDcQqVBo2iq764ol70zruh43MkJ1LRllju5fbt', 'S6SklUe8eY', NULL, NULL),
(85, 'GzzJvPGhaB', 0, 83, 83, 'Q4WFqZnJML3Bnld3ISSN7edXhkzdovHjwCqS1MX3DQfzuL1VTj', '8G4Mir5e3R', NULL, NULL),
(86, 'n9H1qa2P9c', 0, 84, 84, 'BfSUFCstpDznBzEvnaLUKFYn4QFSdK97opAGatxfyO6wcMwLz8', 'ANiRatcVWx', NULL, NULL),
(87, 'tF2nZiOiPE', 0, 85, 85, 'H05XyLpITXyQWAwzzhUKopqvDoYSOIufCR7d6r5Aagi6rptrwK', 'vUmLYfD8tJ', NULL, NULL),
(88, 'WhRJva6rGi', 0, 86, 86, 'cciod3zaca3VsZ0NHcHoXtzoBFMxHFUjXbrPwUjogAMXzhnqNA', 'GJVyIIYpSI', NULL, NULL),
(89, '5pejbMTzWw', 0, 87, 87, 'nlOu9c84NNalxZ2EtuzAIZyxSrzBpaXbMvjY4ogm9nz6M0g0pt', '3pUcH4SOZY', NULL, NULL),
(90, 'FIVwbWkWCy', 0, 88, 88, 'nFdrS8EZ0F1XBE0AhxWDFOQBRZ3ww4IJOf1M7K7BiZY9VQ2Wkn', 'tRi6OEOHYR', NULL, NULL),
(91, 'VKzV4SMRDH', 0, 89, 89, 'tKGsmdfh7rLiHExa1fgJYbpUZ0XABxGkijiqzMFbkHMDbqQjuC', 'jxi5E3BhTn', NULL, NULL),
(92, '0IQ3cuqPnm', 0, 90, 90, 'gmSSnvprRKuNMnPhkaC4zKgnY3eqbC8Uw3TGVXbIMif7tGjP0w', '53h0RVcnaf', NULL, NULL),
(93, 'RVL3SokKgo', 0, 91, 91, 'Or43cTPOsp402fgkSGHMpU2NN0GkAT1BxEpePNvf2BxRreVUKA', 'mnDSrDyiCt', NULL, NULL),
(94, '40xYtrvJvx', 0, 92, 92, 'kA1FcL3Rfu8ca3dLK2FzYPNEwIdk5XgiGJO81maRpq5p7edUav', 'fFkOa8YtGp', NULL, NULL),
(95, 'mDIo3H9CEH', 0, 93, 93, 'ef7SP5MhVhh2t7JnoAI0PQzBnZ4jR5bCeZKUblzjx4Lccf210F', 'xgR3J4e2Fp', NULL, NULL),
(96, 'PDVKL7281T', 0, 94, 94, 'CMXKltDvuoiWE7IgZJtBWjxQhrklF7jYvR5mBmzKNHSC6x9Dl8', 'qsAxD1fnDi', NULL, NULL),
(97, 'sf6pJlI3pB', 0, 95, 95, 'EqQqRaGaL4gBTYEu8ie5pxR3kpYaPS58grtgxAAnQl0jEyIyCN', '6abKm9BZzO', NULL, NULL),
(98, 'diNHSVdsyS', 0, 96, 96, 'XVegP3NDaPYudq6YOUcHDMUs8e9LO2etbJrwaR6Iikfl0AN7sa', '9sbnO5TeC3', NULL, NULL),
(99, 'ARrsQj8260', 0, 97, 97, 'uJ77VOFdEoxBoGwmZXyn9DWuk48iHPMXVbbPlX2tvx6qekj5PC', 'C5L6LbxdVS', NULL, NULL),
(100, 'mvUZzcZDlk', 0, 98, 98, '5hxvwmNWi8hrFrBlpfuVIrAcBeVWrDudiYPD7Qr28XwKzQDG7j', 'tfCcI7C2B5', NULL, NULL),
(101, '5nkgIHGkSe', 0, 99, 99, 'HUXKlUgQJCnoBtaMj1iuZ7DnhF0C720tqBYkAv1glCy03MUPpJ', 'SU4H5l6I80', NULL, NULL),
(102, 'FK7emj9gNB', 0, 100, 100, '1SjZQpyeCygxuZj1uXDmHAjt57OWsiia50MOmpRdC8HpBMAGTO', 'IyXDBocMHb', NULL, NULL),
(103, 'JzNnwMqMlW', 0, 101, 101, 'mc7h9qhMsC1BmxwIj1rfGefqpgM16JHSBGfPFQHZndKBRQwuuU', 'BsuTNzfTFz', NULL, NULL),
(104, '50VfEldX0E', 0, 102, 102, '8pfq2KNzG0xsAtvtMANxq25spMtBNLrkVpKKK2KG3Rk0U27yAx', 'NXCDUJNNDr', NULL, NULL),
(105, 'xrnBB98zis', 0, 103, 103, 'Qgm9QGY3D8wL9Autys2bYDk6n70Dvx5izBwYDZXPSkWsQx2r4P', 'RCLdGv5gIz', NULL, NULL),
(106, '0FtmhatV3U', 0, 104, 104, 'kgkFvKyaR44kf7bHj6QknSjwHMZ3pPyFpJE281ZzMpxv5kmzB1', 'Stqa5ZHPzz', NULL, NULL),
(107, 'qdlgcRxlgF', 0, 105, 105, 'DRK95efpAo8Jof7QpiGwZoFnKBiyOMhdaEoHV3Bfma5642h6mB', 'lsEoEEmiQP', NULL, NULL),
(108, 'MQUqaZPJX0', 0, 106, 106, '48NkKbweE3ERWFWyeHepKfpS3k4qmSzkpOBTfoWjkJPR3RcBPq', 'bnM9k2pA2y', NULL, NULL),
(109, 'gADfD4y4ls', 0, 107, 107, '05HMbToE26A8spzmOXAbCWjBiAUUXEu6QwEoBqsEEdMCkRxgPA', '6eBPgzXdyI', NULL, NULL),
(110, 'B5le3J8pZQ', 0, 108, 108, 'RUncoLoAWXzI8oLNDyh1Os8BQzyXJlRxAFcwbvDjI8bTurvrDt', '1XfnpGL1st', NULL, NULL),
(111, '0nj4WDlrDu', 0, 109, 109, '3ORHlF69Sd2EJ7Q9oHJFXDJfhvLzXOsdGzWVwQYCa9Gv0sGrFf', '6JJwzNzHOV', NULL, NULL),
(112, 'TBRchYUFyx', 0, 110, 110, 'Ck7FNHGYU3DV6RmapM8ovbIzxcsoiwKGS4m2L2pSZEInLGWjyX', 'FXC7govrC7', NULL, NULL),
(113, 'q2at2d3czy', 0, 111, 111, 'Qsh1lLm7fbf89IdNkDMILAUixiB2KWSqNdwiMMjQ2NzRssGIpi', '3cfpWImxrl', NULL, NULL),
(114, 'keTw9GjQvu', 0, 112, 112, 'S8en1mWvhXn50YOj4w6enNiPRth8tgtGjGZFhE5EKal01zqq60', 'aXqS4Az1vT', NULL, NULL),
(115, 'cnnwIciaW2', 0, 113, 113, 'jfRne3a2Ks3oK1Nhrg3I1tc9zxiIZFpbrXY9fBl8Ubyuikz4zK', 'AdRhXcVpOb', NULL, NULL),
(116, 't2JG3o86Tn', 0, 114, 114, 'R6EnyXRVbmNLGkwTEYiYxUJIB30MDeWo6kuG1zT4dFRZONXf1Y', '67HcDVYFrW', NULL, NULL),
(117, 'BzjZGFTkDu', 0, 115, 115, 'AhU1mP6D1b0RBmFiBVkIeVOvkN5YZEzdAhyPplmqMjSm7JFewJ', 'YQfFCbXT4S', NULL, NULL),
(118, 'm8jMYa5TNt', 0, 116, 116, '7OdJE0rux9D3CuEfvFYONGW4jlpUtFjACtV0FVKNpiT8yCDAbr', 'zst4z4thGN', NULL, NULL),
(119, '2tQehyERCS', 0, 117, 117, 'YIkHVOBXD0mG5k1fPm0RTVaTqlPmPxcbZybDP080n2S4xqEhx0', '1FUJ1l6v8n', NULL, NULL),
(120, 'eFkj0LPx3o', 0, 118, 118, 'F3f6EiSQsFNOJf6wPhNxPKy4rKVN5WAXxUSYJAgPCpika15OtE', 'OtbiGODQ0q', NULL, NULL),
(121, 'XQrdl7aoee', 0, 119, 119, 'u9xJdswFyXzauOzyOy8pHO9UrkEIAKYfxRPXzaJbnGCl8HWQQO', 'GrXJdZ91KI', NULL, NULL),
(122, 'qRIz4lxNM2', 0, 120, 120, 'e9H2ogMlPwRmIcrJWD3FljJj7K4QseVPsxaKSqKDlnQNGAcxiD', '5wV5N7dmHq', NULL, NULL),
(123, 'EqkfzQiqMa', 0, 121, 121, 'dAnct8JhwnGyufu95eUORiWpMBcqH3HhwegElOxJXXdrCtmI8I', 'ivlqqJzC5x', NULL, NULL),
(124, '8mmi9Oyddf', 0, 122, 122, 'OB2wAsKhfYyc6EVhgdJfLqUXWfPGISzFziLbCFCHxb74l1kt6r', 'zPKzJA0mnq', NULL, NULL),
(125, 'sEJhluUsib', 0, 123, 123, '9BQunQAmuJ7Eouq5KDykAIFZbFFiHed9obhvqp9bQMGIYmccvT', '68SJDjgEqb', NULL, NULL),
(126, 'VEGjBeVopJ', 0, 124, 124, 'slmEvCDIn4vaoY0naRT7bex6EyyPgkZEtm2bcZAfJpDPIV2w7M', 'LCkNNhUpTf', NULL, NULL),
(127, 'x3Kon391h2', 0, 125, 125, 'J88EDO6DwoX2G3SdqHWv4kM1ZInTgRqAwc7HcAGrKVVMvPdxWZ', 'TyPPHTRKax', NULL, NULL),
(128, 'UNKMaVnDQf', 0, 126, 126, 'dsab84YoCeB2qOarKBdbvNmWimpOwDvGIp9LmD9FPHXhT4tsZV', '9jegaFSx4q', NULL, NULL),
(129, 'Bnxtx6U94g', 0, 127, 127, 'KlQOWa0MWiwy3tpRcE2WALTXIdQLAZTfIngzl7KaDhmGWTZgXF', 'gEIAreeBo1', NULL, NULL),
(130, 'h6ZCfWGa5A', 0, 128, 128, 'yWqczooSVWnO13YsaBHttRBujURTMDxVlVE5vLFkKuPoewe3kF', 'sWiSf8OSvV', NULL, NULL),
(131, 'nljmAqc78Z', 0, 129, 129, 'Dw4kzyr3hCSv903C9oKE2eiXeGKdmmbOQWvOo6vdKWgbNiEjbZ', 'UpRfWNij2f', NULL, NULL),
(132, 'AAuV1HdzXE', 0, 130, 130, 'XAOneCFHsIFTTPisLZVaZVOjDpnH6i7V3VvzhUqjZSpYAX0PDn', 'VIruVCteJ7', NULL, NULL),
(133, 'iLUYi6FOlD', 0, 131, 131, 'UgjJdUSZJ6THMPjXqCDtusJtvdRJmJSLzUfSj3NKsUHZ1CDO2c', 'msEfBNKrea', NULL, NULL),
(134, 'p7CLsppLrE', 0, 132, 132, 'ifXKhQQT5D7q4w6OkSTP9NH3DK8E43GGSwWvDb48V55DTgxfci', 'W3PMU3L57T', NULL, NULL),
(135, 'J3ZPlPRIsG', 0, 133, 133, 'SwXjIUsy4G9QcBQuTwqdYYRyKN8fAi3itFEpdANOzLnUoJFpic', 'euGX30cmZW', NULL, NULL),
(136, 'DIHS4Pr46c', 0, 134, 134, 'mzEm4dDLgon9TCTC2PlR6szN9g8bxGWFqxfWQbKowjmdWlff7y', 'gGhbGtlpDZ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `email_verified_at`, `password`, `type_id`, `group_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Võ Đăng Vĩnh', '01686228222vinh@gmail.com', NULL, '$2y$10$sQYA903oXk4jhcvqFDmmzurFI93ZbExwCm.B231qYMHr0sgTAjtlu', NULL, NULL, NULL, '2021-07-03 02:08:15', '2021-07-03 02:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `users_permission`
--

CREATE TABLE `users_permission` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weeks`
--

CREATE TABLE `weeks` (
  `week_id` int(10) UNSIGNED NOT NULL,
  `week_weekdays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_check` tinyint(4) NOT NULL,
  `end_at` date NOT NULL,
  `diary_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `diaries`
--
ALTER TABLE `diaries`
  ADD PRIMARY KEY (`diary_id`);

--
-- Indexes for table `diaries_contents`
--
ALTER TABLE `diaries_contents`
  ADD PRIMARY KEY (`diarycontent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`trainer_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- Indexes for table `weeks`
--
ALTER TABLE `weeks`
  ADD PRIMARY KEY (`week_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diaries`
--
ALTER TABLE `diaries`
  MODIFY `diary_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diaries_contents`
--
ALTER TABLE `diaries_contents`
  MODIFY `diarycontent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `trainer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weeks`
--
ALTER TABLE `weeks`
  MODIFY `week_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
