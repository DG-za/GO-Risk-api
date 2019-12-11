-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 08:21 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `she_excellence`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_ci_sessions`
--

CREATE TABLE `com_ci_sessions` (
  `id` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` text NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_ci_sessions`
--

INSERT INTO `com_ci_sessions` (`id`, `user_id`, `token`, `ip_address`, `timestamp`, `data`) VALUES
('b004c51fe3390df8', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTc1NzAzNTY4LCJleHAiOjE1NzU3MjE1Njh9.AkeHVsKIsXr2kJz37wWYTNrnRELUz9YZmrs0dxdbvSI', '::1', 0, ''),
('a0c3b649e0fa167b', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTc1NTQ2NjQzLCJleHAiOjE1NzU1NjQ2NDN9.czjYrCe5WsJNh8G4wuGKCOYxLqI-mZ8-ITksG_oU62A', '::1', 0, ''),
('40c91dc626da0630', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTc1NDQ2MjIzLCJleHAiOjE1NzU0NjQyMjN9.CpMAIyLaRxxpNY3hztVswGWnNRSzaZzPHDlb-R1IDf0', '::1', 0, ''),
('1b08f4b7f3ff9663', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTc1MDA1NTIyLCJleHAiOjE1NzUwMjM1MjJ9.FEIfWH5cHZf9s6lbbq9_YlnRdJvVjrTvbIvLTpBG6Pk', '::1', 0, ''),
('2bc80b6cd1df1ba0', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTc0NDA2MzcxLCJleHAiOjE1NzQ0MjQzNzF9.CyefnY6LiCGEHTwnsfCY5GLfcGp5YscuWy1m7g0jq2k', '::1', 0, ''),
('c61cb9668937c436', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTc0MzE2ODc2LCJleHAiOjE1NzQzMzQ4NzZ9.PpLfroIvfrpnfB7aemdOtlaiSWqpMgS1t1M0YNwSwBE', '::1', 0, ''),
('78a46fccda1df47e', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTc0MzEzMzk0LCJleHAiOjE1NzQzMzEzOTR9.X__f5TVqHOLaSLUlhYNw9XAD2cGlI60iUG2RjtNKqHk', '::1', 0, ''),
('d936afb5457a874e', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTczNjMzMzMwLCJleHAiOjE1NzM2NTEzMzB9.3kMdsI57fvnKSKnvCAzstscHJPDQlqL0gFaTRqo_t7I', '::1', 0, ''),
('63b87f98ba7e1457', 223, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIyMyIsInVzZXJuYW1lIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNTczNjMxMjc0LCJleHAiOjE1NzM2NDkyNzR9.TbH3Ax56wQ2SapwzuprbyXi80HK0gMF44ZIOkEeZ00I', '::1', 0, ''),
('685dac7c387453d7', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTczNjI4NzY0LCJleHAiOjE1NzM2NDY3NjR9.Z0KsTlog9aj2L4jsXK9V8jEIzkdiShrZJvjXT6KfERg', '::1', 0, ''),
('3058da09e30764fa', 223, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIyMyIsInVzZXJuYW1lIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNTczNjI4NzEwLCJleHAiOjE1NzM2NDY3MTB9.m-vBdxA92RSDcTota3jEbueTN4yC6pP63hvxmm0tvuE', '::1', 0, ''),
('14ee5a5b4c58616a', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTczNjI3ODQ4LCJleHAiOjE1NzM2NDU4NDh9.RsdSesyVo2QRwfzjspX70_GZIjPLiWb9cLEOcaPfHx4', '::1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `com_company_colours`
--

CREATE TABLE `com_company_colours` (
  `id` int(11) NOT NULL,
  `reactive` varchar(50) NOT NULL,
  `compliant` varchar(50) NOT NULL,
  `proactive` varchar(50) NOT NULL,
  `resilient` varchar(50) NOT NULL,
  `chart1` varchar(50) NOT NULL,
  `chart2` varchar(50) NOT NULL,
  `chart3` varchar(50) NOT NULL,
  `chart4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_company_colours`
--

INSERT INTO `com_company_colours` (`id`, `reactive`, `compliant`, `proactive`, `resilient`, `chart1`, `chart2`, `chart3`, `chart4`) VALUES
(1, '#f1552f', '#e7bb10', '#8cc63e', '#18b3eb', '#003671', '#004d8f', '#002750', '#00407f');

-- --------------------------------------------------------

--
-- Table structure for table `com_company_details`
--

CREATE TABLE `com_company_details` (
  `id` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `maturity_top_heading` text NOT NULL,
  `maturity_welcome_heading` text NOT NULL,
  `maturity_welcome_statement` text NOT NULL,
  `maturity_diagram_image` text NOT NULL,
  `maturity_introduction_statement1` text NOT NULL,
  `maturity_introduction_statement2` text NOT NULL,
  `maturity_introduction_statement3` text NOT NULL,
  `maturity_introduction_statement4` text NOT NULL,
  `maturity_introduction_statement5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_company_details`
--

INSERT INTO `com_company_details` (`id`, `company_name`, `maturity_top_heading`, `maturity_welcome_heading`, `maturity_welcome_statement`, `maturity_diagram_image`, `maturity_introduction_statement1`, `maturity_introduction_statement2`, `maturity_introduction_statement3`, `maturity_introduction_statement4`, `maturity_introduction_statement5`) VALUES
(1, 'Sasol', 'SHE MATURITY ASSESSMENT', 'One Sasol SHE Excellence Approach', 'We will be doing a maturity assessment on the Sasol SHE Excellence Approach.', 'maturity-diagram-sasol.jpg', 'To measure the level of maturity of SHE practices and performance results, the SHE maturity assessment methodology is based on a two-stage assessment. Firstly, SHE performance results are assessed (y-axis) and secondly, the maturity of SHE practices are assessed (x-axis).', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `com_email_template`
--

CREATE TABLE `com_email_template` (
  `template_id` int(20) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `type` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `header` text NOT NULL,
  `body` text NOT NULL,
  `footer` text NOT NULL,
  `message_body` text NOT NULL,
  `active` enum('yes','no') NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_email_template`
--

