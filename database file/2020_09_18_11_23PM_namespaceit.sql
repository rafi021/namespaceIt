-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 07:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `namespaceit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_photo.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `user_id`, `address`, `gender`, `experience`, `cover_letter`, `resume_file`, `profile_photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Dhaka, BD', 'Male', '10', NULL, NULL, 'default_photo.jpg', '2020-09-18 13:32:45', NULL, NULL),
(2, 5, '10-C/3 Aziz Moholla, Mohammudpur', 'male', '5', NULL, 'applicant/resume_file/2_resume_file.pdf', 'default_photo.jpg', '2020-09-18 13:39:01', '2020-09-18 13:40:08', NULL),
(3, 6, NULL, 'male', NULL, NULL, 'applicant/resume_file/3_resume_file.pdf', 'default_photo.jpg', '2020-09-18 16:00:00', '2020-09-18 16:00:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.jpg',
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cover_photo.jpg',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `user_id`, `business_name`, `slug`, `company_address`, `phone`, `website`, `logo`, `cover_photo`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'ABC Company', 'abc-companyOdhs8', 'ABC Company, Dhaka, BD', '02-555-5555', 'www.abc.com', '1_logo.jpg', '1_cover_photo.jpg', 'its a demo company', '2020-09-18 13:32:45', '2020-09-18 17:14:01', NULL),
(2, 4, NULL, NULL, NULL, NULL, NULL, 'logo.jpg', 'cover_photo.jpg', NULL, '2020-09-18 13:33:33', '2020-09-18 13:33:33', NULL);

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `last_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `employer_id`, `category_id`, `job_title`, `job_slug`, `education_required`, `experience_required`, `job_description`, `gender`, `position`, `vacancy`, `salary`, `location`, `country`, `job_type`, `status`, `last_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 2, 15, 'Doctor', 'doctorpwOCq', 'MBBS', '2 Year to 3 Year', 'We need 2 doctor', 'any', 'Doctor', '2', '40K-50K', 'Dhaka, BD', 'Bangladesh', 'Full Time', 1, '2020-09-18', '2020-09-18 13:34:12', '2020-09-18 13:34:12', NULL),
(2, 4, 2, 5, 'Engineer', 'engineerF0RVK', 'B.Sc in CSE', '3 Year to 4 Year', 'need engineer', 'any', 'Engineer', '3', '50K', 'Dhaka, BD', 'Bangladesh', 'Full Time', 1, '2020-10-07', '2020-09-18 13:34:45', '2020-09-18 13:34:45', NULL),
(3, 2, 1, 17, 'Night Gurad', 'night-guradtHJ2c', 'SSC', '1 Year to 2 Year', 'we need a night gruad', 'male', 'Night Gurad', '1', '5K-10K', 'Dhaka, BD', 'Bangladesh', 'Full Time', 1, '2020-10-10', '2020-09-18 13:58:24', '2020-09-18 13:58:24', NULL),
(4, 2, 1, 5, 'Electrical Engineer', 'electrical-engineer2ilsk', 'B.Sc in EEE', '3 Year to 4 Year', 'we Need Electrical Engineer', 'male', 'Electrical Engineer', '5', '50K', 'Barisal, BD', 'Bangladesh', 'Full Time', 1, '2020-10-05', '2020-09-18 13:59:26', '2020-09-18 13:59:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobs_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `jobs_id`, `user_id`, `employer_id`, `applicant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 5, 1, 2, '2020-09-18 14:00:12', '2020-09-18 14:00:12', NULL),
(2, 3, 6, 1, 3, '2020-09-18 16:00:38', '2020-09-18 16:00:38', NULL),
(3, 2, 6, 2, 3, '2020-09-18 16:01:01', '2020-09-18 16:01:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `job_category_name`, `job_category_slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Accounting/Finance', 'accountingfinanceDExp3', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(2, 'Banking', 'banking4xCJt', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(3, 'Commercial/Supply Chain', 'commercialsupply-chainulbpC', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(4, 'Education/Trainning', 'educationtrainningvgZ5u', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(5, 'Engineer/Architects', 'engineerarchitectshkSkb', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(6, 'Garments/Textile', 'garmentstextilee3r7i', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(7, 'HR/Org.Development', 'hrorgdevelopmentoS0f3', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(8, 'Gen Mgt/Admin', 'gen-mgtadminL21EH', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(9, 'Design/Creative', 'designcreativePE61L', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(10, 'Production/Operation', 'productionoperationcUMjc', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(11, 'Hospitality/Travel/Tourism', 'hospitalitytraveltourismsab38', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(12, 'IT & Telecommunication', 'it-telecommunication5drWo', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(13, 'Marketing/Sales', 'marketingsalesU3vuG', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(14, 'Media/Ad./Event Mgt.', 'mediaadevent-mgtzJggk', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(15, 'Medical/Pharma', 'medicalpharmaP3fnU', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(16, 'NGO', 'ngoHTh4y', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL),
(17, 'Others', 'othersXBKOr', '2020-09-18 13:32:44', '2020-09-18 13:32:44', NULL);

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
(4, '2020_09_16_143156_create_roles_table', 1),
(5, '2020_09_16_143957_create_employers_table', 1),
(6, '2020_09_16_144720_create_applicants_table', 1),
(7, '2020_09_16_145206_create_admins_table', 1),
(8, '2020_09_17_022231_create_jobs_table', 1),
(9, '2020_09_17_023325_create_job_categories_table', 1),
(10, '2020_09_17_144152_create_job_applications_table', 1),
(11, '2020_09_18_045421_create_skills_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2020-09-18 13:32:44', '2020-09-18 13:32:44'),
(2, 'Employer', 'Employer', '2020-09-18 13:32:44', '2020-09-18 13:32:44'),
(3, 'Applicant', 'Applicant', '2020-09-18 13:32:44', '2020-09-18 13:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skills_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skills_name`, `skills_slug`, `applicant_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', 'kWI7m', '3', '2020-09-18 13:40:08', '2020-09-18 16:00:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `role_id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin', 'admin@admin.com', '2020-09-18 13:32:44', '$2y$10$ntjG6yLa4/OLMu7tgcQOW.VjNFlLzMRq3Mv.v4UG507EKQCAzTE26', NULL, NULL, NULL),
(2, 2, 'Job', 'Employer', 'employer@login.com', '2020-09-18 13:32:45', '$2y$10$LppVuwqUKyZfCt/IKq/ov.n0f4EGnrraWTXLh4zYa8dQ72norKQLy', NULL, NULL, NULL),
(3, 3, 'Job', 'Applicant', 'applicant@login.com', '2020-09-18 13:32:45', '$2y$10$7c.v20zpZGoI2o/9S3MEBeLEYnPhju9e9kWD203LmYqEuQMu66Ply', NULL, NULL, NULL),
(4, 2, 'Ismat', 'Ara', 'ismat@live.com', NULL, '$2y$10$.kFE5/lG8fSyrzaH6w3EqOyYQtwkxes3ZOje.AkrdsetcL/kN4aCO', NULL, NULL, NULL),
(5, 3, 'Mahmud', 'Ibrahim', 'embeddedworld24@gmail.com', NULL, '$2y$10$k39VVS2vb0Hsgsx7ZXNGBO2jq0xf8.mokH72/eCjx7XA39oNYPWoq', NULL, NULL, NULL),
(6, 3, 'John', 'Doe', 'john@laravel.test', NULL, '$2y$10$xVYmcQxzrxFMsOB4j0EuoeEt96Qh2Ptmcgp1sft/NKeqrcBDIjxFi', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `employers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
