-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2019 at 08:47 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emedic`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` int(10) UNSIGNED NOT NULL,
  `affected_no` int(11) NOT NULL,
  `disease` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`id`, `affected_no`, `disease`, `area`, `result`, `created_at`, `updated_at`) VALUES
(1, 2, 'Rabbies', 'Islampura', ' ', '2019-02-08 21:21:24', '2019-02-09 04:24:26'),
(2, 1, 'Rabbies', 'township', ' ', '2019-02-09 04:32:17', '2019-02-09 04:32:17'),
(3, 1, 'Fever', 'ganda naala', ' ', '2019-02-09 04:38:11', '2019-02-09 04:38:11'),
(4, 1, 'hepatitis', 'dha', ' ', '2019-02-09 05:46:25', '2019-02-09 05:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `doc_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` int(11) NOT NULL,
  `taken` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `doc_id`, `patient_id`, `type`, `reason`, `date`, `approved`, `taken`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Emergency', 'I want to check something.', '7th February, 2019&08:00 am', 1, 1, '2019-02-08 21:16:11', '2019-02-09 05:23:34'),
(2, 3, 2, 'normal', 'Need to checkup.', '10th February, 2019&09:00 am', 1, 0, '2019-02-08 21:19:42', '2019-02-08 21:19:42'),
(3, 3, 4, 'Emergency', 'I want to check something.', '10th February, 2019&08:00 am', 1, 0, '2019-02-09 04:27:46', '2019-02-09 04:35:46'),
(4, 3, 4, 'Emergency', 'I want to check something', '9th October, 2019&12:00 pm', 1, 0, '2019-02-09 04:30:55', '2019-02-09 04:31:28'),
(5, 3, 5, 'Emergency', 'I have to check something', '11th February, 2019&01:00 pm', 1, 0, '2019-02-09 04:35:29', '2019-02-09 04:36:24'),
(6, 3, 12, 'Emergency', 'normal checkup doc', '8th February, 2019&10:41 am', 1, 0, '2019-02-09 05:41:58', '2019-02-09 05:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `receiverid` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `receiverid`, `senderid`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Hello.', 1, '2019-02-08 21:16:34', '2019-02-08 21:17:58'),
(2, 2, 3, 'Hello.', 1, '2019-02-08 21:18:05', '2019-02-09 03:18:22'),
(3, 3, 1, 'Hello.', 1, '2019-02-08 21:32:34', '2019-02-08 23:04:12'),
(4, 1, 3, 'we are exhibition', 1, '2019-02-08 23:04:42', '2019-02-08 23:06:53'),
(5, 1, 3, 'hello', 1, '2019-02-08 23:04:55', '2019-02-08 23:06:53'),
(6, 1, 3, 'hi', 1, '2019-02-08 23:05:04', '2019-02-08 23:06:53'),
(7, 1, 3, 'CJ', 1, '2019-02-08 23:13:39', '2019-02-08 23:13:59'),
(8, 3, 2, 'hello doctor ? can', 1, '2019-02-09 03:18:44', '2019-02-09 03:18:56'),
(9, 2, 3, 'hello fyp', 0, '2019-02-09 03:37:07', '2019-02-09 03:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Rehman', 'ar.saith96@gmail.com', 'For Child specialist', 'I want to take a appointment', '2019-02-08 23:16:37', '2019-02-08 23:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci,
  `certifications` text COLLATE utf8mb4_unicode_ci,
  `interests` text COLLATE utf8mb4_unicode_ci,
  `awards` text COLLATE utf8mb4_unicode_ci,
  `specialization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patients` text COLLATE utf8mb4_unicode_ci,
  `patients_treated` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `user_id`, `grade`, `department`, `bio`, `certifications`, `interests`, `awards`, `specialization`, `patients`, `patients_treated`, `created_at`, `updated_at`) VALUES
(1, 3, '15', 'Test Department 1', 'asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a', 'c', 'i', 'a', 'Spe', '2,4,5,12', '2', '2019-02-08 08:44:55', '2019-02-09 05:42:17'),
(2, 6, '15', 'Test Department 2', 'asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a', 'Certification 1, Certification 2, Certification 3, ', 'interests 1, interests 2, interests 3, ', 'Award 1, Award 2, Award 3, ', 'Spealization 1', NULL, '1', '2019-02-09 02:06:41', '2019-02-09 02:06:41'),
(3, 7, '13', 'Test Department 3', 'asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a asdas das das das das d  a', 'Certification 1, Certification 2, Certification 3, Certification 4, ', 'interests 1, interests 2, interests 3, interests 4, ', 'Award 1, Award 2, Award 3, Award 4, ', 'Spealization 2', NULL, NULL, '2019-02-09 02:07:37', '2019-02-09 02:07:37'),
(4, 8, '15', 'Heart', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus condimentum convallis massa, vitae vulputate diam suscipit id. Cras hendrerit dolor sed ornare sollicitudin. Donec quis arcu non lectus egestas egestas id at elit. Donec ex justo, posuere sed leo nec, rutrum ullamcorper dui. Mauris viverra, lacus vitae rhoncus dignissim, felis felis feugiat urna, in rutrum sapien neque ac massa. Aenean nec felis ac neque sagittis luctus at a diam. Suspendisse vitae imperdiet tellus, dapibus ornare justo. Mauris tristique elit consequat tortor consectetur, et volutpat ligula tincidunt. In hac habitasse platea dictumst. Integer consequat iaculis mauris, non aliquam quam.', 'Certification 1,Certification 2', 'Interest 1', 'Award 1', 'cardic', NULL, NULL, '2019-02-08 21:35:41', '2019-02-08 21:35:41'),
(5, 11, '19', 'skin', 'not yet', 'no', 'no', 'no', 'no', NULL, NULL, '2019-02-09 03:34:17', '2019-02-09 03:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `user_id`, `title`, `degree`, `institute`, `location`, `year`, `created_at`, `updated_at`) VALUES
(1, 8, 'Education 1', 'Degree 1', 'Insitute of Testing', 'Toronto, Ontario', '1998', '2019-02-08 21:36:24', '2019-02-08 21:36:24'),
(2, 11, 'mo', 'fpsc', 'king edward', 'lahore', '2001', '2019-02-09 03:34:52', '2019-02-09 03:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_doctors`
--

CREATE TABLE `feedbacks_doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `to_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `rating` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `to_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewed` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'visitor_count', '37', '2019-02-08 08:40:02', '2019-02-09 06:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symtoms` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allergies` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `user_id`, `father_name`, `blood_group`, `symtoms`, `allergies`, `area`, `history`, `created_at`, `updated_at`) VALUES
(1, 2, 'Test Patient Father', 'A+', '', '', 'Mochi Gate', 1, '2019-02-08 08:39:24', '2019-02-08 08:39:24'),
(2, 4, 'Test Father Name', 'unknown', 'Symtom 1, Symtom 2', 'Allergies 1, Allergies 2', 'Islampura', 1, '2019-02-09 02:04:35', '2019-02-08 21:26:24'),
(3, 5, 'Test Father Name 1', 'A+', 'Symtom 1, Symtom 2', 'Allergies 1, Allergies 2', 'Valencia', 0, '2019-02-09 02:04:35', '2019-02-09 02:04:35'),
(4, 9, 'Test Father Name 4', 'B+', '', '', 'township', 1, '2019-02-08 21:38:23', '2019-02-08 21:38:23'),
(5, 10, 'Naseeb Ali', 'AB+', 'heart', '', 'DHA', 1, '2019-02-08 23:22:03', '2019-02-08 23:22:03'),
(6, 12, 'sajjad', 'unknown', 'null', 'null', 'dha', 1, '2019-02-09 05:17:44', '2019-02-09 05:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `featured_image`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 'Basics About HIV', 'basics-about-hiv', '/postimages/1549679077.jpg', '<h2 style=\"font-weight: 700; font-family: Montserrat; color: rgb(165, 207, 7); font-size: 24px;\">What is HIV?</h2><p style=\"line-height: 1.4em; color: rgb(0, 0, 0); font-family: Lato, arial, sans-serif; font-size: 16px;\">HIV is a virus that attacks cells in the immune system, which is our body’s natural defence against illness. The virus destroys a type of white blood cell in the immune system called a T-helper cell, and makes copies of itself inside these cells. T-helper cells are also referred to as CD4 cells.</p><p style=\"line-height: 1.4em; color: rgb(0, 0, 0); font-family: Lato, arial, sans-serif; font-size: 16px;\">As HIV destroys more CD4 cells and makes more copies of itself, it gradually weakens a person’s immune system. This means that someone who has HIV, and isn’t taking antiretroviral treatment, will find it harder and harder to fight off infections and diseases.</p><p style=\"line-height: 1.4em; color: rgb(0, 0, 0); font-family: Lato, arial, sans-serif; font-size: 16px;\">If HIV is left untreated, it may take up to 10 or 15 years for the immune system to be so severely damaged that it can no longer defend itself at all. However, the rate at which HIV progresses varies depending on age, general health and background. &nbsp;</p><h3 style=\"font-family: Lato; color: rgb(0, 0, 0);\">Basic facts about HIV</h3><ul style=\"color: rgb(0, 0, 0); font-family: Lato, arial, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.5em;\">HIV stands for human immunodeficiency virus.</li><li style=\"margin-bottom: 0.5em;\">People with HIV can enjoy a long and healthy life by taking&nbsp;<a href=\"https://www.avert.org/living-with-hiv/antiretroviral-treatment\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">antiretroviral treatment</a>&nbsp;which is effective and available to all.</li><li style=\"margin-bottom: 0.5em;\">Once a person has HIV, the earlier they are&nbsp;<a href=\"https://www.avert.org/living-with-hiv/newly-diagnosed\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">diagnosed</a>, the sooner they can start treatment which means they will enjoy better health in the long term.</li><li style=\"margin-bottom: 0.5em;\">It’s possible for antiretroviral treatment to reduce the level of HIV in the body to such low levels that blood tests cannot detect it. People living with HIV whose viral load is confirmed as undetectable cannot pass on HIV.</li><li style=\"margin-bottom: 0.5em;\">Regular&nbsp;<a href=\"https://www.avert.org/why-get-tested-hiv\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">testing&nbsp;</a>for HIV is important to know your status.</li><li style=\"margin-bottom: 0.5em;\">HIV is found in semen, blood, vaginal and anal fluids, and breastmilk.</li><li style=\"margin-bottom: 0.5em;\"><span style=\"font-weight: 700;\">HIV can’t be transmitted through sweat, saliva or urine.</span></li><li style=\"margin-bottom: 0.5em;\">Using&nbsp;<a href=\"https://www.avert.org/sex-stis/safer-sex-hiv/condoms\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">external (or male) condoms</a>&nbsp;or&nbsp;<a href=\"https://www.avert.org/sex-stis/safer-sex-hiv/female-condoms\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">internal (or female) condoms</a>&nbsp;during sex is the best way to prevent HIV and other&nbsp;<a href=\"https://www.avert.org/sex-stis/sexually-transmitted-infections\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">sexually transmitted infections</a>.</li><li style=\"margin-bottom: 0.5em;\">If you&nbsp;<a href=\"https://www.avert.org/hiv-transmission-prevention/injecting-drugs\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">inject drugs</a>, always use a clean needle and syringe, and never share equipment.</li><li style=\"margin-bottom: 0.5em;\">If you’re&nbsp;<a href=\"https://www.avert.org/hiv-transmission-prevention/pregnancy-childbirth-breastfeeding\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">pregnant</a>&nbsp;and living with HIV, the virus in your blood could pass into your baby’s body, during birth or afterwards through breastfeeding. Taking&nbsp;<a href=\"https://www.avert.org/living-with-hiv/starting-treatment\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">HIV treatment</a>&nbsp;and becoming&nbsp;<a href=\"https://www.avert.org/living-with-hiv/antiretroviral-treatment/what-does-undetectable-mean\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">undetectable</a>&nbsp;eliminates this risk.</li></ul><h2 style=\"font-weight: 700; font-family: Montserrat; color: rgb(165, 207, 7); font-size: 24px;\">What is AIDS?</h2><p style=\"line-height: 1.4em; color: rgb(0, 0, 0); font-family: Lato, arial, sans-serif; font-size: 16px;\">AIDS is a set of&nbsp;<a href=\"https://www.avert.org/about-hiv-aids/symptoms-stages\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">symptoms&nbsp;</a>(or syndrome as opposed to a virus) caused by HIV. A person is said to have AIDS when their immune system is too weak to fight off infection, and they develop certain defining symptoms and illnesses. This is the last stage of HIV, when the infection is very advanced, and if left untreated will lead to death.</p><h3 style=\"font-family: Lato; color: rgb(0, 0, 0);\">Basic facts about AIDS</h3><ul style=\"color: rgb(0, 0, 0); font-family: Lato, arial, sans-serif; font-size: 16px;\"><li style=\"margin-bottom: 0.5em;\">AIDS stands for acquired immune deficiency syndrome; it’s also called advanced HIV infection or late-stage HIV.</li><li style=\"margin-bottom: 0.5em;\">AIDS is a set of symptoms and illnesses that develop as a result of advanced HIV infection which has destroyed the immune system.</li><li style=\"margin-bottom: 0.5em;\">Fewer people develop AIDS now because treatment for HIV means that more people are staying well.</li></ul><p style=\"line-height: 1.4em; color: rgb(0, 0, 0); font-family: Lato, arial, sans-serif; font-size: 16px;\">Although there is no&nbsp;<a href=\"https://www.avert.org/about-hiv-aids/cure\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(65, 155, 135);\">cure for HIV</a>, with the right treatment and support, people living with HIV can enjoy long and healthy lives. To do this, it’s especially important to commit to taking treatment correctly.</p>', '2019-02-08 21:24:37', '2019-02-08 21:24:37'),
(2, 3, 'For sugar patients', 'for-sugar-patients', '/postimages/1549685369.jpg', '<div class=\"medium-8 columns left-content-column\" style=\"margin: 0px; padding: 0px 1.25rem 0px 0px; width: 773.325px; float: left; position: relative; color: rgb(53, 53, 53); font-family: Verdana, Verdana, Geneva, sans-serif; font-size: 13px;\"><article><h1 style=\"font-size: 1.75rem; padding-bottom: 0.625rem; font-family: futura-pt; color: rgb(53, 53, 53); text-rendering: optimizelegibility; line-height: 2.1875rem;\">10 Ways Sugar Harms Your Health</h1><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">1. Sugar causes blood glucose to spike and plummet.<br>Unstable blood sugar often leads to mood swings, fatigue, headaches and cravings for more sugar. Cravings set the stage for a cycle of addiction in which every new hit of sugar makes you feel better temporarily but, a few hours later, results in more cravings and hunger. On the flip side, those who avoid sugar often report having little or no cravings for sugary things and feeling emotionally balanced and energized.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">2. Sugar increases the risk of obesity, diabetes and heart disease.<br>Large-scale studies have shown that the more high-glycemic foods (those that quickly affect blood sugar), including foods containing sugar, a person consumes, the higher his risk for becoming obese and for developing diabetes and heart disease1. Emerging research is also suggesting connections between high-glycemic diets and many different forms of cancer2,3,4.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">3. Sugar interferes with immune function.<br>Research on human subjects is scant, but animal studies have shown that sugar suppresses immune response5. More research is needed to understand the exact mechanisms; however, we do know that bacteria and yeast feed on sugar and that, when these organisms get out of balance in the body, infections and illness are more likely.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">4. A high-sugar diet often results in chromium deficiency.<br>It\'s sort of a catch-22. If you consume a lot of sugar and other refined carbohydrates, you probably don\'t get enough of the trace mineral chromium, and one of chromium\'s main functions is to help regulate blood sugar. Scientists estimate that 90 percent of Americans don\'t get enough chromium. Chromium is found in a variety of animal foods, seafood and plant foods. Refining starches and other carbohydrates rob these foods of their chromium supplies.6</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">5. Sugar accelerates aging.<br>It even contributes to that telltale sign of aging: sagging skin. Some of the sugar you consume, after hitting your bloodstream, ends up attaching itself to proteins, in a process called glycation. These new molecular structures contribute to the loss of elasticity found in aging body tissues, from your skin to your organs and arteries7. The more sugar circulating in your blood, the faster this damage takes hold.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">6. Sugar causes tooth decay.<br>With all the other life-threatening effects of sugar, we sometimes forget the most basic damage it does. When it sits on your teeth, it creates decay more efficiently than any other food substance8. For a strong visual reminder, next time the Tooth Fairy visits, try the old tooth-in-a-glass-of-Coke experiment—the results will surely convince you that sugar isn\'t good for your pearly whites.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">7. Sugar can cause gum disease, which can lead to heart disease.<br>Increasing evidence shows that chronic infections, such as those that result from periodontal problems, play a role in the development of coronary artery disease9. The most popular theory is that the connection is related to widespread effects from the body\'s inflammatory response to infection.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">8. Sugar affects behavior and cognition in children.<br>Though it has been confirmed by millions of parents, most researchers have not been able to show the effect of sugar on children\'s behavior. A possible problem with the research is that most of it compared the effects of a sugar-sweetened drink to one containing an artificial sweetener10. It may be that kids react to both real sugar and sugar substitutes, therefore showing no differences in behavior.<br>What about kids\' ability to learn? Between 1979 and 1983, 803 New York City public schools reduced the amount of sucrose (table sugar) and eliminated artificial colors, flavors and two preservatives from school lunches and breakfasts. The diet policy changes were followed by a 15.7 percent increase in a national academic ranking (previously, the greatest improvement ever seen had been 1.7 percent)11.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">9. Sugar increases stress.<br>When we\'re under stress, our stress hormone levels rise; these chemicals are the body\'s fight-or-flight emergency crew, sent out to prepare the body for an attack or an escape. These chemicals are also called into action when blood sugar is low. For example, after a blood-sugar spike (say, from eating a piece of birthday cake), there\'s a compensatory dive, which causes the body to release stress hormones such as adrenaline, epinephrine and cortisol. One of the main things these hormones do is raise blood sugar, providing the body with a quick energy boost. The problem is, these helpful hormones can make us feel anxious, irritable and shaky.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">10. Sugar takes the place of important nutrients.<br>According to USDA data, people who consume the most sugar have the lowest intakes of essential nutrients––especially vitamin A, vitamin C, folate, vitamin B-12, calcium, phosphorous, magnesium and iron. Ironically, those who consume the most sugar are children and teenagers, the individuals who need these nutrients most12.<br>Slashing Sugar</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">Now that you know the negative impacts refined sugar can have on your body and mind, you\'ll want to be more careful about the foods you choose. And the first step is getting educated about where sugar lurks—believe it or not, a food needn\'t even taste all that sweet for it to be loaded with sugar. When it comes to convenience and packaged foods, let the ingredients label be your guide, and be aware that just because something boasts that it is low in carbs or a “diet\" food, doesn\'t mean it\'s free of sugar. Atkins products never contain added sugar.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">For more information, read&nbsp;<a href=\"http://www.atkins.ca/how-it-works/library/articles/finding-added-sugars\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(3, 91, 157); line-height: inherit; transition: color 0.5s ease-in-out 0s;\">Finding Added Sugars</a>.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">Selected References<br>1. Bell, S.J., Sears, B., “Low-glycemic-load diets: impact on obesity and chronic diseases.\" Critical Reviews in Food Science &amp; Nutrition, 43(4), 2003, pages 357-77.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">2. Michaud, D.S., Liu, S., Giovannucci, E., et al., “Dietary Sugar, Glycemic Load, and Pancreatic Cancer Risk in a Prospective Study.\" Journal of the National Cancer Institute, 94(17), 2002, pages 1293-1300.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">3. Romieu, I., Lazcano-Ponce, E., Sanchez-Zamorano, L.M., et al., “Carbohydrates and the Risk of Breast Cancer Among Mexican Women.\" Cancer Epidemiology and Biomarkers Preview, 13(8), 2004, pages 1283-1289.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">4. Franceschi, S., Dal Maso, L., Augustin, L., et al., “Dietary Glycemic Load and Colorectal Cancer Risk.\" Annals of Oncology, 12(2), 2001, pages 173-178.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">5. Nutter, R.L., Gridley, D.S., Kettering, J.D., et al., “Modification of a transplantable colon tumor and immune responses in mice fed different sources of protein, fat and carbohydrate.\" Cancer Letters, 18(1), 1983, pages 49-62.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">6. “Dietary Reference Intakes for vitamin A, vitamin K, arsenic, boron, chromium, copper, iodine, iron, manganese, molybdenum, nickel, silicon, vanadium, and zinc.\" Institute of Medicine, Washington, D.C., National Academy Press, 2001.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">7. Sensi, M., Pricci, F., Andreani, D., et al., “Advanced Nonenzymatic Glycation Endproducts (AGE): Their Relevance to Aging and the Pathogenesis of Late Diabetic Complications.\" Diabetes Research, 16(1), 1991, pages 1-9.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">8. \"Dental Caries and Its Complications: Tooth Decay.\" In The Merck Manual of Diagnosis and Therapy, edited by Robert Berkow, et al. Rahway, NJ: Merck Research Laboratories, 1992.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">9. Geerts, S.O., Legrand, V., Charpentier, J., et al. “Further evidence of the association between periodontal conditions and coronary artery disease.\" Journal of Periodontology, 75(9), 2004, pages 1274-80.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">10. Wolraich, M.L., Wilson, D.B., White, J.W, “The effect of sugar on behavior or cognition in children. A meta-analysis.\" JAMA, 274 (20), 1995, pages 1617-21.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">11. Schoenthaler, S.J., Doraz, W.E., Wakefield, J.A., “The Impact of a Low Food Additive and Sucrose Diet on Academic Performance in 803 New York City Public Schools.\" International Journal of Biosocial Research, 8(2), 1986, pages 185-195.</p><p style=\"margin-bottom: 1.25rem; padding: 0px; font-family: inherit; font-size: 0.85rem; line-height: 1.9; text-rendering: optimizelegibility;\">12. Bowman, S.A., “Diets of Individuals Based on Energy Intakes From Added Sugars.\" Family Economics and Nutrition Review, 12(2), 1999, pages 31-38.</p><div class=\"row main-content-wrapper\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; width: auto; max-width: none;\"><div class=\"small-12 medium-12 columns\" style=\"margin: 0px; padding: 0px; width: 753.325px; float: left; position: relative;\"></div></div></article></div><div class=\"medium-4 columns sidebar-column\" style=\"margin: 0px; padding: 0px 0px 3.125rem 40.0125px; width: 386.663px; float: right; position: relative; color: rgb(53, 53, 53); font-family: Verdana, Verdana, Geneva, sans-serif; font-size: 13px;\"></div>', '2019-02-08 23:09:29', '2019-02-08 23:09:29');
INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `featured_image`, `body`, `created_at`, `updated_at`) VALUES
(3, 3, 'how to test cancer', 'how-to-test-cancer', '/postimages/1549685477.jpg', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\"><b>Cancer</b>&nbsp;is a group of diseases involving abnormal&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cell_growth\" title=\"Cell growth\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">cell growth</a>&nbsp;with the potential to invade or spread to other parts of the body.<sup id=\"cite_ref-WHO2018_2-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WHO2018-2\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup><sup id=\"cite_ref-NCI2014_8-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-NCI2014-8\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[8]</a></sup>&nbsp;These contrast with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Benign_tumor\" title=\"Benign tumor\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">benign tumors</a>, which do not spread to other parts of the body.<sup id=\"cite_ref-NCI2014_8-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-NCI2014-8\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[8]</a></sup>&nbsp;Possible&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cancer_signs_and_symptoms\" title=\"Cancer signs and symptoms\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">signs and symptoms</a>&nbsp;include a lump, abnormal bleeding, prolonged cough, unexplained&nbsp;<a href=\"https://en.wikipedia.org/wiki/Weight_loss\" title=\"Weight loss\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">weight loss</a>&nbsp;and a change in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Defecation\" title=\"Defecation\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">bowel movements</a>.<sup id=\"cite_ref-NHS2012_1-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-NHS2012-1\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup>&nbsp;While these symptoms may indicate cancer, they may have other causes.<sup id=\"cite_ref-NHS2012_1-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-NHS2012-1\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup>&nbsp;Over 100 types of cancers affect humans.<sup id=\"cite_ref-NCI2014_8-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-NCI2014-8\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[8]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\"><a href=\"https://en.wikipedia.org/wiki/Tobacco_use\" class=\"mw-redirect\" title=\"Tobacco use\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Tobacco use</a>&nbsp;is the cause of about 22% of cancer deaths.<sup id=\"cite_ref-WHO2018_2-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WHO2018-2\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>&nbsp;Another 10% are due to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Obesity\" title=\"Obesity\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">obesity</a>, poor&nbsp;<a href=\"https://en.wikipedia.org/wiki/Diet_(nutrition)\" title=\"Diet (nutrition)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">diet</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sedentary_lifestyle\" title=\"Sedentary lifestyle\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">lack of physical activity</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alcohol_abuse\" title=\"Alcohol abuse\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">excessive drinking</a>&nbsp;of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alcohol_(drug)\" title=\"Alcohol (drug)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">alcohol</a>.<sup id=\"cite_ref-WHO2018_2-4\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WHO2018-2\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup><sup id=\"cite_ref-9\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-9\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[9]</a></sup><sup id=\"cite_ref-10\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-10\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[10]</a></sup>&nbsp;Other factors include certain infections, exposure to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ionizing_radiation\" title=\"Ionizing radiation\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ionizing radiation</a>&nbsp;and environmental pollutants.<sup id=\"cite_ref-Enviro2008_3-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-Enviro2008-3\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[3]</a></sup>&nbsp;In the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Developing_country\" title=\"Developing country\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">developing world</a>, 15% of cancers are due to infections such as&nbsp;<i><a href=\"https://en.wikipedia.org/wiki/Helicobacter_pylori\" title=\"Helicobacter pylori\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Helicobacter pylori</a></i>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hepatitis_B\" title=\"Hepatitis B\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hepatitis B</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hepatitis_C\" title=\"Hepatitis C\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hepatitis C</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Human_papillomavirus_infection\" title=\"Human papillomavirus infection\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">human papillomavirus infection</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Epstein%E2%80%93Barr_virus\" title=\"Epstein–Barr virus\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Epstein–Barr virus</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/HIV\" title=\"HIV\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">human immunodeficiency virus</a>&nbsp;(HIV).<sup id=\"cite_ref-WHO2018_2-5\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WHO2018-2\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>&nbsp;These factors act, at least partly, by changing the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gene\" title=\"Gene\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">genes</a>&nbsp;of a cell.<sup id=\"cite_ref-WCR2014Bio_11-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WCR2014Bio-11\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[11]</a></sup>&nbsp;Typically, many genetic changes are required before cancer develops.<sup id=\"cite_ref-WCR2014Bio_11-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WCR2014Bio-11\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[11]</a></sup>&nbsp;Approximately 5–10% of cancers are due to inherited genetic defects from a person\'s parents.<sup id=\"cite_ref-ACS-heredity_12-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-ACS-heredity-12\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[12]</a></sup>&nbsp;Cancer can be detected by certain signs and symptoms or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cancer_screening\" title=\"Cancer screening\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">screening tests</a>.<sup id=\"cite_ref-WHO2018_2-6\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WHO2018-2\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>&nbsp;It is then typically further investigated by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Medical_imaging\" title=\"Medical imaging\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">medical imaging</a>&nbsp;and confirmed by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Biopsy\" title=\"Biopsy\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">biopsy</a>.<sup id=\"cite_ref-13\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-13\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[13]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: inherit; color: rgb(34, 34, 34); font-family: sans-serif; font-size: 14px;\">Many cancers can be prevented by not smoking, maintaining a healthy weight, not drinking too much&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alcohol_(drug)\" title=\"Alcohol (drug)\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">alcohol</a>, eating plenty of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetables\" class=\"mw-redirect\" title=\"Vegetables\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">vegetables</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruits\" class=\"mw-redirect\" title=\"Fruits\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fruits</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whole_grains\" class=\"mw-redirect\" title=\"Whole grains\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">whole grains</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vaccination\" title=\"Vaccination\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">vaccination</a>&nbsp;against certain infectious diseases, not eating too much&nbsp;<a href=\"https://en.wikipedia.org/wiki/Processed_meat\" title=\"Processed meat\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">processed</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Red_meat\" title=\"Red meat\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">red meat</a>&nbsp;and avoiding too much&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sunlight\" title=\"Sunlight\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">sunlight</a>&nbsp;exposure.<sup id=\"cite_ref-Kushi2012_14-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-Kushi2012-14\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[14]</a></sup><sup id=\"cite_ref-15\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-15\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[15]</a></sup>&nbsp;Early detection through&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cancer_screening\" title=\"Cancer screening\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">screening</a>&nbsp;is useful for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cervical_cancer\" title=\"Cervical cancer\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">cervical</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Colorectal_cancer\" title=\"Colorectal cancer\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">colorectal cancer</a>.<sup id=\"cite_ref-WCR2014Scr_16-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WCR2014Scr-16\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[16]</a></sup>&nbsp;The benefits of screening in&nbsp;<a href=\"https://en.wikipedia.org/wiki/Breast_cancer\" title=\"Breast cancer\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">breast cancer</a>&nbsp;are controversial.<sup id=\"cite_ref-WCR2014Scr_16-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WCR2014Scr-16\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[16]</a></sup><sup id=\"cite_ref-Got2013_17-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-Got2013-17\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[17]</a></sup>&nbsp;Cancer is often treated with some combination of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Radiation_therapy\" title=\"Radiation therapy\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">radiation therapy</a>, surgery,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Chemotherapy\" title=\"Chemotherapy\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">chemotherapy</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Targeted_therapy\" title=\"Targeted therapy\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">targeted therapy</a>.<sup id=\"cite_ref-WHO2018_2-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WHO2018-2\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup><sup id=\"cite_ref-TCT2018_4-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-TCT2018-4\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[4]</a></sup>&nbsp;Pain and symptom management are an important part of care.<sup id=\"cite_ref-WHO2018_2-8\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WHO2018-2\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Palliative_care\" title=\"Palliative care\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Palliative care</a>&nbsp;is particularly important in people with advanced disease.<sup id=\"cite_ref-WHO2018_2-9\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WHO2018-2\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>&nbsp;The chance of survival depends on the type of cancer and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cancer_staging\" title=\"Cancer staging\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">extent of disease</a>&nbsp;at the start of treatment.<sup id=\"cite_ref-WCR2014Bio_11-2\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WCR2014Bio-11\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[11]</a></sup>&nbsp;In children under 15 at diagnosis, the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Five-year_survival_rate\" title=\"Five-year survival rate\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">five-year survival rate</a>&nbsp;in the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Developed_world\" class=\"mw-redirect\" title=\"Developed world\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">developed world</a>&nbsp;is on average 80%.<sup id=\"cite_ref-WCR2014Peads_18-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cancer#cite_note-WCR2014Peads-18\" style=\"color: rgb(11, 0, 128); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[18]</a></sup>&nbsp;For cancer in the United States, the average five-year survival&nbsp;</p>', '2019-02-08 23:11:17', '2019-02-08 23:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_dignosis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `final_dignosis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disease` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tdisease` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examination` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `treatment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `doctor_id`, `patient_id`, `department`, `initial_dignosis`, `final_dignosis`, `disease`, `tdisease`, `examination`, `treatment`, `finished`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Test Department 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ullamcorper condimentum tellus, et porta magna aliquet vitae. Vivamus ut augue interdum, convallis dui at, volutpat elit. Aliquam nec diam et turpis euismod pulvinar. Suspendisse tellus augue, porta vel semper nec, fringilla sed ante. Cras venenatis justo vitae leo tempor sagittis. Duis consequat quis leo sit amet faucibus. Sed vitae diam purus. Quisque ornare sodales justo finibus convallis. Vestibulum eleifend mattis eros, a maximus nunc sodales nec. Duis sem libero, lacinia eget tempor et, aliquam vel eros. Vivamus at enim euismod, blandit magna id, sodales est. Vestibulum faucibus pretium libero. Nulla varius mattis porttitor. Pellentesque vestibulum viverra consectetur. Vestibulum eu libero placerat massa porta blandit a lacinia neque. Donec blandit purus eu fermentum ultrices.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ullamcorper condimentum tellus, et porta magna aliquet vitae. Vivamus ut augue interdum, convallis dui at, volutpat elit. Aliquam nec diam et turpis euismod pulvinar. Suspendisse tellus augue, porta vel semper nec, fringilla sed ante. Cras venenatis justo vitae leo tempor sagittis. Duis consequat quis leo sit amet faucibus. Sed vitae diam purus. Quisque ornare sodales justo finibus convallis. Vestibulum eleifend mattis eros, a maximus nunc sodales nec. Duis sem libero, lacinia eget tempor et, aliquam vel eros. Vivamus at enim euismod, blandit magna id, sodales est. Vestibulum faucibus pretium libero. Nulla varius mattis porttitor. Pellentesque vestibulum viverra consectetur. Vestibulum eu libero placerat massa porta blandit a lacinia neque. Donec blandit purus eu fermentum ultrices.', 'Rabbies', 'Normal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ullamcorper condimentum tellus, et porta magna aliquet vitae. Vivamus ut augue interdum, convallis dui at, volutpat elit. Aliquam nec diam et turpis euismod pulvinar. Suspendisse tellus augue, porta vel semper nec, fringilla sed ante. Cras venenatis justo vitae leo tempor sagittis. Duis consequat quis leo sit amet faucibus. Sed vitae diam purus. Quisque ornare sodales justo finibus convallis. Vestibulum eleifend mattis eros, a maximus nunc sodales nec. Duis sem libero, lacinia eget tempor et, aliquam vel eros. Vivamus at enim euismod, blandit magna id, sodales est. Vestibulum faucibus pretium libero. Nulla varius mattis porttitor. Pellentesque vestibulum viverra consectetur. Vestibulum eu libero placerat massa porta blandit a lacinia neque. Donec blandit purus eu fermentum ultrices.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ullamcorper condimentum tellus, et porta magna aliquet vitae. Vivamus ut augue interdum, convallis dui at, volutpat elit. Aliquam nec diam et turpis euismod pulvinar. Suspendisse tellus augue, porta vel semper nec, fringilla sed ante. Cras venenatis justo vitae leo tempor sagittis. Duis consequat quis leo sit amet faucibus. Sed vitae diam purus. Quisque ornare sodales justo finibus convallis. Vestibulum eleifend mattis eros, a maximus nunc sodales nec. Duis sem libero, lacinia eget tempor et, aliquam vel eros. Vivamus at enim euismod, blandit magna id, sodales est. Vestibulum faucibus pretium libero. Nulla varius mattis porttitor. Pellentesque vestibulum viverra consectetur. Vestibulum eu libero placerat massa porta blandit a lacinia neque. Donec blandit purus eu fermentum ultrices.', 1, '2019-02-08 21:21:24', '2019-02-08 23:25:45'),
(2, 3, 2, 'orthopedic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Rabbies', 'Normal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 1, '2019-02-09 04:24:26', '2019-02-09 04:32:38'),
(3, 3, 4, 'orthopedic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Rabbies', 'Normal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 0, '2019-02-09 04:32:17', '2019-02-09 04:32:17'),
(4, 3, 5, 'heart', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Fever', 'Normal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec feugiat varius mauris imperdiet cursus. Cras a lectus tellus. Vivamus at urna dolor. Nam quis porta ex. Mauris eu dapibus leo. Quisque erat erat, hendrerit a urna in, tristique consequat orci. Donec efficitur auctor tortor, vel pharetra tellus luctus sed.\r\n\r\nIn vel pulvinar odio. Praesent eros nisi, aliquam eu suscipit sed, sollicitudin eu erat. Proin massa dui, malesuada ac justo at, lobortis feugiat dolor. Nulla facilisi. Sed in augue quis est vestibulum hendrerit vel sed libero. Nulla facilisi. Mauris ultricies laoreet ultrices. Fusce ac ligula ex.', 0, '2019-02-09 04:38:11', '2019-02-09 04:38:11'),
(5, 3, 12, 'medical', 'jasdlkasslkdjaslk', ',masndklasnda', 'hepatitis', 'serious', 'ads;lkasdlkass', 'asdaslkkdalk', 0, '2019-02-09 05:43:41', '2019-02-09 05:43:41'),
(6, 3, 12, 'medical', 'jasdlkasslkdjaslk', ',masndklasnda', 'hepatitis', 'serious', 'ads;lkasdlkass', 'asdaslkkdalk', 0, '2019-02-09 05:46:02', '2019-02-09 05:46:02'),
(7, 3, 12, 'medical', 'jasdlkasslkdjaslk', ',masndklasnda', 'hepatitis', 'serious', 'ads;lkasdlkass', 'asdaslkkdalk', 0, '2019-02-09 05:46:15', '2019-02-09 05:46:15'),
(8, 3, 12, 'medical', 'jasdlkasslkdjaslk', ',masndklasnda', 'hepatitis', 'serious', 'ads;lkasdlkass', 'asdaslkkdalk', 0, '2019-02-09 05:46:25', '2019-02-09 05:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `day` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `doctor_id`, `day`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, 'monday', '08:00 am-10:00 am', '2019-02-08 21:22:18', '2019-02-08 21:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `phoneno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_online` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `display_name`, `name`, `email`, `password`, `gender`, `address`, `dob`, `phoneno`, `image`, `type`, `status`, `last_online`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'Admin 1', 'doctor-user', 'admin@gmail.com', '$2y$10$AWdsWaw3EFqzlz3wDcdsS.AdYn3wa/8hnzmJ/itSaBK7iwdkv4zG6', 'male', 'asdas das das das d', '1985-02-13', '03327225469', '/profileimages/1549634074.jpg', 'admin', '0', '2019-02-09 10:17:44', 'NJA5qNL0yS0QCnUnj3TgIwcw8Py88PaSXgjh77UpVAMzTgpCEnoTHe0hX33q', '2019-02-08 13:41:30', '2019-02-09 05:17:44'),
(2, 'Test', 'Patient', 'Test Patient', 'test-patient', 'patient@gmail.com', '$2y$10$AWdsWaw3EFqzlz3wDcdsS.AdYn3wa/8hnzmJ/itSaBK7iwdkv4zG6', 'male', 'asdas das da sda s d', '1969-02-13', '03327276485', NULL, 'patient', '0', '2019-02-09 08:32:24', 'IPrWZEgEC31txVNVH3L9NTq2HiF92L5TawX4Jop2IQFVqqdwMlRfacCCz1Ty', '2019-02-08 08:39:24', '2019-02-09 03:32:24'),
(3, 'Doctor', 'UseR', 'Doctor', 'doctor', 'doc@gmail.com', '$2y$10$AWdsWaw3EFqzlz3wDcdsS.AdYn3wa/8hnzmJ/itSaBK7iwdkv4zG6', 'male', 'asdas das das das d', '1986-01-30', '02245459865', '/profileimages/1549633495.jpg', 'doctor', '0', '2019-02-09 11:27:27', 'dKEmgLQK3zeiev7J81T4w9ZUgxKnU4ArCakkAMxmytXy90fQNmLpGo5EtQfd', '2019-02-08 08:44:55', '2019-02-09 06:27:27'),
(4, 'Test', 'Patient', 'Test Patient 1', 'test-patient-1', 'patient1@gmail.com', '$2y$10$AWdsWaw3EFqzlz3wDcdsS.AdYn3wa/8hnzmJ/itSaBK7iwdkv4zG6', 'male', 'I/45 D block Bahira Town, Lahore', '1975-02-04', '05214454547555', NULL, 'patient', NULL, '2019-02-09 09:34:24', 'Sc8NeFt9SEw40A6gnIuEj5A6lqEPdJi2Tfv3b5Q9pFQwHxgpMMBeBsBKx8Ru', '2019-02-08 18:34:37', '2019-02-09 04:34:24'),
(5, 'Test', 'Patient', 'Test Patient 2', 'test-patient-2', 'patient2@gmail.com', '$2y$10$AWdsWaw3EFqzlz3wDcdsS.AdYn3wa/8hnzmJ/itSaBK7iwdkv4zG6', 'female', 'asd asd asd asdas das d as', '1985-02-21', '0325254522545', NULL, 'patient', '0', '2019-02-09 10:00:33', 'gXiSy8pEtlSc0JlCHW4DYBT16azuc7GvmpYOxnDZoctXxDFBjvoI6sSz7vIr', '2019-02-08 18:38:03', '2019-02-09 05:00:33'),
(6, 'Doctor', 'UseR', 'Doctor 1', 'doctor-1', 'doc1@gmail.com', '$2y$10$AWdsWaw3EFqzlz3wDcdsS.AdYn3wa/8hnzmJ/itSaBK7iwdkv4zG6', 'male', 'asdas das das das d', '1978-01-30', '02245459865', NULL, 'doctor', '0', '2019-02-25 16:53:12', 'Oc1h9lGcWRczrawjSK54TBDJKJUbrp6CBMvVe8CTKfQ10Sat4ROq3yyxd15H', '2019-02-08 18:42:46', '2019-02-08 18:42:46'),
(7, 'Doctor', 'UseR', 'Doctor 2', 'doctor-2', 'doc2@gmail.com', '$2y$10$AWdsWaw3EFqzlz3wDcdsS.AdYn3wa/8hnzmJ/itSaBK7iwdkv4zG6', 'female', 'asdas das das das d', '1969-01-30', '02245459865', NULL, 'doctor', '0', '2019-02-25 16:53:12', '', '2019-02-08 18:42:46', '2019-02-08 18:42:46'),
(8, 'Arslan', 'Naseeb', 'Arsalan Naseeb', 'arsalan-naseeb', 'arslannaseeb@gmail.com', '$2y$10$mBhUpkfHlf70toclE7b1..Iq.Vu2tmLQogw05jFITtFxZoWe/4Li.', 'male', '9D bakhtawar park ravi road lahore', '1995-05-02', '03204859003', NULL, 'doctor', '0', NULL, NULL, '2019-02-08 21:35:41', '2019-02-08 21:36:49'),
(9, 'Patient', 'Patient', 'Test Patient 4', 'test-patient-4', 'patient4@gmail.com', '$2y$10$XaHaerw.xmTVD2siL3BW3.PXASnSKDQPwZXgY2oo4Msvb3h5V2ody', 'female', '9D bakhtawar park ravi road lahore', '1985-05-04', '03334876199', NULL, 'patient', '0', NULL, NULL, '2019-02-08 21:38:23', '2019-02-08 21:40:30'),
(10, 'Arslan', 'Naseeb', 'Arsalan Naseeb', 'arsalan-naseeb-1', 'arslan@gmail.com', '$2y$10$eQUKUGJHnpI.moMAsUmUneboZqbNAVHEfRKZMPGzrxeKlzSfliZbG', 'male', 'Sargodha', '2019-09-12', '03137943895', NULL, 'patient', '0', NULL, NULL, '2019-02-08 23:22:03', '2019-02-08 23:22:03'),
(11, 'raza', 'ali', 'raza', 'raza', 'raza@gmnail.com', '$2y$10$FQSH1LwbwcLCFEY2f/v4.OWPqSHtHTMLIwxhE3.0OCvb.sTT8gqKm', 'male', 'lahore', '1980-01-01', '03204859003', NULL, 'doctor', '0', '2019-02-09 08:35:21', 'X0foJGj3bDn0dsQh6jcgdxU5vZq8UEUeYK8w90DdEw0RPwtkaxazpjAd5okw', '2019-02-09 03:34:17', '2019-02-09 03:35:21'),
(12, 'ali', 'sajjad', 'ali', 'ali', 'ali@gmail.com', '$2y$10$TjJTrS3VdRSBx2W13Yozoe2o5EvsfuN1fhTsUScOp5qjT7hzilBee', 'male', 'lahore', '1993-11-01', '03204859002', NULL, 'patient', '0', '2019-02-09 10:41:58', NULL, '2019-02-09 05:17:44', '2019-02-09 05:41:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks_doctors`
--
ALTER TABLE `feedbacks_doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `options_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedbacks_doctors`
--
ALTER TABLE `feedbacks_doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
