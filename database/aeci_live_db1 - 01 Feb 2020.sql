-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: sql11.cpt2.host-h.net
-- Generation Time: Jan 31, 2020 at 01:25 PM
-- Server version: 10.1.43-MariaDB-1~jessie
-- PHP Version: 5.6.40-0+deb8u8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aeci_live_db1`
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
('9175832f321e0ac6', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwMDcxMjcxLCJleHAiOjE1ODAwODkyNzF9.pFu5nliW0HASQnld3kAX8okintI9sDFBH6jvvbA3008', '::1', 0, ''),
('6be8ff7234a39289', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwMTA0NTU0LCJleHAiOjE1ODAxMjI1NTR9.QUPVP66dRQakeYzMBJpTssKQgozPg8HGhvm9H--K1kc', '118.82.195.135', 0, ''),
('c3c4d02834999337', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwMTEzMzU2LCJleHAiOjE1ODAxMzEzNTZ9.ylHy9lYknNfvJXYYK-JuzvZ9j7aTlVaigqKM-biBrGI', '118.82.195.135', 0, ''),
('dad98190d2f61f8b', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwMTk1NDgxLCJleHAiOjE1ODAyMTM0ODF9.l45FAeZz_JKdSLk9xYVzHla65U8Oe4y33qCBvufL-6o', '105.184.168.72', 0, ''),
('5c0855e98f9f387a', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwMTk1NTc4LCJleHAiOjE1ODAyMTM1Nzh9.w0E-2UWxkUfGCBAj0UuKh45CZaia3CNh9zHdb8Ew_uM', '1.144.105.122', 0, ''),
('72d14a16c9f29ce0', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwMTk2NTExLCJleHAiOjE1ODAyMTQ1MTF9.JfNLhTdHDQYsTX3SOTzKa76afCKQrDBAO0ZSKcIfjdE', '105.184.168.72', 0, ''),
('ae56459f24426c20', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwMTk2Njc4LCJleHAiOjE1ODAyMTQ2Nzh9.zdn2oH2xG0PjhnIHKHMVs3MWdUf4RE9UhcuhYQ8hEKI', '105.184.168.72', 0, ''),
('a8c2b8d15df60eab', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwNDY3MzUyLCJleHAiOjE1ODA0ODUzNTJ9.sozhnQBVZq7HVyrpmWa0BYaEICro2XUArirYzDl9l-c', '118.82.195.135', 0, ''),
('43e455a67d92c374', 247, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjI0NyIsInVzZXJuYW1lIjoiY2hyaXN0b0BjcmlzcHdvcmtzLmNvLnphIiwiaWF0IjoxNTgwNDY3NTk4LCJleHAiOjE1ODA0ODU1OTh9.F2KhA1vxbVXBb71dYw6ObEh-oAkH29FzU5J7StuG0aQ', '118.82.195.135', 0, ''),
('515e5c144cf555b3', 247, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjI0NyIsInVzZXJuYW1lIjoiY2hyaXN0b0BjcmlzcHdvcmtzLmNvLnphIiwiaWF0IjoxNTgwNDY3NzI4LCJleHAiOjE1ODA0ODU3Mjh9.dOsjQINc7ccEF8VVcanl5Mm64Iz2eseghv7egopzMxo', '118.82.195.135', 0, ''),
('d27b9aa0da5da63b', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwNDY3NzUyLCJleHAiOjE1ODA0ODU3NTJ9.alXe1eDtpLPOpV-dJ1l85MScGuoyOliLtnO9hSkLzBU', '118.82.195.135', 0, ''),
('ad9c13a971d8c7d1', 247, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjI0NyIsInVzZXJuYW1lIjoiY2hyaXN0b0BjcmlzcHdvcmtzLmNvLnphIiwiaWF0IjoxNTgwNDY3ODIyLCJleHAiOjE1ODA0ODU4MjJ9._x7OXtkbm5nbTGptcInGaNhzoc26NOajsORWPhH98-M', '118.82.195.135', 0, ''),
('21eba59182de00f7', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTgwNDY3ODQ3LCJleHAiOjE1ODA0ODU4NDd9.3Hzem-LWdgj321nms-DToPWY2NQa3Rw3ZFCI6zdR1-0', '118.82.195.135', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `com_company`
--

CREATE TABLE `com_company` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `total_workforce` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_company`
--

INSERT INTO `com_company` (`id`, `name`, `parent`, `total_workforce`) VALUES
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
-- Table structure for table `com_company_colours`
--

