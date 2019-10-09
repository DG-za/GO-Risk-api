-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2019 at 07:12 PM
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
-- Database: `prepare-clean`
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
(2, 'Tools', '<strong>Ensure the team has the tools to achieve zero harm.</strong><br/>\r\nRisk-based tools are provided to enable sustainable excellent SHE results in our OMEs. These tools aim to align SHE activities globally and drive regional standardisation where possible. These include management systems, business processes, enabling technology, procedures and toolkits. Utilising these tools, OMEs can meet SHE performance requirements, consistent with applicable legal requirements and improved maturity levels.', 'tools.svg'),
(3, 'People', '<strong>Ensure team members are fit and skilled to achieve zero harm.</strong><br/>\r\nPeople-related practices are used to enable sustainable zero harm. Our workforce is enabled through leaders who create a zero harm climate. Leaders focus on zero harm behaviour, learning, skills and competency development. A competent, fit-for-purpose SHE function provides the necessary SHE support to OMEs.\r\n', 'people.svg'),
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
(8, 1, '1.2 SHE Fundamentals', 1, 'b'),
(9, 1, '1.3 Targets and plans', 2, 'c'),
(10, 2, '2.1 SHE Risk Management', 0, 'd'),
(11, 2, '2.2.a Project Management', 1, 'e'),
(12, 2, '2.2.b Operations and Maintenance', 3, 'f'),
(13, 2, '2.2.c Supply Chain Management', 5, 'g'),
(14, 2, '2.3 SHE incident management', 2, 'h'),
(15, 2, '2.4 Governance and assurance', 4, 'i'),
(16, 3, '3.1 Climate and Behaviour', 0, 'j'),
(17, 3, '3.2 Training and skills', 1, 'k'),
(18, 3, '3.3 Management of people', 2, 'l'),
(19, 3, '3.4 Stakeholder engagement', 3, 'm'),
(20, 4, '4.1 Measure and report', 0, 'n'),
(21, 4, '4.2 Improvement', 1, 'o'),
(22, 1, '1.1 SHE Policy & Strategy', 0, 'a');

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
(64, 22, 'My team is aware of the SHE policy (or OME SHE policy declaration) and its contents.', 'No not all', 'The SHE policy is available for those who want to see it.', 'Yes, leaders commit to the SHE policy and communicate it.', 'Yes, our SHE policy is consistently used to guide our SHE direction and improvement plans. '),
(65, 22, 'My team is committed to the goal of \r\nsustainable zero harm.', 'No not all', 'Yes, mostly.', 'Yes, this is evident in all leaders setting a tone for sustainable zero harm – walking the talk. ', 'Yes, we all believe zero harm is possible and participate in the journey with passion. All teams collaborate and take pride in sustained zero harm results.'),
(8, 8, 'Engaged People', 'SHE is not a way of life and/or people are mostly disengaged on our journey to sustainable zero harm.', 'Every team member understands what is required to achieve zero harm, is competent and takes ownership to execute their daily jobs with zero harm.', 'Teams are proactively involved in SHE programmes and people are individually committed to zero harm by caring for themselves, others and the environment. ', 'Our people consistently behave in a way which demonstrates that zero harm is embedded as a way of life. All people are passionate about achieving sustainable zero harm.'),
(66, 22, 'Our One Sasol SHE Excellence approach is understood and implemented.', 'No', 'Our leaders are aware of the requirements of the 1S SHE EA and drive consistent compliance with SHE rules and procedures.', 'Our leaders use the SHE fundamentals as their belief system to drive the journey towards zero harm. The 1S SHE EA is understood and integrated with the Operating Standards used by the OME. ', 'Yes, we all live by the SHE fundamentals, our SHE approach is standardised and proven effective in reducing SHE risks. The 1S SHE EA is used by leadership to direct risk-based SHE practices which are embedded at all team levels as the “way we do SHE”.'),
(10, 8, 'Continuous Improvement', 'SHE practices are mostly dependent on the team’s experience and improved as part of corrective actions.  The team has a limited view on gaps or improvement areas.', 'SHE practices are compliant with legal requirements. Focus on the embedding of a strong foundation of compliance as a basis for further improvements.', 'Improvement areas in SHE practices are identified proactively based on an understanding of incident root causes, learnings and the maturity of SHE practices. These are actioned to achieve improved SHE results.', 'A mindset of continuous improvement is embedded and drives the achievement of sustainable zero harm results. A formal continuous improvement program is in place. Best practices and learnings are shared and embedded across OMEs.'),
(12, 9, 'My team clearly understand our SHE objectives and targets', 'No', 'Yes, we adopt our OME SHE objectives and targets.', 'Yes, our team set our own, more stretched objectives and targets for Zero Harm.', 'Yes, our targets are stretched and set based on desired risk reduction areas and an improvement pull.'),
(13, 9, 'We have implemented standardised leading and lagging indicators', 'No, mostly lagging indicators', 'Yes, our leading and lagging indicators are adopted from Group guidelines.', 'Yes, our leading indicators are addressing our SHE critical controls. We measure them through an integrated SHE management system.', 'Yes, SHE leading indicators are owned and used extensively by teams to drive team level SHE performance improvement and risk reduction.'),
(14, 9, 'We have a SHE Game Plan with detailed actions to achieve our performance targets.', 'There are no detailed actions', 'Yes, our SHE targets are cascaded and included in our team Game Plan / annual improvement plan.', 'Yes, our SHE Game Plan focus areas are determined and prioritised based on analysis of performance gaps, leading indicator trends and SHE risks. ', 'Yes, best practice benchmarking and maturity assessments are done to confirm SHE Game Plan focus areas. '),
(15, 9, 'We track the execution of our SHE Game Plan & take corrective action.', 'No', 'Yes. The SHE Game Plan is tracked. Our leaders actively drive execution and provide the required resources.', 'Yes, SHE Game Plan actions are included in individual performance plans. Deviations are identified, and corrective action taken timeously.', 'Yes, and teams take full ownership of the embedding of SHE Game Plan actions which is evident in SHE performance gaps being closed sustainably.'),
(16, 10, 'We have identified all our operations’ SHE risks.', 'No not all.', 'Yes. We have a baseline risk assessment.', 'Yes, and we frequently review them as needed.', 'Yes, and our SHE system proactively flags us when our SHE risk profile is changing. '),
(17, 10, 'We have identified and evaluated the controls of the top SHE risks through the Bow-tie methodology.', 'No not all.', 'Yes, we have customised Bow-tie analysis of all our top SHE risks.', 'Yes, and we have identified those with inadequate design effectiveness.', 'Yes, all our critical controls have adequate design effectiveness'),
(18, 10, 'All our controls are identified and integrated into the daily operations.', 'Hap hazard.', 'Yes, performance criteria for critical controls are defined and integrated into daily tasks.', 'Control executors know what to do if any control is flagged for ineffectiveness.', 'Yes, and leading indicators are linked to controls.'),
(19, 10, 'We use risk assessments (RA) to embed a culture of risk awareness.', 'Hap hazard.', 'Yes, we execute prescribed task RA and drive a continuous RA program.', 'Yes, and we utilise pre-task RA and PJOs on high risk tasks to proactively ensure controls and behaviours are in place.', 'Yes, and teams self-improve controls and behaviours.'),
(20, 10, 'We monitor the effectiveness of controls.', 'Hap hazard.', 'Yes, my team can report on the effectiveness of critical controls by means of field verification inspection sheets. ', 'Yes, my team can report the effectiveness on all controls and integrate various sources of information to pro-actively act on risk exposure. ', 'Yes, I receive an automated control effectiveness reporting document.'),
(21, 11, 'We follow a SHE philosophy in prioritising and selecting projects.', 'No not all', 'Yes, to comply to legal and other requirements.', 'Yes, we also consider anticipated future sustainability requirements.', 'Yes, and we base it on a fundamental belief that improvement towards zero harm will result in a competitive advantage for our business.  '),
(22, 11, 'Our project SHE risk assessments influence our decisions regarding project approval, concept, feasibility, design and development.', 'No not always', 'We only approve projects if all SHE risk assessments are done.', 'Yes, SHE risk assessment drive improved design standards that enable safer operations.', 'Yes, we include SHE risk reduction practices in the project as well as industry leading SHE technologies, where possible.'),
(23, 11, 'The team takes full ownership of SHE performance during project execution.', 'No', 'Yes, the Project SHE manager ensures that the appropriate SHE practices are followed.', 'Yes, the whole project team (with the service provider) take ownership and pro-actively address the project SHE risks.', 'Yes, project execution objectives of zero harm, project cost and schedule are not in conflict, but are optimised in total to deliver sustainable zero harm results. '),
(24, 11, 'We provide for and manage closure and end of life projects.', 'No, mostly done due to external pressures.', 'Yes, we adhere to the minimum legal compliance. Resources are provided.', 'Yes, we plan closure projects to mitigate future risks. We mitigate rehabilitation risks pro-actively during plant design.', 'Yes, our leaders actively pursue opportunities to minimise the SHE impacts of operations closure.'),
(25, 12, 'My team apply zero harm work practices (people and process related) to manage our SHE risks. ', 'No not always', 'Yes, our zero harm work practices are consistently implemented and effectively managed.', 'Yes, my team own these practices. They focus on the effectiveness of controls.', 'Yes, these practices have been internalised in the team behaviour. SHE risks are reduced through integrated improvements of zero harm work practices. '),
(26, 12, 'Our operations and maintenance procedures support zero harm', 'No', 'Yes, these procedures address SHE risks and are adhered to.', 'Yes, my team actively use, review and optimise procedures to ensure that controls are executed effectively.', 'Yes, the use and adherence to procedures are embedded as key behaviours to reduce SHE risks. '),
(27, 12, 'We use our monitoring measures to ensure we timeously act on control effectiveness.', 'On an ad-hoc basis', 'Yes, we have a set of controls that we monitor daily.', 'Yes, our controls are owned and executed to pro-actively manage our SHE risks. ', 'Yes, we continuously aim to improve the effectiveness of controls to reduce SHE risks sustainably.'),
(28, 12, 'We identify and manage our PSCE and/or SHE critical equipment effectively.', 'No, not all critical equipment is identified or effectively managed.', 'Yes, adherence to maintenance strategies is monitored.', 'Yes, the list of PSCE and/or SHE critical equipment is regularly updated. Proactive maintenance strategies are implemented.', 'Yes, maintenance strategies are consistently reviewed based on changes to SHE risks or controls. '),
(29, 13, 'We select and manage our suppliers and service providers based on prescribed legal and SHE requirements.', 'Not always', 'Yes, only approved service providers are used. Contracts specify SHE requirements and are monitored by contract owners', 'Yes, external parties are engaged prior to contracting to ensure understanding of the top SHE risks and critical controls.', 'Yes, two-way learning is taking place to improve SHE practices. All parties are actively engaged to drive zero harm. '),
(30, 13, 'We understand and manage product safety.', 'Not always', 'Yes, we evaluate, registrate, transport and store procured or manufactured products to ensure SHE legal compliance.', 'Yes, and product risks are well understood and managed throughout the product life cycle. ', 'Yes, and plans are co-created with suppliers, service providers and customers to reduce SHE risks related to products. product safety industry trends are analysed and benchmarked.'),
(31, 13, 'We manage product transportation SHE risks.', 'No', 'Yes, product transportation legal and industry safety requirements are adhered with and monitored. ', 'Yes, and product transportation risk management plans are in place and are regularly reviewed and improved.', 'Yes, and the improvement of product transportation zero harm performance is a collaborative effort between all stakeholders.'),
(32, 13, 'We ensure that supply chain activities are executed safely.', 'We don’t always know', 'Yes, we manage the activities to ensure adherence to regulatory requirements.', 'Yes, and we manage the activities through a co-developed SHE risk management plan, integrated into operational systems, processes and procedures.', 'Yes, and we continuously focus on embedding risk reduction measures as the way of working.'),
(33, 14, 'We are confident that we report all SHE incidents ', 'No.', 'Yes.', 'Yes, we also report near misses. ', 'Yes, a continuous improvement culture supports the reporting of all incidents by all stakeholders.'),
(34, 14, 'Our incident investigations are done effectively.', 'The incident management process is not always followed.', 'We follow the SHE incident management process in the Group procedure.', 'There is a definite difference in focus and depth for the investigations of high severity incidents.', 'High potential severity incidents or near misses are investigated as a matter of priority.'),
(35, 14, 'We spend enough time to uncover the true root cause of incidents.', 'No.', 'Yes, we follow the RCA process diligently.', 'Yes, we dig deep into design and operating failures of our controls. We identify organisational, workplace and personal factors for control failures.', 'Yes, we also use the relevant Bow-tie scenario to analyse the control failures. '),
(36, 14, 'We evaluate the effectiveness of the corrective and preventative actions from incident investigations.', 'No.', 'Yes.', 'Yes, we thoroughly analyse the actual against the intended results of the preventative and corrective actions. ', 'Yes, we benchmark against relevant incidents and the effectiveness of those actions. We also update the relevant Bow-ties after investigations.'),
(37, 14, 'We embed learnings from incidents effectively.', 'No.', 'We share the learnings as required by Group.', 'We customise learnings from incidents and implement it in our operations.', 'We actively track and audit the embedding of the learnings to ensure embedding.'),
(38, 15, 'We have defined SHE roles and responsibilities and established governance meetings', 'No, meetings are not held consistently and roles are sometimes unclear', 'Yes', 'Yes, our governance meetings follow a risk-based agenda and are chaired and managed by leaders', 'Yes, we know of upcoming changes and act appropriately well in advance of deadlines.'),
(39, 15, 'A process exists to ensure legislation and standards are communicated, understood and complied to.', 'No, we follow an informal process', 'Yes', 'Yes, and we incorporate changes in legislation and standards pro-actively into SHE processes and training.', 'Yes, we know of upcoming changes and act appropriately well in advance of deadlines.'),
(40, 15, 'We have a formal SHE document governance process in place.', 'No', 'Yes', 'Yes, and easily accessible in the OME', 'Yes, and fully integrated with the SHE management system and Group SHE document management system'),
(41, 15, 'We apply learnings from SHE assurance deviations.', 'Not always', 'Yes, we understand our recent audit findings.', 'Yes, assurance deviations are analysed, root causes identified and corrective and preventive actions are implemented.', 'Yes, we update all relevant inspections and logbooks to reflect the improvement actions, with specific focus on the improvement of critical control assurance deviations. '),
(42, 15, 'We drive risk-based combined assurance.', 'No, mainly only through external (4th level) of assurance. ', 'Yes, internal and external audits are in place.', 'Yes, we focus especially on 1st level of assurance activities to ensure that we are more pro-active in addressing inefficiencies. ', 'Yes, our assurance activities are optimised across all levels of assurance to reduce the burden on the OME.'),
(43, 16, 'BT climate diagnostics are conducted regularly.', 'No BT diagnostics conducted.  Hope for the best and play by luck. ', 'BT diagnostics are conducted to analyse the SHE climate and inform leaders. ', 'Leaders request BT diagnostics pro-actively, even when SHE results are positive. Improvement plans are put in place, tracked and assurance on effectiveness is provided.', 'Leaders have a standard rhythm of when BT diagnostics are conducted in order to track effectiveness of improvement plans and ensure sustainable improvement.'),
(44, 16, 'Our team SHE climate is conducive to zero harm. ', 'Some individuals still perform work unsafely and try to hide incidents for fear of reprisal.', 'Leaders consistently manage the production balance for sustainable safe operations. \nNo work is done unless it is done safely.\n', 'Individuals are empowered to take personal accountability for SHE. Leaders create a climate of openness, care, trust and accountability.', 'Desired SHE behaviours are embedded into the culture of teams. This is evident in sustained SHE performance and behaviours.'),
(45, 16, 'Our leaders are visible and personally drive the journey to zero harm.', 'Leadership visible mostly during or after SHE incidents.', 'Leaders are visible as per planned site visits and during incident investigations. ', 'Leaders engage with their teams on a face-to-face basis about SHE matters. ', 'Leaders own and personally drive significant SHE issues immediately. '),
(46, 16, 'The Life Saving Rules are implemented.', 'No', 'Yes', 'Yes, teams take ownership for the effective application of the LSR as seen in reduced high severity incidents.', 'Yes, we continuously review our LSRs and update them in anticipation of emerging SHE risk exposure. '),
(47, 16, 'Our BBS programme is implemented. ', 'No', 'Yes, in a very basic way.', 'Yes, observations are analysed, barriers are removed and it results in improved behaviours and participation by our workforce.', 'Yes, our BBS programme is fully embedded, owned and driven by the workforce. It is an important part of creating a climate for zero harm. '),
(48, 17, 'We identified job-specific SHE competencies based on risk exposure?', 'No, not based on risk exposure', 'Yes, we have included it in our training matrices, which also include mandatory SHE training requirements.', 'Yes, we also update SHE competencies based on the workplace risk profile. These are included in personal development plans and actively managed.', 'Yes, we update our SHE competencies in anticipation of emerging SHE risk trends or changes in the working environment. '),
(49, 17, 'Our training content covers the following:', 'SHE training content is mostly outdated', 'It covers relevant legislative requirements', 'It also includes relevant SHE risks and controls and is updated based on learnings from incidents, assurance deviations and best practices.', 'We update our SHE training material in anticipation of emerging SHE risk trends or changes in the working environment.'),
(50, 17, 'We manage the effectiveness of our SHE training:', 'It is not reviewed at all or in a hap hazard way.', 'The effectiveness of SHE training interventions is reviewed based on theoretical “pass rate”, and any gaps are closed.', 'Managers monitor how acquired skills are applied and adapt SHE training interventions to ensure the specific learning outcome is met.', 'The embedding of SHE competences is evident in the reduction of repeat incidents and improved SHE results. '),
(51, 17, 'We improve competency through coaching and mentoring', 'No', 'Yes, line managers oversee high risk tasks.', 'Yes, our coaches and mentors play a key role in on-the-job training to enable continuous improvement towards zero harm.', 'Yes, teams coach each other as part of a culture of continuous improvement towards zero harm. '),
(52, 18, 'My team’s operational responsibilities reflect a focus on SHE.', 'No, not always', 'Yes, SHE forms a part of all job profiles and procedures.', 'Yes, SHE reflects in work instructions and are translated into individual performance plans.', 'Yes, operational responsibilities include SHE behaviour that are owned by the team who apply it in day-to-day activities. '),
(53, 18, 'Our Operational and SHE structures are fully resourced', 'No', 'Yes, both our Operational and SHE structures.', 'Yes, we have succession plans in place of our critical SHE positions.', 'Yes, we continuously review and update our structures to mitigate risk exposure.'),
(54, 18, 'We always consider SHE competence and mindset in recruiting and selecting resources.', 'No, not always', 'Yes, we consider SHE competence in the recruitment process.', 'Yes, we also consider applicants’ personal mindset towards zero harm and possible future SHE requirements per job profile', 'Yes, gaps in individuals’ a SHE competence and mindset are proactively addressed through their personal development plans.'),
(55, 18, 'We hold individuals accountable for SHE performance.', 'No, we apply an inconsistent management process', 'Yes, we apply the HR performance management process.', 'Yes, individuals take ownership of their SHE performance', 'Yes, teams take ownership for SHE behaviour which is evident in SHE performance.'),
(56, 18, 'We adequately recognise SHE performance.', 'No, mainly production performance is recognised.', 'Yes, our recognition scheme includes SHE performance', 'Yes, teams recognise SHE performance and positive SHE behaviour.', 'Yes, we have positive reinforcement recognition schemes based on zero harm behaviour that enables a zero harm climate. '),
(57, 19, 'Our SHE communication and engagement plans are in place and implemented', 'No, we communicate and engage on an ad-hoc basis', 'Yes, basic SHE engagement and communication plans are in place and executed mostly by the SHE function.', 'Yes, leaders take ownership of the plans and our stakeholders actively participate in engagement and communication opportunities.  ', 'Yes, our engagement and communication plans are continuously updated based on changes in the SHE risk profile, SHE risk exposure and critical control effectiveness.'),
(58, 19, 'We manage SHE-related changes which can impact our goal of zero harm.', 'Not in a structured way.', 'Yes, we update our Communications plan accordingly.', 'Yes, senior leaders implement measures to mitigate the impact of zero harm as part of an integrated change plan.', 'Yes, changes are implemented and managed through partnerships with key stakeholders. The change management approach is continuously improved.'),
(59, 19, 'We measure and track the effectiveness of our SHE engagement and change approaches.', 'No', 'Yes, we do spot-checks to determine effectiveness. ', 'Yes, we assess the effectiveness in a structured way through engagement surveys. Improvement actions are agreed with stakeholders. ', 'Effectiveness is continuously assessed through close relationship management of stakeholders. Stakeholders are keen ambassadors of zero harm.'),
(60, 21, 'We understand the gaps to our SHE results.', 'No not always', 'Yes, we follow the plan, do, review, improve cycle. ', 'Yes, a process is in place to monitor and improve SHE results and effectiveness of critical controls', 'Yes, teams own their SHE performance review and systems enable dynamic management of leading indicators to immediately address gaps. '),
(61, 21, 'We conduct management reviews.', 'No not always', 'The suitability, adequacy and effectiveness of our SHE management system is formally reviewed.', 'Learnings from assurance deviations and incidents are used to proactively identify improvement areas for the our SHE approach.', 'Employees on all levels contribute to the improvement of our SHE approach.'),
(62, 21, 'We have a process in place to continuously improve our SHE practices.', 'No, only on an ad hoc basis or with a new programme', 'Yes, our improvement actions are always logged, discussed, and tracked to completion.', 'Yes, we specifically focus on reducing risk exposure and the improvement of control effectiveness. SHE meeting agendas include SHE improvement. ', 'Yes, my team also continuously benchmark against other businesses and focus on improving systems and enabling technologies.'),
(63, 21, 'We assess the impact of our improvement plans.', 'No', 'Yes, based on the SHE performance statistics.', 'Yes, we also actively track the elimination of repeat SHE incidents and risk exposure.', 'Yes, even once we have proven success we further plan, do, review and improve on the improvement plan to ensure that we achieve sustainable zero harm. '),
(67, 22, 'We adhere to all relevant management standards.', 'No not all', 'Yes, we know what standards are relevant and align our performance requirements to enable adherence.   ', 'Yes, optimised SHE processes are driven by assigned owners and enable leaders to manage team-specific SHE risks effectively.', 'Yes, our integrated management systems enable continuous improvement of SHE performance.'),
(68, 8, 'Accountable leadership', 'Leaders are only visible during or after SHE incidents and create a SHE climate of fear and blame. The SHE function mainly takes ownership for SHE.', 'Leaders are visibly committed to zero harm. Leaders enable teams to fulfil their SHE responsibilities and lead by example.', 'Leaders inspire people, creates a SHE climate conducive to achieving zero harm and proactively address SHE performance through improved SHE practices. ', 'Leaders consistently set the tone for sustainable zero harm and genuinely care for their people. The systems and culture to enable zero harm prevail after the leader leaves the team. '),
(69, 8, 'SHE event prevention', 'There is limited understanding of SHE risks and controls in teams. The culture is re-active.', 'SHE risks and related controls are identified, assessed, prioritised and communicated to teams to ensure legal compliance. ', 'Risk-based SHE practices are applied in teams. Risk controls are verified and assurance is given on the effectiveness of all critical controls. SHE activities are prioritised based on a thorough understanding of risk profile and exposure.', 'Integrated management of SHE risks across disciplines.  Learnings from control failures are implemented, checked for effectiveness and embedded. Controls are improved continuously to reduce risk.'),
(70, 20, 'We manage the capturing our SHE data to ensure data quality.', 'Informally. ', 'Yes, we capture data according to a procedure and the SHE team verifies data accuracy.', 'Yes, we have automated systems to manage data input quality.', 'Yes, we have automated systems that allow real-time capturing and reporting of data.'),
(71, 20, 'We report on SHE KPIs.', 'Haphazard reporting', 'Yes, reporting on lagging KPIs and legal compliance using formal systems.', 'Yes, comprehensive reporting enables analysis of risk-based leading and lagging KPIs, using standardised systems.', 'Yes, automated, integrated dashboards enable dynamic management of risk-based leading KPIs for proactive management action.'),
(72, 20, 'We review and benchmark our SHE results at pre-defined intervals.', 'Only when we are asked', 'Yes, lagging indicator results are analysed and reviewed to identify improvement opportunities.', 'Yes, we focus on performance gaps for leading indicators and identify root causes and improvement opportunities. ', 'Yes, we consolidate all identified gaps, prioritise based on risk exposure and actively provide resources to close the gaps. ');

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
(201, 'manager', 'Manager', 'User', 'manager', 'bc7316929fe1545bf0b98d114ee3ecb8');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer_desired`
--
ALTER TABLE `answer_desired`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer_mc`
--
ALTER TABLE `answer_mc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer_proof`
--
ALTER TABLE `answer_proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proofs`
--
ALTER TABLE `proofs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
