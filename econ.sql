-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2022 at 06:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `econ`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$163vkGFvNIHRMofvqOAzSupCREHiI2qBH6LuJS0zbgOXhwC1v2SCi', NULL, '2020-09-16 03:15:20', '2020-09-16 03:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `number`, `email`, `subject`, `message`, `file`, `created_at`, `updated_at`) VALUES
(21, 'Electronics', '234234', 'manojdas.py@gmail.com', '', NULL, '/contact_image/1658477601_laravel.pdf', '2022-07-22 18:58:21', '2022-07-22 18:58:21'),
(22, 'test1', '98361324644', 'nabin.o1least@gmail.com', 'dfs', 'sdfgdgfxdgxf', NULL, '2022-08-24 09:59:14', '2022-08-24 09:59:14'),
(23, 'AS', 'SD', 'SDF', 'SDF', 'SDF', 'SDF', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_nepali_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_full_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` int(255) DEFAULT NULL,
  `linkedin` int(255) DEFAULT NULL,
  `other` int(255) DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `site_name`, `site_nepali_name`, `site_email`, `phone`, `phone_ne`, `website_full_address`, `address_ne`, `facebook`, `twitter`, `linkedin`, `other`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 'Sahid Memorial  Hospital', NULL, 'info@sahidhospitalkalanki.com', '977-1-5224501', NULL, 'www.sahidhospitalkalanki.com', NULL, NULL, NULL, NULL, NULL, 'Sahid Memorial  Hospital', 'Sahid Memorial Hospital', 'Sahid Memorial  Hospital', '1658309500_download (6).jfif', '1659588696_logo.png', '1604479502_footer-logo.jpg', '1', '', '', '2020-09-16 03:15:20', '2022-08-04 15:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(100) NOT NULL,
  `company_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation_id` bigint(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberforms`
--

CREATE TABLE `memberforms` (
  `gov_reg_date` varchar(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_type` varchar(255) NOT NULL,
  `business_type` varchar(255) NOT NULL,
  `main_commodities` varchar(255) NOT NULL,
  `exported_to` varchar(255) NOT NULL,
  `office_address` varchar(255) NOT NULL,
  `postal_address` varchar(255) NOT NULL,
  `telephone_no` varchar(255) NOT NULL,
  `fax_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `regd_no` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `pan_no` varchar(255) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `national` varchar(255) NOT NULL,
  `international` varchar(255) NOT NULL,
  `accept_policies` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `memberforms`
--

INSERT INTO `memberforms` (`gov_reg_date`, `owner_name`, `company_name`, `company_type`, `business_type`, `main_commodities`, `exported_to`, `office_address`, `postal_address`, `telephone_no`, `fax_no`, `email`, `website`, `regd_no`, `date`, `department`, `pan_no`, `capital`, `national`, `international`, `accept_policies`) VALUES
('DFG', 'DFGDFG', 'DFGD', 'FG', 'FDG', 'DFG', 'FDG', 'DFG', 'DFG', 'DFGDF', 'DFG', 'DFG', 'FDG', 'DFG', 'DFG', 'DFG', 'DFG', 'DFG', 'DFG', 'DFG', 0);

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
(3, '2020_08_06_040112_create_admins_table', 1),
(4, '2020_08_06_040148_create_navigations_table', 1),
(5, '2020_08_06_040229_create_navigation_items_table', 1),
(6, '2020_08_06_040251_create_page_types', 1),
(7, '2020_08_06_040325_create_subscribers_table', 1),
(8, '2020_08_06_040351_create_global_settings_table', 1),
(9, '2020_08_06_040430_create_navigation_video_items_table', 1),
(10, '2020_08_06_040522_create_comments_table', 1),
(11, '2022_07_12_231308_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content_nepali` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_content_nepali` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_page_id` int(11) NOT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nav_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`) VALUES
(2256, 'ourservices', 'ourservices', 'Our Services', NULL, 'Home', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ourservices', NULL, '0', '0', NULL, NULL, NULL, '2022-07-20 16:13:13', '2022-08-20 07:08:43'),
(2268, 'misson', 'misson', 'Our Mission', '.', 'Home', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'misson', NULL, '0', '0', NULL, NULL, NULL, '2022-07-20 17:34:55', '2022-08-04 17:00:58'),
(2269, 'Mission1', 'mission1', 'Our Mission', '.', 'Home', 'Normal', NULL, 1, '\"To support client organizations in strategically managing human capital to achieve business excellence.\"', NULL, NULL, NULL, 2268, NULL, NULL, NULL, '/uploads/banner_image/1658300228_mission01.png', NULL, NULL, NULL, NULL, 'Mission1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:35:56', '2022-07-20 17:42:08'),
(2270, 'missoin2', 'missoin2', 'Our Vision', '.', 'Home', 'Normal', NULL, 2, '\"We aim higher to make people successful.\"', NULL, '<h3>Our Vision</h3>\r\n\r\n<p>Our Vision is to lead in the creation and delivery of innovative workforce solutions and services that enable our clients to win in the changing world of work.</p>\r\n\r\n<h2>People</h2>\r\n\r\n<p>We care about people and the role of work in their lives. We respect people as individuals, trusting them, supporting them, enabling them to achieve their aims in work and in life.<br />\r\n<br />\r\nWe help people develop their careers through planning, work, coaching and training.<br />\r\n<br />\r\nWe recognize everyone’s contribution to our success - our staff, our clients and our candidates. We encourage and reward achievement.</p>\r\n\r\n<h2>Knowledge</h2>\r\n\r\n<p>We share our knowledge, our expertise and our resources, so that everyone understands what is important now and what’s happening next in the world of work - and knows how best to respond.</p>\r\n\r\n<p>We actively listen and act upon this information to improve our relationships, solutions and services.</p>\r\n\r\n<h2>Innovation</h2>\r\n\r\n<p>Based on our understanding of the world of work, we actively pursue the development and adoption of the best practices worldwide. We lead in the world of work. We dare to innovate, to pioneer and to evolve.</p>\r\n\r\n<p>We never accept the status quo. We constantly challenge the norm to find new and better ways of doing things.<br />\r\n<br />\r\nWe thrive on our entrepreneurial spirit and speed of response; taking risks, knowing that we will not always succeed, but never exposing our clients to risk.</p>', NULL, 2268, NULL, NULL, NULL, '/uploads/banner_image/1658300248_vision01.png', NULL, NULL, NULL, NULL, 'missoin2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:38:43', '2022-07-22 20:04:08'),
(2271, 'mission2', 'mission2', 'Core Values', NULL, 'Home', 'Normal', NULL, 3, '\"Committed towards integrity, respect, appreciation &amp; trust among each other and readiness for team work to establish professional relationship with clients and candidates.\"', NULL, NULL, NULL, 2268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mission2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:44:59', '2022-07-22 20:05:02'),
(2368, 'statistic', 'statistic', 'Our Statistics', NULL, 'Home', 'Group', NULL, 9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'statistic', NULL, '0', '0', NULL, NULL, NULL, '2022-08-04 18:04:57', '2022-08-20 06:04:11'),
(2369, 'news', 'news', 'Latest News', NULL, 'Home', 'Group', NULL, 10, NULL, NULL, 'Latest News', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news', NULL, '0', '0', NULL, NULL, NULL, '2022-08-04 18:05:22', '2022-08-20 06:04:12'),
(2374, 'statistic1', 'statistic1', '5,379', NULL, 'Home', 'Normal', NULL, 2, 'Treated Patients', NULL, NULL, NULL, 2368, NULL, NULL, NULL, '/uploads/banner_image/1659851526_counter-1.png', NULL, NULL, NULL, NULL, 'statistic1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 15:57:02', '2022-08-07 16:41:22'),
(2375, 'service1', 'service1', '24 hr Emergency', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849324_icon-1.png', NULL, NULL, NULL, NULL, 'service1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:00:24', '2022-08-07 16:00:44'),
(2376, 'servic2', 'servic2', 'Intense Care Unit', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849384_icon-2.png', NULL, NULL, NULL, NULL, 'servic2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:01:24', '2022-08-07 16:01:24'),
(2377, 'service3', 'service3', 'Operation Theater', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849422_icon-3.png', NULL, NULL, NULL, NULL, 'service3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:02:02', '2022-08-07 16:08:07'),
(2378, 'service4', 'service4', 'Operation Theater', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849453_icon-4.png', NULL, NULL, NULL, NULL, 'service4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:02:33', '2022-08-07 16:02:33'),
(2379, 'service5', 'service5', 'Medical Counselling', NULL, 'Home', 'Normal', NULL, 5, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849481_icon-5.png', NULL, NULL, NULL, NULL, 'service5', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:03:01', '2022-08-07 16:03:01'),
(2380, 'service6', 'service6', 'Mental Disease', NULL, 'Home', 'Normal', NULL, 6, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849743_icon-6.png', NULL, NULL, NULL, NULL, 'service6', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:03:51', '2022-08-07 16:07:23'),
(2381, 'service7', 'service7', 'Physiotherapy', NULL, 'Home', 'Normal', NULL, 7, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849562_icon-7.png', NULL, NULL, NULL, NULL, 'service7', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:04:22', '2022-08-07 16:04:22'),
(2382, 'service', 'service', '24 hr Radiology', NULL, 'Home', 'Normal', NULL, 8, NULL, NULL, NULL, NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1659849592_icon-8.png', NULL, NULL, NULL, NULL, 'service', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:04:52', '2022-08-07 16:04:52'),
(2389, 'statistic2', 'statistic2', '5,379', NULL, 'Home', 'Normal', NULL, 3, 'IPD', NULL, NULL, NULL, 2368, NULL, NULL, NULL, '/uploads/banner_image/1659851648_counter-2.png', NULL, NULL, NULL, NULL, 'statistic2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:39:08', '2022-08-07 16:41:40'),
(2390, 'statistic3', 'statistic3', '5,379', NULL, 'Home', 'Normal', NULL, 4, 'OPD Consultation', NULL, NULL, NULL, 2368, NULL, NULL, NULL, '/uploads/banner_image/1659851696_counter-3.png', NULL, NULL, NULL, NULL, 'statistic3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:39:56', '2022-08-07 16:42:17'),
(2391, 'statistic4', 'statistic4', '5,379', NULL, 'Home', 'Normal', NULL, 5, 'Total Surgeries', NULL, NULL, NULL, 2368, NULL, NULL, NULL, '/uploads/banner_image/1659851940_counter-4.png', NULL, NULL, NULL, NULL, 'statistic4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:44:00', '2022-08-07 16:44:00'),
(2399, 'news1', 'news1', 'Problems as we grow older.', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659852868_news-1.png', NULL, NULL, NULL, NULL, 'news1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 16:59:28', '2022-08-07 16:59:28'),
(2400, 'news2', 'news2', 'Covid Vaccination', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659852930_news-2.png', NULL, NULL, NULL, NULL, 'news2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:00:30', '2022-08-07 17:00:30'),
(2401, 'news3', 'news3', 'World Health Day', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659852980_news-3.png', NULL, NULL, NULL, NULL, 'news3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:01:20', '2022-08-07 17:01:20'),
(2402, 'news4', 'news4', 'Health Issues of Nepal', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659853025_news-4.png', NULL, NULL, NULL, NULL, 'news4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:02:05', '2022-08-07 17:02:05'),
(2403, 'news5', 'news5', 'Mens Mental Health', NULL, 'Home', 'Normal', NULL, 5, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659853073_news-5.png', NULL, NULL, NULL, NULL, 'news5', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:02:53', '2022-08-07 21:43:34'),
(2404, 'news6', 'news6', 'Women Health', NULL, 'Home', 'Normal', NULL, 6, NULL, NULL, NULL, NULL, 2369, NULL, NULL, NULL, '/uploads/banner_image/1659853126_news-6.png', NULL, NULL, NULL, NULL, 'news6', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 17:03:46', '2022-08-07 17:03:46'),
(2429, 'mdnews1', 'mdnews1', 'mdnews1', NULL, 'Main', 'News & Events', NULL, 1, NULL, NULL, NULL, NULL, 2428, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mdnews1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-07 21:52:17', '2022-08-07 21:52:17'),
(2437, 'about11', 'about11', 'About Us', NULL, 'Main', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'about11', NULL, '1', '0', NULL, NULL, NULL, '2022-08-19 07:40:59', '2022-08-19 07:40:59'),
(2439, 'notice', 'notice', 'notices', NULL, 'Home', 'Group', NULL, 14, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notice', NULL, '1', '0', NULL, NULL, NULL, '2022-08-19 08:06:14', '2022-08-19 08:06:14'),
(2441, 'notice', 'notice', 'notices', NULL, 'Home', 'Normal', NULL, 1, 'ECON calls to use ASYCUDA System', NULL, NULL, NULL, 2439, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notice', NULL, '1', '0', NULL, NULL, NULL, '2022-08-19 08:07:07', '2022-08-19 08:38:31'),
(2442, 'notice123', 'notice123', 'notices', NULL, 'Home', 'Normal', NULL, 2, '18th AGM of the Council on shrawan 14,2072', NULL, NULL, NULL, 2439, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notice123', NULL, '1', '0', NULL, NULL, NULL, '2022-08-19 08:36:59', '2022-08-19 08:39:00'),
(2443, 'notice11', 'notice11', 'notices', NULL, 'Home', 'Normal', NULL, 3, 'ECON-FHAN sign in pact', NULL, NULL, NULL, 2439, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notice11', NULL, '1', '0', NULL, NULL, NULL, '2022-08-19 08:39:48', '2022-08-19 08:39:48'),
(2444, 'slider', 'slider', 'slider', NULL, 'Home', 'Group', NULL, 15, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slider', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 03:15:42', '2022-08-20 04:51:26'),
(2445, 'slider', 'slider', 'slider', NULL, 'Home', 'Normal', NULL, 1, 'Welcome to<br />\r\nExport Council of Nepal (ECON)', NULL, NULL, NULL, 2444, NULL, NULL, NULL, '/uploads/banner_image/1660965652_slide_v1_2.jpg', NULL, NULL, NULL, NULL, 'slider', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 03:20:52', '2022-08-21 05:49:06'),
(2446, 'aboutone', 'aboutone', 'About', NULL, 'Home', 'Group', NULL, 16, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aboutone', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 06:05:12', '2022-08-20 06:05:12'),
(2447, 'aboutone1', 'aboutone1', 'EXPORT COUNCIL OF NEPAL', NULL, 'Home', 'Normal', NULL, 1, 'Export Council of Nepal, a council of the Nepalese trading firms/companies (traditional garment, handicraft and woolen goods exporters), was established in 1996 by a group of that kind of business entrepreneurs who have been regularly involving in export business. It is a non- profit making association for the promotion of export business in overseas countries that has been contributing a lot for the development of national economy, playing vital role in foreign currency earning, providing employment opportunity, increasing productivity and etc.', NULL, NULL, NULL, 2446, NULL, NULL, NULL, '/uploads/banner_image/1660986534_about-1-img-2.jpg', NULL, NULL, NULL, NULL, 'aboutone1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 06:06:14', '2022-08-20 09:08:54'),
(2448, 'slider2', 'slider2', 'slider', NULL, 'Home', 'Normal', NULL, 2, 'Welcome to<br />\r\nExport Council of Nepal (ECON)', NULL, NULL, NULL, 2444, NULL, NULL, NULL, '/uploads/banner_image/1660978278_slide_v1_3.jpg', NULL, NULL, NULL, NULL, 'slider2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 06:51:18', '2022-08-20 16:30:25'),
(2449, 'slider3', 'slider3', 'slider', NULL, 'Home', 'Normal', NULL, 3, 'Welcome to<br />\r\nExport Council of Nepal (ECON)', NULL, NULL, NULL, 2444, NULL, NULL, NULL, '/uploads/banner_image/1660978313_slide_v1_1.jpg', NULL, NULL, NULL, NULL, 'slider3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 06:51:53', '2022-08-20 16:30:31'),
(2451, 'message', 'message', 'message', NULL, 'Home', 'Group', NULL, 18, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'message', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 07:09:19', '2022-08-20 07:09:19'),
(2452, 'message1', 'message1', 'FROM THE PRESIDENT', NULL, 'Home', 'Normal', NULL, 1, 'Export Council of Nepal (ECON) is a representative association of Nepalese Export Trading Firms/companies which works for socio-economic development of the nation through the promotion of export business and dedicated in the promotion and the safeguarding of export trade of the country.', NULL, NULL, NULL, 2451, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'message1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 07:10:45', '2022-08-20 07:10:45'),
(2453, 'exportable', 'exportable', 'exportable', NULL, 'Home', 'Group', NULL, 19, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'exportable', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 08:28:10', '2022-08-20 08:32:33'),
(2454, 'exportable1', 'exportable1', 'EXPORTABLE ITEMS', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2453, NULL, NULL, NULL, '/uploads/banner_image/1660986945_project-3-img-10.jpg', NULL, NULL, NULL, NULL, 'exportable1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 08:29:03', '2022-08-20 09:16:16'),
(2455, 'partner', 'partner', 'partner', NULL, 'Home', 'Group', NULL, 20, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'partner', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 09:44:51', '2022-08-20 09:44:51'),
(2456, 'partner1', 'partner1', 'partner', NULL, 'Home', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2455, NULL, NULL, NULL, '/uploads/banner_image/1660988963_econ-fit.png', NULL, NULL, NULL, NULL, 'partner1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 09:45:41', '2022-08-20 09:49:23'),
(2457, 'newsevent', 'newsevent', 'newsevent', NULL, 'Home', 'Group', NULL, 21, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'newsevent', NULL, '1', '0', NULL, NULL, NULL, '2022-08-20 10:25:00', '2022-08-20 10:25:00'),
(2459, 'exportable2', 'exportable2', 'Metal statues, filigree', NULL, 'Home', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2453, NULL, NULL, NULL, '/uploads/banner_image/1661060011_project-3-img-2.jpg', NULL, NULL, NULL, NULL, 'exportable2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 05:33:31', '2022-08-21 05:36:17'),
(2460, 'exportable3', 'exportable3', 'Nepali paper and paper matches goods', NULL, 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2453, NULL, NULL, NULL, '/uploads/banner_image/1661060261_project-3-img-3.jpg', NULL, NULL, NULL, NULL, 'exportable3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 05:37:41', '2022-08-21 05:37:41'),
(2461, 'newsevent1', 'newsevent1', 'newsevent', NULL, 'Home', 'Normal', NULL, 1, '13th Annual General Meeting concluded', NULL, NULL, NULL, 2457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'newsevent1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 06:14:07', '2022-08-21 06:15:29'),
(2462, 'newsevent2', 'newsevent2', 'newsevent', NULL, 'Home', 'Normal', NULL, 2, 'ECON calls to use ASYCUDA System', NULL, NULL, NULL, 2457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'newsevent2', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 06:15:51', '2022-08-21 06:15:51'),
(2463, 'newsevent3', 'newsevent3', 'newsevent', NULL, 'Home', 'Normal', NULL, 3, '18th AGM of the Council on shrawan 14,2072', NULL, NULL, NULL, 2457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'newsevent3', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 06:16:21', '2022-08-21 06:16:21'),
(2464, 'newsevent4', 'newsevent4', 'afsa', NULL, 'Home', 'Normal', NULL, 4, 'Interaction and discussion program on export procedure', NULL, NULL, NULL, 2457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'newsevent4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 19:08:18', '2022-08-21 19:10:00'),
(2465, 'exportable4', 'exportable4', 'newsevent', NULL, 'Home', 'Normal', NULL, 5, '19th AGM and Export Day 2073', NULL, NULL, NULL, 2457, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'exportable4', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 19:10:41', '2022-08-21 19:10:41'),
(2466, 'exportable5', 'exportable5', 'Agriculture product', NULL, 'Home', 'Normal', NULL, 4, NULL, NULL, NULL, NULL, 2453, NULL, NULL, NULL, '/uploads/banner_image/1661070957_project-3-img-15.jpg', NULL, NULL, NULL, NULL, 'exportable5', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 19:20:57', '2022-08-21 19:20:57'),
(2467, 'exportable6', 'exportable6', 'Ceramic item', NULL, 'Home', 'Normal', NULL, 5, NULL, NULL, NULL, NULL, 2453, NULL, NULL, NULL, '/uploads/banner_image/1661071140_project-3-img-14.jpg', NULL, NULL, NULL, NULL, 'exportable6', NULL, '1', '0', NULL, NULL, NULL, '2022-08-21 19:24:00', '2022-08-21 19:24:00'),
(2468, 'services1', 'services1', 'Service', NULL, 'Main', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'services1', NULL, '1', '0', NULL, NULL, NULL, '2022-08-22 22:14:04', '2022-08-22 22:14:04'),
(2469, 'newsevent11', 'newsevent11', 'News & Events', NULL, 'Main', 'Group', NULL, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'newsevent11', NULL, '1', '0', NULL, NULL, NULL, '2022-08-22 22:15:51', '2022-08-22 22:15:51'),
(2470, 'econ', 'econ', 'Econ', NULL, 'Main', 'Group', NULL, 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'econ', NULL, '1', '0', NULL, NULL, NULL, '2022-08-22 22:16:35', '2022-08-22 22:16:53'),
(2471, 'gallery', 'gallery', 'Gallery', NULL, 'Main', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gallery', NULL, '1', '0', NULL, NULL, NULL, '2022-08-22 22:17:21', '2022-08-22 22:17:21'),
(2472, 'downloads', 'downloads', 'Downloads', NULL, 'Main', 'Group', NULL, 7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'downloads', NULL, '1', '0', NULL, NULL, NULL, '2022-08-22 22:17:55', '2022-08-22 22:17:55'),
(2474, 'mission', 'mission', 'Mission', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mission', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 02:20:49', '2022-08-24 15:35:37'),
(2475, 'objective', 'objective', 'Objective', NULL, 'Main', 'Normal', NULL, 2, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'objective', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 15:37:02', '2022-08-24 15:37:02'),
(2476, 'general-assembly-and-executive-committee', 'generalassemblyandexecutivecommitee', 'General Assembly And Executive Committee', NULL, 'Main', 'Normal', NULL, 3, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'general-assembly-and-executive-commitee', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 15:38:59', '2022-08-24 16:01:30'),
(2477, 'activities', 'activities', 'Activities', NULL, 'Main', 'Normal', NULL, 4, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'activities', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 15:40:30', '2022-08-24 15:40:30'),
(2478, 'future-planning', 'futureplanning', 'Future Planning', NULL, 'Main', 'Normal', NULL, 5, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'future-planning', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 15:49:54', '2022-08-24 15:49:54'),
(2479, 'executive-member', 'executivemember', 'Executive Member', NULL, 'Main', 'Normal', NULL, 6, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>', NULL, 2437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'executive-member', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 15:51:45', '2022-08-24 16:02:08'),
(2480, 'secretariat', 'secretariat', 'Secretariat', NULL, 'Main', 'Normal', NULL, 7, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'secretariat', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 15:58:21', '2022-08-24 16:01:06'),
(2481, 'members-directory', 'membersdirectory', 'Members Directory', NULL, 'Main', 'Normal', NULL, 8, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>\r\n\r\n<ul>\r\n</ul>', NULL, 2437, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'members-directory', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 15:59:56', '2022-08-24 16:00:54'),
(2482, 'export-policy', 'exportpolicy', 'Export Policy', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances</li>\r\n</ul>', NULL, 2468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'export-policy', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:04:16', '2022-08-24 16:04:16'),
(2483, 'export-strategy', 'exportstrategy', 'Export Strategy', NULL, 'Main', 'Normal', NULL, 2, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances</li>\r\n</ul>', NULL, 2468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'export-strategy', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:05:48', '2022-08-24 16:05:48'),
(2484, 'demand-export', 'demandexport', 'Demand Export', NULL, 'Main', 'Normal', NULL, 3, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'demand-export', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:07:20', '2022-08-24 16:07:20'),
(2485, 'Banned Item', 'banned-item', 'Banned Item', NULL, 'Main', 'Normal', NULL, 4, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Banned Item', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:08:40', '2022-08-24 16:08:40'),
(2486, 'news13213', 'news13213', 'news event', NULL, 'Main', 'News & Events', NULL, 1, NULL, NULL, NULL, NULL, 2469, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news13213', NULL, '0', '0', NULL, NULL, NULL, '2022-08-24 16:12:08', '2022-08-24 16:13:20'),
(2487, 'upcoming-trade-&-events', 'upcomingtradeevents', 'Upcoming Trade & Events', NULL, 'Main', 'Normal', NULL, 5, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2468, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'upcoming-trade-&-events', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:17:40', '2022-08-24 16:17:40'),
(2488, 'useful-telephone-number', 'usefultelephonenumber', 'Useful Telephone Number', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, NULL, NULL, 2470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'useful-telephone-number', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:18:56', '2022-08-24 16:18:56'),
(2489, 'export-procedure-&-documentation', 'exportproceduredocumentation-', 'Export Procedure & Documentation', NULL, 'Main', 'Normal', NULL, 2, NULL, NULL, NULL, NULL, 2470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'export-procedure-&-documentation', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:20:24', '2022-08-24 16:20:24'),
(2490, 'nepal-at-a-glance', 'nepalataglance', 'Nepal at a glance', NULL, 'Main', 'Normal', NULL, 3, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nepal-at-a-glance', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:24:39', '2022-08-24 16:24:39'),
(2491, 'government-institutions', 'governmentinstitutions', 'Government institutions', NULL, 'Main', 'Normal', NULL, 4, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'government-institutions', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:25:55', '2022-08-24 16:25:55'),
(2492, 'departments', 'departments', 'Departments', NULL, 'Main', 'Normal', NULL, 5, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'departments', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:27:44', '2022-08-24 16:27:44'),
(2493, 'sub-committee-for-the-period', 'subcommitteefortheperiod', 'Sub-Committee For The Period', NULL, 'Main', 'Normal', NULL, 6, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sub-committee-for-the-period', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:35:16', '2022-08-24 16:35:16'),
(2494, 'advisory-committee-for-the-year', 'advisorycommitteefortheyear', 'Advisory Committee For The Year', NULL, 'Main', 'Normal', NULL, 7, NULL, NULL, '<p>The main objectives of council is safeguard, promote, facilitate, solve day to day problem and to educate the exporters about the legislative changes that take place in the field of export trade of Nepal. It has also adopted the following set of objectives.</p>\r\n\r\n<ul>\r\n	<li>Act as a catalyst for export business development in the country.</li>\r\n	<li>To provide advisory services to government and lobby as and when required in formulation and execution of export business related policies.</li>\r\n	<li>Foster cooperation with related national and foreign organizations.</li>\r\n	<li>To create&nbsp; awareness for the promotion of export business.</li>\r\n	<li>Create brotherhood feelings between exporters.</li>\r\n	<li>To enhance the contributions of export trade sector to national economy by promoting export business.</li>\r\n	<li>To expand export trade on a sustained basis through gradual reduction in trade imbalances.</li>\r\n</ul>', NULL, 2470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'advisory-committee-for-the-year', NULL, '1', '0', NULL, NULL, NULL, '2022-08-24 16:37:04', '2022-08-24 16:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_items`
--

CREATE TABLE `navigation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `navigation_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_items`
--

INSERT INTO `navigation_items` (`id`, `sort`, `navigation_id`, `name`, `name_nepali`, `file`, `content`, `content_nepali`, `link`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(19, 1, 2322, NULL, NULL, '1658466642_thumb_fodefeen1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:42', '2022-07-22 15:58:47'),
(20, 1, 2322, NULL, NULL, '1658466658_thumb_22.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:58', '2022-07-22 15:58:47'),
(21, 1, 2322, NULL, NULL, '1658466669_thumb_20.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:09', '2022-07-22 15:58:47'),
(22, 1, 2322, NULL, NULL, '1658466678_thumb_19.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:18', '2022-07-22 15:58:47'),
(23, 1, 2322, NULL, NULL, '1658466688_thumb_17.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:28', '2022-07-22 15:58:47'),
(24, 1, 2322, NULL, NULL, '1658466697_thumb_16.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:37', '2022-07-22 15:58:47'),
(25, 1, 2265, NULL, NULL, '1659867521_5.jpg', NULL, NULL, NULL, NULL, NULL, '2022-08-07 21:03:41', '2022-08-07 21:10:59'),
(26, 1, 2361, NULL, NULL, '1660724963_constructor.jpeg', NULL, NULL, NULL, NULL, NULL, '2022-08-17 19:14:23', '2022-08-17 19:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_video_items`
--

CREATE TABLE `navigation_video_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vlink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_types`
--

CREATE TABLE `page_types` (
  `sort` int(10) UNSIGNED NOT NULL,
  `page_type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_types`
--

INSERT INTO `page_types` (`sort`, `page_type_title`, `created_at`, `updated_at`) VALUES
(2, 'Group', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(3, 'Photo Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(9, 'News & Events', NULL, NULL),
(11, 'Normal', NULL, NULL),
(13, 'Video Gallery', NULL, NULL);

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
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_items`
--
ALTER TABLE `navigation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`sort`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2495;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2483;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