CREATE TABLE `com_company_colours` (
  `id` int(11) NOT NULL,
  `reactive` varchar(50) NOT NULL,
  `compliant` varchar(50) NOT NULL,
  `proactive` varchar(50) NOT NULL,
  `resilient` varchar(50) NOT NULL,
  `first` varchar(50) NOT NULL,
  `second` varchar(50) NOT NULL,
  `third` varchar(50) NOT NULL,
  `fourth` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_company_colours`
--

INSERT INTO `com_company_colours` (`id`, `reactive`, `compliant`, `proactive`, `resilient`, `first`, `second`, `third`, `fourth`) VALUES
(1, '#f1552f', '#e7bb10', '#8cc63e', '#18b3eb', '#231F20', '#333333', '#4D4D4D', '#ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `com_company_details`
--

CREATE TABLE `com_company_details` (
  `id` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `logo_image` varchar(200) NOT NULL,
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

INSERT INTO `com_company_details` (`id`, `company_name`, `logo_image`, `maturity_top_heading`, `maturity_welcome_heading`, `maturity_welcome_statement`, `maturity_diagram_image`, `maturity_introduction_statement1`, `maturity_introduction_statement2`, `maturity_introduction_statement3`, `maturity_introduction_statement4`, `maturity_introduction_statement5`) VALUES
(1, 'AECI', 'logo-aeci.svg', 'SHEQ MATURITY ASSESSMENT', 'AECI SHEQ Framework', 'We will be doing a maturity assessment on the AECI SHEQ Framework to determine improvement focus areas on our journey towards Zero Harm.', 'maturity-diagram-aeci.png', 'A SHEQ maturity assessment assists leadership teams in identifying gaps and improvement opportunities on their journey to Zero Harm [4.2]. The outcome from a maturity self-assessment is that the team align on improvement focus areas for the next 12 to 18 months.', 'The maturity assessment is intended for leadership teams to use as part of strategic improvement planning. Self-assessments are a perception-based qualitative process, designed to facilitate discussion and alignment in the leadership team. The value and quality of these maturity assessments will improve if it is informed by a thorough overview of the team’s actual SHEQ performance and actual SHEQ practices.', 'The SHEQ maturity of a team is determined through a self-assessment workshop which includes the following:', '› The team’s SHEQ performance, i.e. y-axis (refer to the table below).', '› The team’s SHEQ practices, i.e. x-axis (refer to each element in this Framework for the practices maturity assessment tables).');

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
(10, 'Forgot Password', 'forgot_password', 'Password Reset - SHE Excellence', 'Hi {{first_name}},', 'A password reset process was initiated from the SHE Excellence application for your account.\n\nPlease click on this link to reset your password - {{reset_link}}\n\nIf this was not requested by you then please ignore this email.', 'Thank you', '', 'no', '2019-11-22 08:01:30', '2020-01-31 01:15:50'),
(11, ' Session Notification', 'session_notification', 'Session Invitation: {{session_name}}', 'Hi {{first_name}},', 'You have been invited to attend the Maturity \"{{session_name}}\" session. <br/>\nPlease click on the below link to login into your account and get started.<br/>\n\nLink: {{login_url}}', 'Thank you', '', 'no', '2019-12-21 09:08:57', '2020-01-31 01:17:12'),
(12, ' Session Invitation Signup', 'session_invitation_signup', 'Session Invitation: {{session_name}}', ' Hi,', 'You have been invited to attend the Maturity \"{{session_name}}\" session.  <br/>\nPlease click on the below link to complete your account registration and get started.  <br/>\n\nLink: {{session_signup_url}}', 'Thank you', '', 'no', '2019-12-21 09:11:04', '2020-01-31 01:17:44');

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
(9, 'YOUR-EMAIL@sasol.com', '', '2019-10-10', 0);

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
(201, 'manager', 'Manager', 'User', 0, '', 'manager', '9e94b15ed312fa42232fd87a55db0d39'),
(222, 'employee2', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(221, 'employee1', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(223, 'employee3', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(224, 'employee4', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(227, 'employee5', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(231, 'employee6', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(232, 'employee7', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(234, 'employee8', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(235, 'employee9', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(238, 'employee10', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(240, 'employee11', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(244, 'employee12', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(245, 'employee13', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(246, 'employee14', 'Test', 'User', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39'),
(247, 'christo@crispworks.co.za', 'Christo', 'Pretorius', 0, '', 'employee', '9e94b15ed312fa42232fd87a55db0d39');

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

-- --------------------------------------------------------

--
-- Table structure for table `mat_actions_victory`
--

CREATE TABLE `mat_actions_victory` (
  `id` int(20) NOT NULL,
  `element` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `definition` text NOT NULL,
  `outcome_id` int(10) NOT NULL,
  `teammembers` text NOT NULL,
  `performance_elements` varchar(255) NOT NULL,
  `focusareaname` varchar(255) NOT NULL,
  `focusareaowner` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_midified` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_answer_complete`
--

CREATE TABLE `mat_answer_complete` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_answer_complete`
--

INSERT INTO `mat_answer_complete` (`id`, `user`, `element`, `session_id`) VALUES
(7, 222, 2, 82),
(6, 224, 1, 82),
(5, 232, 1, 82),
(3, 244, 1, 82),
(4, 225, 1, 82),
(8, 225, 2, 82),
(9, 244, 2, 82),
(10, 232, 2, 82),
(11, 246, 1, 82),
(12, 235, 2, 82),
(13, 244, 3, 82),
(14, 232, 3, 82),
(15, 221, 1, 82),
(16, 225, 3, 82),
(17, 224, 2, 82),
(18, 222, 1, 82),
(19, 234, 1, 82),
(20, 220, 1, 82),
(21, 231, 1, 82),
(22, 223, 1, 82),
(23, 246, 2, 82),
(24, 244, 4, 82),
(25, 232, 4, 82),
(26, 225, 4, 82),
(27, 221, 4, 82),
(28, 223, 2, 82),
(29, 234, 3, 82),
(30, 231, 2, 82),
(31, 246, 3, 82),
(32, 222, 3, 82),
(33, 235, 6, 82),
(34, 232, 5, 82),
(35, 224, 3, 82),
(36, 245, 1, 82),
(37, 221, 8, 82),
(38, 227, 1, 82),
(39, 244, 5, 82),
(40, 221, 9, 82),
(41, 240, 1, 82),
(42, 225, 5, 82),
(43, 232, 6, 82),
(44, 235, 9, 82),
(45, 223, 3, 82),
(46, 244, 6, 82),
(47, 221, 5, 82),
(48, 222, 4, 82),
(49, 232, 7, 82),
(50, 225, 6, 82),
(51, 227, 4, 82),
(52, 231, 3, 82),
(53, 234, 4, 82),
(54, 238, 1, 82),
(55, 224, 4, 82),
(56, 221, 2, 82),
(57, 245, 2, 82),
(58, 246, 4, 82),
(59, 223, 4, 82),
(60, 225, 7, 82),
(61, 240, 3, 82),
(62, 227, 8, 82),
(63, 238, 2, 82),
(64, 220, 2, 82),
(65, 225, 8, 82),
(66, 221, 3, 82),
(67, 244, 7, 82),
(68, 225, 9, 82),
(69, 234, 2, 82),
(70, 225, 10, 82),
(71, 235, 15, 82),
(72, 221, 6, 82),
(73, 227, 15, 82),
(74, 225, 11, 82),
(75, 244, 8, 82),
(76, 244, 8, 82),
(77, 240, 2, 82),
(78, 223, 5, 82),
(79, 225, 15, 82),
(80, 238, 3, 82),
(81, 222, 5, 82),
(82, 246, 6, 82),
(83, 224, 5, 82),
(84, 221, 10, 82),
(85, 232, 8, 82),
(86, 225, 16, 82),
(87, 225, 12, 82),
(88, 234, 7, 82),
(89, 227, 16, 82),
(90, 225, 13, 82),
(91, 232, 9, 82),
(92, 223, 6, 82),
(93, 226, 1, 82),
(94, 225, 14, 82),
(95, 227, 9, 82),
(96, 221, 11, 82),
(97, 231, 4, 82),
(98, 222, 6, 82),
(99, 234, 9, 82),
(100, 244, 10, 82),
(101, 223, 7, 82),
(102, 245, 3, 82),
(103, 240, 4, 82),
(104, 232, 10, 82),
(105, 220, 3, 82),
(106, 238, 4, 82),
(107, 227, 2, 82),
(108, 226, 2, 82),
(109, 246, 5, 82),
(110, 224, 6, 82),
(111, 221, 7, 82),
(112, 232, 11, 82),
(113, 244, 12, 82),
(114, 223, 8, 82),
(115, 240, 16, 82),
(116, 222, 7, 82),
(117, 226, 3, 82),
(118, 221, 12, 82),
(119, 227, 3, 82),
(120, 246, 7, 82),
(121, 223, 9, 82),
(122, 244, 9, 82),
(123, 234, 6, 82),
(124, 232, 12, 82),
(125, 238, 5, 82),
(126, 240, 15, 82),
(127, 224, 7, 82),
(128, 221, 13, 82),
(129, 226, 4, 82),
(130, 238, 6, 82),
(131, 221, 15, 82),
(132, 227, 5, 82),
(133, 223, 10, 82),
(134, 246, 8, 82),
(135, 240, 8, 82),
(136, 222, 8, 82),
(137, 224, 8, 82),
(138, 246, 9, 82),
(139, 232, 13, 82),
(140, 245, 4, 82),
(141, 244, 11, 82),
(142, 221, 16, 82),
(143, 240, 9, 82),
(144, 222, 9, 82),
(145, 224, 9, 82),
(146, 235, 16, 82),
(147, 238, 7, 82),
(148, 226, 5, 82),
(149, 231, 5, 82),
(150, 227, 7, 82),
(151, 246, 10, 82),
(152, 224, 10, 82),
(153, 223, 11, 82),
(154, 240, 13, 82),
(155, 232, 14, 82),
(156, 226, 6, 82),
(157, 238, 8, 82),
(158, 222, 10, 82),
(159, 244, 13, 82),
(160, 234, 11, 82),
(161, 231, 6, 82),
(162, 246, 11, 82),
(163, 245, 5, 82),
(164, 240, 14, 82),
(165, 223, 12, 82),
(166, 232, 15, 82),
(167, 227, 6, 82),
(168, 224, 11, 82),
(169, 238, 9, 82),
(170, 245, 6, 82),
(171, 226, 7, 82),
(172, 244, 14, 82),
(173, 231, 7, 82),
(174, 223, 13, 82),
(175, 246, 12, 82),
(176, 240, 12, 82),
(177, 232, 16, 82),
(178, 245, 7, 82),
(179, 238, 10, 82),
(180, 222, 11, 82),
(181, 226, 8, 82),
(182, 227, 10, 82),
(183, 231, 8, 82),
(184, 240, 10, 82),
(185, 223, 14, 82),
(186, 244, 15, 82),
(187, 235, 1, 82),
(188, 220, 4, 82),
(189, 234, 12, 82),
(190, 224, 12, 82),
(191, 246, 13, 82),
(192, 231, 9, 82),
(193, 226, 9, 82),
(194, 245, 8, 82),
(195, 240, 5, 82),
(196, 245, 9, 82),
(197, 238, 11, 82),
(198, 224, 13, 82),
(199, 231, 10, 82),
(200, 245, 10, 82),
(201, 226, 10, 82),
(202, 222, 12, 82),
(203, 246, 14, 82),
(204, 240, 11, 82),
(205, 234, 13, 82),
(206, 227, 11, 82),
(207, 238, 12, 82),
(208, 223, 15, 82),
(209, 244, 16, 82),
(210, 246, 15, 82),
(211, 235, 3, 82),
(212, 224, 14, 82),
(213, 223, 16, 82),
(214, 226, 11, 82),
(215, 238, 13, 82),
(216, 222, 13, 82),
(217, 231, 11, 82),
(218, 224, 15, 82),
(219, 227, 12, 82),
(220, 235, 4, 82),
(221, 246, 16, 82),
(222, 245, 11, 82),
(223, 234, 16, 82),
(224, 222, 14, 82),
(225, 240, 6, 82),
(226, 235, 7, 82),
(227, 224, 16, 82),
(228, 227, 13, 82),
(229, 238, 14, 82),
(230, 231, 12, 82),
(231, 226, 12, 82),
(232, 238, 15, 82),
(233, 240, 7, 82),
(234, 220, 5, 82),
(235, 245, 12, 82),
(236, 238, 16, 82),
(237, 231, 13, 82),
(238, 226, 13, 82),
(239, 234, 15, 82),
(240, 245, 13, 82),
(241, 226, 14, 82),
(242, 235, 5, 82),
(243, 226, 15, 82),
(244, 235, 10, 82),
(245, 231, 14, 82),
(246, 235, 8, 82),
(247, 226, 16, 82),
(248, 231, 15, 82),
(249, 234, 5, 82),
(250, 235, 11, 82),
(251, 220, 6, 82),
(252, 245, 14, 82),
(253, 234, 8, 82),
(254, 231, 16, 82),
(255, 245, 15, 82),
(256, 235, 12, 82),
(257, 245, 16, 82),
(258, 234, 14, 82),
(259, 235, 13, 82),
(260, 234, 10, 82),
(261, 220, 7, 82),
(262, 235, 14, 82),
(263, 220, 8, 82),
(264, 220, 15, 82),
(265, 220, 16, 82),
(266, 220, 9, 82),
(267, 220, 10, 82),
(268, 220, 11, 82),
(269, 220, 12, 82),
(270, 220, 13, 82),
(271, 220, 14, 82),
(272, 201, 1, 82);

-- --------------------------------------------------------

--
-- Table structure for table `mat_answer_desired`
--

CREATE TABLE `mat_answer_desired` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `desired` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_answer_desired`
--

INSERT INTO `mat_answer_desired` (`id`, `user`, `element`, `session_id`, `desired`) VALUES
(7, 246, 1, 82, 4),
(6, 232, 2, 82, 2),
(5, 222, 2, 82, 2),
(3, 232, 1, 82, 2),
(4, 224, 1, 82, 4),
(8, 235, 2, 82, 2),
(9, 232, 3, 82, 2),
(10, 224, 2, 82, 4),
(11, 222, 1, 82, 3),
(12, 231, 1, 82, 3),
(13, 223, 1, 82, 3),
(14, 246, 2, 82, 3),
(15, 232, 4, 82, 2),
(16, 221, 4, 82, 2),
(17, 223, 2, 82, 3),
(18, 231, 2, 82, 3),
(19, 246, 3, 82, 4),
(20, 222, 3, 82, 3),
(21, 235, 6, 82, 3),
(22, 232, 5, 82, 2),
(23, 224, 3, 82, 4),
(24, 245, 1, 82, 3),
(25, 221, 8, 82, 3),
(26, 227, 1, 82, 3),
(27, 221, 9, 82, 2),
(28, 240, 1, 82, 4),
(29, 232, 6, 82, 2),
(30, 235, 9, 82, 3),
(31, 223, 3, 82, 3),
(32, 221, 5, 82, 2),
(33, 222, 4, 82, 3),
(34, 232, 7, 82, 2),
(35, 227, 4, 82, 3),
(36, 231, 3, 82, 3),
(37, 238, 1, 82, 3),
(38, 224, 4, 82, 3),
(39, 221, 2, 82, 3),
(40, 245, 2, 82, 3),
(41, 246, 4, 82, 4),
(42, 223, 4, 82, 3),
(43, 240, 3, 82, 3),
(44, 227, 8, 82, 3),
(45, 238, 2, 82, 3),
(46, 221, 3, 82, 2),
(47, 234, 2, 82, 3),
(48, 235, 15, 82, 3),
(49, 221, 6, 82, 2),
(50, 227, 15, 82, 3),
(51, 240, 2, 82, 2),
(52, 223, 5, 82, 3),
(53, 238, 3, 82, 4),
(54, 222, 5, 82, 4),
(55, 246, 6, 82, 4),
(56, 232, 8, 82, 3),
(57, 224, 5, 82, 3),
(58, 221, 10, 82, 2),
(59, 234, 7, 82, 3),
(60, 227, 16, 82, 2),
(61, 232, 9, 82, 3),
(62, 223, 6, 82, 3),
(63, 227, 9, 82, 3),
(64, 221, 11, 82, 2),
(65, 231, 4, 82, 3),
(66, 222, 6, 82, 3),
(67, 234, 9, 82, 3),
(68, 223, 7, 82, 3),
(69, 245, 3, 82, 3),
(70, 240, 4, 82, 3),
(71, 232, 10, 82, 2),
(72, 238, 4, 82, 3),
(73, 227, 2, 82, 2),
(74, 246, 5, 82, 4),
(75, 224, 6, 82, 4),
(76, 221, 7, 82, 3),
(77, 232, 11, 82, 2),
(78, 244, 12, 82, 3),
(79, 223, 8, 82, 3),
(80, 240, 16, 82, 4),
(81, 222, 7, 82, 4),
(82, 221, 12, 82, 3),
(83, 227, 3, 82, 3),
(84, 246, 7, 82, 4),
(85, 223, 9, 82, 3),
(86, 244, 9, 82, 2),
(87, 234, 6, 82, 3),
(88, 232, 12, 82, 3),
(89, 238, 5, 82, 3),
(90, 240, 15, 82, 2),
(91, 224, 7, 82, 4),
(92, 221, 13, 82, 3),
(93, 238, 6, 82, 3),
(94, 221, 15, 82, 2),
(95, 227, 5, 82, 2),
(96, 223, 10, 82, 3),
(97, 246, 8, 82, 4),
(98, 240, 8, 82, 2),
(99, 222, 8, 82, 4),
(100, 224, 8, 82, 4),
(101, 246, 9, 82, 4),
(102, 232, 13, 82, 3),
(103, 245, 4, 82, 3),
(104, 244, 11, 82, 2),
(105, 221, 16, 82, 2),
(106, 240, 9, 82, 4),
(107, 222, 9, 82, 3),
(108, 224, 9, 82, 4),
(109, 235, 16, 82, 4),
(110, 238, 7, 82, 3),
(111, 231, 5, 82, 3),
(112, 227, 7, 82, 3),
(113, 246, 10, 82, 4),
(114, 224, 10, 82, 3),
(115, 223, 11, 82, 3),
(116, 240, 13, 82, 3),
(117, 232, 14, 82, 3),
(118, 238, 8, 82, 3),
(119, 222, 10, 82, 3),
(120, 244, 13, 82, 3),
(121, 234, 11, 82, 3),
(122, 231, 6, 82, 2),
(123, 246, 11, 82, 4),
(124, 245, 5, 82, 3),
(125, 240, 14, 82, 3),
(126, 232, 15, 82, 3),
(127, 223, 12, 82, 3),
(128, 227, 6, 82, 3),
(129, 224, 11, 82, 3),
(130, 238, 9, 82, 3),
(131, 245, 6, 82, 3),
(132, 244, 14, 82, 2),
(133, 231, 7, 82, 3),
(134, 223, 13, 82, 3),
(135, 246, 12, 82, 4),
(136, 240, 12, 82, 3),
(137, 232, 16, 82, 2),
(138, 245, 7, 82, 3),
(139, 238, 10, 82, 3),
(140, 222, 11, 82, 3),
(141, 227, 10, 82, 3),
(142, 231, 8, 82, 2),
(143, 240, 10, 82, 4),
(144, 223, 14, 82, 3),
(145, 244, 15, 82, 3),
(146, 235, 1, 82, 3),
(147, 234, 12, 82, 4),
(148, 224, 12, 82, 4),
(149, 246, 13, 82, 4),
(150, 231, 9, 82, 3),
(151, 245, 8, 82, 3),
(152, 240, 5, 82, 3),
(153, 245, 9, 82, 3),
(154, 238, 11, 82, 3),
(155, 224, 13, 82, 4),
(156, 231, 10, 82, 2),
(157, 245, 10, 82, 3),
(158, 222, 12, 82, 3),
(159, 246, 14, 82, 4),
(160, 240, 11, 82, 3),
(161, 234, 13, 82, 3),
(162, 227, 11, 82, 4),
(163, 238, 12, 82, 3),
(164, 223, 15, 82, 3),
(165, 244, 16, 82, 3),
(166, 246, 15, 82, 4),
(167, 235, 3, 82, 4),
(168, 224, 14, 82, 4),
(169, 223, 16, 82, 3),
(170, 238, 13, 82, 3),
(171, 222, 13, 82, 3),
(172, 231, 11, 82, 3),
(173, 224, 15, 82, 4),
(174, 227, 12, 82, 4),
(175, 235, 4, 82, 4),
(176, 246, 16, 82, 4),
(177, 245, 11, 82, 3),
(178, 234, 16, 82, 3),
(179, 222, 14, 82, 2),
(180, 240, 6, 82, 4),
(181, 235, 7, 82, 4),
(182, 224, 16, 82, 4),
(183, 227, 13, 82, 4),
(184, 238, 14, 82, 3),
(185, 231, 12, 82, 3),
(186, 238, 15, 82, 3),
(187, 240, 7, 82, 3),
(188, 238, 16, 82, 3),
(189, 231, 13, 82, 3),
(190, 234, 15, 82, 3),
(191, 245, 13, 82, 3),
(192, 235, 5, 82, 4),
(193, 235, 10, 82, 4),
(194, 231, 14, 82, 3),
(195, 235, 8, 82, 4),
(196, 231, 15, 82, 3),
(197, 234, 5, 82, 3),
(198, 235, 11, 82, 4),
(199, 245, 14, 82, 3),
(200, 234, 8, 82, 3),
(201, 231, 16, 82, 3),
(202, 245, 15, 82, 3),
(203, 235, 12, 82, 3),
(204, 245, 16, 82, 3),
(205, 234, 14, 82, 3),
(206, 235, 13, 82, 4),
(207, 234, 10, 82, 3),
(208, 235, 14, 82, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mat_answer_mc`
--

CREATE TABLE `mat_answer_mc` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `question` int(11) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_answer_mc`
--

INSERT INTO `mat_answer_mc` (`id`, `user`, `element`, `session_id`, `question`, `answer`) VALUES
(21, 225, 1, 82, 5, 4),
(20, 234, 1, 82, 1, 2),
(19, 246, 1, 82, 2, 2),
(18, 225, 1, 82, 4, 1),
(17, 244, 1, 82, 5, 4),
(16, 222, 2, 82, 6, 2),
(15, 224, 1, 82, 2, 4),
(14, 225, 1, 82, 3, 3),
(13, 220, 1, 82, 1, 4),
(12, 232, 1, 82, 2, 2),
(11, 225, 1, 82, 2, 4),
(10, 244, 1, 82, 4, 2),
(9, 223, 1, 82, 1, 2),
(8, 224, 1, 82, 1, 3),
(7, 246, 1, 82, 1, 2),
(6, 225, 1, 82, 1, 4),
(5, 244, 1, 82, 3, 4),
(4, 232, 1, 82, 1, 2),
(3, 244, 1, 82, 2, 4),
(2, 244, 1, 82, 1, 4),
(1, 228, 1, 82, 1, 1),
(22, 232, 1, 82, 3, 1),
(23, 245, 1, 82, 1, 2),
(24, 224, 1, 82, 3, 4),
(25, 231, 1, 82, 1, 3),
(26, 232, 1, 82, 4, 2),
(27, 222, 2, 82, 7, 3),
(28, 245, 1, 82, 2, 2),
(29, 223, 1, 82, 2, 2),
(30, 220, 1, 82, 2, 3),
(31, 235, 2, 82, 6, 2),
(32, 245, 1, 82, 3, 2),
(33, 232, 1, 82, 5, 3),
(34, 224, 1, 82, 4, 3),
(35, 222, 2, 82, 8, 3),
(36, 231, 1, 82, 2, 3),
(37, 244, 2, 82, 6, 2),
(38, 225, 2, 82, 6, 4),
(39, 235, 2, 82, 7, 2),
(40, 246, 1, 82, 3, 3),
(41, 224, 1, 82, 5, 2),
(42, 225, 2, 82, 7, 3),
(43, 244, 2, 82, 7, 2),
(44, 220, 1, 82, 3, 4),
(45, 232, 2, 82, 6, 2),
(46, 225, 2, 82, 8, 3),
(47, 222, 2, 82, 9, 2),
(48, 232, 2, 82, 7, 1),
(49, 235, 2, 82, 8, 4),
(50, 246, 1, 82, 4, 2),
(51, 235, 2, 82, 9, 4),
(52, 232, 2, 82, 8, 2),
(53, 244, 2, 82, 8, 3),
(54, 246, 1, 82, 5, 4),
(55, 225, 2, 82, 9, 3),
(56, 244, 2, 82, 9, 2),
(57, 224, 2, 82, 6, 4),
(58, 234, 1, 82, 2, 1),
(59, 232, 2, 82, 9, 2),
(60, 244, 3, 82, 10, 2),
(61, 234, 1, 82, 3, 2),
(62, 222, 1, 82, 1, 2),
(63, 244, 3, 82, 11, 2),
(64, 220, 1, 82, 4, 2),
(65, 231, 1, 82, 3, 1),
(66, 244, 3, 82, 12, 2),
(67, 225, 3, 82, 10, 4),
(68, 223, 1, 82, 3, 2),
(69, 234, 1, 82, 4, 2),
(70, 224, 2, 82, 7, 3),
(71, 244, 3, 82, 13, 2),
(72, 221, 1, 82, 1, 4),
(73, 222, 1, 82, 2, 3),
(74, 246, 2, 82, 6, 2),
(75, 232, 3, 82, 10, 2),
(76, 225, 3, 82, 11, 4),
(77, 234, 1, 82, 5, 3),
(78, 221, 1, 82, 2, 3),
(79, 231, 1, 82, 4, 2),
(80, 223, 1, 82, 4, 2),
(81, 232, 3, 82, 11, 2),
(82, 222, 1, 82, 3, 3),
(83, 221, 1, 82, 3, 4),
(84, 224, 2, 82, 8, 3),
(85, 244, 4, 82, 14, 3),
(86, 220, 1, 82, 5, 4),
(87, 246, 2, 82, 7, 1),
(88, 231, 1, 82, 5, 2),
(89, 221, 1, 82, 4, 3),
(90, 223, 1, 82, 5, 2),
(91, 222, 1, 82, 4, 3),
(92, 225, 3, 82, 12, 2),
(93, 232, 3, 82, 12, 2),
(94, 244, 4, 82, 15, 3),
(95, 221, 1, 82, 5, 2),
(96, 235, 6, 82, 24, 4),
(97, 246, 2, 82, 8, 3),
(98, 232, 3, 82, 13, 1),
(99, 224, 2, 82, 9, 3),
(100, 222, 1, 82, 5, 2),
(101, 244, 4, 82, 16, 2),
(102, 225, 3, 82, 13, 3),
(103, 232, 4, 82, 14, 1),
(104, 244, 4, 82, 17, 2),
(105, 246, 2, 82, 9, 2),
(106, 225, 4, 82, 14, 1),
(107, 232, 4, 82, 15, 1),
(108, 224, 3, 82, 10, 4),
(109, 221, 4, 82, 14, 2),
(110, 225, 4, 82, 15, 2),
(111, 244, 4, 82, 18, 3),
(112, 232, 4, 82, 16, 1),
(113, 235, 6, 82, 25, 4),
(114, 223, 2, 82, 6, 1),
(115, 225, 4, 82, 16, 1),
(116, 246, 3, 82, 10, 2),
(117, 234, 3, 82, 10, 2),
(118, 221, 4, 82, 15, 3),
(119, 231, 2, 82, 6, 3),
(120, 223, 2, 82, 7, 1),
(121, 232, 4, 82, 17, 2),
(122, 232, 4, 82, 18, 2),
(123, 224, 3, 82, 11, 3),
(124, 225, 4, 82, 17, 2),
(125, 222, 3, 82, 10, 2),
(126, 246, 3, 82, 11, 4),
(127, 235, 6, 82, 26, 3),
(128, 223, 2, 82, 8, 2),
(129, 234, 3, 82, 11, 2),
(130, 221, 4, 82, 16, 2),
(131, 231, 2, 82, 7, 2),
(132, 244, 5, 82, 19, 2),
(133, 221, 4, 82, 17, 2),
(134, 223, 2, 82, 9, 1),
(135, 227, 1, 82, 1, 3),
(136, 244, 5, 82, 20, 2),
(137, 240, 1, 82, 1, 3),
(138, 225, 4, 82, 18, 1),
(139, 222, 3, 82, 11, 2),
(140, 234, 3, 82, 12, 3),
(141, 231, 2, 82, 8, 2),
(142, 221, 4, 82, 18, 1),
(143, 232, 5, 82, 19, 1),
(144, 224, 3, 82, 12, 4),
(145, 240, 1, 82, 2, 4),
(146, 227, 1, 82, 2, 3),
(147, 246, 3, 82, 12, 2),
(148, 235, 6, 82, 27, 2),
(149, 220, 2, 82, 6, 2),
(150, 232, 5, 82, 20, 1),
(151, 244, 5, 82, 21, 4),
(152, 222, 3, 82, 12, 3),
(153, 234, 3, 82, 13, 3),
(154, 227, 1, 82, 3, 3),
(155, 225, 5, 82, 19, 2),
(156, 231, 2, 82, 9, 2),
(157, 232, 5, 82, 21, 2),
(158, 240, 1, 82, 3, 4),
(159, 246, 3, 82, 13, 2),
(160, 244, 5, 82, 22, 2),
(161, 224, 3, 82, 13, 2),
(162, 221, 8, 82, 31, 2),
(163, 245, 1, 82, 4, 2),
(164, 222, 3, 82, 13, 2),
(165, 227, 1, 82, 4, 3),
(166, 232, 5, 82, 22, 2),
(167, 225, 5, 82, 20, 1),
(168, 221, 8, 82, 32, 1),
(169, 245, 1, 82, 5, 2),
(170, 232, 5, 82, 23, 1),
(171, 223, 3, 82, 10, 1),
(172, 225, 5, 82, 21, 1),
(173, 240, 1, 82, 4, 3),
(174, 221, 8, 82, 33, 3),
(175, 220, 2, 82, 7, 4),
(176, 227, 1, 82, 5, 4),
(177, 240, 1, 82, 5, 3),
(178, 232, 6, 82, 24, 2),
(179, 222, 4, 82, 14, 3),
(180, 244, 5, 82, 23, 3),
(181, 232, 6, 82, 25, 2),
(182, 238, 1, 82, 1, 3),
(183, 232, 6, 82, 26, 1),
(184, 221, 10, 82, 34, 3),
(185, 224, 4, 82, 14, 3),
(186, 234, 4, 82, 14, 2),
(187, 223, 3, 82, 11, 3),
(188, 231, 3, 82, 10, 2),
(189, 225, 5, 82, 22, 1),
(190, 222, 4, 82, 15, 2),
(191, 244, 6, 82, 24, 2),
(192, 238, 1, 82, 2, 3),
(193, 246, 4, 82, 14, 3),
(194, 227, 4, 82, 14, 3),
(195, 225, 5, 82, 23, 1),
(196, 232, 6, 82, 27, 1),
(197, 223, 3, 82, 12, 2),
(198, 235, 10, 82, 34, 4),
(199, 222, 4, 82, 16, 3),
(200, 234, 4, 82, 15, 3),
(201, 224, 4, 82, 15, 2),
(202, 244, 6, 82, 25, 2),
(203, 227, 4, 82, 15, 4),
(204, 223, 3, 82, 13, 2),
(205, 221, 5, 82, 19, 1),
(206, 231, 3, 82, 11, 2),
(207, 238, 1, 82, 3, 2),
(208, 225, 6, 82, 24, 3),
(209, 244, 6, 82, 26, 2),
(210, 227, 4, 82, 16, 3),
(211, 222, 4, 82, 17, 2),
(212, 234, 4, 82, 16, 3),
(213, 232, 7, 82, 28, 2),
(214, 221, 5, 82, 20, 2),
(215, 224, 4, 82, 16, 3),
(216, 225, 6, 82, 25, 1),
(217, 245, 2, 82, 6, 4),
(218, 225, 6, 82, 26, 1),
(219, 221, 5, 82, 21, 1),
(220, 227, 4, 82, 17, 3),
(221, 245, 2, 82, 7, 1),
(222, 231, 3, 82, 12, 2),
(223, 221, 5, 82, 22, 2),
(224, 240, 3, 82, 10, 4),
(225, 244, 6, 82, 27, 3),
(226, 232, 7, 82, 29, 1),
(227, 221, 5, 82, 23, 1),
(228, 222, 4, 82, 18, 2),
(229, 246, 4, 82, 15, 3),
(230, 238, 1, 82, 4, 1),
(231, 245, 2, 82, 8, 3),
(232, 224, 4, 82, 17, 3),
(233, 234, 4, 82, 17, 3),
(234, 227, 4, 82, 18, 3),
(235, 232, 7, 82, 30, 2),
(236, 240, 3, 82, 11, 3),
(237, 246, 4, 82, 16, 3),
(238, 238, 1, 82, 5, 1),
(239, 223, 4, 82, 14, 2),
(240, 225, 6, 82, 27, 2),
(241, 220, 2, 82, 8, 3),
(242, 231, 3, 82, 13, 2),
(243, 221, 2, 82, 6, 2),
(244, 221, 2, 82, 7, 2),
(245, 225, 7, 82, 28, 1),
(246, 234, 4, 82, 18, 3),
(247, 223, 4, 82, 15, 1),
(248, 225, 7, 82, 29, 1),
(249, 246, 4, 82, 17, 2),
(250, 222, 5, 82, 19, 3),
(251, 244, 7, 82, 28, 4),
(252, 224, 4, 82, 18, 2),
(253, 240, 3, 82, 12, 3),
(254, 227, 8, 82, 31, 3),
(255, 235, 15, 82, 54, 3),
(256, 221, 2, 82, 8, 1),
(257, 223, 4, 82, 16, 3),
(258, 221, 2, 82, 9, 2),
(259, 227, 8, 82, 32, 3),
(260, 238, 2, 82, 6, 2),
(261, 244, 7, 82, 29, 2),
(262, 223, 4, 82, 17, 2),
(263, 238, 2, 82, 7, 1),
(264, 234, 2, 82, 6, 3),
(265, 245, 2, 82, 9, 2),
(266, 240, 3, 82, 13, 3),
(267, 222, 5, 82, 20, 2),
(268, 238, 2, 82, 8, 1),
(269, 227, 8, 82, 33, 3),
(270, 234, 2, 82, 7, 3),
(271, 223, 4, 82, 18, 1),
(272, 246, 4, 82, 18, 3),
(273, 221, 3, 82, 10, 2),
(274, 220, 2, 82, 9, 3),
(275, 238, 2, 82, 9, 2),
(276, 225, 7, 82, 30, 1),
(277, 224, 5, 82, 19, 2),
(278, 221, 3, 82, 11, 1),
(279, 221, 3, 82, 12, 1),
(280, 222, 5, 82, 21, 1),
(281, 221, 3, 82, 13, 1),
(282, 225, 8, 82, 31, 2),
(283, 235, 15, 82, 55, 2),
(284, 246, 6, 82, 24, 2),
(285, 225, 8, 82, 32, 1),
(286, 234, 2, 82, 8, 4),
(287, 244, 7, 82, 30, 3),
(288, 225, 8, 82, 33, 1),
(289, 245, 3, 82, 10, 4),
(290, 227, 15, 82, 54, 3),
(291, 234, 2, 82, 9, 2),
(292, 224, 5, 82, 20, 2),
(293, 225, 10, 82, 34, 2),
(294, 221, 6, 82, 24, 2),
(295, 223, 5, 82, 19, 2),
(296, 235, 15, 82, 56, 4),
(297, 245, 3, 82, 11, 3),
(298, 246, 6, 82, 25, 2),
(299, 225, 10, 82, 35, 1),
(300, 221, 6, 82, 25, 1),
(301, 240, 2, 82, 6, 3),
(302, 225, 10, 82, 36, 1),
(303, 246, 6, 82, 26, 1),
(304, 238, 3, 82, 10, 2),
(305, 221, 6, 82, 26, 1),
(306, 227, 15, 82, 55, 3),
(307, 244, 8, 82, 31, 4),
(308, 221, 6, 82, 27, 1),
(309, 223, 5, 82, 20, 2),
(310, 220, 3, 82, 10, 4),
(311, 227, 15, 82, 56, 3),
(312, 231, 4, 82, 14, 3),
(313, 225, 11, 82, 37, 2),
(314, 224, 5, 82, 21, 3),
(315, 223, 5, 82, 21, 2),
(316, 240, 2, 82, 7, 3),
(317, 225, 11, 82, 38, 2),
(318, 234, 7, 82, 28, 3),
(319, 232, 8, 82, 31, 2),
(320, 225, 11, 82, 39, 1),
(321, 222, 5, 82, 22, 2),
(322, 238, 3, 82, 11, 2),
(323, 226, 1, 82, 1, 2),
(324, 225, 11, 82, 40, 1),
(325, 244, 8, 82, 32, 2),
(326, 240, 2, 82, 8, 3),
(327, 221, 10, 82, 35, 2),
(328, 223, 5, 82, 22, 2),
(329, 225, 11, 82, 41, 2),
(330, 226, 1, 82, 2, 2),
(331, 238, 3, 82, 12, 2),
(332, 224, 5, 82, 22, 2),
(333, 231, 4, 82, 15, 2),
(334, 232, 8, 82, 32, 2),
(335, 240, 2, 82, 9, 3),
(336, 227, 16, 82, 57, 2),
(337, 244, 8, 82, 33, 2),
(338, 225, 15, 82, 54, 2),
(339, 225, 15, 82, 55, 2),
(340, 223, 5, 82, 23, 1),
(341, 222, 5, 82, 23, 1),
(342, 238, 3, 82, 13, 2),
(343, 246, 6, 82, 27, 2),
(344, 232, 8, 82, 33, 2),
(345, 234, 7, 82, 29, 2),
(346, 225, 15, 82, 56, 2),
(347, 226, 1, 82, 3, 2),
(348, 245, 3, 82, 12, 1),
(349, 231, 4, 82, 16, 3),
(350, 227, 16, 82, 58, 2),
(351, 224, 5, 82, 23, 3),
(352, 225, 16, 82, 57, 1),
(353, 221, 10, 82, 36, 2),
(354, 220, 3, 82, 11, 3),
(355, 225, 16, 82, 58, 2),
(356, 225, 16, 82, 59, 1),
(357, 227, 16, 82, 59, 2),
(358, 223, 6, 82, 24, 2),
(359, 225, 16, 82, 60, 1),
(360, 234, 7, 82, 30, 4),
(361, 225, 12, 82, 42, 1),
(362, 223, 6, 82, 25, 1),
(363, 222, 6, 82, 24, 2),
(364, 238, 4, 82, 14, 2),
(365, 231, 4, 82, 17, 2),
(366, 221, 11, 82, 37, 2),
(367, 225, 12, 82, 43, 2),
(368, 227, 16, 82, 60, 3),
(369, 225, 12, 82, 44, 2),
(370, 223, 6, 82, 26, 1),
(371, 225, 12, 82, 45, 2),
(372, 226, 1, 82, 4, 1),
(373, 224, 6, 82, 24, 4),
(374, 225, 13, 82, 46, 2),
(375, 222, 6, 82, 25, 2),
(376, 223, 6, 82, 27, 1),
(377, 221, 11, 82, 38, 2),
(378, 225, 13, 82, 47, 3),
(379, 225, 13, 82, 48, 2),
(380, 221, 11, 82, 39, 2),
(381, 232, 10, 82, 34, 2),
(382, 225, 13, 82, 49, 1),
(383, 222, 6, 82, 26, 1),
(384, 226, 1, 82, 5, 3),
(385, 244, 10, 82, 35, 3),
(386, 246, 5, 82, 19, 2),
(387, 225, 14, 82, 50, 1),
(388, 225, 14, 82, 51, 1),
(389, 221, 11, 82, 40, 1),
(390, 225, 14, 82, 52, 2),
(391, 231, 4, 82, 18, 2),
(392, 240, 4, 82, 14, 4),
(393, 238, 4, 82, 15, 2),
(394, 227, 10, 82, 34, 2),
(395, 221, 11, 82, 41, 2),
(396, 225, 14, 82, 53, 2),
(397, 246, 5, 82, 20, 2),
(398, 234, 10, 82, 34, 3),
(399, 220, 3, 82, 12, 3),
(400, 222, 6, 82, 27, 1),
(401, 224, 6, 82, 25, 4),
(402, 240, 4, 82, 15, 4),
(403, 238, 4, 82, 16, 2),
(404, 227, 2, 82, 6, 2),
(405, 223, 7, 82, 28, 3),
(406, 227, 2, 82, 7, 2),
(407, 245, 3, 82, 13, 4),
(408, 246, 5, 82, 21, 3),
(409, 240, 4, 82, 16, 4),
(410, 223, 7, 82, 29, 2),
(411, 221, 7, 82, 28, 3),
(412, 227, 2, 82, 9, 2),
(413, 227, 2, 82, 8, 2),
(414, 223, 7, 82, 30, 2),
(415, 238, 4, 82, 17, 2),
(416, 226, 2, 82, 6, 4),
(417, 240, 4, 82, 18, 3),
(418, 232, 10, 82, 35, 1),
(419, 232, 10, 82, 36, 1),
(420, 220, 3, 82, 13, 4),
(421, 244, 10, 82, 36, 4),
(422, 226, 2, 82, 7, 2),
(423, 246, 5, 82, 22, 2),
(424, 238, 4, 82, 18, 1),
(425, 240, 4, 82, 17, 4),
(426, 222, 7, 82, 28, 2),
(427, 231, 5, 82, 19, 2),
(428, 224, 6, 82, 26, 3),
(429, 226, 2, 82, 8, 2),
(430, 223, 8, 82, 31, 2),
(431, 244, 12, 82, 42, 2),
(432, 221, 7, 82, 29, 3),
(433, 232, 11, 82, 37, 2),
(434, 246, 5, 82, 23, 2),
(435, 244, 12, 82, 43, 2),
(436, 234, 6, 82, 24, 4),
(437, 232, 11, 82, 38, 2),
(438, 221, 7, 82, 30, 2),
(439, 227, 3, 82, 10, 2),
(440, 226, 2, 82, 9, 2),
(441, 244, 12, 82, 44, 2),
(442, 232, 11, 82, 39, 2),
(443, 240, 16, 82, 57, 4),
(444, 224, 6, 82, 27, 3),
(445, 232, 11, 82, 40, 1),
(446, 222, 7, 82, 29, 4),
(447, 227, 3, 82, 11, 2),
(448, 240, 16, 82, 58, 3),
(449, 234, 6, 82, 25, 2),
(450, 226, 3, 82, 10, 1),
(451, 232, 11, 82, 41, 1),
(452, 223, 8, 82, 32, 3),
(453, 227, 3, 82, 12, 2),
(454, 231, 5, 82, 20, 2),
(455, 240, 16, 82, 59, 3),
(456, 244, 12, 82, 45, 2),
(457, 246, 7, 82, 28, 2),
(458, 238, 5, 82, 19, 3),
(459, 226, 3, 82, 11, 2),
(460, 221, 12, 82, 42, 2),
(461, 234, 6, 82, 26, 4),
(462, 223, 8, 82, 33, 2),
(463, 240, 16, 82, 60, 4),
(464, 246, 7, 82, 29, 3),
(465, 226, 3, 82, 12, 2),
(466, 245, 4, 82, 14, 2),
(467, 221, 12, 82, 43, 3),
(468, 221, 12, 82, 44, 4),
(469, 224, 7, 82, 28, 3),
(470, 226, 3, 82, 13, 1),
(471, 222, 7, 82, 30, 2),
(472, 238, 5, 82, 20, 2),
(473, 221, 12, 82, 45, 3),
(474, 232, 12, 82, 42, 2),
(475, 227, 3, 82, 13, 3),
(476, 245, 4, 82, 15, 2),
(477, 231, 5, 82, 21, 2),
(478, 234, 6, 82, 27, 2),
(479, 238, 5, 82, 21, 1),
(480, 246, 7, 82, 30, 2),
(481, 223, 10, 82, 34, 2),
(482, 240, 15, 82, 54, 4),
(483, 244, 10, 82, 34, 2),
(484, 240, 15, 82, 55, 4),
(485, 221, 13, 82, 46, 4),
(486, 238, 5, 82, 22, 2),
(487, 224, 7, 82, 29, 3),
(488, 227, 5, 82, 19, 4),
(489, 235, 16, 82, 57, 4),
(490, 232, 12, 82, 43, 2),
(491, 220, 4, 82, 14, 3),
(492, 221, 13, 82, 47, 4),
(493, 232, 12, 82, 44, 2),
(494, 238, 5, 82, 23, 1),
(495, 226, 4, 82, 14, 2),
(496, 227, 5, 82, 20, 2),
(497, 246, 8, 82, 31, 4),
(498, 232, 12, 82, 45, 2),
(499, 240, 15, 82, 56, 3),
(500, 221, 13, 82, 48, 2),
(501, 245, 4, 82, 16, 2),
(502, 224, 7, 82, 30, 3),
(503, 221, 13, 82, 49, 3),
(504, 226, 4, 82, 15, 1),
(505, 227, 5, 82, 21, 3),
(506, 226, 4, 82, 16, 1),
(507, 235, 16, 82, 58, 3),
(508, 244, 11, 82, 37, 4),
(509, 222, 8, 82, 31, 2),
(510, 226, 4, 82, 17, 2),
(511, 238, 6, 82, 24, 2),
(512, 244, 11, 82, 38, 1),
(513, 226, 4, 82, 18, 2),
(514, 221, 15, 82, 54, 2),
(515, 238, 6, 82, 25, 2),
(516, 227, 5, 82, 22, 2),
(517, 244, 11, 82, 39, 4),
(518, 238, 6, 82, 26, 2),
(519, 221, 15, 82, 55, 2),
(520, 224, 8, 82, 31, 3),
(521, 223, 10, 82, 35, 2),
(522, 240, 8, 82, 31, 4),
(523, 231, 5, 82, 22, 3),
(524, 222, 8, 82, 32, 1),
(525, 240, 8, 82, 32, 4),
(526, 246, 8, 82, 32, 2),
(527, 238, 6, 82, 27, 1),
(528, 221, 15, 82, 56, 2),
(529, 232, 13, 82, 46, 2),
(530, 227, 5, 82, 23, 3),
(531, 244, 11, 82, 40, 2),
(532, 245, 4, 82, 17, 2),
(533, 223, 10, 82, 36, 2),
(534, 224, 8, 82, 32, 2),
(535, 240, 8, 82, 33, 3),
(536, 232, 13, 82, 47, 2),
(537, 246, 8, 82, 33, 1),
(538, 226, 5, 82, 19, 2),
(539, 221, 16, 82, 57, 1),
(540, 235, 16, 82, 59, 3),
(541, 222, 8, 82, 33, 2),
(542, 232, 13, 82, 48, 2),
(543, 224, 8, 82, 33, 3),
(544, 245, 4, 82, 18, 3),
(545, 226, 5, 82, 20, 1),
(546, 221, 16, 82, 58, 1),
(547, 246, 10, 82, 34, 2),
(548, 232, 13, 82, 49, 2),
(549, 244, 11, 82, 41, 2),
(550, 238, 7, 82, 28, 2),
(551, 221, 16, 82, 59, 1),
(552, 220, 4, 82, 15, 4),
(553, 223, 11, 82, 37, 2),
(554, 235, 16, 82, 60, 3),
(555, 227, 7, 82, 28, 3),
(556, 234, 11, 82, 37, 2),
(557, 231, 5, 82, 23, 1),
(558, 238, 7, 82, 29, 1),
(559, 221, 16, 82, 60, 1),
(560, 226, 5, 82, 21, 2),
(561, 240, 10, 82, 34, 3),
(562, 227, 7, 82, 29, 1),
(563, 223, 11, 82, 38, 2),
(564, 222, 10, 82, 34, 2),
(565, 226, 5, 82, 22, 1),
(566, 246, 10, 82, 35, 2),
(567, 238, 7, 82, 30, 2),
(568, 224, 10, 82, 34, 3),
(569, 223, 11, 82, 39, 3),
(570, 226, 5, 82, 23, 3),
(571, 234, 11, 82, 38, 3),
(572, 227, 7, 82, 30, 2),
(573, 240, 13, 82, 46, 4),
(574, 244, 13, 82, 46, 3),
(575, 245, 5, 82, 19, 2),
(576, 226, 6, 82, 24, 2),
(577, 246, 10, 82, 36, 4),
(578, 224, 10, 82, 35, 2),
(579, 234, 11, 82, 39, 3),
(580, 244, 13, 82, 47, 4),
(581, 240, 13, 82, 47, 4),
(582, 240, 13, 82, 48, 4),
(583, 244, 13, 82, 48, 3),
(584, 223, 11, 82, 40, 3),
(585, 231, 6, 82, 24, 2),
(586, 224, 10, 82, 36, 3),
(587, 235, 1, 82, 1, 3),
(588, 238, 8, 82, 31, 1),
(589, 222, 10, 82, 35, 2),
(590, 232, 14, 82, 50, 2),
(591, 223, 11, 82, 41, 2),
(592, 246, 11, 82, 37, 2),
(593, 227, 6, 82, 24, 4),
(594, 240, 13, 82, 49, 3),
(595, 234, 11, 82, 40, 2),
(596, 245, 5, 82, 20, 2),
(597, 238, 8, 82, 32, 1),
(598, 232, 14, 82, 51, 2),
(599, 245, 5, 82, 21, 3),
(600, 246, 11, 82, 38, 3),
(601, 220, 4, 82, 16, 4),
(602, 226, 6, 82, 25, 1),
(603, 232, 14, 82, 52, 2),
(604, 226, 6, 82, 26, 1),
(605, 245, 5, 82, 22, 2),
(606, 232, 14, 82, 53, 2),
(607, 246, 11, 82, 39, 2),
(608, 226, 6, 82, 27, 2),
(609, 223, 12, 82, 42, 2),
(610, 227, 6, 82, 25, 2),
(611, 224, 11, 82, 37, 2),
(612, 234, 11, 82, 41, 2),
(613, 244, 13, 82, 49, 3),
(614, 238, 8, 82, 33, 2),
(615, 240, 14, 82, 50, 4),
(616, 222, 10, 82, 36, 2),
(617, 245, 5, 82, 23, 3),
(618, 231, 6, 82, 25, 2),
(619, 246, 11, 82, 40, 1),
(620, 224, 11, 82, 38, 3),
(621, 240, 14, 82, 51, 4),
(622, 227, 6, 82, 26, 3),
(623, 232, 15, 82, 54, 2),
(624, 231, 6, 82, 26, 1),
(625, 223, 12, 82, 43, 2),
(626, 224, 11, 82, 39, 3),
(627, 240, 14, 82, 52, 4),
(628, 231, 6, 82, 27, 1),
(629, 235, 1, 82, 2, 2),
(630, 232, 15, 82, 55, 2),
(631, 223, 12, 82, 44, 2),
(632, 240, 14, 82, 53, 4),
(633, 224, 11, 82, 40, 2),
(634, 246, 11, 82, 41, 2),
(635, 244, 14, 82, 50, 2),
(636, 226, 7, 82, 28, 2),
(637, 232, 15, 82, 56, 2),
(638, 223, 12, 82, 45, 2),
(639, 226, 7, 82, 29, 1),
(640, 227, 6, 82, 27, 1),
(641, 222, 11, 82, 37, 2),
(642, 231, 7, 82, 28, 2),
(643, 244, 14, 82, 51, 4),
(644, 245, 6, 82, 24, 2),
(645, 235, 1, 82, 3, 3),
(646, 246, 12, 82, 42, 2),
(647, 245, 6, 82, 25, 1),
(648, 224, 11, 82, 41, 2),
(649, 222, 11, 82, 38, 2),
(650, 223, 13, 82, 46, 2),
(651, 245, 6, 82, 26, 2),
(652, 240, 12, 82, 42, 4),
(653, 231, 7, 82, 29, 1),
(654, 220, 4, 82, 17, 3),
(655, 246, 12, 82, 43, 2),
(656, 240, 12, 82, 43, 3),
(657, 238, 10, 82, 34, 2),
(658, 244, 14, 82, 52, 2),
(659, 232, 16, 82, 57, 2),
(660, 245, 6, 82, 27, 2),
(661, 223, 13, 82, 47, 2),
(662, 226, 7, 82, 30, 2),
(663, 244, 14, 82, 53, 2),
(664, 223, 13, 82, 48, 2),
(665, 240, 12, 82, 44, 4),
(666, 232, 16, 82, 58, 1),
(667, 222, 11, 82, 39, 2),
(668, 235, 1, 82, 4, 4),
(669, 231, 7, 82, 30, 2),
(670, 234, 12, 82, 42, 4),
(671, 224, 12, 82, 42, 3),
(672, 223, 13, 82, 49, 1),
(673, 246, 12, 82, 44, 4),
(674, 245, 7, 82, 28, 2),
(675, 232, 16, 82, 59, 1),
(676, 240, 12, 82, 45, 3),
(677, 245, 7, 82, 29, 3),
(678, 234, 12, 82, 43, 3),
(679, 246, 12, 82, 45, 2),
(680, 232, 16, 82, 60, 2),
(681, 245, 7, 82, 30, 2),
(682, 222, 11, 82, 40, 2),
(683, 238, 10, 82, 35, 2),
(684, 224, 12, 82, 43, 2),
(685, 244, 15, 82, 54, 2),
(686, 226, 8, 82, 31, 2),
(687, 223, 14, 82, 50, 2),
(688, 231, 8, 82, 31, 2),
(689, 234, 12, 82, 44, 2),
(690, 238, 10, 82, 36, 2),
(691, 246, 13, 82, 46, 4),
(692, 227, 10, 82, 35, 3),
(693, 244, 15, 82, 55, 2),
(694, 223, 14, 82, 51, 2),
(695, 226, 8, 82, 32, 1),
(696, 240, 10, 82, 35, 4),
(697, 222, 11, 82, 41, 3),
(698, 224, 12, 82, 44, 2),
(699, 223, 14, 82, 52, 2),
(700, 227, 10, 82, 36, 4),
(701, 231, 8, 82, 32, 1),
(702, 246, 13, 82, 47, 3),
(703, 226, 8, 82, 33, 2),
(704, 240, 10, 82, 36, 3),
(705, 245, 8, 82, 31, 2),
(706, 235, 1, 82, 5, 2),
(707, 231, 8, 82, 33, 1),
(708, 234, 12, 82, 45, 4),
(709, 223, 14, 82, 53, 2),
(710, 220, 4, 82, 18, 3),
(711, 238, 11, 82, 37, 2),
(712, 244, 15, 82, 56, 4),
(713, 246, 13, 82, 48, 4),
(714, 224, 12, 82, 45, 4),
(715, 245, 8, 82, 32, 2),
(716, 240, 5, 82, 19, 4),
(717, 222, 12, 82, 42, 3),
(718, 246, 13, 82, 49, 3),
(719, 238, 11, 82, 38, 2),
(720, 226, 10, 82, 34, 2),
(721, 231, 10, 82, 34, 2),
(722, 240, 5, 82, 20, 3),
(723, 227, 11, 82, 37, 4),
(724, 245, 8, 82, 33, 2),
(725, 240, 5, 82, 21, 4),
(726, 235, 3, 82, 10, 2),
(727, 244, 16, 82, 57, 4),
(728, 238, 11, 82, 39, 2),
(729, 224, 13, 82, 46, 3),
(730, 240, 5, 82, 22, 3),
(731, 238, 11, 82, 40, 1),
(732, 224, 13, 82, 47, 3),
(733, 226, 10, 82, 35, 1),
(734, 240, 5, 82, 23, 3),
(735, 231, 10, 82, 35, 1),
(736, 244, 16, 82, 58, 4),
(737, 227, 11, 82, 38, 3),
(738, 234, 13, 82, 46, 4),
(739, 224, 13, 82, 48, 3),
(740, 245, 10, 82, 34, 2),
(741, 222, 12, 82, 43, 2),
(742, 235, 3, 82, 11, 4),
(743, 238, 11, 82, 41, 2),
(744, 240, 11, 82, 37, 4),
(745, 240, 11, 82, 38, 4),
(746, 246, 14, 82, 50, 3),
(747, 234, 13, 82, 47, 4),
(748, 227, 11, 82, 39, 2),
(749, 245, 10, 82, 35, 2),
(750, 240, 11, 82, 39, 3),
(751, 220, 5, 82, 19, 4),
(752, 224, 13, 82, 49, 3),
(753, 238, 12, 82, 42, 2),
(754, 222, 12, 82, 44, 3),
(755, 227, 11, 82, 40, 1),
(756, 246, 14, 82, 51, 3),
(757, 231, 10, 82, 36, 2),
(758, 240, 11, 82, 40, 3),
(759, 235, 3, 82, 12, 3),
(760, 245, 10, 82, 36, 2),
(761, 223, 15, 82, 54, 2),
(762, 246, 14, 82, 52, 2),
(763, 234, 13, 82, 48, 4),
(764, 240, 11, 82, 41, 4),
(765, 226, 10, 82, 36, 2),
(766, 222, 12, 82, 45, 3),
(767, 238, 12, 82, 43, 2),
(768, 246, 14, 82, 53, 2),
(769, 223, 15, 82, 55, 1),
(770, 244, 16, 82, 59, 3),
(771, 227, 11, 82, 41, 2),
(772, 234, 13, 82, 49, 3),
(773, 238, 12, 82, 44, 2),
(774, 238, 12, 82, 45, 2),
(775, 223, 15, 82, 56, 1),
(776, 246, 15, 82, 54, 2),
(777, 231, 11, 82, 37, 2),
(778, 224, 14, 82, 50, 3),
(779, 226, 11, 82, 37, 2),
(780, 224, 14, 82, 51, 3),
(781, 222, 13, 82, 46, 2),
(782, 244, 16, 82, 60, 2),
(783, 223, 16, 82, 57, 1),
(784, 246, 15, 82, 55, 1),
(785, 226, 11, 82, 38, 2),
(786, 231, 11, 82, 38, 2),
(787, 245, 11, 82, 37, 2),
(788, 223, 16, 82, 58, 2),
(789, 224, 14, 82, 52, 3),
(790, 226, 11, 82, 39, 3),
(791, 245, 11, 82, 38, 2),
(792, 227, 12, 82, 42, 3),
(793, 246, 15, 82, 56, 2),
(794, 222, 13, 82, 47, 2),
(795, 223, 16, 82, 59, 1),
(796, 234, 16, 82, 57, 3),
(797, 235, 3, 82, 13, 2),
(798, 231, 11, 82, 39, 3),
(799, 224, 14, 82, 53, 3),
(800, 226, 11, 82, 40, 1),
(801, 222, 13, 82, 48, 2),
(802, 238, 13, 82, 46, 1),
(803, 223, 16, 82, 60, 1),
(804, 246, 16, 82, 57, 1),
(805, 238, 13, 82, 47, 1),
(806, 235, 4, 82, 14, 3),
(807, 238, 13, 82, 48, 1),
(808, 226, 11, 82, 41, 2),
(809, 220, 5, 82, 20, 3),
(810, 238, 13, 82, 49, 1),
(811, 227, 12, 82, 43, 3),
(812, 245, 11, 82, 39, 3),
(813, 246, 16, 82, 58, 2),
(814, 224, 15, 82, 54, 3),
(815, 234, 16, 82, 58, 3),
(816, 222, 13, 82, 49, 2),
(817, 235, 4, 82, 15, 4),
(818, 227, 12, 82, 44, 3),
(819, 231, 11, 82, 40, 2),
(820, 224, 15, 82, 55, 2),
(821, 235, 4, 82, 16, 4),
(822, 234, 16, 82, 59, 2),
(823, 235, 4, 82, 17, 4),
(824, 231, 11, 82, 41, 2),
(825, 224, 15, 82, 56, 3),
(826, 240, 6, 82, 24, 4),
(827, 246, 16, 82, 59, 1),
(828, 222, 14, 82, 50, 2),
(829, 235, 4, 82, 18, 4),
(830, 227, 12, 82, 45, 4),
(831, 220, 5, 82, 21, 4),
(832, 245, 11, 82, 40, 1),
(833, 240, 6, 82, 25, 4),
(834, 245, 11, 82, 41, 1),
(835, 222, 14, 82, 51, 2),
(836, 246, 16, 82, 60, 1),
(837, 234, 16, 82, 60, 2),
(838, 224, 16, 82, 57, 2),
(839, 226, 12, 82, 42, 1),
(840, 222, 14, 82, 52, 2),
(841, 227, 13, 82, 46, 3),
(842, 231, 12, 82, 42, 3),
(843, 240, 6, 82, 26, 4),
(844, 224, 16, 82, 58, 2),
(845, 235, 7, 82, 28, 4),
(846, 240, 6, 82, 27, 4),
(847, 226, 12, 82, 43, 1),
(848, 222, 14, 82, 53, 2),
(849, 238, 14, 82, 50, 1),
(850, 227, 13, 82, 47, 2),
(851, 235, 7, 82, 29, 4),
(852, 226, 12, 82, 44, 2),
(853, 238, 14, 82, 51, 2),
(854, 224, 16, 82, 59, 2),
(855, 235, 7, 82, 30, 4),
(856, 238, 14, 82, 52, 2),
(857, 224, 16, 82, 60, 3),
(858, 238, 14, 82, 53, 2),
(859, 227, 13, 82, 48, 3),
(860, 227, 13, 82, 49, 3),
(861, 245, 12, 82, 42, 2),
(862, 245, 12, 82, 43, 2),
(863, 231, 12, 82, 43, 2),
(864, 231, 12, 82, 44, 2),
(865, 220, 5, 82, 22, 4),
(866, 231, 12, 82, 45, 2),
(867, 226, 12, 82, 45, 2),
(868, 238, 15, 82, 54, 2),
(869, 240, 7, 82, 28, 4),
(870, 240, 7, 82, 29, 3),
(871, 220, 5, 82, 23, 3),
(872, 240, 7, 82, 30, 4),
(873, 238, 15, 82, 55, 1),
(874, 238, 15, 82, 56, 1),
(875, 231, 13, 82, 46, 2),
(876, 245, 12, 82, 44, 3),
(877, 234, 15, 82, 54, 2),
(878, 235, 5, 82, 19, 4),
(879, 226, 13, 82, 46, 2),
(880, 231, 13, 82, 47, 2),
(881, 238, 16, 82, 57, 1),
(882, 245, 12, 82, 45, 2),
(883, 238, 16, 82, 58, 1),
(884, 226, 13, 82, 47, 2),
(885, 231, 13, 82, 48, 2),
(886, 234, 15, 82, 55, 4),
(887, 235, 5, 82, 20, 4),
(888, 238, 16, 82, 59, 1),
(889, 235, 5, 82, 21, 4),
(890, 226, 13, 82, 48, 2),
(891, 238, 16, 82, 60, 1),
(892, 231, 13, 82, 49, 2),
(893, 226, 13, 82, 49, 2),
(894, 245, 13, 82, 46, 2),
(895, 234, 15, 82, 56, 3),
(896, 235, 5, 82, 22, 3),
(897, 226, 14, 82, 50, 2),
(898, 245, 13, 82, 47, 2),
(899, 231, 14, 82, 50, 2),
(900, 245, 13, 82, 48, 2),
(901, 226, 14, 82, 51, 2),
(902, 235, 5, 82, 23, 4),
(903, 226, 14, 82, 52, 2),
(904, 245, 13, 82, 49, 1),
(905, 226, 14, 82, 53, 2),
(906, 231, 14, 82, 51, 2),
(907, 226, 15, 82, 54, 2),
(908, 231, 14, 82, 52, 3),
(909, 226, 15, 82, 55, 2),
(910, 226, 15, 82, 56, 2),
(911, 235, 10, 82, 35, 3),
(912, 235, 10, 82, 36, 3),
(913, 231, 14, 82, 53, 2),
(914, 235, 8, 82, 31, 3),
(915, 235, 8, 82, 32, 4),
(916, 220, 6, 82, 24, 4),
(917, 235, 8, 82, 33, 4),
(918, 231, 15, 82, 54, 3),
(919, 234, 5, 82, 19, 2),
(920, 245, 14, 82, 50, 2),
(921, 245, 14, 82, 51, 2),
(922, 234, 5, 82, 20, 2),
(923, 231, 15, 82, 55, 1),
(924, 226, 16, 82, 57, 2),
(925, 220, 6, 82, 25, 4),
(926, 226, 16, 82, 58, 2),
(927, 226, 16, 82, 59, 2),
(928, 245, 14, 82, 52, 2),
(929, 231, 15, 82, 56, 2),
(930, 226, 16, 82, 60, 2),
(931, 234, 5, 82, 21, 3),
(932, 235, 11, 82, 37, 3),
(933, 245, 14, 82, 53, 2),
(934, 234, 5, 82, 22, 3),
(935, 235, 11, 82, 38, 2),
(936, 234, 5, 82, 23, 1),
(937, 235, 11, 82, 39, 3),
(938, 220, 6, 82, 26, 3),
(939, 235, 11, 82, 40, 2),
(940, 235, 11, 82, 41, 3),
(941, 231, 16, 82, 57, 2),
(942, 231, 16, 82, 58, 2),
(943, 234, 8, 82, 31, 2),
(944, 220, 6, 82, 27, 4),
(945, 234, 8, 82, 32, 2),
(946, 231, 16, 82, 59, 1),
(947, 234, 8, 82, 33, 2),
(948, 245, 15, 82, 54, 2),
(949, 235, 12, 82, 42, 3),
(950, 245, 15, 82, 55, 2),
(951, 231, 16, 82, 60, 3),
(952, 235, 12, 82, 43, 3),
(953, 245, 15, 82, 56, 1),
(954, 235, 12, 82, 44, 3),
(955, 234, 14, 82, 50, 2),
(956, 235, 12, 82, 45, 3),
(957, 245, 16, 82, 57, 2),
(958, 245, 16, 82, 58, 2),
(959, 245, 16, 82, 59, 2),
(960, 220, 7, 82, 28, 4),
(961, 235, 13, 82, 46, 3),
(962, 234, 14, 82, 51, 2),
(963, 245, 16, 82, 60, 1),
(964, 235, 13, 82, 47, 3),
(965, 234, 14, 82, 52, 2),
(966, 220, 7, 82, 29, 4),
(967, 234, 14, 82, 53, 2),
(968, 235, 13, 82, 48, 4),
(969, 234, 10, 82, 35, 4),
(970, 235, 13, 82, 49, 3),
(971, 234, 10, 82, 36, 3),
(972, 220, 7, 82, 30, 4),
(973, 235, 14, 82, 50, 3),
(974, 220, 8, 82, 31, 3),
(975, 235, 14, 82, 51, 3),
(976, 235, 14, 82, 52, 3),
(977, 235, 14, 82, 53, 2),
(978, 220, 8, 82, 32, 2),
(979, 220, 8, 82, 33, 3),
(980, 220, 15, 82, 54, 2),
(981, 220, 15, 82, 55, 2),
(982, 220, 15, 82, 56, 2),
(983, 220, 16, 82, 57, 3),
(984, 220, 16, 82, 58, 4),
(985, 220, 16, 82, 59, 4),
(986, 220, 16, 82, 60, 4),
(987, 220, 10, 82, 34, 4),
(988, 220, 10, 82, 35, 3),
(989, 220, 10, 82, 36, 4),
(990, 220, 11, 82, 37, 3),
(991, 220, 11, 82, 38, 2),
(992, 220, 11, 82, 39, 3),
(993, 220, 11, 82, 40, 4),
(994, 220, 11, 82, 41, 3),
(995, 220, 12, 82, 42, 3),
(996, 220, 12, 82, 43, 3),
(997, 220, 12, 82, 44, 3),
(998, 220, 12, 82, 45, 3),
(999, 220, 13, 82, 46, 3),
(1000, 220, 13, 82, 47, 3),
(1001, 220, 13, 82, 48, 3),
(1002, 220, 13, 82, 49, 3),
(1003, 220, 14, 82, 50, 3),
(1004, 220, 14, 82, 51, 3),
(1005, 220, 14, 82, 52, 3),
(1006, 220, 14, 82, 53, 3),
(1007, 201, 1, 82, 1, 4),
(1008, 201, 1, 82, 2, 3),
(1009, 201, 1, 82, 3, 4),
(1010, 201, 1, 82, 4, 2),
(1011, 201, 1, 82, 5, 4),
(1012, 201, 15, 82, 54, 2),
(1013, 201, 15, 82, 55, 4),
(1014, 201, 15, 82, 56, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mat_answer_proof`
--

CREATE TABLE `mat_answer_proof` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `proof` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(2, 'People', '<strong>Ensure the team has the tools to achieve zero harm.</strong><br/>\r\nRisk-based tools are provided to enable sustainable excellent SHE results in our OMEs. These tools aim to align SHE activities globally and drive regional standardisation where possible. These include management systems, business processes, enabling technology, procedures and toolkits. Utilising these tools, OMEs can meet SHE performance requirements, consistent with applicable legal requirements and improved maturity levels.', 'people.svg'),
(3, 'Process', '<strong>Ensure team members are fit and skilled to achieve zero harm.</strong><br/>\r\nPeople-related practices are used to enable sustainable zero harm. Our workforce is enabled through leaders who create a zero harm climate. Leaders focus on zero harm behaviour, learning, skills and competency development. A competent, fit-for-purpose SHE function provides the necessary SHE support to OMEs.\r\n', 'process.svg'),
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
(1, 1, '1.1 Strategy', 1, 'a'),
(2, 1, '1.2 Targets and Plans', 2, 'b'),
(3, 1, '1.3 Leadership', 3, 'c'),
(4, 2, '2.1 Training and Skills', 1, 'd'),
(5, 2, '2.2 Human Capital', 2, 'e'),
(6, 2, '2.3 Culture and Behaviour', 3, 'f'),
(7, 2, '2.4 Engagement', 4, 'g'),
(8, 3, '3.1 Risk Management', 1, 'h'),
(10, 3, '3.2.1 Project Management', 2, 'j'),
(11, 3, '3.2.2 Operations and Maintenance', 3, 'k'),
(12, 3, '3.2.3 Supply Chain', 4, 'l'),
(13, 3, '3.3 Systems', 5, 'm'),
(14, 3, '3.4 Governance', 6, 'n'),
(15, 4, '4.1 Measurement', 1, 'o'),
(16, 4, '4.2 Improvement', 2, 'p');

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
  `session_id` int(11) DEFAULT NULL,
  `desired` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mat_performance_mc`
--

CREATE TABLE `mat_performance_mc` (
  `id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `answer` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_performance_mc`
--

INSERT INTO `mat_performance_mc` (`id`, `question`, `element`, `session_id`, `answer`, `user`) VALUES
(2, 2, 1, 82, 3, 221),
(1, 1, 1, 82, 4, 221);

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

-- --------------------------------------------------------

--
-- Table structure for table `mat_proof_types`
--

CREATE TABLE `mat_proof_types` (
  `id` int(11) NOT NULL,
  `proof_type_id` int(11) NOT NULL,
  `proof_type_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(1, 1, '1. Group SHEQ Policy', 'A SHEQ Policy does not exist or is only a paper exercise with no visibility or buy-in from leaders.', 'A formal SHEQ Policy exists, is endorsed by the CEO and is used by the SHEQ team to provide direction.', 'Leaders commit to the SHEQ Policy and communicate it.', 'The SHEQ Policy is consistently used by teams to guide SHEQ Strategy and improvement plans.', 1),
(2, 1, '2. Commitment to Zero Harm direction', 'Zero Harm is a theoretical idea and is supported only by some.', 'Most leaders and teams understand and support Zero Harm. The SHEQ team drives improvement of SHEQ practices.', 'All leaders and teams are actively involved in achieving Zero Harm which is evident in continuously improving SHEQ practices.', 'All leaders and teams\npro-actively work together to embed SHEQ practices which is evident in the achievement of Zero Harm milestones.', 2),
(3, 1, '3. Group SHEQ Strategy', 'No formal SHEQ Strategy exists, or if it does, it has limited visibility.', 'The SHEQ Strategy considers the BIGGER values, Group strategy, stakeholder requirements, SHEQ risks and relevant legislation. It is visible and communicated to\nall leaders.', 'The SHEQ Strategy is translated into SHEQ objectives and plans and cascaded to teams, taking the teams SHEQ\nperformance and risks into account.', 'The SHEQ Strategy is actively implemented by leaders and teams and it provides a clear roadmap to achieving Zero Harm. Innovation is an integrated part of the SHEQ strategy to reduce SHEQ risks.', 3),
(4, 1, '4. SHEQ Framework and Fundamentals', 'SHEQ practices are driven by fear or as a reaction\nto incidents. SHEQ Fundamentals are seen as pointless.', 'Leaders understand the SHEQ Fundamentals\nand the SHEQ Framework is utilised to drive standardised SHEQ practices.', 'Teams know the SHEQ Fundamentals and implement risk-based SHEQ management through the SHEQ Framework.', 'Teams reduce SHEQ risks by embedding SHEQ Fundamentals and prioritised continuous embedding and improvement of SHEQ practices.', 4),
(5, 1, '5. SHEQ Resources (people, time and funding)', 'No or inadequate resources are available to execute the SHEQ Strategy.', 'Resources are made available to implement prioritised parts of the SHEQ Strategy.', 'Adequate resources are actively deployed and used to drive the implementation of the SHEQ Strategy.', 'Resources are available and deployed to actively drive risk reduction, improvement of SHEQ practices and embedding of the\nSHEQ Strategy.', 5),
(6, 2, '6. SHEQ milestones and targets', 'Are not always clear and are cascaded to a very limited extent.', 'Are SMART, based on the SHEQ Strategy and are communicated and cascaded to all operations levels.', 'Are stretched and set based on desired risk reduction areas and an improvement pull.', 'Drive a culture of sustainable achievement of Zero Harm by incentivising the\nright behaviours and benchmarking against industry leaders.', 1),
(7, 2, '7. Leading and lagging measurements', 'Limited measurement and reporting which is mostly focused on lagging measurements.', 'Standardised lagging measurements are implemented and data collection methods for these are established.', 'Standardised and risk-based leading measurements are implemented. The SHEQ measurement structure is integrated into a business management system for data capturing, processing and reporting.', 'Interdependencies between leading and lagging measurements are\nunderstood and managed to continuously improve SHEQ performance and to reduce risk exposure.', 2),
(8, 2, '8. SHEQ plans and resourcing', 'SHEQ plans don?t exist and/or are not adequately resourced.', 'SHEQ plans are developed, adequately resourced (people, time and\nfunding), prioritised and broken down into detail actions, responsibilities and timelines.', 'SHEQ plans are derived  from analysing gaps, leading measurement trends and SHEQ risks. SHEQ plan execution outcomes are incorporated into individual performance plans.', 'Leaders collaborate across the Group to ensure detailed planning trade-offs optimise resources and SHEQ\nplan execution.', 3),
(9, 2, '9. Execution tracking and corrective action', 'SHEQ plan execution is not tracked and/or corrective action is not taken for identified deviations.', 'SHEQ plan execution is tracked to ensure focus on high risk areas. Leaders actively drive SHEQ plan execution and provide execution support.', 'SHEQ plan execution is integrated into Group level tracking. Deviations are identified and corrective action taken timeously.', 'Teams take full ownership of the embedding of SHEQ plans which is evident in SHEQ performance gaps being closed sustainably.', 4),
(10, 3, '10. Accountable leadership', 'Leaders are only visible during or after SHEQ incidents and create a culture of fear and blame. The SHEQ function mainly takes ownership for SHEQ.', 'Leaders are visibly committed to Zero Harm.\nLeaders enable teams to fulfil their SHEQ responsibilities and lead by example.', 'Leaders inspire Zero Harm behaviour and proactively address SHEQ performance improvement through implementing of mature SHEQ practices.', 'Leaders consistently set the tone for Zero Harm. They create a climate where individuals take personal accountability for achieving SHEQ targets and plans and are recognised for it.', 1),
(11, 3, '11. Empowered and engaged people', 'SHEQ is not a way of life and people are mostly disengaged.', 'Every team member understands what is required to achieve Zero Harm, is competent and feels empowered to execute their daily jobs with Zero Harm.', 'Teams are proactively involved in SHEQ programs and people are individually committed to Zero Harm to themselves, others and the environment.', 'Our people consistently live the desired SHEQ behaviours to demonstrate that Zero Harm is a way\nof life. All people are passionate about achieving Zero Harm.', 2),
(12, 3, '12. Risk-based SHEQ approach', 'There is limited understanding of\nSHEQ risks and controls in teams.', 'Top SHEQ risks and related controls are identified, assessed, prioritised and implemented to ensure legal compliance.', 'Risk-based SHEQ practices are applied in teams. Risk controls are monitored, action is taken proactively to ensure effectiveness and assurance is given on all critical controls.', 'Integrated management of SHEQ risks across disciplines. Learnings from control failures are implemented, checked for effectiveness and embedded. Controls are improved continuously to reduce risk.', 3),
(13, 3, '13. Continuous improvement mindset', 'SHEQ practices are mostly dependent on the team?s experience, and not embedded. The team has a limited view on gaps or improvement areas.', 'SHEQ practices are compliant with legal requirements which are executed through\nprocedures, SOPs, COPs, works instructions, etc.', 'Improvement areas in SHEQ practices are\nidentified proactively based on an understanding of\nthe maturity of practices and actioned to achieve improved SHEQ results.', 'A mindset of continuous improvement is embedded and drives the achievement of sustainable Zero\nHarm results.', 4),
(14, 4, '14. SHEQ competencies and training plans', 'Generic SHEQ competencies and plans without consideration of risk exposure.', 'Job-specific SHEQ competencies are identified based on risk exposure and are included in training matrices.', 'Job-specific SHEQ competencies are updated based on learnings from incidents, audit findings and best practices.', 'Are updated in anticipation of emerging SHEQ risk trends or changes in the working environment.', 1),
(15, 4, '15. Service provider SHEQ competencies', 'Are not formally defined.', 'There are formally-defined SHEQ competencies for Service Providers and minimum SHEQ training\nis provided.', 'SHEQ competencies for Service Providers are reviewed to include\nlearnings from incidents, audit findings and\nbest practices.', 'Through mutually beneficial partnerships and\ncollaboration, Service Provider SHEQ competencies are established and maintained.', 2),
(16, 4, '16. SHEQ training content', 'Includes the bare minimum.', 'Includes all legislative requirements.', 'Includes relevant SHEQ risks and controls and is updated regularly to include control effectiveness and audit findings.', 'Are updated regularly to address emerging SHEQ trends and risks, as well\nas learnings from incidents and best practices.', 3),
(17, 4, '17. Coaching and mentoring', 'Not a practice among leaders.', 'First line leaders play a coaching role to ensure that their teams execute their jobs with Zero Harm.', 'Coaches and mentors play a key role in on-the- job training to enable continuous improvement towards Zero Harm.', 'Teams coach each other as part of a culture of continuous improvement towards Zero Harm.', 4),
(18, 4, '18. SHEQ training effectiveness', 'Is not reviewed at all or in a haphazard way.', 'The effectiveness of SHEQ training interventions\nis reviewed based on theoretical ?pass rate?, and any gaps are closed.', 'Managers monitor how acquired skills are applied and adapt SHEQ training interventions to ensure the specific learning outcome is met.', 'The embedding of SHEQ competences is evident in the reduction of repeat incidents and improved SHEQ results.', 5),
(19, 5, '19. SHEQ\naccountabilities', 'Are not always defined or documented and don?t take SHEQ risks into account.', 'Are formally documented and reflect SHEQ risks and controls in job profiles.', 'Are translated into individual performance agreements and people are developed to fulfil their SHEQ accountabilities.', 'People take full ownership for their SHEQ accountabilities.\nTeams apply SHEQ behaviours in daily activities.', 1),
(20, 5, '20. Structure, recruitment and selection', 'SHEQ requirements are not considered in the organisational structure or the recruitment and selection processes.', 'The organisational structure is designed to ensure safe and productive operations. People are recruited and selected considering SHEQ requirements to ensure competent teams.', 'SHEQ-critical positions are identified and succession plans are developed to ensure these positions are filled by competent people timeously.', 'Multiple individuals are coached and trained to improve SHEQ experience and develop the internal resource pool for SHEQ- critical positions.', 2),
(21, 5, '21. SHEQ function structure', 'SHEQ structure not fully implemented and/or under-resourced.', 'Designed SHEQ structure implemented and adequately resourced. SHEQ support formally agreed with leaders.', 'The SHEQ structure matches the SHEQ risk profile of the business. The SHEQ team enables operations teams on the Zero Harm journey.', 'An optimised SHEQ structure enables the execution of\nthe SHEQ Strategy through true partnership with operations teams.', 3),
(22, 5, '22. SHEQ performance and consequence management', 'Inconsistent performance and consequence management process.', 'Individuals are held accountable for their SHEQ performance.\nSHEQ-related consequence management is consistently and fairly applied.', 'Individuals take ownership of SHEQ performance\nand leaders coach for improvement. There is a clear distinction made between violations\nand errors.', 'Teams take ownership  for SHEQ behaviour  which is evident in SHEQ performance. SHEQ errors and violations have been reduced through effective\nconsequence management and other relevant management tools.', 4),
(23, 5, '23. SHEQ recognition', 'Recognition is mostly given for production performance and SHEQ performance is driven by meeting legal requirements.', 'Recognition schemes include SHEQ performance elements.', 'Team recognition reinforces positive SHEQ behaviours.', 'Continuous informal SHEQ recognition forms part of the culture.', 5),
(24, 6, '24. Life Saving Behaviours (LSBs)', 'Are not formally defined and/or not implemented.', 'Formally defined LSBs are implemented and drive awareness for Zero Harm.', 'Are reviewed and updated regularly. Implemented LSBs results in reduced high severity incidents.', 'Are updated in anticipation of emerging SHEQ risk trends or changes in the working environment. LSBs are totally embedded in the culture.', 1),
(25, 6, '25. SHEQ climate and behaviour transformation', 'Some individuals still perform work unsafely and try to hide incidents for fear of reprisal.', 'Individuals are empowered to take personal accountability for SHEQ. No work is done unless it is done safely.', 'The SHEQ climate is measured in regular climate diagnostics which are done in high-risk areas and used to drive SHEQ improvement actions.', 'Leaders create Zero Harm climate of openness, care, trust and accountability. This is evident in sustained SHEQ performance and behaviours.', 2),
(26, 6, '26. Incident reporting culture', 'Some incidents are not reported.', 'A reporting culture exists.', 'Incident reporting is viewed as a way to improve SHEQ risk management.', 'Unsafe behaviours and practices are challenged without fear of unfair negative consequences. Solutions are co-created and implemented.', 3),
(27, 6, '27. Behaviour-based programme', 'No behaviour-based programme exists or is not effectively implemented.', 'A standardised behaviour- based programme is implemented and supported by leaders and teams.', 'Observations from the behaviour-based\nprogramme are analysed and barriers are removed to drive behaviour improvement.', 'The behaviour-based programme is fully embedded, owned and driven by the team.\nIt is used to create a climate for Zero Harm.', 4),
(28, 7, '28. SHEQ\ncommunication and engagement', 'SHEQ communication is done inconsistently and/or restricted to SHEQ incidents.', 'A basic SHEQ communication and engagement plan is in place and executed mostly by the SHEQ function.', 'SHEQ communication and engagement plans are informed by good understanding of the\ncurrent and required levels of Zero Harm engagement of relevant stakeholders.\nLeaders take ownership of SHEQ communication\nwith teams.', 'The plans are informed by the teams? progress on the Zero Harm journey. Stakeholders actively participate in two-way communication opportunities created\nby leaders.', 1),
(29, 7, '29. Change\nmanagement processes', 'Change management is done haphazardly.', 'The SHEQ team monitors changes which can impact the Zero Harm engagement of stakeholders.', 'Senior leaders implement measures to mitigate\nthe impact on Zero Harm as part of an integrated change plan.', 'The potential impact of planned changes on Zero Harm are assessed with relevant stakeholders and all work together to mitigate the risk of compromising Zero Harm.', 2),
(30, 7, '30. Effectiveness of SHEQ communication\nand engagement', 'No or very little communication effectiveness monitoring is done. Communication and engagement is not effective.', 'Effectiveness is assessed based on informal checks and SHEQ audits. Minimum requirements are met.', 'Effectiveness is assessed in a structured way and\nanalysed to understand root causes of SHEQ stakeholder engagement. Improvement actions are agreed with stakeholders.', 'Effectiveness is continuously assessed through close relationship management of stakeholders. Stakeholders are keen ambassadors of Zero Harm.', 3),
(31, 8, '31. SHEQ risk profile', 'A team SHEQ risk profile does not exist or is developed using inconsistent processes. SHEQ risk profiles are not reviewed.', 'A team SHEQ risk profile is developed using the Group risk matrix and risk\nmanagement process and is reviewed at least annually.', 'Teams understand their highest SHEQ risks. SHEQ profiles are reviewed when unwanted events occur, recur or control failures trend upward.', 'SHEQ risk profiles drive risk-based decision making. Lessons from SHEQ risk profile reviews are embedded.', 1),
(32, 8, '32. SHEQ risk controls', 'SHEQ risk controls are identified on an ad hoc basis, are managed by the SHEQ function and control effectiveness is rarely reviewed.', 'High SHEQ risks are identified, analysed and understood. Related risk controls are implemented and managed by teams.', 'A structured process is followed to manage critical control effectiveness and to give first level assurance of its effectiveness.', 'SHEQ risk control effectiveness is continuously improved and used as a leading indicator to improve SHEQ performance.', 2),
(33, 8, '33. Incident\nmanagement', 'SHEQ incidents are investigated informally with no root cause analysis and limited management of corrective actions.', 'The Group incident investigation procedure is followed, and root causes are determined for all incidents. Preventive and corrective actions are managed formally.', 'Investigations are prioritised and resourced based on the potential or actual severity of incidents. Thorough RCAs are done, and root causes are addressed sustainably.', 'Actions and learnings from incidents are shared, applied and embedded to prevent occurrence and recurrence of incidents.\nThe effectiveness of actions is monitored.', 3),
(34, 10, '34. Plan/design for project alignment with SHEQ requirements', 'Little consideration of SHEQ requirements for projects.', 'SHEQ and legal requirements, including risk studies are considered during the planning/design phase for a project.', 'Future SHEQ requirements are considered in trade-off decisions for projects. SHEQ risk studies drive improved project design standards.', 'Industry leading SHEQ technologies are sustainably implemented. Risk reduction practices are built into project planning/designs.', 1),
(35, 10, '35. Project\nimplementation', 'Project cost and schedule drive project performance. An MOC process is rarely used. Pre-start up SHEQ reviews are done as a\ntick-box exercise. End-of-job documents are incomplete.', 'SHEQ requirements are embedded in the way projects are executed. All end-of-job documents are complete and accurate.', 'Pre-start up SHEQ  reviews are done to ensure SHEQ risk controls are implemented prior to start up. A structured MOC\nprocess is always followed.', 'A Zero Harm mindset is embedded in project execution teams.\nProject objectives of Zero Harm, project cost and schedule are not in\nconflict, but are optimised to deliver a sustainable Zero Harm result.', 2),
(36, 10, '36. Closure/End-of life projects', 'Closure projects are started because of external pressures.', 'Closure/end-of-life decisions are based on minimum legal compliance. Closure projects are planned for and resources are provided.', 'Closure decisions are based on the mitigation of future risks. Rehabilitation risks are mitigated proactively during plant design.', 'Leaders actively pursue opportunities to minimise the SHEQ impact of operations closure.\nLessons learned from previous closures are incorporated into the project management process and procedures.', 3),
(37, 11, '37. Zero Harm work practices (people and process-related)', 'Zero Harm work practices are inconsistently applied and do not exist in all high-risk areas.', 'Zero Harm work practices are consistently applied. Leaders provide the necessary resources to enable safe operations.', 'Zero Harm work practices focus on effectiveness of controls.', 'Teams have embedded Zero Harm work practices. SHEQ risks are reduced through integrated improvements of Zero Harm work practices.', 1),
(38, 11, '38. Operations and Maintenance Procedures', 'Procedures are not in place in all high-risk areas and/or do not address SHEQ risks and controls.', 'Procedures are in place for all high-risk areas and address SHEQ risks and controls. Procedures are periodically reviewed.', 'Operations teams actively use, review and optimise procedures to ensure that controls are executed effectively.', 'The use and adherence to procedures are embedded as key behaviours to reduce SHEQ risks.', 2),
(39, 11, '39. Emergency response plans', 'Emergency response plans are not aligned with credible risk scenarios.', 'Emergency response plans are developed, based on credible high risk scenarios and are implemented.', 'Regular training, exercises and communication of emergency response plans result in effective plans.', 'When executed, emergency response plans credibly reduce negative consequences for people,\nassets and the environment.', 3),
(40, 11, '40. Management of Change (MOC) process', 'Technical changes are not consistently reviewed through an MOC process.', 'A structured MOC process is in place and implemented consistently for technical changes.', 'SHEQ risks from technical changes are proactively managed through an integrated MOC system.', 'The MOC process is seen as a key enabler of operating envelope improvement actions.', 4),
(41, 11, '41. Asset integrity', 'SHEQ critical equipment is not consistently identified and managed through maintenance strategies.', 'All SHEQ critical equipment is identified and managed through maintenance strategies and meets SHEQ legal requirements.', 'A list of SHEQ critical equipment is regularly updated and maintenance strategies are reviewed based on changes to SHEQ risks or controls.', 'Engineering and operations teams consistently collaborate to improve maintenance strategies which reduce SHEQ risks.', 5),
(42, 12, '42. Supplier, service provider and customer SHEQ management', 'SHEQ requirements are not specified in contracts and/or supplier, service provider and customer SHEQ performance is not evaluated.', 'Contracts specify SHEQ requirements and are monitored by contract owners.', 'Risk-based evaluations of supplier, service provider and customer SHEQ performance are analysed and discussed with relevant stakeholders regularly.', 'Contract owners and suppliers, service providers and customers work together to\nreduce SHEQ risks and improve performance.', 1),
(43, 12, '43. Product safety', 'Risk-based processes for the evaluation, registration, transportation and\nstorage of procured or manufactured products are inconsistently followed.', 'Risk-based processes for the evaluation, registration, transportation and storage\nof procured or manufactured products are followed in\na structured and legally compliant way.', 'Product risks are well understood throughout the product life cycle. Plans are co-created with suppliers, service providers and customers to reduce SHEQ risks related to products.', 'Product safety industry trends are analysed and benchmarked. Collaborative efforts with customers\nand suppliers drives the strategic intent of product safety improvement.', 2),
(44, 12, '44. Product and material transportation', 'Product and material transportation risks are rarely considered.', 'Product and material transportation legal and industry safety\nrequirements are adhered with and monitored.', 'Product and material transportation risk management plans are in place and are regularly reviewed and improved.', 'The improvement of product and material transportation SHEQ performance is a collaborative effort between all stakeholders to achieve Zero Harm.', 3),
(45, 12, '45. Product quality', 'Customer and legal requirements are not consistently met.', 'Customer and legal requirements are consistently met and quality verification is performed.', 'A relationship is established with customers to better understand quality requirements\nand improvement plans are actively managed.', 'Product quality is achieved consistently, resulting in\nit being a strategic driver for winning orders and maintaining key customers.', 4),
(46, 13, '46. Standardised SHEQ processes', 'SHEQ processes are not standardised.', 'Standardised SHEQ processes are defined, aligned with SHEQ performance requirements and consistently applied by teams.', 'Optimised SHEQ processes are driven by assigned owners and enable leaders to manage team-specific SHEQ risks effectively.', 'Integrated SHEQ processes enable the continuous improvement of SHEQ performance.', 1),
(47, 13, '47. Documented SHEQ procedures', 'SHEQ procedures are inconsistently applied.', 'SHEQ procedures exist for all standardised SHEQ\nprocesses, are implemented and maintained. A formal document management process is in place for\nall procedures.', 'SHEQ procedures are reviewed at defined intervals considering changes in the SHEQ risk profile, control effectiveness trends and exposure as well as SHEQ performance.', 'SHEQ procedures and related training\nmaterial are consistently updated with learnings from investigations, observations, findings and performance trends.', 2),
(48, 13, '48. Enabling tools and technology', 'Some SHEQ processes are enabled by non- standardised tools.', 'The execution of standardised SHEQ processes are enabled with standardised tools.', 'The execution of standardised SHEQ processes are enabled by integrated technology systems.', 'SHEQ process tools\nand systems are used to enable SHEQ performance improvement through better integration, analysis and decision-making.', 3),
(49, 13, '49. Effectiveness of SHEQ processes', 'The effectiveness of SHEQ processes is not assessed.', 'The effectiveness of\nSHEQ processes is assessed through external and internal audits.', 'The effectiveness of SHEQ processes is continuously assessed through team feedback and formally in management reviews. Improvement actions are continuously driven.', 'Resources and lessons learned are shared across the Group to improve the execution of SHEQ processes.', 4),
(50, 14, '50. Governance structure and meetings', 'SHEQ governance roles and responsibilities are not always clear, meetings don?t exist and/or are not held consistently.', 'SHEQ governance roles and responsibilities are well defined and applied.\nSHEQ governance meetings monitor compliance and SHEQ performance.', 'SHEQ governance meetings follow a risk-based\nagenda aligned with SHEQ performance requirements.', 'SHEQ governance meetings are used to monitor all assurance outcomes as well as the embedding of learnings from assurance deviations.', 1),
(51, 14, '51. Updates to legislation and standards', 'No process/system is in place to keep up to\ndate with new/amended legislation and standards.', 'A process exists to ensure new/amended legislation is communicated, understood and acted upon.', 'New/amended legislation is proactively incorporated into SHEQ processes and performance requirements.', 'Business actively plans  for new/amended legislation well in advance of deadlines.', 2),
(52, 14, '52. SHEQ\ndocumentation', 'No formal SHEQ document governance process exists for SHEQ legal requirements.', 'A formal document governance process exists for SHEQ legal requirements.', 'All SHEQ documentation is easily accessible across the business.', 'SHEQ document management is fully integrated into the Group document management system.', 3),
(53, 14, '53. Assurance activities', 'Audits and assessments  are not risk based and focus on management system compliance. Findings are not consistently actioned\nor shared.', 'Internal and external audits are in place and findings are actioned timeously.', 'Focused 1st level assurance activities monitor team specific critical controls for high risk areas. Findings are analysed to identify root causes and action is taken to improve effectiveness.', 'SHEQ assurance is integrated and optimised to reduce the resource burden and provide a combined view of SHEQ\nassurance results. Learnings from assurance deviations are embedded.', 4),
(54, 15, '54. SHEQ data capturing', 'SHEQ data is not reliable.', 'SHEQ data is captured according to procedure on a platform. The SHEQ team verifies data integrity.', 'Data capturing procedures are measured for effectiveness. Automated systems manage data  input quality for lagging and leading measurements.', 'Automated systems allow real-time reporting and data mining which is used to improve decision making.', 1),
(55, 15, '55. SHEQ reporting', 'Informal reporting focus on lagging measurements.', 'A formal reporting system is used to measure leading and lagging measurements against targets and historical trends.', 'A standardised reporting system enables comprehensive analysis of risk-based leading and lagging measurements.', 'There is only one source of truth for SHEQ results\nand leading measurements are used to forecast\nSHEQ performance gaps, exposure and proposed actions.', 2),
(56, 15, '56. SHEQ performance review', 'Review of SHEQ results and identification of improvement opportunities happens very rarely.', 'SHEQ lagging measurement results are analysed\nand reviewed to identify improvement actions.', 'SHEQ performance gaps for leading measurements are analysed, root causes\nidentified and used to inform management decisions and improvement plans.', 'Improvement actions drive achievement of SHEQ objectives and targets\nand reduce SHEQ risks.', 3),
(57, 16, '57. Review SHEQ performance and practices', 'Performance gaps not always understood.', 'A plan, do, review, improve cycle is followed to understand current SHEQ performance and practices to identify gaps.', 'A process is in place\nto monitor and improve SHEQ performance\nand practices.', 'Teams own their SHEQ performance\nand practice review and systems enable continuous improvement thereof.', 1),
(58, 16, '58. Develop and prioritise SHEQ improvement plans', 'Not all teams have improvement plans and/or plans are not prioritised.', 'Improvement plans exist and are prioritised based on top SHEQ risks, legal compliance, urgency and resource availability.', 'Leaders set the tone by prioritising improvement plans based on SHEQ risk reduction and individuals are actively engaged\nin developing practical solutions.', 'Cross-functional teams work together to develop and embed industry- leading SHEQ improvement solutions.', 2),
(59, 16, '59. Implement and embed improvement actions', 'Improvement plans are driven by the SHEQ team. Improvement actions and benefits are not formally tracked.', 'Individuals are assigned personal responsibility for improvement actions and are empowered to execute it. Actions are tracked to completion.', 'SHEQ improvements are implemented as a priority and embedded by developing enabling processes and tools\nwhich ensure sustainability of the solution.\nImprovement action effectiveness is measured.', 'SHEQ improvements are embedded through training, change\nmanagement and behaviour programmes. Innovative ideas are considered\nand implemented where possible.', 3),
(60, 16, '60. Management review', 'The effectiveness of the SHEQ Framework is not measured.', 'The suitability, adequacy and effectiveness of\nthe SHEQ Framework is formally reviewed.', 'Learnings from audits and assessments are used\nto proactively identify improvement areas for the SHEQ Framework.', 'Employees on all levels contribute to the improvement of the SHEQ Framework.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mat_session`
--

CREATE TABLE `mat_session` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `session_name` varchar(500) NOT NULL,
  `access_pin` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mat_session`
--

INSERT INTO `mat_session` (`id`, `company_id`, `session_name`, `access_pin`, `created_at`) VALUES
(82, 2, 'Oct 2019', 11019, '2020-01-27 07:56:26'),
(84, 1, 'Demo', 12345, '2020-01-31 12:45:53');

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
  `hazard_desc` text,
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
(1, 1, '2', 40, 'John Doe', '2020-01-22', 'Test', 'Test', 'Test', 'Test', 201, 'Test', 1, 'Test', 5, 5, 'Test', 0, 0, 0, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"3\",\"9\"]', '[\"2\",\"4\"]', 4, 'Test', 4, 5, 'Test', 2),
(2, 3, 'AECI', 123, 'test', '2020-01-28', 'Plant', 'Process', '', 'Test hazard', 1, 'Engineering', 1, 'Test event', 1, 4, '', 3, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"1\"]', '[\"9\"]', 2, 'not neccessary', 1, 0, '', 0),
(3, 4, '2', 10, 'asdf,asf ', '2020-01-28', 'Workshop', 'receiving', '', 'heights', 222, 'mr x', 2, 'Fall from heights', 1, 3, '', 1, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"2\",\"4\"]', '[\"1\",\"3\"]', 4, 'xxx', 2, 4, 'xxx', 3);

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
(1, 'Test'),
(2, 'Heights');

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
(4, '1', 'Gas masks', 5),
(9, '1', 'new preventive control', 0),
(10, '1', 'New prevevtive', 0);

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
(1, 1, 1, 'Exposure count', 'exposure_count', '[{\r\n    \"option_id\": \"1\",\r\n    \"option_value\": \"1\"    \r\n},\r\n{\r\n    \"option_id\": \"2\",\r\n    \"option_value\": \"10\"\r\n},\r\n{\r\n    \"option_id\": \"3\",\r\n    \"option_value\": \"25\"\r\n},\r\n{\r\n    \"option_id\": \"4\",\r\n    \"option_value\": \"50\"   \r\n},\r\n{\r\n    \"option_id\": \"5\",\r\n    \"option_value\": \"100\"    \r\n}]', NULL),
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
-- Indexes for table `com_company`
--
ALTER TABLE `com_company`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `mat_session`
--
ALTER TABLE `mat_session`
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
-- AUTO_INCREMENT for table `com_company`
--
ALTER TABLE `com_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `template_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `com_invite_attendees`
--
ALTER TABLE `com_invite_attendees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `com_manager_notify`
--
ALTER TABLE `com_manager_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `com_user`
--
ALTER TABLE `com_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `com_user_roles`
--
ALTER TABLE `com_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mat_actions_measure`
--
ALTER TABLE `mat_actions_measure`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_actions_milestone`
--
ALTER TABLE `mat_actions_milestone`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_actions_results`
--
ALTER TABLE `mat_actions_results`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mat_actions_risks`
--
ALTER TABLE `mat_actions_risks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_actions_victory`
--
ALTER TABLE `mat_actions_victory`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_answer_complete`
--
ALTER TABLE `mat_answer_complete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `mat_answer_desired`
--
ALTER TABLE `mat_answer_desired`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `mat_answer_mc`
--
ALTER TABLE `mat_answer_mc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT for table `mat_answer_proof`
--
ALTER TABLE `mat_answer_proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `mat_category`
--
ALTER TABLE `mat_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mat_elements`
--
ALTER TABLE `mat_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_performance_mc`
--
ALTER TABLE `mat_performance_mc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `mat_proofs`
--
ALTER TABLE `mat_proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mat_proof_types`
--
ALTER TABLE `mat_proof_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mat_questions`
--
ALTER TABLE `mat_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `mat_session`
--
ALTER TABLE `mat_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `risk`
--
ALTER TABLE `risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `risk_cat`
--
ALTER TABLE `risk_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
