-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2022 at 02:42 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom9`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `vendor_id`, `mobile`, `email`, `password`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Amit Gupta', 'superadmin', 0, '9500000000', 'admin@admin.com', '$2a$12$apXmK4/yza5lb2SoiOYP.evqydRwfb3r32/6ex6qkwkuTs2yRUzkO', '46481.jpeg', 1, NULL, '2022-03-25 10:40:01'),
(2, 'John Singh', 'vendor', 1, '9846444444', 'john@admin.com', '$2a$12$99YxoNEWP3RTBaQ.yZ3mSewgYJFUAxP2DTyD/jki9f/473usoC5fK', '49679.png', 1, NULL, '2022-03-30 09:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arrow', 1, NULL, NULL),
(2, 'Gap', 1, NULL, NULL),
(3, 'Lee', 1, NULL, NULL),
(4, 'Samsung', 1, NULL, NULL),
(5, 'LG', 1, NULL, '2022-04-17 07:09:13'),
(6, 'Lenovo', 1, NULL, '2022-04-17 07:09:13'),
(7, 'MI', 1, NULL, '2022-04-17 07:09:14'),
(9, 'Others', 1, '2022-04-17 07:13:02', '2022-04-17 07:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_discount` float NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `section_id`, `category_name`, `category_image`, `category_discount`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Men', '', 0, '', 'men', '', '', '', 1, NULL, '2022-04-08 11:42:54'),
(2, 0, 1, 'Women', '', 0, '', 'women', '', '', '', 1, NULL, '2022-04-08 11:42:55'),
(3, 0, 1, 'Kids', '', 0, '', 'kids', '', '', '', 0, NULL, '2022-04-08 11:42:47'),
(4, 0, 2, 'Mobiles', '', 10, NULL, 'mobiles', 'mobiles', NULL, 'mobiles', 1, '2022-04-10 00:41:14', '2022-04-14 10:09:09'),
(5, 4, 2, 'Smartphones', '', 10, 'smartphones', 'smartphones', 'smartphones', 'smartphones', 'smartphones', 1, '2022-04-10 01:31:31', '2022-04-10 01:31:31'),
(6, 1, 1, 'T-Shirts', '', 0, 'test', 'tshirts', 'tshirts', 'tshirts', 'tshirts', 1, '2022-04-10 01:59:53', '2022-04-10 01:59:53'),
(7, 1, 1, 'Shirts', '', 0, NULL, 'shirts', NULL, NULL, NULL, 1, '2022-04-10 04:17:11', '2022-04-10 04:17:11'),
(8, 2, 1, 'Tops', '', 0, NULL, 'tops', NULL, NULL, NULL, 1, '2022-04-10 04:20:38', '2022-04-10 04:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(2, 'AL', 'Albania', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(3, 'DZ', 'Algeria', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(4, 'DS', 'American Samoa', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(5, 'AD', 'Andorra', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(6, 'AO', 'Angola', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(7, 'AI', 'Anguilla', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(8, 'AQ', 'Antarctica', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(9, 'AG', 'Antigua and Barbuda', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(10, 'AR', 'Argentina', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(11, 'AM', 'Armenia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(12, 'AW', 'Aruba', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(13, 'AU', 'Australia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(14, 'AT', 'Austria', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(15, 'AZ', 'Azerbaijan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(16, 'BS', 'Bahamas', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(17, 'BH', 'Bahrain', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(18, 'BD', 'Bangladesh', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(19, 'BB', 'Barbados', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(20, 'BY', 'Belarus', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(21, 'BE', 'Belgium', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(22, 'BZ', 'Belize', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(23, 'BJ', 'Benin', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(24, 'BM', 'Bermuda', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(25, 'BT', 'Bhutan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(26, 'BO', 'Bolivia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(27, 'BA', 'Bosnia and Herzegovina', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(28, 'BW', 'Botswana', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(29, 'BV', 'Bouvet Island', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(30, 'BR', 'Brazil', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(31, 'IO', 'British Indian Ocean Territory', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(32, 'BN', 'Brunei Darussalam', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(33, 'BG', 'Bulgaria', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(34, 'BF', 'Burkina Faso', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(35, 'BI', 'Burundi', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(36, 'KH', 'Cambodia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(37, 'CM', 'Cameroon', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(38, 'CA', 'Canada', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(39, 'CV', 'Cape Verde', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(40, 'KY', 'Cayman Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(41, 'CF', 'Central African Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(42, 'TD', 'Chad', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(43, 'CL', 'Chile', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(44, 'CN', 'China', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(45, 'CX', 'Christmas Island', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(46, 'CC', 'Cocos (Keeling) Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(47, 'CO', 'Colombia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(48, 'KM', 'Comoros', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(49, 'CD', 'Democratic Republic of the Congo', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(50, 'CG', 'Republic of Congo', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(51, 'CK', 'Cook Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(52, 'CR', 'Costa Rica', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(53, 'HR', 'Croatia (Hrvatska)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(54, 'CU', 'Cuba', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(55, 'CY', 'Cyprus', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(56, 'CZ', 'Czech Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(57, 'DK', 'Denmark', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(58, 'DJ', 'Djibouti', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(59, 'DM', 'Dominica', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(60, 'DO', 'Dominican Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(61, 'TP', 'East Timor', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(62, 'EC', 'Ecuador', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(63, 'EG', 'Egypt', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(64, 'SV', 'El Salvador', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(65, 'GQ', 'Equatorial Guinea', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(66, 'ER', 'Eritrea', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(67, 'EE', 'Estonia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(68, 'ET', 'Ethiopia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(69, 'FK', 'Falkland Islands (Malvinas)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(70, 'FO', 'Faroe Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(71, 'FJ', 'Fiji', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(72, 'FI', 'Finland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(73, 'FR', 'France', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(74, 'FX', 'France, Metropolitan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(75, 'GF', 'French Guiana', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(76, 'PF', 'French Polynesia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(77, 'TF', 'French Southern Territories', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(78, 'GA', 'Gabon', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(79, 'GM', 'Gambia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(80, 'GE', 'Georgia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(81, 'DE', 'Germany', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(82, 'GH', 'Ghana', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(83, 'GI', 'Gibraltar', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(84, 'GK', 'Guernsey', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(85, 'GR', 'Greece', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(86, 'GL', 'Greenland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(87, 'GD', 'Grenada', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(88, 'GP', 'Guadeloupe', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(89, 'GU', 'Guam', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(90, 'GT', 'Guatemala', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(91, 'GN', 'Guinea', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(92, 'GW', 'Guinea-Bissau', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(93, 'GY', 'Guyana', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(94, 'HT', 'Haiti', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(95, 'HM', 'Heard and Mc Donald Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(96, 'HN', 'Honduras', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(97, 'HK', 'Hong Kong', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(98, 'HU', 'Hungary', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(99, 'IS', 'Iceland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(100, 'IN', 'India', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(101, 'IM', 'Isle of Man', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(102, 'ID', 'Indonesia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(103, 'IR', 'Iran (Islamic Republic of)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(104, 'IQ', 'Iraq', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(105, 'IE', 'Ireland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(106, 'IL', 'Israel', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(107, 'IT', 'Italy', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(108, 'CI', 'Ivory Coast', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(109, 'JE', 'Jersey', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(110, 'JM', 'Jamaica', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(111, 'JP', 'Japan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(112, 'JO', 'Jordan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(113, 'KZ', 'Kazakhstan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(114, 'KE', 'Kenya', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(115, 'KI', 'Kiribati', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(117, 'KR', 'Korea, Republic of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(118, 'XK', 'Kosovo', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(119, 'KW', 'Kuwait', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(120, 'KG', 'Kyrgyzstan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(121, 'LA', 'Lao People\'s Democratic Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(122, 'LV', 'Latvia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(123, 'LB', 'Lebanon', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(124, 'LS', 'Lesotho', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(125, 'LR', 'Liberia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(126, 'LY', 'Libyan Arab Jamahiriya', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(127, 'LI', 'Liechtenstein', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(128, 'LT', 'Lithuania', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(129, 'LU', 'Luxembourg', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(130, 'MO', 'Macau', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(131, 'MK', 'North Macedonia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(132, 'MG', 'Madagascar', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(133, 'MW', 'Malawi', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(134, 'MY', 'Malaysia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(135, 'MV', 'Maldives', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(136, 'ML', 'Mali', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(137, 'MT', 'Malta', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(138, 'MH', 'Marshall Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(139, 'MQ', 'Martinique', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(140, 'MR', 'Mauritania', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(141, 'MU', 'Mauritius', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(142, 'TY', 'Mayotte', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(143, 'MX', 'Mexico', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(144, 'FM', 'Micronesia, Federated States of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(145, 'MD', 'Moldova, Republic of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(146, 'MC', 'Monaco', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(147, 'MN', 'Mongolia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(148, 'ME', 'Montenegro', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(149, 'MS', 'Montserrat', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(150, 'MA', 'Morocco', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(151, 'MZ', 'Mozambique', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(152, 'MM', 'Myanmar', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(153, 'NA', 'Namibia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(154, 'NR', 'Nauru', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(155, 'NP', 'Nepal', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(156, 'NL', 'Netherlands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(157, 'AN', 'Netherlands Antilles', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(158, 'NC', 'New Caledonia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(159, 'NZ', 'New Zealand', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(160, 'NI', 'Nicaragua', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(161, 'NE', 'Niger', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(162, 'NG', 'Nigeria', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(163, 'NU', 'Niue', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(164, 'NF', 'Norfolk Island', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(165, 'MP', 'Northern Mariana Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(166, 'NO', 'Norway', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(167, 'OM', 'Oman', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(168, 'PK', 'Pakistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(169, 'PW', 'Palau', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(170, 'PS', 'Palestine', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(171, 'PA', 'Panama', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(172, 'PG', 'Papua New Guinea', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(173, 'PY', 'Paraguay', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(174, 'PE', 'Peru', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(175, 'PH', 'Philippines', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(176, 'PN', 'Pitcairn', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(177, 'PL', 'Poland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(178, 'PT', 'Portugal', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(179, 'PR', 'Puerto Rico', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(180, 'QA', 'Qatar', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(181, 'RE', 'Reunion', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(182, 'RO', 'Romania', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(183, 'RU', 'Russian Federation', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(184, 'RW', 'Rwanda', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(185, 'KN', 'Saint Kitts and Nevis', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(186, 'LC', 'Saint Lucia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(187, 'VC', 'Saint Vincent and the Grenadines', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(188, 'WS', 'Samoa', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(189, 'SM', 'San Marino', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(190, 'ST', 'Sao Tome and Principe', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(191, 'SA', 'Saudi Arabia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(192, 'SN', 'Senegal', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(193, 'RS', 'Serbia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(194, 'SC', 'Seychelles', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(195, 'SL', 'Sierra Leone', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(196, 'SG', 'Singapore', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(197, 'SK', 'Slovakia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(198, 'SI', 'Slovenia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(199, 'SB', 'Solomon Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(200, 'SO', 'Somalia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(201, 'ZA', 'South Africa', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(202, 'GS', 'South Georgia South Sandwich Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(203, 'SS', 'South Sudan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(204, 'ES', 'Spain', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(205, 'LK', 'Sri Lanka', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(206, 'SH', 'St. Helena', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(207, 'PM', 'St. Pierre and Miquelon', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(208, 'SD', 'Sudan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(209, 'SR', 'Suriname', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(211, 'SZ', 'Swaziland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(212, 'SE', 'Sweden', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(213, 'CH', 'Switzerland', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(214, 'SY', 'Syrian Arab Republic', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(215, 'TW', 'Taiwan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(216, 'TJ', 'Tajikistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(217, 'TZ', 'Tanzania, United Republic of', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(218, 'TH', 'Thailand', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(219, 'TG', 'Togo', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(220, 'TK', 'Tokelau', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(221, 'TO', 'Tonga', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(222, 'TT', 'Trinidad and Tobago', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(223, 'TN', 'Tunisia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(224, 'TR', 'Turkey', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(225, 'TM', 'Turkmenistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(226, 'TC', 'Turks and Caicos Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(227, 'TV', 'Tuvalu', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(228, 'UG', 'Uganda', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(229, 'UA', 'Ukraine', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(230, 'AE', 'United Arab Emirates', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(231, 'GB', 'United Kingdom', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(232, 'US', 'United States', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(233, 'UM', 'United States minor outlying islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(234, 'UY', 'Uruguay', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(235, 'UZ', 'Uzbekistan', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(236, 'VU', 'Vanuatu', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(237, 'VA', 'Vatican City State', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(238, 'VE', 'Venezuela', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(239, 'VN', 'Vietnam', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(240, 'VG', 'Virgin Islands (British)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(241, 'VI', 'Virgin Islands (U.S.)', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(242, 'WF', 'Wallis and Futuna Islands', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(243, 'EH', 'Western Sahara', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(244, 'YE', 'Yemen', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(245, 'ZM', 'Zambia', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59'),
(246, 'ZW', 'Zimbabwe', 1, '0000-00-00 00:00:00', '2022-03-30 15:16:59');

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
(5, '2022_02_17_145807_create_vendors_table', 2),
(6, '2022_02_17_150129_create_admins_table', 3),
(7, '2022_03_07_143631_create_vendors_business_details_table', 4),
(8, '2022_03_07_144056_create_vendors_bank_details', 5),
(9, '2022_03_30_153830_create_sections_table', 6),
(10, '2022_04_08_163340_create_categories_table', 7),
(11, '2022_04_17_122153_create_brands_table', 8),
(12, '2022_04_21_150037_create_products_table', 9),
(13, '2022_05_08_031422_create_products_attributes_table', 10),
(14, '2022_05_11_153022_create_products_images_table', 11);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `section_id`, `category_id`, `brand_id`, `vendor_id`, `admin_id`, `admin_type`, `product_name`, `product_code`, `product_color`, `product_price`, `product_discount`, `product_weight`, `product_image`, `product_video`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 7, 1, 2, 'vendor', 'Redmi Note 11', 'RN11', 'Blue', '15000', '10', '500', '', '', NULL, '', '', '', 'Yes', 1, NULL, NULL),
(2, 1, 6, 2, 0, 1, 'superadmin', 'Red Casual T-Shirt', 'RC001', 'Red', '1000', '20', '200', '17083.jpeg', '', NULL, NULL, NULL, NULL, 'Yes', 1, NULL, '2022-05-07 21:49:36'),
(3, 1, 6, 1, 0, 1, 'superadmin', 'Arrow T-Shirt', 'AT01', 'Red', '1000', '10', '100', '43210.jpg', '75597.mp4', 'Pure Cotton T-Shirt', 'Pure Cotton T-Shirt', 'this is pure cotton t', 'cotton t-shirt, red tshirt', 'Yes', 1, '2022-05-01 02:23:20', '2022-05-05 10:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `size`, `price`, `stock`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Small', 1100.00, 11, 'BT001-S', 1, '2022-05-08 08:17:17', '2022-05-08 09:31:13'),
(2, 2, 'Medium', 1200.00, 12, 'BT001-M', 1, '2022-05-08 08:17:17', '2022-05-08 09:31:13'),
(3, 2, 'Large', 1300.00, 13, 'BT001-L', 1, '2022-05-08 08:17:17', '2022-05-08 09:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Evostripe-Slim-Fit-Men\'s-T-Shirt.jpg95447.jpg', 1, '2022-05-11 11:17:25', '2022-05-11 11:38:15'),
(2, 2, 'Evostripe-Slim-Fit-Men\'s-T-Shirt.jpeg2756.jpeg', 0, '2022-05-11 11:17:25', '2022-05-11 11:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Clothing', 1, NULL, '2022-04-03 00:53:08'),
(2, 'Electronics', 1, NULL, '2022-04-03 00:53:08'),
(3, 'Appliances', 1, NULL, '2022-04-03 00:53:08');

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
(1, 'Amit Gupta', 'amit100@yopmail.com', NULL, '$2y$10$q80H4i4Y13gbMxE3XKEk7.O.QPVNg3gn0kK9hXp80LvoMXBs0C2U.', NULL, '2022-02-09 10:06:43', '2022-02-09 10:06:43'),
(2, 'Amit Gupta', 'amit200@yopmail.com', NULL, '$2y$10$PTtWFMPtLPmpjoAOrBoYf.U/vHfIzObGcNXennZo7KssmohmHZ1gS', NULL, '2022-02-12 21:51:14', '2022-02-12 21:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Singh', 'CP-11245', 'Mumbai', 'Maharashtra', 'India', '2435356', '9846444444', 'john@admin.com', 0, NULL, '2022-03-30 09:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_bank_details`
--

CREATE TABLE `vendors_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors_bank_details`
--

INSERT INTO `vendors_bank_details` (`id`, `vendor_id`, `account_holder_name`, `bank_name`, `account_number`, `bank_ifsc_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Singh', 'ICICI Bank', '354646475775', '555757577', NULL, '2022-03-12 10:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_business_details`
--

CREATE TABLE `vendors_business_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_proof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_proof_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_license_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors_business_details`
--

INSERT INTO `vendors_business_details` (`id`, `vendor_id`, `shop_name`, `shop_address`, `shop_city`, `shop_state`, `shop_country`, `shop_pincode`, `shop_mobile`, `shop_website`, `shop_email`, `address_proof`, `address_proof_image`, `business_license_number`, `gst_number`, `pan_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Electronics World', '123-A, Mall Road', 'Shimla', 'Himachal Pradesh', 'India', '435346', '8900000000', 'sitemakers.in', 'john@admin.com', 'PAN', '97846.png', '353564646', '464757585', '46575758', NULL, '2022-03-30 09:56:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