INSERT INTO `com_email_template` (`template_id`, `heading`, `type`, `subject`, `header`, `body`, `footer`, `message_body`, `active`, `created_date`, `modified_date`) VALUES
(10, ' Forgot Password', 'forgot_password', 'Forgot Password', ' Hello {{first_name}} {{last_name}},', 'This is your rest link {{reset_link}}', ' Thankyou', '', 'no', '2019-11-22 08:01:30', '2019-12-07 08:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `com_invite_attendees`
--

CREATE TABLE `com_invite_attendees` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accesstoken` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `isexpiry` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_invite_attendees`
--

INSERT INTO `com_invite_attendees` (`id`, `email`, `accesstoken`, `date`, `isexpiry`) VALUES
(3, 'christo@crispworks.co.za', '', '2019-10-09', 0),
(4, 'rihan.schalkwyk@4xcellence.solutions', '', '2019-10-09', 0),
(5, 'marinda.swart@4xcellence.solutions', '', '2019-10-09', 0),
(6, 'marinda.swart@sasol.com', '', '2019-10-10', 0),
(8, 'marinda.swart@sasol.com', '', '2019-10-10', 0),
(9, 'YOUR-EMAIL@sasol.com', '', '2019-10-10', 0),
(10, 'rahul@broadview-innovations.com', '', '2019-10-23', 0),
(11, 'akie.5609@gmail.com', '', '2019-12-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `com_manager_notify`
--

CREATE TABLE `com_manager_notify` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `manager` int(11) NOT NULL,
  `risk` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `comments` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms` tinyint(1) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `complete_date` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `com_user`
--

CREATE TABLE `com_user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company` int(11) NOT NULL,
  `cell` text NOT NULL,
  `role` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_user`
--

INSERT INTO `com_user` (`id`, `email`, `firstname`, `lastname`, `company`, `cell`, `role`, `password`) VALUES
(1, 'admin', 'Admin', 'User', 0, '', 'admin', '9e94b15ed312fa42232fd87a55db0d39'),
(201, 'manager', 'Manager', 'User', 0, '', 'manager', 'bc7316929fe1545bf0b98d114ee3ecb8'),
(222, 'rahul@broadview-innovations.com', 'Rahul', 'Borole', 0, '', 'employee', '21232f297a57a5a743894a0e4a801fc3'),
(223, 'admin@gmail.com', 'Rahul', 'Borole', 0, '', 'employee', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `com_user_roles`
--

CREATE TABLE `com_user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_user_roles`
--

INSERT INTO `com_user_roles` (`id`, `name`) VALUES
(1, 'Superuser'),
(2, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `mat_actions_measure`
--

CREATE TABLE `mat_actions_measure` (
  `id` int(255) NOT NULL,
  `element` int(11) NOT NULL,
  `measure` text NOT NULL,
  `victory` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_actions_measure`
--

INSERT INTO `mat_actions_measure` (`id`, `element`, `measure`, `victory`) VALUES
(1, 8, '<ul _ngcontent-wao-c8=\"\"><li _ngcontent-wao-c8=\"\">Demo2</li></ul>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mat_actions_milestone`
--

CREATE TABLE `mat_actions_milestone` (
  `id` int(255) NOT NULL,
  `element` int(11) NOT NULL,
  `milestone` varchar(150) NOT NULL,
  `responsible_person` text NOT NULL,
  `start_date` text NOT NULL,
  `end_date` text NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `victory` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_actions_milestone`
--

INSERT INTO `mat_actions_milestone` (`id`, `element`, `milestone`, `responsible_person`, `start_date`, `end_date`, `comment`, `status`, `victory`) VALUES
(1, 8, 'test1', 'rahul', '2019-11-10T18:30:00.000Z', '2019-11-27T18:30:00.000Z', 'Added by Rahul', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mat_actions_results`
--

CREATE TABLE `mat_actions_results` (
  `id` int(255) NOT NULL,
  `element` int(11) NOT NULL,
  `results` text NOT NULL,
  `victory` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_actions_results`
--

INSERT INTO `mat_actions_results` (`id`, `element`, `results`, `victory`) VALUES
(1, 8, '2019-11-05T18:30:00.000Z', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mat_actions_risks`
--

CREATE TABLE `mat_actions_risks` (
  `id` int(255) NOT NULL,
  `element` int(11) NOT NULL,
  `risk` text NOT NULL,
  `victory` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_actions_risks`
--

INSERT INTO `mat_actions_risks` (`id`, `element`, `risk`, `victory`) VALUES
(1, 8, '<ul _ngcontent-wao-c8=\"\"><li _ngcontent-wao-c8=\"\">Demo3</li></ul>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mat_actions_victory`
--

CREATE TABLE `mat_actions_victory` (
  `id` int(20) NOT NULL,
  `element` int(11) NOT NULL,
  `definition` text NOT NULL,
  `outcome_id` int(10) NOT NULL,
  `teammembers` text NOT NULL,
  `performance_elements` varchar(255) NOT NULL,
  `focusareaname` varchar(255) NOT NULL,
  `focusareaowner` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_midified` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_actions_victory`
--

INSERT INTO `mat_actions_victory` (`id`, `element`, `definition`, `outcome_id`, `teammembers`, `performance_elements`, `focusareaname`, `focusareaowner`, `created_at`, `last_midified`) VALUES
(1, 8, 'Need improvement', 10, '[\"222\"]', '3', 'Nice', '222', '2019-11-04 12:13:04', '2019-12-07 01:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `mat_answer_complete`
--

CREATE TABLE `mat_answer_complete` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_answer_complete`
--

INSERT INTO `mat_answer_complete` (`id`, `user`, `element`) VALUES
(14, 219, 18),
(15, 219, 19),
(13, 219, 17),
(12, 219, 16),
(11, 219, 9),
(10, 219, 8),
(9, 219, 22),
(16, 219, 10),
(17, 219, 11),
(18, 219, 12),
(19, 219, 13),
(20, 220, 22),
(21, 219, 14),
(22, 220, 8),
(23, 219, 15),
(24, 219, 20),
(25, 220, 9),
(26, 219, 21),
(27, 220, 16),
(28, 220, 17),
(29, 220, 18),
(30, 220, 19),
(31, 220, 10),
(32, 220, 11),
(33, 220, 12),
(34, 220, 13),
(35, 220, 14),
(36, 220, 15),
(37, 220, 20),
(38, 220, 21),
(39, 221, 22),
(46, 1, 22),
(41, 222, 16),
(42, 222, 10),
(43, 222, 8),
(44, 222, 15),
(45, 1, 8),
(47, 222, 22),
(48, 223, 22),
(49, 223, 21),
(50, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `mat_answer_desired`
--

CREATE TABLE `mat_answer_desired` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `desired` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_answer_desired`
--

INSERT INTO `mat_answer_desired` (`id`, `user`, `element`, `desired`) VALUES
(18, 219, 10, 4),
(17, 219, 19, 3),
(16, 219, 18, 3),
(15, 219, 17, 3),
(14, 219, 16, 4),
(13, 219, 9, 3),
(12, 219, 8, 3),
(11, 219, 22, 3),
(19, 219, 11, 3),
(20, 219, 12, 4),
(21, 219, 13, 3),
(22, 220, 22, 2),
(23, 219, 14, 3),
(24, 220, 8, 2),
(25, 219, 15, 3),
(26, 219, 20, 3),
(27, 220, 9, 2),
(28, 219, 21, 4),
(29, 220, 16, 2),
(30, 220, 17, 2),
(31, 220, 18, 3),
(32, 220, 19, 2),
(33, 220, 10, 3),
(34, 220, 11, 2),
(35, 220, 12, 3),
(36, 220, 13, 3),
(37, 220, 14, 3),
(38, 220, 15, 3),
(39, 220, 20, 3),
(40, 220, 21, 3),
(41, 221, 22, 2),
(50, 223, 22, 2),
(43, 222, 16, 2),
(44, 222, 10, 2),
(45, 222, 8, 3),
(46, 222, 15, 4),
(47, 1, 8, 3),
(48, 1, 22, 2),
(49, 222, 22, 2),
(51, 223, 21, 4),
(52, 1, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mat_answer_mc`
--

CREATE TABLE `mat_answer_mc` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_answer_mc`
--

INSERT INTO `mat_answer_mc` (`id`, `user`, `element`, `question`, `answer`) VALUES
(61, 219, 17, 51, 2),
(60, 219, 17, 50, 2),
(59, 219, 17, 49, 3),
(58, 219, 17, 48, 2),
(57, 219, 16, 47, 2),
(56, 219, 16, 46, 2),
(55, 219, 16, 45, 2),
(54, 219, 16, 44, 1),
(53, 219, 16, 43, 2),
(52, 219, 9, 15, 2),
(51, 219, 9, 14, 2),
(50, 219, 9, 13, 2),
(49, 219, 9, 12, 2),
(48, 219, 8, 69, 2),
(47, 219, 8, 68, 2),
(46, 219, 8, 10, 2),
(45, 219, 8, 8, 2),
(44, 219, 22, 67, 2),
(43, 219, 22, 66, 3),
(42, 219, 22, 65, 2),
(41, 219, 22, 64, 2),
(62, 219, 18, 52, 2),
(63, 219, 18, 53, 1),
(64, 219, 18, 55, 2),
(65, 219, 18, 54, 1),
(66, 219, 18, 56, 2),
(67, 219, 19, 57, 2),
(68, 219, 19, 58, 1),
(69, 219, 19, 59, 2),
(70, 219, 10, 16, 3),
(71, 219, 10, 17, 2),
(72, 219, 10, 18, 1),
(73, 219, 10, 19, 2),
(74, 219, 10, 20, 2),
(75, 219, 11, 21, 2),
(76, 219, 11, 22, 3),
(77, 219, 11, 23, 2),
(78, 219, 11, 24, 2),
(79, 219, 12, 25, 1),
(80, 219, 12, 26, 1),
(81, 219, 12, 27, 2),
(82, 219, 12, 28, 1),
(83, 219, 13, 29, 2),
(84, 219, 13, 30, 3),
(85, 219, 13, 31, 2),
(86, 219, 13, 32, 2),
(87, 220, 22, 64, 2),
(88, 220, 22, 65, 2),
(89, 220, 22, 66, 2),
(90, 220, 22, 67, 2),
(91, 219, 14, 33, 1),
(92, 219, 14, 34, 2),
(93, 219, 14, 35, 1),
(94, 219, 14, 36, 1),
(95, 219, 14, 37, 1),
(96, 220, 8, 8, 2),
(97, 220, 8, 10, 1),
(98, 220, 8, 68, 1),
(99, 220, 8, 69, 2),
(100, 219, 15, 38, 2),
(101, 219, 15, 39, 2),
(102, 219, 15, 40, 2),
(103, 219, 15, 41, 1),
(104, 219, 15, 42, 2),
(105, 220, 9, 12, 2),
(106, 220, 9, 13, 1),
(107, 220, 9, 14, 2),
(108, 220, 9, 15, 1),
(109, 219, 20, 70, 2),
(110, 219, 20, 71, 2),
(111, 219, 20, 72, 1),
(112, 219, 21, 60, 2),
(113, 219, 21, 61, 2),
(114, 219, 21, 62, 1),
(115, 219, 21, 63, 2),
(116, 220, 16, 43, 1),
(117, 220, 16, 44, 1),
(118, 220, 16, 45, 2),
(119, 220, 16, 46, 2),
(120, 220, 16, 47, 2),
(121, 220, 17, 48, 2),
(122, 220, 17, 49, 2),
(123, 220, 17, 50, 2),
(124, 220, 17, 51, 1),
(125, 220, 18, 52, 2),
(126, 220, 18, 53, 2),
(127, 220, 18, 54, 2),
(128, 220, 18, 55, 1),
(129, 220, 18, 56, 1),
(130, 220, 19, 57, 2),
(131, 220, 19, 58, 1),
(132, 220, 19, 59, 1),
(133, 220, 10, 16, 2),
(134, 220, 10, 17, 1),
(135, 220, 10, 18, 1),
(136, 220, 10, 19, 1),
(137, 220, 10, 20, 1),
(138, 220, 11, 21, 2),
(139, 220, 11, 22, 1),
(140, 220, 11, 23, 2),
(141, 220, 11, 24, 1),
(142, 220, 12, 25, 1),
(143, 220, 12, 26, 2),
(144, 220, 12, 27, 1),
(145, 220, 12, 28, 1),
(146, 220, 13, 29, 2),
(147, 220, 13, 30, 1),
(148, 220, 13, 31, 2),
(149, 220, 13, 32, 1),
(150, 220, 14, 33, 1),
(151, 220, 14, 34, 1),
(152, 220, 14, 35, 2),
(153, 220, 14, 36, 1),
(154, 220, 14, 37, 2),
(155, 220, 15, 38, 2),
(156, 220, 15, 39, 2),
(157, 220, 15, 40, 2),
(158, 220, 15, 41, 1),
(159, 220, 15, 42, 1),
(160, 220, 20, 70, 2),
(161, 220, 20, 71, 2),
(162, 220, 20, 72, 1),
(163, 220, 21, 60, 1),
(164, 220, 21, 61, 2),
(165, 220, 21, 62, 1),
(166, 220, 21, 63, 1),
(167, 221, 22, 64, 4),
(168, 221, 22, 65, 2),
(169, 221, 22, 66, 2),
(170, 221, 22, 67, 2),
(200, 1, 22, 66, 1),
(194, 1, 8, 68, 1),
(199, 1, 22, 65, 1),
(198, 1, 22, 64, 1),
(175, 222, 16, 43, 1),
(176, 222, 16, 44, 2),
(177, 222, 16, 45, 3),
(178, 222, 16, 46, 4),
(179, 222, 16, 47, 4),
(180, 222, 10, 16, 1),
(181, 222, 10, 17, 1),
(182, 222, 10, 18, 1),
(183, 222, 10, 19, 1),
(184, 222, 10, 20, 1),
(185, 222, 8, 8, 1),
(186, 222, 8, 10, 1),
(187, 222, 8, 68, 1),
(188, 222, 8, 69, 1),
(189, 222, 15, 38, 1),
(190, 222, 15, 39, 1),
(191, 222, 15, 40, 1),
(192, 222, 15, 41, 1),
(193, 222, 15, 42, 1),
(195, 1, 8, 8, 1),
(196, 1, 8, 69, 1),
(197, 1, 8, 10, 1),
(201, 1, 22, 67, 1),
(202, 222, 22, 64, 1),
(203, 222, 22, 65, 1),
(204, 222, 22, 66, 1),
(205, 222, 22, 67, 1),
(206, 222, 19, 57, 1),
(207, 222, 19, 58, 1),
(208, 222, 19, 59, 1),
(209, 223, 22, 64, 1),
(210, 223, 22, 65, 2),
(211, 223, 22, 66, 3),
(212, 223, 22, 67, 4),
(213, 223, 21, 60, 1),
(214, 223, 21, 61, 1),
(215, 223, 21, 62, 1),
(216, 223, 21, 63, 1),
(217, 1, 9, 12, 1),
(218, 1, 9, 13, 2),
(219, 1, 9, 14, 4),
(220, 1, 9, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mat_answer_proof`
--

CREATE TABLE `mat_answer_proof` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `proof` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_answer_proof`
--

INSERT INTO `mat_answer_proof` (`id`, `user`, `element`, `proof`) VALUES
(32, 219, 16, 112),
(31, 219, 16, 115),
(30, 219, 9, 27),
(29, 219, 9, 26),
(28, 219, 9, 22),
(27, 219, 8, 16),
(26, 219, 8, 13),
(25, 219, 22, 7),
(24, 219, 22, 8),
(23, 219, 22, 1),
(33, 219, 16, 118),
(34, 219, 17, 124),
(35, 219, 17, 127),
(36, 219, 18, 133),
(37, 219, 18, 136),
(38, 219, 19, 141),
(39, 219, 19, 144),
(40, 219, 10, 32),
(41, 219, 10, 45),
(42, 219, 11, 47),
(43, 219, 11, 60),
(44, 219, 11, 62),
(45, 219, 12, 71),
(46, 219, 12, 74),
(47, 219, 13, 80),
(48, 219, 13, 87),
(49, 220, 22, 1),
(50, 220, 22, 5),
(51, 219, 14, 94),
(52, 219, 14, 95),
(53, 219, 15, 103),
(54, 219, 15, 108),
(55, 219, 20, 145),
(56, 219, 20, 148),
(57, 219, 21, 156),
(58, 219, 21, 160),
(59, 221, 22, 1),
(60, 221, 22, 5),
(61, 221, 22, 3),
(62, 221, 22, 2),
(76, 223, 22, 2),
(75, 223, 22, 1),
(65, 222, 16, 120),
(66, 222, 10, 40),
(67, 222, 8, 21),
(68, 222, 15, 111),
(69, 1, 8, 18),
(70, 1, 8, 19),
(71, 1, 22, 1),
(72, 1, 22, 6),
(73, 222, 22, 1),
(74, 222, 22, 6),
(77, 223, 22, 6),
(78, 223, 21, 151),
(79, 223, 21, 152),
(80, 1, 9, 24),
(81, 1, 9, 23),
(82, 1, 9, 30),
(83, 1, 9, 29);

-- --------------------------------------------------------

--
-- Table structure for table `mat_category`
--

CREATE TABLE `mat_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `byline` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_category`
--

INSERT INTO `mat_category` (`id`, `name`, `byline`, `image`) VALUES
(1, 'Direction', '<strong>Ensure the team pulls in the same direction towards zero harm.</strong><br/>\r\nLeadership sets the direction for sustainable zero harm through the use of various enablers. The integrated SHE policy and fundamentals provide the context within which the performance requirements are set. Targets and plans are set for all existing OMEs, growth projects and joint venture activities under our operational control.', 'direction.svg'),
(2, 'People', '<strong>Ensure team members are fit and skilled to achieve zero harm.</strong><br/>\r\nPeople-related practices are used to enable sustainable zero harm. Our workforce is enabled through leaders who create a zero harm climate. Leaders focus on zero harm behaviour, learning, skills and competency development. A competent, fit-for-purpose SHE function provides the necessary SHE support to OMEs.\r\n', 'people.svg'),
(3, 'Tools', '<strong>Ensure the team has the tools to achieve zero harm.</strong><br/>\r\nRisk-based tools are provided to enable sustainable excellent SHE results in our OMEs. These tools aim to align SHE activities globally and drive regional standardisation where possible. These include management systems, business processes, enabling technology, procedures and toolkits. Utilising these tools, OMEs can meet SHE performance requirements, consistent with applicable legal requirements and improved maturity levels.', 'tools.svg'),
(4, 'Results', '<strong>Ensure SHE results are monitored and utilised.</strong><br/>\r\nSHE results are monitored to measure SHE performance and thereby the effectiveness of SHE risk management and an assertion on assurance. These results inform the focus of continuous improvement activities.\r\n', 'results.svg');

-- --------------------------------------------------------

--
-- Table structure for table `mat_elements`
--

CREATE TABLE `mat_elements` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sequence` int(11) NOT NULL,
  `alt_sequence` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_elements`
--

INSERT INTO `mat_elements` (`id`, `cat`, `name`, `sequence`, `alt_sequence`) VALUES
(8, 1, '1.2 SHE Fundamentals', 1, 'b'),
(9, 1, '1.3 Targets and plans', 2, 'c'),
(10, 3, '3.1 SHE Risk Management', 0, 'h'),
(11, 3, '3.2.a Project Management', 1, 'i'),
(12, 3, '3.2.b Operations and Maintenance', 2, 'j'),
(13, 3, '3.2.c Supply Chain Management', 3, 'k'),
(14, 3, '3.3 SHE incident management', 4, 'l'),
(15, 3, '3.4 Governance and assurance', 5, 'm'),
(16, 2, '2.1 SHE Climate and Behaviour', 0, 'd'),
(17, 2, '2.2 Training and skills', 1, 'e'),
(18, 2, '2.3 Management of people', 2, 'f'),
(19, 2, '2.4 Stakeholder engagement', 3, 'g'),
(20, 4, '4.1 Measure and report', 0, 'n'),
(21, 4, '4.2 Improvement', 1, 'o'),
(22, 1, '1.1 SHE Policy & Strategy', 0, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `mat_performance`
--

CREATE TABLE `mat_performance` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `poor` text NOT NULL,
  `mediocre` text NOT NULL,
  `good` text NOT NULL,
  `excellent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_performance`
--

INSERT INTO `mat_performance` (`id`, `question`, `poor`, `mediocre`, `good`, `excellent`) VALUES
(1, 'Performance: actual performance against target', 'Usually more than 10% outside the target', 'Usually within 10% of the target', 'Consistently within 2% of the target', 'Target exceeded consistently'),
(2, 'Trend: Positive, sustained >3 years', 'Trend is negative', 'No improvement in trend over past 3 years', 'Positive trend, sustained performance over 3 years', 'Trend consistently remain ahead of industry norm'),
(3, 'Comparison: Target setting, benchmarking and strategic alignment', 'Target are stagnant and/or lags industry norms, no/limited comparison or benchmarking', 'Target are set top-down based on entity average performance, relevant internal comparisons are done and results are on par', 'Stretched target is set and owned by the team over and above the Group target, Relevant external comparisons are made and are favourable, performance is favourable compared to strategic objectives', 'Target is industry leading, relevant external comparisons indicate industry leaders, strategic objectives achieved and revised.'),
(4, 'Confidence: Confidence that performance can be sustained, specific improvement actions, correct lead indicators', 'Improvement actions are mainly reactive to performance, limited view on lead indicators, non-conformance process play a big role in addressing negative trends', 'Identification of specific actions to improve performance is done by management teams and operational teams are instructed, lead indicators for compliance are tracked.', 'Teams take ownership of the trend and drive improvement actions, focussing more on systems, processes and preventive controls, lead indicators for critical control effectiveness are tracked.', 'Improvement actions focus on embedding behaviour. Improvement actions become a way of doing business. Lead indicators for risk reduction are tracked.');

-- --------------------------------------------------------

--
-- Table structure for table `mat_performance_areas`
--

CREATE TABLE `mat_performance_areas` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_performance_areas`
--

INSERT INTO `mat_performance_areas` (`id`, `name`, `sequence`) VALUES
(1, 'Occupational Safety', 1),
(2, 'Process Safety', 2),
(3, 'Health', 3),
(4, 'Environment', 4),
(5, 'Product Stewardship', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mat_performance_desired`
--

CREATE TABLE `mat_performance_desired` (
  `id` int(25) NOT NULL,
  `user` int(25) NOT NULL,
  `element` int(25) NOT NULL,
  `desired` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_performance_desired`
--

INSERT INTO `mat_performance_desired` (`id`, `user`, `element`, `desired`) VALUES
(1, 223, 1, 3),
(2, 1, 1, 4),
(3, 1, 2, 2),
(4, 1, 3, 3),
(5, 1, 4, 3),
(6, 1, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mat_performance_mc`
--

CREATE TABLE `mat_performance_mc` (
  `id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_performance_mc`
--

INSERT INTO `mat_performance_mc` (`id`, `question`, `element`, `answer`, `user`) VALUES
(16, 4, 1, 1, 219),
(15, 3, 1, 2, 219),
(14, 2, 1, 2, 219),
(13, 1, 1, 1, 219),
(17, 1, 2, 1, 219),
(18, 2, 2, 1, 219),
(19, 3, 2, 2, 219),
(20, 4, 2, 2, 219),
(21, 1, 3, 2, 219),
(22, 2, 3, 2, 219),
(23, 3, 3, 2, 219),
(24, 4, 3, 1, 219),
(25, 1, 4, 2, 219),
(26, 2, 4, 3, 219),
(27, 3, 4, 2, 219),
(28, 4, 4, 2, 219),
(29, 1, 5, 2, 219),
(30, 2, 5, 3, 219),
(31, 3, 5, 2, 219),
(32, 4, 5, 2, 219),
(33, 1, 1, 3, 220),
(34, 2, 1, 3, 220),
(35, 3, 1, 1, 220),
(36, 4, 1, 1, 220),
(37, 1, 2, 2, 220),
(38, 2, 2, 1, 220),
(39, 3, 2, 2, 220),
(40, 4, 2, 2, 220),
(41, 1, 3, 2, 220),
(42, 2, 3, 3, 220),
(43, 3, 3, 2, 220),
(44, 4, 3, 2, 220),
(45, 1, 4, 2, 220),
(46, 2, 4, 3, 220),
(47, 3, 4, 2, 220),
(48, 4, 4, 1, 220),
(49, 1, 5, 2, 220),
(50, 2, 5, 3, 220),
(70, 2, 1, 2, 223),
(53, 1, 1, 2, 222),
(71, 3, 1, 3, 223),
(72, 4, 1, 4, 223),
(57, 1, 2, 1, 222),
(58, 2, 2, 2, 222),
(59, 3, 2, 3, 222),
(69, 1, 1, 1, 223),
(61, 1, 3, 1, 222),
(62, 2, 3, 2, 222),
(63, 3, 3, 3, 222),
(64, 4, 3, 4, 222),
(65, 1, 4, 1, 222),
(66, 2, 4, 1, 222),
(67, 3, 4, 1, 222),
(68, 4, 4, 1, 222),
(73, 1, 1, 1, 1),
(74, 2, 1, 2, 1),
(75, 3, 1, 4, 1),
(76, 4, 1, 1, 1),
(77, 1, 2, 1, 1),
(78, 2, 2, 3, 1),
(79, 3, 2, 4, 1),
(80, 4, 2, 2, 1),
(81, 1, 3, 1, 1),
(82, 2, 3, 2, 1),
(83, 3, 3, 4, 1),
(84, 4, 3, 3, 1),
(85, 1, 4, 1, 1),
(86, 2, 4, 2, 1),
(87, 3, 4, 4, 1),
(88, 4, 4, 3, 1),
(89, 1, 5, 1, 1),
(90, 2, 5, 3, 1),
(91, 3, 5, 1, 1),
(92, 4, 5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mat_proofs`
--

CREATE TABLE `mat_proofs` (
  `id` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `proof` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_proofs`
--

INSERT INTO `mat_proofs` (`id`, `element`, `type`, `proof`) VALUES
(1, 22, 1, 'SHE Policy declaration is available'),
(2, 22, 1, 'Practical actions to create team commitment to zero harm (e.g. communication, pledges, team talks)'),
(3, 22, 1, 'Safety climate survey results'),
(4, 22, 1, 'Alignment between the 1S SHE EA and the OME SHE practices regarding legal compliance'),
(5, 22, 1, 'Adherence to management standards \r\n(e.g. audit results, certification)'),
(6, 22, 2, 'SHE policy declaration is used in communication and SHE directional decisions'),
(7, 22, 2, 'Team participation in zero harm journey'),
(8, 22, 2, 'OME SHE procedures and toolkits are aligned with the SHE performance requirements as set out in the One Sasol SHE Excellence approach.'),
(9, 22, 2, 'Integrated management system aligned with the One Sasol SHE Excellence approach.'),
(10, 8, 1, 'SHE performance maturity across sub-functions'),
(11, 8, 1, 'SHE climate diagnostic results are reviewed and analysed'),
(12, 8, 1, 'Heartbeat results and HR data are reviewed and analysed for high risk areas'),
(13, 8, 1, 'Root causes from HSI investigations identified'),
(14, 8, 1, 'Operations know and execute critical controls'),
(15, 8, 1, 'OME risk profile and risk exposure.'),
(16, 8, 2, 'Progress on previous year’s SHE Game Plan or SHE improvement focus areas'),
(17, 8, 2, 'SHE focus areas identified from other Maturity Assessment sessions and reviews'),
(18, 8, 2, 'Input from open discussions/interviews'),
(19, 8, 2, 'Monitoring the effectiveness of high-risk task management'),
(20, 8, 2, 'Specific focus on leading indicators during SHE performance maturity assessments'),
(21, 8, 2, 'Monitoring and assurance of the effectiveness of critical controls '),
(22, 9, 1, 'Annual SHE Game Plan is available'),
(23, 9, 1, 'SHE targets are specific, measurable, attainable, relevant and time-bound'),
(24, 9, 1, 'Visible SHE lagging and leading indicators'),
(25, 9, 1, 'Prioritised list of action plans based on the SHE Game Plan, which are tracked for execution'),
(26, 9, 2, 'SHE Game Plan is aligned with our risk profile'),
(27, 9, 2, 'Our SHE targets are set with input from all relevant key stakeholders'),
(28, 9, 2, 'Visible monitoring of SHE leading indicators with clear guidelines on actions to take if / when the indicator indicates a negative performance.'),
(29, 9, 2, 'Link between SHE maturity assessments and SHE Game Plans'),
(30, 9, 2, 'Proof of the benefit derived from improvement plans'),
(31, 10, 1, 'Operational Control'),
(32, 10, 1, 'Customised Bow-ties for top 3 SHE risks'),
(33, 10, 1, 'Basic SHE risk profile available '),
(34, 10, 1, 'Critical controls performance criteria defined and incorporated into operations procedures'),
(35, 10, 1, 'Operations know and execute critical controls'),
(36, 10, 1, 'Proof of Hazard ID training and communication'),
(37, 10, 1, 'Records of pre-task risk assessments	'),
(38, 10, 1, 'Records of continuous risk assessments '),
(39, 10, 1, 'Records of field verification inspection sheets of critical controls'),
(40, 10, 2, 'A risk profile that is being updated as risks change'),
(41, 10, 2, 'Proof that all controls are monitored and managed.'),
(42, 10, 2, 'Proof of tracking and improvement of critical control effectiveness'),
(43, 10, 2, 'Leading indicators for control effectiveness are tracked and is visible'),
(44, 10, 2, 'High risk tasks are managed and assessed differently than other tasks (e.g. planning, PJOs, over-inspection, TRA, PDA)'),
(45, 10, 2, 'Incident investigations reference Bow-ties and critical controls to analyse failures'),
(46, 10, 2, 'The criticality of controls are reviewed with due regard to changing circumstances'),
(47, 11, 1, 'Approved project plan, including SHE requirements'),
(48, 11, 1, 'Project SHE risk assessments, completed and understood'),
(49, 11, 1, 'Project SHE file, implemented and visible'),
(50, 11, 1, 'Proof of environmental considerations taken into account'),
(51, 11, 1, 'Proof of health considerations taken into account'),
(52, 11, 1, 'Proof of product stewardship considerations taken into account'),
(53, 11, 1, 'SHE files on all service providers involved in the project '),
(54, 11, 1, 'SHE files on all service providers involved in the project '),
(55, 11, 1, 'SHE criteria for capital project approval '),
(56, 11, 2, 'Effective end-of-job documentation'),
(57, 11, 2, 'Project-related COP’s and SOP’s reflect high risk tasks'),
(58, 11, 2, 'Project-related COP’s and SOP’s are distributed to relevant service providers and suppliers'),
(59, 11, 2, 'Effective PTOs on high risk tasks'),
(60, 11, 2, 'Pre-start-up safety reviews'),
(61, 11, 2, 'Effective BBS observations during execution	'),
(62, 11, 2, 'SHE criteria forms part of design, construction and commissioning '),
(63, 11, 2, 'Engagement and management of contractors to ensure safe execution of projects'),
(64, 11, 2, 'SHE risks are managed during decommissioning, demolition, remediation and rehabilitation of site closures'),
(65, 12, 1, 'Defined roles and responsibilities'),
(66, 12, 1, 'Effective emergency response plans, understood and implemented'),
(67, 12, 1, 'Effective pre-task risk assessments'),
(68, 12, 1, 'Effective continuous risk assessments'),
(69, 12, 1, 'Effective permit to work process'),
(70, 12, 1, 'Identified critical controls that is visible and understood'),
(71, 12, 1, 'Effective asset management strategy'),
(72, 12, 1, 'Adherence to maintenance strategies'),
(73, 12, 2, 'Effective monitoring of the effectiveness of controls'),
(74, 12, 2, 'Management of SHE risks are fully integrated into day-to-day activities'),
(75, 12, 2, 'Improvement action plans related to SHE performance and critical control improvement'),
(76, 12, 2, 'Updated procedures'),
(77, 12, 2, 'Effective application of the MOC process	'),
(78, 12, 2, 'A structured non-conformance process'),
(79, 13, 1, 'Proof of all service providers being approved.'),
(80, 13, 1, 'Adherence to contractual agreements with suppliers and service providers which include SHE requirements.'),
(81, 13, 1, 'All SHE procedures are shared with service providers.'),
(82, 13, 1, 'SHE induction for service providers.'),
(83, 13, 1, 'SDS documents for all products.'),
(84, 13, 1, 'Adherence to the product registration process.'),
(85, 13, 1, 'Results from SQAS audits.'),
(86, 13, 2, 'Effective product logistics risk management plan which is regularly reviewed and improved.'),
(87, 13, 2, 'Audited OME specific product storage and transportation SHE requirements.'),
(88, 13, 2, 'Identified critical controls for supply chain-related SHE risks that are visible and discussed.'),
(89, 13, 2, 'Service Provides are involved in SHE meetings, discussions and investigations.  '),
(90, 13, 2, 'Proof of customer approval based on SHE requirements.'),
(91, 13, 2, 'Auditing and monitoring of service providers according to their SHE plans.'),
(92, 14, 1, 'Proof of incident investigation according to Group procedure '),
(93, 14, 1, 'Preventative and corrective actions being tracked for execution'),
(94, 14, 1, 'Shared learnings'),
(95, 14, 2, 'Incident investigations reference Bow-ties and critical controls to analyse failures'),
(96, 14, 2, 'High quality investigations of actual or potential High Severity Incidents'),
(97, 14, 2, 'Shared learnings are made applicable and relevant'),
(98, 14, 2, 'Actions from learnings which are tracked for implementation'),
(99, 14, 2, 'Preventative and corrective actions from incidents being evaluated for effectiveness.'),
(100, 14, 2, 'Updated Bow-ties related to HSI'),
(101, 15, 1, 'Appointment letters for all legal appointees'),
(102, 15, 1, 'Agendas for SHE compliance meetings'),
(103, 15, 1, 'Combined Assurance plan for the OME/area'),
(104, 15, 1, 'SHE documents (Procedures, audits, inspections etc.) are available on the relevant platform'),
(105, 15, 1, 'SHE procedures and toolkits are executed'),
(106, 15, 2, 'Assurance documentation reflect updates on critical controls'),
(107, 15, 2, 'Well defined and understood performance criteria for critical controls to guide assurance activities'),
(108, 15, 2, 'First level assurance activities and reporting on effectiveness of critical controls'),
(109, 15, 2, 'Integrated SHE management technology system'),
(110, 15, 2, 'Action management to close out assurance deviations'),
(111, 15, 2, 'SHE audits and assessments are integrated and optimised'),
(112, 16, 1, 'Proof of BBS reports'),
(113, 16, 1, 'Implemented and monitored LSR'),
(114, 16, 1, 'SHE climate diagnostics results'),
(115, 16, 1, 'Workforce is trained in LSR and BBS'),
(116, 16, 1, 'Leadership site visits'),
(117, 16, 2, 'BBS barrier removal tracking'),
(118, 16, 2, 'Proof of SHE climate diagnostics improvement plans and implementation tracking'),
(119, 16, 2, 'Examples of the desired SHE behaviours'),
(120, 16, 2, 'Leadership engagement on SHE matters on a face-to-face basis'),
(121, 16, 2, 'Proactive utilisation of HR data'),
(122, 17, 1, 'Job-specific SHE competencies defined for the team'),
(123, 17, 1, 'List of mandatory SHE training'),
(124, 17, 1, 'SHE training plans and training matrices'),
(125, 17, 1, 'SHE training and competency record management process'),
(126, 17, 2, 'Updated and dynamic training plans'),
(127, 17, 2, 'Updated SHE training material'),
(128, 17, 2, 'Effective planned task observation (PTO) system to observe SHE competencies'),
(129, 17, 2, 'SHE competency gaps included in personal development plans'),
(130, 17, 2, 'Coaching records'),
(131, 18, 1, 'Job profiles include SHE accountabilities	'),
(132, 18, 1, 'All performance agreements include SHE accountabilities'),
(133, 18, 1, 'Incentive and/or bonus includes SHE elements'),
(134, 18, 1, 'Service providers roles include SHE accountabilities'),
(135, 18, 1, 'Proof of SHE considerations during the recruitment process'),
(136, 18, 2, 'Application of the Group Human Failure Causation Model in dealing with consequence management cases'),
(137, 18, 2, 'Succession plans for critical SHE positions'),
(138, 18, 2, 'Fit for purpose SHE organisational structure'),
(139, 18, 2, 'Informal recognition for the desired SHE behaviours'),
(140, 19, 1, 'Approved SHE communication and engagement plans'),
(141, 19, 1, 'Agendas and minutes for SHE meetings as per engagement plan'),
(142, 19, 1, 'SHE communication material as per plan'),
(143, 19, 2, 'Engagement survey results, with improvement actions being implemented and tracked. '),
(144, 19, 2, 'A change management plans for SHE-related changes '),
(145, 20, 1, 'SHE reporting according to Group procedure'),
(146, 20, 1, 'SHE data quality management process'),
(147, 20, 1, 'SHE reporting on lagging KPIs and legal compliance'),
(148, 20, 2, 'SHE reporting on leading KPIs'),
(149, 20, 2, 'Automated, integrated dashboards'),
(150, 20, 2, 'Analysis of leading and lagging KPIs enabling informed decision making and continuous improvement'),
(151, 21, 1, 'Proof of logged improvement plans'),
(152, 21, 1, 'Proof of plan, do, review, improve cycle uses'),
(153, 21, 1, 'Incident register that is up to date'),
(154, 21, 1, 'Non-conformance register that is up to date'),
(155, 21, 1, 'A trail of audit reports and actions implemented to address the findings'),
(156, 21, 1, 'Proof of Management review outcomes'),
(157, 21, 2, 'An effective platform to log and track improvement plans'),
(158, 21, 2, 'An effective platform to track the benefit of our SHE improvement plans'),
(159, 21, 2, 'The OME Improvement process is diligently followed in our team'),
(160, 21, 2, 'SHE meeting agendas where SHE improvement action execution/progress is discussed');

-- --------------------------------------------------------

--
-- Table structure for table `mat_proof_types`
--

CREATE TABLE `mat_proof_types` (
  `id` int(11) NOT NULL,
  `proof_type_id` int(11) NOT NULL,
  `proof_type_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_proof_types`
--

INSERT INTO `mat_proof_types` (`id`, `proof_type_id`, `proof_type_name`) VALUES
(1, 1, 'Compliant'),
(2, 2, 'Resilient');

-- --------------------------------------------------------

--
-- Table structure for table `mat_questions`
--

CREATE TABLE `mat_questions` (
  `id` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `question` text NOT NULL,
  `reactive` text NOT NULL,
  `compliant` text NOT NULL,
  `proactive` text NOT NULL,
  `resilient` text NOT NULL,
  `sequence` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_questions`
--

INSERT INTO `mat_questions` (`id`, `element`, `question`, `reactive`, `compliant`, `proactive`, `resilient`, `sequence`) VALUES
(64, 22, 'My team is aware of the SHE policy (or OME SHE policy declaration) and its contents.', 'No not all', 'The SHE policy is available for those who want to see it.', 'Yes, leaders commit to the SHE policy and communicate it.', 'Yes, our SHE policy is consistently used to guide our SHE direction and improvement plans. ', 1),
(65, 22, 'My team is committed to the goal of \r\nsustainable zero harm.', 'No not all', 'Yes, mostly.', 'Yes, this is evident in all leaders setting a tone for sustainable zero harm – walking the talk. ', 'Yes, we all believe zero harm is possible and participate in the journey with passion. All teams collaborate and take pride in sustained zero harm results.', 2),
(8, 8, 'Engaged People', 'SHE is not a way of life and/or people are mostly disengaged on our journey to sustainable zero harm.', 'Every team member understands what is required to achieve zero harm, is competent and takes ownership to execute their daily jobs with zero harm.', 'Teams are proactively involved in SHE programmes and people are individually committed to zero harm by caring for themselves, others and the environment. ', 'Our people consistently behave in a way which demonstrates that zero harm is embedded as a way of life. All people are passionate about achieving sustainable zero harm.', 2),
(66, 22, 'Our One Sasol SHE Excellence approach is understood and implemented.', 'No', 'Our leaders are aware of the requirements of the 1S SHE EA and drive consistent compliance with SHE rules and procedures.', 'Our leaders use the SHE fundamentals as their belief system to drive the journey towards zero harm. The 1S SHE EA is understood and integrated with the Operating Standards used by the OME. ', 'Yes, we all live by the SHE fundamentals, our SHE approach is standardised and proven effective in reducing SHE risks. The 1S SHE EA is used by leadership to direct risk-based SHE practices which are embedded at all team levels as the “way we do SHE”.', 3),
(10, 8, 'Continuous Improvement', 'SHE practices are mostly dependent on the team’s experience and improved as part of corrective actions.  The team has a limited view on gaps or improvement areas.', 'SHE practices are compliant with legal requirements. Focus on the embedding of a strong foundation of compliance as a basis for further improvements.', 'Improvement areas in SHE practices are identified proactively based on an understanding of incident root causes, learnings and the maturity of SHE practices. These are actioned to achieve improved SHE results.', 'A mindset of continuous improvement is embedded and drives the achievement of sustainable zero harm results. A formal continuous improvement program is in place. Best practices and learnings are shared and embedded across OMEs.', 4),
(12, 9, 'My team clearly understand our SHE objectives and targets', 'No', 'Yes, we adopt our OME SHE objectives and targets.', 'Yes, our team set our own, more stretched objectives and targets for Zero Harm.', 'Yes, our targets are stretched and set based on desired risk reduction areas and an improvement pull.', 1),
(13, 9, 'We have implemented standardised leading and lagging indicators', 'No, mostly lagging indicators', 'Yes, our leading and lagging indicators are adopted from Group guidelines.', 'Yes, our leading indicators are addressing our SHE critical controls. We measure them through an integrated SHE management system.', 'Yes, SHE leading indicators are owned and used extensively by teams to drive team level SHE performance improvement and risk reduction.', 2),
(14, 9, 'We have a SHE Game Plan with detailed actions to achieve our performance targets.', 'There are no detailed actions', 'Yes, our SHE targets are cascaded and included in our team Game Plan / annual improvement plan.', 'Yes, our SHE Game Plan focus areas are determined and prioritised based on analysis of performance gaps, leading indicator trends and SHE risks. ', 'Yes, best practice benchmarking and maturity assessments are done to confirm SHE Game Plan focus areas. ', 3),
(15, 9, 'We track the execution of our SHE Game Plan & take corrective action.', 'No', 'Yes. The SHE Game Plan is tracked. Our leaders actively drive execution and provide the required resources.', 'Yes, SHE Game Plan actions are included in individual performance plans. Deviations are identified, and corrective action taken timeously.', 'Yes, and teams take full ownership of the embedding of SHE Game Plan actions which is evident in SHE performance gaps being closed sustainably.', 4),
(16, 10, 'We have identified all our operations’ SHE risks.', 'No not all.', 'Yes. We have a baseline risk assessment.', 'Yes, and we frequently review them as needed.', 'Yes, and our SHE system proactively flags us when our SHE risk profile is changing. ', 1),
(17, 10, 'We have identified and evaluated the controls of the top SHE risks through the Bow-tie methodology.', 'No not all.', 'Yes, we have customised Bow-tie analysis of all our top SHE risks.', 'Yes, and we have identified those with inadequate design effectiveness.', 'Yes, all our critical controls have adequate design effectiveness', 2),
(18, 10, 'All our controls are identified and integrated into the daily operations.', 'Hap hazard.', 'Yes, performance criteria for critical controls are defined and integrated into daily tasks.', 'Control executors know what to do if any control is flagged for ineffectiveness.', 'Yes, and leading indicators are linked to controls.', 3),
(19, 10, 'We use risk assessments (RA) to embed a culture of risk awareness.', 'Hap hazard.', 'Yes, we execute prescribed task RA and drive a continuous RA program.', 'Yes, and we utilise pre-task RA and PJOs on high risk tasks to proactively ensure controls and behaviours are in place.', 'Yes, and teams self-improve controls and behaviours.', 4),
(20, 10, 'We monitor the effectiveness of controls.', 'Hap hazard.', 'Yes, my team can report on the effectiveness of critical controls by means of field verification inspection sheets. ', 'Yes, my team can report the effectiveness on all controls and integrate various sources of information to pro-actively act on risk exposure. ', 'Yes, I receive an automated control effectiveness reporting document.', 5),
(21, 11, 'We follow a SHE philosophy in prioritising and selecting projects.', 'No not all', 'Yes, to comply to legal and other requirements.', 'Yes, we also consider anticipated future sustainability requirements.', 'Yes, and we base it on a fundamental belief that improvement towards zero harm will result in a competitive advantage for our business.  ', 1),
(22, 11, 'Our project SHE risk assessments influence our decisions regarding project approval, concept, feasibility, design and development.', 'No not always', 'We only approve projects if all SHE risk assessments are done.', 'Yes, SHE risk assessment drive improved design standards that enable safer operations.', 'Yes, we include SHE risk reduction practices in the project as well as industry leading SHE technologies, where possible.', 2),
(23, 11, 'The team takes full ownership of SHE performance during project execution.', 'No', 'Yes, the Project SHE manager ensures that the appropriate SHE practices are followed.', 'Yes, the whole project team (with the service provider) take ownership and pro-actively address the project SHE risks.', 'Yes, project execution objectives of zero harm, project cost and schedule are not in conflict, but are optimised in total to deliver sustainable zero harm results. ', 3),
(24, 11, 'We provide for and manage closure and end of life projects.', 'No, mostly done due to external pressures.', 'Yes, we adhere to the minimum legal compliance. Resources are provided.', 'Yes, we plan closure projects to mitigate future risks. We mitigate rehabilitation risks pro-actively during plant design.', 'Yes, our leaders actively pursue opportunities to minimise the SHE impacts of operations closure.', 4),
(25, 12, 'My team apply zero harm work practices (people and process related) to manage our SHE risks. ', 'No not always', 'Yes, our zero harm work practices are consistently implemented and effectively managed.', 'Yes, my team own these practices. They focus on the effectiveness of controls.', 'Yes, these practices have been internalised in the team behaviour. SHE risks are reduced through integrated improvements of zero harm work practices. ', 1),
(26, 12, 'Our operations and maintenance procedures support zero harm', 'No', 'Yes, these procedures address SHE risks and are adhered to.', 'Yes, my team actively use, review and optimise procedures to ensure that controls are executed effectively.', 'Yes, the use and adherence to procedures are embedded as key behaviours to reduce SHE risks. ', 2),
(27, 12, 'We use our monitoring measures to ensure we timeously act on control effectiveness.', 'On an ad-hoc basis', 'Yes, we have a set of controls that we monitor daily.', 'Yes, our controls are owned and executed to pro-actively manage our SHE risks. ', 'Yes, we continuously aim to improve the effectiveness of controls to reduce SHE risks sustainably.', 3),
(28, 12, 'We identify and manage our PSCE and/or SHE critical equipment effectively.', 'No, not all critical equipment is identified or effectively managed.', 'Yes, adherence to maintenance strategies is monitored.', 'Yes, the list of PSCE and/or SHE critical equipment is regularly updated. Proactive maintenance strategies are implemented.', 'Yes, maintenance strategies are consistently reviewed based on changes to SHE risks or controls. ', 4),
(29, 13, 'We select and manage our suppliers and service providers based on prescribed legal and SHE requirements.', 'Not always', 'Yes, only approved service providers are used. Contracts specify SHE requirements and are monitored by contract owners', 'Yes, external parties are engaged prior to contracting to ensure understanding of the top SHE risks and critical controls.', 'Yes, two-way learning is taking place to improve SHE practices. All parties are actively engaged to drive zero harm. ', 1),
(30, 13, 'We understand and manage product safety.', 'Not always', 'Yes, we evaluate, registrate, transport and store procured or manufactured products to ensure SHE legal compliance.', 'Yes, and product risks are well understood and managed throughout the product life cycle. ', 'Yes, and plans are co-created with suppliers, service providers and customers to reduce SHE risks related to products. product safety industry trends are analysed and benchmarked.', 2),
(31, 13, 'We manage product transportation SHE risks.', 'No', 'Yes, product transportation legal and industry safety requirements are adhered with and monitored. ', 'Yes, and product transportation risk management plans are in place and are regularly reviewed and improved.', 'Yes, and the improvement of product transportation zero harm performance is a collaborative effort between all stakeholders.', 3),
(32, 13, 'We ensure that supply chain activities are executed safely.', 'We don’t always know', 'Yes, we manage the activities to ensure adherence to regulatory requirements.', 'Yes, and we manage the activities through a co-developed SHE risk management plan, integrated into operational systems, processes and procedures.', 'Yes, and we continuously focus on embedding risk reduction measures as the way of working.', 4),
(33, 14, 'We are confident that we report all SHE incidents ', 'No.', 'Yes.', 'Yes, we also report near misses. ', 'Yes, a continuous improvement culture supports the reporting of all incidents by all stakeholders.', 1),
(34, 14, 'Our incident investigations are done effectively.', 'The incident management process is not always followed.', 'We follow the SHE incident management process in the Group procedure.', 'There is a definite difference in focus and depth for the investigations of high severity incidents.', 'High potential severity incidents or near misses are investigated as a matter of priority.', 2),
(35, 14, 'We spend enough time to uncover the true root cause of incidents.', 'No.', 'Yes, we follow the RCA process diligently.', 'Yes, we dig deep into design and operating failures of our controls. We identify organisational, workplace and personal factors for control failures.', 'Yes, we also use the relevant Bow-tie scenario to analyse the control failures. ', 3),
(36, 14, 'We evaluate the effectiveness of the corrective and preventative actions from incident investigations.', 'No.', 'Yes.', 'Yes, we thoroughly analyse the actual against the intended results of the preventative and corrective actions. ', 'Yes, we benchmark against relevant incidents and the effectiveness of those actions. We also update the relevant Bow-ties after investigations.', 4),
(37, 14, 'We embed learnings from incidents effectively.', 'No.', 'We share the learnings as required by Group.', 'We customise learnings from incidents and implement it in our operations.', 'We actively track and audit the embedding of the learnings to ensure embedding.', 5),
(38, 15, 'We have defined SHE roles and responsibilities and established governance meetings', 'No, meetings are not held consistently and roles are sometimes unclear', 'Yes', 'Yes, our governance meetings follow a risk-based agenda and are chaired and managed by leaders', 'Yes, we know of upcoming changes and act appropriately well in advance of deadlines.', 1),
(39, 15, 'A process exists to ensure legislation and standards are communicated, understood and complied to.', 'No, we follow an informal process', 'Yes', 'Yes, and we incorporate changes in legislation and standards pro-actively into SHE processes and training.', 'Yes, we know of upcoming changes and act appropriately well in advance of deadlines.', 2),
(40, 15, 'We have a formal SHE document governance process in place.', 'No', 'Yes', 'Yes, and easily accessible in the OME', 'Yes, and fully integrated with the SHE management system and Group SHE document management system', 3),
(41, 15, 'We apply learnings from SHE assurance deviations.', 'Not always', 'Yes, we understand our recent audit findings.', 'Yes, assurance deviations are analysed, root causes identified and corrective and preventive actions are implemented.', 'Yes, we update all relevant inspections and logbooks to reflect the improvement actions, with specific focus on the improvement of critical control assurance deviations. ', 4),
(42, 15, 'We drive risk-based combined assurance.', 'No, mainly only through external (4th level) of assurance. ', 'Yes, internal and external audits are in place.', 'Yes, we focus especially on 1st level of assurance activities to ensure that we are more pro-active in addressing inefficiencies. ', 'Yes, our assurance activities are optimised across all levels of assurance to reduce the burden on the OME.', 5),
(43, 16, 'BT climate diagnostics are conducted regularly.', 'No BT diagnostics conducted.  Hope for the best and play by luck. ', 'BT diagnostics are conducted to analyse the SHE climate and inform leaders. ', 'Leaders request BT diagnostics pro-actively, even when SHE results are positive. Improvement plans are put in place, tracked and assurance on effectiveness is provided.', 'Leaders have a standard rhythm of when BT diagnostics are conducted in order to track effectiveness of improvement plans and ensure sustainable improvement.', 1),
(44, 16, 'Our team SHE climate is conducive to zero harm. ', 'Some individuals still perform work unsafely and try to hide incidents for fear of reprisal.', 'Leaders consistently manage the production balance for sustainable safe operations. \nNo work is done unless it is done safely.\n', 'Individuals are empowered to take personal accountability for SHE. Leaders create a climate of openness, care, trust and accountability.', 'Desired SHE behaviours are embedded into the culture of teams. This is evident in sustained SHE performance and behaviours.', 2),
(45, 16, 'Our leaders are visible and personally drive the journey to zero harm.', 'Leadership visible mostly during or after SHE incidents.', 'Leaders are visible as per planned site visits and during incident investigations. ', 'Leaders engage with their teams on a face-to-face basis about SHE matters. ', 'Leaders own and personally drive significant SHE issues immediately. ', 3),
(46, 16, 'The Life Saving Rules are implemented.', 'No', 'Yes', 'Yes, teams take ownership for the effective application of the LSR as seen in reduced high severity incidents.', 'Yes, we continuously review our LSRs and update them in anticipation of emerging SHE risk exposure. ', 4),
(47, 16, 'Our BBS programme is implemented. ', 'No', 'Yes, in a very basic way.', 'Yes, observations are analysed, barriers are removed and it results in improved behaviours and participation by our workforce.', 'Yes, our BBS programme is fully embedded, owned and driven by the workforce. It is an important part of creating a climate for zero harm. ', 5),
(48, 17, 'We identified job-specific SHE competencies based on risk exposure?', 'No, not based on risk exposure', 'Yes, we have included it in our training matrices, which also include mandatory SHE training requirements.', 'Yes, we also update SHE competencies based on the workplace risk profile. These are included in personal development plans and actively managed.', 'Yes, we update our SHE competencies in anticipation of emerging SHE risk trends or changes in the working environment. ', 1),
(49, 17, 'Our training content covers the following:', 'SHE training content is mostly outdated', 'It covers relevant legislative requirements', 'It also includes relevant SHE risks and controls and is updated based on learnings from incidents, assurance deviations and best practices.', 'We update our SHE training material in anticipation of emerging SHE risk trends or changes in the working environment.', 2),
(50, 17, 'We manage the effectiveness of our SHE training:', 'It is not reviewed at all or in a hap hazard way.', 'The effectiveness of SHE training interventions is reviewed based on theoretical “pass rate”, and any gaps are closed.', 'Managers monitor how acquired skills are applied and adapt SHE training interventions to ensure the specific learning outcome is met.', 'The embedding of SHE competences is evident in the reduction of repeat incidents and improved SHE results. ', 3),
(51, 17, 'We improve competency through coaching and mentoring', 'No', 'Yes, line managers oversee high risk tasks.', 'Yes, our coaches and mentors play a key role in on-the-job training to enable continuous improvement towards zero harm.', 'Yes, teams coach each other as part of a culture of continuous improvement towards zero harm. ', 4),
(52, 18, 'My team’s operational responsibilities reflect a focus on SHE.', 'No, not always', 'Yes, SHE forms a part of all job profiles and procedures.', 'Yes, SHE reflects in work instructions and are translated into individual performance plans.', 'Yes, operational responsibilities include SHE behaviour that are owned by the team who apply it in day-to-day activities. ', 1),
(53, 18, 'Our Operational and SHE structures are fully resourced', 'No', 'Yes, both our Operational and SHE structures.', 'Yes, we have succession plans in place of our critical SHE positions.', 'Yes, we continuously review and update our structures to mitigate risk exposure.', 2),
(54, 18, 'We always consider SHE competence and mindset in recruiting and selecting resources.', 'No, not always', 'Yes, we consider SHE competence in the recruitment process.', 'Yes, we also consider applicants’ personal mindset towards zero harm and possible future SHE requirements per job profile', 'Yes, gaps in individuals’ a SHE competence and mindset are proactively addressed through their personal development plans.', 3),
(55, 18, 'We hold individuals accountable for SHE performance.', 'No, we apply an inconsistent management process', 'Yes, we apply the HR performance management process.', 'Yes, individuals take ownership of their SHE performance', 'Yes, teams take ownership for SHE behaviour which is evident in SHE performance.', 4),
(56, 18, 'We adequately recognise SHE performance.', 'No, mainly production performance is recognised.', 'Yes, our recognition scheme includes SHE performance', 'Yes, teams recognise SHE performance and positive SHE behaviour.', 'Yes, we have positive reinforcement recognition schemes based on zero harm behaviour that enables a zero harm climate. ', 5),
(57, 19, 'Our SHE communication and engagement plans are in place and implemented', 'No, we communicate and engage on an ad-hoc basis', 'Yes, basic SHE engagement and communication plans are in place and executed mostly by the SHE function.', 'Yes, leaders take ownership of the plans and our stakeholders actively participate in engagement and communication opportunities.  ', 'Yes, our engagement and communication plans are continuously updated based on changes in the SHE risk profile, SHE risk exposure and critical control effectiveness.', 1),
(58, 19, 'We manage SHE-related changes which can impact our goal of zero harm.', 'Not in a structured way.', 'Yes, we update our Communications plan accordingly.', 'Yes, senior leaders implement measures to mitigate the impact of zero harm as part of an integrated change plan.', 'Yes, changes are implemented and managed through partnerships with key stakeholders. The change management approach is continuously improved.', 2),
(59, 19, 'We measure and track the effectiveness of our SHE engagement and change approaches.', 'No', 'Yes, we do spot-checks to determine effectiveness. ', 'Yes, we assess the effectiveness in a structured way through engagement surveys. Improvement actions are agreed with stakeholders. ', 'Effectiveness is continuously assessed through close relationship management of stakeholders. Stakeholders are keen ambassadors of zero harm.', 3),
(60, 21, 'We understand the gaps to our SHE results.', 'No not always', 'Yes, we follow the plan, do, review, improve cycle. ', 'Yes, a process is in place to monitor and improve SHE results and effectiveness of critical controls', 'Yes, teams own their SHE performance review and systems enable dynamic management of leading indicators to immediately address gaps. ', 1),
(61, 21, 'We conduct management reviews.', 'No not always', 'The suitability, adequacy and effectiveness of our SHE management system is formally reviewed.', 'Learnings from assurance deviations and incidents are used to proactively identify improvement areas for the our SHE approach.', 'Employees on all levels contribute to the improvement of our SHE approach.', 2),
(62, 21, 'We have a process in place to continuously improve our SHE practices.', 'No, only on an ad hoc basis or with a new programme', 'Yes, our improvement actions are always logged, discussed, and tracked to completion.', 'Yes, we specifically focus on reducing risk exposure and the improvement of control effectiveness. SHE meeting agendas include SHE improvement. ', 'Yes, my team also continuously benchmark against other businesses and focus on improving systems and enabling technologies.', 3),
(63, 21, 'We assess the impact of our improvement plans.', 'No', 'Yes, based on the SHE performance statistics.', 'Yes, we also actively track the elimination of repeat SHE incidents and risk exposure.', 'Yes, even once we have proven success we further plan, do, review and improve on the improvement plan to ensure that we achieve sustainable zero harm. ', 4),
(67, 22, 'We adhere to all relevant management standards.', 'No not all', 'Yes, we know what standards are relevant and align our performance requirements to enable adherence.   ', 'Yes, optimised SHE processes are driven by assigned owners and enable leaders to manage team-specific SHE risks effectively.', 'Yes, our integrated management systems enable continuous improvement of SHE performance.', 4),
(68, 8, 'Accountable leadership', 'Leaders are only visible during or after SHE incidents and create a SHE climate of fear and blame. The SHE function mainly takes ownership for SHE.', 'Leaders are visibly committed to zero harm. Leaders enable teams to fulfil their SHE responsibilities and lead by example.', 'Leaders inspire people, creates a SHE climate conducive to achieving zero harm and proactively address SHE performance through improved SHE practices. ', 'Leaders consistently set the tone for sustainable zero harm and genuinely care for their people. The systems and culture to enable zero harm prevail after the leader leaves the team. ', 1),
(69, 8, 'SHE event prevention', 'There is limited understanding of SHE risks and controls in teams. The culture is re-active.', 'SHE risks and related controls are identified, assessed, prioritised and communicated to teams to ensure legal compliance. ', 'Risk-based SHE practices are applied in teams. Risk controls are verified and assurance is given on the effectiveness of all critical controls. SHE activities are prioritised based on a thorough understanding of risk profile and exposure.', 'Integrated management of SHE risks across disciplines.  Learnings from control failures are implemented, checked for effectiveness and embedded. Controls are improved continuously to reduce risk.', 3),
(70, 20, 'We manage the capturing our SHE data to ensure data quality.', 'Informally. ', 'Yes, we capture data according to a procedure and the SHE team verifies data accuracy.', 'Yes, we have automated systems to manage data input quality.', 'Yes, we have automated systems that allow real-time capturing and reporting of data.', 1),
(71, 20, 'We report on SHE KPIs.', 'Haphazard reporting', 'Yes, reporting on lagging KPIs and legal compliance using formal systems.', 'Yes, comprehensive reporting enables analysis of risk-based leading and lagging KPIs, using standardised systems.', 'Yes, automated, integrated dashboards enable dynamic management of risk-based leading KPIs for proactive management action.', 2),
(72, 20, 'We review and benchmark our SHE results at pre-defined intervals.', 'Only when we are asked', 'Yes, lagging indicator results are analysed and reviewed to identify improvement opportunities.', 'Yes, we focus on performance gaps for leading indicators and identify root causes and improvement opportunities. ', 'Yes, we consolidate all identified gaps, prioritise based on risk exposure and actively provide resources to close the gaps. ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `risk`
--

CREATE TABLE `risk` (
  `id` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `parent_company_id` varchar(200) DEFAULT NULL,
  `workforce_count` int(11) DEFAULT NULL,
  `team_performing_risk` varchar(500) DEFAULT NULL,
  `date_risk_assessment` date DEFAULT NULL,
  `geo_area` text NOT NULL,
  `process_step` text NOT NULL,
  `external_factor` text NOT NULL,
  `hazard_desc` int(11) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `risk_ownership` varchar(500) DEFAULT NULL,
  `cat` int(11) NOT NULL,
  `risk_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `conseq` int(11) NOT NULL,
  `inherent_risk_desc` text,
  `exposure_count` int(11) NOT NULL,
  `exposure_freq` int(11) NOT NULL,
  `exposure_duration` int(11) NOT NULL,
  `community_ecological_exposure` int(11) DEFAULT NULL,
  `product_exposure` int(11) DEFAULT NULL,
  `customer_exposure` int(11) DEFAULT NULL,
  `fleet_exposure_frequency` int(11) DEFAULT NULL,
  `inherent_route_risk` int(11) DEFAULT NULL,
  `political_risk` int(11) DEFAULT NULL,
  `economic_risk` int(11) DEFAULT NULL,
  `social_risk` int(11) DEFAULT NULL,
  `asset_exposure` int(11) DEFAULT NULL,
  `external_security_risk` int(11) DEFAULT NULL,
  `traffic_volumes` int(11) DEFAULT NULL,
  `road_conditions` int(11) DEFAULT NULL,
  `area_security` int(11) DEFAULT NULL,
  `controls_prevent` text NOT NULL,
  `controls_corrective` text NOT NULL,
  `historic_conseq` int(11) NOT NULL,
  `historic_desc` text NOT NULL,
  `historic_freq` int(11) NOT NULL,
  `management_discretion_consequence` int(11) DEFAULT NULL,
  `management_discretion_desc` text,
  `management_discretion_frequency` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk`
--

INSERT INTO `risk` (`id`, `company`, `parent_company_id`, `workforce_count`, `team_performing_risk`, `date_risk_assessment`, `geo_area`, `process_step`, `external_factor`, `hazard_desc`, `owner`, `risk_ownership`, `cat`, `risk_desc`, `type`, `conseq`, `inherent_risk_desc`, `exposure_count`, `exposure_freq`, `exposure_duration`, `community_ecological_exposure`, `product_exposure`, `customer_exposure`, `fleet_exposure_frequency`, `inherent_route_risk`, `political_risk`, `economic_risk`, `social_risk`, `asset_exposure`, `external_security_risk`, `traffic_volumes`, `road_conditions`, `area_security`, `controls_prevent`, `controls_corrective`, `historic_conseq`, `historic_desc`, `historic_freq`, `management_discretion_consequence`, `management_discretion_desc`, `management_discretion_frequency`) VALUES
(1, 2, 'sadda', 32, 'qwe', '2019-12-28', 'qweqwe', 'qweq', 'qweqwe', 6, 222, 'qwweqwe', 4, 'qweqwe', 1, 2, 'qwe', 4, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"1\"]', '[\"1\"]', 5, 'qweqwe', 1, 5, 'qweq', 4),
(2, 4, '2', 40, 'sdasd', '2019-12-09', '23123', 'first', 'Added by Rahul', 5, 222, 'asf', 4, 'test', 2, 3, 'test', 4, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"3\"]', '[\"3\"]', 4, 'surat\nsurat', 3, 2, 'df', 2),
(3, 1, '2', 40, 'wefwef', '2019-12-31', 'wefwef', 'wefwef', 'wefwf', 6, 201, 'wefwef', 5, 'wefwefw', 1, 3, 'wefwef', 5, 4, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"2\"]', '[\"1\",\"3\"]', 5, 'wefwfe', 4, 5, 'asfasf', 5);

-- --------------------------------------------------------

--
-- Table structure for table `risk_cat`
--

CREATE TABLE `risk_cat` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_cat`
--

INSERT INTO `risk_cat` (`id`, `name`) VALUES
(1, 'Confined spaces'),
(2, 'Exposure to hazardous chemicals'),
(3, 'Loss of containment of chemicals'),
(4, 'Substandard Quality'),
(5, 'Transportation of chemicals'),
(6, 'Working at heights');

-- --------------------------------------------------------

--
-- Table structure for table `risk_company`
--

CREATE TABLE `risk_company` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `total_workforce` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_company`
--

INSERT INTO `risk_company` (`id`, `name`, `parent`, `total_workforce`) VALUES
(1, 'AEL Nitrate', 2, 40),
(2, 'AECI', NULL, NULL),
(3, 'AEL', NULL, NULL),
(4, 'Acacia', 2, NULL),
(5, 'Chem Systems', 2, NULL),
(6, 'Chemfit', 2, NULL),
(7, 'Chemical Initiatives', 2, NULL),
(8, 'Crest Chemicals', 2, NULL),
(9, 'Experse', 2, NULL),
(10, 'ImproChem', 2, NULL),
(11, 'Industrial Oleochemical Products', 2, NULL),
(12, 'Lake Foods', 2, NULL),
(13, 'Much Asphalt', 2, NULL),
(14, 'Nulandis', 2, NULL),
(15, 'SANS Technical Fibers', 2, NULL),
(16, 'Schirm', 2, NULL),
(17, 'SCP', 2, NULL),
(18, 'Senmin', 2, NULL),
(19, 'Specialty Minerals', 2, NULL),
(20, 'SA PREMIX (BURGERSDORP)', 6, NULL),
(21, 'CI Chloorkop', 7, NULL),
(22, 'Acacia Operations Services', 4, NULL),
(23, 'Acacia Real Estate', 4, NULL),
(24, 'AEL Nitrate', 3, NULL),
(25, 'AEL ISAP', 3, 40),
(26, 'Waltloo Production', 18, 38),
(27, 'PAM Plant', 18, 40),
(28, 'Senmin - Supply Chain', 18, 21),
(29, 'Crest Durban', 8, NULL),
(30, 'Crest Johannesburg', 8, 96),
(31, 'Crest Cape Town', 8, 18),
(32, 'Xanthate Liquid Plant', 18, 26),
(33, 'Genchem', 18, 26),
(34, 'Senmin Mining', 18, 40),
(35, 'Senmin Mining', 18, 40),
(36, 'Xanthate Pellet Plant', 18, 40);

-- --------------------------------------------------------

--
-- Table structure for table `risk_conseq_cat`
--

CREATE TABLE `risk_conseq_cat` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_conseq_cat`
--

INSERT INTO `risk_conseq_cat` (`id`, `name`) VALUES
(1, 'Minor'),
(2, 'Moderate'),
(3, 'Serious'),
(4, 'Major'),
(5, 'Severe');

-- --------------------------------------------------------

--
-- Table structure for table `risk_conseq_cat_desc`
--

CREATE TABLE `risk_conseq_cat_desc` (
  `id` int(11) NOT NULL,
  `conseq_cat` int(11) NOT NULL,
  `conseq_type` int(11) NOT NULL,
  `conseq_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_conseq_cat_desc`
--

INSERT INTO `risk_conseq_cat_desc` (`id`, `conseq_cat`, `conseq_type`, `conseq_desc`) VALUES
(1, 5, 1, 'Fatality or multiple fatalities'),
(2, 5, 2, 'Significant process safety incident resulting in either a fatality, multiple serious hospitalizations and off-site impact, community shelter in place.'),
(3, 5, 3, 'Fatality;  Any incident reportable to the relevant authorities; Any incident likely to involve adverse media attention.'),
(4, 5, 4, 'Irreversible long term environmental harm Reportable to the relevant authorities and involves the serving of a contravention notice Severe community outcry, the incident will involve significant adverse media attention.'),
(5, 5, 5, 'Loss of customer. Total loss of operations at large sized business                                                               Product or service out of specification and includes at least one of the following criteria:\r\n<ul>\r\n<li>100% of the product to be scrapped</li>\r\n<li>Reaction from the press</li>\r\n<li>Legal process initiated against the organisation</li>\r\n<li>Product liability insurance claim</li>\r\n<li>Negative impact on international or local market</li>\r\n<li>&#62; 25% loss in annual revenue.</li>  \r\n</ul>'),
(6, 5, 6, 'A Product Transportation incident resulting in any of the following:\r\n<ul>\r\n<li>Damage to property not limited to AECI property, where the operation has completely stopped as a result of the incident</li>\r\n<li>Significant environmental impact (classified as major under environmental incident classification)</li>                        <li>Total load loss of 50% - 100%</li>\r\n<li>Incident attracts adverse national and international media attention with Company name mentioned</li>\r\n<li>Full route closure lasting >24 hours</li>\r\n<li>Any community evacuation or sheltering</li>\r\n<li>Multiple fatality to members of the public</li>\r\n</ul>'),
(7, 5, 7, 'A security incident or criminal activity resulting in any of the following:\r\n<ul>\r\n<li>Multiple Fatalities</li>\r\n<li>Production stoppage at primary manufacturing facility</li>\r\n<li>Legal action resulting in restricted operation due to security mismanagement</li>\r\n<li>Product loss (of material that pose a threat to public e.g. Explosives)</li>\r\n<li>Land / property invasion (Greater than 10)</li>\r\n<li>Kidnapping</li>\r\n</ul>'),
(8, 4, 1, 'Loss of limb or part thereof  Unconsciousness                  Permanent Physical defect or     multiple Lost Workday Injuries requiring hospitalisation or a Life altering injury   '),
(9, 4, 2, 'A major process safety incident resulting in  multiple serious hospitalizations or with off-site impact, community shelter in place. (Refer to API 754 - Tier 1 definition)'),
(10, 4, 3, 'Irreversible, acute  to one or more individuals due to uncontrolled exposure to toxic and asphyxiate substances. Unconsciousness; permanent physical defect, arising from an occupational illness;'),
(11, 4, 4, 'An incident that has caused disastrous environmental impact with long term effect, requiring major remediation. The incident may occur on or off site limits, with impacts occurring within and/or outside the boundary of the site.*Reportable to the relevant authorities and involves the serving of a contravention notice;  OR Major community outcry, the incident will involve significant adverse media attention.'),
(12, 4, 5, 'Loss of customer. Total loss of operations at small sized business                                                                  Product or service out of specification and includes at least one of the following criteria:\r\n100% of the product to be scrapped;\r\n* Reaction from the press;\r\n* Legal process initiated against the organisation;\r\n* Product liability insurance claim;\r\n* Negative impact on international or local market;\r\n* > 25% loss in annual revenue.  '),
(13, 4, 6, 'A Product Transportation incident resulting in any of the following:\r\n*Damage to property not limited to AECI property, where the operation has completely stopped as a result of the incident;\r\n* Significant environmental impact (classified as major under environmental incident classification);                                     *Total load loss of 50% - 100%;\r\n*Incident attracts adverse national and international media attention with Company name mentioned;\r\n*Full route closure lasting >24 hours\r\n*Any community evacuation or sheltering                                            *Single fatality to members of the public'),
(14, 4, 7, 'A security incident or criminal activity resulting in any of the following:\r\n• Fatality\r\n• Production stoppage at primary manufacturing facility\r\n• Legal action resulting in restricted operation due to security mismanagement\r\n• Product loss (of material that pose a threat to public e.g. Explosives)\r\n• Land / property invasion (Greater than 10)\r\n• Kidnapping'),
(15, 3, 1, 'Recordable injury (RLTI)                  Lost workday case'),
(16, 3, 2, 'A process safety incident resulting in either of the following:\r\n* Lost workday case; OR \r\n* Direct damage costs from the incident or clean up necessary to avoid/remediate environmental damage equal to or greater than the equivalent of USD 2 500; OR \r\n* Shelter in place (emergency assembly place) or evacuation, on or off site; OR \r\n* Threshold Release quantity which exceeds thresholds specified in Table. (See API 754 - Tier 2 definition)'),
(17, 3, 3, 'Irreversible, chronic and disabling occupational illnesses.\r\nExposure to confirmed human carcinogens, resulting in diagnoses.'),
(18, 3, 4, 'An incident that has caused serious environmental impact, with medium-term effect, requiring significant remediation.  The incident may occur on or off site limits, with impacts occurring within and/or outside the boundary of the site portable to the relevant authorities;        *the incident may involve the serving of a contravention notice or similar directive by the regulatory authorities'),
(19, 3, 5, '\"Customer complaint Short term / temporary interruptions at any business Product or service does not meet the required specification and at least one of the following criteria are met:\r\n* Product recall is initiated \r\n* > 50% of the batch of product requires destruction;\r\n* Rework of the non-conforming product is not possible;\r\n* Warranty claim against company\r\n* More than one external customer complaint filed for the same product or service and the same failure mode\r\n* Serious damage to reputation;\r\n* 5%- 25% loss in annual revenue\"'),
(20, 3, 6, '\"A Product Transportation incident resulting in any of the following:\r\n*Damage not limited to AECI property whereby significant work time has been lost >4 Hours;\r\n*Significant environmental impact (classified as serious under environmental incident classification);\r\n*Moderate load loss 33%-50%;\r\n*Full route closure lasting <6 hours;\r\n*Incident attract local or social media attention;             *Serious injury to members of the public;                                        *Driver fatality.\"'),
(21, 3, 7, 'A security incident or criminal activity resulting in any of the following:\r\n• Theft of Intellectual Property\r\n• Product tampering\r\n• Assault / robbery on company premises\r\n• Violent industrial action\r\n• Industrial Sabotage\r\n• Industrial Espionage'),
(22, 2, 1, 'Recordable non-lost time injury (RNLTI)'),
(23, 2, 2, 'A process safety incident resulting in:                                                               * Non-lost time injury;  or                                                         * A financial loss between $2 500 and $1000; and                                                           * Release of hazardous material below threshold quantities.'),
(24, 2, 3, 'Irreversible, chronic and potentially disabling occupational illnesses.'),
(25, 2, 4, 'An incident that has caused moderate, reversible environmental impact with short term effect, requiring moderate remediation.  The incident may occur on or off site limits with impacts occurring within and/or outside the boundary of the site'),
(26, 2, 5, 'Customer complaint – No interruption to business   Product or service does not meet the required specification and at least one of the following criteria are met:\r\n* Concession (final product) OR deviation (semi-product/raw material) required;\r\n* Rework of the non-conforming product is possible at considerable cost OR \r\n* The re-grading of product for alternate use is possible;\r\n* One external customer notices the defect;\r\n* One external customer complaint is filed\r\n* 2% - 4% loss in annual revenue\r\n'),
(27, 2, 6, 'An incident resulting in any of the following:\r\n*Damage not limited to AECI property where work time has been lost of <4 hours\r\n*Environmental impact (classified as moderate under environmental incident classification)\r\n*Partial load loss of 1%-33% off site.\r\n*External customer aware of the incident \r\n*Partial road closure'),
(28, 2, 7, 'A security incident or criminal activity resulting in any of the following:\r\n• Industrial action\r\n• Legislative sanction for non-compliance (e.g. PSIRA registration)\r\n• Arson\r\n• Firearm discharge'),
(29, 1, 1, 'First Aid injury (FAI)'),
(30, 1, 2, 'A process safety incident resulting in:                                                               * First aid case injury;  or                                                         * A financial loss below $1000; and                                                           * Release of hazardous material below threshold quantities.'),
(31, 1, 3, 'Minor illness case (MIC):Reversible, chronic, but non-disabling impacts due to exposure\r\n'),
(32, 1, 4, 'An incident that has caused minor, reversible environmental impact, requiring minor remediation, and is contained within site limits                                         *Not reportable to the relevant authorities;'),
(33, 1, 5, 'Non- conforming product – identified within the organization prior to leaving to the customer. Product or service does not meet  the required specification and at least one of the following criteria are met:\r\n* Concession (final product) OR Deviation (semi-product/raw material) required;\r\n* Rework to correct the non-conformance is possible at minimal cost;\r\n* No external customer complaint is filed - Quality Incident identified internally;\r\n* No loss in annual revenue'),
(34, 1, 6, '*Minor damage not limited to AECI property where operations resume as normal after incident \r\n*Minor product loss on site;\r\n*Environmental impact (classified as minor under environmental incident classification)\r\n*Affects internal customer, external customers unaware of the incident'),
(35, 1, 7, 'A security incident or criminal activity resulting in any of the following:\r\n• Malicious damage to property / vandalism\r\n• >10 Metal related thefts in control area per month.\r\n• Single theft greater than ZAR100k\r\n• Intimidation of employees resulting in production loss\r\n• Security infrastructure failure greater than ZAR300K');

-- --------------------------------------------------------

--
-- Table structure for table `risk_conseq_type`
--

CREATE TABLE `risk_conseq_type` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_conseq_type`
--

INSERT INTO `risk_conseq_type` (`id`, `name`) VALUES
(1, 'Occupational Safety'),
(2, 'Process Safety'),
(3, 'Occupational Health'),
(4, 'Environment'),
(5, 'Quality'),
(6, 'Product Transportation'),
(7, 'Security'),
(8, 'Financial Loss');

-- --------------------------------------------------------

--
-- Table structure for table `risk_controls`
--

CREATE TABLE `risk_controls` (
  `id` int(11) NOT NULL,
  `hazard_desc` text NOT NULL,
  `name` text NOT NULL,
  `threshold` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_controls`
--

INSERT INTO `risk_controls` (`id`, `hazard_desc`, `name`, `threshold`) VALUES
(1, '1', 'Cylinder capacity 100kg', 10),
(2, '1', 'Gas Detector', 5),
(3, '1', 'Qualified Person authorized', 0),
(4, '1', 'Gas masks', 5);

-- --------------------------------------------------------

--
-- Table structure for table `risk_control_check`
--

CREATE TABLE `risk_control_check` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `hazard` int(11) NOT NULL,
  `control` int(11) NOT NULL,
  `checked` tinyint(1) NOT NULL,
  `company` int(11) NOT NULL,
  `risk` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_control_check`
--

INSERT INTO `risk_control_check` (`id`, `user`, `hazard`, `control`, `checked`, `company`, `risk`, `date`) VALUES
(36, 1, 1, 1, 1, 6, 24, '2019-08-28'),
(37, 1, 1, 2, 1, 6, 24, '2019-08-28'),
(38, 1, 1, 3, 1, 6, 24, '2019-08-28'),
(39, 1, 1, 4, 0, 6, 24, '2019-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `risk_control_hazard`
--

CREATE TABLE `risk_control_hazard` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_control_hazard`
--

INSERT INTO `risk_control_hazard` (`id`, `name`) VALUES
(1, 'Handling of Methyl Bromide cylinders'),
(2, 'Storage of Methyl Bromide cylinders'),
(3, 'Motor Vehicle Driving'),
(4, 'Hazardous chemicals in transport'),
(5, 'Working at heights on top of tanker / trucks'),
(6, 'Caustic in storage and process'),
(7, 'CNG in storage and process'),
(8, 'Ammonia in a storage tank'),
(9, 'Working in a confined space');

-- --------------------------------------------------------

--
-- Table structure for table `risk_event_exposure_duration`
--

CREATE TABLE `risk_event_exposure_duration` (
  `id` int(11) NOT NULL,
  `duration` text NOT NULL,
  `multiplier` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_event_exposure_duration`
--

INSERT INTO `risk_event_exposure_duration` (`id`, `duration`, `multiplier`) VALUES
(1, '1 hour', 11),
(2, '2 hours', 22),
(3, '3 hours', 33),
(4, '4 hours', 44),
(5, '5 hours', 56),
(6, '6 hours', 67),
(7, '7 hours', 78),
(8, '8 hours', 89),
(9, 'Continuous', 100);

-- --------------------------------------------------------

--
-- Table structure for table `risk_event_freq`
--

CREATE TABLE `risk_event_freq` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_event_freq`
--

INSERT INTO `risk_event_freq` (`id`, `name`, `level`) VALUES
(1, 'Annual', 1),
(2, 'Monthly', 2),
(3, 'Weekly', 3),
(4, 'Shift', 4),
(5, 'Continuous', 5);

-- --------------------------------------------------------

--
-- Table structure for table `risk_event_geo_area`
--

CREATE TABLE `risk_event_geo_area` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risk_event_hazard`
--

CREATE TABLE `risk_event_hazard` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risk_event_historic_freq`
--

CREATE TABLE `risk_event_historic_freq` (
  `id` int(11) NOT NULL,
  `frequency` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_event_historic_freq`
--

INSERT INTO `risk_event_historic_freq` (`id`, `frequency`, `level`) VALUES
(1, '20 yearly', 1),
(2, '5 yearly', 2),
(3, 'Yearly', 3),
(4, 'Monthly', 4),
(5, 'Weekly', 5);

-- --------------------------------------------------------

--
-- Table structure for table `risk_event_step`
--

CREATE TABLE `risk_event_step` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risk_exposure_meta`
--

CREATE TABLE `risk_exposure_meta` (
  `id` int(12) NOT NULL,
  `risk_exposure_type` int(11) NOT NULL,
  `risk_conseq_type` int(11) NOT NULL,
  `meta_name` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text NOT NULL COMMENT 'it will contain JSON data',
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_exposure_meta`
--

INSERT INTO `risk_exposure_meta` (`id`, `risk_exposure_type`, `risk_conseq_type`, `meta_name`, `meta_key`, `meta_value`, `parent`) VALUES
(1, 1, 1, 'Exposure count', 'exposure_count', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"10\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"25\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"50\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"100\"    \r\n}]\r\n', NULL),
(2, 3, 1, 'Exposure frequency', 'exposure_freq', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"Annual\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"Monthly\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"Weekly\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"Shift\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Continuous\"    \r\n}]\r\n', NULL),
(3, 4, 1, 'Exposure duration', 'exposure_duration', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"5 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"6 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"7 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"8 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"9 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Continous\"    \r\n}]\r\n', NULL),
(4, 1, 2, 'Exposure count', 'exposure_count', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"10\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"25\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"50\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"100\"    \r\n}]', NULL),
(5, 3, 2, 'Exposure frequency', 'exposure_freq', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"Annual\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"Monthly\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"Weekly\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"Shift\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Continuous\"    \r\n}]\r\n', NULL),
(6, 4, 2, 'Exposure duration', 'exposure_duration', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"5 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"6 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"7 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"8 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"9 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Continous\"    \r\n}]', NULL),
(7, 1, 3, 'Exposure count', 'exposure_count', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"10\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"25\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"50\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"100\"    \r\n}]', NULL),
(8, 3, 3, 'Exposure frequency', 'exposure_freq', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"Annual\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"Monthly\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"Weekly\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"Shift\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Continuous\"    \r\n}]', NULL),
(9, 4, 3, 'Exposure duration', 'exposure_duration', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"5 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"6 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"7 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"8 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"9 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Continous\"    \r\n}]', NULL),
(10, 2, 4, 'Community/ecological exposure', 'community_ecological_exposure', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"No/little community exposure\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"Limited to immediate neighbouring site community exposure\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"Regional / provincial exposure\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"National exposure (across provincial borders)\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Global exposure (across country borders) \"    \r\n}]', NULL),
(11, 3, 4, 'Exposure frequency', 'exposure_freq', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"Annual\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"Quaterly\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"Monthly\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"Weekly\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Shift/Continuous\"    \r\n}]', NULL),
(12, 4, 4, 'Exposure duration', 'exposure_duration', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"5 hours\"    \r\n},\r\n{\r\n    \"option_id\":\"6\",\r\n    \"option_value\": \"6 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"7\",\r\n    \"option_value\": \"7 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"8\",\r\n    \"option_value\": \"8 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"9\",\r\n    \"option_value\": \"9 hours\"    \r\n},\r\n{\r\n    \"option_id\": \"10\",\r\n    \"option_value\": \"Continous\"    \r\n}]', NULL),
(13, 2, 5, 'Product exposure', 'product_exposure', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"<10%\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"20%\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"40%\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"60%\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \">80%\"    \r\n}]', NULL),
(14, 2, 6, 'Community/ecological exposure', 'community_ecological_exposure', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"No/little community exposure\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"Limited to immediate neighbouring site community exposure\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"Regional / provincial exposure\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"National exposure (across provincial borders)\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Global exposure (across country borders) \"    \r\n}]', NULL),
(15, 3, 5, 'Customer exposure', 'customer_exposure', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"<10%\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"20%\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"40%\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"60%\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \">80%\"    \r\n}]', NULL),
(16, 3, 6, 'Fleet exposure frequency', 'fleet_exposure_frequency', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"<10%\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"20%\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"40%\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"60%\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \">80%\"    \r\n}]', NULL),
(17, 5, 6, 'Inherent route risk score', 'inherent_route_risk', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"3\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"5\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"7\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"9\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"12\"    \r\n}]', NULL),
(19, 1, 7, 'Exposure count', 'exposure_count', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"0\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"10\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"100\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"500\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"1000\"    \r\n}]', NULL),
(20, 3, 7, 'Asset exposure', 'asset_exposure', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"Very low or no site dependence on asset\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"Minor site dependence on asset\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"Some site dependence (some product streams affected)\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"Major site dependence on asset (major product streams affected)\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"Total site dependence on asset (total shutdown)\"    \r\n}]', NULL),
(21, 4, 7, 'External security risk score ', 'external_security_risk', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"3.0\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"4.0\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"5.0\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"6.0\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"7.0\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"8.0\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"9.0\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"10.0\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"11.0\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"12.0\"    \r\n}]', NULL),
(23, 2, 8, 'Revenue exposure', 'revenue_exposure', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"<10%\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"20%\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"40%\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"60%\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \">80%\"    \r\n}]', NULL),
(24, 3, 8, 'Customer exposure', 'customer_exposure', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"<10%\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"20%\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"40%\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"60%\"    \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \">80%\"    \r\n}]', NULL),
(25, 7, 6, 'Political Risk', 'political_risk', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4\"    \r\n}]', 18),
(26, 7, 6, 'Economic Risk', 'economic_risk', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4\"    \r\n}]', 18),
(27, 7, 6, 'Social Risk', 'social_risk', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4\"    \r\n}]', 18),
(28, 6, 7, 'Traffic Volumes', 'traffic_volumes', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4\"    \r\n}]', 22),
(29, 6, 7, 'Road Conditions', 'road_conditions', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4\"    \r\n}]', 22),
(30, 6, 7, 'Area Security', 'area_security', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"2\"    \r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"3\"    \r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"4\"    \r\n}]', 22);

-- --------------------------------------------------------

--
-- Table structure for table `risk_exposure_type`
--

CREATE TABLE `risk_exposure_type` (
  `id` int(12) NOT NULL,
  `type` varchar(200) NOT NULL,
  `exposure_comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_exposure_type`
--

INSERT INTO `risk_exposure_type` (`id`, `type`, `exposure_comments`) VALUES
(1, 'Exposure 1', 'Define the number of people exposed (own employees + contractors). Consider this field in conjunction with Exposure frequency. E.g. \"10\" people exposed \"Per Shift\"\r\n'),
(2, 'Exposure 2', 'Define how large is the community\'s and/or ecosystem\'s exposure during the worst plausible consequence. E.g. \"Regional / provincial\" if a major water supply is contaminated\r\n'),
(3, 'Exposure 3a', 'Define the frequency at which exposure takes place. E.g. \"Shift\" general maintenance work\r\n'),
(4, 'Exposure 3b', 'Define the duration within the exposure frequency during which exposure takes place. E.g. \"4 hours\" for a portion of the selected frequency of per \"Shift\"\r\n'),
(5, 'Exposure 4', 'Define the three inherent route risk factors. 1) Traffic volumes refer to how much traffic is encountered en route, 2) Road conditions refer to factors such as pot holes, mist, narrow lanes etc, 3) Area Security refer to danger from crime or community unrest. The evaluation scale starts at 1 (low risk) to 4 (extreme risk).\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `risk_incidents`
--

CREATE TABLE `risk_incidents` (
  `id` int(11) NOT NULL,
  `risk` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` int(11) NOT NULL,
  `incident_desc` text NOT NULL,
  `failed_controls` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risk_table`
--

CREATE TABLE `risk_table` (
  `level` int(11) NOT NULL,
  `not_likely` int(11) NOT NULL,
  `slight` int(11) NOT NULL,
  `likely` int(11) NOT NULL,
  `highly_likely` int(11) NOT NULL,
  `expected` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_table`
--

INSERT INTO `risk_table` (`level`, `not_likely`, `slight`, `likely`, `highly_likely`, `expected`) VALUES
(1, 1, 2, 3, 4, 7),
(2, 5, 6, 8, 9, 10),
(3, 11, 12, 15, 16, 17),
(4, 13, 14, 19, 21, 23),
(5, 18, 20, 22, 24, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `com_ci_sessions`
--
ALTER TABLE `com_ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `com_company_colours`
--
ALTER TABLE `com_company_colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_company_details`
--
ALTER TABLE `com_company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_email_template`
--
ALTER TABLE `com_email_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `com_invite_attendees`
--
ALTER TABLE `com_invite_attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_manager_notify`
--
ALTER TABLE `com_manager_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_user`
--
ALTER TABLE `com_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_user_roles`
--
ALTER TABLE `com_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_actions_measure`
--
ALTER TABLE `mat_actions_measure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_actions_milestone`
--
ALTER TABLE `mat_actions_milestone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_actions_results`
--
ALTER TABLE `mat_actions_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_actions_risks`
--
ALTER TABLE `mat_actions_risks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_actions_victory`
--
ALTER TABLE `mat_actions_victory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_answer_complete`
--
ALTER TABLE `mat_answer_complete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_answer_desired`
--
ALTER TABLE `mat_answer_desired`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_answer_mc`
--
ALTER TABLE `mat_answer_mc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_answer_proof`
--
ALTER TABLE `mat_answer_proof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_category`
--
ALTER TABLE `mat_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_elements`
--
ALTER TABLE `mat_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_performance`
--
ALTER TABLE `mat_performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_performance_areas`
--
ALTER TABLE `mat_performance_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_performance_desired`
--
ALTER TABLE `mat_performance_desired`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_performance_mc`
--
ALTER TABLE `mat_performance_mc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_proofs`
--
ALTER TABLE `mat_proofs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_proof_types`
--
ALTER TABLE `mat_proof_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mat_questions`
--
ALTER TABLE `mat_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk`
--
ALTER TABLE `risk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_cat`
--
ALTER TABLE `risk_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_company`
--
ALTER TABLE `risk_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_conseq_cat`
--
ALTER TABLE `risk_conseq_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_conseq_cat_desc`
--
ALTER TABLE `risk_conseq_cat_desc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conseq_cat` (`conseq_cat`);

--
-- Indexes for table `risk_conseq_type`
--
ALTER TABLE `risk_conseq_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_controls`
--
ALTER TABLE `risk_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_control_check`
--
ALTER TABLE `risk_control_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_control_hazard`
--
ALTER TABLE `risk_control_hazard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_event_exposure_duration`
--
ALTER TABLE `risk_event_exposure_duration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_event_freq`
--
ALTER TABLE `risk_event_freq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_event_hazard`
--
ALTER TABLE `risk_event_hazard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_event_historic_freq`
--
ALTER TABLE `risk_event_historic_freq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_event_step`
--
ALTER TABLE `risk_event_step`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_exposure_meta`
--
ALTER TABLE `risk_exposure_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_exposure_type`
--
ALTER TABLE `risk_exposure_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_incidents`
--
ALTER TABLE `risk_incidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_table`
--
ALTER TABLE `risk_table`
  ADD PRIMARY KEY (`level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `com_company_colours`
--
ALTER TABLE `com_company_colours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `com_company_details`
--
ALTER TABLE `com_company_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `com_email_template`
--
ALTER TABLE `com_email_template`
  MODIFY `template_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `com_invite_attendees`
--
ALTER TABLE `com_invite_attendees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `com_manager_notify`
--
ALTER TABLE `com_manager_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `com_user`
--
ALTER TABLE `com_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT for table `com_user_roles`
--
ALTER TABLE `com_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mat_actions_measure`
--
ALTER TABLE `mat_actions_measure`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mat_actions_milestone`
--
ALTER TABLE `mat_actions_milestone`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mat_actions_results`
--
ALTER TABLE `mat_actions_results`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mat_actions_risks`
--
ALTER TABLE `mat_actions_risks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mat_actions_victory`
--
ALTER TABLE `mat_actions_victory`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mat_answer_complete`
--
ALTER TABLE `mat_answer_complete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `mat_answer_desired`
--
ALTER TABLE `mat_answer_desired`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `mat_answer_mc`
--
ALTER TABLE `mat_answer_mc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `mat_answer_proof`
--
ALTER TABLE `mat_answer_proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `mat_category`
--
ALTER TABLE `mat_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mat_elements`
--
ALTER TABLE `mat_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `mat_performance`
--
ALTER TABLE `mat_performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mat_performance_areas`
--
ALTER TABLE `mat_performance_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mat_performance_desired`
--
ALTER TABLE `mat_performance_desired`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mat_performance_mc`
--
ALTER TABLE `mat_performance_mc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `mat_proofs`
--
ALTER TABLE `mat_proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `mat_proof_types`
--
ALTER TABLE `mat_proof_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mat_questions`
--
ALTER TABLE `mat_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `risk`
--
ALTER TABLE `risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `risk_cat`
--
ALTER TABLE `risk_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `risk_company`
--
ALTER TABLE `risk_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `risk_conseq_cat`
--
ALTER TABLE `risk_conseq_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `risk_conseq_cat_desc`
--
ALTER TABLE `risk_conseq_cat_desc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `risk_conseq_type`
--
ALTER TABLE `risk_conseq_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `risk_controls`
--
ALTER TABLE `risk_controls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `risk_control_check`
--
ALTER TABLE `risk_control_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `risk_control_hazard`
--
ALTER TABLE `risk_control_hazard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `risk_event_exposure_duration`
--
ALTER TABLE `risk_event_exposure_duration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `risk_event_freq`
--
ALTER TABLE `risk_event_freq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `risk_event_hazard`
--
ALTER TABLE `risk_event_hazard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `risk_event_historic_freq`
--
ALTER TABLE `risk_event_historic_freq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `risk_event_step`
--
ALTER TABLE `risk_event_step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `risk_exposure_meta`
--
ALTER TABLE `risk_exposure_meta`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `risk_exposure_type`
--
ALTER TABLE `risk_exposure_type`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `risk_incidents`
--
ALTER TABLE `risk_incidents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `fnRemoveToken` ON SCHEDULE EVERY 10 SECOND STARTS '2019-09-20 00:00:00' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'It will work for the token removal' DO DELETE FROM ci_sessions where user_id= 35$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
