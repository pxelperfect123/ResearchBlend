-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 30, 2022 at 11:56 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rushi2hz_researchbdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `all_profile`
--

CREATE TABLE `all_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `user_profile` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_user_profile` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_logo_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_logo_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_est_since` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_team_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `select_kyc` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 -> Email id,2 -> Phone number,3 -> Facebook,4 -> LinkedIn',
  `Authenticate` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 -> Credit Card, 2 -> Government ID',
  `kycvalue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authenticatefile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_multiple_select_box` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_allow_in_search_listing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_about_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `J_find_on_map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_phone_code` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_current_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_expected_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_languages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_allow_in_search_listing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1st_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2nd_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `want_to_browse_website_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browse_project_in_followinf_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_Qualitative` int(11) DEFAULT '0',
  `j_Quantitative` int(11) DEFAULT '0',
  `j_Moderating` int(11) DEFAULT '0',
  `j_Survey_Design` int(11) DEFAULT '0',
  `j_Tabulation` int(11) DEFAULT '0',
  `j_Statistics` int(11) DEFAULT '0',
  `kyc` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Visibility_Setting` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 => All, 2 => none, 3 => some',
  `Account_Balance` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_profile`
--

INSERT INTO `all_profile` (`id`, `user_id`, `user_profile`, `b_user_profile`, `r_logo_1`, `r_logo_2`, `r_company_name`, `r_email`, `r_phone`, `r_website`, `r_est_since`, `r_team_size`, `select_kyc`, `Authenticate`, `kycvalue`, `authenticatefile`, `r_multiple_select_box`, `r_allow_in_search_listing`, `r_about_company`, `j_country`, `j_city`, `J_find_on_map`, `j_latitude`, `j_longitude`, `j_facebook`, `j_twitter`, `j_linkedin`, `j_youtube`, `j_logo`, `j_full_name`, `j_job_title`, `j_phone`, `j_phone_code`, `j_email`, `j_website`, `j_current_salary`, `j_expected_salary`, `j_experience`, `j_education`, `j_languages`, `j_allow_in_search_listing`, `j_description`, `first_name`, `last_name`, `address_1st_line`, `address_2nd_line`, `city`, `post_code`, `state`, `country`, `company_name`, `location`, `want_to_browse_website_in`, `browse_project_in_followinf_language`, `j_Qualitative`, `j_Quantitative`, `j_Moderating`, `j_Survey_Design`, `j_Tabulation`, `j_Statistics`, `kyc`, `Visibility_Setting`, `Account_Balance`, `created_at`, `updated_at`) VALUES
(131, 142, '1641806197.jfif', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Krishna', 'shah', 'Street:  46 Hudson St,  City:  Duinish,', 'Zip code: PH18 8ER, United Kingdom', 'baroda', '390025', 'Gujarat', '103', 'pxcel', 'Duinish', 'English', 'Hindi', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-11-03 11:23:17', '2022-01-31 01:39:13'),
(139, 149, '1639022741.jfif', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dimpal', 'patel', 'vadodara', 'gotri', 'baroda', '390011', 'gujarat', '1', 'pxelperfect', 'vadodara', 'English', 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2021-12-09 04:05:41', '2021-12-09 04:05:41'),
(145, 143, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, '103', 'Mumbai', 'india', '32556563.5632', '52563066', 'www.facebook.com', 'www.twitter.com', 'www.linkdin.com', 'www.youtube.com', '1643613934.jfif', 'Charmi patel', 'programmer', '7046848454', '91', 'abcd@gmail.com', 'www.com', '$75,000 - $99,000', '$100,000 - $124,000', '5', 'Some college', 'English, Hindi', 'Yes', 'Research Blend is a new global portal connecting the research community to one another. Whether you are looking for a research vendor, searching for additional business, looking to hire or get hired or needing a workspace to keep projects on track, we can', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 1, '21565548kji', '1', '22222', '2022-01-18 04:40:55', '2022-02-07 05:36:35'),
(146, 167, '1643084179.jpg', '', '1643084239.jfif', NULL, '7star pizza', 'abc@gmail.com', '01234566789', 'www.com', '06.05.2015', '10-50', NULL, NULL, '', '', NULL, 'NO', 'Research Blend is a new global portal connecting the research community to one another. Whether you are looking for a research vendor, searching for additional business, looking to hire or get hired or needing a workspace to keep projects on track, we can', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'krishna', 'p', '2695 Catherine Drive', '2695 Catherine Drive', 'Bismarck', '58501', 'North Dakota', '1', '7star', 'australia', 'English', 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-01-25 04:16:19', '2022-01-24 22:47:19'),
(147, 144, '1643951769.jfif', '', '1643967733.jfif', NULL, 'Pxelperfect', 'pxelperfect@gmail.com', '1234567895', 'www.pxelperfect.com', '06.05.2015', '10-50', NULL, NULL, '', '', NULL, 'NO', 'Research Blend is a new global portal connecting the research community to one another. Whether you are looking for a research vendor, searching for additional business, looking to hire or get hired or needing a workspace to keep projects on track, we can', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'krunal', 'shah', 'vadodara', 'gotri', 'baroda', '390011', 'Gujarat', '103', 'pxelperfect', 'vadodara', 'English', 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-02-04 04:39:46', '2022-02-04 04:12:13'),
(153, 141, '1658989366.png', '1645082147.jfif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '2', '9999999999', '1659441026.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'baroda', NULL, NULL, '103', 'pxelperfect', NULL, 'test', 'English', 0, 0, 0, 0, 0, 0, NULL, '1', NULL, '2022-02-17 07:15:47', '2022-08-23 04:24:06'),
(154, 205, '', '1654171653.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BuyerUser1', '.', 'Gotri road', 'vadodara', 'vadodara', '390058', 'Gujarat', '103', 'abc inc ltd', 'vadodara', NULL, 'English', 0, 0, 0, 0, 0, 0, NULL, '1', NULL, '2022-06-02 12:07:33', '2022-06-02 12:07:33'),
(155, 206, '', '1654172142.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Buyeruser1', 'user', 'Gotri road', 'vadodara', 'vadodara', '395842', 'Gujarat', '103', 'abc inc ltd', 'Gujarat', NULL, 'English', 0, 0, 0, 0, 0, 0, NULL, 'All', NULL, '2022-06-02 12:15:42', '2022-06-02 12:54:12'),
(156, 212, '', '1654174901.jpg', NULL, NULL, NULL, 'buyeruser80@gmail.com', NULL, NULL, NULL, NULL, '2', '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'verndor', 'verndor', 'Gotri road', 'vadodara', 'vadodara', '390058', 'Gujarat', '103', 'abc inc ltd', 'vadodara', NULL, 'English', 0, 0, 0, 0, 0, 0, NULL, '1', NULL, '2022-06-02 13:01:41', '2022-06-02 13:01:41'),
(157, 213, '1654242920.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'test', 'asdasd', 'asds', 'asdsad', '390009', 'asd', '103', 'asdasd', 'asd', 'Hindi', 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-06-03 07:55:20', '2022-06-03 07:59:49'),
(158, 217, '1654255862.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vendor1', 'user', 'A, building division', 'vadodara', 'vadodara', '395648', 'Gujarat', '103', 'abc inc ltd', 'Gujarat', 'English', 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-06-03 11:31:02', '2022-06-03 11:31:02'),
(159, 227, '1655198249.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tarun', 'Patel', '2-Avenue', 'LA', 'LA', '8899900', 'LA', '239', 'XYZ Co.in', 'USA', 'English', 'Hindi', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-06-14 09:17:29', '2022-06-14 09:17:29'),
(160, 226, '1655199362.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tarun', 'Patel', '2-Avenue', 'LA', 'LA', '48445', 'LA', '239', 'XYZ Co.in', 'USA', 'English', 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-06-14 09:36:02', '2022-06-14 10:03:04'),
(161, 231, '', '1656332834.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sad', 'sadas', 'gk', 'hhkj', 'kgg', '395640', 'h', '84', 'fg', 'Rajkot', 'acd.com', 'Hindi', 0, 0, 0, 0, 0, 0, NULL, '1', NULL, '2022-06-27 12:27:14', '2022-06-27 12:27:14'),
(162, 238, '1656678234.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sad', 'sada', NULL, NULL, NULL, NULL, NULL, '103', NULL, NULL, 'Hindi', 'Hindi', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-06-30 06:10:28', '2022-07-15 09:11:42'),
(163, 236, '1656665158.png', '1656656134.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '2', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'h', '103', 'test', 'Rajkot', NULL, 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-07-01 05:24:43', '2022-07-18 10:31:29'),
(164, 233, '1656674815.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a', 'b', 'sa', 'sd', 'surat', '365620', 'GJ', '8', NULL, 'Rajkot', 'Hindi', 'Hindi', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-07-01 10:24:24', '2022-07-06 10:22:32'),
(165, 245, '', '1658999203.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hardik', 'Buyer', 'addresss1 line', 'address2 line', 'vadodara', '390009', 'gujrat', '103', 'Pxelperfect', 'Vadodara', 'test.com', 'English', 0, 0, 0, 0, 0, 0, NULL, 'All', NULL, '2022-07-28 07:21:23', '2022-07-28 09:06:43'),
(166, 246, '', '1658999724.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '1', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdsad', 'asdsad', 'asdas', 'asdasd', 'werewr', '345345345', 'asdasd', '103', 'my data', 'my location', 'asdasd.com', 'Hindi', 0, 0, 0, 0, 0, 0, NULL, 'All', NULL, '2022-07-28 09:14:44', '2022-07-28 09:15:24'),
(170, 247, '', '1659004551.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 'dfgdfgdfgdfg', '1659004551.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', 'sdfsdf', 'sdfsdf', 'dfgdfgdfg', 'erterte', '56756756765', 'sdfsdfs', '103', 'asdasd', 'asdaszxc', NULL, 'Hindi', 0, 0, 0, 0, 0, 0, NULL, '1', NULL, '2022-07-28 10:35:51', '2022-07-28 10:35:51'),
(171, 248, '', '1659014421.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gdfgdfg', 'ssdfsdf', 'sdfsdfd', NULL, 'sdfsdf', '456546546', 'sdfdsf', '103', 'sdfsdfsd', 'sdfsdfdf', NULL, 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-07-28 13:20:21', '2022-07-28 13:20:21'),
(172, 250, '', '1659518895.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', 'developer@gmail.cm', '1659518895.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Developer', 'Buyer', 'testiing', 'testing address2', 'mycity', '390009', 'testig', '103', 'Pxlprefect', 'Location details', 'www.tst.com', 'English', 0, 0, 0, 0, 0, 0, NULL, '1', NULL, '2022-08-03 09:28:15', '2022-08-03 09:40:51'),
(173, 252, '', '1660775993.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'John', 'Smith', '123 Main Street', NULL, 'Buffalo', '14221', 'New York', '239', 'Testing1', 'Charlotte', NULL, 'English', 0, 0, 0, 0, 0, 0, NULL, '1', NULL, '2022-08-08 13:54:34', '2022-08-17 22:39:53'),
(174, 253, '1659967715.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Joe', 'Jones', '123 Main Street', '1', 'Buffalo', '14221', 'New York', '239', 'Testing', 'Charlotte', 'English', 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-08-08 14:08:18', '2022-08-08 14:08:35'),
(175, 254, '', '1659982759.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, '1234567890', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Jane', 'Doe', '123 Main Street', NULL, 'Buffalo', '14221', 'New York', '239', '123', '123', 'English', 'English', 0, 0, 0, 0, 0, 0, NULL, '1', NULL, '2022-08-08 18:19:19', '2022-08-08 18:21:02'),
(176, 211, '1660621244.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vendor', 'user45', 'Addressline 1', 'Address line 2', 'vadodara', '390009', 'gujrat', '103', 'Pxlprefect', 'baroda gotri', 'English', 'English', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2022-08-16 03:40:44', '2022-08-16 03:40:44'),
(177, 232, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '103', 'vaddrda', 'gujrt', '22.310696', '73.192635', 'google.co', 'facebook.com', 'twitter.com', 'linkedin.com', '1660649108.png', 'Jobseeker', 'Jobseeker Title', '9904841361', NULL, 'hardikgirim@gmail.com', 'google.ocm', '$75,000 - $99,000', '$100,000 - $124,000', '10', 'Masters Degree / MBA', 'English, Hindi', 'Yes', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 'kyc', '1', '45000', '2022-08-16 11:25:08', '2022-08-16 11:25:08'),
(178, 256, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '239', 'Buffalo', 'Map', '12', '12', 'Facebook', 'Twitter', 'Linkedin', 'Youtube', '1660778928.png', 'Jobseeker', 'Jobseeker', '5555555555', NULL, 'jobseeker@382mp.com', 'www.website.com', 'Under $50,000', 'Under $50,000', '1', 'Doctorate / PhD', 'English, Hindi', 'Yes', 'Description', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'kyc', '1', '100', '2022-08-17 23:28:48', '2022-08-17 23:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `all_user_support`
--

CREATE TABLE `all_user_support` (
  `id` int(11) NOT NULL,
  `selpgsection` varchar(250) NOT NULL,
  `txtlbl` varchar(250) NOT NULL,
  `txtvalue` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_user_support`
--

