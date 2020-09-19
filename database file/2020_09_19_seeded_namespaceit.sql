-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2020 at 01:10 PM
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
(1, 3, 'Dhaka, BD', 'male', '10', NULL, 'applicant/resume_file/1_resume_file.pdf', 'default_photo.jpg', '2020-09-18 18:28:05', '2020-09-19 02:42:28', NULL),
(2, 4, '341 Kassulke Overpass Apt. 440\nKulasmouth, MS 09047-3460', 'Mr.', '4', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(3, 3, '94262 Alexane Fall\nCroninfort, OH 57562', 'Dr.', '9', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(4, 23, '6986 Purdy Avenue\nMustafaview, TN 49922-5952', 'Dr.', '2', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(5, 14, '899 Hand Common Apt. 929\nLake Vergie, VA 30722', 'Miss', '8', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(6, 17, '63567 Makenzie Glen Suite 142\nEast Jazlynstad, NJ 56149', 'Prof.', '5', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(7, 23, '418 Breanna Route Apt. 637\nNew Myaview, IL 57836', 'Miss', '3', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(8, 23, '2630 Bessie Branch\nRohanside, MN 36610-6340', 'Prof.', '6', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(9, 20, '28602 Tressa Center Apt. 872\nItzelbury, KS 19112-5329', 'Prof.', '6', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(10, 4, '144 Swift Extension\nNorth Jarrod, ID 11869-8972', 'Mrs.', '7', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(11, 4, '809 Graham Fields Suite 524\nPadbergland, PA 65283', 'Miss', '9', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(12, 17, '49474 Carol Summit\nNew Zoilashire, MD 64854', 'Prof.', '5', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(13, 3, '45947 Desiree Hollow Suite 620\nMckaylamouth, NH 09413-8048', 'Mr.', '5', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(14, 7, '2802 Kelly Lane\nNorth Reva, SC 83717', 'Dr.', '7', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(15, 23, '3380 Altenwerth Harbors Suite 012\nKellystad, LA 94646', 'Miss', '8', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(16, 3, '71680 Cullen Place\nVidaport, OK 99130', 'Ms.', '5', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(17, 19, '985 Frami Trace\nAustinchester, GA 65153-8613', 'Mr.', '3', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(18, 17, '15333 Arvel Brooks Apt. 789\nNorth Jason, TN 06315', 'Mrs.', '3', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(19, 3, '18565 Hahn Vista\nNorth Aracelyburgh, WV 95000', 'Dr.', '9', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(20, 4, '14214 Fleta Shore\nFrankstad, MS 28660', 'Mr.', '10', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(21, 3, '9652 Bayer Fords\nEast Saul, MI 97700', 'Prof.', '4', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(22, 20, '2389 Prosacco Shoal\nStarkshire, UT 12711-2620', 'Dr.', '9', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(23, 23, '99649 Maymie Passage\nBrownborough, SD 53760-0810', 'Dr.', '3', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(24, 23, '8222 Friedrich Locks\nEuniceton, MO 51732', 'Prof.', '7', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(25, 3, '4794 Eichmann Tunnel\nAudreanneborough, WI 35540', 'Ms.', '7', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(26, 16, '10049 Scottie Land\nSouth Makayla, UT 94482', 'Mrs.', '7', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(27, 4, '68309 Davonte Cliff\nTrompburgh, SD 55356', 'Ms.', '7', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(28, 16, '902 Ankunding Oval\nWest Amina, VA 62799-7590', 'Prof.', '9', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(29, 4, '37643 Mina Extension\nNorth Armandmouth, ID 38471', 'Prof.', '6', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(30, 23, '3565 Kuphal Terrace Suite 881\nJuanaburgh, UT 65583', 'Miss', '7', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(31, 7, '94229 Yoshiko Hollow\nEdwinhaven, NY 91194', 'Prof.', '10', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(32, 16, '100 Heaney Islands\nNorth Carmen, NH 27273-5958', 'Prof.', '6', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(33, 16, '9806 Reichert Trace Suite 265\nWest Hilbert, FL 69640', 'Prof.', '5', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(34, 16, '449 Littel Garden\nStehrburgh, SD 98205', 'Prof.', '10', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(35, 14, '8986 Jammie Underpass Apt. 529\nLake Cielofurt, AR 86247-8691', 'Dr.', '4', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(36, 23, '80800 Wilderman Court\nQuigleyview, FL 28033-6795', 'Miss', '3', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(37, 16, '312 Wiegand Divide Suite 597\nSchmelerbury, PA 51799', 'Mr.', '2', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(38, 14, '677 Jaquelin Row Suite 932\nLake Kristinaborough, OR 93659-5593', 'Mrs.', '1', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(39, 3, '8156 Jacobs Extension\nAgnesport, KS 55212', 'Dr.', '6', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(40, 14, '412 Hayes Manors\nDallinview, CT 13394-8248', 'Prof.', '9', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(41, 19, '118 Naomi Land\nLittelberg, VA 79094-6897', 'Miss', '3', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(42, 14, '17371 Kassulke Meadow Suite 724\nDorisfort, LA 48457', 'Miss', '4', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(43, 16, '43489 Jackie Run\nJaskolskiville, NC 07682', 'Ms.', '3', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(44, 3, '54442 Kali Shoal\nKoelpinburgh, NE 20949-2883', 'Prof.', '5', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(45, 20, '52421 Lonny Fields\nIanland, MT 83876-5420', 'Mrs.', '5', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(46, 4, '8015 Heathcote Street Apt. 132\nWalshburgh, WI 48460-1446', 'Prof.', '8', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(47, 4, '1390 Stamm Mills Apt. 017\nCorwinborough, MI 95142', 'Mr.', '8', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(48, 7, '9944 Waelchi Lodge Suite 769\nZiemechester, NH 35615-5609', 'Ms.', '10', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(49, 16, '447 Schumm Ways Suite 077\nPort Jeanetteborough, OK 95845-1963', 'Ms.', '1', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(50, 17, '6001 Leta Mission Apt. 867\nPort Leopold, KY 20971-3096', 'Mrs.', '7', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(51, 19, '33123 Lowe Plain Apt. 747\nEast Harmonymouth, NC 27252-0536', 'Dr.', '2', NULL, NULL, 'default_photo.jpg', '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL);

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
(1, 2, 'ABC Company', 'abc-companyYLduw', 'ABC Company, Dhaka, BD', '02-555-5555', 'www.abc.com', 'logo.jpg', 'cover_photo.jpg', 'its a demo company', '2020-09-18 18:28:05', NULL, NULL),
(2, 13, 'Littel, Herman and Blanda', 'littel-herman-and-blandazKrTb', '8524 King Prairie Apt. 067\nWest Scottieport, DC 68333-4855', '1-829-746-0801', 'green.com', 'logo.jpg', 'cover_photo.jpg', 'Fuga facilis ullam dignissimos et iusto dolore et. Provident consequatur dolorem quisquam quo aut.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(3, 22, 'Hoppe, Schamberger and Boyle', 'hoppe-schamberger-and-boyleTZ2ta', '241 Ansley Throughway Apt. 169\nPort Raphaelberg, CT 50798', '291.907.8248', 'hagenes.biz', 'logo.jpg', 'cover_photo.jpg', 'Aut nihil aut perferendis ea fuga nihil non ad. Non suscipit ut ipsa quod atque sequi quaerat. Rerum id et ducimus autem beatae. Itaque asperiores et corporis libero soluta est. Modi autem debitis doloribus corrupti. Culpa expedita sed voluptas accusantium sapiente quia. Aperiam ex accusantium tempore esse. Soluta cum sit consequatur pariatur magnam voluptatibus ea cum. Dolores nam corporis in aspernatur neque perspiciatis. Itaque illo aliquid magni. Vitae fugiat occaecati suscipit sunt tenetur aperiam.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(4, 5, 'Bednar LLC', 'bednar-llce5A5u', '7529 Kassulke Stream\nMarianaburgh, LA 00463', '(921) 481-4801', 'swaniawski.com', 'logo.jpg', 'cover_photo.jpg', 'Suscipit quam voluptatem quis qui minima. Ut fuga cupiditate odit non. Quia omnis consequatur aliquid dolores velit aspernatur qui.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(5, 9, 'Schmeler-Dibbert', 'schmeler-dibbertbCl9p', '26738 Murazik Walk\nEast Aleenmouth, WI 44851-0228', '246-670-4956', 'wintheiser.com', 'logo.jpg', 'cover_photo.jpg', 'Molestiae nulla nostrum facere et. Voluptate soluta ut eum qui exercitationem vero. Eius voluptatem libero cupiditate ea consectetur quod. Tempore nihil ratione debitis. Quia qui quas corrupti tenetur ab a. Aliquam quia ad molestias. Perferendis asperiores laboriosam accusamus. Minus et magnam quia nulla dolores. Omnis accusantium odit libero consequatur laborum. Ratione quod delectus cum necessitatibus doloribus voluptatem. Modi labore rerum placeat aliquid quidem. Amet quibusdam a veniam quasi delectus fugit.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(6, 21, 'Botsford, Littel and Shields', 'botsford-littel-and-shieldsFhe9s', '65017 Heath Brook\nNorth Rosemary, ND 21399', '1-684-472-5413 x7996', 'lowe.net', 'logo.jpg', 'cover_photo.jpg', 'Eum quos necessitatibus aut totam voluptatem. Reprehenderit debitis enim quaerat dolorum. Eaque et nam reprehenderit animi. Facilis at illum dolores. Voluptatem impedit et debitis culpa dolor veritatis. Minus harum aut eum ea suscipit cumque placeat. Ea voluptatum et neque natus enim facilis rerum sunt. Quia magnam qui quo. Quis aut ipsum tempore aliquid nemo. Totam libero qui saepe quas.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(7, 13, 'Schneider Ltd', 'schneider-ltd7Wu2y', '57225 Mohammed Ports\nEast Anita, UT 59177-8076', '490-220-2213 x627', 'mills.org', 'logo.jpg', 'cover_photo.jpg', 'Aut quis dolor et id. Quis est vero quod facilis cum dicta vel error.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(8, 6, 'Schaefer, Hermann and Stanton', 'schaefer-hermann-and-stantonyKPAb', '829 Vicenta Villages Apt. 825\nGleasonchester, AK 07145-8138', '235.218.4592 x46698', 'hermiston.com', 'logo.jpg', 'cover_photo.jpg', 'Voluptatem aut et explicabo voluptates tempora sint maiores. Sit aut nihil omnis excepturi dolorum. Magni eos rem eligendi eveniet. Quasi neque voluptatem ut nulla qui blanditiis.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(9, 10, 'Renner Inc', 'renner-incFnu6H', '87803 Jameson Ports Suite 365\nEast Rahsaan, DE 30609-3193', '1-391-993-5754', 'reynolds.com', 'logo.jpg', 'cover_photo.jpg', 'Fugiat officia necessitatibus nemo qui. Tempora enim autem eos dicta. Magni dolorem libero ut ipsum in amet earum.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(10, 2, 'Reilly-Bayer', 'reilly-bayer3aOCU', '3113 Leonard Unions Suite 740\nEast Candelario, WV 53641', '1-219-959-6664 x802', 'weimann.com', 'logo.jpg', 'cover_photo.jpg', 'Est aut vel neque. Dolores sit cum alias quo dolor. Omnis rem voluptas et officia adipisci sed. Voluptatem ut dolor in et odit quo. Quia eum aut ea omnis nostrum occaecati.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(11, 22, 'Schimmel and Sons', 'schimmel-and-sons1jLs4', '307 Kub Island Suite 375\nPort Cathryn, KY 08878', '(928) 394-9842 x6645', 'flatley.net', 'logo.jpg', 'cover_photo.jpg', 'Voluptatem sunt dignissimos earum dolorum nihil atque dolore quasi. Veritatis et molestiae sapiente maxime. Accusamus dolorum sunt ducimus et aut ipsa rerum. Beatae magni delectus incidunt eligendi.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(12, 12, 'Swift Group', 'swift-groupae7Fe', '350 Cummings Islands Apt. 041\nEast Selinafurt, AR 91808-1708', '+1-963-389-3806', 'gislason.com', 'logo.jpg', 'cover_photo.jpg', 'Molestiae reiciendis sed nobis nesciunt at quidem. Ab consectetur mollitia omnis officia autem quisquam blanditiis. Consequuntur quasi deserunt corrupti. Nisi sunt dolores et. Minus iste ipsa tenetur iste. Impedit maxime quas tenetur deleniti repellendus deserunt asperiores. Asperiores laborum sit libero porro ut eveniet molestiae. Autem dolor eveniet hic consequatur quis. Qui ut quos qui distinctio ratione rerum. Vitae sit similique autem sit provident. Nesciunt ut quia molestiae laborum sed.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(13, 2, 'Stanton-Lueilwitz', 'stanton-lueilwitz5rcFG', '5644 Zemlak Shores Suite 156\nLarissaview, CO 05921', '819-633-5300 x8647', 'oconner.com', 'logo.jpg', 'cover_photo.jpg', 'Voluptatem aut sit quia dolore natus quo repellat. Quas aut voluptatum repellat est esse sit aut. Rerum dolores debitis aut optio repellendus. Eos quia qui quia tempora nihil sed enim. Suscipit rerum ad eum fuga. Sed dolorum rem in ullam optio voluptate et. Libero ea non voluptate. Fugiat iste laboriosam nesciunt et quaerat aut. Earum ut eaque ipsam ut quidem occaecati.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(14, 15, 'Lemke-Kemmer', 'lemke-kemmer1ie28', '1399 Carolyn Vista Suite 310\nParkerchester, KS 09568-8318', '1-610-218-2032 x16588', 'herzog.net', 'logo.jpg', 'cover_photo.jpg', 'Neque rem ut iste qui quo doloremque. Sit et nam impedit praesentium qui in blanditiis. Id beatae nulla quibusdam repudiandae tenetur qui. Eos sed reprehenderit sed perspiciatis. Maiores et cupiditate dolor et omnis dolorum. Non fugit nemo reprehenderit at debitis similique dolores tempore. Aut et impedit aperiam. Quaerat voluptates facere similique molestiae nam suscipit ipsa.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(15, 22, 'Wintheiser Group', 'wintheiser-groupNjhxS', '7953 Isabel Unions\nSouth Emeraldton, MO 67473-8943', '486.326.6285 x361', 'kub.com', 'logo.jpg', 'cover_photo.jpg', 'Est autem assumenda perferendis dolor molestias. Rerum ut rerum non repellat. Excepturi laboriosam numquam possimus saepe. Alias et eos consequatur facilis consectetur. Sint quam unde et. Tempora accusamus aut inventore quo quae ullam rem. Tempora nam veritatis iure consequatur qui eveniet eaque.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(16, 10, 'Aufderhar-Hermann', 'aufderhar-hermannNsi1r', '773 Akeem Court\nCorwinborough, KS 74856-1921', '559-774-9012 x39750', 'carroll.org', 'logo.jpg', 'cover_photo.jpg', 'Mollitia aliquid non eligendi voluptatibus ex ad aspernatur. Impedit quia quis nihil dolore dolores voluptatum. Atque dicta nihil debitis omnis deleniti distinctio consequatur cupiditate. Maiores neque quod deserunt magnam itaque nihil.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(17, 12, 'Champlin and Sons', 'champlin-and-sonsuJ6l8', '935 Alexanne Crest Suite 053\nShayneborough, IN 30015-2278', '+16819894341', 'cronin.com', 'logo.jpg', 'cover_photo.jpg', 'Dolor mollitia assumenda aut sint illum. Perspiciatis assumenda eaque ipsum id. Qui iste mollitia dicta quis minus. Vitae quia magnam quos velit sequi qui veniam.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(18, 2, 'Homenick and Sons', 'homenick-and-sonstZt5M', '248 Wisozk Pines\nSouth Bertatown, CO 05589-6629', '431-390-1681', 'cartwright.com', 'logo.jpg', 'cover_photo.jpg', 'Est quo consectetur quia iste. Rem omnis consequatur enim. Amet temporibus laboriosam cupiditate voluptates voluptatem et eum. Reprehenderit dolorum natus provident ea temporibus dignissimos. Dicta corporis placeat debitis sit enim et reprehenderit. Ut facere est aut fuga impedit qui. Totam nemo non earum dicta omnis.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(19, 13, 'Streich-Beier', 'streich-beiermxBxT', '434 Glover Key Suite 815\nHarveyfort, NJ 77912-9898', '+1-324-930-7212', 'bernier.info', 'logo.jpg', 'cover_photo.jpg', 'Voluptas sunt numquam itaque quas eum veritatis dolores. Ratione rerum voluptatem expedita labore totam qui. Et recusandae sint voluptatem consectetur eos similique. Architecto et aut laudantium quam. Totam facilis voluptatem quisquam enim. Nesciunt minima similique nemo assumenda. Temporibus aut et temporibus id voluptatibus ullam eos eos. Et eos aspernatur nihil consequatur. Laborum incidunt corrupti officia aperiam. Eligendi fugiat ad aut ea. Aliquam in voluptatem velit repellat quaerat animi. Nisi sequi et accusamus quidem necessitatibus consequatur cupiditate rerum.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(20, 21, 'Pouros Group', 'pouros-group0wQ2y', '9320 Heathcote Mount\nLake Marie, OR 02727-8223', '267-302-6814 x9634', 'ortiz.com', 'logo.jpg', 'cover_photo.jpg', 'Est dolores enim omnis cupiditate ea. Voluptatem corporis aut aspernatur molestiae consequatur consectetur. Ut commodi occaecati non in alias est. Non ad blanditiis earum perferendis amet. Rerum in molestias quasi et sit esse. Omnis occaecati dolorem id est perferendis. Necessitatibus perferendis adipisci eligendi placeat eum et maxime. Saepe omnis vel vel molestiae architecto aut qui ut. Porro occaecati molestiae voluptas. Debitis quisquam illum provident asperiores consequuntur sed reiciendis.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(21, 22, 'Marquardt Inc', 'marquardt-incU3BeZ', '55778 Arely Extension\nPort Maximus, SD 05588', '714.574.4675', 'grant.com', 'logo.jpg', 'cover_photo.jpg', 'Voluptates in in tempore saepe doloribus omnis. Et facere totam voluptate quisquam. Porro voluptas voluptas doloremque. Id fuga temporibus cum error porro id aliquam sint.', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL);

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
(1, 21, 19, 3, 'Placeat ullam sunt et. Expedita facilis dolorem recusandae sit. Repellat vitae beatae sit enim earum iusto debitis eum. Eos assumenda eum facere neque.', 'placeat-ullam-sunt-et-expedita-facilis-dolorem-recusandae-sit-repellat-vitae-beatae-sit-enim-earum-iusto-debitis-eum-eos-assumenda-eum-facere-nequevJIso', 'Bacelor/Master/s', '2 Year to 3 Year', 'Et aspernatur aut et occaecati rem enim eaque. Eos in autem libero voluptatem reprehenderit iure vel. Numquam adipisci eaque molestias consequuntur. Pariatur qui dignissimos eos sed nemo. Aperiam maiores et non sapiente dolorem est et commodi. Sunt corporis qui dolores ad dolore impedit explicabo aliquam. Laborum iste aut vitae beatae voluptas ipsam. Alias quasi commodi at non optio dolor.', 'Any', 'Furniture Finisher', '3', '179046', '5966 Glover Turnpike Suite 230\nSouth Ben, OH 57841-9780', 'Zimbabwe', 'Full time', 0, '2020-11-21 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(2, 5, 6, 3, 'Voluptatem eos at quod tempora quae. Itaque rem laudantium vitae rerum velit. Necessitatibus in autem sint at consequatur. Molestiae qui fuga aut dolor vel voluptates placeat explicabo.', 'voluptatem-eos-at-quod-tempora-quae-itaque-rem-laudantium-vitae-rerum-velit-necessitatibus-in-autem-sint-at-consequatur-molestiae-qui-fuga-aut-dolor-vel-voluptates-placeat-explicabo5BibL', 'Bacelor/Master/s', '2 Year to 3 Year', 'Consequatur nulla doloribus quia. Aut corrupti consequatur consequuntur quaerat. Sed autem nisi totam sint laboriosam. Et porro qui quo eveniet adipisci rerum officia.', 'Any', 'Sales Manager', '5', '148203', '258 Stracke Forge\nEast Borisville, AR 84257-7445', 'Paraguay', 'Full time', 1, '2020-11-14 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(3, 9, 2, 6, 'Velit enim similique et id numquam officiis. Excepturi ducimus aut sunt voluptatum.', 'velit-enim-similique-et-id-numquam-officiis-excepturi-ducimus-aut-sunt-voluptatumekELl', 'Bacelor/Master/s', '2 Year to 3 Year', 'At quasi ut delectus culpa ut suscipit voluptatem. Molestiae odit veniam iste quasi. Magnam praesentium inventore dignissimos excepturi. Eligendi repudiandae dolore ullam itaque vel voluptate. Voluptas soluta iure enim soluta consequuntur magnam tenetur.', 'Any', 'Aircraft Launch Specialist', '5', '385714', '47536 Jules Stravenue\nWest Marlen, AZ 00975', 'Saint Vincent and the Grenadines', 'Full time', 0, '2020-09-26 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(4, 22, 12, 15, 'Dicta non nemo quod et nemo eveniet consequatur. Et quidem nihil illum voluptatem. Voluptas enim est ex esse architecto. Omnis eos ea sint qui maxime. Accusantium error vitae accusantium sit dolor.', 'dicta-non-nemo-quod-et-nemo-eveniet-consequatur-et-quidem-nihil-illum-voluptatem-voluptas-enim-est-ex-esse-architecto-omnis-eos-ea-sint-qui-maxime-accusantium-error-vitae-accusantium-sit-dolorNc7eF', 'Bacelor/Master/s', '2 Year to 3 Year', 'Dolores sit et sint id. Accusamus labore voluptatem vero voluptas dolorem voluptate consequatur. Molestiae beatae est cum soluta dolores assumenda amet.', 'Any', 'Industrial Safety Engineer', '3', '531962', '908 Cronin Crest\nBrisaside, AR 52835-4182', 'Aruba', 'Full time', 0, '2020-10-17 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(5, 22, 18, 8, 'Similique animi omnis maiores eos dicta aut dolorum. Voluptatem placeat et ut neque quos quo fuga. Laudantium nemo quae odit accusantium voluptatum sit.', 'similique-animi-omnis-maiores-eos-dicta-aut-dolorum-voluptatem-placeat-et-ut-neque-quos-quo-fuga-laudantium-nemo-quae-odit-accusantium-voluptatum-sitFc3Ey', 'Bacelor/Master/s', '2 Year to 3 Year', 'Laborum et minima animi sit dolor. Reprehenderit harum possimus possimus. Facilis est blanditiis vero dolor labore. Qui et quibusdam aliquid est qui. Libero at quo quia voluptatem recusandae. Cupiditate eum aperiam hic dolorem architecto commodi accusantium.', 'Any', 'Special Forces Officer', '2', '867858', '112 Kelvin Street Suite 261\nLydaberg, NV 99590', 'Sao Tome and Principe', 'Full time', 1, '2020-10-24 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(6, 21, 10, 5, 'Non sed vitae nesciunt voluptatibus culpa sed. Deleniti velit quo et quod culpa. Quod distinctio et possimus maiores expedita. Repudiandae cupiditate aut qui pariatur.', 'non-sed-vitae-nesciunt-voluptatibus-culpa-sed-deleniti-velit-quo-et-quod-culpa-quod-distinctio-et-possimus-maiores-expedita-repudiandae-cupiditate-aut-qui-pariaturves9K', 'Bacelor/Master/s', '2 Year to 3 Year', 'Quia et voluptatem nesciunt fugit ut laboriosam. Nulla corrupti et quia delectus. Recusandae sint aperiam cupiditate aut eum fuga. Optio illo dolores ullam eum. Qui temporibus in quam illum quis voluptatem incidunt. Iste omnis magnam totam minus aut. Et dignissimos aspernatur eos maxime et commodi.', 'Any', 'Algorithm Developer', '4', '240988', '646 O\'Kon Walk\nNew Lorenmouth, TN 68495-6372', 'Yemen', 'Full time', 1, '2020-10-17 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(7, 12, 15, 13, 'Numquam voluptatem expedita expedita ut eum molestiae eos. Voluptatibus molestiae quam temporibus minus est nihil. Vel asperiores adipisci minima iure magni ea maiores.', 'numquam-voluptatem-expedita-expedita-ut-eum-molestiae-eos-voluptatibus-molestiae-quam-temporibus-minus-est-nihil-vel-asperiores-adipisci-minima-iure-magni-ea-maioresRISec', 'Bacelor/Master/s', '2 Year to 3 Year', 'Fugiat vel vitae iusto debitis ut. Ut cupiditate expedita ducimus quia placeat sunt repellat voluptatem. Earum provident eius et modi quis vel. Dicta cupiditate est incidunt distinctio quas et.', 'Any', 'Adjustment Clerk', '3', '731004', '21791 Sauer Village\nGerardville, UT 07282-0092', 'Chad', 'Full time', 1, '2020-11-28 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(8, 2, 15, 3, 'Magnam asperiores tempora voluptatum aut accusantium cupiditate. In et tempora tempore accusantium ea rem. Et perspiciatis aspernatur excepturi.', 'magnam-asperiores-tempora-voluptatum-aut-accusantium-cupiditate-in-et-tempora-tempore-accusantium-ea-rem-et-perspiciatis-aspernatur-excepturiN9k0c', 'Bacelor/Master/s', '2 Year to 3 Year', 'Iure delectus placeat et dolor. Nihil ut nostrum ad neque reprehenderit quia. Molestias molestias nisi pariatur officiis dolore labore quam. Rerum perspiciatis voluptas sit blanditiis rem magni adipisci. Doloribus saepe enim beatae non quas. Odio veniam quis ut voluptatem exercitationem error saepe quia.', 'Any', 'Marketing VP', '4', '181252', '489 Corwin Crossroad\nCaspertown, ME 61624', 'Turks and Caicos Islands', 'Full time', 0, '2020-11-28 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(9, 15, 6, 3, 'Et qui sint velit necessitatibus possimus inventore qui odit. Voluptatem voluptatem hic occaecati eaque. Repellat doloremque porro voluptatem quam ipsum. Aut et sed dolorem aut et.', 'et-qui-sint-velit-necessitatibus-possimus-inventore-qui-odit-voluptatem-voluptatem-hic-occaecati-eaque-repellat-doloremque-porro-voluptatem-quam-ipsum-aut-et-sed-dolorem-aut-etI068r', 'Bacelor/Master/s', '2 Year to 3 Year', 'At necessitatibus aliquam voluptas expedita voluptatibus ullam. Sit non sit facere. Dicta numquam praesentium dolor. Dicta incidunt ut voluptatum non. Assumenda ullam ex dolores placeat laboriosam ea non. Ut quo eos ducimus vel dolorem eum. Sequi et eligendi enim consectetur quis. At est repellat et corrupti.', 'Any', 'Transportation Worker', '3', '593176', '338 Jacobs Field Apt. 885\nNew Domingo, MS 00614', 'Estonia', 'Full time', 1, '2020-10-31 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(10, 11, 18, 5, 'Est ex quibusdam tempora omnis pariatur rerum alias. Impedit neque quam rerum nesciunt. Et provident iure sed maxime necessitatibus. Sapiente exercitationem maxime similique distinctio libero illum.', 'est-ex-quibusdam-tempora-omnis-pariatur-rerum-alias-impedit-neque-quam-rerum-nesciunt-et-provident-iure-sed-maxime-necessitatibus-sapiente-exercitationem-maxime-similique-distinctio-libero-illumKfTOX', 'Bacelor/Master/s', '2 Year to 3 Year', 'Commodi qui dicta voluptate. Ratione hic quia quisquam ut sit. Possimus est harum laborum. Iste eius quis vero repellat harum sit. Eos incidunt repellendus quaerat et. Enim sed nam provident illum sed id. Dolorum eveniet dolorum itaque dolore sapiente. Et dicta ut voluptas quaerat.', 'Any', 'Highway Maintenance Worker', '3', '433620', '5620 Oren Village\nClaychester, OK 79656', 'Saint Vincent and the Grenadines', 'Full time', 1, '2020-09-19 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(11, 11, 14, 11, 'Optio maiores nihil et eum fuga. Ex modi autem et ex quia eius. Soluta ratione ut sit eum soluta corrupti. Dolor qui fugiat aut. Assumenda unde occaecati at et dolorum.', 'optio-maiores-nihil-et-eum-fuga-ex-modi-autem-et-ex-quia-eius-soluta-ratione-ut-sit-eum-soluta-corrupti-dolor-qui-fugiat-aut-assumenda-unde-occaecati-at-et-dolorumt5h1J', 'Bacelor/Master/s', '2 Year to 3 Year', 'Doloribus omnis distinctio ea eum beatae expedita quaerat. Officia excepturi ducimus rerum. Et nihil in voluptates sit. Aut corporis cum facilis. Aut cum neque ut unde vitae quia earum. Expedita placeat doloribus est autem. Qui dolores rem quo et reiciendis porro mollitia. Optio illum laudantium omnis omnis quia optio quo asperiores. Aspernatur id et est quisquam exercitationem omnis.', 'Any', 'Plating Operator OR Coating Machine Operator', '3', '118196', '432 Williamson Center\nRyanville, WV 58439-8749', 'Tuvalu', 'Full time', 0, '2020-10-31 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(12, 22, 2, 17, 'Ipsum qui illo odio sed alias aut non. In dolore magni ipsum adipisci dolor quo enim. Officiis voluptatem accusantium ea dolorem beatae. Ullam expedita sed aut aspernatur voluptatem.', 'ipsum-qui-illo-odio-sed-alias-aut-non-in-dolore-magni-ipsum-adipisci-dolor-quo-enim-officiis-voluptatem-accusantium-ea-dolorem-beatae-ullam-expedita-sed-aut-aspernatur-voluptatemHbeQs', 'Bacelor/Master/s', '2 Year to 3 Year', 'Dolor et et sequi dolores et minima exercitationem. Similique vel non non at. Ut commodi et voluptatum fugit sed praesentium. Aliquam corrupti magni est fugit iusto et.', 'Any', 'Team Assembler', '5', '832309', '159 Nicole Hollow\nLefflertown, MD 91073-1358', 'Eritrea', 'Full time', 0, '2020-11-14 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(13, 15, 19, 15, 'Sint quaerat hic in voluptas consequatur dolorem. Error eos temporibus facere ea ducimus. Fugiat minima error nihil facilis.', 'sint-quaerat-hic-in-voluptas-consequatur-dolorem-error-eos-temporibus-facere-ea-ducimus-fugiat-minima-error-nihil-facilis2oO4O', 'Bacelor/Master/s', '2 Year to 3 Year', 'Est dolores omnis quas et est voluptas. Saepe molestiae perspiciatis perspiciatis ut. Nam quam error placeat sit et doloribus. Veritatis aut ullam nemo natus incidunt. Quod incidunt officia officiis voluptatem qui cumque. Nisi assumenda a voluptatibus quo aut suscipit voluptatem. Aut molestiae sit magnam fugit.', 'Any', 'Social Work Teacher', '4', '92919', '78843 Gibson Pike\nWest Ebbabury, WA 17571-5110', 'Libyan Arab Jamahiriya', 'Full time', 0, '2020-10-31 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(14, 2, 4, 8, 'Cum voluptates et enim. Incidunt est iste facere modi sed quidem. Fugit mollitia labore quas. Eligendi id neque sed totam eos molestiae qui id. Quod incidunt quia ducimus voluptatem illo labore.', 'cum-voluptates-et-enim-incidunt-est-iste-facere-modi-sed-quidem-fugit-mollitia-labore-quas-eligendi-id-neque-sed-totam-eos-molestiae-qui-id-quod-incidunt-quia-ducimus-voluptatem-illo-laboreR2HGN', 'Bacelor/Master/s', '2 Year to 3 Year', 'Repudiandae vitae odio qui libero assumenda provident. Nesciunt nulla est non culpa. Quod iusto maxime labore voluptates ipsum. Et deleniti molestiae non sit nesciunt doloremque. Quis velit explicabo sapiente veritatis repellat aspernatur. Sit beatae maiores autem veniam laborum suscipit. Quisquam aut quod in. Dolores pariatur dolorem vero earum incidunt. Natus incidunt id neque ut nihil nostrum non.', 'Any', 'Power Generating Plant Operator', '5', '96478', '732 Stark Station\nWest Hester, VA 58707', 'Equatorial Guinea', 'Full time', 1, '2020-11-07 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(15, 10, 2, 8, 'Atque ea mollitia cupiditate quia rem. Ut laboriosam sunt eveniet et voluptas et et. Sint nostrum et placeat explicabo accusamus dolor.', 'atque-ea-mollitia-cupiditate-quia-rem-ut-laboriosam-sunt-eveniet-et-voluptas-et-et-sint-nostrum-et-placeat-explicabo-accusamus-dolornpuk8', 'Bacelor/Master/s', '2 Year to 3 Year', 'Unde ut ut vel odit nesciunt. Aut ut tempora praesentium voluptatem sit. Et aut dolorum quasi reprehenderit vel dolores non. Error aliquid impedit repellendus et quis. Velit voluptatem error dignissimos itaque dolores dolorem qui. Maxime et nam saepe aut. Eligendi voluptate placeat doloribus hic. Dolor et sunt quisquam maiores dolore sequi quidem.', 'Any', 'Plating Operator', '1', '588434', '41548 Medhurst Island\nDavisstad, RI 21112-8561', 'Burundi', 'Full time', 1, '2020-11-14 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(16, 15, 1, 4, 'Illo aspernatur quisquam enim nisi eos voluptatibus. Eveniet sed eius rem doloribus labore doloribus voluptatibus. Mollitia voluptatem labore corporis nesciunt quos labore.', 'illo-aspernatur-quisquam-enim-nisi-eos-voluptatibus-eveniet-sed-eius-rem-doloribus-labore-doloribus-voluptatibus-mollitia-voluptatem-labore-corporis-nesciunt-quos-laboreSGhVl', 'Bacelor/Master/s', '2 Year to 3 Year', 'Quo odit ipsum earum. Commodi voluptate quisquam nobis. Et id quaerat dolorem et nostrum voluptatem voluptate. Ea ut nisi esse. Et placeat aut ea ratione.', 'Any', 'Welfare Eligibility Clerk', '3', '803344', '558 Roberts Highway Apt. 721\nWest Kiarra, SC 10085-2362', 'Peru', 'Full time', 0, '2020-10-31 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(17, 13, 19, 17, 'Sint repellat numquam odio ut recusandae. Quia sunt et cumque id voluptatem accusantium. Ex cum sint quo rerum architecto est ut. Sunt quas et aspernatur officia at laudantium unde nesciunt.', 'sint-repellat-numquam-odio-ut-recusandae-quia-sunt-et-cumque-id-voluptatem-accusantium-ex-cum-sint-quo-rerum-architecto-est-ut-sunt-quas-et-aspernatur-officia-at-laudantium-unde-nesciuntNaiIm', 'Bacelor/Master/s', '2 Year to 3 Year', 'Sequi quas voluptate dolore. Quidem doloribus nihil mollitia tenetur. Voluptas est eos voluptatibus accusantium quam.', 'Any', 'Rigger', '3', '469710', '41759 Hegmann Key Suite 993\nAnissaberg, CT 07306', 'Norway', 'Full time', 1, '2020-10-24 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(18, 11, 4, 11, 'Nostrum at consequatur nulla quis exercitationem impedit eligendi sequi. Omnis modi neque earum. Ab ea perferendis rerum nisi id voluptatem.', 'nostrum-at-consequatur-nulla-quis-exercitationem-impedit-eligendi-sequi-omnis-modi-neque-earum-ab-ea-perferendis-rerum-nisi-id-voluptatemzTMjt', 'Bacelor/Master/s', '2 Year to 3 Year', 'Porro fugit expedita facilis fugit neque. Minus vero amet iusto. Nemo sequi ipsa architecto quo quis aspernatur. Nihil soluta velit velit eos distinctio. Consectetur quae et quasi autem quia fuga. Excepturi iusto qui atque consectetur dolorum quas alias.', 'Any', 'Home Health Aide', '3', '171778', '45899 Hansen Highway Suite 453\nEast Hertha, AR 79198', 'American Samoa', 'Full time', 0, '2020-10-03 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(19, 2, 4, 1, 'Eum odit adipisci minima. Fugit rerum et expedita nihil ullam aliquid.', 'eum-odit-adipisci-minima-fugit-rerum-et-expedita-nihil-ullam-aliquidfY76a', 'Bacelor/Master/s', '2 Year to 3 Year', 'Earum tempora praesentium cupiditate repellat possimus placeat. Delectus asperiores laboriosam qui eveniet et. Iure perferendis doloribus aut qui omnis eum. Ipsam quia ut modi distinctio consequuntur. Nesciunt optio quaerat enim dignissimos at eos culpa.', 'Any', 'Statistician', '2', '106987', '4361 Wilburn Ranch\nPhyllisfurt, MI 61528-0634', 'Saint Pierre and Miquelon', 'Full time', 0, '2020-10-17 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL),
(20, 5, 8, 9, 'Cum corporis ipsa nisi culpa. Tempora eum est consequatur impedit sed esse. Quaerat saepe et est ipsum a voluptatum recusandae.', 'cum-corporis-ipsa-nisi-culpa-tempora-eum-est-consequatur-impedit-sed-esse-quaerat-saepe-et-est-ipsum-a-voluptatum-recusandaenOgAF', 'Bacelor/Master/s', '2 Year to 3 Year', 'Tenetur placeat debitis aut. Alias placeat recusandae iste repudiandae eos est. Perferendis placeat voluptate dolores qui. Ipsam harum qui velit cum ducimus. Rem atque mollitia quibusdam quis necessitatibus laudantium. Unde ea magni quia soluta placeat.', 'Any', 'Foreign Language Teacher', '2', '65334', '166 Wilkinson Islands\nSouth Nellie, NH 83956-8427', 'Macedonia', 'Full time', 0, '2020-09-26 00:28:08', '2020-09-18 18:28:08', '2020-09-18 18:28:08', NULL);

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
(1, 15, 19, 2, 17, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(2, 4, 17, 12, 6, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(3, 2, 3, 6, 1, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(4, 7, 23, 15, 4, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(5, 12, 23, 2, 4, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(6, 12, 3, 2, 1, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(7, 6, 4, 10, 2, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(8, 13, 20, 19, 9, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(9, 14, 4, 4, 2, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(10, 5, 23, 18, 4, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(11, 16, 19, 1, 17, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(12, 4, 4, 12, 2, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(13, 11, 4, 14, 2, '2020-09-18 18:28:09', '2020-09-18 18:28:09', NULL),
(14, 12, 19, 2, 17, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(15, 16, 14, 1, 5, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(16, 6, 19, 10, 17, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(17, 20, 20, 8, 9, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(18, 4, 14, 12, 5, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(19, 2, 4, 6, 2, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(20, 20, 23, 8, 4, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(21, 17, 3, 19, 1, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(22, 20, 16, 8, 26, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(23, 12, 7, 2, 14, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(24, 17, 3, 19, 1, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(25, 12, 3, 2, 1, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(26, 17, 16, 19, 26, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(27, 13, 14, 19, 5, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(28, 14, 17, 4, 6, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(29, 7, 3, 15, 1, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(30, 10, 4, 18, 2, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(31, 1, 16, 19, 26, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(32, 10, 20, 18, 9, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(33, 9, 19, 6, 17, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(34, 6, 23, 10, 4, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(35, 18, 4, 4, 2, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(36, 13, 19, 19, 17, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(37, 12, 17, 2, 6, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(38, 19, 19, 4, 17, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(39, 17, 23, 19, 4, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(40, 18, 4, 4, 2, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(41, 1, 20, 19, 9, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(42, 10, 14, 18, 5, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(43, 5, 3, 18, 1, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(44, 14, 4, 4, 2, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(45, 9, 19, 6, 17, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(46, 3, 7, 2, 14, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(47, 3, 17, 2, 6, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(48, 14, 14, 4, 5, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(49, 14, 4, 4, 2, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL),
(50, 4, 16, 12, 26, '2020-09-18 18:28:10', '2020-09-18 18:28:10', NULL);

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
(1, 'Accounting/Finance', 'accountingfinance2Ur1Q', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(2, 'Banking', 'bankingfGrQe', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(3, 'Commercial/Supply Chain', 'commercialsupply-chain6qNrJ', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(4, 'Education/Trainning', 'educationtrainningANfWw', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(5, 'Engineer/Architects', 'engineerarchitects219ID', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(6, 'Garments/Textile', 'garmentstextileREOxK', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(7, 'HR/Org.Development', 'hrorgdevelopmentPHCDi', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(8, 'Gen Mgt/Admin', 'gen-mgtadmin4h276', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(9, 'Design/Creative', 'designcreative0a4c3', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(10, 'Production/Operation', 'productionoperationZuBJG', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(11, 'Hospitality/Travel/Tourism', 'hospitalitytraveltourismDMXft', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(12, 'IT & Telecommunication', 'it-telecommunicationPD612', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(13, 'Marketing/Sales', 'marketingsaleseTDru', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(14, 'Media/Ad./Event Mgt.', 'mediaadevent-mgt6V8qv', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(15, 'Medical/Pharma', 'medicalpharmajrcop', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(16, 'NGO', 'ngovBiBo', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL),
(17, 'Others', 'othersZTd0v', '2020-09-18 18:28:05', '2020-09-18 18:28:05', NULL);

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
(1, 'Admin', 'admin', '2020-09-18 18:28:05', '2020-09-18 18:28:05'),
(2, 'Employer', 'Employer', '2020-09-18 18:28:05', '2020-09-18 18:28:05'),
(3, 'Applicant', 'Applicant', '2020-09-18 18:28:05', '2020-09-18 18:28:05');

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
(1, '', 'Eovi9', '1', '2020-09-19 02:42:28', '2020-09-19 02:42:28', NULL);

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
(1, 1, 'admin', 'admin', 'admin@admin.com', '2020-09-18 18:28:05', '$2y$10$rqbxDyqsm7ACoWU67Wdi5OMhxSLQmuaB/KFoAj4wfGrFU1hN3i35G', NULL, NULL, NULL),
(2, 2, 'Job', 'Employer', 'employer@login.com', '2020-09-18 18:28:05', '$2y$10$Ug0Gt54InlGuSmL/CsoQsO1ra1lTNqHvTAiVBQH6qLC8h4t0gF8.S', NULL, NULL, NULL),
(3, 3, 'Job', 'Applicant', 'applicant@login.com', '2020-09-18 18:28:05', '$2y$10$wzk72hem41vmY5hfwLPHuObJUqeQbn1JiL3btjbKqD8NddZuCe6yy', NULL, NULL, NULL),
(4, 3, 'Porter', 'Ryan', 'elmira.bruen@example.com', '2020-09-18 18:28:06', '$2y$10$HM0OJp5lovlUNlcRmS6//eil05MyLjvY7t0zUcz5D4GMINzLLO1B6', 'K0TeoCJfzE', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(5, 2, 'Verna', 'Kuvalis', 'cartwright.letha@example.com', '2020-09-18 18:28:06', '$2y$10$vyYpsBiTwFHMGD.qjBFlQ.auwqxCvlGfR26Ft.czE1bckspP0iVdO', 'pxGSIWi7oe', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(6, 2, 'Axel', 'Runolfsson', 'beatty.providenci@example.net', '2020-09-18 18:28:06', '$2y$10$i6D0tfOoRVy.gjWsv4LQwe879tKmvvrwfnPQ1Rwv2NHd9TC60XJSW', 'pRZlDzXPRX', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(7, 3, 'Mina', 'Kuhn', 'marietta.wunsch@example.com', '2020-09-18 18:28:06', '$2y$10$zaQhKWIx01rUut/2PyDsM.frDq7SuQ3UQxaKjZKWW212./gtghVD6', 'KmIzcW4Css', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(8, 2, 'Eliseo', 'Batz', 'kirlin.hershel@example.com', '2020-09-18 18:28:06', '$2y$10$bZeGdApk4c1grJjNhnwLuuDon9rikW627PIgf0t.L8M7r4/5FgkBu', 'TWKEePHmBS', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(9, 2, 'Rosalyn', 'McKenzie', 'ajacobson@example.net', '2020-09-18 18:28:06', '$2y$10$3cDtvoH5a2nzduVgOvBaJuJrlsKGNGfs2a6ntygYnDlBSasMiwQi.', 'cvAMFqZG7U', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(10, 2, 'Maeve', 'Dooley', 'annalise84@example.com', '2020-09-18 18:28:06', '$2y$10$WwSwK8RtvcBY.wkQflRouuz7MOfnkYiAUPilZRNwZ1UnrQiP4ca3m', '4Ei9TpzMkV', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(11, 2, 'Betsy', 'Douglas', 'huel.alden@example.org', '2020-09-18 18:28:06', '$2y$10$Jc831HZrhYVZnfhcQAcKmeeXK5tzLhuBw/RN3SZJwjEA./IBTREIi', '7mxR3lyw8v', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(12, 2, 'Jennifer', 'Borer', 'shannon21@example.org', '2020-09-18 18:28:06', '$2y$10$R8nb3hskccsguDSjgRdfFuaGZASRp.WODXoeq3BMPaGz/tVb58SqO', 'BUtNWYN0Xd', '2020-09-18 18:28:06', '2020-09-18 18:28:07'),
(13, 2, 'Davon', 'Becker', 'jewel.oreilly@example.com', '2020-09-18 18:28:06', '$2y$10$ifuJZ4umPMkz0Uy8DiWdpufYTxiuhNB5eHw82ZHTftlvn.wQbi5eu', 'UOLWRTvjZg', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(14, 3, 'Dedric', 'Lynch', 'ubosco@example.net', '2020-09-18 18:28:07', '$2y$10$veyhfuiSJx9xnXgqMtOnwOkOHMzpLM.zZ4gh3yp59oRRxuOZWueVi', 'Osc8T6eFKz', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(15, 2, 'Walter', 'White', 'travis.crist@example.com', '2020-09-18 18:28:07', '$2y$10$ozD1xsb754K/YHPMvvrxBuQJULG/IaMaxPhCA42Y31uEWqwBFS7BS', 'FO2hsDgHAa', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(16, 3, 'Pauline', 'Hahn', 'dillan27@example.net', '2020-09-18 18:28:07', '$2y$10$Cb31dzlcd6HaAHV0XlXSQOcpXKrefHqjhxAmfeaQzVsPs4Xtq/FDK', 's8NZnQZ0fs', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(17, 3, 'Evangeline', 'Hagenes', 'hcarroll@example.com', '2020-09-18 18:28:07', '$2y$10$amK7LPgeJW0.WrhdMc592eWuvnCBlayXm2mn6VQHHBkJLTHMpL6yi', 'I4VmPY3FPw', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(18, 2, 'Lonny', 'Cummerata', 'legros.jordane@example.com', '2020-09-18 18:28:07', '$2y$10$z05AevxbTObXXeY1Vb.u5OvHjFz1oA3DojXsNeJa8v10W3bAqvMOC', 'I805qBPnin', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(19, 3, 'Karine', 'Reynolds', 'orlo.mitchell@example.net', '2020-09-18 18:28:07', '$2y$10$WkPfJQ5my5Zqve0HW0GhF.QKFk5eZOOEFlaLrqsdvx69GtBYufsRm', 'JjkQYa2HXR', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(20, 3, 'Macy', 'McClure', 'smarks@example.org', '2020-09-18 18:28:07', '$2y$10$YXb.e3ug7nC8WxVKWF7vCugzB3Danp9uYrx.A4jtROIqs5cYTED.u', 'RC7JcqBQZF', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(21, 2, 'Adam', 'Reilly', 'streich.burnice@example.org', '2020-09-18 18:28:07', '$2y$10$PStzVCy2wJj0mL7tzaijnuBjYon5i.GSrD9qVh3HptAL3koLbFVmm', 'Yp9iqDW6h0', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(22, 2, 'Bethany', 'Funk', 'lera.kuvalis@example.org', '2020-09-18 18:28:07', '$2y$10$Hpoo7MTBAoGsKu0nOIpEcuwBMk2BV5dL17xF.x5Vqfk.MBQJGfdPe', '0XUwLh4Fnk', '2020-09-18 18:28:07', '2020-09-18 18:28:07'),
(23, 3, 'Nola', 'Jast', 'allan22@example.net', '2020-09-18 18:28:07', '$2y$10$wVWjwstuNizRuhMeVnOzl.lh0a58Pds.up2BYQHLeHcYn7TmIt1de', 'wf7FLIVyGD', '2020-09-18 18:28:07', '2020-09-18 18:28:07');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
