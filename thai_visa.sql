-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 28, 2025 at 02:13 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thai_visa`
--

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `expire_time` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thai_agents`
--

DROP TABLE IF EXISTS `thai_agents`;
CREATE TABLE IF NOT EXISTS `thai_agents` (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thai_agents`
--

INSERT INTO `thai_agents` (`agent_id`, `agent_name`) VALUES
(1, 'RIDOY'),
(2, 'JEWEL'),
(3, 'SHOHAN');

-- --------------------------------------------------------

--
-- Table structure for table `thai_applicants`
--

DROP TABLE IF EXISTS `thai_applicants`;
CREATE TABLE IF NOT EXISTS `thai_applicants` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `application_id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `doc_no` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nationality` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` float(8,2) NOT NULL,
  PRIMARY KEY (`person_id`),
  KEY `application_id` (`application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thai_applicants`
--

INSERT INTO `thai_applicants` (`person_id`, `application_id`, `name`, `doc_no`, `nationality`, `type`, `amount`) VALUES
(1, 1, 'SYED ERFAN SIDDIQUE', 'B00082285', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(2, 3, 'MD MURAD-E ALAM', 'A13172790', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(3, 3, 'SHAMSUL AREFIN', 'A13146616', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(4, 3, 'MD MOMINUL ISLAM', 'A13638840', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(5, 3, 'MINHATUL JANNAT', 'A04743468', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(6, 5, 'MD SWAPAN HOSSAIN', 'A02170620', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(7, 6, 'MD MOSTAFA RAHMAN', 'A06050615', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(8, 6, 'AREFINE CHOYA', 'A06087097', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(9, 6, 'MAGFERAT RAHMAN', 'A06087098', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(10, 6, 'MEHNOOR RAHMAN', 'A03937136', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(11, 8, 'MOMINUL HASAN', 'B00027560', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(12, 8, 'MD MAHMUDUR RAHMAN', 'A01383017', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(13, 8, 'CHANCHOL KUMER', 'A06535994', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(14, 8, 'MOHAMMAD MOSTOFA KAMAL', 'A08588097', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(15, 8, 'MOHAMMAD MOSHIYOUR RAHMAM', 'A05488867', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(16, 8, 'MD ZAKARIA ISLAM', 'A01278195', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(17, 8, 'MD HASANUR RAHMAN', 'A17831305', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(18, 8, 'MD OMAR FARUK SUJAN', 'A03657799', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(19, 8, 'BIPASHA AICH', 'A02750449', 'Bangladesh', 'Tourist Visa (single entry)', 20000.00),
(20, 10, 'DORIS RITCHIL', 'A14382735', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(21, 10, 'PABON RICHARD RITCHIL', 'A14380130', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(22, 13, 'S M TAUHIDUR RAHAMAN', 'A01890992', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(23, 16, 'MD ISHTIAQUL ALAM', 'A11546294', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(24, 16, 'MST SABNAJ PARVIN', 'A11679969', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(25, 16, 'ASFIYA SHARIHA', 'A11679970', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(26, 17, 'MD AZMAL HOSSAIN', 'B00036470', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(27, 17, 'MST AMBIA KHATUN', 'A03328172', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(28, 17, 'ARIKUL ISLAM PRANTO', 'A02993921', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(29, 17, 'ASHRAFI MAHFUZA PURNO', 'A03793582', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(30, 17, 'AYMAN ISLAM PRIHAN', 'A12925262', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(31, 19, 'MD TOZAMMEL HOSSAIN', 'A00142811', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(32, 19, 'MD SHAHADAT HOSSAIN', 'A03305058', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(33, 19, 'SAHEDA PERVIN TRISHA', 'A05592630', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(34, 19, 'HUMAYRA AZIZAH', 'A07633901', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(35, 19, 'SHARIK SHAYER', 'A07633400', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(36, 21, 'MD ANWAR HOSSAIN', 'A06468148', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(37, 22, 'JHILON HOWLADER', 'B00071460', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(38, 42, 'MD MASHRIK UDDIN', 'A17808432', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(39, 69, 'MD AFSAR UDDIN', 'B00636010', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(40, 69, 'MAHADI HASAN', 'A00989844', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(41, 72, 'NASMIA ISLAM', 'A07519525', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(42, 72, 'SAMAIRA ISLAM', 'A07519524', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(43, 72, 'MD MASUD', 'A02838230', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(44, 72, 'JHILON HOWLADER', 'B00071460', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(45, 74, 'SAKIB  AHMED', 'B00190086', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(46, 74, 'SYEDA SUBRINA  MUSTAFA', 'A03462979', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(47, 74, 'ARHAM  AHMED', 'A16952409', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(48, 74, 'ARSHAN  AHMED', 'A16952407', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(49, 74, 'EMTIAZ  AHMED', 'A12266608', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(50, 74, 'FORHAD JAMIL  KHAN', 'B00053504', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(51, 74, 'MD ANAMUL  HAQUE', 'A16708995', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(52, 74, 'MD KAMRUDDIN  KAZAL', 'A07320075', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(53, 74, 'MD MASUD  RANA', 'A16322300', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(54, 74, 'MOHAMMAD  JAVED OMAR', 'A02214373', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(55, 75, 'NOOR A ALAM', 'A05951244', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(56, 75, 'TANVIR  AHMED', 'A07103754', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(57, 75, 'NUSRAT  JAHAN', 'A07103755', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(58, 75, 'MOHAMMAD ABUL HASSAN', 'A03925127', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(59, 75, 'MAHFOOZ UL HASAN', 'A15307778', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(60, 75, 'ISMAT ARA ARKESH', 'A06645144', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(61, 75, 'MASABA ALBAB MAHFOOZ', 'A15433701', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(62, 75, 'IBTESHAM AZMAIN MAHFOOZ', 'A15433702', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(63, 76, 'TANJINA  KHAN', 'A02852273', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(64, 76, 'ANSHARAH  RAHMAN', 'A05029544', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(65, 76, 'MOHAMMAD AZWADUR RAHMAN', 'A06224418', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(66, 76, 'TARIK  RAHMAN', 'B00024366', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(67, 76, 'KHANDAKER RUBAIYAT ALAM RUHEE', 'A06097085', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(68, 76, 'MD ADIJ ZAMAN KHAN', 'A07168884', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(69, 76, 'ARIFUR  RAHMAN', 'A02999526', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(70, 76, 'SAMSUL ALAM SAHIN', 'A07768904', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(71, 76, 'SABBIR HOSSAIN RANA', 'A06668539', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(72, 76, 'MD RAKIBUL ISLAM', 'A14015090', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(73, 78, 'SAIDUL ISLAM', 'A17661600', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(74, 78, 'TANIA PARVIN', 'A14169405', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(75, 78, 'MOHAMMAD MAKSUDUR RAHMAN', 'B00083342', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(76, 78, 'AMENA BEGUM', 'A08627363', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(77, 78, 'MUNTASIR ABEED', 'A15736281', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(78, 78, 'MUNIM AANAS', 'A08627362', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(79, 78, 'KENAT JAMES GOMES', 'A07763550', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(80, 78, 'ANIMA PEREIRA', 'A14353909', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(81, 78, 'ORION ANTHONY GOMES', 'A14377510', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(82, 78, 'ORISON ANDRE GOMES', 'A14377511', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(83, 79, 'TANJINA  KHAN', 'A02852273', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(84, 79, 'ANSHARAH  RAHMAN', 'A05029544', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(85, 79, 'MOHAMMAD AZWADUR RAHMAN', 'A06224418', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(86, 79, 'TARIK  RAHMAN', 'B00024366', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(87, 79, 'KHANDAKER RUBAIYAT ALAM RUHEE', 'A06097085', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(88, 79, 'MD ADIJ ZAMAN KHAN', 'A07168884', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(89, 79, 'ARIFUR  RAHMAN', 'A02999526', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(90, 79, 'SAMSUL ALAM SAHIN', 'A07768904', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(91, 79, 'SABBIR HOSSAIN RANA', 'A06668539', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(92, 79, 'MD RAKIBUL ISLAM', 'A14015090', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(93, 82, 'test1', '11', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(94, 82, 'test2', '22', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(95, 85, 'test 22', 'test34', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(96, 93, 'TANJINA  KHAN', 'A02852273', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(97, 93, 'ANSHARAH  RAHMAN', 'A05029544', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(98, 93, 'MOHAMMAD AZWADUR RAHMAN', 'A06224418', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(99, 93, 'TARIK  RAHMAN', 'B00024366', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(100, 93, 'KHANDAKER RUBAIYAT ALAM RUHEE', 'A06097085', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(101, 93, 'MD ADIJ ZAMAN KHAN', 'A07168884', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(102, 93, 'ARIFUR  RAHMAN', 'A02999526', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(103, 93, 'SAMSUL ALAM SAHIN', 'A07768904', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(104, 93, 'SABBIR HOSSAIN RANA', 'A06668539', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(105, 93, 'MD RAKIBUL ISLAM', 'A14015090', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(106, 94, 'MD LITON ALI', 'A07338314', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(107, 94, 'MST BEAUTY ALI', 'A07458778', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(108, 94, 'RIFAT TASFIA TOTHA', 'A07333748', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(109, 94, 'DILRUBA  SULTANA', 'A08057276', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(110, 94, 'KAZI MONIR UDDIN TARIM', 'A07967898', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(111, 94, 'HENA  RAHMAN', 'B00132902', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(112, 94, 'NAYEBA BINTE RAHMAN', 'A03943763', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(113, 94, 'NAFISA BINTE RAHMAN', 'A03575425', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(114, 94, 'SHAH MUHAMMAD AALIF', 'B00120773', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(115, 94, 'YEASMIN  AKTER', 'A12788553', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(116, 95, 'SUDIPTA CHAKMA', 'A00553371', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(117, 95, 'AUGUSTYA CHAKMA LASHMI', 'A00691384', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(118, 95, 'ADVIK CHAKMA', 'A04017209', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(119, 95, 'NISHIT BARAN CHAKMA', 'A01439527', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(120, 95, 'LOLITA CHAKMA', 'A01439526', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(121, 95, 'ANANNYA CHAKMA', 'EM0622598', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(122, 95, 'ANIL BIKASH CHAKMA', 'A04017210', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(123, 95, 'RIPA CHAKMA', 'A03797685', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(124, 95, 'SINTHYA CHAKMA', 'A04021066', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(125, 95, 'ARIF AHMMED KHAN', 'B00061887', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(126, 98, 'SUDIPTA CHAKMA', 'A00553371', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(127, 98, 'AUGUSTYA CHAKMA LASHMI', 'A00691384', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(128, 98, 'ADVIK CHAKMA', 'A04017209', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(129, 98, 'NISHIT BARAN CHAKMA', 'A01439527', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(130, 98, 'LOLITA CHAKMA', 'A01439526', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(131, 98, 'ANANNYA CHAKMA', 'EM0622598', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(132, 98, 'ANIL BIKASH CHAKMA', 'A04017210', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(133, 98, 'RIPA CHAKMA', 'A03797685', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(134, 98, 'SINTHYA CHAKMA', 'A04021066', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(135, 98, 'ARIF AHMMED KHAN', 'B00061887', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(136, 100, 'TUSHER KANTI DEWAN', 'A07236719', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(137, 100, 'MITA CHAKMA', 'A07236717', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(138, 101, 'RUHIA  AMZAD', 'A03111438', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(139, 101, 'MD RAFIQUL ISLAM', 'A03343012', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(140, 101, 'EMDAD  HOSSAIN', 'B00005736', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(141, 101, 'ROKEYA  BEGUM', 'A00027206', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(142, 101, 'SADDAM  HOSSAIN', 'B00005647', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(143, 101, 'NABIN ALAM KHAN', 'A06200249', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(144, 101, 'AHSAN  KHAN', 'A12850943', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(145, 101, 'MOHAMMAD ABDUR RAZZAK', 'A12000299', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(146, 101, 'ANUSHEH  ANADIL', 'B00103500', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(147, 101, 'ARASH ALEM AHMAD', 'A01749134', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(148, 102, 'FARJANA  JERIN', 'A01850979', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(149, 102, 'MOHAMMAD FARUK HOSSAIN', 'A02583631', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(150, 102, 'AFIA NOWSHIN TULY', 'A01167210', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(151, 102, 'MD ABDUR RASHID', 'A01177961', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(152, 102, 'MD SHAHJAHAN PATWARY', 'A06641830', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(153, 102, 'MD ZIAUR RAHMAN', 'A05814575', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(154, 102, 'JOY  CHAKRABORTY', 'A16759157', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(155, 103, 'KAWSHER ZAHAN CHOWDHURY', 'A13158765', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(156, 103, 'YEANAT  ABTAHEE', 'A12866243', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(157, 103, 'NIMU  BARUA', 'A11633448', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(158, 103, 'MD ASAD ULLAH', 'EJ0095316', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(159, 103, 'MD FARHANUR RAHMAN', 'A08753910', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(160, 103, 'MD ABU YUSUF', 'B00250185', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(161, 103, 'NURUN  NAHAR', 'A08693078', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(162, 103, 'ANISHA  RAHMAN', 'A08726992', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(163, 103, 'MD BAHAR UDDIN', 'A08871934', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(164, 103, 'MD ABU SUFIAN', 'A01102809', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(165, 104, 'PETER SOVON BISWAS', 'A11409885', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(166, 104, 'MR SAMIR BISWAS AKASH', 'A11381706', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(167, 104, 'ALVIN SAIKAT HALDER', 'B00244538', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(168, 104, 'KHAN MOHAMMAD FAZAL E ALAHI', 'A00947082', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(169, 104, 'MD GOLOM MORSHAD', 'A17753506', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(170, 104, 'M A IBRAHIM KHALIL', 'A08426859', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(171, 104, 'ALBAB HUSSAIN TANIM', 'EH0394338', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(172, 105, 'SONIA HASAN TONNI', 'B00016039', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(173, 105, 'INARA AISHA HABIBA KHAN', 'A04714636', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(174, 105, 'MD ARIFUR RAHMAN', 'A07950684', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(175, 105, 'MOHAMMAD MAHBOOB ISLAM', 'A14383269', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(176, 105, 'KH SABRINA ISLAM', 'A14371599', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(177, 105, 'INAAYA MAHBOOB', 'A14371598', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(178, 105, 'JUNAIRAH MAHBOOB', 'A14371596', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(179, 105, 'ARSHADUL ALAM', 'A14736082', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(180, 105, 'MST JOLY AKTER', 'A07545561', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(181, 105, 'MD SHAKIB', 'A11404740', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(182, 106, 'MOHAMMAD ALAMGIR  JAHAN', 'A13116581', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(183, 106, 'MOHAMMED NURUL  ISLAM', 'B00063675', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(184, 106, 'SHEULY  ISLAM', 'B00689711', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(185, 106, 'KAZI ATA ULLAH  SHAHED', 'B00067756', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(186, 106, 'KAMAL  MIA', 'A14045901', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(187, 106, 'MD MITHU  HOWLADER', 'A06845380', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(188, 106, 'SYAD ABDUR  RAHMAN', 'A09197937', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(189, 106, 'BIMAL CHANDRA  MONDAL', 'A16981693', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(190, 106, 'AUDHIR  SARKAR', 'B00278056', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(191, 106, 'PURNIMA RANI  BISSHAS', 'A07399405', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(192, 107, 'MD SALEH ABDULLAH', 'B00755122', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(193, 107, 'MOHAMMAD ABDUL HAMID', 'A05606494', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(194, 107, 'MIR ABU ZAHID', 'A01898347', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(195, 107, 'I V SARMIN RITA', 'A01908917', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(196, 107, 'MD IMRUL MURSHED ALIF', 'A14388369', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(197, 107, 'AFSANA MIMI', 'A06640472', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(198, 107, 'MD AL AMIN', 'A16354732', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(199, 107, 'MD ZAHEDUL ISLAM', 'A02547451', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(200, 107, 'MST FARIDA KHATUN', 'A02980076', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(201, 107, 'KHALEDUR RAHAMAN', 'A13366062', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(202, 119, 'UMA SHANKOR AGOR WALA', 'A01179424', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(203, 119, 'PUSPA DEVI AGORWALA', 'A01192354', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(204, 119, 'ANOWARA SULTANA CHOWDHURY', 'A01660144', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(205, 119, 'SULTAN MAHMUD CHY', 'A01379420', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(206, 119, 'KAMAL MAHMUD TAMIM CHY', 'A01352885', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(207, 119, 'NUSRAT SULTANA CHY SAFI', 'A11612413', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(208, 119, 'AYSHA  RAHAT', 'B00370753', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(209, 119, 'AJWAD RAHAT MANNAT', 'A05612544', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(210, 119, 'RAHAT  MITU', 'A14876654', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(211, 119, 'AJMAIN RAHAT MAHIR', 'A05598924', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(212, 120, 'MD JONAYED HOSSEN', 'A15166163', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(213, 120, 'MOHAMMED MOHIBUBUL ALAM', 'B00054806', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(214, 120, 'TAHREER  NAWAZ', 'B00134233', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(215, 120, 'UZAIR  BIN TAHREER', 'B00056730', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(216, 120, 'MAHMUDAH AREFIN MUMU', 'B00134062', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(217, 120, 'ZUHAIR BIN TAHREER', 'A09099138', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(218, 120, 'SHAHEDUL ISLAM NAIM', 'A06260917', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(219, 120, 'KOHINUR  BEGUM', 'A03926704', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(220, 120, 'MD AMINUL ISLAM', 'A04892487', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(221, 120, 'MAHAJABIN TABASSUM DOLON', 'A03333242', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(222, 121, 'MD MOFIJUR RAHMAN', 'A13384086', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(223, 121, 'JAWWADUL  ISLAM', 'A02648457', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(224, 121, 'MD ABU SAYEED', 'A06462549', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(225, 121, 'LEEMA  SEN GUPTA', 'A01888897', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(226, 121, 'SUMAN  SEN', 'A14600012', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(227, 121, 'ADRIK  SEN', 'A15232109', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(228, 121, 'FAHIM  FAYSHAL', 'B00134360', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(229, 121, 'TANHA  YESMIN', 'A03328579', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(230, 121, 'MD RUBEL MOLLA', 'A08989078', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(231, 121, 'MD MIJANUR RAHMAN SERNIABAT', 'A00179563', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(232, 123, 'MD SOJIB AHSAN', 'A01413809', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(233, 123, 'SHOAIB MOHAMMAD', 'A15801439', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(234, 124, 'SOHEL AHAMMAD', 'A04211374', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(235, 124, 'MOHAMMAD NURUL ISLAM', 'A00452994', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(236, 124, 'MOHAMMAD MONIR HOSSAIN', 'A01810278', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(237, 124, 'MD ASHIQUL HASAN', 'A08010156', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(238, 127, 'MD DULAL AHMED', 'A05729424', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(239, 127, 'MAHMUDA AKTER', 'A05729426', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(240, 127, 'MD MATIAR RAHMAN MATN', 'A01037061', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(241, 127, 'AYSHA KHATUN', 'A05673879', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(242, 127, 'JARIN AHMED KORNIA', 'A05729423', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(243, 127, 'SAFA AHMED ZOHA', 'A05634983', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(244, 127, 'MD EAKUB HOSSAIN', 'A14782587', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(245, 127, 'MD KHOBIR', 'A02266655', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(246, 127, 'MD MAHADY HASSAN', 'A02219622', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(247, 127, 'RAKIB BHUIYAN', 'A13047905', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(248, 128, 'AFTAHI BIN KHALID', 'A17824466', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(249, 128, 'MAHFUZ BIN MONSUR', 'A01701871', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(250, 128, 'TAKRIM AHMED', 'A17725420', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(251, 128, 'ASIF MOIN FIDA', 'B00822126', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(252, 128, 'SHREYASEE KARMAKER', 'B00066561', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(253, 128, 'IRTIFA RAIYAN', 'A06678328', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(254, 128, 'FARIHA TABASSUM DEENA', 'A07274553', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(255, 128, 'BAHAR MOHAMMAD BABOR HOSSAIN', 'A06265454', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(256, 128, 'ASHRAFUL ALAM RAHAT', 'A03406475', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(257, 129, 'SHAZIA KHAN', 'B00761404', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(258, 129, 'MOHAMMED MOFAKKALE HOSSAIN HAWLADAR', 'B00761652', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(259, 130, 'MD ZAKIR HOSSAIN', 'B00479767', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(260, 130, 'TANJIB  HOSSAIN', 'B00092226', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(261, 130, 'TAHMID HOSSAIN AKIB', 'B00092225', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(262, 130, 'SUNANDAN  ROY', 'EL0525777', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(263, 131, 'MD ASADUZZAMAN ZILLU', 'A04827976', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(264, 131, 'ROKEYA KHATUN RIMA', 'A14257102', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(265, 131, 'MD APURBO RAHMAN', 'A14168417', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(266, 132, 'MD ZAKIR HASSAN', 'B00011034', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(267, 132, 'MRS SADIA HASSAN', 'B00524715', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(268, 132, 'ALIVA SALMEEN', 'B00447848', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(269, 134, 'MD ZAKIR HASSAN', 'B00011034', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(270, 134, 'MRS SADIA HASSAN', 'B00524715', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(271, 134, 'ALIVA SALMEEN', 'B00447848', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(272, 135, 'MD ASADUZZAMAN ZILLU', 'A04827976', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(273, 135, 'ROKEYA KHATUN RIMA', 'A14257102', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(274, 135, 'MD APURBO RAHMAN', 'A14168417', 'Bangladesh', 'Tourist Visa (single entry)', 4000.00),
(275, 138, 'EVANA FAHMIDA MOHAMMAD', 'A08675676', 'Bangladesh', 'Tourist Visa (multiple entry) / METV', 20000.00);

-- --------------------------------------------------------

--
-- Table structure for table `thai_applications`
--

DROP TABLE IF EXISTS `thai_applications`;
CREATE TABLE IF NOT EXISTS `thai_applications` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pdf_file` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `agent` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `clicked` tinyint(1) NOT NULL,
  `application_date` date NOT NULL,
  `view_expand_display` tinyint(1) NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thai_applications`
--

INSERT INTO `thai_applications` (`application_id`, `status`, `full_name`, `email`, `phone`, `reference`, `pdf_file`, `payment_url`, `agent`, `clicked`, `application_date`, `view_expand_display`) VALUES
(93, 'Old', 'MDABU  SAYEED', 'mofizulislamlipi@gmail.com', '01742568189', 'DAC001250223-I-259151', '1740507905Payment_DAC001250223-I-259151.pdf', '', 'RIDOY', 0, '2025-02-26', 0),
(94, 'Old', 'VSLMEDICAL  SEVEN', 'vslmedical7@gmail.com', '01738312020', 'DAC001250225-I-263996', '1740508153Payment_DAC001250225-I-263996.pdf', 'https://epay-gw.sslcommerz.com/edf79529fb8de062c657c1568f65fcc71824a359', 'RIDOY', 1, '2025-02-26', 0),
(95, 'Old', 'SUDIPTA CHAKMA', 'alibd3535@gmail.com', '01716130130', 'DAC001250224-I-261502', '1740511058SUDIPTA_CHAKMA----40000.pdf', 'https://epay-gw.sslcommerz.com/6e503d9cc381efb5f6f3a6188e9bd37c18f61f15', 'RIDOY', 1, '2025-02-26', 0),
(98, 'Old', 'SUDIPTA CHAKMA', 'alibd3535@gmail.com', '01716130130', 'DAC001250224-I-261502', '1740541107SUDIPTA_CHAKMA----40000.pdf', '', 'RIDOY', 0, '2025-02-26', 0),
(100, 'Old', 'TUSHER KANTI DEWAN', 'dakbox0@gmail.com', '01716130130', 'DAC001250224-I-261506', '1740541181TUSHER_KANTI_DEWAN_--8000.pdf', 'https://epay-gw.sslcommerz.com/a6dabfd64e309b053b0d97a51555f6b198c223ec', 'RIDOY', 1, '2025-02-26', 0),
(101, 'Old', 'VSLMEDICAL  SIX', 'vslmedical6@gmail.com', '01738312020', 'DAC001250225-I-263344', '1740542280new.pdf', 'https://epay-gw.sslcommerz.com/f94c27a79a88101ec980766c1775d206187d9383', 'RIDOY', 1, '2025-02-26', 0),
(103, 'Old', 'VSLMEDICAL  FIVE', 'vslmedicafive@gmail.com', '01738312020', 'DAC001250225-I-263391', '1740543569new_3.pdf', 'https://epay-gw.sslcommerz.com/c844f23d87507dcee25449afa20457b1f6712f6f', 'RIDOY', 1, '2025-02-26', 0),
(104, 'Old', 'PETERSOVONBISWAS', 'rita.sarker@gmail.com', '01918404141', 'DAC001250224-I-261902', '1740543766New_4.pdf', '', 'RIDOY', 0, '2025-02-26', 0),
(105, 'Old', 'SONIA HASAN TONNI', 'moinuuuddin19700@gmail.com', '01730716015', 'DAC001250224-I-260620', '1740544014new_5.pdf', '', 'RIDOY', 1, '2025-02-26', 0),
(106, 'Old', 'Almas  Khan', 'a2zmre19@hotmail.com', '01738312020', 'DAC001250219-I-251482', '1740544608new_6.pdf', '', 'RIDOY', 0, '2025-02-26', 0),
(107, 'Old', 'ABU ZAHID', 'ABUZAHIDWW1@GMAIL.COM', '01713902499', 'DAC001250224-I-260179', '1740544777new_7.pdf', 'https://epay-gw.sslcommerz.com/1d39966c07c5fb0d35e69355f1479d81cd318ef6', 'RIDOY', 1, '2025-02-26', 0),
(119, 'Old', 'VSLMEDICAL  EIGHT', 'vslmedical8@gmail.com', '01738312020', 'DAC001250226-I-266477', '1740611815VSLMEDICAL__EIGHT.pdf', 'https://epay-gw.sslcommerz.com/e27a949d01e2b9a0bf88e7d94f9f833cad82ecd4', 'RIDOY', 1, '2025-02-27', 0),
(120, 'Old', 'VSLMEDICAL  NINE', 'vslmedical9@gmail.com', '01742568189', 'DAC001250226-I-266452', '1740612095VSLMEDICAL__NINE.pdf', 'https://epay-gw.sslcommerz.com/f37278e9ba3306717b35163f48be0d2db684efe9', 'RIDOY', 0, '2025-02-27', 0),
(121, 'Old', 'MDABU  NAYEM', 'azshohag36@gmail.com', '01738312020', 'DAC001250226-I-266626', '1740612266MDABU__NAYEM.pdf', 'https://epay-gw.sslcommerz.com/173b7d0f6be582445f42f7a0f012094d1a39badf', 'RIDOY', 1, '2025-02-27', 0),
(123, 'Old', 'MDARIF HOSSEN', 'arifrajbd2015@gmail.com', '01958121228', 'DAC001250225-I-264686', '1740620647Payment_DAC001250225-I-264686.pdf', 'https://epay-gw.sslcommerz.com/1c573a53d81baef71f2a7858364dafe4625c6c75', 'JEWEL', 1, '2025-02-27', 0),
(124, 'Old', 'ZAYAN MAHMUD', 'KANDIRPAR03@GMAIL.COM', '01865144147', 'DAC001250226-I-266613', '1740620763Payment_DAC001250226-I-266613.pdf', 'https://epay-gw.sslcommerz.com/d04963af614ba226b9e3cb861be678796f667502', 'JEWEL', 1, '2025-02-27', 0),
(127, 'Old', 'MD DULAL AHMED', 'a48765512@gmail.com', '01715293694', 'DAC001250224-I-260349', '1740626372Yeasinamin10_Payment_DAC001250224-I-260349.pdf', 'https://epay-gw.sslcommerz.com/eac6929ad0641fb90af8f98d848bd2f65b35c2ba', 'RIDOY', 1, '2025-02-27', 0),
(128, 'Old', 'ASHRAF SAJIB', 'airtravels.tourism@gmail.com', '01730716015', 'DAC001250224-I-261302', '17406276081.pdf', 'https://epay-gw.sslcommerz.com/15ec70673f71205462d4c90dc288b564d9f4f051', 'RIDOY', 1, '2025-02-27', 0),
(129, 'Old', 'SHAZIA KHAN', 'dakbox0@gmail.com', '01716130130', 'DAC001250223-I-258723', '17406283123.pdf', 'https://epay-gw.sslcommerz.com/9ee4887fe0a3998262a8f02061a55fdfd635b74f', 'RIDOY', 1, '2025-02-27', 0),
(130, 'Old', 'VSLMEDICAL  TEN', 'vslmedical10@gmail.com', '01738312020', 'DAC001250227-I-267847', '17406288674.pdf', 'https://epay-gw.sslcommerz.com/66790752cea5ef561368143026fa1a5680127e55', 'RIDOY', 1, '2025-02-27', 0),
(131, 'Old', 'MD ASADUZZAMAN ZILLU', 'sobuzbangladesh.com2021@gmail.com', '01730716010', 'DAC001250217-I-246113', '17406289435.pdf', 'https://epay-gw.sslcommerz.com/d62f7cb0bb1ef4ab7d67fa2b41c98c726ed974cc', 'RIDOY', 1, '2025-02-27', 0),
(132, 'Old', 'MD ZAKIR HASSAN', 'parrotred95@gmail.com', '01715293694', 'DAC001250225-I-263953', '17406303146.pdf', 'https://epay-gw.sslcommerz.com/7a824c1f8c88291cfd6584bd130728b343fe4657', 'RIDOY', 1, '2025-02-27', 0),
(134, 'Old', 'MD ZAKIR HASSAN', 'parrotred95@gmail.com', '01715293694', 'DAC001250225-I-263953', '17406305616.pdf', '', 'RIDOY', 0, '2025-02-27', 0),
(135, 'Old', 'MD ASADUZZAMAN ZILLU', 'sobuzbangladesh.com2021@gmail.com', '01730716010', 'DAC001250217-I-246113', '17406305695.pdf', '', 'RIDOY', 0, '2025-02-27', 0),
(136, 'Pending', '', '', '', '', '', '', 'RIDOY', 0, '0000-00-00', 0),
(137, 'Pending', '', '', '', '', '', '', 'RIDOY', 0, '0000-00-00', 0),
(138, 'Pending', 'AMDADUL HAQUE', 'amdadul.galaxy@gmail.com', '01713902499', 'DAC001250225-I-262981', '1740631214EVANA_NEW_Payment.pdf', '', 'RIDOY', 0, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thai_application_links`
--

DROP TABLE IF EXISTS `thai_application_links`;
CREATE TABLE IF NOT EXISTS `thai_application_links` (
  `link_id` int NOT NULL AUTO_INCREMENT,
  `application_id` int NOT NULL,
  `payment_link` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `link_time` datetime NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thai_application_links`
--

INSERT INTO `thai_application_links` (`link_id`, `application_id`, `payment_link`, `link_time`) VALUES
(1, 21, 'https://epay-gw.sslcommerz.com/27576aef06f5de4c677adb6b9ecd90e547de4ce7', '0000-00-00 00:00:00'),
(2, 42, 'https://epay-gw.sslcommerz.com/13d19f97e9cc8d6c6c911c869595adef0e530332', '0000-00-00 00:00:00'),
(3, 69, 'https://epay-gw.sslcommerz.com/a47ec7e8caa9b9449917ebbbe04a75cb5ef4b583', '0000-00-00 00:00:00'),
(4, 72, 'https://epay-gw.sslcommerz.com/35e7edf17e99b6b9c807f962e7ee05e3cc9a9a6f', '0000-00-00 00:00:00'),
(5, 74, 'https://epay-gw.sslcommerz.com/6d2ff6d5d3fa6b6a4f40f3f5a2afd506c4509508', '0000-00-00 00:00:00'),
(6, 75, 'https://epay-gw.sslcommerz.com/91b25aa09cbdb24ad262483111e30e5296e740d4', '0000-00-00 00:00:00'),
(8, 78, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '0000-00-00 00:00:00'),
(10, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-25 19:52:41'),
(11, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:00:46'),
(12, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:00:50'),
(13, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:00:53'),
(14, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:00:54'),
(15, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:00:56'),
(16, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:00:57'),
(17, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:01:01'),
(18, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:01:04'),
(19, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:01:06'),
(20, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:01:11'),
(21, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:01:17'),
(22, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:01:20'),
(23, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:01:21'),
(24, 85, 'https://epay-gw.sslcommerz.com/574aa6e84ba3b0a3c326887127b76403921b3843', '2025-02-26 12:01:21'),
(25, 94, 'https://epay-gw.sslcommerz.com/edf79529fb8de062c657c1568f65fcc71824a359', '2025-02-26 12:20:34'),
(26, 95, 'https://epay-gw.sslcommerz.com/377fc49a6e89602af4ac8c00a408818c43e3c711', '2025-02-26 12:23:13'),
(27, 95, 'https://epay-gw.sslcommerz.com/a97942f5d8cb424107b7a49ce77a81d6895dc854', '2025-02-26 12:30:07'),
(28, 95, 'https://epay-gw.sslcommerz.com/6e503d9cc381efb5f6f3a6188e9bd37c18f61f15', '2025-02-26 12:30:07'),
(33, 100, 'https://epay-gw.sslcommerz.com/148abf900358287b5d2bba40a8fea85af80a29e0', '2025-02-26 12:52:08'),
(34, 100, 'https://epay-gw.sslcommerz.com/678d681494c4f5e10c6ecc91d745ae5f5e1fa88c', '2025-02-26 12:53:03'),
(35, 100, 'https://epay-gw.sslcommerz.com/da9299e56e38c49e1dcd463b2863403a091283e9', '2025-02-26 12:53:04'),
(36, 100, 'https://epay-gw.sslcommerz.com/a6dabfd64e309b053b0d97a51555f6b198c223ec', '2025-02-26 12:53:04'),
(37, 101, 'https://epay-gw.sslcommerz.com/c5164d9f2eb03a8eacb8b46c8ad34bf2423f2c09', '2025-02-26 13:00:03'),
(38, 101, 'https://epay-gw.sslcommerz.com/35080372205197295e23087515b3aa6015da4ce8', '2025-02-26 13:00:04'),
(39, 101, 'https://epay-gw.sslcommerz.com/2c01ad6552c02623f038c7ac8d2d2fc8347fa1cc', '2025-02-26 13:02:06'),
(40, 101, 'https://epay-gw.sslcommerz.com/f94c27a79a88101ec980766c1775d206187d9383', '2025-02-26 13:03:06'),
(41, 103, 'https://epay-gw.sslcommerz.com/4b6a1a742928a9d2da4f8d0491ed480952173d99', '2025-02-26 13:22:04'),
(42, 103, 'https://epay-gw.sslcommerz.com/c844f23d87507dcee25449afa20457b1f6712f6f', '2025-02-26 13:23:08'),
(43, 105, 'https://epay-gw.sslcommerz.com/75d73b96af427d9e797d0d570747a84a93ffde41', '2025-02-26 13:29:05'),
(45, 107, 'https://epay-gw.sslcommerz.com/1d39966c07c5fb0d35e69355f1479d81cd318ef6', '2025-02-26 13:56:05'),
(46, 119, 'https://epay-gw.sslcommerz.com/e27a949d01e2b9a0bf88e7d94f9f833cad82ecd4', '2025-02-27 12:00:57'),
(47, 121, 'https://epay-gw.sslcommerz.com/173b7d0f6be582445f42f7a0f012094d1a39badf', '2025-02-27 12:24:12'),
(48, 127, 'https://epay-gw.sslcommerz.com/eac6929ad0641fb90af8f98d848bd2f65b35c2ba', '2025-02-27 12:30:08'),
(49, 123, 'https://epay-gw.sslcommerz.com/1c573a53d81baef71f2a7858364dafe4625c6c75', '2025-02-27 12:34:04'),
(50, 124, 'https://epay-gw.sslcommerz.com/d04963af614ba226b9e3cb861be678796f667502', '2025-02-27 12:34:06'),
(51, 120, 'https://epay-gw.sslcommerz.com/f37278e9ba3306717b35163f48be0d2db684efe9', '2025-02-27 12:35:03'),
(52, 128, 'https://epay-gw.sslcommerz.com/15ec70673f71205462d4c90dc288b564d9f4f051', '2025-02-27 12:44:07'),
(53, 129, 'https://epay-gw.sslcommerz.com/13eb0ea62ad74583a937312e2b2130bf6b5361ce', '2025-02-27 12:57:04'),
(54, 129, 'https://epay-gw.sslcommerz.com/071b30603307fce208975fe15039053d662eaf39', '2025-02-27 12:57:05'),
(55, 129, 'https://epay-gw.sslcommerz.com/9ee4887fe0a3998262a8f02061a55fdfd635b74f', '2025-02-27 12:58:05'),
(56, 130, 'https://epay-gw.sslcommerz.com/4a4296316d547da92b5cbd4cdbd36cf34af7847c', '2025-02-27 13:03:04'),
(57, 131, 'https://epay-gw.sslcommerz.com/0b65093a50a7173235f5fb32525ebe90a448caca', '2025-02-27 13:04:04'),
(58, 130, 'https://epay-gw.sslcommerz.com/97e899b2a74e14d63f71fb90ec630fe11e4eaa0a', '2025-02-27 13:04:07'),
(59, 131, 'https://epay-gw.sslcommerz.com/250b192b00be21ada52bb35c32ffe8b265f77664', '2025-02-27 13:04:08'),
(60, 131, 'https://epay-gw.sslcommerz.com/244cc7cf46cb37233f6e76b84da573b74f7d0b5c', '2025-02-27 13:04:09'),
(61, 130, 'https://epay-gw.sslcommerz.com/2d916dad6daff3ba22707999580cfe497afbd96a', '2025-02-27 13:04:10'),
(62, 131, 'https://epay-gw.sslcommerz.com/d62f7cb0bb1ef4ab7d67fa2b41c98c726ed974cc', '2025-02-27 13:05:04'),
(63, 130, 'https://epay-gw.sslcommerz.com/65ede5ae9bea29376807fa28d5fc980027585f36', '2025-02-27 13:05:06'),
(64, 130, 'https://epay-gw.sslcommerz.com/907617a9c5662bc0074e45fef8636dce74da1549', '2025-02-27 13:05:07'),
(65, 130, 'https://epay-gw.sslcommerz.com/66790752cea5ef561368143026fa1a5680127e55', '2025-02-27 13:06:08'),
(66, 132, 'https://epay-gw.sslcommerz.com/27398a372667a6e1e4223ffe23862e15f22923da', '2025-02-27 13:31:08'),
(67, 132, 'https://epay-gw.sslcommerz.com/7a824c1f8c88291cfd6584bd130728b343fe4657', '2025-02-27 13:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(90) COLLATE utf8mb4_general_ci NOT NULL,
  `business` varchar(90) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `full_name`, `business`, `created_at`, `role`, `last_login`, `is_active`) VALUES
(5, 'admin', 'admin@admin.com', '$2y$10$76M6w6mn5rKkFpZIiKb6h.z9/nrqDsQb67kdsLcB1hP7L.CpMFFCi', '', '', '2023-07-25 05:53:40', 'admin', NULL, 0),
(6, 'ridoy', '', '$2y$10$6cFwckS6Fkp4X5Pvsq2.OOyFRHDqpyvEPju9RdY5TIJStxawtThym', 'RIDOY', '', '2025-02-27 07:44:31', 'agent', NULL, 0),
(8, 'jewel', '', '$2y$10$bAQxuk3BXyInL5YPy4BYTuE3rDEl3xntblO6qnQqe1BtbryRIpJVK', 'JEWEL', '', '2025-02-27 07:59:08', 'agent', NULL, 0),
(9, 'shohan', '', '$2y$10$LBxyzV.yQ3up.zH.poUif.sm1U7p.NgUyyzk5fHpfkEJ71BJ4p6yi', 'SHOHAN', '', '2025-02-27 07:59:46', 'agent', NULL, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