INSERT INTO `all_user_support` (`id`, `selpgsection`, `txtlbl`, `txtvalue`, `created_at`, `updated_at`) VALUES
(1, '1', 'Sed a magna semper, porta purus eu, ullamcorper ligula. Nam sit amet consectetur sapien. Etiam dui ipsum, viverra vel turpis ut, dignissim', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.', '2022-01-31 04:57:42', '2022-01-31 04:57:42'),
(2, '1', 'Aenean non accumsan ante. Duis et risus accumsan sem tempus porta nec sit amet est. Sed ut euismod quam. Suspendisse potenti. Aliquam', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.', '2022-01-31 05:12:06', '2022-01-31 05:12:06'),
(3, '2', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.', 'Sed a magna semper, porta purus eu, ullamcorper ligula. Nam sit amet consectetur sapien. Etiam dui ipsum, viverra vel turpis ut, dignissim', '2022-01-31 05:12:25', '2022-01-31 05:12:25'),
(4, '3', 'Sed a magna semper, porta purus eu, ullamcorper ligula. Nam sit amet consectetur sapien. Etiam dui ipsum, viverra vel turpis ut, dignissim', 'In at iaculis lorem. Praesent tempor dictum tellus ut molestie. Sed sed ullamcorper lorem, id faucibus odio. Duis eu nisl ut ligula cursus', '2022-01-31 05:12:44', '2022-01-31 05:12:44'),
(5, '4', 'In at iaculis lorem. Praesent tempor dictum tellus ut molestie. Sed sed ullamcorper lorem, id faucibus odio. Duis eu nisl ut ligula cursus', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.', '2022-01-31 05:13:05', '2022-01-31 05:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(255) DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe_your_proposal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suggest_milestone_payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_awd_sts` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notawarded',
  `dispute_sts` tinyint(4) NOT NULL DEFAULT '0' COMMENT '(BUYER)0 for not-dispute 1 for dispute ',
  `v_dispute_sts` tinyint(4) NOT NULL DEFAULT '0',
  `project_completed_status` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for default 1 for pending 2 for done 3 for cancel\r\n',
  `milestone_payment_release` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for default, 1 for complete , 2 for payment release',
  `pro_review` text COLLATE utf8mb4_unicode_ci,
  `pro_rate` text COLLATE utf8mb4_unicode_ci,
  `alert_not_value_buyer` int(11) NOT NULL DEFAULT '1',
  `notification_alert_buyer` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `alert_not_value_vendr` int(11) NOT NULL DEFAULT '1',
  `notification_alert_vendr` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `notification_alert_admin` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `project_id`, `user_id`, `minimum_rate`, `delivered_time`, `describe_your_proposal`, `suggest_milestone_payment`, `amount`, `project_awd_sts`, `dispute_sts`, `v_dispute_sts`, `project_completed_status`, `milestone_payment_release`, `pro_review`, `pro_rate`, `alert_not_value_buyer`, `notification_alert_buyer`, `alert_not_value_vendr`, `notification_alert_vendr`, `notification_alert_admin`, `created_at`, `updated_at`) VALUES
(1, 1, '238', '500', '23', 'asdsadad', 'm1', '200', 'Awarded', 0, 0, '3', '0', 'awesome Services', '2.5', 1, 2, 1, 1, 0, '2022-08-16 10:28:42', '2022-08-18 11:52:24'),
(2, 1, '238', '500', '23', 'asdsadad', 'm2', '150', 'Awarded', 0, 0, '3', '0', NULL, NULL, 1, 2, 1, 1, 0, '2022-08-16 10:28:42', '2022-08-16 10:28:42'),
(3, 1, '238', '500', '23', 'asdsadad', 'm3', '150', 'Awarded', 0, 0, '3', '0', NULL, NULL, 1, 2, 1, 0, 0, '2022-08-16 10:28:42', '2022-08-16 10:28:42'),
(4, 2, '142', '499', '4', 'jhhjasjfjjajjhgfbbbn hjhajfhjdf', 'M1', '200', 'Awarded', 0, 0, '0', '3', NULL, NULL, 1, 2, 1, 0, 0, '2022-08-18 09:46:47', '2022-08-18 09:46:47'),
(5, 2, '142', '499', '4', 'jhhjasjfjjajjhgfbbbn hjhajfhjdf', 'M2', '299', 'Awarded', 0, 0, '0', '3', NULL, NULL, 1, 2, 1, 0, 0, '2022-08-18 09:46:47', '2022-08-18 09:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `bids_pre`
--

CREATE TABLE `bids_pre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(255) DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe_your_proposal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suggest_milestone_payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_awd_sts` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notawarded',
  `dispute_sts` tinyint(4) NOT NULL DEFAULT '0' COMMENT '(BUYER)0 for not-dispute 1 for dispute ',
  `v_dispute_sts` tinyint(4) NOT NULL DEFAULT '0',
  `project_completed_status` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for default 1 for pending 2 for done 3 for cancel\r\n',
  `milestone_payment_release` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for default, 1 for complete , 2 for payment release',
  `pro_review` text COLLATE utf8mb4_unicode_ci,
  `pro_rate` text COLLATE utf8mb4_unicode_ci,
  `alert_not_value_buyer` int(11) NOT NULL DEFAULT '1',
  `notification_alert_buyer` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `alert_not_value_vendr` int(11) NOT NULL DEFAULT '1',
  `notification_alert_vendr` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `notification_alert_admin` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids_pre`
--

INSERT INTO `bids_pre` (`id`, `project_id`, `user_id`, `minimum_rate`, `delivered_time`, `describe_your_proposal`, `suggest_milestone_payment`, `amount`, `project_awd_sts`, `dispute_sts`, `v_dispute_sts`, `project_completed_status`, `milestone_payment_release`, `pro_review`, `pro_rate`, `alert_not_value_buyer`, `notification_alert_buyer`, `alert_not_value_vendr`, `notification_alert_vendr`, `notification_alert_admin`, `created_at`, `updated_at`) VALUES
(112, 54, '211', '250', '10', 'First Development in first milestone phase1', 'First Development in first milestone phase1', '250', 'notawarded', 0, 0, '0', '0', NULL, NULL, 1, 0, 1, 0, 0, '2022-06-03 08:42:20', '2022-06-03 08:42:20'),
(113, 55, '211', '250', '15', 'Second Milestone2', 'Second Milestone2', '250', 'notawarded', 0, 0, '0', '0', NULL, NULL, 1, 2, 1, 0, 0, '2022-06-03 08:53:20', '2022-06-03 08:53:20'),
(114, 55, '214', '400', '12', 'Miltestone 1 for vendoruser46', 'Miltestone 1 for vendoruser46', '400', 'notawarded', 0, 0, '0', '0', NULL, NULL, 1, 2, 1, 0, 0, '2022-06-03 09:11:48', '2022-06-03 09:11:48'),
(115, 55, '215', '300', '20', 'Milestone1 for vendor user 47', 'Milestone1 for vendor user 47', '300', 'notawarded', 0, 0, '0', '0', NULL, NULL, 1, 2, 1, 0, 0, '2022-06-03 09:12:55', '2022-06-03 09:12:55'),
(116, 54, '2360', '10000', '3', 'jhhjgsf', 'hgsdfg', '10000', 'notawarded', 0, 0, '0', '0', NULL, NULL, 1, 0, 1, 0, 0, '2022-07-01 08:39:24', '2022-07-01 08:39:24'),
(117, 55, '2360', '25000', '6', 'sad', 'sad', '25000', 'notawarded', 0, 0, '0', '0', NULL, NULL, 1, 1, 1, 0, 0, '2022-07-01 08:50:35', '2022-07-01 08:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catagory_id` varchar(123) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `main_image`, `description_1`, `description_2`, `image_1`, `image_2`, `image_3`, `image_4`, `catagory_id`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 'research jobs', '1635847436.jfif', 'The importance of blog descriptions may not seem important to you now. ... Blog or post description is the piece of text that appears below your link in SERPs and social sites. There are two types of descriptions for a blog. Blog description: A descriptio', 'The importance of blog descriptions may not seem important to you now. ... Blog or post description is the piece of text that appears below your link in SERPs and social sites. There are two types of descriptions for a blog. Blog description: A descriptio', '1635847436.jfif', '1635847436.jfif', '1635847436.jfif', '1635847436.jfif', '1', '140', '2021-11-02 10:03:56', '2021-11-02 10:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_details`
--

CREATE TABLE `bookmark_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `bookmarked` varchar(250) NOT NULL DEFAULT '0' COMMENT '0 for not bookmarked 1 for bookmarked',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmark_details`
--

INSERT INTO `bookmark_details` (`id`, `user_id`, `title`, `bookmarked`, `created_at`, `updated_at`) VALUES
(29, 143, '39', '1', '2021-12-31 13:15:01', '2021-12-31 13:15:01'),
(32, 232, '43', '1', '2022-06-30 05:09:20', '2022-06-30 05:09:20'),
(34, 232, '41', '1', '2022-07-01 09:21:00', '2022-07-01 09:21:00'),
(37, 232, '232', '0', '2022-08-16 11:41:17', '2022-08-16 11:41:17'),
(41, 144, '232', '0', '2022-08-17 23:06:17', '2022-08-17 23:06:17'),
(46, 143, '5', '1', '2022-08-23 06:31:47', '2022-08-23 06:31:47'),
(47, 143, '1', '1', '2022-08-23 07:15:12', '2022-08-23 07:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_histories`
--

CREATE TABLE `chat_histories` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat_histories`
--

INSERT INTO `chat_histories` (`id`, `sender`, `receiver`, `message`, `status`, `created_at`, `updated_at`) VALUES
(4, 141, 238, '12312312323', 0, '2022-08-16 09:27:18', '2022-08-16 09:27:18'),
(5, 141, 238, 'tessssss...', 0, '2022-08-16 10:17:50', '2022-08-16 10:17:50'),
(6, 233, 232, 'testfgdfgdfgdfgf', 0, '2022-08-16 11:39:12', '2022-08-16 11:39:12'),
(7, 232, 233, 'asdsadsdsadasdsd', 0, '2022-08-16 11:39:56', '2022-08-16 11:39:56'),
(8, 141, 215, 'test....', 0, '2022-08-17 05:49:44', '2022-08-17 05:49:44'),
(9, 141, 214, 'testsdfsdfsd', 0, '2022-08-17 05:49:58', '2022-08-17 05:49:58'),
(10, 141, 214, 'asdasdasd', 0, '2022-08-17 05:50:09', '2022-08-17 05:50:09'),
(11, 252, 142, 'testing', 0, '2022-08-17 13:32:46', '2022-08-17 13:32:46'),
(12, 252, 142, 'testing', 0, '2022-08-17 13:32:58', '2022-08-17 13:32:58'),
(13, 252, 142, 'testing', 0, '2022-08-17 13:33:14', '2022-08-17 13:33:14'),
(14, 252, 142, 'test 8-17 6:18PM', 0, '2022-08-17 22:19:07', '2022-08-17 22:19:07'),
(15, 252, 253, 'testing 8-17 6:19pm', 0, '2022-08-17 22:19:57', '2022-08-17 22:19:57'),
(16, 253, 252, 'testing block', 0, '2022-08-17 22:21:59', '2022-08-17 22:21:59'),
(17, 141, 211, 'test987', 0, '2022-08-18 05:33:33', '2022-08-18 05:33:33'),
(18, 141, 211, 'gfsgsfdgdfgfdg', 0, '2022-08-18 05:52:06', '2022-08-18 05:52:06'),
(19, 141, 211, 'jhhjdsajfghj', 0, '2022-08-18 05:55:29', '2022-08-18 05:55:29'),
(20, 141, 211, 'hdghdsfhgdhfgfhfghfghgh', 0, '2022-08-18 06:05:36', '2022-08-18 06:05:36'),
(21, 141, 211, '123', 0, '2022-08-18 06:21:00', '2022-08-18 06:21:00'),
(22, 211, 141, 'jjhjj', 0, '2022-08-18 06:23:07', '2022-08-18 06:23:07'),
(23, 141, 211, 'xuy', 0, '2022-08-18 06:52:02', '2022-08-18 06:52:02'),
(24, 233, 168, 'dsds', 0, '2022-08-18 08:53:18', '2022-08-18 08:53:18'),
(25, 233, 168, 'zX', 0, '2022-08-18 08:53:23', '2022-08-18 08:53:23'),
(26, 141, 149, 'hi', 0, '2022-08-18 09:17:03', '2022-08-18 09:17:03'),
(27, 141, 149, 'hello', 0, '2022-08-18 09:17:47', '2022-08-18 09:17:47'),
(28, 141, 149, 'hi', 0, '2022-08-18 09:18:03', '2022-08-18 09:18:03'),
(29, 141, 149, 'ok ok', 0, '2022-08-18 09:19:12', '2022-08-18 09:19:12'),
(30, 141, 211, 'fgfhfg', 0, '2022-08-18 11:54:06', '2022-08-18 11:54:06'),
(31, 236, 211, 'hiii...', 0, '2022-08-22 07:05:33', '2022-08-22 07:05:33'),
(32, 141, 211, 'test...', 0, '2022-08-22 07:08:33', '2022-08-22 07:08:33'),
(33, 142, 154, 'omkmkllklk', 0, '2022-08-22 11:40:07', '2022-08-22 11:40:07'),
(34, 142, 246, 'hi', 0, '2022-08-23 05:07:56', '2022-08-23 05:07:56'),
(35, 141, 234, 'hi', 0, '2022-08-23 05:09:38', '2022-08-23 05:09:38'),
(36, 142, 141, 'hello', 0, '2022-08-23 05:10:05', '2022-08-23 05:10:05'),
(37, 141, 234, 'kk5', 0, '2022-08-23 05:10:54', '2022-08-23 05:10:54'),
(38, 142, 141, 'ki', 0, '2022-08-23 05:11:40', '2022-08-23 05:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_user`
--

CREATE TABLE `contact_form_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `mobile_no` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `user_msges` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_form_user`
--

INSERT INTO `contact_form_user` (`id`, `user_name`, `user_email`, `mobile_no`, `subject`, `user_msges`, `created_at`, `updated_at`) VALUES
(3, 'Krishna Patel', 'patelkrishna80240@gmail.com', '1234567892', 'Enquiry for freelancing', 'Research Blend is the portal which connects businesses with freelancers, independent talent, and agencies around the globe.Where companies and freelancers work together in new ways,Every day, we connect millions of people to new opportunities.', '2021-12-10 05:21:02', '2021-12-10 05:21:02'),
(4, 'Devyani Patel', 'disma81412@gmail.com', '1234567892', 'Enquiry for job', 'Research Blend is the portal which connects businesses with freelancers, independent talent, and agencies around the globe.Where companies and freelancers work together in new ways,Every day, we connect millions of people to new opportunities.', '2021-12-10 05:35:25', '2021-12-10 05:35:25'),
(5, 'Krishna Patel', 'patelkrishna80240@gmail.com', '12365286', 'send your caontact number', 'Research Blend is the portal which connects businesses with freelancers, independent talent, and agencies around the globe.Where companies and freelancers work together in new ways,Every day, we connect millions of people to new opportunities.', '2021-12-10 05:38:18', '2021-12-10 05:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `user_id`, `name`, `email`, `msg`, `created_at`, `updated_at`) VALUES
(32, 144, 'devyani patel', 'devyani@pxelperfect.com', 'testing mail', '2021-11-10 12:30:00', '2021-11-10 12:30:00'),
(33, 144, 'devyani patel', 'devyani@pxelperfect.com', 'testiung mail', '2021-11-10 12:31:55', '2021-11-10 12:31:55'),
(34, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'profile not working', '2021-12-03 06:47:09', '2021-12-03 06:47:09'),
(35, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 06:59:07', '2021-12-03 06:59:07'),
(36, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 06:59:40', '2021-12-03 06:59:40'),
(37, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:02:28', '2021-12-03 07:02:28'),
(38, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:21:42', '2021-12-03 07:21:42'),
(39, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:21:47', '2021-12-03 07:21:47'),
(40, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:22:50', '2021-12-03 07:22:50'),
(41, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:25:15', '2021-12-03 07:25:15'),
(42, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:25:51', '2021-12-03 07:25:51'),
(43, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:25:57', '2021-12-03 07:25:57'),
(44, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:28:05', '2021-12-03 07:28:05'),
(45, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:28:10', '2021-12-03 07:28:10'),
(46, 144, 'devyani patel', 'patelkrishna80240@gmail.com', 'please send your updated CV.', '2021-12-03 07:28:25', '2021-12-03 07:28:25'),
(47, 144, 'Dimpal patel', 'patelkrishna80240@gmail.com', 'Research Blend is the portal which connects', '2021-12-10 05:30:50', '2021-12-10 05:30:50'),
(48, 233, 'a', 'a@gmail.com', '5', '2022-06-30 05:40:32', '2022-06-30 05:40:32'),
(49, 233, 'a', 'recruiter_h@gmail.com', 'zdsdsa', '2022-07-01 11:13:35', '2022-07-01 11:13:35'),
(50, 233, 'test', 'test@sda.fg', 'asdasd', '2022-07-07 05:28:23', '2022-07-07 05:28:23'),
(51, 232, 'hsrdik', 'qardik@gmai.lcom', 'test', '2022-07-12 11:03:13', '2022-07-12 11:03:13'),
(52, 233, 'afadf', 'afdf@h.com', 'sdfsdsdgfd', '2022-07-18 06:34:12', '2022-07-18 06:34:12'),
(53, 233, 'test', 'trsr@gmail.com', 'asdasd', '2022-07-18 13:38:47', '2022-07-18 13:38:47'),
(54, 233, 'test', 'trsr@gmail.com', 'asdasd', '2022-07-18 13:38:54', '2022-07-18 13:38:54'),
(55, 233, 'test', 'trsr@gmail.com', 'asdasd', '2022-07-18 13:41:53', '2022-07-18 13:41:53'),
(56, 233, 'hardiktest', 'hardik@gmail.cm', 'My messages', '2022-07-18 13:49:50', '2022-07-18 13:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `phone` int(5) NOT NULL,
  `code` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `capital` varchar(80) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `continent` varchar(30) DEFAULT NULL,
  `continent_code` varchar(2) DEFAULT NULL,
  `alpha_3` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `phone`, `code`, `name`, `symbol`, `capital`, `currency`, `continent`, `continent_code`, `alpha_3`) VALUES
(1, 93, 'AF', 'Afghanistan', '؋', 'Kabul', 'AFN', 'Asia', 'AS', 'AFG'),
(2, 358, 'AX', 'Aland Islands', '€', 'Mariehamn', 'EUR', 'Europe', 'EU', 'ALA'),
(3, 355, 'AL', 'Albania', 'Lek', 'Tirana', 'ALL', 'Europe', 'EU', 'ALB'),
(4, 213, 'DZ', 'Algeria', 'دج', 'Algiers', 'DZD', 'Africa', 'AF', 'DZA'),
(5, 1684, 'AS', 'American Samoa', '$', 'Pago Pago', 'USD', 'Oceania', 'OC', 'ASM'),
(6, 376, 'AD', 'Andorra', '€', 'Andorra la Vella', 'EUR', 'Europe', 'EU', 'AND'),
(7, 244, 'AO', 'Angola', 'Kz', 'Luanda', 'AOA', 'Africa', 'AF', 'AGO'),
(8, 1264, 'AI', 'Anguilla', '$', 'The Valley', 'XCD', 'North America', 'NA', 'AIA'),
(9, 672, 'AQ', 'Antarctica', '$', 'Antarctica', 'AAD', 'Antarctica', 'AN', 'ATA'),
(10, 1268, 'AG', 'Antigua and Barbuda', '$', 'St. John\'s', 'XCD', 'North America', 'NA', 'ATG'),
(11, 54, 'AR', 'Argentina', '$', 'Buenos Aires', 'ARS', 'South America', 'SA', 'ARG'),
(12, 374, 'AM', 'Armenia', '֏', 'Yerevan', 'AMD', 'Asia', 'AS', 'ARM'),
(13, 297, 'AW', 'Aruba', 'ƒ', 'Oranjestad', 'AWG', 'North America', 'NA', 'ABW'),
(14, 61, 'AU', 'Australia', '$', 'Canberra', 'AUD', 'Oceania', 'OC', 'AUS'),
(15, 43, 'AT', 'Austria', '€', 'Vienna', 'EUR', 'Europe', 'EU', 'AUT'),
(16, 994, 'AZ', 'Azerbaijan', 'm', 'Baku', 'AZN', 'Asia', 'AS', 'AZE'),
(17, 1242, 'BS', 'Bahamas', 'B$', 'Nassau', 'BSD', 'North America', 'NA', 'BHS'),
(18, 973, 'BH', 'Bahrain', '.د.ب', 'Manama', 'BHD', 'Asia', 'AS', 'BHR'),
(19, 880, 'BD', 'Bangladesh', '৳', 'Dhaka', 'BDT', 'Asia', 'AS', 'BGD'),
(20, 1246, 'BB', 'Barbados', 'Bds$', 'Bridgetown', 'BBD', 'North America', 'NA', 'BRB'),
(21, 375, 'BY', 'Belarus', 'Br', 'Minsk', 'BYN', 'Europe', 'EU', 'BLR'),
(22, 32, 'BE', 'Belgium', '€', 'Brussels', 'EUR', 'Europe', 'EU', 'BEL'),
(23, 501, 'BZ', 'Belize', '$', 'Belmopan', 'BZD', 'North America', 'NA', 'BLZ'),
(24, 229, 'BJ', 'Benin', 'CFA', 'Porto-Novo', 'XOF', 'Africa', 'AF', 'BEN'),
(25, 1441, 'BM', 'Bermuda', '$', 'Hamilton', 'BMD', 'North America', 'NA', 'BMU'),
(26, 975, 'BT', 'Bhutan', 'Nu.', 'Thimphu', 'BTN', 'Asia', 'AS', 'BTN'),
(27, 591, 'BO', 'Bolivia', 'Bs.', 'Sucre', 'BOB', 'South America', 'SA', 'BOL'),
(28, 599, 'BQ', 'Bonaire, Sint Eustatius and Saba', '$', 'Kralendijk', 'USD', 'North America', 'NA', 'BES'),
(29, 387, 'BA', 'Bosnia and Herzegovina', 'KM', 'Sarajevo', 'BAM', 'Europe', 'EU', 'BIH'),
(30, 267, 'BW', 'Botswana', 'P', 'Gaborone', 'BWP', 'Africa', 'AF', 'BWA'),
(31, 55, 'BV', 'Bouvet Island', 'kr', '', 'NOK', 'Antarctica', 'AN', 'BVT'),
(32, 55, 'BR', 'Brazil', 'R$', 'Brasilia', 'BRL', 'South America', 'SA', 'BRA'),
(33, 246, 'IO', 'British Indian Ocean Territory', '$', 'Diego Garcia', 'USD', 'Asia', 'AS', 'IOT'),
(34, 673, 'BN', 'Brunei Darussalam', 'B$', 'Bandar Seri Begawan', 'BND', 'Asia', 'AS', 'BRN'),
(35, 359, 'BG', 'Bulgaria', 'Лв.', 'Sofia', 'BGN', 'Europe', 'EU', 'BGR'),
(36, 226, 'BF', 'Burkina Faso', 'CFA', 'Ouagadougou', 'XOF', 'Africa', 'AF', 'BFA'),
(37, 257, 'BI', 'Burundi', 'FBu', 'Bujumbura', 'BIF', 'Africa', 'AF', 'BDI'),
(38, 855, 'KH', 'Cambodia', 'KHR', 'Phnom Penh', 'KHR', 'Asia', 'AS', 'KHM'),
(39, 237, 'CM', 'Cameroon', 'FCFA', 'Yaounde', 'XAF', 'Africa', 'AF', 'CMR'),
(40, 1, 'CA', 'Canada', '$', 'Ottawa', 'CAD', 'North America', 'NA', 'CAN'),
(41, 238, 'CV', 'Cape Verde', '$', 'Praia', 'CVE', 'Africa', 'AF', 'CPV'),
(42, 1345, 'KY', 'Cayman Islands', '$', 'George Town', 'KYD', 'North America', 'NA', 'CYM'),
(43, 236, 'CF', 'Central African Republic', 'FCFA', 'Bangui', 'XAF', 'Africa', 'AF', 'CAF'),
(44, 235, 'TD', 'Chad', 'FCFA', 'N\'Djamena', 'XAF', 'Africa', 'AF', 'TCD'),
(45, 56, 'CL', 'Chile', '$', 'Santiago', 'CLP', 'South America', 'SA', 'CHL'),
(46, 86, 'CN', 'China', '¥', 'Beijing', 'CNY', 'Asia', 'AS', 'CHN'),
(47, 61, 'CX', 'Christmas Island', '$', 'Flying Fish Cove', 'AUD', 'Asia', 'AS', 'CXR'),
(48, 672, 'CC', 'Cocos (Keeling) Islands', '$', 'West Island', 'AUD', 'Asia', 'AS', 'CCK'),
(49, 57, 'CO', 'Colombia', '$', 'Bogota', 'COP', 'South America', 'SA', 'COL'),
(50, 269, 'KM', 'Comoros', 'CF', 'Moroni', 'KMF', 'Africa', 'AF', 'COM'),
(51, 242, 'CG', 'Congo', 'FC', 'Brazzaville', 'XAF', 'Africa', 'AF', 'COG'),
(52, 242, 'CD', 'Congo, Democratic Republic of the Congo', 'FC', 'Kinshasa', 'CDF', 'Africa', 'AF', 'COD'),
(53, 682, 'CK', 'Cook Islands', '$', 'Avarua', 'NZD', 'Oceania', 'OC', 'COK'),
(54, 506, 'CR', 'Costa Rica', '₡', 'San Jose', 'CRC', 'North America', 'NA', 'CRI'),
(55, 225, 'CI', 'Cote D\'Ivoire', 'CFA', 'Yamoussoukro', 'XOF', 'Africa', 'AF', 'CIV'),
(56, 385, 'HR', 'Croatia', 'kn', 'Zagreb', 'HRK', 'Europe', 'EU', 'HRV'),
(57, 53, 'CU', 'Cuba', '$', 'Havana', 'CUP', 'North America', 'NA', 'CUB'),
(58, 599, 'CW', 'Curacao', 'ƒ', 'Willemstad', 'ANG', 'North America', 'NA', 'CUW'),
(59, 357, 'CY', 'Cyprus', '€', 'Nicosia', 'EUR', 'Asia', 'AS', 'CYP'),
(60, 420, 'CZ', 'Czech Republic', 'Kč', 'Prague', 'CZK', 'Europe', 'EU', 'CZE'),
(61, 45, 'DK', 'Denmark', 'Kr.', 'Copenhagen', 'DKK', 'Europe', 'EU', 'DNK'),
(62, 253, 'DJ', 'Djibouti', 'Fdj', 'Djibouti', 'DJF', 'Africa', 'AF', 'DJI'),
(63, 1767, 'DM', 'Dominica', '$', 'Roseau', 'XCD', 'North America', 'NA', 'DMA'),
(64, 1809, 'DO', 'Dominican Republic', '$', 'Santo Domingo', 'DOP', 'North America', 'NA', 'DOM'),
(65, 593, 'EC', 'Ecuador', '$', 'Quito', 'USD', 'South America', 'SA', 'ECU'),
(66, 20, 'EG', 'Egypt', 'ج.م', 'Cairo', 'EGP', 'Africa', 'AF', 'EGY'),
(67, 503, 'SV', 'El Salvador', '$', 'San Salvador', 'USD', 'North America', 'NA', 'SLV'),
(68, 240, 'GQ', 'Equatorial Guinea', 'FCFA', 'Malabo', 'XAF', 'Africa', 'AF', 'GNQ'),
(69, 291, 'ER', 'Eritrea', 'Nfk', 'Asmara', 'ERN', 'Africa', 'AF', 'ERI'),
(70, 372, 'EE', 'Estonia', '€', 'Tallinn', 'EUR', 'Europe', 'EU', 'EST'),
(71, 251, 'ET', 'Ethiopia', 'Nkf', 'Addis Ababa', 'ETB', 'Africa', 'AF', 'ETH'),
(72, 500, 'FK', 'Falkland Islands (Malvinas)', '£', 'Stanley', 'FKP', 'South America', 'SA', 'FLK'),
(73, 298, 'FO', 'Faroe Islands', 'Kr.', 'Torshavn', 'DKK', 'Europe', 'EU', 'FRO'),
(74, 679, 'FJ', 'Fiji', 'FJ$', 'Suva', 'FJD', 'Oceania', 'OC', 'FJI'),
(75, 358, 'FI', 'Finland', '€', 'Helsinki', 'EUR', 'Europe', 'EU', 'FIN'),
(76, 33, 'FR', 'France', '€', 'Paris', 'EUR', 'Europe', 'EU', 'FRA'),
(77, 594, 'GF', 'French Guiana', '€', 'Cayenne', 'EUR', 'South America', 'SA', 'GUF'),
(78, 689, 'PF', 'French Polynesia', '₣', 'Papeete', 'XPF', 'Oceania', 'OC', 'PYF'),
(79, 262, 'TF', 'French Southern Territories', '€', 'Port-aux-Francais', 'EUR', 'Antarctica', 'AN', 'ATF'),
(80, 241, 'GA', 'Gabon', 'FCFA', 'Libreville', 'XAF', 'Africa', 'AF', 'GAB'),
(81, 220, 'GM', 'Gambia', 'D', 'Banjul', 'GMD', 'Africa', 'AF', 'GMB'),
(82, 995, 'GE', 'Georgia', 'ლ', 'Tbilisi', 'GEL', 'Asia', 'AS', 'GEO'),
(83, 49, 'DE', 'Germany', '€', 'Berlin', 'EUR', 'Europe', 'EU', 'DEU'),
(84, 233, 'GH', 'Ghana', 'GH₵', 'Accra', 'GHS', 'Africa', 'AF', 'GHA'),
(85, 350, 'GI', 'Gibraltar', '£', 'Gibraltar', 'GIP', 'Europe', 'EU', 'GIB'),
(86, 30, 'GR', 'Greece', '€', 'Athens', 'EUR', 'Europe', 'EU', 'GRC'),
(87, 299, 'GL', 'Greenland', 'Kr.', 'Nuuk', 'DKK', 'North America', 'NA', 'GRL'),
(88, 1473, 'GD', 'Grenada', '$', 'St. George\'s', 'XCD', 'North America', 'NA', 'GRD'),
(89, 590, 'GP', 'Guadeloupe', '€', 'Basse-Terre', 'EUR', 'North America', 'NA', 'GLP'),
(90, 1671, 'GU', 'Guam', '$', 'Hagatna', 'USD', 'Oceania', 'OC', 'GUM'),
(91, 502, 'GT', 'Guatemala', 'Q', 'Guatemala City', 'GTQ', 'North America', 'NA', 'GTM'),
(92, 44, 'GG', 'Guernsey', '£', 'St Peter Port', 'GBP', 'Europe', 'EU', 'GGY'),
(93, 224, 'GN', 'Guinea', 'FG', 'Conakry', 'GNF', 'Africa', 'AF', 'GIN'),
(94, 245, 'GW', 'Guinea-Bissau', 'CFA', 'Bissau', 'XOF', 'Africa', 'AF', 'GNB'),
(95, 592, 'GY', 'Guyana', '$', 'Georgetown', 'GYD', 'South America', 'SA', 'GUY'),
(96, 509, 'HT', 'Haiti', 'G', 'Port-au-Prince', 'HTG', 'North America', 'NA', 'HTI'),
(97, 0, 'HM', 'Heard Island and Mcdonald Islands', '$', '', 'AUD', 'Antarctica', 'AN', 'HMD'),
(98, 39, 'VA', 'Holy See (Vatican City State)', '€', 'Vatican City', 'EUR', 'Europe', 'EU', 'VAT'),
(99, 504, 'HN', 'Honduras', 'L', 'Tegucigalpa', 'HNL', 'North America', 'NA', 'HND'),
(100, 852, 'HK', 'Hong Kong', '$', 'Hong Kong', 'HKD', 'Asia', 'AS', 'HKG'),
(101, 36, 'HU', 'Hungary', 'Ft', 'Budapest', 'HUF', 'Europe', 'EU', 'HUN'),
(102, 354, 'IS', 'Iceland', 'kr', 'Reykjavik', 'ISK', 'Europe', 'EU', 'ISL'),
(103, 91, 'IN', 'India', '₹', 'New Delhi', 'INR', 'Asia', 'AS', 'IND'),
(104, 62, 'ID', 'Indonesia', 'Rp', 'Jakarta', 'IDR', 'Asia', 'AS', 'IDN'),
(105, 98, 'IR', 'Iran, Islamic Republic of', '﷼', 'Tehran', 'IRR', 'Asia', 'AS', 'IRN'),
(106, 964, 'IQ', 'Iraq', 'د.ع', 'Baghdad', 'IQD', 'Asia', 'AS', 'IRQ'),
(107, 353, 'IE', 'Ireland', '€', 'Dublin', 'EUR', 'Europe', 'EU', 'IRL'),
(108, 44, 'IM', 'Isle of Man', '£', 'Douglas, Isle of Man', 'GBP', 'Europe', 'EU', 'IMN'),
(109, 972, 'IL', 'Israel', '₪', 'Jerusalem', 'ILS', 'Asia', 'AS', 'ISR'),
(110, 39, 'IT', 'Italy', '€', 'Rome', 'EUR', 'Europe', 'EU', 'ITA'),
(111, 1876, 'JM', 'Jamaica', 'J$', 'Kingston', 'JMD', 'North America', 'NA', 'JAM'),
(112, 81, 'JP', 'Japan', '¥', 'Tokyo', 'JPY', 'Asia', 'AS', 'JPN'),
(113, 44, 'JE', 'Jersey', '£', 'Saint Helier', 'GBP', 'Europe', 'EU', 'JEY'),
(114, 962, 'JO', 'Jordan', 'ا.د', 'Amman', 'JOD', 'Asia', 'AS', 'JOR'),
(115, 7, 'KZ', 'Kazakhstan', 'лв', 'Astana', 'KZT', 'Asia', 'AS', 'KAZ'),
(116, 254, 'KE', 'Kenya', 'KSh', 'Nairobi', 'KES', 'Africa', 'AF', 'KEN'),
(117, 686, 'KI', 'Kiribati', '$', 'Tarawa', 'AUD', 'Oceania', 'OC', 'KIR'),
(118, 850, 'KP', 'Korea, Democratic People\'s Republic of', '₩', 'Pyongyang', 'KPW', 'Asia', 'AS', 'PRK'),
(119, 82, 'KR', 'Korea, Republic of', '₩', 'Seoul', 'KRW', 'Asia', 'AS', 'KOR'),
(120, 381, 'XK', 'Kosovo', '€', 'Pristina', 'EUR', 'Europe', 'EU', 'XKX'),
(121, 965, 'KW', 'Kuwait', 'ك.د', 'Kuwait City', 'KWD', 'Asia', 'AS', 'KWT'),
(122, 996, 'KG', 'Kyrgyzstan', 'лв', 'Bishkek', 'KGS', 'Asia', 'AS', 'KGZ'),
(123, 856, 'LA', 'Lao People\'s Democratic Republic', '₭', 'Vientiane', 'LAK', 'Asia', 'AS', 'LAO'),
(124, 371, 'LV', 'Latvia', '€', 'Riga', 'EUR', 'Europe', 'EU', 'LVA'),
(125, 961, 'LB', 'Lebanon', '£', 'Beirut', 'LBP', 'Asia', 'AS', 'LBN'),
(126, 266, 'LS', 'Lesotho', 'L', 'Maseru', 'LSL', 'Africa', 'AF', 'LSO'),
(127, 231, 'LR', 'Liberia', '$', 'Monrovia', 'LRD', 'Africa', 'AF', 'LBR'),
(128, 218, 'LY', 'Libyan Arab Jamahiriya', 'د.ل', 'Tripolis', 'LYD', 'Africa', 'AF', 'LBY'),
(129, 423, 'LI', 'Liechtenstein', 'CHf', 'Vaduz', 'CHF', 'Europe', 'EU', 'LIE'),
(130, 370, 'LT', 'Lithuania', '€', 'Vilnius', 'EUR', 'Europe', 'EU', 'LTU'),
(131, 352, 'LU', 'Luxembourg', '€', 'Luxembourg', 'EUR', 'Europe', 'EU', 'LUX'),
(132, 853, 'MO', 'Macao', '$', 'Macao', 'MOP', 'Asia', 'AS', 'MAC'),
(133, 389, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'ден', 'Skopje', 'MKD', 'Europe', 'EU', 'MKD'),
(134, 261, 'MG', 'Madagascar', 'Ar', 'Antananarivo', 'MGA', 'Africa', 'AF', 'MDG'),
(135, 265, 'MW', 'Malawi', 'MK', 'Lilongwe', 'MWK', 'Africa', 'AF', 'MWI'),
(136, 60, 'MY', 'Malaysia', 'RM', 'Kuala Lumpur', 'MYR', 'Asia', 'AS', 'MYS'),
(137, 960, 'MV', 'Maldives', 'Rf', 'Male', 'MVR', 'Asia', 'AS', 'MDV'),
(138, 223, 'ML', 'Mali', 'CFA', 'Bamako', 'XOF', 'Africa', 'AF', 'MLI'),
(139, 356, 'MT', 'Malta', '€', 'Valletta', 'EUR', 'Europe', 'EU', 'MLT'),
(140, 692, 'MH', 'Marshall Islands', '$', 'Majuro', 'USD', 'Oceania', 'OC', 'MHL'),
(141, 596, 'MQ', 'Martinique', '€', 'Fort-de-France', 'EUR', 'North America', 'NA', 'MTQ'),
(142, 222, 'MR', 'Mauritania', 'MRU', 'Nouakchott', 'MRO', 'Africa', 'AF', 'MRT'),
(143, 230, 'MU', 'Mauritius', '₨', 'Port Louis', 'MUR', 'Africa', 'AF', 'MUS'),
(144, 269, 'YT', 'Mayotte', '€', 'Mamoudzou', 'EUR', 'Africa', 'AF', 'MYT'),
(145, 52, 'MX', 'Mexico', '$', 'Mexico City', 'MXN', 'North America', 'NA', 'MEX'),
(146, 691, 'FM', 'Micronesia, Federated States of', '$', 'Palikir', 'USD', 'Oceania', 'OC', 'FSM'),
(147, 373, 'MD', 'Moldova, Republic of', 'L', 'Chisinau', 'MDL', 'Europe', 'EU', 'MDA'),
(148, 377, 'MC', 'Monaco', '€', 'Monaco', 'EUR', 'Europe', 'EU', 'MCO'),
(149, 976, 'MN', 'Mongolia', '₮', 'Ulan Bator', 'MNT', 'Asia', 'AS', 'MNG'),
(150, 382, 'ME', 'Montenegro', '€', 'Podgorica', 'EUR', 'Europe', 'EU', 'MNE'),
(151, 1664, 'MS', 'Montserrat', '$', 'Plymouth', 'XCD', 'North America', 'NA', 'MSR'),
(152, 212, 'MA', 'Morocco', 'DH', 'Rabat', 'MAD', 'Africa', 'AF', 'MAR'),
(153, 258, 'MZ', 'Mozambique', 'MT', 'Maputo', 'MZN', 'Africa', 'AF', 'MOZ'),
(154, 95, 'MM', 'Myanmar', 'K', 'Nay Pyi Taw', 'MMK', 'Asia', 'AS', 'MMR'),
(155, 264, 'NA', 'Namibia', '$', 'Windhoek', 'NAD', 'Africa', 'AF', 'NAM'),
(156, 674, 'NR', 'Nauru', '$', 'Yaren', 'AUD', 'Oceania', 'OC', 'NRU'),
(157, 977, 'NP', 'Nepal', '₨', 'Kathmandu', 'NPR', 'Asia', 'AS', 'NPL'),
(158, 31, 'NL', 'Netherlands', '€', 'Amsterdam', 'EUR', 'Europe', 'EU', 'NLD'),
(159, 599, 'AN', 'Netherlands Antilles', 'NAf', 'Willemstad', 'ANG', 'North America', 'NA', 'ANT'),
(160, 687, 'NC', 'New Caledonia', '₣', 'Noumea', 'XPF', 'Oceania', 'OC', 'NCL'),
(161, 64, 'NZ', 'New Zealand', '$', 'Wellington', 'NZD', 'Oceania', 'OC', 'NZL'),
(162, 505, 'NI', 'Nicaragua', 'C$', 'Managua', 'NIO', 'North America', 'NA', 'NIC'),
(163, 227, 'NE', 'Niger', 'CFA', 'Niamey', 'XOF', 'Africa', 'AF', 'NER'),
(164, 234, 'NG', 'Nigeria', '₦', 'Abuja', 'NGN', 'Africa', 'AF', 'NGA'),
(165, 683, 'NU', 'Niue', '$', 'Alofi', 'NZD', 'Oceania', 'OC', 'NIU'),
(166, 672, 'NF', 'Norfolk Island', '$', 'Kingston', 'AUD', 'Oceania', 'OC', 'NFK'),
(167, 1670, 'MP', 'Northern Mariana Islands', '$', 'Saipan', 'USD', 'Oceania', 'OC', 'MNP'),
(168, 47, 'NO', 'Norway', 'kr', 'Oslo', 'NOK', 'Europe', 'EU', 'NOR'),
(169, 968, 'OM', 'Oman', '.ع.ر', 'Muscat', 'OMR', 'Asia', 'AS', 'OMN'),
(170, 92, 'PK', 'Pakistan', '₨', 'Islamabad', 'PKR', 'Asia', 'AS', 'PAK'),
(171, 680, 'PW', 'Palau', '$', 'Melekeok', 'USD', 'Oceania', 'OC', 'PLW'),
(172, 970, 'PS', 'Palestinian Territory, Occupied', '₪', 'East Jerusalem', 'ILS', 'Asia', 'AS', 'PSE'),
(173, 507, 'PA', 'Panama', 'B/.', 'Panama City', 'PAB', 'North America', 'NA', 'PAN'),
(174, 675, 'PG', 'Papua New Guinea', 'K', 'Port Moresby', 'PGK', 'Oceania', 'OC', 'PNG'),
(175, 595, 'PY', 'Paraguay', '₲', 'Asuncion', 'PYG', 'South America', 'SA', 'PRY'),
(176, 51, 'PE', 'Peru', 'S/.', 'Lima', 'PEN', 'South America', 'SA', 'PER'),
(177, 63, 'PH', 'Philippines', '₱', 'Manila', 'PHP', 'Asia', 'AS', 'PHL'),
(178, 64, 'PN', 'Pitcairn', '$', 'Adamstown', 'NZD', 'Oceania', 'OC', 'PCN'),
(179, 48, 'PL', 'Poland', 'zł', 'Warsaw', 'PLN', 'Europe', 'EU', 'POL'),
(180, 351, 'PT', 'Portugal', '€', 'Lisbon', 'EUR', 'Europe', 'EU', 'PRT'),
(181, 1787, 'PR', 'Puerto Rico', '$', 'San Juan', 'USD', 'North America', 'NA', 'PRI'),
(182, 974, 'QA', 'Qatar', 'ق.ر', 'Doha', 'QAR', 'Asia', 'AS', 'QAT'),
(183, 262, 'RE', 'Reunion', '€', 'Saint-Denis', 'EUR', 'Africa', 'AF', 'REU'),
(184, 40, 'RO', 'Romania', 'lei', 'Bucharest', 'RON', 'Europe', 'EU', 'ROM'),
(185, 70, 'RU', 'Russian Federation', '₽', 'Moscow', 'RUB', 'Asia', 'AS', 'RUS'),
(186, 250, 'RW', 'Rwanda', 'FRw', 'Kigali', 'RWF', 'Africa', 'AF', 'RWA'),
(187, 590, 'BL', 'Saint Barthelemy', '€', 'Gustavia', 'EUR', 'North America', 'NA', 'BLM'),
(188, 290, 'SH', 'Saint Helena', '£', 'Jamestown', 'SHP', 'Africa', 'AF', 'SHN'),
(189, 1869, 'KN', 'Saint Kitts and Nevis', '$', 'Basseterre', 'XCD', 'North America', 'NA', 'KNA'),
(190, 1758, 'LC', 'Saint Lucia', '$', 'Castries', 'XCD', 'North America', 'NA', 'LCA'),
(191, 590, 'MF', 'Saint Martin', '€', 'Marigot', 'EUR', 'North America', 'NA', 'MAF'),
(192, 508, 'PM', 'Saint Pierre and Miquelon', '€', 'Saint-Pierre', 'EUR', 'North America', 'NA', 'SPM'),
(193, 1784, 'VC', 'Saint Vincent and the Grenadines', '$', 'Kingstown', 'XCD', 'North America', 'NA', 'VCT'),
(194, 684, 'WS', 'Samoa', 'SAT', 'Apia', 'WST', 'Oceania', 'OC', 'WSM'),
(195, 378, 'SM', 'San Marino', '€', 'San Marino', 'EUR', 'Europe', 'EU', 'SMR'),
(196, 239, 'ST', 'Sao Tome and Principe', 'Db', 'Sao Tome', 'STD', 'Africa', 'AF', 'STP'),
(197, 966, 'SA', 'Saudi Arabia', '﷼', 'Riyadh', 'SAR', 'Asia', 'AS', 'SAU'),
(198, 221, 'SN', 'Senegal', 'CFA', 'Dakar', 'XOF', 'Africa', 'AF', 'SEN'),
(199, 381, 'RS', 'Serbia', 'din', 'Belgrade', 'RSD', 'Europe', 'EU', 'SRB'),
(200, 381, 'CS', 'Serbia and Montenegro', 'din', 'Belgrade', 'RSD', 'Europe', 'EU', 'SCG'),
(201, 248, 'SC', 'Seychelles', 'SRe', 'Victoria', 'SCR', 'Africa', 'AF', 'SYC'),
(202, 232, 'SL', 'Sierra Leone', 'Le', 'Freetown', 'SLL', 'Africa', 'AF', 'SLE'),
(203, 65, 'SG', 'Singapore', '$', 'Singapur', 'SGD', 'Asia', 'AS', 'SGP'),
(204, 1, 'SX', 'Sint Maarten', 'ƒ', 'Philipsburg', 'ANG', 'North America', 'NA', 'SXM'),
(205, 421, 'SK', 'Slovakia', '€', 'Bratislava', 'EUR', 'Europe', 'EU', 'SVK'),
(206, 386, 'SI', 'Slovenia', '€', 'Ljubljana', 'EUR', 'Europe', 'EU', 'SVN'),
(207, 677, 'SB', 'Solomon Islands', 'Si$', 'Honiara', 'SBD', 'Oceania', 'OC', 'SLB'),
(208, 252, 'SO', 'Somalia', 'Sh.so.', 'Mogadishu', 'SOS', 'Africa', 'AF', 'SOM'),
(209, 27, 'ZA', 'South Africa', 'R', 'Pretoria', 'ZAR', 'Africa', 'AF', 'ZAF'),
(210, 500, 'GS', 'South Georgia and the South Sandwich Islands', '£', 'Grytviken', 'GBP', 'Antarctica', 'AN', 'SGS'),
(211, 211, 'SS', 'South Sudan', '£', 'Juba', 'SSP', 'Africa', 'AF', 'SSD'),
(212, 34, 'ES', 'Spain', '€', 'Madrid', 'EUR', 'Europe', 'EU', 'ESP'),
(213, 94, 'LK', 'Sri Lanka', 'Rs', 'Colombo', 'LKR', 'Asia', 'AS', 'LKA'),
(214, 249, 'SD', 'Sudan', '.س.ج', 'Khartoum', 'SDG', 'Africa', 'AF', 'SDN'),
(215, 597, 'SR', 'Suriname', '$', 'Paramaribo', 'SRD', 'South America', 'SA', 'SUR'),
(216, 47, 'SJ', 'Svalbard and Jan Mayen', 'kr', 'Longyearbyen', 'NOK', 'Europe', 'EU', 'SJM'),
(217, 268, 'SZ', 'Swaziland', 'E', 'Mbabane', 'SZL', 'Africa', 'AF', 'SWZ'),
(218, 46, 'SE', 'Sweden', 'kr', 'Stockholm', 'SEK', 'Europe', 'EU', 'SWE'),
(219, 41, 'CH', 'Switzerland', 'CHf', 'Berne', 'CHF', 'Europe', 'EU', 'CHE'),
(220, 963, 'SY', 'Syrian Arab Republic', 'LS', 'Damascus', 'SYP', 'Asia', 'AS', 'SYR'),
(221, 886, 'TW', 'Taiwan, Province of China', '$', 'Taipei', 'TWD', 'Asia', 'AS', 'TWN'),
(222, 992, 'TJ', 'Tajikistan', 'SM', 'Dushanbe', 'TJS', 'Asia', 'AS', 'TJK'),
(223, 255, 'TZ', 'Tanzania, United Republic of', 'TSh', 'Dodoma', 'TZS', 'Africa', 'AF', 'TZA'),
(224, 66, 'TH', 'Thailand', '฿', 'Bangkok', 'THB', 'Asia', 'AS', 'THA'),
(225, 670, 'TL', 'Timor-Leste', '$', 'Dili', 'USD', 'Asia', 'AS', 'TLS'),
(226, 228, 'TG', 'Togo', 'CFA', 'Lome', 'XOF', 'Africa', 'AF', 'TGO'),
(227, 690, 'TK', 'Tokelau', '$', '', 'NZD', 'Oceania', 'OC', 'TKL'),
(228, 676, 'TO', 'Tonga', '$', 'Nuku\'alofa', 'TOP', 'Oceania', 'OC', 'TON'),
(229, 1868, 'TT', 'Trinidad and Tobago', '$', 'Port of Spain', 'TTD', 'North America', 'NA', 'TTO'),
(230, 216, 'TN', 'Tunisia', 'ت.د', 'Tunis', 'TND', 'Africa', 'AF', 'TUN'),
(231, 90, 'TR', 'Turkey', '₺', 'Ankara', 'TRY', 'Asia', 'AS', 'TUR'),
(232, 7370, 'TM', 'Turkmenistan', 'T', 'Ashgabat', 'TMT', 'Asia', 'AS', 'TKM'),
(233, 1649, 'TC', 'Turks and Caicos Islands', '$', 'Cockburn Town', 'USD', 'North America', 'NA', 'TCA'),
(234, 688, 'TV', 'Tuvalu', '$', 'Funafuti', 'AUD', 'Oceania', 'OC', 'TUV'),
(235, 256, 'UG', 'Uganda', 'USh', 'Kampala', 'UGX', 'Africa', 'AF', 'UGA'),
(236, 380, 'UA', 'Ukraine', '₴', 'Kiev', 'UAH', 'Europe', 'EU', 'UKR'),
(237, 971, 'AE', 'United Arab Emirates', 'إ.د', 'Abu Dhabi', 'AED', 'Asia', 'AS', 'ARE'),
(238, 44, 'GB', 'United Kingdom', '£', 'London', 'GBP', 'Europe', 'EU', 'GBR'),
(239, 1, 'US', 'United States', '$', 'Washington', 'USD', 'North America', 'NA', 'USA'),
(240, 1, 'UM', 'United States Minor Outlying Islands', '$', '', 'USD', 'North America', 'NA', 'UMI'),
(241, 598, 'UY', 'Uruguay', '$', 'Montevideo', 'UYU', 'South America', 'SA', 'URY'),
(242, 998, 'UZ', 'Uzbekistan', 'лв', 'Tashkent', 'UZS', 'Asia', 'AS', 'UZB'),
(243, 678, 'VU', 'Vanuatu', 'VT', 'Port Vila', 'VUV', 'Oceania', 'OC', 'VUT'),
(244, 58, 'VE', 'Venezuela', 'Bs', 'Caracas', 'VEF', 'South America', 'SA', 'VEN'),
(245, 84, 'VN', 'Viet Nam', '₫', 'Hanoi', 'VND', 'Asia', 'AS', 'VNM'),
(246, 1284, 'VG', 'Virgin Islands, British', '$', 'Road Town', 'USD', 'North America', 'NA', 'VGB'),
(247, 1340, 'VI', 'Virgin Islands, U.s.', '$', 'Charlotte Amalie', 'USD', 'North America', 'NA', 'VIR'),
(248, 681, 'WF', 'Wallis and Futuna', '₣', 'Mata Utu', 'XPF', 'Oceania', 'OC', 'WLF'),
(249, 212, 'EH', 'Western Sahara', 'MAD', 'El-Aaiun', 'MAD', 'Africa', 'AF', 'ESH'),
(250, 967, 'YE', 'Yemen', '﷼', 'Sanaa', 'YER', 'Asia', 'AS', 'YEM'),
(251, 260, 'ZM', 'Zambia', 'ZK', 'Lusaka', 'ZMW', 'Africa', 'AF', 'ZMB'),
(252, 263, 'ZW', 'Zimbabwe', '$', 'Harare', 'ZWL', 'Africa', 'AF', 'ZWE');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favrouite_job`
--

CREATE TABLE `favrouite_job` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `job_id` text NOT NULL,
  `fav_unfav` int(11) NOT NULL DEFAULT '0' COMMENT 'o for fav 1 for unfav',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favrouite_job`
--

INSERT INTO `favrouite_job` (`id`, `user_id`, `job_id`, `fav_unfav`, `created_at`, `updated_at`) VALUES
(28, '143', '39', 0, '2021-12-31 13:15:07', '2021-12-31 13:15:07'),
(29, '144', '143', 0, '2022-01-31 12:28:07', '2022-01-31 12:28:07'),
(31, '232', '43', 0, '2022-06-30 05:14:49', '2022-06-30 05:14:49'),
(32, '232', '41', 0, '2022-07-01 09:20:57', '2022-07-01 09:20:57'),
(33, '232', '42', 0, '2022-07-01 09:22:12', '2022-07-01 09:22:12'),
(43, '233', '256', 0, '2022-08-18 07:28:51', '2022-08-18 07:28:51'),
(46, '143', '5', 0, '2022-08-23 06:31:54', '2022-08-23 06:31:54'),
(47, '143', '1', 0, '2022-08-23 07:15:05', '2022-08-23 07:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `friendlists`
--

CREATE TABLE `friendlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_user` bigint(20) UNSIGNED NOT NULL,
  `second_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intellectual_property_issues`
--

CREATE TABLE `intellectual_property_issues` (
  `id` int(11) NOT NULL,
  `intellectual_issue` varchar(250) NOT NULL,
  `user_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intellectual_property_issues`
--

INSERT INTO `intellectual_property_issues` (`id`, `intellectual_issue`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Research Blend is a new global portal connecting the research community to one another. Whether you are looking for a research vendor, searching for additional business, looking to hire or get hired or needing a workspace to keep projects on track, w', '143', '2022-01-04 06:40:27', '2022-01-04 06:40:27'),
(2, 'notice', '231', '2022-06-27 11:15:25', '2022-06-27 11:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `r_user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_of_exp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_min_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_max_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_responsibilities` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_Email` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_specialisms` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_offered_salary` int(11) DEFAULT NULL,
  `r_gender` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_career_level` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_complete_address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_industry` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_latitude` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_longitude` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `r_find_on_map` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_skill` varchar(250) DEFAULT NULL,
  `Seniority_Level` varchar(250) DEFAULT NULL,
  `alert_not_value` int(11) NOT NULL DEFAULT '1',
  `notification_alert` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `alert_jobseker_value` int(11) NOT NULL DEFAULT '1',
  `notification_of_jobseker` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `notification_alert_admin` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `job_expire` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `user_id`, `r_user_name`, `job_title`, `job_location`, `years_of_exp`, `job_type`, `job_category`, `job_min_salary`, `job_max_salary`, `job_description`, `job_responsibilities`, `job_qualification`, `r_Email`, `r_specialisms`, `r_offered_salary`, `r_gender`, `r_career_level`, `r_complete_address`, `r_industry`, `r_latitude`, `r_longitude`, `r_find_on_map`, `top_skill`, `Seniority_Level`, `alert_not_value`, `notification_alert`, `alert_jobseker_value`, `notification_of_jobseker`, `notification_alert_admin`, `job_expire`, `created_at`, `updated_at`) VALUES
(1, '233', '0', 'recruterjb title', 'vaodarada', '5 to 10', '1', '2', '25000', '50000', 'recruterjb title description', 'php developer', 'MCA', 'hardik.meghnathi12@gmail.com', 'Specialsmstest', NULL, 'Male', 'Career Level', NULL, NULL, '22.310696', '73.192635', 'test', '[\"7\"]', '2', 1, 1, 1, 1, 0, NULL, '2022-08-16 11:17:19', '2022-08-16 11:17:19'),
(2, '255', '0', '8-17 Test', 'United States', '0 to 1', '1', '1', '150000', '200000', 'Testing', 'Responsibility', 'asdasdasd', 'recruiter@382mp.com', 'Special Skills', NULL, 'Male', 'Career Level', NULL, NULL, '12', '12', 'Map', '[\"2\"]', '4', 1, 0, 1, 1, 0, NULL, '2022-08-17 23:32:59', '2022-08-17 23:32:59'),
(3, '141', '0', 'asdasd', 'xyz', '1 to 5', '1', '1', '455', '677', 'test', 'php deeloper', 'bca', NULL, 'php', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, NULL, '2022-08-23 05:38:04', '2022-08-23 05:38:04'),
(4, '141', '0', '23aug post', 'asdasd', '1 to 5', '1', '1', '235', '543', 'gdfg', 'dfgdf', 'aaasda', NULL, 'dfgdf', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, NULL, '2022-08-23 05:42:31', '2022-08-23 05:42:31'),
(5, '142', '0', 'UI UX Designer', 'Westborough, MA, USA', '0 to 1', '1', '1', '29', '50', 'Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive inno', 'Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive inno', 'BA', NULL, 'SEO,   Internet Marketing,   Link Building,   Marketing,   Advertising', NULL, 'Gender', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, NULL, '2022-08-23 06:26:31', '2022-08-23 06:26:31'),
(6, '142', '0', 'sadas', 'ah', '1 to 5', '1', '5', '15000', '30000', 'safdsf', 'sdfsd', '2 year', NULL, 'sdfs', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, NULL, '2022-08-23 07:08:59', '2022-08-23 07:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `jobseker_block_recruter`
--

CREATE TABLE `jobseker_block_recruter` (
  `id` int(11) NOT NULL,
  `rec_id` varchar(250) NOT NULL COMMENT 'rec & vendor id',
  `jobseker_id` varchar(250) NOT NULL,
  `block_unblock` varchar(250) NOT NULL DEFAULT '0' COMMENT '0 for default , 1 for block , 2 for unblock',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobseker_block_recruter`
--

INSERT INTO `jobseker_block_recruter` (`id`, `rec_id`, `jobseker_id`, `block_unblock`, `created_at`, `updated_at`) VALUES
(15, '144', '143', '2', '2022-02-07 11:32:54', '2022-02-07 11:32:54'),
(16, '233', '232', '2', '2022-07-01 10:12:08', '2022-07-01 10:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_category`
--

CREATE TABLE `jobs_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_category`
--

INSERT INTO `jobs_category` (`id`, `category`, `cat_image`, `created_at`, `updated_at`) VALUES
(1, 'Recruiting', '1641204556.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(2, 'Focus Group Facility', '1641204568.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(3, 'Data & Analytics', '1641204582.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(4, 'Consulting', '1641204596.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(5, 'Data Collection', '1641204610.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(6, 'Full Service', '1641204626.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(7, 'International', '1641204636.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(8, 'Mystery Shopping', '1641204645.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(9, 'Panels / Communities', '1641204654.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(10, 'Qualitative Consultant', '1641204665.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(11, 'Qualitative Research', '1641204674.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(12, 'Quantitative Research', '1641204683.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(13, 'Support Services', '1641204693.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(14, 'Syndicated Research', '1641204709.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(15, 'Software & Technology', '1641204718.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(16, 'Interviewing Facility', '1641204726.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14'),
(17, 'Office Facility', '1641204734.jfif', '2022-01-03 10:15:07', '2022-01-03 10:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_sub_category`
--

CREATE TABLE `jobs_sub_category` (
  `id` int(11) NOT NULL,
  `category_id` varchar(250) NOT NULL,
  `subcat_name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs_sub_category`
--

INSERT INTO `jobs_sub_category` (`id`, `category_id`, `subcat_name`, `created_at`, `updated_at`) VALUES
(1, '1', 'Software Developer', '2021-12-06 10:01:51', '2021-12-06 10:01:51'),
(2, '1', 'Full stack Developer', '2021-12-06 10:01:51', '2021-12-06 10:01:51'),
(3, '1', 'Frontend Developer', '2021-12-06 10:01:51', '2021-12-06 10:01:51'),
(4, '1', 'Backend Developer', '2021-12-06 10:01:51', '2021-12-06 10:01:51'),
(5, '2', 'Outbound Marketing', '2021-12-06 10:03:52', '2021-12-06 10:03:52'),
(6, '2', 'Inbound Marketing', '2021-12-06 10:03:52', '2021-12-06 10:03:52'),
(7, '2', 'Digital Marketing', '2021-12-06 10:03:52', '2021-12-06 10:03:52'),
(8, '2', 'Search Engine Marketing', '2021-12-06 10:03:52', '2021-12-06 10:03:52'),
(9, '2', 'Content Marketing', '2021-12-06 10:03:52', '2021-12-06 10:03:52'),
(10, '3', 'Account Manager', '2021-12-06 10:29:42', '2021-12-06 10:29:42'),
(11, '3', 'Analyst', '2021-12-06 10:29:42', '2021-12-06 10:29:42'),
(12, '3', 'Banking (Business, Corporate & Institutional, Retail & Branch)', '2021-12-06 10:29:42', '2021-12-06 10:29:42'),
(13, '3', 'Client Service Associate', '2021-12-06 10:29:42', '2021-12-06 10:29:42'),
(14, '3', 'Financial Advisor', '2021-12-06 10:29:42', '2021-12-06 10:29:42'),
(15, '4', 'Accountant', '2021-12-06 10:31:32', '2021-12-06 10:31:32'),
(16, '4', 'Accounts Clerk/ Officer', '2021-12-06 10:31:32', '2021-12-06 10:31:32'),
(17, '4', 'Business Analyst', '2021-12-06 10:31:32', '2021-12-06 10:31:32'),
(18, '4', 'Tax Manager', '2021-12-06 10:31:32', '2021-12-06 10:31:32'),
(19, '4', 'Forensic Accounting', '2021-12-06 10:31:32', '2021-12-06 10:31:32'),
(20, '4', 'System Internal Accounting Control', '2021-12-06 10:31:32', '2021-12-06 10:31:32'),
(21, '5', 'Board Appointments (Directors/Members)', '2021-12-06 10:35:31', '2021-12-06 10:35:31'),
(22, '5', 'Chief Executive Officer (CEO)', '2021-12-06 10:35:31', '2021-12-06 10:35:31'),
(23, '5', 'Chief Operating Officer (COO) & Managing Director (MD)', '2021-12-06 10:35:31', '2021-12-06 10:35:31'),
(24, '5', 'General Manager (GM)', '2021-12-06 10:35:31', '2021-12-06 10:35:31'),
(25, '6', 'Compensation and Benefits Specialist', '2021-12-06 10:37:32', '2021-12-06 10:37:32'),
(26, '6', 'Employee Relations Manager', '2021-12-06 10:37:32', '2021-12-06 10:37:32'),
(27, '6', 'HR Associate', '2021-12-06 10:37:32', '2021-12-06 10:37:32'),
(28, '6', 'HR Coordinator', '2021-12-06 10:37:32', '2021-12-06 10:37:32'),
(29, '6', 'Organizational Development Manager', '2021-12-06 10:37:32', '2021-12-06 10:37:32'),
(30, '6', 'Recruitment Manager', '2021-12-06 10:37:32', '2021-12-06 10:37:32'),
(31, '7', 'Training and Development Manager', '2021-12-06 10:37:32', '2021-12-06 10:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `j_contect_information`
--

CREATE TABLE `j_contect_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `j_id` int(255) DEFAULT NULL,
  `j_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `J_find_on_map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `j_profile`
--

CREATE TABLE `j_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `j_id` int(255) DEFAULT NULL,
  `j_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_current_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_expected_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_catagories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_allow_in_search_listing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `make_deposite_default`
--

CREATE TABLE `make_deposite_default` (
  `id` int(11) NOT NULL,
  `processing_fee` varchar(250) NOT NULL,
  `processing_amt` varchar(250) NOT NULL,
  `user_role` varchar(250) DEFAULT NULL COMMENT '1 for admin , 2 for Buyer , 3 for Jobseeker , 4 for Recruiter , 5 for Vendor',
  `sts` varchar(250) NOT NULL COMMENT '1 for active 2 for deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `make_deposite_default`
--

INSERT INTO `make_deposite_default` (`id`, `processing_fee`, `processing_amt`, `user_role`, `sts`) VALUES
(1, 'processing_fees_buyer', '2000', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `manage_cv`
--

CREATE TABLE `manage_cv` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `search_listing` text COMMENT '1 for yes 0 for no',
  `applicant_about` varchar(300) DEFAULT NULL,
  `edu_work_exp_id` tinyint(4) DEFAULT '0' COMMENT '1 for edu 2 for exp 3 for award ',
  `title` varchar(300) DEFAULT NULL,
  `year` date DEFAULT NULL,
  `tagline` varchar(300) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `check` varchar(250) DEFAULT NULL,
  `endate` date DEFAULT NULL,
  `skills` varchar(300) DEFAULT NULL,
  `upload_cv` text,
  `hobbie` varchar(250) DEFAULT NULL,
  `english` varchar(250) DEFAULT '0',
  `hindi` varchar(250) DEFAULT '0',
  `gujarati` varchar(250) DEFAULT '0',
  `read` varchar(250) DEFAULT '0',
  `write` varchar(250) DEFAULT '0',
  `speak` varchar(250) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manage_cv`
--

INSERT INTO `manage_cv` (`id`, `user_id`, `search_listing`, `applicant_about`, `edu_work_exp_id`, `title`, `year`, `tagline`, `description`, `check`, `endate`, `skills`, `upload_cv`, `hobbie`, `english`, `hindi`, `gujarati`, `read`, `write`, `speak`, `created_at`, `updated_at`) VALUES
(30, 143, '1643107514.pdf', 'Research Blend is a new global portal connecting the research community to one another. Whether you are looking for a research vendor, searching for additional business, looking to hire or get hired or needing a workspace to keep projects on track, we can help. Every day, we connect the community to', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'php , laravel', '1643107514.pdf', 'reading book, travelling', '0', '0', '0', '1', '1', '1', '2022-01-25 10:45:14', '2022-01-25 10:45:14'),
(31, 224, NULL, NULL, 1, 'MSc. IT.', '2012-06-15', 'City of London College', 'Master degree', NULL, '2014-08-15', NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '2022-06-14 12:37:20', '2022-06-14 12:37:20'),
(35, 224, '1655210647.png', 'Best QA', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'Professional skill', '1655210647.png', 'Traveling', '1', '1', '1', '1', '1', '1', '2022-06-14 12:44:07', '2022-06-14 12:44:07'),
(36, 224, NULL, NULL, 2, 'Pxel', '2020-01-01', '2022-05-30', 'Any kind of project managements.', NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0', '2022-06-27 09:00:27', '2022-06-27 09:00:27'),
(37, 232, '1660649227.pdf', 'dfgfdg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'football', '1660649227.pdf', 'Hokey', '1', '1', '1', '1', '1', '1', '2022-06-30 04:24:41', '2022-06-30 04:24:41'),
(43, 232, '1660649227.pdf', 'dfgfdg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'football', '1660649227.pdf', 'Hokey', '1', '1', '1', '1', '1', '1', '2022-07-15 13:57:30', '2022-07-15 13:57:30'),
(44, 232, '1660649227.pdf', 'dfgfdg', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'football', '1660649227.pdf', 'Hokey', '1', '1', '1', '1', '1', '1', '2022-07-18 12:10:21', '2022-07-18 12:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_role_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_benifit` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bids_per_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `user_role_type`, `membership_name`, `membership_benifit`, `membership_price`, `bids_per_month`, `created_at`, `updated_at`) VALUES
(10, '2', 'Plus', '1', '5000', '150', '2021-11-11 10:36:00', '2021-11-11 10:36:00'),
(11, '5', 'Professional', '1', '15', '50', '2021-11-29 09:55:30', '2021-11-29 09:55:30'),
(12, '4', 'abcd', '1', '500', '70', '2021-11-29 09:55:30', '2021-11-29 09:55:30'),
(13, '3', 'xxx', '1', '600', '45', '2021-11-29 09:55:30', '2021-11-29 09:55:30'),
(14, '2', 'Taral Test1', '2', '200', '2000', '2022-06-14 05:40:36', '2022-07-28 06:14:39'),
(15, '4', 'Joo123', '1', '18000000', '465656556', '2022-08-22 12:26:38', '2022-08-22 12:26:38'),
(16, '5', 'membership', '2', '2500', '54', '2022-08-23 07:13:19', '2022-08-23 07:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 141, 142, 'Hello', 1, '2022-07-08 04:56:28', '2022-07-08 04:56:28'),
(2, 142, 141, 'testing 123', 1, '2022-07-08 04:57:27', '2022-07-08 04:57:27'),
(3, 141, 142, 'send to vender', 1, '2022-07-08 05:06:59', '2022-07-08 05:06:59'),
(4, 142, 141, 'hihihihihihi', 1, '2022-07-08 05:07:16', '2022-07-08 05:07:16'),
(5, 243, 237, 'jghjsdfjhhfgggjgsfgjgjhksfjk', 0, '2022-07-18 06:49:21', '2022-07-18 06:49:21'),
(6, 243, 235, 'fdgf', 0, '2022-07-18 06:49:30', '2022-07-18 06:49:30'),
(7, 243, 235, 'hjhgjghj', 0, '2022-07-18 06:49:35', '2022-07-18 06:49:35'),
(8, 243, 235, 'hjkhjkhjk', 0, '2022-07-18 06:49:44', '2022-07-18 06:49:44'),
(9, 243, 240, 'jgghghjhjgj', 0, '2022-07-18 06:49:50', '2022-07-18 06:49:50'),
(10, 243, 232, 'ghjghj', 0, '2022-07-18 06:49:56', '2022-07-18 06:49:56'),
(11, 141, 142, 'test', 1, '2022-07-26 16:40:46', '2022-07-26 16:40:46'),
(12, 240, 142, 'fsdf', 1, '2022-07-28 05:35:22', '2022-07-28 05:35:22'),
(13, 240, 213, 'dafsdfsd', 0, '2022-07-28 05:36:05', '2022-07-28 05:36:05'),
(14, 240, 212, 'sdfsd', 0, '2022-07-28 05:36:53', '2022-07-28 05:36:53'),
(15, 240, 212, NULL, 0, '2022-07-28 05:36:54', '2022-07-28 05:36:54'),
(16, 248, 150, 'test', 0, '2022-08-05 05:50:41', '2022-08-05 05:50:41'),
(17, 141, 142, 'hi', 1, '2022-08-08 05:07:23', '2022-08-08 05:07:23'),
(18, 141, 213, 'hi', 0, '2022-08-08 05:07:51', '2022-08-08 05:07:51'),
(19, 141, 142, 'hi', 1, '2022-08-08 05:08:48', '2022-08-08 05:08:48'),
(20, 141, 142, 'hello', 1, '2022-08-08 05:08:53', '2022-08-08 05:08:53'),
(21, 254, 142, 'chat here', 1, '2022-08-08 18:21:38', '2022-08-08 18:21:38'),
(22, 254, 142, 'test', 1, '2022-08-08 18:21:50', '2022-08-08 18:21:50'),
(23, 141, 213, 'hello 10 aug', 1, '2022-08-10 06:24:44', '2022-08-10 06:24:44'),
(24, 141, 149, 'test..', 1, '2022-08-10 07:49:38', '2022-08-10 07:49:38'),
(25, 141, 150, 'asasdasdasd', 0, '2022-08-10 10:07:00', '2022-08-10 10:07:00'),
(26, 141, 142, 'testtt', 1, '2022-08-10 10:48:45', '2022-08-10 10:48:45'),
(27, 141, 142, 'tesddsdsdsdsdsdd', 1, '2022-08-10 11:44:18', '2022-08-10 11:44:18'),
(28, 236, 142, 'test....', 1, '2022-08-10 13:25:42', '2022-08-10 13:25:42'),
(29, 236, 142, 'asdasdasd', 1, '2022-08-10 13:25:58', '2022-08-10 13:25:58'),
(30, 236, 142, 'asdasdasd', 1, '2022-08-10 13:27:38', '2022-08-10 13:27:38'),
(31, 236, 152, 'tesssss', 0, '2022-08-10 13:37:18', '2022-08-10 13:37:18'),
(32, 236, 152, 'asdasdasd', 0, '2022-08-10 13:37:29', '2022-08-10 13:37:29'),
(33, 142, 141, 'erereerr', 1, '2022-08-15 04:28:59', '2022-08-15 04:28:59'),
(34, 141, 142, 'ssfsdfsdf', 1, '2022-08-15 04:37:23', '2022-08-15 04:37:23'),
(35, 141, 211, 'asdasdasd', 1, '2022-08-15 04:52:16', '2022-08-15 04:52:16'),
(36, 141, 149, 'asadadadasdas', 1, '2022-08-15 05:00:18', '2022-08-15 05:00:18'),
(37, 141, 149, 'asdasd', 1, '2022-08-15 05:06:37', '2022-08-15 05:06:37'),
(38, 141, 149, 'asdasdasd', 1, '2022-08-15 05:07:44', '2022-08-15 05:07:44'),
(39, 141, 149, 'asdsadsaasdasd', 1, '2022-08-15 05:08:12', '2022-08-15 05:08:12'),
(40, 141, 149, 'asdasdsadsadsad', 1, '2022-08-15 05:41:46', '2022-08-15 05:41:46'),
(41, 141, 150, 'cbvbvcbcvbv', 0, '2022-08-15 05:42:30', '2022-08-15 05:42:30'),
(42, 141, 150, 'asasdasdsadsad', 0, '2022-08-15 05:44:11', '2022-08-15 05:44:11'),
(43, 141, 149, 'asdasdsadasd', 1, '2022-08-15 05:46:56', '2022-08-15 05:46:56'),
(44, 141, 141, 'asdasdsadsd', 1, '2022-08-15 06:11:28', '2022-08-15 06:11:28'),
(45, 141, 149, 'asdasdsasdsd', 1, '2022-08-15 06:31:29', '2022-08-15 06:31:29'),
(46, 149, 141, '123123123', 1, '2022-08-15 06:35:08', '2022-08-15 06:35:08'),
(47, 149, 141, '34545', 1, '2022-08-15 06:37:19', '2022-08-15 06:37:19'),
(48, 141, 149, 'tyetytytytyu', 1, '2022-08-15 06:41:27', '2022-08-15 06:41:27'),
(49, 211, 141, 'test123', 1, '2022-08-16 03:41:04', '2022-08-16 03:41:04'),
(50, 141, 149, 'mytesting', 1, '2022-08-16 03:58:14', '2022-08-16 03:58:14'),
(51, 141, 211, 'asdasdasdsad', 1, '2022-08-16 07:44:46', '2022-08-16 07:44:46'),
(52, 141, 213, 'asdasdasdasdsd', 0, '2022-08-16 09:05:21', '2022-08-16 09:05:21'),
(53, 141, 230, 'asdasdasdasd', 0, '2022-08-16 09:05:40', '2022-08-16 09:05:40'),
(54, 141, 238, 'asdasdasdasdsa123123', 1, '2022-08-16 09:08:58', '2022-08-16 09:08:58'),
(55, 141, 230, 'xyz... texting', 0, '2022-08-16 09:10:53', '2022-08-16 09:10:53'),
(56, 141, 243, 'asdasdsd...', 0, '2022-08-16 09:13:49', '2022-08-16 09:13:49'),
(57, 141, 238, 'asda424234234', 1, '2022-08-16 09:23:43', '2022-08-16 09:23:43'),
(58, 238, 141, '12312312323', 1, '2022-08-16 09:27:18', '2022-08-16 09:27:18'),
(59, 141, 238, 'tessssss...', 1, '2022-08-16 10:17:50', '2022-08-16 10:17:50'),
(60, 233, 232, 'testfgdfgdfgdfgf', 1, '2022-08-16 11:39:12', '2022-08-16 11:39:12'),
(61, 232, 233, 'asdsadsdsadasdsd', 1, '2022-08-16 11:39:56', '2022-08-16 11:39:56'),
(62, 141, 215, 'test....', 0, '2022-08-17 05:49:44', '2022-08-17 05:49:44'),
(63, 141, 214, 'testsdfsdfsd', 0, '2022-08-17 05:49:58', '2022-08-17 05:49:58'),
(64, 141, 214, 'asdasdasd', 0, '2022-08-17 05:50:09', '2022-08-17 05:50:09'),
(65, 252, 142, 'testing', 1, '2022-08-17 13:32:46', '2022-08-17 13:32:46'),
(66, 252, 142, 'testing', 1, '2022-08-17 13:32:58', '2022-08-17 13:32:58'),
(67, 252, 142, 'testing', 1, '2022-08-17 13:33:14', '2022-08-17 13:33:14'),
(68, 252, 142, 'test 8-17 6:18PM', 1, '2022-08-17 22:19:07', '2022-08-17 22:19:07'),
(69, 252, 253, 'testing 8-17 6:19pm', 1, '2022-08-17 22:19:57', '2022-08-17 22:19:57'),
(70, 253, 252, 'testing block', 1, '2022-08-17 22:21:59', '2022-08-17 22:21:59'),
(71, 141, 211, 'test987', 1, '2022-08-18 05:33:33', '2022-08-18 05:33:33'),
(72, 141, 211, 'gfsgsfdgdfgfdg', 1, '2022-08-18 05:52:06', '2022-08-18 05:52:06'),
(73, 141, 211, 'jhhjdsajfghj', 1, '2022-08-18 05:55:29', '2022-08-18 05:55:29'),
(74, 141, 211, 'hdghdsfhgdhfgfhfghfghgh', 1, '2022-08-18 06:05:36', '2022-08-18 06:05:36'),
(75, 141, 211, '123', 1, '2022-08-18 06:21:00', '2022-08-18 06:21:00'),
(76, 211, 141, 'jjhjj', 1, '2022-08-18 06:23:07', '2022-08-18 06:23:07'),
(77, 141, 211, 'xuy', 1, '2022-08-18 06:52:02', '2022-08-18 06:52:02'),
(78, 233, 168, 'dsds', 0, '2022-08-18 08:53:18', '2022-08-18 08:53:18'),
(79, 233, 168, 'zX', 0, '2022-08-18 08:53:23', '2022-08-18 08:53:23'),
(80, 141, 149, 'hi', 1, '2022-08-18 09:17:03', '2022-08-18 09:17:03'),
(81, 141, 149, 'hello', 0, '2022-08-18 09:17:47', '2022-08-18 09:17:47'),
(82, 141, 149, 'hi', 0, '2022-08-18 09:18:03', '2022-08-18 09:18:03'),
(83, 141, 149, 'ok ok', 0, '2022-08-18 09:19:12', '2022-08-18 09:19:12'),
(84, 141, 211, 'fgfhfg', 0, '2022-08-18 11:54:06', '2022-08-18 11:54:06'),
(85, 141, 238, NULL, 0, '2022-08-18 11:58:22', '2022-08-18 11:58:22'),
(86, 236, 211, 'hiii...', 0, '2022-08-22 07:05:33', '2022-08-22 07:05:33'),
(87, 141, 211, 'test...', 0, '2022-08-22 07:08:33', '2022-08-22 07:08:33'),
(88, 142, 154, 'omkmkllklk', 0, '2022-08-22 11:40:07', '2022-08-22 11:40:07'),
(89, 142, 246, 'hi', 0, '2022-08-23 05:07:56', '2022-08-23 05:07:56'),
(90, 141, 234, 'hi', 0, '2022-08-23 05:09:38', '2022-08-23 05:09:38'),
(91, 142, 141, 'hello', 1, '2022-08-23 05:10:05', '2022-08-23 05:10:05'),
(92, 141, 234, 'kk5', 0, '2022-08-23 05:10:54', '2022-08-23 05:10:54'),
(93, 142, 141, 'ki', 1, '2022-08-23 05:11:40', '2022-08-23 05:11:40');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_13_085333_create_register_table', 2),
(6, '2021_09_16_121407_table_admins_table', 3),
(7, '2021_09_16_131011_f_users', 4),
(8, '2021_09_17_071644_create_vendor_post_job_table', 5),
(9, '2021_09_21_052644_create_skills_table', 6),
(10, '2021_09_21_075720_create_v_profile_table', 7),
(11, '2021_09_22_104702_create_j_profile_table', 8),
(12, '2021_09_22_115811_create__sosial_network', 9),
(13, '2021_09_22_121433_create_j_contect_information', 10),
(14, '2021_09_22_125726_create_r_comp_profile_table', 11),
(15, '2021_09_27_041754_table_all_profile_table', 12),
(16, '2021_09_27_134224_create_table_post_projects_table', 13),
(17, '2021_10_04_083444_create_job_table', 14),
(18, '2021_10_05_071717_create_recruiter_job_table', 15),
(19, '2021_10_08_051738_create_membership_table', 16),
(20, '2021_10_11_072730_create_bids_table', 17),
(21, '2021_10_14_041839_create_stud_test_records_table', 18),
(22, '2021_10_25_064702_create_messages_table', 19),
(23, '2019_10_01_000022_create_friends_table', 20),
(24, '2019_10_01_000023_create_pending_friends_table', 20),
(25, '2019_10_01_000024_create_threads_table', 20),
(26, '2019_10_01_000025_create_participants_table', 20),
(27, '2019_10_01_000026_create_messages_table', 21),
(28, '2019_10_01_000027_create_calls_table', 21),
(29, '2019_10_01_000028_create_call_participants_table', 21),
(30, '2019_10_01_000029_create_message_edits_table', 21),
(31, '2019_10_01_000030_create_thread_invites_table', 21),
(32, '2019_10_01_000031_create_messengers_table', 21),
(33, '2019_10_01_000032_create_message_reactions_table', 21),
(34, '2019_10_01_000033_create_bots_table', 21),
(35, '2019_10_01_000034_create_bot_actions_table', 21),
(36, '2021_12_01_091048_create_reset_password_table', 21),
(37, '2021_12_09_111102_create_chat_table', 22),
(38, '2017_10_16_084042_create_conversations_table', 23),
(39, '2017_10_16_091956_create_messages_table', 24),
(40, '2017_10_21_165446_create_group_conversations_table', 24),
(41, '2017_10_21_172616_create_group_users_table', 24),
(42, '2017_10_25_165610_add_is_accepted_column_to_conversation_table', 24),
(43, '2017_11_07_224816_create_files_table', 24),
(44, '2021_01_27_020911_create_personal_chatrooms_table', 25),
(45, '2021_01_27_021053_create_friendlists_table', 25),
(46, '2021_01_27_021109_create_chats_table', 25),
(47, '2021_02_08_065144_update_chats_table', 25),
(48, '2021_02_10_173632_create_friend_requests_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `news_catogary`
--

CREATE TABLE `news_catogary` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_catogary`
--

INSERT INTO `news_catogary` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'IT1', NULL, '2021-11-01 07:50:28'),
(3, 'news1', NULL, '2022-08-23 04:40:32'),
(4, 'travel', NULL, NULL),
(5, 'food', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thread_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `muted` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `start_calls` tinyint(1) NOT NULL DEFAULT '0',
  `send_knocks` tinyint(1) NOT NULL DEFAULT '0',
  `send_messages` tinyint(1) NOT NULL DEFAULT '1',
  `add_participants` tinyint(1) NOT NULL DEFAULT '0',
  `manage_invites` tinyint(1) NOT NULL DEFAULT '0',
  `manage_bots` tinyint(1) NOT NULL DEFAULT '0',
  `last_read` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(59, 'patelkrishna80240@gmail.com', 'gi8v3bxXPwSmqpD4jKQSYqPI7x6svzWj03oz9GxCoKFaLGx1CZhydpgJ8awDKtSw', '2021-12-01 07:45:52'),
(60, 'patelkrishna80240@gmail.com', 'CkUasgHkRthGAyuYMwt72K0z9xqLRt71IMQvjAWvJkRDQFu84mDtRP7NWHxPs23z', '2021-12-01 22:16:54'),
(61, 'patelkrishna80240@gmail.com', '1R0dXzcKvs0HmirhwOK1Z5RPNjr1XGoTnImM8xF729W2UM1EOYQ60EdNTGePTc6Q', '2021-12-01 22:21:35'),
(62, 'patelkrishna80240@gmail.com', 'Q7Ai1eqlRNcbPX12t47sEV5ILTIi0aRKDGfxUm4XPL2FEDbgpR3R2L4jy6fiR7EH', '2021-12-01 22:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `membership_price` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upgrade_membership` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2' COMMENT '1 for not upgrade, 2 for upgrade	',
  `package_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 for active 1 for deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_release_master`
--

CREATE TABLE `payment_release_master` (
  `project_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `milestone` int(11) NOT NULL,
  `buyer_email` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `payment_email` varchar(255) NOT NULL,
  `amount` varchar(111) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL COMMENT 'Payment Release Request by',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_transaction_master`
--

CREATE TABLE `paypal_transaction_master` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `milestoneid` int(11) NOT NULL,
  `amount` varchar(111) NOT NULL,
  `fee_amount` varchar(111) NOT NULL,
  `net_amount` varchar(111) NOT NULL,
  `type_of_transaction` int(11) NOT NULL COMMENT '1 => Send Amount from Main Account\r\n2 => Received Amount from Main Acount',
  `currency_code` varchar(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `timestamp` date NOT NULL,
  `timezone` varchar(111) NOT NULL,
  `paypal_status` varchar(111) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_chatrooms`
--

CREATE TABLE `personal_chatrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_user` bigint(20) UNSIGNED NOT NULL,
  `second_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rb_contact_privacy_terms`
--

CREATE TABLE `rb_contact_privacy_terms` (
  `id` int(11) NOT NULL,
  `lblname` varchar(250) DEFAULT NULL,
  `lblvalue` text,
  `pgsectioname` int(11) DEFAULT NULL,
  `lblimg` text,
  `lbllink` text,
  `lblremark` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rb_contact_privacy_terms`
--

INSERT INTO `rb_contact_privacy_terms` (`id`, `lblname`, `lblvalue`, `pgsectioname`, `lblimg`, `lbllink`, `lblremark`, `created_at`, `updated_at`) VALUES
(26, 'Legal Disputes', 'PLEASE READ THIS SECTION CAREFULLY. EXCEPT AS THE TERMS AND CONDITIONS OTHERWISE PROVIDE, YOU WAIVE YOUR RIGHTS TO TRY ANY CLAIM IN COURT BEFORE A JUDGE OR JURY AND TO BRING OR PARTICIPATE IN ANY CLASS, COLLECTIVE, OR OTHER REPRESENTATIVE ACTION.', 2, NULL, NULL, NULL, '2022-01-03 12:38:30', '2022-01-03 12:38:30'),
(27, 'Agreement to Binding Arbitration', 'Any dispute, claim, or controversy between you and The Company, its agents, employees, officers, directors, principals, successors, assigns, subsidiaries, or affiliates (collectively for purposes of this section, \'The Company\') arising from or relating in any way to: (1) these Terms and Conditions and their interpretation or the breach, termination or validity thereof, and the relationships which result from these Terms and Conditions; (2) your use of any website owned or operated by The Company and its affiliated brands; or (3) any products or services sold or distributed by The Company and its affiliated brands or through any website owned or operated by The Company and its affiliated brands (collectively, “Covered Disputes”) will be resolved by binding arbitration, rather than in court.\r\nThe arbitrator also has the sole authority to, and shall address all claims or arguments by both parties concerning the formation, legality, and enforceability of this arbitration clause, the scope of this clause, and the arbitrability of any claim or issue arising between us.\r\nThere is no judge or jury in arbitration, and court review of an arbitration award is limited. However, an arbitrator can award on an individual basis the same damages and relief as a court (including injunctive and declaratory relief or statutory damages) and must follow the terms of these Terms and Conditions as a court would.', 5, NULL, NULL, NULL, '2022-01-03 12:39:31', '2022-01-03 12:39:31'),
(28, 'Sole Exceptions to Arbitration', 'Notwithstanding the foregoing, in lieu of arbitration: (1) either you or The Company can bring an individual claim in small claims court in the United States of America in the State of Florida consistent with any applicable jurisdictional and monetary limits that may apply, provided that it is brought and maintained as an individual claim; and (2) you agree that you or The Company may bring suit in court to enjoin infringement or other misuse of intellectual property rights.', 5, NULL, NULL, NULL, '2022-01-03 12:39:47', '2022-01-03 12:39:47'),
(29, 'Jury Trial and Class Action Waiver', 'Except as the Terms and Conditions otherwise provide, you and The Company acknowledge and agree that you are each waiving the right to a trial by jury and to the litigation of disputes in state or federal courts of general jurisdiction. The parties further agree that any arbitration shall be conducted in their individual capacities only and not as a class action/class arbitration or other representative action, and the parties expressly waive their right to file a class action or seek relief on a class basis. You and The Company may not be plaintiffs or class members in any purported class, collective, private attorney general, or representative proceeding, or otherwise make or proceed with any claim on a collective or consolidated basis, and may each bring claims against the other only in your or its individual capacity. The arbitrator may award declaratory or injunctive relief only on an individual basis and only to the extent necessary to provide relief warranted by the individual claim. Other rights that you would have if you went to court, such as access to discovery, also may be unavailable or limited in arbitration.', 5, NULL, NULL, NULL, '2022-01-03 12:40:06', '2022-01-03 12:40:06'),
(30, 'Governing Law', 'You and The Company agree that any claim between us involves commerce under, and is governed exclusively by, the Federal Arbitration Act (\"FAA\") and federal law, and not by any state or local laws, or the laws of other countries, concerning or purporting to place limits on the availability or scope of arbitration or in any way imposing requirements beyond or inconsistent with those set forth in the FAA. Where otherwise applicable, the laws of the State of Florida apply.', 5, NULL, NULL, NULL, '2022-01-03 12:40:24', '2022-01-03 12:40:24'),
(31, 'Initiating Arbitration and Arbitration Rules', 'Prior to initiating any arbitration, the initiating party will give the other party at least 60-days\' advance written notice of its intent to file for arbitration. The Company will provide such notice by email to your e-mail address on file with The Company and you must provide such notice by email to legal@researchblend.com. During such 60-day notice period, the parties will endeavor to settle amicably by mutual discussions any Covered Disputes. Failing such amicable settlement and expiration of the notice period, either party may initiate arbitration.\r\nAny arbitration will be held before a single neutral arbitrator and will be governed by the Consumer Arbitration Rules and the Consumer Due Process Protocol (collectively, \"AAA Rules\") of the American Arbitration Association (\"AAA\") as currently in effect, and as modified by this Agreement, and will be administered by the AAA. The AAA Rules are available online at https://www.adr.org/consumer, by calling the AAA at 800-778-7879, or by writing to the AAA Notice Address set forth below. To the extent that there is a conflict between this clause and the AAA Rules, the arbitrator shall resolve such conflicts so as to preserve the parties’ mutual obligation to arbitrate claims on an individual basis.\r\nTo begin an arbitration proceeding, you must send a letter requesting arbitration and describing your claim to the AAA and to legal@researchblend.com. The AAA’s address is: American Arbitration Association Case Filing Services, 1101 Laurel Oak Road, Suite 100, Voorhees, NJ 08043 (the “AAA Notice Address”). You may also send a copy to the AAA online at https://www.adr.org.\r\nYou may choose to have the arbitration conducted by telephone or web conference, based on written submissions, or in person in Palm Beach County in the State of Florida or at another mutually agreed location.', 5, NULL, NULL, NULL, '2022-01-03 12:40:56', '2022-01-03 12:40:56'),
(32, 'Arbitration Fees', 'Payment of all filing, administration and arbitrator fees will be governed by the AAA\'s rules. In general, the Arbitration Fees are to be paid by the losing party.', 5, NULL, NULL, NULL, '2022-01-03 12:41:12', '2022-01-03 12:41:12'),
(33, 'Other', 'To the extent that any other provision of the Terms and Conditions is found to be inconsistent with rights, duties, and requirements of this arbitration agreement, or where the application of such a provision would change or render unenforceable any part of this arbitration agreement, such provision shall be null and void and the terms of this arbitration agreement shall control.', 5, NULL, NULL, NULL, '2022-01-03 12:41:32', '2022-01-03 12:41:32'),
(34, 'Termination', 'Your ability to access and use the Website remains in effect until terminated in accordance with these Terms and Conditions. You agree that The Company, in its sole discretion, may terminate your account and your use of the Website and may remove and delete your User Content if The Company believes that you have violated or acted inconsistently with these Terms and Conditions or for any other reason. The Company also may in its sole discretion and at any time discontinue providing the Website, or any part thereof, with or without notice. You agree that any termination of your access to the Website may be effected without prior notice and you acknowledge and agree that The Company may bar any further access to the Website. Further, you agree that The Company will not be liable to you or any third-party for any termination of access to the Website.\r\nFor instructions for deleting your account, please see the \"Registering for the Service\" section of our Privacy Policy.\r\nThe provisions of the Intellectual Property Rights, User-Generated Content, Acceptable Use Policy, Disclaimer of Warranties, Indemnity, Limitation of Liability, Legal Dispute sections, together with and any other rights and obligations which by their nature are reasonably intended to survive such termination, will survive any termination of these Terms and Conditions.', 5, NULL, NULL, NULL, '2022-01-03 12:41:50', '2022-01-03 12:41:50'),
(35, 'Right to Access', 'YOU MUST BE AT LEAST AGE 13 TO USE THE SITES. By using the Website, you affirm that you are over age 13. If you are under age 13, you may not access or use the Website.\r\nIF YOU ARE A PARENT OR GUARDIAN THAT PROVIDES CONSENT TO YOUR TEENAGER\'S REGISTRATION WITH AND USE OF THE SITES, YOU AGREE TO BE BOUND BY THESE TERMS IN RESPECT OF SUCH TEENAGER\'S USE OF THE SITES.', 5, NULL, NULL, NULL, '2022-01-03 12:42:06', '2022-01-03 12:42:06'),
(36, 'Outages', 'The Company periodically schedules system downtime for the Website for maintenance and other purposes. Unplanned system outages also may occur. You agree that The Company has no responsibility and is not liable for: \r\n(a)	the unavailability of any of the Website; \r\n(b)	any loss of data, information or materials caused by such system outages; \r\n(c)	the resultant delay, mis-delivery or non-delivery of data, information or materials caused by such system outages; or \r\n(d)	any outages caused by any third parties, including without limitation any companies or servers hosting any of the Website, any Internet service providers or otherwise.', 5, NULL, NULL, NULL, '2022-01-03 12:42:49', '2022-01-03 12:42:49'),
(37, 'Jurisdictional Issues', 'The Website is operated by The Company from its offices in Jupiter, Florida USA. The Company makes no representations or warranties that the Website or any materials contained in them are valid, appropriate or available for use outside of the United States. If you access and use the Website outside the United States, you do so at your own risk and are responsible for compliance with applicable local laws. The Company reserves the right to limit the availability of the Website and/or the provision of any service, program or other product described thereon to any person, geographic area or jurisdiction, at any time and in our sole discretion. Any software on the Website is subject to United States export controls and may not be downloaded or otherwise exported or re-exported into any country to which the United States has embargoed goods or which is subject to other applicable U.S. trade sanctions or to anyone on the U.S. Treasury Department\'s list of Specially Designated Nationals or the U.S. Commerce Department\'s Table of Deny Orders. By downloading or using any software from the Website, you represent and warrant that you are not located in, under the control of, or a national or resident of any such country or on any such list.', 5, NULL, NULL, NULL, '2022-01-03 12:43:07', '2022-01-03 12:43:07'),
(38, 'Overview', 'Research Blend responds to copyright complaints submitted under the Digital Millennium Copyright Act (“DMCA”). Section 512 of the DMCA outlines the statutory requirements necessary for formally reporting copyright infringement, as well as providing instructions on how an affected party can appeal a removal by submitting a compliant counter-notice.\r\nResearch Blend will respond to reports of alleged copyright infringement, such as allegations concerning the unauthorized use of a copyrighted image as a profile or header photo, allegations concerning the unauthorized use of a copyrighted video or image uploaded to our Website. (See our Fair Use Policy for more information).\r\nIf you are concerned about the use of your brand or entity’s name, please review Research Blend’s trademark policy.', 6, NULL, NULL, NULL, '2022-01-03 12:44:04', '2022-01-03 12:44:04'),
(39, 'Am I a copyright holder? How do I know?', 'If you are unsure whether you hold rights to a particular work, please consult an attorney. Research Blend cannot provide legal advice.', 6, NULL, NULL, NULL, '2022-01-03 12:44:25', '2022-01-03 12:44:25'),
(40, 'What to consider before submitting a copyright complaint', 'Before submitting a copyright complaint to us, please consider whether or not the use could be considered fair use. \r\nIf you still wish to continue with a copyright complaint, we suggest to first reach out to the user in question to see if you can resolve the matter directly. You can reply to the user’s name or send the user a Direct Message and ask for them to remove your copyrighted content without having to contact Research Blend. \r\nPrior to submitting a formal complaint with Research Blend, please be aware that under 17 U.S.C. § 512(f), you may be liable for any damages, including costs and attorneys’ fees incurred by us or our users if you knowingly materially misrepresent that material or activity is infringing. If you are unsure whether the material you are reporting is in fact infringing, you may wish to contact an attorney before filing a notification with Research Blend.', 6, NULL, NULL, NULL, '2022-01-03 12:45:14', '2022-01-03 12:45:14'),
(41, 'What information do you need to process a copyright complaint?', 'To submit a notice of claimed copyright infringement, you will need to submit a form that complies with DMCA. You can report alleged copyright infringement by visiting Research Blend’s Help Center and filing a copyright complaint.\r\nFiling a DMCA complaint is the start of a pre-defined legal process. Your complaint will be reviewed for accuracy, validity, and completeness. If your complaint has satisfied these requirements, we will take action on your request - which includes forwarding a full copy of your notice (including your information included in the complaint to the user(s) who posted the allegedly infringing material in question.\r\nPlease be aware that under 17 U.S.C. § 512(f), you may be liable for any damages, including costs and attorneys’ fees incurred by us or our users, if you knowingly materially misrepresent that material or activity is infringing. If you are unsure whether the material you are reporting is in fact infringing, you may wish to contact an attorney before filing a copyright complaint.', 6, NULL, NULL, NULL, '2022-01-03 12:45:29', '2022-01-03 12:45:29'),
(42, 'What happens next?', 'Research Blend’s response to copyright complaints may include the removal or restriction of access to allegedly infringing material. If we remove or restrict access to user content in response to a copyright complaint, Research Blend will make a good faith effort to contact the affected account holder with information concerning the removal or restriction of access, including a full copy of the complaint, along with instructions for filing a counter-notice.\r\nIf you’ve not yet received a copy of the copyright complaint regarding the content removed from your account, please respond to the support ticket we sent you.', 6, NULL, NULL, NULL, '2022-01-03 12:46:04', '2022-01-03 12:46:04'),
(43, 'Why did I receive a copyright complaint?', 'If you receive a copyright complaint, it means that someone has challenged your right to include it on our Website. Please take the time to thoroughly read through our correspondence to you, which includes information on the complaint we received as well as instructions on how to file a counter-notice. Please ensure that you are monitoring the email address associated with your Research Blend account.\r\nPlease note: Removing the material reported in a copyright complaint will not resolve that complaint.', 6, NULL, NULL, NULL, '2022-01-03 12:46:44', '2022-01-03 12:46:44'),
(44, 'How do I seek a retraction?', 'The DMCA complaint you received includes the contact information of the reporter. You may want to reach out and ask them to retract their notice.  This is the fastest and most efficient means of resolving an unresolved copyright complaint. A retraction is at the sole discretion of the original reporter.', 6, NULL, NULL, NULL, '2022-01-03 12:46:57', '2022-01-03 12:46:57'),
(45, 'Can I contest the takedown? What is a counter-notification?', 'Yes. If you believe that the materials reported in the copyright complaints were removed in error, you may send us a counter-notification(s). Alternatively, you may be able to seek a retraction of the copyright complaint from the reporter. A counter-notice is a request for Research Blend to reinstate the removed material and is the start of a legal process that has legal consequences.  If you’re unsure whether or not you should file a counter-notice, you may want to consult with an attorney.', 6, NULL, NULL, NULL, '2022-01-03 12:47:39', '2022-01-03 12:47:39'),
(46, 'What information do you need to process a counter-notice?', 'To submit a counter-notice, you will need to fill out the form found here.', 6, NULL, NULL, NULL, '2022-01-03 12:47:54', '2022-01-03 12:47:54'),
(47, 'What happens after I submit a counter-notice?', 'Upon receipt of a valid counter-notice, we will promptly forward a copy to the person who filed the original notice. This means that the contact information that is submitted in your counter-notice will be shared to the person who filed the original notice. \r\nIf the copyright owner disagrees that the content was removed in error or misidentification, they may pursue legal action against you.  If we do not receive notice within 10 business days that the original reporter is seeking a court order to prevent further infringement of the material at issue, we may replace or cease disabling access to the material that was removed.\r\nWe cannot offer any legal advice. Should you have questions, please consult an attorney.', 6, NULL, NULL, NULL, '2022-01-03 12:48:19', '2022-01-03 12:48:19'),
(48, 'Log Files', 'Researchblend.com follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and it is a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.', 2, NULL, NULL, NULL, '2022-01-03 12:49:16', '2022-01-03 12:49:16'),
(49, 'Cookies and Web Beacons', 'Like any other website, Researchblend.com uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the user’s experience by customizing our web page content based on visitors\' browser type and/or other information.', 2, NULL, NULL, NULL, '2022-01-03 12:49:35', '2022-01-03 12:49:35'),
(50, 'Google DoubleClick DART Cookie', 'Google is one of the third-party vendors on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.researchblend.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL – https://policies.google.com/technologies/ads\r\nSome of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.\r\n•	Google\r\nhttps://policies.google.com/technologies/ads\r\nThird-party ad servers or ad networks use technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Researchblend.com, which are sent directly to the user’s browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.\r\nNote that Researchblend.com has no access to, or control over, these cookies that are used by third-party advertisers.', 2, NULL, NULL, NULL, '2022-01-03 12:50:12', '2022-01-03 12:50:12'),
(51, 'Third Party Privacy Policies', 'Researchblend.com\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.\r\nYou can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites. What Are Cookies?', 2, NULL, NULL, NULL, '2022-01-03 12:50:30', '2022-01-03 12:50:30'),
(52, 'Children\'s Information', 'Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.\r\nResearchblend.com does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will use our best efforts to promptly remove such information from our records.', 2, NULL, NULL, NULL, '2022-01-03 12:50:45', '2022-01-03 12:50:45'),
(53, 'Online Privacy Policy Only', 'This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Researchblend.com. This policy is not applicable to any information collected offline or via channels other than this website.\r\nIn the event that any provision of this Policy is determined to be illegal or unenforceable, the balance of the Policy shall continue to be fully valid, binding, and enforceable.', 2, NULL, NULL, NULL, '2022-01-03 12:51:06', '2022-01-03 12:51:06'),
(54, 'Consent', 'By using our website, you hereby consent to our Privacy Policy and agree to its Terms and Conditions.', 2, NULL, NULL, NULL, '2022-01-03 12:51:20', '2022-01-03 12:51:20'),
(55, 'Terminology', 'The following terminology applies to these Terms and Conditions, Privacy Policy, Copyright Policy, Intellectual Property Policy, Trademark Policy and Disclaimer Notice and all Agreements: \r\n(a)	Research Blend LLC (“Company”) provides the www.Researchblend.com website, portal and the website-related services (collectively, the \"Website\") subject to your compliance with the terms and conditions set forth in this Terms of Use Agreement (\"Terms of Use\"). \r\n(b)	“Research Blend,” “ResearchBlend.com,” \"Company,\" \"we,\" \"us\", \"The Company\", \"Ourselves\" refers to our Company. \r\n(c)	\"Client\", \"You\" and \"Your\" refers to you, the person to log on this website and compliant to the Company’s terms and conditions.\r\n(d)	\"Party\" or \"Parties\" refers to both the Client and ourselves.\r\nAny use of the above terminology or other words in the singular, plural, capitalization, a hyphen or space between words, dash and/or he/she or they, are taken as interchangeable and therefore as referring to same.', 3, NULL, NULL, NULL, '2022-01-03 12:52:00', '2022-01-03 12:52:00'),
(56, 'Agreement', 'All terms refer to the offer, acceptance, and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of the United States and/or the State of Florida. \r\nYour use of the Website and Materials (as defined below) contained on the Website is conditioned on your acceptance without modification of the terms, conditions, and notices contained in the Terms and Conditions Policy, Arbitration and Legal Dispute Policy, Privacy Policy, Trademark Policy, and Copyright Policy which shall collectively be referred to herein as the \"Terms of Use\" unless specifically stated otherwise. By using the Website you agree to the Terms of Use and to abide by all rules, terms, conditions, restrictions and notices therein.', 3, NULL, NULL, NULL, '2022-01-03 12:52:21', '2022-01-03 12:52:21'),
(57, 'Privacy and Security', 'Please review our Privacy Policy, which is incorporated into these Terms and Conditions and also governs your use of the Website. To the extent there is a conflict between the terms of the Privacy Policy and these Terms and Conditions, the Terms and Conditions govern.\r\nInformation security is important to the Company. We have established appropriate physical, electronic and managerial safeguards to protect the information that we collect from or about our users. The Company does, however, reserve the right at all times to disclose any information as Company deems necessary to satisfy any applicable law, regulation, legal process or governmental request.', 3, NULL, NULL, NULL, '2022-01-03 12:52:36', '2022-01-03 12:52:36'),
(58, 'Changes', 'Company reserves the right at any time to:\r\n(a)	Change the Terms of Use at any time;\r\n(b)	Change the Website, including terminating, eliminating, supplementing, modifying, adding to or discontinuing any content, promotion, data on or feature of the Website or the hours that the Website is available; or\r\n(c)	Change any fees or charges in connection with the use of the Website.\r\nAny changes we make to the Terms of Use will be effective immediately upon notice, which we may provide by any means including, without limitation, posting on the Website and/or email. Your continued use of the Website after such notice will be deemed acceptance of such changes. We highly recommend returning to this page periodically to ensure familiarity with the most current version of the Terms of Use. Upon our request, you agree to sign a non-electronic version of the Terms of Use.', 3, NULL, NULL, NULL, '2022-01-03 12:53:01', '2022-01-03 12:53:01'),
(59, 'Cookies', 'We employ the use of cookies. By accessing Researchblend.com, you agreed to use cookies in agreement with the Researchblend.com\'s Privacy Policy.\r\nMost interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.', 3, NULL, NULL, NULL, '2022-01-03 12:53:30', '2022-01-03 12:53:30'),
(60, 'License', 'Unless otherwise stated, Researchblend.com and/or its licensors own the intellectual property rights for all material on Researchblend.com. All intellectual property rights are reserved. You may access this from Researchblend.com for your own personal use subjected to restrictions set in these terms and conditions.\r\nYou must not:\r\n(a)	Republish material from Researchblend.com\r\n(b)	Sell, rent or sub-license material from Researchblend.com\r\n(c)	Reproduce, duplicate or copy material from Researchblend.com\r\n(d)	Redistribute content from Researchblend.com\r\nThis Agreement shall begin on the date hereof.\r\nParts of this website may offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Researchblend.com does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Researchblend.com, its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Researchblend.com shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.\r\nResearchblend.com reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.\r\nYou warrant and represent that:\r\n(a)	You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;\r\n(b)	The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;\r\n(c)	The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy\r\n(d)	The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.\r\nYou hereby grant Researchblend.com a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.', 3, NULL, NULL, NULL, '2022-01-03 12:54:04', '2022-01-03 12:54:04'),
(61, 'Hyperlinking to our Content', 'The Company has the following policies in regards to hyperlinking to our Website and Content. However, the Company reserves the right to approve or disapprove hyperlinking at its own discretion for any reason or no reason. \r\n(a)	The following organizations may link to our Website without prior written approval:\r\n1.	Government agencies;\r\n2.	Search engines;\r\n3.	News organizations;\r\n4.	Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and\r\n5.	System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.\r\n(b)	These organizations may link to our home page, to publications or to other Website information so long as the link: \r\n1.	is not in any way deceptive; \r\n2.	does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and \r\n3.	fits within the context of the linking party’s site.\r\n\r\n(c)	We may consider and approve other link requests from the following types of organizations:\r\n1.	commonly-known consumer and/or business information sources;\r\n2.	dot.com community sites;\r\n3.	associations or other groups representing charities;\r\n4.	online directory distributors;\r\n5.	internet portals;\r\n6.	accounting, law and consulting firms; and\r\n7.	educational institutions and trade associations.\r\n(d)	We will approve link requests from these organizations if we decide, in our sole discretion, that: \r\n1.	the link would not make us look unfavorably to ourselves or to our accredited businesses; \r\n2.	the organization does not have any negative records with us; and \r\n3.	the link is in the context of general resource information.\r\n\r\n(e)	These organizations may link to our home page so long as the link: \r\n1.	is not in any way deceptive; \r\n2.	does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and \r\n3.	fits within the context of the linking party’s site.\r\n\r\n(f)	If you are one of the organizations listed above and are interested in linking to our website, you must inform us by sending an e-mail to hyperlink@Researchblend.com. Please include: \r\n1.	your name\r\n2.	your organization name\r\n3.	contact information\r\n4.	the URL of your site\r\n5.	a list of any URLs from which you intend to link to our Website\r\n6.	a list of the URLs on our site to which you would like to link. \r\n\r\nPlease allow 2-3 weeks for a response.\r\n\r\n(g)	Approved organizations may hyperlink to our Website as follows:\r\n1.	By use of our corporate name; or\r\n2.	By use of the uniform resource locator being linked to; or\r\n3.	By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.\r\n(h)	No use of Researchblend.com\'s logo or other artwork will be allowed for linking absent a trademark license agreement.', 3, NULL, NULL, NULL, '2022-01-03 12:54:51', '2022-01-03 12:54:51'),
(62, 'iFrames', 'Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.', 3, NULL, NULL, NULL, '2022-01-03 12:55:11', '2022-01-03 12:55:11'),
(63, 'Materials and Content', 'The information, content and materials provided through the Website, including without limitation, any information, data, text, links, graphics, photos, images, audio, videos, video clips, logos, icons, lessons, educational material, software or links (collectively, the \"Materials\") are intended to educate and inform you about us, our business and the services that we provide. Unless otherwise specified on the Website, you may download or print Materials displayed on the Website and may use the downloaded or printed Material solely for your own personal use, the use of colleagues in your office, provided that they agree to be bound by these Terms of Use, and for the purpose of sending requests for information (RFI), answering requests for proposal (RFP) and to solicit proposals for specific projects from companies listed in our Website. You must retain all copyright and other proprietary notices on downloaded, printed and copied Materials, and any such downloads or copies are subject to the terms and conditions of these Terms of Use. \r\nThe Materials remain the property of the Company or its licensors or suppliers. Use, printing or downloading of the Materials is conditioned on acceptance of the terms and conditions of any license agreements relating to such Materials, including agreements of third parties. By acquiring or using the Materials, you agree to any such terms and conditions. \r\nYou may not download, print, copy or use any of the Materials except as expressly authorized by these Terms of Use and, in any event, you may not distribute, modify, transmit or publicly display the Materials without the written consent of the Company or, if so indicated in writing by the Company, its licensors or suppliers. \r\nAlthough the Company strives to provide Content and Materials that are both useful and accurate, data and other information change frequently and are subject to varying interpretations. Although the Company endeavors to use reasonable care in assembling the Materials, the Materials may not be up-to-date, accurate or complete. Portions of the Materials may have been contributed to the Website by various third parties and service providers. The inclusion of such information does not indicate any approval or endorsement of such providers, and the Company expressly disclaims any liability with respect to the foregoing.\r\nYou acknowledge and agree that your use of the Internet and access to the Website is solely at your own risk. You further understand and agree that the confidentiality of any communication or material transmitted to/from the Website over the Internet or other form of global communication network cannot be guaranteed.', 3, NULL, NULL, NULL, '2022-01-03 12:55:36', '2022-01-03 12:55:36'),
(64, 'Third Party Sites and Information', 'In various parts of the Website, there may contain links or content to third-party websites. You understand and agree:\r\n(a)	Content, videos, posts and any other materials on third-party and/or linked websites are not under the control of the Company. \r\n(b)	The Company is not responsible for the contents of any linked website. \r\n(c)	The Company is not responsible for webcasting or any other form of transmission received from any linked site, nor is the Company responsible if the linked site is not functioning properly. \r\n(d)	The Company is providing these links to you merely as a convenience, and the inclusion of any link does not imply endorsement by the Company of any third-party, third-party website or any association with the operators of same. \r\n(e)	You are responsible for viewing and abiding by the privacy statements and terms of use posted at any third-party linked website.', 3, NULL, NULL, NULL, '2022-01-03 12:56:05', '2022-01-03 12:56:05'),
(65, 'Contracts, Engagements or Dealings with Third Parties', 'In various parts of the Website, there may opportunities to engage, contract or have dealings with third-party parties. You understand and agree:\r\n(a)	Any Contracts, Engagements or Dealings with third parties, such as market research companies, focus group facilities, employers, sponsors, advertisers, recruiters, recruiting companies included within or on the Website or linked or connected to the Website or participation in promotions involving the delivery of and payment for goods and services, or any other terms, conditions, warranties, or representations associated with such third parties, are solely between you and that third party. \r\n(b)	The Company is neither responsible nor liable for any part of such Contracts, Engagements or Dealings or Promotions, with exception of payment processing, if such an arrangement has been setup. \r\n(c)	Any reference to any market research company, focus group facility, employer, sponsor, advertiser or any other third party on the Website does not constitute an endorsement or recommendation of such third party by the Company or any of its employees, officers, agents or other representatives.\r\n(d)	Any reference to any third party on the Website is provided to you for informational purposes only. \r\n(e)	The Company encourages you, and you agree, to conduct your own research and due diligence in deciding whether or not to use any of the services provided by any of the third parties listed or provided by the Website. \r\n(f)	While the Company works to ensure the information on the Website is current and accurate, the Company does not warrant the accuracy of any information contained on the Website or its fitness for any particular purpose or project', 3, NULL, NULL, NULL, '2022-01-03 12:56:25', '2022-01-03 12:56:25'),
(66, 'Content Liability', 'We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that arise on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.', 3, NULL, NULL, NULL, '2022-01-03 12:56:41', '2022-01-03 12:56:41'),
(67, 'Reservation of Rights', 'We reserve the right to request that you remove all links or any particular link to our Website. You agree to immediately remove all links to our Website upon request. We also reserve the right to amend these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.', 3, NULL, NULL, NULL, '2022-01-03 12:56:56', '2022-01-03 12:56:56'),
(68, 'Removal Of Links From Our Website', 'If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.\r\nWe do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.', 3, NULL, NULL, NULL, '2022-01-03 12:57:13', '2022-01-03 12:57:13'),
(69, 'Your Account, Information, Postings, User Content, Usernames & Passwords', 'To access certain areas of or participate in certain activities contained on the Website, to use or engage with particular content, access some third parties, or products or services on the Website, you may require the opening of a membership account or other type of account. Use of such accounts is subject to additional terms of use and other rules and regulations. In these instances, you are required to review and agree to such additional terms of use and other rules and regulations prior to establishing any membership or other accounts through the Website. This may require you to provide us with certain information about you (e.g., your company name, your name and email address). Providing us with your personal information is your choice. Each time you decide to provide us with your personal information, you understand and agree to: \r\n(a)	provide accurate, current and complete information about yourself as prompted by our registration form (including your current email address), and \r\n(b)	provide your company email address, if you have one, and\r\n(c)	update, maintain and keep your information (including your email address) accurate, current and complete, and\r\n(d)	you acknowledge that, if any information provided by you is untrue, inaccurate, not current or incomplete, we have the right to immediately terminate the Terms of Use and your use of the Website (or any portion thereof) or your participation in any activity contained on the Website.\r\n\r\nIn order to access certain areas of or participate in certain activities contained on the Website, we may require you to select a username and password. You understand and agree:\r\n(e)	We may refuse to grant you a username that impersonates someone else, is or may be illegal, is misleading in its nature, is or may be protected by trademark or other proprietary rights law, is vulgar or otherwise offensive, or may cause confusion, or for any other reason as determined by us in our sole discretion. \r\n(f)	You are and will be responsible for the confidentiality and use of your username and password and agree not to transfer or resell your right to use or access to the Website or participate in any activities contained on the Website to any third person or party. \r\n(g)	If you have reason to believe that your username or password is no longer secure, you must: (i) promptly change your password by visiting the Website, and (ii) immediately notify us of the problem by contacting us at: privacy@Researchblend.com.\r\n\r\nYOU ARE ENTIRELY RESPONSIBLE FOR MAINTAINING THE CONFIDENTIALITY OF YOUR USERNAME OR EMAIL AND PASSWORD AND FOR ANY AND ALL ACTIVITIES (INCLUDING USE OF THE SERVICES ON THIS WEBSITE, AS APPLICABLE) THAT ARE CONDUCTED THROUGH THE USE OF YOUR USERNAME OR EMAIL AND PASSWORD.', 3, NULL, NULL, NULL, '2022-01-03 12:57:42', '2022-01-03 12:57:42'),
(70, 'Forms and Submissions', 'We may host message boards and other forums found on the Website, including, but not limited to, job boards, projects, project requests (collectively, the \"Forums\") and, therefore, redistribute materials you give to us, we require certain rights in those materials. You understand and agree:\r\n(a)	For any submission sent, email or otherwise transmitted in any manner, such as sending suggestions, information, data, photos, graphics, creative suggestions, ideas, notes, concepts, information, resumes or other materials (collectively, \"Submissions\") you grant us and our designees a worldwide, non-exclusive, sublicensable (through multiple tiers), assignable, royalty-free, perpetual, irrevocable right to use, reproduce, distribute (through multiple tiers), create derivative works of, publicly perform, publicly display, digitally perform, make, have made, sell, offer for sale and import such Submissions in any media now known or hereafter developed, for any purpose whatsoever, commercial or otherwise, without compensation to you or the provider of the Submissions.\r\n(b)	You also grant the Company and its affiliates and sublicensees the right to use the name that you submit in connection with such Submissions if they so choose. \r\n(c)	You represent and warrant that you own or otherwise control all of the rights to the content that you post; that the content is accurate; that use of the content you supply does not violate these Terms of Use and will not cause injury to any person or entity; and that you will indemnify the Company or its affiliates for all claims resulting from Submissions you supply.\r\n(d)	You agree Company takes no responsibility and assumes no liability for any Submissions posted by you or any third party. \r\n(e)	You agree the Company takes no responsibility and assumes no liability for any Submissions posted by any third party. \r\n(f)	You understand and agree none of the Submissions will be subject to any obligation, whether of confidentiality, attribution or otherwise, on our part and we will not be liable for any use or disclosure of any Submissions. \r\n(g)	You understand and agree Information and Submissions contained on our Forums may be provided by persons not affiliated with us. \r\n(h)	You acknowledge that a large volume of information is available in our Forums and that people, organizations and other entities participating in such Forums occasionally post Submissions or posts or make statements, whether intentionally or unintentionally, that are inaccurate, misleading, illegal or deceptive. We neither endorse nor are responsible for such Submissions or statements, or for any opinion, advice, information or other utterance made or displayed on the Website or Forums by third persons or parties. The opinions expressed in the Forums reflect solely the opinion(s) of the participants of the Forums and may not reflect the opinion(s) of the Company. You agree We are not responsible for any errors or omissions in articles or postings, for hyperlinks embedded in Submissions or for any results obtained from the use of any such statements or information. \r\n(i)	You understand and agree under no circumstances will we or our affiliates, suppliers or agents be liable for any loss or damage caused by your reliance on the Submissions or on any information or materials obtained through the Website. \r\n(j)	You understand and agree We have no obligation to monitor the Website or the Forums, or any Submissions or other materials that you or other third persons or parties transmit or post on the Website or the Forums. \r\n(k)	The Company has the right, but not the obligation, to monitor and edit or remove any Submission activity or content. \r\n\r\nYou hereby agree and acknowledge that no Submission or contribution you make to the Website or a Forum will contain: \r\n(l)	any content or information that is unlawful, fraudulent, threatening, abusive, libelous, defamatory, obscene, contains any nudity or is otherwise objectionable, contains images or information about persons other than yourself or infringes our or any third party\'s intellectual property or other rights; \r\n(m)	any material, non-public information or secret about companies without the authorization to do so; \r\n(n)	any trade secret of any third party; or \r\n(o)	any advertisements, solicitations, chain letters, pyramid schemes, investment opportunities or other unsolicited commercial communications (except as otherwise expressly permitted by us).', 3, NULL, NULL, NULL, '2022-01-03 12:58:09', '2022-01-03 12:58:09');
INSERT INTO `rb_contact_privacy_terms` (`id`, `lblname`, `lblvalue`, `pgsectioname`, `lblimg`, `lbllink`, `lblremark`, `created_at`, `updated_at`) VALUES
(71, 'Code of Conduct', 'While using the Website, Content and/or Materials you agree not to:\r\n(a)	Restrict or intimidate any other user\r\n(b)	Restrict or inhibit any other user from using the Website, Content or  Materials without limitation\r\n(c)	Make any attempt to, or cause or encourage anyone or any entity to “hack” or conduct “hacking” of the Website\r\n(d)	Make any attempt to, or cause or encourage anyone or any entity into defacing any portion of the Website;\r\n(e)	Use the Website, Content or Materials for any unlawful purpose\r\n(f)	Use the Website, Content or Materials in any manner not intended by the Company or as contemplated herein and on the Website;\r\n(g)	While using the Website, Content or Materials, engage in rude, unlawful, harassing, vulgar, obscene, hateful, threatening, abusive or otherwise objectionable behavior;\r\n(h)	Institute, or cause or encourage anyone or any entity to institute, an attack upon any server used in connection with the Website or any portion thereof or otherwise attempt to disrupts such servers;\r\n(i)	State, express or imply that any statements you make are approved or endorsed by us, without our prior written consent;\r\n(j)	Transmit, send, email, fax, or otherwise convey: \r\na.	any content or information that is unlawful, illegal, fraudulent, threatening, abusive, libelous, defamatory, attacking, obscene or otherwise objectionable, or infringes our or any third party\'s intellectual property or other rights; \r\nb.	any material, non-public information about companies without the authorization to do so; \r\nc.	any trade secret of any third party; or \r\nd.	any advertisements, solicitations, chain letters, pyramid schemes, investment opportunities or other unsolicited commercial communication (except as otherwise expressly permitted by us);\r\n(k)	Engage in spamming or flooding or the use of spammers;\r\n(l)	Transmit any software, bots, apps or other materials that contain any viruses, worms, Trojan horses, defects, date bombs, time bombs or other items of a destructive nature;\r\n(m)	Modify, adapt, sublicense, translate, sell, reverse engineer, decompile or disassemble all or any portion of the Website, Content or Materials;\r\n(n)	Remove, alter, conceal any copyright, trademark, patent or other proprietary rights notices contained in the Website, Content or Materials;\r\n(o)	\"Frame\" or \"mirror\" any part of the Website without our prior written authorization;\r\n(p)	Link the Website or any content thereon to any third-party website or portion thereof that contains any gambling, gaming, pornographic, obscene, vulgar, illegal or otherwise objectionable or questionable content;\r\n(q)	Use any robot, spider, bot, site search/retrieval application, or other manual or automatic device or process to retrieve, index, \"data mine\" or in any way reproduce, copy or circumvent the navigational structure or presentation of the Website or its contents; or\r\n(r)	Harvest, collect or divulge information about Website users without their express consent.\r\nWhile using the Website, Content or Materials, you agree to comply with all applicable laws, rules and regulations.', 3, NULL, NULL, NULL, '2022-01-03 12:58:31', '2022-01-03 12:58:31'),
(72, 'Disputes and Conflict Resolution', 'Please read the Arbitration and Legal Dispute Policy carefully. Except as the terms and conditions otherwise provide, you waive your rights to try any claim in court before a judge or jury and to bring or participate in any class, collective, or other representative action.  You agree that all disputes will be resolved using the policies and procedures found in the Arbitration and Legal Dispute Policy.', 3, NULL, NULL, NULL, '2022-01-03 12:58:48', '2022-01-03 12:58:48'),
(73, 'Disclaimer', 'All the information on our Website is published in good faith and for general information purpose only. Researchblend.com does not make any warranties about the completeness, reliability and accuracy of this information. Any action you take upon the information you find on this website (Researchblend.com), is strictly at your own risk. Researchblend.com will not be liable for any losses and/or damages in connection with the use of our website.  Further, to the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:\r\n(a)	limit or exclude our or your liability for death or personal injury;\r\n(b)	limit or exclude our or your liability for fraud or fraudulent misrepresentation;\r\n(c)	limit any of our or your liabilities in any way that is not permitted under applicable law; or\r\n(d)	exclude any of our or your liabilities that may not be excluded under applicable law.\r\nFrom our website, you can visit other websites by following hyperlinks to such external sites. While we strive to provide only quality links to useful and ethical websites, we have no control over the content and nature of these sites. These links to other websites do not imply a recommendation for all the content found on these sites. Site owners and content may change without notice and may occur before we have the opportunity to remove a link which may have gone \'bad\'.\r\nPlease be also aware that when you leave our website, other sites may have different privacy policies and terms which are beyond our control. Please be sure to check the Privacy Policies of these sites as well as their \"Terms of Service\" before engaging in any business or uploading any information.\r\nBy using our website, you hereby consent to our disclaimer and agree to its terms as well as all the Terms and Conditions set forth on this page.', 3, NULL, NULL, NULL, '2022-01-03 12:59:07', '2022-01-03 12:59:07'),
(74, 'General Information', 'No waiver of any provision or any breach of this Agreement will constitute a waiver of any other provisions or any other or further breach. In the event that any provision of this Agreement is determined to be illegal or unenforceable, the balance of the Agreement shall continue to be fully valid, binding, and enforceable. \r\nThese Terms and Conditions set forth the entire Agreement between you and The Company with respect to use of the Sites and supersede any prior agreements between you and The Company relating to such subject matter. The Terms are not assignable, transferable or sublicensable by you except with The Company\'s prior written consent. No waiver by either party of any breach or default hereunder will be deemed to be a waiver of any preceding or subsequent breach or default. No agency, partnership, joint venture, employee-employer or franchiser-franchisee relationship is intended or created by these Terms and Conditions. \r\nAny heading, caption or section title contained herein is inserted only as a matter of convenience and in no way defines or explains any section or provision hereof. The Company\'s performance of these Terms and Conditions is subject to existing laws and legal process, and nothing contained in these Terms and Conditions is in derogation of The Company\'s right to comply with governmental, court and law enforcement requests or requirements relating to your use of the Sites or information provided to or gathered by The Company with respect to such use. \r\nA printed version of these Terms and Conditions and of any notices given in electronic form will be admissible in judicial or administrative proceedings based upon or relating to these Terms and Conditions to the same extent and subject to the same conditions as other business documents and records originally generated and maintained in printed form. The parties agree that all correspondence relating to these Terms and Conditions must be written in the English language.', 3, NULL, NULL, NULL, '2022-01-03 12:59:31', '2022-01-03 12:59:31'),
(75, 'Overview', 'You may not violate others’ intellectual property rights, including copyright and trademark.\r\nHere is the United States Patent and Trademark Office definition of a trademark:\r\nA trademark can be any word, phrase, symbol, design, or a combination of these things that identifies your goods or services. It’s how customers recognize you in the marketplace and distinguish you from your competitors.\r\n\r\nThe word “trademark” can refer to both trademarks and service marks. A trademark is used for goods, while a service mark is used for services.\r\n\r\nA trademark:\r\n•	Identifies the source of your goods or services.\r\n•	Provides legal protection for your brand.\r\n•	Helps you guard against counterfeiting and fraud.\r\nA common misconception is that having a trademark means you legally own a particular word or phrase and can prevent others from using it. However, you don’t have rights to the word or phrase in general, only to how that word or phrase is used with your specific goods or services.\r\n\r\nFor example, let\'s say you use a logo as a trademark for your small woodworking business to identify and distinguish your goods or services from others in the woodworking field. This doesn\'t mean you can stop others from using a similar logo for non-woodworking related goods or services.\r\n\r\nAnother common misconception is believing that choosing a trademark that merely describes your goods or services is effective. Creative and unique trademarks are more effective and easier to protect. Read more about strong trademarks', 7, NULL, NULL, NULL, '2022-01-03 13:00:24', '2022-01-03 13:00:24'),
(76, 'How can you be in violation of this policy?', 'If you are using another person’s or entity’s trademark in a way that may mislead or confuse people about your affiliation or connection may be a violation of our trademark policy.', 7, NULL, NULL, NULL, '2022-01-03 13:00:40', '2022-01-03 13:00:40'),
(77, 'What is not a violation of this policy?', 'Referencing another’s trademark is not automatically a violation of Research Blend\'s trademark policy. Examples of non-violations include:\r\nusing a trademark in a way that is outside the scope of the trademark registration e.g., in a different territory, or a different class of goods or services than that identified in the registration; and\r\nusing a trademark in a nominative or other fair use manner. For more information, see our parody, newsfeed, commentary, and fan account policy.', 7, NULL, NULL, NULL, '2022-01-03 13:00:57', '2022-01-03 13:00:57'),
(78, 'Who can report violations of this policy?', 'Research Blend only investigates requests that are submitted by the trademark holder or their authorized representative e.g., a legal representative or other representative for a brand. Copyright notices must comply with the Digital Millennium Copyright Act (DMCA). Note that we may provide your notice of infringement to third parties, including the alleged infringer.', 7, NULL, NULL, NULL, '2022-01-03 13:01:17', '2022-01-03 13:01:17'),
(79, 'How can I report violations of this policy?', 'You can submit a trademark report through our trademark report form. Please provide all the information requested in the form. If you submit an incomplete report, we’ll need to follow up about the missing information. Please note that this will result in a delay in processing your report.\r\nNote: We may provide the account holder with your name and other information included in the copy of the report.\r\n\r\nYou can report suspected violations by clicking this link.', 7, NULL, NULL, NULL, '2022-01-03 13:01:39', '2022-01-03 13:01:39'),
(80, 'What happens if you violate this policy?', 'If we determine that you violated our trademark policy, we may suspend or remove your account. Depending on the type of violation and the severity, we may give you an opportunity to comply with our policies. In other instances, an account may be permanently suspended upon first review. If you believe that your account was suspended in error, you can submit an appeal to our offices.', 7, NULL, NULL, NULL, '2022-01-03 13:01:58', '2022-01-03 13:01:58'),
(81, 'About Us', 'Research Blend is a new global portal connecting the research community to one another. Whether you are looking for a research vendor, searching for additional business, looking to hire or get hired or needing a workspace to keep projects on track, we can help. Every day, we connect the community to new opportunities. Let’s us help.', 4, NULL, NULL, NULL, '2022-01-03 13:03:38', '2022-01-03 13:03:38'),
(82, '98899+', 'nbnnnn nbnn', 1, NULL, NULL, NULL, '2022-08-22 11:44:43', '2022-08-22 11:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_job`
--

CREATE TABLE `recruiter_job` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_job_title_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ven_job_posted_id` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_status` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not_applied',
  `sortlist_or_not` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'o for not sortlist 1 for sortlisted 2 for reject',
  `app_approve_int` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 for not selected 2 for selected',
  `interview_date` datetime DEFAULT NULL,
  `jobseker_sts` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_category` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_not_value` int(11) NOT NULL DEFAULT '1',
  `notification_alert` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `alert_jobseker_value` int(11) NOT NULL DEFAULT '1',
  `notification_of_jobseker` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `notification_alert_admin` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recruiter_job`
--

INSERT INTO `recruiter_job` (`id`, `r_job_title_id`, `r_user_id`, `ven_job_posted_id`, `job_status`, `sortlist_or_not`, `app_approve_int`, `interview_date`, `jobseker_sts`, `job_category`, `alert_not_value`, `notification_alert`, `alert_jobseker_value`, `notification_of_jobseker`, `notification_alert_admin`, `created_at`, `updated_at`) VALUES
(1, '1', '232', '233', 'remove', 2, 1, NULL, NULL, '2', 1, 1, 1, 0, 0, '2022-08-18 08:52:34', '2022-08-16 11:30:36'),
(2, '1', '256', '233', 'applied', 0, 1, NULL, NULL, '2', 1, 0, 1, 0, 0, '2022-08-17 23:18:09', '2022-08-17 23:18:09'),
(3, '5', '143', '142', 'applied', 0, 1, NULL, NULL, '1', 1, 0, 1, 0, 0, '2022-08-23 06:29:15', '2022-08-23 06:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `recruter_block_jobseker`
--

CREATE TABLE `recruter_block_jobseker` (
  `id` int(11) NOT NULL,
  `jobseker_id` varchar(250) NOT NULL,
  `recruter_id` varchar(250) NOT NULL,
  `block_unblock` varchar(250) NOT NULL COMMENT '1 for block, 2 for unblock',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruter_block_jobseker`
--

INSERT INTO `recruter_block_jobseker` (`id`, `jobseker_id`, `recruter_id`, `block_unblock`, `created_at`, `updated_at`) VALUES
(1, '143', '255', '2', '2022-08-17 22:45:15', '2022-08-17 22:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r_comp_profile`
--

CREATE TABLE `r_comp_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_logo_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_logo_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_est_since` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_team_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_multiple_select_box` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_allow_in_search_listing` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_about_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `created_at`, `updated_at`) VALUES
(1, 'qewqe', NULL, NULL),
(2, 'html', NULL, NULL),
(3, 'css', NULL, NULL),
(4, 'java', NULL, NULL),
(5, 'bootstrap', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_otp_verify`
--

CREATE TABLE `sms_otp_verify` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `mobile_number` varchar(250) NOT NULL,
  `date_time` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sms_otp_verify`
--

INSERT INTO `sms_otp_verify` (`id`, `code`, `mobile_number`, `date_time`, `created_at`, `updated_at`) VALUES
(12, '4293', '917046848454', '2022-02-18 18:11:17', '2022-02-18 12:41:17', '2022-02-18 12:41:17'),
(13, '2251', '9904841361', '2022-06-02 16:20:11', '2022-06-02 10:50:11', '2022-06-02 10:50:11'),
(14, '1234', '9904841361', '2022-06-02 16:21:17', '2022-06-02 10:51:17', '2022-06-02 10:51:17'),
(15, '1234', '9979988590', '2022-06-02 16:22:51', '2022-06-02 10:52:51', '2022-06-02 10:52:51'),
(16, '1234', '9904841361', '2022-06-02 16:28:54', '2022-06-02 10:58:54', '2022-06-02 10:58:54'),
(17, '1234', '9979988590', '2022-06-02 16:30:18', '2022-06-02 11:00:18', '2022-06-02 11:00:18'),
(18, '1234', '9979988590', '2022-06-02 16:50:42', '2022-06-02 11:20:42', '2022-06-02 11:20:42'),
(19, '1234', '9979988590', '2022-06-02 16:52:53', '2022-06-02 11:22:53', '2022-06-02 11:22:53'),
(20, '1234', '9979988590', '2022-06-02 17:06:53', '2022-06-02 11:36:53', '2022-06-02 11:36:53'),
(21, '1234', '9898989898', '2022-06-02 17:19:33', '2022-06-02 11:49:33', '2022-06-02 11:49:33'),
(22, '1234', '9898989898', '2022-06-02 17:33:47', '2022-06-02 12:03:47', '2022-06-02 12:03:47'),
(23, '1234', '9898989898', '2022-06-02 17:42:58', '2022-06-02 12:12:58', '2022-06-02 12:12:58'),
(24, '1234', '9898989898', '2022-06-02 18:27:40', '2022-06-02 12:57:40', '2022-06-02 12:57:40'),
(25, '1234', '9898989898', '2022-06-02 18:30:18', '2022-06-02 13:00:18', '2022-06-02 13:00:18'),
(26, '1234', '9898989898', '2022-06-02 19:19:38', '2022-06-02 13:49:38', '2022-06-02 13:49:38'),
(27, '1234', '9898989898', '2022-06-03 09:23:24', '2022-06-03 03:53:24', '2022-06-03 03:53:24'),
(28, '1234', '9898989898', '2022-06-03 09:30:18', '2022-06-03 04:00:18', '2022-06-03 04:00:18'),
(29, '1234', '9904841361', '2022-06-03 11:59:05', '2022-06-03 06:29:05', '2022-06-03 06:29:05'),
(30, '1234', '9904841361', '2022-06-03 13:20:55', '2022-06-03 07:50:55', '2022-06-03 07:50:55'),
(31, '1234', '9898989898', '2022-06-03 14:40:01', '2022-06-03 09:10:01', '2022-06-03 09:10:01'),
(32, '1234', '9898989898', '2022-06-03 14:40:26', '2022-06-03 09:10:26', '2022-06-03 09:10:26'),
(33, '1234', '9898989898', '2022-06-03 15:11:03', '2022-06-03 09:41:03', '2022-06-03 09:41:03'),
(34, '1234', '9898989898', '2022-06-03 16:58:09', '2022-06-03 11:28:09', '2022-06-03 11:28:09'),
(35, '1234', '1234567890', '2022-06-07 07:25:33', '2022-06-07 01:55:33', '2022-06-07 01:55:33'),
(36, '1234', '4578787878', '2022-06-08 18:41:33', '2022-06-08 13:11:33', '2022-06-08 13:11:33'),
(37, '1234', '457845784578', '2022-06-09 12:05:19', '2022-06-09 06:35:19', '2022-06-09 06:35:19'),
(38, '1234', '4545454545', '2022-06-09 12:35:55', '2022-06-09 07:05:55', '2022-06-09 07:05:55'),
(39, '1234', '7845875487', '2022-06-09 14:14:32', '2022-06-09 08:44:32', '2022-06-09 08:44:32'),
(40, '1234', '7897897898', '2022-06-13 18:40:17', '2022-06-13 13:10:17', '2022-06-13 13:10:17'),
(41, '1234', '4564564566', '2022-06-13 18:41:15', '2022-06-13 13:11:15', '2022-06-13 13:11:15'),
(42, '1234', '1231231233', '2022-06-13 18:42:11', '2022-06-13 13:12:11', '2022-06-13 13:12:11'),
(43, '1234', '8528528522', '2022-06-13 18:43:01', '2022-06-13 13:13:01', '2022-06-13 13:13:01'),
(44, '1234', '5454544454', '2022-06-13 19:14:14', '2022-06-13 13:44:14', '2022-06-13 13:44:14'),
(45, '1234', '99054784544', '2022-06-22 11:37:12', '2022-06-22 06:07:12', '2022-06-22 06:07:12'),
(46, '1234', '7575757575', '2022-06-22 14:13:49', '2022-06-22 08:43:49', '2022-06-22 08:43:49'),
(47, '1234', '7575757575', '2022-06-27 13:08:04', '2022-06-27 07:38:04', '2022-06-27 07:38:04'),
(48, '1234', '99252524', '2022-06-27 15:30:56', '2022-06-27 10:00:56', '2022-06-27 10:00:56'),
(49, '1234', '925565688865656', '2022-06-27 15:48:29', '2022-06-27 10:18:29', '2022-06-27 10:18:29'),
(50, '1234', '992562456852', '2022-06-27 15:54:32', '2022-06-27 10:24:32', '2022-06-27 10:24:32'),
(51, '1234', '92564645454544', '2022-06-27 15:57:05', '2022-06-27 10:27:05', '2022-06-27 10:27:05'),
(52, '1234', '88455646892', '2022-06-27 17:19:35', '2022-06-27 11:49:35', '2022-06-27 11:49:35'),
(53, '1234', '9952563446', '2022-06-28 10:16:17', '2022-06-28 04:46:17', '2022-06-28 04:46:17'),
(54, '1234', '99256523634', '2022-06-30 09:25:36', '2022-06-30 03:55:36', '2022-06-30 03:55:36'),
(55, '1234', '9598989565565', '2022-06-30 11:37:39', '2022-06-30 06:07:39', '2022-06-30 06:07:39'),
(56, '1234', '95595565', '2022-07-01 10:15:15', '2022-07-01 04:45:15', '2022-07-01 04:45:15'),
(57, '1234', '9825656656', '2022-07-18 10:03:16', '2022-07-18 04:33:16', '2022-07-18 04:33:16'),
(58, '1234', '9598989899', '2022-07-18 10:20:03', '2022-07-18 04:50:03', '2022-07-18 04:50:03'),
(59, '1234', '9989595979', '2022-07-18 10:34:14', '2022-07-18 05:04:14', '2022-07-18 05:04:14'),
(60, '1234', '9895656569', '2022-07-18 10:35:10', '2022-07-18 05:05:10', '2022-07-18 05:05:10'),
(61, '1234', '5555555555', '2022-07-26 22:39:26', '2022-07-26 17:09:26', '2022-07-26 17:09:26'),
(62, '1234', '990481361', '2022-07-28 12:46:16', '2022-07-28 07:16:16', '2022-07-28 07:16:16'),
(63, '1234', '9904841361', '2022-07-28 14:40:25', '2022-07-28 09:10:25', '2022-07-28 09:10:25'),
(64, '1234', '9904841361', '2022-07-28 14:47:35', '2022-07-28 09:17:35', '2022-07-28 09:17:35'),
(65, '1234', '9904841361', '2022-07-28 18:34:28', '2022-07-28 13:04:28', '2022-07-28 13:04:28'),
(66, '1234', '9999999999', '2022-08-03 14:21:32', '2022-08-03 08:51:32', '2022-08-03 08:51:32'),
(67, '1234', '9999999999', '2022-08-03 14:54:21', '2022-08-03 09:24:21', '2022-08-03 09:24:21'),
(68, '1234', '5555555555', '2022-08-05 18:08:37', '2022-08-05 12:38:37', '2022-08-05 12:38:37'),
(69, '1234', '5555555555', '2022-08-08 19:21:18', '2022-08-08 13:51:18', '2022-08-08 13:51:18'),
(70, '1234', '5555555555', '2022-08-08 19:33:42', '2022-08-08 14:03:42', '2022-08-08 14:03:42'),
(71, '1234', '1234567890', '2022-08-08 23:41:18', '2022-08-08 18:11:18', '2022-08-08 18:11:18'),
(72, '1234', '5555555555', '2022-08-18 04:13:16', '2022-08-17 22:43:17', '2022-08-17 22:43:17'),
(73, '1234', '5555555555', '2022-08-18 04:46:19', '2022-08-17 23:16:19', '2022-08-17 23:16:19'),
(74, '1234', '9955656223', '2022-08-23 11:54:14', '2022-08-23 06:24:14', '2022-08-23 06:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `table_post_projects`
--

CREATE TABLE `table_post_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `name_of_project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_for_project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required_skills` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget_range_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget_range_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_duration_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_duration_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_documents` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_project_as_pub_pri_fetured` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `alert_not_value_buyer` int(11) NOT NULL DEFAULT '1',
  `notification_alert_buyer` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read	',
  `alert_not_value_vendr` int(11) NOT NULL DEFAULT '1',
  `notification_alert_vendr` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read	',
  `notification_alert_admin` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `bid_end_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_post_projects`
--

INSERT INTO `table_post_projects` (`id`, `user_id`, `name_of_project`, `job_description`, `file_for_project`, `required_skills`, `budget_range_1`, `budget_range_2`, `select_duration_1`, `select_duration_2`, `job_location`, `add_documents`, `set_project_as_pub_pri_fetured`, `alert_not_value_buyer`, `notification_alert_buyer`, `alert_not_value_vendr`, `notification_alert_vendr`, `notification_alert_admin`, `bid_end_date`, `created_at`, `updated_at`) VALUES
(7, 141, 'Online Shopping', 'dfkjh', '1661150554.png', 'sports', '500', '3000', '2022-08-22', '2022-08-30', '103', '1661150554.png', '1', 1, 0, 1, 1, 0, '2022-08-31 00:00:00', '2022-08-22 06:42:34', '2022-08-22 06:42:34'),
(8, 141, 'Gold', 'GoldGoldGoldGoldGold', '1661169133.png', 'adas', '1000', '10000', '2022-08-22', '2022-08-25', '7', '1661169133.png', '1', 1, 0, 1, 1, 0, '2022-08-22 00:00:00', '2022-08-22 11:52:13', '2022-08-22 11:52:13'),
(9, 257, 'Banana', 'BananaBananaBanana', '1661236299.png', 'xyz', '100', '400', '2022-08-23', '2022-08-30', '103', '1661236299.png', '1', 1, 0, 1, 1, 0, '2022-08-31 00:00:00', '2022-08-23 06:31:39', '2022-08-23 06:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_participants` tinyint(1) NOT NULL DEFAULT '0',
  `invitations` tinyint(1) NOT NULL DEFAULT '0',
  `calling` tinyint(1) NOT NULL DEFAULT '1',
  `messaging` tinyint(1) NOT NULL DEFAULT '1',
  `knocks` tinyint(1) NOT NULL DEFAULT '1',
  `chat_bots` tinyint(1) NOT NULL DEFAULT '0',
  `lockout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thread_invites`
--

CREATE TABLE `thread_invites` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thread_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_use` int(11) NOT NULL DEFAULT '0',
  `uses` int(11) NOT NULL DEFAULT '0',
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_skill`
--

CREATE TABLE `top_skill` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `top_skill`
--

INSERT INTO `top_skill` (`id`, `skill_name`, `created_at`, `updated_at`) VALUES
(1, 'Analytics', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(2, 'Business Analysis\r\n', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(3, 'Business Intelligence (BI)\r\n', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(4, 'Business Process Improvement\r\n', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(5, 'Cross-functional Team\r\n', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(6, 'Interpersonal Skills\r\n', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(7, 'IT Project & Program\r\n', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(8, 'Customer Insight\r\n', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(9, 'Customer Service\r\n', '2022-02-03 07:30:06', '2022-02-03 07:30:06'),
(10, 'Data Analysis\r\n', '2022-02-03 07:30:38', '2022-02-03 07:30:38'),
(11, 'Data Mining\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(12, 'Data Modeling\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(13, 'Event Planning\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(14, 'Finance', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(15, 'Financial Analysis\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(16, 'Google Analytics\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(17, 'Healthcare', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(18, 'Interpersonal Skills\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(19, 'IT Prject & Program Management\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(20, 'Management', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(21, 'Leadership', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(22, 'Market Research\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(23, 'Marketing Strategy\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(24, 'Microsoft Excel\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(25, 'Microsoft Office\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(26, 'Microsoft PowerPoint\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(27, 'Microsoft Word\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(28, 'Organization Skills\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(29, 'Pharmaceutics\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(30, 'Public Speaking\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(31, 'PY', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(32, 'Sales', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(33, 'Salesforce.com\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(34, 'Social Media\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(35, 'Social Media Marketing\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(36, 'Strategic Thinking\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(37, 'Strategy', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(38, 'Team Building\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(39, 'Teamwork', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(40, 'Time Management\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(41, 'Vendor Management\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24'),
(42, 'Web Analytics\r\n', '2022-02-03 09:11:24', '2022-02-03 09:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_membership`
--

CREATE TABLE `upgrade_membership` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `membership_id` varchar(250) NOT NULL,
  `membership_benefit_time` varchar(250) NOT NULL,
  `upgrade_membership` varchar(250) NOT NULL DEFAULT '1' COMMENT '1 for not upgrade, 2 for upgrade',
  `payment_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 for pending 1 for done',
  `total_amount` float DEFAULT NULL,
  `transaction_id` varchar(250) DEFAULT NULL,
  `package_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 for active 1 for deactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upgrade_membership`
--

INSERT INTO `upgrade_membership` (`id`, `user_id`, `membership_id`, `membership_benefit_time`, `upgrade_membership`, `payment_status`, `total_amount`, `transaction_id`, `package_status`, `created_at`, `updated_at`) VALUES
(50, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-13 22:49:20', '2021-12-13 22:49:20'),
(51, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-13 23:04:23', '2021-12-13 23:04:23'),
(52, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-13 23:46:35', '2021-12-13 23:46:35'),
(53, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-13 23:53:10', '2021-12-13 23:53:10'),
(54, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-14 01:29:36', '2021-12-14 01:29:36'),
(55, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-14 23:26:59', '2021-12-14 23:26:59'),
(56, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-14 23:53:16', '2021-12-14 23:53:16'),
(57, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-14 23:57:03', '2021-12-14 23:57:03'),
(58, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:11', '2021-12-15 00:08:11'),
(59, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:11', '2021-12-15 00:08:11'),
(60, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:11', '2021-12-15 00:08:11'),
(61, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:12', '2021-12-15 00:08:12'),
(62, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:13', '2021-12-15 00:08:13'),
(63, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:13', '2021-12-15 00:08:13'),
(64, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:13', '2021-12-15 00:08:13'),
(65, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:13', '2021-12-15 00:08:13'),
(66, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:14', '2021-12-15 00:08:14'),
(67, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:14', '2021-12-15 00:08:14'),
(68, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:14', '2021-12-15 00:08:14'),
(69, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:15', '2021-12-15 00:08:15'),
(70, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:15', '2021-12-15 00:08:15'),
(71, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:15', '2021-12-15 00:08:15'),
(72, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:15', '2021-12-15 00:08:15'),
(73, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:16', '2021-12-15 00:08:16'),
(74, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:16', '2021-12-15 00:08:16'),
(75, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:17', '2021-12-15 00:08:17'),
(76, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:17', '2021-12-15 00:08:17'),
(77, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:17', '2021-12-15 00:08:17'),
(78, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:19', '2021-12-15 00:08:19'),
(79, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:19', '2021-12-15 00:08:19'),
(80, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:19', '2021-12-15 00:08:19'),
(81, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:20', '2021-12-15 00:08:20'),
(82, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:20', '2021-12-15 00:08:20'),
(83, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:20', '2021-12-15 00:08:20'),
(84, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:21', '2021-12-15 00:08:21'),
(85, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:21', '2021-12-15 00:08:21'),
(86, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:21', '2021-12-15 00:08:21'),
(87, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:22', '2021-12-15 00:08:22'),
(88, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:22', '2021-12-15 00:08:22'),
(89, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:22', '2021-12-15 00:08:22'),
(90, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:23', '2021-12-15 00:08:23'),
(91, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:23', '2021-12-15 00:08:23'),
(92, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:23', '2021-12-15 00:08:23'),
(93, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:24', '2021-12-15 00:08:24'),
(94, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:24', '2021-12-15 00:08:24'),
(95, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:25', '2021-12-15 00:08:25'),
(96, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:25', '2021-12-15 00:08:25'),
(97, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 00:08:25', '2021-12-15 00:08:25'),
(98, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 04:04:10', '2021-12-15 04:04:10'),
(99, '141', '', '', '1', 0, NULL, NULL, 0, '2021-12-15 04:08:26', '2021-12-15 04:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL COMMENT '1 for admin,2 for subadmin,3 for supportstaff, 4 for dispute team,5 for account manager',
  `profile_verification` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT 'not_verified',
  `email_verified_at` int(11) NOT NULL DEFAULT '0' COMMENT '0 for not verified 1 for verified',
  `code` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(123) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(123) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nothing' COMMENT '1 for admin , 2 for Buyer , 3 for Jobseeker , 4 for Recruiter , 5 for Vendor',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `notification_alert_admin` int(11) NOT NULL DEFAULT '0' COMMENT '0 for unread 1 for read',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authToken` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agree_condition` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked_user_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `block_from_chat` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for default 1 for block',
  `photo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile_number`, `email`, `is_admin`, `profile_verification`, `email_verified_at`, `code`, `active`, `password`, `confirm_password`, `original_password`, `type`, `status`, `notification_alert_admin`, `remember_token`, `authToken`, `remember`, `agree_condition`, `blocked_user_name`, `block_from_chat`, `photo`, `last_seen`, `created_at`, `updated_at`) VALUES
(140, 'Devyani', '1234567892', 'abcd@gmail.com', 1, 'Verified', 1, NULL, '1', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '1', 'Active', 1, NULL, NULL, NULL, NULL, '0', '0', 'default.png', '2022-08-23 06:15:23', '2021-10-22 01:21:51', '2022-08-23 06:15:23'),
(141, 'Buyer Dev', '2147483647', 'buyer@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, 'YphUO41KzKbRYdZ5bMhQXe2Q8rdNMm1FcjF4HXKdmK1vZd095YTAZD2WQHNN', NULL, 'duVNzvtrU0IcAoeOoDMuTZzMq5NTOrBsFBTeJRvdU5dDohD008tS1maNXD3p', NULL, '211', '0', 'default.png', '2022-08-23 06:22:16', NULL, '2022-08-23 06:22:16'),
(142, 'Vendor Dev', '1234567891', 'vendor@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, 'bHEGhCdTI7GAftlThBL8uK8WcdXFB4OFmsW31N36Up59rctKxyNoDFai9x1c', NULL, 'U4ANZawFCEoTyTKrBXG2o3QNHcrResb3JQeJjySyDUp4eYkcR4DJbUFuDD50', NULL, '141', '0', 'default.png', '2022-08-23 07:20:57', NULL, '2022-08-23 07:20:57'),
(143, 'Job Seeker Dev', '2147483647', 'jobseeker@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '3', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', 'default.png', '2022-08-23 07:20:23', NULL, '2022-08-23 07:20:23'),
(144, 'Recruiter Dev', '2147483647', 'recruiter@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '4', 'Active', 0, NULL, NULL, 'D5OIPJBilS1XvVUGEsICjON7bYZL3d6Kwq5m6hC6IQMUH0UulCz1QOrVB0cu', NULL, '0', '0', 'default.png', '2022-08-23 05:43:19', NULL, '2022-08-23 05:43:19'),
(145, 'nothing', '1234567891', 'zyx@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', 'default.png', NULL, NULL, NULL),
(146, 'nothing', '2147483647', 'job2@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '3', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', 'default.png', NULL, NULL, NULL),
(147, 'nothing', '1234567892', 'jbser@yahoo.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '3', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', 'default.png', '2022-07-08 04:33:02', NULL, '2022-07-08 04:33:02'),
(148, 'devyani patel', '1234567892', 'kp@gmail.vom', NULL, 'not_verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', 'nothing', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', 'default.png', NULL, NULL, NULL),
(149, 'Dimpal', '1234567892', 'disma@gmail.com', NULL, 'Verified', 1, NULL, '1', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, NULL, '141', '0', 'default.png', '2022-08-18 09:23:15', NULL, '2022-08-18 09:23:15'),
(150, 'nothing', '1234567892', 'abcdvendr@gmail.ccom', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', 'default.png', NULL, NULL, NULL),
(151, 'Veer', '1234567892', 'sdfrsetfg@gmail.com', 3, 'not_verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', 'nothing', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL),
(152, 'nothing', '1234567892', 'aaaa@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL),
(153, 'nothing', '1234567899', 'xyz@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '4', 'Active', 0, 'gtruCdyKnKEKnoBEVD5R2XdGLqbu4ge9EIYGKbmSBmf4XiN8qk7Gng8iUjoB', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL),
(154, 'Devyani pppp', '1234567895', 'xxx@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, '2021-12-30 22:46:26'),
(155, 'Deepak rajput', '1234568962', 'deepak@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '3', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL),
(156, 'admin', '1234567892', 'aaa@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL),
(157, 'veer patel', '1234569872', 'veer@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '3', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(165, 'priya shah', '1234567895', 'priya.pxelperfect@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(167, 'Krishna p', '1234567892', 'recruter@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '4', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-22 06:55:36', NULL, '2022-06-22 06:55:36'),
(168, 'snehal maru', '1234567895', 'snehal.pxelperfect@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '3', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(195, 'krishnaaa shah', '1234567895', 'kp@gmail.com', NULL, 'Verified', 0, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '4', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(197, 'hardik', '9904841361', 'hardik.meghnathi12@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, '4wXLfEgAWKTrkmL7Bs9d1CcqRCiWabZLDOmF8Vu0TGpD4LoeAt0B6kDi4wT9SBES', NULL, NULL, '1', '0', '0', NULL, '2022-06-02 10:59:11', NULL, '2022-07-06 09:45:27'),
(199, 'test', '9904841361', 'test123@gmaul.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-02 11:08:05', NULL, '2022-06-02 11:08:05'),
(210, 'buyeruser80', '9898989898', 'buyeruser80@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-03 11:21:52', NULL, '2022-06-03 11:21:52'),
(211, 'vendoruser45', '9898989898', 'vendoruser45@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '141', '0', NULL, '2022-08-22 07:10:58', NULL, '2022-08-22 07:10:58'),
(212, 'verdorone', '9904841361', 'verdorone@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-03 07:52:15', NULL, '2022-06-03 07:52:15'),
(213, 'hardik', '9904841361', 'hardikgirim@gmai.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-08-10 12:10:09', NULL, '2022-08-10 12:10:09'),
(214, 'vendoruser46', '9898989898', 'vendoruser46@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-03 09:11:55', NULL, '2022-06-03 09:11:55'),
(215, 'vendoruser47', '9898989898', 'vendoruser47@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-03 09:13:18', NULL, '2022-06-03 09:13:18'),
(216, 'buyeruser81', '9898989898', 'buyeruser81@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-03 10:05:40', NULL, '2022-06-03 10:05:40'),
(217, 'vendor1', '9898989898', 'vendor1@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-07-08 05:15:34', NULL, '2022-07-08 05:15:34'),
(218, 'Joe', '1234567890', 'joe@382mp.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-07 01:58:37', NULL, '2022-06-07 01:58:37'),
(219, 'Taral Patel', '4578787878', 'taral@pxelperfect.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-09 05:35:51', NULL, '2022-06-09 05:35:51'),
(220, 'Tarul', '457845784578', 't_test@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '4', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-09 07:03:10', NULL, '2022-06-09 07:03:10'),
(221, 'Taraal Patil', '4545454545', 't2_test@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '3', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-09 08:43:09', NULL, '2022-06-09 08:43:09'),
(222, 'Tarel Patel', '7845875487', 't3_test@gmial.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(223, 'Tarol Patel', '7897897898', 'buyer_t@pxelperfect.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-27 08:56:13', NULL, '2022-06-27 08:56:13'),
(224, 'T Patel', '4564564566', 'jobseeker_t@pxelperfect.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '3', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-07-15 13:10:37', NULL, '2022-07-15 13:10:37'),
(225, 'T3 Patel', '1231231233', 'recruiter_t@pxelperfect.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '4', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-07-15 12:20:03', NULL, '2022-07-15 12:20:03'),
(226, 'T4 Patel', '8528528522', 'vendor_t@pxelperfect.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-27 09:11:47', NULL, '2022-06-27 09:11:47'),
(227, 'T Patel', '5454544454', 'vendor_t1@pxelperfect.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-06-14 09:20:05', NULL, '2022-06-14 09:20:05'),
(228, 'test', '99054784544', 'test@gmai.cm', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(229, 'Tarul', '7575757575', 'vendor_t@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$1qKvU/sos0GcyBttZZu5cuLL89hNGyFzWMYCXOm.x3LDf5uoqGbl6', '3', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(230, 'XYZ', '7575757575', 'vendor_h@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$O4Gm3g1IrmrQwlLB3a8SWOVGY1wYtcw8dMy3ElLng7SIugf5XV.nS', '5', 'Active', 0, '9ybKfEZIUWPEec5sKDGquAUwHcNIjLSF51OzYK1jPFnBQlXBiOsxXUGuCQjgc9sa', NULL, NULL, '1', '0', '0', NULL, NULL, NULL, '2022-06-27 11:46:21'),
(231, 'a', '99252524', 'buyer_h@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$ArTnJStV7GFVNS5hX6V6/Or8cGjmOMIV584z5UOZ18g24g8enCnY.', '2', 'Active', 0, 'Wib2rWUZVLcUNzb9ShxVJCIzQSXDDGBV4sjesQFnohTQzpmDcrvEuL6asetH', NULL, NULL, '1', '0', '0', NULL, '2022-07-07 04:40:50', NULL, '2022-07-07 04:40:50'),
(232, 'Jobseeker', '925565688865656', 'jobseeker_h@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$eUJMYHdaj3U.ikLV.MhEGu7l1aGqTbwnVUYl/3mEeSD/Bv9NOVu3C', '3', 'Active', 0, 'A5KUnInPgRpEUSoRrLgLcU27t3ZjOgULDATGmrT6nJ8Uo8wQjLwXseLNmDIp', NULL, NULL, '1', '0', '0', NULL, '2022-08-17 23:44:01', NULL, '2022-08-17 23:44:01'),
(233, 'recruiter', '992562456852', 'recruiter_h@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$72yNSC6ll.PHr8PJB0EpV.VmD7egtEc7S9twN4WPh/BIwlpomq1Qa', '4', 'Active', 0, 'QVBrXyhA9zF7fxBxmg2SzJwoyfs7UADDZeQk2alnu8PZOxolnRjAAqExTIFN', NULL, NULL, '1', '0', '0', NULL, '2022-08-18 09:10:25', NULL, '2022-08-18 09:10:25'),
(234, 'vendor', '92564645454544', 'vendor1_h@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$d0saZxT1txsRjiUfZs3ID.HY3TCDLvRY50StWQpTvWi.QRENREq8y', '5', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(235, 'xyz', '88455646892', 'hariom.pxelperfect@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$HnHfKZEJK4N9VQ2yFtWRQe.nD28fXHCr81SHV1dOuRcPGGbL.hOBS', '2', 'Active', 0, 'd0Gv6IXb2X5Z8ppPjo6cUlm7vnJG12pbgK4lPdVrggZCTAjRQPDswl7Y2SSUsksG', NULL, NULL, '1', '0', '0', NULL, NULL, NULL, '2022-06-27 11:52:18'),
(236, 'buyer_h1', '9952563446', 'buyer_h1@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$d0UkZ5oEeZjZviKVfgN/Q.h6zRE66foKxk3foFjoJfrl5ciy3Lj7G', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$.9Z2QaGLTtDYnzw7KG5mf.enfEeStYEVSFeiBft4Exyh4QPvYYQXS', '2', 'Active', 0, 'zKKgOlL1BftsoQFC32xvvmioKnYUmciaPZNLATOBzkxJ9plmElpPXnTC0K38', NULL, NULL, '1', '0', '0', NULL, '2022-08-22 07:05:43', NULL, '2022-08-22 07:05:43'),
(237, 's', '99256523634', 'jobseeker_h1@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$ntc4tZ34aB5eef6DIT0uCeScCbiaK79oWjx4VIC1sFEby5AJ99rOW', '3', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(238, 'vendor_h1', '9598989565565', 'vendor_h1@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$zQ25bvYxGPLlzzJ4QnJAwe3LXaTtv8mGkp3kJT3NLTnxA8xVPEjsy', '5', 'Active', 0, '1KvzQQDtE2J5ha0M87CR7mpj8DdieTyIBN0gWr0tWYGhZtKSKxiBTA96C6b0', NULL, NULL, '1', '0', '0', NULL, '2022-08-23 06:10:42', NULL, '2022-08-23 06:10:42'),
(239, 'a', '95595565', 'a@b', NULL, 'Verified', 1, NULL, '0', '$2y$10$ZAjIJj6SFdPIWZ109RLhrukLUWQ1OTweZJBefj08F50M2N2bMjvjC', '$2y$10$iABegkhM3SxKAA6c68DV1u23HvaNcNLqwnUCwxPNuQjEKE12mHemG', '$2y$10$is.bvYqZ2PC.f2Jn1uPui.vDh2.3g7vq8MHiUQPuuygMKl3DnrwRa', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(240, 'sadasd', '9825656656', 'buyer_h2@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$A71zCO6QbnBDHj8BvNfE.uU0zqWS7SxQdHAOthrR44DJaqvdplXqW', '$2y$10$X.BIU6VwW6sHrDgqQN0EAO5sO85ajaSm05VLUyawWVh742sNEJ7EK', '$2y$10$A71zCO6QbnBDHj8BvNfE.uU0zqWS7SxQdHAOthrR44DJaqvdplXqW', '2', 'Active', 0, 'Re1op7U0VmxaH0faGobefbCfA2SLGSFOAjisRY6tRfkgQ7iYX8HMezA6zLSW', NULL, NULL, '1', '0', '0', NULL, '2022-07-28 05:56:24', NULL, '2022-07-28 05:56:24'),
(241, 'dsfsdagfg', '9598989899', 'jobseeker_h2@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$4yPWeB.rLSB0b1gOT6Ltpus4yt8ibOpXIuXcNexSDMrq5Po1mQocS', '$2y$10$TeHk5YUsxQLyHRXynetezO1gLnbo9v6yObtgzVAZ8iQy/3DBFg9sq', '$2y$10$4yPWeB.rLSB0b1gOT6Ltpus4yt8ibOpXIuXcNexSDMrq5Po1mQocS', '3', 'Active', 0, 'TkjO0kXfFePNWc9rntxI6Nxnx7ejgeirCoi2P9mUDURbk5TNX6MYksZeN8ca', NULL, NULL, '1', '0', '0', NULL, '2022-07-18 05:03:17', NULL, '2022-07-18 05:03:17'),
(242, 'dfsdfdsf', '9989595979', 'recruiter_h2@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$M/4RX1gMMvrgK.T6OshRz.iBh0WGJUx1OvVRwXDbSKZIrZiI1opfS', '$2y$10$CsbAnBPN/BsjAUbl0BZp/.Re.B4kt/lkMwj.PcCjyoxwY8NDZokDm', '$2y$10$M/4RX1gMMvrgK.T6OshRz.iBh0WGJUx1OvVRwXDbSKZIrZiI1opfS', '4', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-07-18 06:29:53', NULL, '2022-07-18 06:29:53'),
(243, 'ddfdsf', '9895656569', 'vendor_h2@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$tIoT/kn42CNPDAf8Vdr8reNSnl1fUw.UAI7jpp9XYW9yOmp6o3lnm', '$2y$10$M1r124W0qMf3g79HgTYJR.9gMHDrTkXxGPeqKLNss9p0V34HoCove', '$2y$10$tIoT/kn42CNPDAf8Vdr8reNSnl1fUw.UAI7jpp9XYW9yOmp6o3lnm', '5', 'Active', 0, 'stRvuab9xNO1pcszu2LXfl6z2HkrzcKw5NbJuGW97WxWRTJIvsdOvFYkcp6B', NULL, NULL, '1', '0', '0', NULL, '2022-07-18 06:50:45', NULL, '2022-07-18 06:50:45'),
(244, 'Joe Jones', '5555555555', 'Joe2@382mp.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$YUXbupJX6vZ1VYe5vHxj8.9aUtEK0lWHf4IzHxrnIRzti1ujVfIN2', '$2y$10$sXSyj7lL9KQoIXGNrOT73u/8JEpWFfJhFmH68cSKOOekQBjp7ClTm', '$2y$10$YUXbupJX6vZ1VYe5vHxj8.9aUtEK0lWHf4IzHxrnIRzti1ujVfIN2', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, NULL, NULL, NULL),
(245, 'Hardik', '990481361', 'hardikbuyer@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$gL1HTYhAHrp.tcNm1qiGwuJR1Ip9X66aFhXOcspDRsGkbNLM/udle', '$2y$10$VfTz.KoAREaUdBv4iOu1UuCVy4rxss3fDqV2iQ2swrrIBkq2oiKIy', '$2y$10$gL1HTYhAHrp.tcNm1qiGwuJR1Ip9X66aFhXOcspDRsGkbNLM/udle', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-07-28 13:02:53', NULL, '2022-07-28 13:02:53'),
(246, 'hardik', '9904841361', 'hardikbuyersec@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$V.hNExGRdpim2.7CHtHr5udZviRI4FvFuv0d.bdljb9DNrzylbJ3y', '$2y$10$Xy8wj6nccO.OE/tG.zIwyOoNWLlXGQtvbX4ROVFwFcZ7FJMLuq5MG', '$2y$10$V.hNExGRdpim2.7CHtHr5udZviRI4FvFuv0d.bdljb9DNrzylbJ3y', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-08-02 10:22:04', NULL, '2022-08-02 10:22:04'),
(247, 'hardithird buyer', '9904841361', 'hardikthirdbuyer@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$p8iNZ6xz7C6tErKXrREWde/8IwlCSri9.wgHz1Xb5e3nFroFg96cG', '$2y$10$lH4szOBHxPI4Ux2Mdt6lIO./oJFDXGVYg4pu8H31ke6JELawo8yaC', '$2y$10$p8iNZ6xz7C6tErKXrREWde/8IwlCSri9.wgHz1Xb5e3nFroFg96cG', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-07-28 11:30:43', NULL, '2022-07-28 11:30:43'),
(251, 'Testing Buyer', '5555555555', 'testingbuyer3@382mp.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$oYgu2kIAPg37yZq70PqI9.T095JNk5U3GCUMbaK8MFsb52Nf9zA1e', '$2y$10$nCLsn/5eafxXLuePWo8LA.xuRYBZkrAMY2HRGT0q9IYWFawoyhKfK', '$2y$10$oYgu2kIAPg37yZq70PqI9.T095JNk5U3GCUMbaK8MFsb52Nf9zA1e', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-08-05 16:17:10', NULL, '2022-08-05 16:17:10'),
(252, 'John Smith', '5555555555', 'testing3@382mp.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$7KoyFwes1tAMe2qsxLCUKuSMvhsoEQqnoxahlzMahrbHfEw7K2B4S', '$2y$10$P2fxoqzaoSQ2VVHhW.FXS.Hu3WEDoHlO.86OMEbclUDgpAiHgNvVu', '$2y$10$7KoyFwes1tAMe2qsxLCUKuSMvhsoEQqnoxahlzMahrbHfEw7K2B4S', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-08-17 22:41:22', NULL, '2022-08-17 22:41:22'),
(253, 'Joe Jones', '5555555555', 'testingrb@382mp.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$ThDeqFJ2/b4gEloD/IhvDuSp6D3/.d5p/ikuzcDLx.kVRB3FOgg/q', '$2y$10$yv02YrtjrLTe6RzGuAxbbuzgmFwxuo1yX7EuLvW8E10HHYt.mrNDy', '$2y$10$ThDeqFJ2/b4gEloD/IhvDuSp6D3/.d5p/ikuzcDLx.kVRB3FOgg/q', '5', 'Active', 0, NULL, NULL, NULL, '1', '252', '0', NULL, '2022-08-17 22:22:13', NULL, '2022-08-17 22:22:13'),
(254, 'Jane Doe', '1234567890', 'testingbuyer1@382mp.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$5uegUyy4qTpAkBBpml/5RuF2R6/.dHytF7SkuEiJ/tGIrZeNtpV1a', '$2y$10$ITNx2X2hp0soxeNTyhcCDOenu7wJgjfrd1Nm7tk4cV8mbMP2TUaNi', '$2y$10$5uegUyy4qTpAkBBpml/5RuF2R6/.dHytF7SkuEiJ/tGIrZeNtpV1a', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-08-08 18:34:33', NULL, '2022-08-08 18:34:33'),
(255, 'Recruiter', '5555555555', 'recruiter@382mp.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$x1Wc1mLHFA/WPGkZ7k5I7eMWS.YELbhrVEyW1AoL4Ze5v5cI5XpFS', '$2y$10$sXV4c.QUMF3iSW5LEWbiKOqUqHuOAsULv.MqR7kV4Z8Mi7.RkUWAW', '$2y$10$x1Wc1mLHFA/WPGkZ7k5I7eMWS.YELbhrVEyW1AoL4Ze5v5cI5XpFS', '4', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-08-17 23:38:59', NULL, '2022-08-17 23:38:59'),
(256, 'Jobseeker', '5555555555', 'jobseeker@382mp.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$txykZyXILN0hR.O5Ooz7AO66lIqHQcWOwTD7hXzhnt4MV9Y74D8si', '$2y$10$LR3JryzhiwJ7vKqYB5x5geQkzCqlLpvje73PN7qULEgFrTUofA0OW', '$2y$10$txykZyXILN0hR.O5Ooz7AO66lIqHQcWOwTD7hXzhnt4MV9Y74D8si', '3', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-08-17 23:29:36', NULL, '2022-08-17 23:29:36'),
(257, 'buyer', '9955656223', 'buyer1@gmail.com', NULL, 'Verified', 1, NULL, '0', '$2y$10$eqn7b8sr2vwuxK8NRL0fI.3HHmsmyCXlyMF4fqj4UwGO/z5s4cFmO', '$2y$10$mZw46gn9Jpx3EGbtKLcYNu5a8nJ.YEKsSPljFmdR2TGRTr6TnOywC', '$2y$10$eqn7b8sr2vwuxK8NRL0fI.3HHmsmyCXlyMF4fqj4UwGO/z5s4cFmO', '2', 'Active', 0, NULL, NULL, NULL, '1', '0', '0', NULL, '2022-08-23 07:20:57', NULL, '2022-08-23 07:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_post_job`
--

CREATE TABLE `vendor_post_job` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_of_exp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_min_salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_max_salary` varchar(223) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_responsibilities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `v_profile`
--

CREATE TABLE `v_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `v_id` int(255) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1st_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2nd_line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `want_to_browse_website_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browse_project_in_followinf_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_sosial_network`
--

CREATE TABLE `_sosial_network` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `j_id` int(255) DEFAULT NULL,
  `j_facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `j_youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_sosial_network`
--

INSERT INTO `_sosial_network` (`id`, `j_id`, `j_facebook`, `j_twitter`, `j_linkedin`, `j_youtube`, `created_at`, `updated_at`) VALUES
(2, 52, 'disma od', 'disma ode', 'disma ode', 'disma ode', NULL, '2021-09-24 07:28:54'),
(5, 55, 'sfdsf', 'dfdsf', 'dsfds', 'dfsdf', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_profile`
--
ALTER TABLE `all_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_user_support`
--
ALTER TABLE `all_user_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bids_pre`
--
ALTER TABLE `bids_pre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookmark_details`
--
ALTER TABLE `bookmark_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_id_foreign` (`user_id`),
  ADD KEY `chats_room_id_foreign` (`room_id`);

--
-- Indexes for table `chat_histories`
--
ALTER TABLE `chat_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form_user`
--
ALTER TABLE `contact_form_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favrouite_job`
--
ALTER TABLE `favrouite_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friendlists`
--
ALTER TABLE `friendlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intellectual_property_issues`
--
ALTER TABLE `intellectual_property_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobseker_block_recruter`
--
ALTER TABLE `jobseker_block_recruter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_category`
--
ALTER TABLE `jobs_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_sub_category`
--
ALTER TABLE `jobs_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_contect_information`
--
ALTER TABLE `j_contect_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_profile`
--
ALTER TABLE `j_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `make_deposite_default`
--
ALTER TABLE `make_deposite_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_cv`
--
ALTER TABLE `manage_cv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_catogary`
--
ALTER TABLE `news_catogary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participants_owner_type_owner_id_index` (`owner_type`,`owner_id`),
  ADD KEY `participants_thread_id_foreign` (`thread_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personal_chatrooms`
--
ALTER TABLE `personal_chatrooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_chatrooms_room_id_unique` (`room_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rb_contact_privacy_terms`
--
ALTER TABLE `rb_contact_privacy_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruiter_job`
--
ALTER TABLE `recruiter_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruter_block_jobseker`
--
ALTER TABLE `recruter_block_jobseker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_comp_profile`
--
ALTER TABLE `r_comp_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_otp_verify`
--
ALTER TABLE `sms_otp_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_post_projects`
--
ALTER TABLE `table_post_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread_invites`
--
ALTER TABLE `thread_invites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thread_invites_code_unique` (`code`),
  ADD KEY `thread_invites_owner_type_owner_id_index` (`owner_type`,`owner_id`),
  ADD KEY `thread_invites_thread_id_foreign` (`thread_id`),
  ADD KEY `thread_invites_expires_at_index` (`expires_at`);

--
-- Indexes for table `top_skill`
--
ALTER TABLE `top_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upgrade_membership`
--
ALTER TABLE `upgrade_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendor_post_job`
--
ALTER TABLE `vendor_post_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_profile`
--
ALTER TABLE `v_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_sosial_network`
--
ALTER TABLE `_sosial_network`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `all_profile`
--
ALTER TABLE `all_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `all_user_support`
--
ALTER TABLE `all_user_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bids_pre`
--
ALTER TABLE `bids_pre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookmark_details`
--
ALTER TABLE `bookmark_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_histories`
--
ALTER TABLE `chat_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `contact_form_user`
--
ALTER TABLE `contact_form_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favrouite_job`
--
ALTER TABLE `favrouite_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `friendlists`
--
ALTER TABLE `friendlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intellectual_property_issues`
--
ALTER TABLE `intellectual_property_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobseker_block_recruter`
--
ALTER TABLE `jobseker_block_recruter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jobs_category`
--
ALTER TABLE `jobs_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobs_sub_category`
--
ALTER TABLE `jobs_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `j_contect_information`
--
ALTER TABLE `j_contect_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `j_profile`
--
ALTER TABLE `j_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `make_deposite_default`
--
ALTER TABLE `make_deposite_default`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_cv`
--
ALTER TABLE `manage_cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `news_catogary`
--
ALTER TABLE `news_catogary`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_chatrooms`
--
ALTER TABLE `personal_chatrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rb_contact_privacy_terms`
--
ALTER TABLE `rb_contact_privacy_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `recruiter_job`
--
ALTER TABLE `recruiter_job`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recruter_block_jobseker`
--
ALTER TABLE `recruter_block_jobseker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_comp_profile`
--
ALTER TABLE `r_comp_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_otp_verify`
--
ALTER TABLE `sms_otp_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `table_post_projects`
--
ALTER TABLE `table_post_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `top_skill`
--
ALTER TABLE `top_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `upgrade_membership`
--
ALTER TABLE `upgrade_membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `vendor_post_job`
--
ALTER TABLE `vendor_post_job`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_profile`
--
ALTER TABLE `v_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_sosial_network`
--
ALTER TABLE `_sosial_network`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
