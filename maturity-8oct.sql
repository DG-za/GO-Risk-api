-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 03:01 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maturity`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions_measure`
--

CREATE TABLE `actions_measure` (
  `id` int(255) NOT NULL,
  `element` int(11) NOT NULL,
  `measure` text NOT NULL,
  `victory` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actions_milestone`
--

CREATE TABLE `actions_milestone` (
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
-- Table structure for table `actions_results`
--

CREATE TABLE `actions_results` (
  `id` int(255) NOT NULL,
  `element` int(11) NOT NULL,
  `results` text NOT NULL,
  `victory` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actions_risks`
--

CREATE TABLE `actions_risks` (
  `id` int(255) NOT NULL,
  `element` int(11) NOT NULL,
  `risk` text NOT NULL,
  `victory` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actions_victory`
--

CREATE TABLE `actions_victory` (
  `id` int(20) NOT NULL,
  `element` int(11) NOT NULL,
  `definition` text NOT NULL,
  `teammembers` text NOT NULL,
  `performance_elements` varchar(255) NOT NULL,
  `focusareaname` varchar(255) NOT NULL,
  `focusareaowner` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answer_complete`
--

CREATE TABLE `answer_complete` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_complete`
--

INSERT INTO `answer_complete` (`id`, `user`, `element`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 6),
(6, 1, 1),
(7, 203, 1),
(8, 203, 2),
(9, 203, 3),
(10, 203, 4),
(11, 203, 6),
(12, 203, 5),
(13, 203, 7),
(14, 203, 8),
(15, 203, 10),
(16, 203, 9),
(17, 203, 12),
(18, 203, 11),
(19, 203, 13),
(20, 203, 14),
(21, 203, 15),
(22, 203, 16),
(23, 1, 16),
(24, 0, 16),
(25, 0, 16),
(26, 35, 3),
(27, 35, 6),
(28, 35, 5),
(29, 35, 11),
(30, 35, 14),
(31, 201, 1),
(32, 201, 2),
(33, 201, 3),
(34, 1, 5),
(35, 1, 7),
(36, 1, 8),
(37, 1, 9),
(38, 1, 10),
(39, 201, 4),
(40, 201, 16);

-- --------------------------------------------------------

--
-- Table structure for table `answer_desired`
--

CREATE TABLE `answer_desired` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `desired` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_desired`
--

INSERT INTO `answer_desired` (`id`, `user`, `element`, `desired`) VALUES
(37, 35, 1, 2),
(36, 35, 4, 4),
(35, 35, 6, 3),
(34, 35, 1, 2),
(38, 1, 4, 3),
(39, 1, 15, 4),
(40, 1, 1, 3),
(41, 1, 4, 3),
(42, 1, 6, 3),
(43, 201, 1, 3),
(44, 201, 1, 4),
(45, 201, 1, 4),
(46, 201, 1, 2),
(47, 201, 1, 3),
(48, 201, 2, 4),
(49, 201, 3, 3),
(50, 1, 5, 3),
(51, 1, 7, 3),
(52, 1, 8, 4),
(53, 1, 9, 2),
(54, 1, 10, 3),
(55, 201, 4, 3),
(56, 201, 16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `answer_mc`
--

CREATE TABLE `answer_mc` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_mc`
--

INSERT INTO `answer_mc` (`id`, `user`, `element`, `question`, `answer`) VALUES
(299, 35, 1, 5, 1),
(298, 35, 1, 4, 1),
(297, 35, 1, 3, 1),
(296, 35, 1, 2, 1),
(295, 35, 1, 1, 1),
(289, 35, 6, 27, 1),
(288, 35, 6, 26, 1),
(287, 35, 6, 25, 1),
(286, 35, 6, 24, 1),
(294, 35, 4, 18, 1),
(293, 35, 4, 17, 1),
(292, 35, 4, 16, 1),
(291, 35, 4, 15, 1),
(290, 35, 4, 14, 3),
(300, 1, 4, 14, 1),
(301, 1, 4, 15, 2),
(302, 1, 4, 16, 3),
(303, 1, 4, 17, 4),
(304, 1, 4, 18, 1),
(305, 1, 15, 54, 1),
(306, 1, 15, 55, 2),
(307, 1, 15, 56, 4),
(308, 1, 1, 1, 2),
(309, 1, 1, 2, 4),
(310, 1, 1, 3, 3),
(311, 1, 1, 4, 4),
(312, 1, 1, 5, 3),
(313, 1, 6, 24, 2),
(314, 1, 6, 25, 1),
(315, 1, 6, 26, 4),
(316, 1, 6, 27, 3),
(317, 201, 1, 1, 1),
(318, 201, 1, 2, 4),
(319, 201, 1, 3, 3),
(320, 201, 1, 4, 2),
(321, 201, 1, 5, 4),
(322, 201, 2, 6, 1),
(323, 201, 2, 7, 4),
(324, 201, 2, 8, 3),
(325, 201, 2, 9, 2),
(326, 201, 3, 10, 1),
(327, 201, 3, 11, 2),
(328, 201, 3, 12, 4),
(329, 201, 3, 13, 3),
(330, 1, 5, 19, 2),
(331, 1, 5, 20, 1),
(332, 1, 5, 21, 4),
(333, 1, 5, 22, 3),
(334, 1, 5, 23, 4),
(335, 1, 7, 28, 2),
(336, 1, 7, 29, 4),
(337, 1, 7, 30, 3),
(338, 1, 8, 31, 1),
(339, 1, 8, 32, 3),
(340, 1, 8, 33, 4),
(341, 1, 9, 34, 3),
(342, 1, 10, 35, 1),
(343, 1, 10, 36, 3),
(344, 201, 4, 14, 1),
(345, 201, 4, 15, 2),
(346, 201, 4, 16, 4),
(347, 201, 4, 17, 3),
(348, 201, 4, 18, 1),
(349, 201, 16, 57, 1),
(350, 201, 16, 58, 2),
(351, 201, 16, 59, 4),
(352, 201, 16, 60, 3);

-- --------------------------------------------------------

--
-- Table structure for table `answer_proof`
--

CREATE TABLE `answer_proof` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `proof` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_proof`
--

INSERT INTO `answer_proof` (`id`, `user`, `element`, `proof`) VALUES
(1, 1, 1, 7),
(2, 1, 1, 4),
(3, 1, 2, 14),
(4, 1, 2, 16),
(5, 1, 3, 25),
(6, 1, 4, 128),
(7, 1, 4, 124),
(8, 1, 6, 141),
(9, 1, 6, 143),
(10, 1, 1, 7),
(11, 1, 1, 4),
(12, 203, 1, 7),
(13, 203, 1, 4),
(14, 203, 2, 16),
(15, 203, 2, 14),
(16, 203, 2, 12),
(17, 203, 3, 25),
(18, 203, 3, 17),
(19, 203, 4, 128),
(20, 203, 4, 124),
(21, 203, 6, 143),
(22, 203, 6, 141),
(23, 203, 5, 138),
(24, 203, 5, 134),
(25, 203, 7, 149),
(26, 203, 7, 147),
(27, 203, 8, 157),
(28, 203, 8, 155),
(29, 203, 10, 34),
(30, 203, 10, 43),
(31, 203, 9, 29),
(32, 203, 12, 71),
(33, 203, 12, 73),
(34, 203, 11, 55),
(35, 203, 11, 52),
(36, 203, 11, 42),
(37, 203, 13, 87),
(38, 203, 13, 84),
(39, 203, 14, 98),
(40, 203, 14, 93),
(41, 203, 15, 105),
(42, 203, 15, 106),
(43, 203, 16, 119),
(44, 203, 16, 115),
(45, 1, 16, 118),
(46, 1, 16, 115),
(47, 1, 16, 114),
(48, 1, 16, 113),
(49, 1, 16, 121),
(50, 35, 3, 23),
(51, 35, 3, 17),
(52, 35, 6, 142),
(53, 35, 6, 144),
(54, 35, 5, 132),
(55, 35, 5, 139),
(56, 35, 11, 52),
(57, 35, 14, 98),
(58, 1, 4, 126),
(59, 1, 4, 124),
(60, 1, 4, 126),
(61, 1, 4, 124),
(62, 1, 4, 128),
(63, 1, 6, 142),
(64, 1, 6, 143),
(65, 201, 1, 8),
(66, 201, 1, 4),
(67, 201, 1, 8),
(68, 201, 1, 4),
(69, 201, 1, 9),
(70, 201, 1, 4),
(71, 201, 1, 1),
(72, 201, 1, 7),
(73, 201, 1, 5),
(74, 201, 1, 1),
(75, 201, 1, 7),
(76, 201, 1, 5),
(77, 201, 1, 1),
(78, 201, 1, 7),
(79, 201, 1, 5),
(80, 201, 1, 1),
(81, 201, 1, 7),
(82, 201, 1, 5),
(83, 201, 1, 1),
(84, 201, 1, 7),
(85, 201, 1, 5),
(86, 201, 1, 1),
(87, 201, 1, 7),
(88, 201, 1, 5),
(89, 201, 1, 1),
(90, 201, 1, 7),
(91, 201, 1, 5),
(92, 201, 1, 1),
(93, 201, 1, 7),
(94, 201, 1, 5),
(95, 201, 1, 1),
(96, 201, 1, 7),
(97, 201, 1, 5),
(98, 201, 1, 8),
(99, 201, 1, 4),
(100, 201, 2, 21),
(101, 201, 2, 14),
(102, 201, 3, 19),
(103, 201, 3, 23),
(104, 1, 5, 138),
(105, 1, 5, 135),
(106, 1, 7, 150),
(107, 1, 7, 147),
(108, 1, 8, 158),
(109, 1, 8, 155),
(110, 1, 9, 28),
(111, 201, 4, 129),
(112, 201, 4, 124),
(113, 201, 16, 115),
(114, 201, 16, 119);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `byline` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `byline`, `image`) VALUES
(1, 'Direction', '<strong>Ensure the team pulls in the same direction towards zero harm.</strong><br/>\r\nLeadership sets the direction for sustainable zero harm through the use of various enablers. The integrated SHE policy and fundamentals provide the context within which the performance requirements are set. Targets and plans are set for all existing OMEs, growth projects and joint venture activities under our operational control.', 'direction.svg'),
(2, 'People', '<strong>Ensure the team has the tools to achieve zero harm.</strong><br/>\r\nRisk-based tools are provided to enable sustainable excellent SHE results in our OMEs. These tools aim to align SHE activities globally and drive regional standardisation where possible. These include management systems, business processes, enabling technology, procedures and toolkits. Utilising these tools, OMEs can meet SHE performance requirements, consistent with applicable legal requirements and improved maturity levels.', 'people.svg'),
(3, 'Process', '<strong>Ensure team members are fit and skilled to achieve zero harm.</strong><br/>\r\nPeople-related practices are used to enable sustainable zero harm. Our workforce is enabled through leaders who create a zero harm climate. Leaders focus on zero harm behaviour, learning, skills and competency development. A competent, fit-for-purpose SHE function provides the necessary SHE support to OMEs.\r\n', 'process.svg'),
(4, 'Results', '<strong>Ensure SHE results are monitored and utilised.</strong><br/>\r\nSHE results are monitored to measure SHE performance and thereby the effectiveness of SHE risk management and an assertion on assurance. These results inform the focus of continuous improvement activities.\r\n', 'results.svg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` text NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `user_id`, `token`, `ip_address`, `timestamp`, `data`) VALUES
('18af0ce83709ef08', 35, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjM1IiwidXNlcm5hbWUiOiJlbXBsb3llZSIsImlhdCI6MTU2OTgzMTkwOSwiZXhwIjoxNTY5ODQ5OTA5fQ.ObY9NxiWr9X1pWlzbucqq6ndkKicctEUM18hh5Gz7Lo', '::1', 0, ''),
('84db094b80cc1459', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTY5OTMzMTM5LCJleHAiOjE1Njk5NTExMzl9.5u8oEWGyCxSIx8oAM-dCRXn_IYrqWeUtqZEi0zr5PLY', '::1', 0, ''),
('1aef6feefa224610', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU2OTkzMzk5MSwiZXhwIjoxNTY5OTUxOTkxfQ.5mic5rHVqx-GrwZlohoHqLomaAPplWDkRLgBy_hcWFE', '::1', 0, ''),
('6645086cfec90a6b', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTY5OTM0MDE0LCJleHAiOjE1Njk5NTIwMTR9.ACRnXJ0VNgpfCBm2PF9MZpHgm2VJUzwmeD2JFR2ETW4', '::1', 0, ''),
('a96b13aad33fdfb7', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTY5OTM0Njg0LCJleHAiOjE1Njk5NTI2ODR9.7jaDdYj9Gzcu7NVXNNghHn08SVX_g72Xy7dfX7AtUZ0', '::1', 0, ''),
('540d55f4c3c33583', 35, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjM1IiwidXNlcm5hbWUiOiJlbXBsb3llZSIsImlhdCI6MTU3MDAwMDE5OSwiZXhwIjoxNTcwMDE4MTk5fQ.SDG7BDm-0rtHGZznNGVXTXIZxXVDtdjcq7O1Vzko_o4', '::1', 0, ''),
('5ad3f363097ff1b2', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDAwMDM1NywiZXhwIjoxNTcwMDE4MzU3fQ.1Q9_oOeQwKdieWd94O8w9hTbCqoGdlBQja2mOvuM9o4', '::1', 0, ''),
('c22055c967837bb8', 35, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjM1IiwidXNlcm5hbWUiOiJlbXBsb3llZSIsImlhdCI6MTU3MDAwMDYyNSwiZXhwIjoxNTcwMDE4NjI1fQ.I2ua8qNGRnIkXmIPr1SX3EN4EjfbNIIhNyX3jhR2a_M', '::1', 0, ''),
('2154c88cfb60822e', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDAwMDY5NSwiZXhwIjoxNTcwMDE4Njk1fQ.92qecY8Q5hYzqeF7IWwVGGqLh_MrJhYjQsR9idzYbqA', '::1', 0, ''),
('b7e45e0ca79bad65', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTcwMDAwNzg1LCJleHAiOjE1NzAwMTg3ODV9.CM6Y3yUf8NfxhXi_xCRLRrhiwmhF1NKAbYAZozfVthk', '::1', 0, ''),
('988eda0c2cd7a50a', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDAwMzc4MSwiZXhwIjoxNTcwMDIxNzgxfQ.QMN959sW3oi0z7GZz9FHbUMewVMs4SaOKiuv_4iTWi4', '::1', 0, ''),
('df8e2e142bd569d7', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDAwMzgxNiwiZXhwIjoxNTcwMDIxODE2fQ.rEb9z8zKe1IPVSLK02Oi72sz8NvkQ6wrJ7i6FaMGv7Q', '::1', 0, ''),
('dc90357cbdc256d0', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDAwNDc4NiwiZXhwIjoxNTcwMDIyNzg2fQ.AmGwmZBxoC_wVtqIZ8JewH1b3ijkFVmSIwbb7pmVlZo', '::1', 0, ''),
('fd903ed0e0c92dd0', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDAwNTUzMSwiZXhwIjoxNTcwMDIzNTMxfQ.c8zgOQrkIDmtnJiPnEBFvmTpmEAIwk0xaeGcBmKN9lw', '::1', 0, ''),
('19e6a2892d57570f', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDAwNjE2NSwiZXhwIjoxNTcwMDI0MTY1fQ.7Dfh3ZnzvwRqhlcCJ-vPa_N0lbQlALqHT-UR0Td5z1M', '::1', 0, ''),
('7b100a5ed8b641d6', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDAxMDAyNiwiZXhwIjoxNTcwMDI4MDI2fQ.plMlnnSVwtoZmnTiQMG46I-Muh1aBkdYZwvqxufkiCQ', '::1', 0, ''),
('4394e6a31dc6132c', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTcwMDEwMDQzLCJleHAiOjE1NzAwMjgwNDN9.YQ10OK3e_Pq8Vbdy8iGEYh9q8RPsmKKDGJflAeV7YhE', '::1', 0, ''),
('01db6871567bed5e', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTcwMTA1MzgyLCJleHAiOjE1NzAxMjMzODJ9.ZHsuj9q1owIZbKHW7TX-XHUTk2mIIMtV_Ouqy757iAw', '::1', 0, ''),
('77ceaee6430ac6be', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDE5MTgyNCwiZXhwIjoxNTcwMjA5ODI0fQ.0PhZgVft5CpGu2hLtbhqa-cplratOKs3avZ3tRcs2_8', '::1', 0, ''),
('f741944ae6027d7a', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDI4NTk4OCwiZXhwIjoxNTcwMzAzOTg4fQ.xR4b4RNdaeLndu_N4GzZzGsn1CRjBQqeoXzogn3YGnY', '::1', 0, ''),
('9ae8e95bb15a5337', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjEiLCJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNTcwMjg1OTk2LCJleHAiOjE1NzAzMDM5OTZ9.zQ7qrtGsuZMKP3GbTFWh7hRYVOGATYvMOWM1qyTpxwk', '::1', 0, ''),
('027be1fac677bec1', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDI4NjAzNiwiZXhwIjoxNTcwMzA0MDM2fQ.XLHP6HWDZNFAItWbR-CMjhow6cYWuvzV6qc3-Xcm5Go', '::1', 0, ''),
('2e717d8fd5194cc8', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDI4OTE2NywiZXhwIjoxNTcwMzA3MTY3fQ.ErxP8LEL_Da5_Xxg9m2Z1avsKTOcXvnq1aK2k5ZmHKY', '::1', 0, ''),
('a91731c580501afd', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDQzMTQwNywiZXhwIjoxNTcwNDQ5NDA3fQ.hEC2A4-QJ34BrubcCRzeuSNFjyAwA81m-VPvhz2ptOk', '::1', 0, ''),
('0214cdef96e4f0a4', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDQzMzc3NCwiZXhwIjoxNTcwNDUxNzc0fQ.X0B8XA6M2dIbcVfcck8AflSK7h6HtxQ3VgQH0tP1-Lc', '::1', 0, ''),
('434f6dcca2f55a2d', 201, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIwMSIsInVzZXJuYW1lIjoibWFuYWdlciIsImlhdCI6MTU3MDQ0MzU4NCwiZXhwIjoxNTcwNDYxNTg0fQ.G_oaLksy1Pe1gmfCZ9LCuJ7lc8ZCqAvHbLh6TJrsjmI', '::1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sequence` int(11) NOT NULL,
  `alt_sequence` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `cat`, `name`, `sequence`, `alt_sequence`) VALUES
(1, 1, '1.1 Strategy', 1, 'a'),
(2, 1, '1.2 Targets and Plans', 2, 'b'),
(3, 1, '1.3 Leadership', 3, 'c'),
(4, 2, '2.1 Training and Skills', 1, 'd'),
(5, 2, '2.2 Human Capital', 2, 'e'),
(6, 2, '2.3 Culture and Behaviour', 3, 'f'),
(7, 2, '2.4 Engagement', 4, 'g'),
(8, 3, '3.1 Risk Management', 1, 'h'),
(9, 3, '3.2 Operations Control', 2, 'i'),
(10, 3, '3.2.1 Project Management', 3, 'j'),
(11, 3, '3.2.2 Operations and Maintenance', 4, 'k'),
(12, 3, '3.2.3 Supply Chain', 5, 'l'),
(13, 3, '3.3 Systems', 6, 'm'),
(14, 3, '3.4 Governance', 7, 'n'),
(15, 4, '4.1 Measurement', 1, 'o'),
(16, 4, '4.2 Improvement', 2, 'p');

-- --------------------------------------------------------

--
-- Table structure for table `inviteattendees`
--

CREATE TABLE `inviteattendees` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accesstoken` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `isexpiry` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `poor` text NOT NULL,
  `mediocre` text NOT NULL,
  `good` text NOT NULL,
  `excellent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`id`, `question`, `poor`, `mediocre`, `good`, `excellent`) VALUES
(1, 'Performance: actual performance against target', 'Usually more than 10% outside the target', 'Usually within 10% of the target', 'Consistently within 2% of the target', 'Target exceeded consistently'),
(2, 'Trend: Positive, sustained >3 years', 'Trend is negative', 'No improvement in trend over past 3 years', 'Positive trend, sustained performance over 3 years', 'Trend consistently remain ahead of industry norm'),
(3, 'Comparison: Target setting, benchmarking and strategic alignment', 'Target are stagnant and/or lags industry norms, no/limited comparison or benchmarking', 'Target are set top-down based on entity average performance, relevant internal comparisons are done and results are on par', 'Stretched target is set and owned by the team over and above the Group target, Relevant external comparisons are made and are favourable, performance is favourable compared to strategic objectives', 'Target is industry leading, relevant external comparisons indicate industry leaders, strategic objectives achieved and revised.'),
(4, 'Confidence: Confidence that performance can be sustained, specific improvement actions, correct lead indicators', 'Improvement actions are mainly reactive to performance, limited view on lead indicators, non-conformance process play a big role in addressing negative trends', 'Identification of specific actions to improve performance is done by management teams and operational teams are instructed, lead indicators for compliance are tracked.', 'Teams take ownership of the trend and drive improvement actions, focussing more on systems, processes and preventive controls, lead indicators for critical control effectiveness are tracked.', 'Improvement actions focus on embedding behaviour. Improvement actions become a way of doing business. Lead indicators for risk reduction are tracked.');

-- --------------------------------------------------------

--
-- Table structure for table `performance_elements`
--

CREATE TABLE `performance_elements` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performance_elements`
--

INSERT INTO `performance_elements` (`id`, `name`, `sequence`) VALUES
(1, 'Occupational Safety', 1),
(2, 'Process Safety', 2),
(3, 'Health', 3),
(4, 'Environment', 4),
(5, 'Product Stewardship', 5);

-- --------------------------------------------------------

--
-- Table structure for table `performance_mc`
--

CREATE TABLE `performance_mc` (
  `id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performance_mc`
--

INSERT INTO `performance_mc` (`id`, `question`, `element`, `answer`, `user`) VALUES
(1, 1, 1, 1, 201),
(2, 2, 1, 2, 201),
(3, 3, 1, 4, 201),
(4, 4, 1, 3, 201),
(5, 1, 2, 1, 201),
(6, 2, 2, 3, 201),
(7, 3, 2, 2, 201),
(8, 4, 2, 4, 201),
(9, 1, 3, 1, 201),
(10, 2, 3, 2, 201),
(11, 3, 3, 4, 201),
(12, 4, 3, 3, 201),
(13, 1, 4, 1, 201),
(14, 2, 4, 2, 201),
(15, 3, 4, 3, 201),
(16, 4, 4, 4, 201);

-- --------------------------------------------------------

--
-- Table structure for table `proofs`
--

CREATE TABLE `proofs` (
  `id` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `proof` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proofs`
--

INSERT INTO `proofs` (`id`, `element`, `type`, `proof`) VALUES
(1, 1, 1, 'SHE Policy declaration is available'),
(2, 1, 1, 'Practical actions to create team commitment to zero harm (e.g. communication, pledges, team talks)'),
(3, 1, 1, 'Safety climate survey results'),
(4, 1, 1, 'Alignment between the 1S SHE EA and the OME SHE practices regarding legal compliance'),
(5, 1, 1, 'Adherence to management standards \r\n(e.g. audit results, certification)'),
(6, 1, 2, 'SHE policy declaration is used in communication and SHE directional decisions'),
(7, 1, 2, 'Team participation in zero harm journey'),
(8, 1, 2, 'OME SHE procedures and toolkits are aligned with the SHE performance requirements as set out in the One Sasol SHE Excellence approach.'),
(9, 1, 2, 'Integrated management system aligned with the One Sasol SHE Excellence approach.'),
(10, 2, 1, 'SHE performance maturity across sub-functions'),
(11, 2, 1, 'SHE climate diagnostic results are reviewed and analysed'),
(12, 2, 1, 'Heartbeat results and HR data are reviewed and analysed for high risk areas'),
(13, 2, 1, 'Root causes from HSI investigations identified'),
(14, 2, 1, 'Operations know and execute critical controls'),
(15, 2, 1, 'OME risk profile and risk exposure.'),
(16, 2, 2, 'Progress on previous year’s SHE Game Plan or SHE improvement focus areas'),
(17, 3, 2, 'SHE focus areas identified from other Maturity Assessment sessions and reviews'),
(18, 2, 2, 'Input from open discussions/interviews'),
(19, 3, 2, 'Monitoring the effectiveness of high-risk task management'),
(20, 2, 2, 'Specific focus on leading indicators during SHE performance maturity assessments'),
(21, 2, 2, 'Monitoring and assurance of the effectiveness of critical controls '),
(22, 3, 1, 'Annual SHE Game Plan is available'),
(23, 3, 1, 'SHE targets are specific, measurable, attainable, relevant and time-bound'),
(24, 3, 1, 'Visible SHE lagging and leading indicators'),
(25, 3, 1, 'Prioritised list of action plans based on the SHE Game Plan, which are tracked for execution'),
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
(42, 11, 2, 'Proof of tracking and improvement of critical control effectiveness'),
(43, 11, 2, 'Leading indicators for control effectiveness are tracked and is visible'),
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
(122, 4, 1, 'Job-specific SHE competencies defined for the team'),
(123, 4, 1, 'List of mandatory SHE training'),
(124, 4, 1, 'SHE training plans and training matrices'),
(125, 4, 1, 'SHE training and competency record management process'),
(126, 4, 2, 'Updated and dynamic training plans'),
(127, 4, 2, 'Updated SHE training material'),
(128, 4, 2, 'Effective planned task observation (PTO) system to observe SHE competencies'),
(129, 4, 2, 'SHE competency gaps included in personal development plans'),
(130, 4, 2, 'Coaching records'),
(131, 5, 1, 'Job profiles include SHE accountabilities	'),
(132, 5, 1, 'All performance agreements include SHE accountabilities'),
(133, 5, 1, 'Incentive and/or bonus includes SHE elements'),
(134, 5, 1, 'Service providers roles include SHE accountabilities'),
(135, 5, 1, 'Proof of SHE considerations during the recruitment process'),
(136, 5, 2, 'Application of the Group Human Failure Causation Model in dealing with consequence management cases'),
(137, 5, 2, 'Succession plans for critical SHE positions'),
(138, 5, 2, 'Fit for purpose SHE organisational structure'),
(139, 5, 2, 'Informal recognition for the desired SHE behaviours'),
(140, 6, 1, 'Approved SHE communication and engagement plans'),
(141, 6, 1, 'Agendas and minutes for SHE meetings as per engagement plan'),
(142, 6, 1, 'SHE communication material as per plan'),
(143, 6, 2, 'Engagement survey results, with improvement actions being implemented and tracked. '),
(144, 6, 2, 'A change management plans for SHE-related changes '),
(145, 7, 1, 'SHE reporting according to Group procedure'),
(146, 7, 1, 'SHE data quality management process'),
(147, 7, 1, 'SHE reporting on lagging KPIs and legal compliance'),
(148, 7, 2, 'SHE reporting on leading KPIs'),
(149, 7, 2, 'Automated, integrated dashboards'),
(150, 7, 2, 'Analysis of leading and lagging KPIs enabling informed decision making and continuous improvement'),
(151, 8, 1, 'Proof of logged improvement plans'),
(152, 8, 1, 'Proof of plan, do, review, improve cycle uses'),
(153, 8, 1, 'Incident register that is up to date'),
(154, 8, 1, 'Non-conformance register that is up to date'),
(155, 8, 1, 'A trail of audit reports and actions implemented to address the findings'),
(156, 8, 1, 'Proof of Management review outcomes'),
(157, 8, 2, 'An effective platform to log and track improvement plans'),
(158, 8, 2, 'An effective platform to track the benefit of our SHE improvement plans'),
(159, 8, 2, 'The OME Improvement process is diligently followed in our team'),
(160, 8, 2, 'SHE meeting agendas where SHE improvement action execution/progress is discussed');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `element` int(11) NOT NULL,
  `question` text NOT NULL,
  `reactive` text NOT NULL,
  `compliant` text NOT NULL,
  `proactive` text NOT NULL,
  `resilient` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `element`, `question`, `reactive`, `compliant`, `proactive`, `resilient`) VALUES
(1, 1, '1. Group SHEQ Policy', 'A SHEQ Policy does not exist or is only a paper exercise with no visibility or buy-in from leaders.', 'A formal SHEQ Policy exists, is endorsed by the CEO and is used by the SHEQ team to provide direction.', 'Leaders commit to the SHEQ Policy and communicate it.', 'The SHEQ Policy is consistently used by teams to guide SHEQ Strategy and improvement plans.'),
(2, 1, '2. Commitment to Zero Harm direction', 'Zero Harm is a theoretical idea and is supported only by some.', 'Most leaders and teams understand and support Zero Harm. The SHEQ team drives improvement of SHEQ practices.', 'All leaders and teams are actively involved in achieving Zero Harm which is evident in continuously improving SHEQ practices.', 'All leaders and teams\npro-actively work together to embed SHEQ practices which is evident in the achievement of Zero Harm milestones.'),
(3, 1, '3. Group SHEQ Strategy', 'No formal SHEQ Strategy exists, or if it does, it has limited visibility.', 'The SHEQ Strategy considers the BIGGER values, Group strategy, stakeholder requirements, SHEQ risks and relevant legislation. It is visible and communicated to\nall leaders.', 'The SHEQ Strategy is translated into SHEQ objectives and plans and cascaded to teams, taking the teams SHEQ\nperformance and risks into account.', 'The SHEQ Strategy is actively implemented by leaders and teams and it provides a clear roadmap to achieving Zero Harm. Innovation is an integrated part of the SHEQ strategy to reduce SHEQ risks.'),
(4, 1, '4. SHEQ Framework and Fundamentals', 'SHEQ practices are driven by fear or as a reaction\nto incidents. SHEQ Fundamentals are seen as pointless.', 'Leaders understand the SHEQ Fundamentals\nand the SHEQ Framework is utilised to drive standardised SHEQ practices.', 'Teams know the SHEQ Fundamentals and implement risk-based SHEQ management through the SHEQ Framework.', 'Teams reduce SHEQ risks by embedding SHEQ Fundamentals and prioritised continuous embedding and improvement of SHEQ practices.'),
(5, 1, '5. SHEQ Resources (people, time and funding)', 'No or inadequate resources are available to execute the SHEQ Strategy.', 'Resources are made available to implement prioritised parts of the SHEQ Strategy.', 'Adequate resources are actively deployed and used to drive the implementation of the SHEQ Strategy.', 'Resources are available and deployed to actively drive risk reduction, improvement of SHEQ practices and embedding of the\nSHEQ Strategy.'),
(6, 2, '6. SHEQ milestones and targets', 'Are not always clear and are cascaded to a very limited extent.', 'Are SMART, based on the SHEQ Strategy and are communicated and cascaded to all operations levels.', 'Are stretched and set based on desired risk reduction areas and an improvement pull.', 'Drive a culture of sustainable achievement of Zero Harm by incentivising the\nright behaviours and benchmarking against industry leaders.'),
(7, 2, '7. Leading and lagging measurements', 'Limited measurement and reporting which is mostly focused on lagging measurements.', 'Standardised lagging measurements are implemented and data collection methods for these are established.', 'Standardised and risk-based leading measurements are implemented. The SHEQ measurement structure is integrated into a business management system for data capturing, processing and reporting.', 'Interdependencies between leading and lagging measurements are\nunderstood and managed to continuously improve SHEQ performance and to reduce risk exposure.'),
(8, 2, '8. SHEQ plans and resourcing', 'SHEQ plans don?t exist and/or are not adequately resourced.', 'SHEQ plans are developed, adequately resourced (people, time and\nfunding), prioritised and broken down into detail actions, responsibilities and timelines.', 'SHEQ plans are derived  from analysing gaps, leading measurement trends and SHEQ risks. SHEQ plan execution outcomes are incorporated into individual performance plans.', 'Leaders collaborate across the Group to ensure detailed planning trade-offs optimise resources and SHEQ\nplan execution.'),
(9, 2, '9. Execution tracking and corrective action', 'SHEQ plan execution is not tracked and/or corrective action is not taken for identified deviations.', 'SHEQ plan execution is tracked to ensure focus on high risk areas. Leaders actively drive SHEQ plan execution and provide execution support.', 'SHEQ plan execution is integrated into Group level tracking. Deviations are identified and corrective action taken timeously.', 'Teams take full ownership of the embedding of SHEQ plans which is evident in SHEQ performance gaps being closed sustainably.'),
(10, 3, '10. Accountable leadership', 'Leaders are only visible during or after SHEQ incidents and create a culture of fear and blame. The SHEQ function mainly takes ownership for SHEQ.', 'Leaders are visibly committed to Zero Harm.\nLeaders enable teams to fulfil their SHEQ responsibilities and lead by example.', 'Leaders inspire Zero Harm behaviour and proactively address SHEQ performance improvement through implementing of mature SHEQ practices.', 'Leaders consistently set the tone for Zero Harm. They create a climate where individuals take personal accountability for achieving SHEQ targets and plans and are recognised for it.'),
(11, 3, '11. Empowered and engaged people', 'SHEQ is not a way of life and people are mostly disengaged.', 'Every team member understands what is required to achieve Zero Harm, is competent and feels empowered to execute their daily jobs with Zero Harm.', 'Teams are proactively involved in SHEQ programs and people are individually committed to Zero Harm to themselves, others and the environment.', 'Our people consistently live the desired SHEQ behaviours to demonstrate that Zero Harm is a way\nof life. All people are passionate about achieving Zero Harm.'),
(12, 3, '12. Risk-based SHEQ approach', 'There is limited understanding of\nSHEQ risks and controls in teams.', 'Top SHEQ risks and related controls are identified, assessed, prioritised and implemented to ensure legal compliance.', 'Risk-based SHEQ practices are applied in teams. Risk controls are monitored, action is taken proactively to ensure effectiveness and assurance is given on all critical controls.', 'Integrated management of SHEQ risks across disciplines. Learnings from control failures are implemented, checked for effectiveness and embedded. Controls are improved continuously to reduce risk.'),
(13, 3, '13. Continuous improvement mindset', 'SHEQ practices are mostly dependent on the team?s experience, and not embedded. The team has a limited view on gaps or improvement areas.', 'SHEQ practices are compliant with legal requirements which are executed through\nprocedures, SOPs, COPs, works instructions, etc.', 'Improvement areas in SHEQ practices are\nidentified proactively based on an understanding of\nthe maturity of practices and actioned to achieve improved SHEQ results.', 'A mindset of continuous improvement is embedded and drives the achievement of sustainable Zero\nHarm results.'),
(14, 4, '14. SHEQ competencies and training plans', 'Generic SHEQ competencies and plans without consideration of risk exposure.', 'Job-specific SHEQ competencies are identified based on risk exposure and are included in training matrices.', 'Job-specific SHEQ competencies are updated based on learnings from incidents, audit findings and best practices.', 'Are updated in anticipation of emerging SHEQ risk trends or changes in the working environment.'),
(15, 4, '15. Service provider SHEQ competencies', 'Are not formally defined.', 'There are formally-defined SHEQ competencies for Service Providers and minimum SHEQ training\nis provided.', 'SHEQ competencies for Service Providers are reviewed to include\nlearnings from incidents, audit findings and\nbest practices.', 'Through mutually beneficial partnerships and\ncollaboration, Service Provider SHEQ competencies are established and maintained.'),
(16, 4, '16. SHEQ training content', 'Includes the bare minimum.', 'Includes all legislative requirements.', 'Includes relevant SHEQ risks and controls and is updated regularly to include control effectiveness and audit findings.', 'Are updated regularly to address emerging SHEQ trends and risks, as well\nas learnings from incidents and best practices.'),
(17, 4, '17. Coaching and mentoring', 'Not a practice among leaders.', 'First line leaders play a coaching role to ensure that their teams execute their jobs with Zero Harm.', 'Coaches and mentors play a key role in on-the- job training to enable continuous improvement towards Zero Harm.', 'Teams coach each other as part of a culture of continuous improvement towards Zero Harm.'),
(18, 4, '18. SHEQ training effectiveness', 'Is not reviewed at all or in a haphazard way.', 'The effectiveness of SHEQ training interventions\nis reviewed based on theoretical ?pass rate?, and any gaps are closed.', 'Managers monitor how acquired skills are applied and adapt SHEQ training interventions to ensure the specific learning outcome is met.', 'The embedding of SHEQ competences is evident in the reduction of repeat incidents and improved SHEQ results.'),
(19, 5, '19. SHEQ\naccountabilities', 'Are not always defined or documented and don?t take SHEQ risks into account.', 'Are formally documented and reflect SHEQ risks and controls in job profiles.', 'Are translated into individual performance agreements and people are developed to fulfil their SHEQ accountabilities.', 'People take full ownership for their SHEQ accountabilities.\nTeams apply SHEQ behaviours in daily activities.'),
(20, 5, '20. Structure, recruitment and selection', 'SHEQ requirements are not considered in the organisational structure or the recruitment and selection processes.', 'The organisational structure is designed to ensure safe and productive operations. People are recruited and selected considering SHEQ requirements to ensure competent teams.', 'SHEQ-critical positions are identified and succession plans are developed to ensure these positions are filled by competent people timeously.', 'Multiple individuals are coached and trained to improve SHEQ experience and develop the internal resource pool for SHEQ- critical positions.'),
(21, 5, '21. SHEQ function structure', 'SHEQ structure not fully implemented and/or under-resourced.', 'Designed SHEQ structure implemented and adequately resourced. SHEQ support formally agreed with leaders.', 'The SHEQ structure matches the SHEQ risk profile of the business. The SHEQ team enables operations teams on the Zero Harm journey.', 'An optimised SHEQ structure enables the execution of\nthe SHEQ Strategy through true partnership with operations teams.'),
(22, 5, '22. SHEQ performance and consequence management', 'Inconsistent performance and consequence management process.', 'Individuals are held accountable for their SHEQ performance.\nSHEQ-related consequence management is consistently and fairly applied.', 'Individuals take ownership of SHEQ performance\nand leaders coach for improvement. There is a clear distinction made between violations\nand errors.', 'Teams take ownership  for SHEQ behaviour  which is evident in SHEQ performance. SHEQ errors and violations have been reduced through effective\nconsequence management and other relevant management tools.'),
(23, 5, '23. SHEQ recognition', 'Recognition is mostly given for production performance and SHEQ performance is driven by meeting legal requirements.', 'Recognition schemes include SHEQ performance elements.', 'Team recognition reinforces positive SHEQ behaviours.', 'Continuous informal SHEQ recognition forms part of the culture.'),
(24, 6, '24. Life Saving Behaviours (LSBs)', 'Are not formally defined and/or not implemented.', 'Formally defined LSBs are implemented and drive awareness for Zero Harm.', 'Are reviewed and updated regularly. Implemented LSBs results in reduced high severity incidents.', 'Are updated in anticipation of emerging SHEQ risk trends or changes in the working environment. LSBs are totally embedded in the culture.'),
(25, 6, '25. SHEQ climate and behaviour transformation', 'Some individuals still perform work unsafely and try to hide incidents for fear of reprisal.', 'Individuals are empowered to take personal accountability for SHEQ. No work is done unless it is done safely.', 'The SHEQ climate is measured in regular climate diagnostics which are done in high-risk areas and used to drive SHEQ improvement actions.', 'Leaders create Zero Harm climate of openness, care, trust and accountability. This is evident in sustained SHEQ performance and behaviours.'),
(26, 6, '26. Incident reporting culture', 'Some incidents are not reported.', 'A reporting culture exists.', 'Incident reporting is viewed as a way to improve SHEQ risk management.', 'Unsafe behaviours and practices are challenged without fear of unfair negative consequences. Solutions are co-created and implemented.'),
(27, 6, '27. Behaviour-based programme', 'No behaviour-based programme exists or is not effectively implemented.', 'A standardised behaviour- based programme is implemented and supported by leaders and teams.', 'Observations from the behaviour-based\nprogramme are analysed and barriers are removed to drive behaviour improvement.', 'The behaviour-based programme is fully embedded, owned and driven by the team.\nIt is used to create a climate for Zero Harm.'),
(28, 7, '28. SHEQ\ncommunication and engagement', 'SHEQ communication is done inconsistently and/or restricted to SHEQ incidents.', 'A basic SHEQ communication and engagement plan is in place and executed mostly by the SHEQ function.', 'SHEQ communication and engagement plans are informed by good understanding of the\ncurrent and required levels of Zero Harm engagement of relevant stakeholders.\nLeaders take ownership of SHEQ communication\nwith teams.', 'The plans are informed by the teams? progress on the Zero Harm journey. Stakeholders actively participate in two-way communication opportunities created\nby leaders.'),
(29, 7, '29. Change\nmanagement processes', 'Change management is done haphazardly.', 'The SHEQ team monitors changes which can impact the Zero Harm engagement of stakeholders.', 'Senior leaders implement measures to mitigate\nthe impact on Zero Harm as part of an integrated change plan.', 'The potential impact of planned changes on Zero Harm are assessed with relevant stakeholders and all work together to mitigate the risk of compromising Zero Harm.'),
(30, 7, '30. Effectiveness of SHEQ communication\nand engagement', 'No or very little communication effectiveness monitoring is done. Communication and engagement is not effective.', 'Effectiveness is assessed based on informal checks and SHEQ audits. Minimum requirements are met.', 'Effectiveness is assessed in a structured way and\nanalysed to understand root causes of SHEQ stakeholder engagement. Improvement actions are agreed with stakeholders.', 'Effectiveness is continuously assessed through close relationship management of stakeholders. Stakeholders are keen ambassadors of Zero Harm.'),
(31, 8, '31. SHEQ risk profile', 'A team SHEQ risk profile does not exist or is developed using inconsistent processes. SHEQ risk profiles are not reviewed.', 'A team SHEQ risk profile is developed using the Group risk matrix and risk\nmanagement process and is reviewed at least annually.', 'Teams understand their highest SHEQ risks. SHEQ profiles are reviewed when unwanted events occur, recur or control failures trend upward.', 'SHEQ risk profiles drive risk-based decision making. Lessons from SHEQ risk profile reviews are embedded.'),
(32, 8, '32. SHEQ risk controls', 'SHEQ risk controls are identified on an ad hoc basis, are managed by the SHEQ function and control effectiveness is rarely reviewed.', 'High SHEQ risks are identified, analysed and understood. Related risk controls are implemented and managed by teams.', 'A structured process is followed to manage critical control effectiveness and to give first level assurance of its effectiveness.', 'SHEQ risk control effectiveness is continuously improved and used as a leading indicator to improve SHEQ performance.'),
(33, 8, '33. Incident\nmanagement', 'SHEQ incidents are investigated informally with no root cause analysis and limited management of corrective actions.', 'The Group incident investigation procedure is followed, and root causes are determined for all incidents. Preventive and corrective actions are managed formally.', 'Investigations are prioritised and resourced based on the potential or actual severity of incidents. Thorough RCAs are done, and root causes are addressed sustainably.', 'Actions and learnings from incidents are shared, applied and embedded to prevent occurrence and recurrence of incidents.\nThe effectiveness of actions is monitored.'),
(34, 9, '34. Plan/design for project alignment with SHEQ requirements', 'Little consideration of SHEQ requirements for projects.', 'SHEQ and legal requirements, including risk studies are considered during the planning/design phase for a project.', 'Future SHEQ requirements are considered in trade-off decisions for projects. SHEQ risk studies drive improved project design standards.', 'Industry leading SHEQ technologies are sustainably implemented. Risk reduction practices are built into project planning/designs.'),
(35, 10, '35. Project\nimplementation', 'Project cost and schedule drive project performance. An MOC process is rarely used. Pre-start up SHEQ reviews are done as a\ntick-box exercise. End-of-job documents are incomplete.', 'SHEQ requirements are embedded in the way projects are executed. All end-of-job documents are complete and accurate.', 'Pre-start up SHEQ  reviews are done to ensure SHEQ risk controls are implemented prior to start up. A structured MOC\nprocess is always followed.', 'A Zero Harm mindset is embedded in project execution teams.\nProject objectives of Zero Harm, project cost and schedule are not in\nconflict, but are optimised to deliver a sustainable Zero Harm result.'),
(36, 10, '36. Closure/End-of life projects', 'Closure projects are started because of external pressures.', 'Closure/end-of-life decisions are based on minimum legal compliance. Closure projects are planned for and resources are provided.', 'Closure decisions are based on the mitigation of future risks. Rehabilitation risks are mitigated proactively during plant design.', 'Leaders actively pursue opportunities to minimise the SHEQ impact of operations closure.\nLessons learned from previous closures are incorporated into the project management process and procedures.'),
(37, 11, '37. Zero Harm work practices (people and process-related)', 'Zero Harm work practices are inconsistently applied and do not exist in all high-risk areas.', 'Zero Harm work practices are consistently applied. Leaders provide the necessary resources to enable safe operations.', 'Zero Harm work practices focus on effectiveness of controls.', 'Teams have embedded Zero Harm work practices. SHEQ risks are reduced through integrated improvements of Zero Harm work practices.'),
(38, 11, '38. Operations and Maintenance Procedures', 'Procedures are not in place in all high-risk areas and/or do not address SHEQ risks and controls.', 'Procedures are in place for all high-risk areas and address SHEQ risks and controls. Procedures are periodically reviewed.', 'Operations teams actively use, review and optimise procedures to ensure that controls are executed effectively.', 'The use and adherence to procedures are embedded as key behaviours to reduce SHEQ risks.'),
(39, 11, '39. Emergency response plans', 'Emergency response plans are not aligned with credible risk scenarios.', 'Emergency response plans are developed, based on credible high risk scenarios and are implemented.', 'Regular training, exercises and communication of emergency response plans result in effective plans.', 'When executed, emergency response plans credibly reduce negative consequences for people,\nassets and the environment.'),
(40, 11, '40. Management of Change (MOC) process', 'Technical changes are not consistently reviewed through an MOC process.', 'A structured MOC process is in place and implemented consistently for technical changes.', 'SHEQ risks from technical changes are proactively managed through an integrated MOC system.', 'The MOC process is seen as a key enabler of operating envelope improvement actions.'),
(41, 11, '41. Asset integrity', 'SHEQ critical equipment is not consistently identified and managed through maintenance strategies.', 'All SHEQ critical equipment is identified and managed through maintenance strategies and meets SHEQ legal requirements.', 'A list of SHEQ critical equipment is regularly updated and maintenance strategies are reviewed based on changes to SHEQ risks or controls.', 'Engineering and operations teams consistently collaborate to improve maintenance strategies which reduce SHEQ risks.'),
(42, 12, '42. Supplier, service provider and customer SHEQ management', 'SHEQ requirements are not specified in contracts and/or supplier, service provider and customer SHEQ performance is not evaluated.', 'Contracts specify SHEQ requirements and are monitored by contract owners.', 'Risk-based evaluations of supplier, service provider and customer SHEQ performance are analysed and discussed with relevant stakeholders regularly.', 'Contract owners and suppliers, service providers and customers work together to\nreduce SHEQ risks and improve performance.'),
(43, 12, '43. Product safety', 'Risk-based processes for the evaluation, registration, transportation and\nstorage of procured or manufactured products are inconsistently followed.', 'Risk-based processes for the evaluation, registration, transportation and storage\nof procured or manufactured products are followed in\na structured and legally compliant way.', 'Product risks are well understood throughout the product life cycle. Plans are co-created with suppliers, service providers and customers to reduce SHEQ risks related to products.', 'Product safety industry trends are analysed and benchmarked. Collaborative efforts with customers\nand suppliers drives the strategic intent of product safety improvement.'),
(44, 12, '44. Product and material transportation', 'Product and material transportation risks are rarely considered.', 'Product and material transportation legal and industry safety\nrequirements are adhered with and monitored.', 'Product and material transportation risk management plans are in place and are regularly reviewed and improved.', 'The improvement of product and material transportation SHEQ performance is a collaborative effort between all stakeholders to achieve Zero Harm.'),
(45, 12, '45. Product quality', 'Customer and legal requirements are not consistently met.', 'Customer and legal requirements are consistently met and quality verification is performed.', 'A relationship is established with customers to better understand quality requirements\nand improvement plans are actively managed.', 'Product quality is achieved consistently, resulting in\nit being a strategic driver for winning orders and maintaining key customers.'),
(46, 13, '46. Standardised SHEQ processes', 'SHEQ processes are not standardised.', 'Standardised SHEQ processes are defined, aligned with SHEQ performance requirements and consistently applied by teams.', 'Optimised SHEQ processes are driven by assigned owners and enable leaders to manage team-specific SHEQ risks effectively.', 'Integrated SHEQ processes enable the continuous improvement of SHEQ performance.'),
(47, 13, '47. Documented SHEQ procedures', 'SHEQ procedures are inconsistently applied.', 'SHEQ procedures exist for all standardised SHEQ\nprocesses, are implemented and maintained. A formal document management process is in place for\nall procedures.', 'SHEQ procedures are reviewed at defined intervals considering changes in the SHEQ risk profile, control effectiveness trends and exposure as well as SHEQ performance.', 'SHEQ procedures and related training\nmaterial are consistently updated with learnings from investigations, observations, findings and performance trends.'),
(48, 13, '48. Enabling tools and technology', 'Some SHEQ processes are enabled by non- standardised tools.', 'The execution of standardised SHEQ processes are enabled with standardised tools.', 'The execution of standardised SHEQ processes are enabled by integrated technology systems.', 'SHEQ process tools\nand systems are used to enable SHEQ performance improvement through better integration, analysis and decision-making.'),
(49, 13, '49. Effectiveness of SHEQ processes', 'The effectiveness of SHEQ processes is not assessed.', 'The effectiveness of\nSHEQ processes is assessed through external and internal audits.', 'The effectiveness of SHEQ processes is continuously assessed through team feedback and formally in management reviews. Improvement actions are continuously driven.', 'Resources and lessons learned are shared across the Group to improve the execution of SHEQ processes.'),
(50, 14, '50. Governance structure and meetings', 'SHEQ governance roles and responsibilities are not always clear, meetings don?t exist and/or are not held consistently.', 'SHEQ governance roles and responsibilities are well defined and applied.\nSHEQ governance meetings monitor compliance and SHEQ performance.', 'SHEQ governance meetings follow a risk-based\nagenda aligned with SHEQ performance requirements.', 'SHEQ governance meetings are used to monitor all assurance outcomes as well as the embedding of learnings from assurance deviations.'),
(51, 14, '51. Updates to legislation and standards', 'No process/system is in place to keep up to\ndate with new/amended legislation and standards.', 'A process exists to ensure new/amended legislation is communicated, understood and acted upon.', 'New/amended legislation is proactively incorporated into SHEQ processes and performance requirements.', 'Business actively plans  for new/amended legislation well in advance of deadlines.'),
(52, 14, '52. SHEQ\ndocumentation', 'No formal SHEQ document governance process exists for SHEQ legal requirements.', 'A formal document governance process exists for SHEQ legal requirements.', 'All SHEQ documentation is easily accessible across the business.', 'SHEQ document management is fully integrated into the Group document management system.'),
(53, 14, '53. Assurance activities', 'Audits and assessments  are not risk based and focus on management system compliance. Findings are not consistently actioned\nor shared.', 'Internal and external audits are in place and findings are actioned timeously.', 'Focused 1st level assurance activities monitor team specific critical controls for high risk areas. Findings are analysed to identify root causes and action is taken to improve effectiveness.', 'SHEQ assurance is integrated and optimised to reduce the resource burden and provide a combined view of SHEQ\nassurance results. Learnings from assurance deviations are embedded.'),
(54, 15, '54. SHEQ data capturing', 'SHEQ data is not reliable.', 'SHEQ data is captured according to procedure on a platform. The SHEQ team verifies data integrity.', 'Data capturing procedures are measured for effectiveness. Automated systems manage data  input quality for lagging and leading measurements.', 'Automated systems allow real-time reporting and data mining which is used to improve decision making.'),
(55, 15, '55. SHEQ reporting', 'Informal reporting focus on lagging measurements.', 'A formal reporting system is used to measure leading and lagging measurements against targets and historical trends.', 'A standardised reporting system enables comprehensive analysis of risk-based leading and lagging measurements.', 'There is only one source of truth for SHEQ results\nand leading measurements are used to forecast\nSHEQ performance gaps, exposure and proposed actions.'),
(56, 15, '56. SHEQ performance review', 'Review of SHEQ results and identification of improvement opportunities happens very rarely.', 'SHEQ lagging measurement results are analysed\nand reviewed to identify improvement actions.', 'SHEQ performance gaps for leading measurements are analysed, root causes\nidentified and used to inform management decisions and improvement plans.', 'Improvement actions drive achievement of SHEQ objectives and targets\nand reduce SHEQ risks.'),
(57, 16, '57. Review SHEQ performance and practices', 'Performance gaps not always understood.', 'A plan, do, review, improve cycle is followed to understand current SHEQ performance and practices to identify gaps.', 'A process is in place\nto monitor and improve SHEQ performance\nand practices.', 'Teams own their SHEQ performance\nand practice review and systems enable continuous improvement thereof.'),
(58, 16, '58. Develop and prioritise SHEQ improvement plans', 'Not all teams have improvement plans and/or plans are not prioritised.', 'Improvement plans exist and are prioritised based on top SHEQ risks, legal compliance, urgency and resource availability.', 'Leaders set the tone by prioritising improvement plans based on SHEQ risk reduction and individuals are actively engaged\nin developing practical solutions.', 'Cross-functional teams work together to develop and embed industry- leading SHEQ improvement solutions.'),
(59, 16, '59. Implement and embed improvement actions', 'Improvement plans are driven by the SHEQ team. Improvement actions and benefits are not formally tracked.', 'Individuals are assigned personal responsibility for improvement actions and are empowered to execute it. Actions are tracked to completion.', 'SHEQ improvements are implemented as a priority and embedded by developing enabling processes and tools\nwhich ensure sustainability of the solution.\nImprovement action effectiveness is measured.', 'SHEQ improvements are embedded through training, change\nmanagement and behaviour programmes. Innovative ideas are considered\nand implemented where possible.'),
(60, 16, '60. Management review', 'The effectiveness of the SHEQ Framework is not measured.', 'The suitability, adequacy and effectiveness of\nthe SHEQ Framework is formally reviewed.', 'Learnings from audits and assessments are used\nto proactively identify improvement areas for the SHEQ Framework.', 'Employees on all levels contribute to the improvement of the SHEQ Framework.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `firstname`, `lastname`, `role`, `password`) VALUES
(1, 'admin', 'Admin', 'User', 'admin', '9e94b15ed312fa42232fd87a55db0d39'),
(204, 'employee4', 'Jack', 'Doe', 'employee', '1515'),
(203, 'employee3', 'Jane', 'Doe', 'employee', '1515'),
(202, 'employee2', 'Julie', 'Doe', 'employee', '1515'),
(201, 'manager', 'Manager', 'User', 'manager', 'bc7316929fe1545bf0b98d114ee3ecb8'),
(35, 'employee', 'John', 'Doe', 'employee', 'bc7316929fe1545bf0b98d114ee3ecb8'),
(205, 'Test', 'Test', 'User', 'employee', 'bc7316929fe1545bf0b98d114ee3ecb8'),
(206, 'test', 'test', 'user', 'employee', 'bc7316929fe1545bf0b98d114ee3ecb8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions_measure`
--
ALTER TABLE `actions_measure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `element` (`element`);

--
-- Indexes for table `actions_milestone`
--
ALTER TABLE `actions_milestone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actions_results`
--
ALTER TABLE `actions_results`
  ADD PRIMARY KEY (`element`);

--
-- Indexes for table `actions_risks`
--
ALTER TABLE `actions_risks`
  ADD PRIMARY KEY (`element`),
  ADD KEY `element` (`element`);

--
-- Indexes for table `actions_victory`
--
ALTER TABLE `actions_victory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `element` (`element`);

--
-- Indexes for table `answer_complete`
--
ALTER TABLE `answer_complete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_desired`
--
ALTER TABLE `answer_desired`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_mc`
--
ALTER TABLE `answer_mc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_proof`
--
ALTER TABLE `answer_proof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inviteattendees`
--
ALTER TABLE `inviteattendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_elements`
--
ALTER TABLE `performance_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance_mc`
--
ALTER TABLE `performance_mc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proofs`
--
ALTER TABLE `proofs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions_measure`
--
ALTER TABLE `actions_measure`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actions_milestone`
--
ALTER TABLE `actions_milestone`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actions_victory`
--
ALTER TABLE `actions_victory`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer_complete`
--
ALTER TABLE `answer_complete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `answer_desired`
--
ALTER TABLE `answer_desired`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `answer_mc`
--
ALTER TABLE `answer_mc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `answer_proof`
--
ALTER TABLE `answer_proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inviteattendees`
--
ALTER TABLE `inviteattendees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `performance_elements`
--
ALTER TABLE `performance_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `performance_mc`
--
ALTER TABLE `performance_mc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `proofs`
--
ALTER TABLE `proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

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
