-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 04:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'akshay@jagdale', 'admin@akshay');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(25, 'BBA', '2022-09-14 19:48:21'),
(26, 'BCS', '2022-09-14 19:47:57'),
(65, 'BCA', '2022-09-14 19:47:39'),
(67, 'BBAIT', '2022-09-16 09:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(4, 'Akash Raul', '26', 'male', '2019-11-15', 'third year', 'Akash@gmail.com', 'Akash', 'active'),
(5, 'Soniya Bhat', '25', 'female', '2019-11-14', 'second year', 'Soniya@gmail.com', 'Soniya', 'active'),
(6, 'Chandrika Padher', '65', 'female', '2019-12-24', 'third year', 'Chandrika@gmail.com', 'Chandrika', 'active'),
(7, 'Manisha Kote', '26', 'female', '2018-11-25', 'second year', 'Manisha@gmail.com', 'Manisha', 'active'),
(8, 'Dava Langhi', '26', 'male', '2019-12-21', 'second year', 'dava@gmail.com', 'dava', 'active'),
(9, 'komal valajkar', '26', 'female', '2024-01-31', 'first year', 'komal@gmail.com', 'komal', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(295, 4, 12, 25, 'Diode, inverted, pointer', 'old', '2022-06-07 02:52:14'),
(296, 4, 12, 16, 'Data Block', 'old', '2022-06-05 02:52:14'),
(297, 6, 12, 18, 'Programmable Logic Controller', 'old', '2022-06-05 12:59:47'),
(298, 6, 12, 9, '1850s', 'old', '2022-06-05 12:59:47'),
(299, 6, 12, 24, '1976', 'old', '2022-06-05 12:59:47'),
(300, 6, 12, 14, 'Operating System', 'old', '2022-06-12 12:59:47'),
(301, 6, 12, 19, 'WAN (Wide Area Network)', 'old', '2019-12-05 12:59:47'),
(302, 6, 11, 28, 'fds', 'new', '2019-12-05 12:04:28'),
(303, 6, 11, 29, 'sd', 'new', '2019-12-05 12:04:28'),
(304, 6, 12, 15, 'David Filo & Jerry Yang', 'new', '2019-12-05 12:59:47'),
(305, 6, 12, 17, 'System file', 'new', '2019-12-05 12:59:47'),
(306, 6, 12, 10, 'Field', 'new', '2019-12-05 12:59:47'),
(307, 6, 12, 9, '1880s', 'new', '2019-12-05 12:59:47'),
(308, 6, 12, 21, 'Temporary file', 'new', '2019-12-05 12:59:47'),
(309, 4, 11, 28, 'q1', 'new', '2019-12-05 13:30:21'),
(310, 4, 11, 29, 'dfg', 'new', '2019-12-05 13:30:21'),
(311, 4, 12, 16, 'Data Block', 'new', '2019-12-07 02:52:14'),
(312, 4, 12, 20, 'Plancks radiation', 'new', '2019-12-07 02:52:14'),
(313, 4, 12, 10, 'Report', 'new', '2019-12-07 02:52:14'),
(314, 4, 12, 24, '1976', 'new', '2019-12-07 02:52:14'),
(315, 4, 12, 9, '1930s', 'new', '2019-12-07 02:52:14'),
(316, 8, 12, 18, 'Programmable Lift Computer', 'new', '2020-01-05 03:18:35'),
(317, 8, 12, 14, 'Operating System', 'new', '2020-01-05 03:18:35'),
(318, 8, 12, 20, 'Einstein oscillation', 'new', '2020-01-05 03:18:35'),
(319, 8, 12, 21, 'Temporary file', 'new', '2020-01-05 03:18:35'),
(320, 8, 12, 25, 'Diode, inverted, pointer', 'new', '2020-01-05 03:18:35'),
(321, 5, 11, 29, 'asd', 'new', '2022-09-14 20:15:49'),
(322, 5, 11, 28, 'q1', 'new', '2022-09-14 20:15:49'),
(323, 5, 11, 30, 'asd', 'new', '2022-09-14 20:15:49'),
(324, 7, 13, 32, 'object-oriented programming', 'new', '2022-09-14 20:17:47'),
(325, 7, 13, 31, 'Guido van Rossum', 'new', '2022-09-14 20:17:47'),
(326, 7, 13, 33, 'Python code is only compiled', 'new', '2022-09-14 20:17:47'),
(327, 7, 13, 35, 'error', 'new', '2022-09-14 20:17:47'),
(328, 7, 13, 34, 'Def', 'new', '2022-09-14 20:17:47'),
(329, 8, 13, 34, 'Function', 'new', '2022-09-15 19:18:42'),
(330, 8, 13, 31, 'Guido van Rossum', 'new', '2022-09-15 19:18:42'),
(331, 8, 13, 33, 'Python code is only compiled', 'new', '2022-09-15 19:18:42'),
(332, 8, 13, 35, '1 2 ', 'new', '2022-09-15 19:18:42'),
(333, 8, 13, 32, 'functional programming', 'new', '2022-09-15 19:18:43'),
(334, 4, 13, 35, '1 2 3', 'new', '2022-09-17 09:27:10'),
(335, 4, 13, 31, 'Guido van Rossum', 'new', '2022-09-17 09:27:10'),
(336, 4, 13, 32, 'functional programming', 'new', '2022-09-17 09:27:10'),
(337, 4, 13, 34, 'Function', 'new', '2022-09-17 09:27:10'),
(338, 4, 13, 33, 'Python code is both compiled and interpreted', 'new', '2022-09-17 09:27:10'),
(339, 7, 24, 41, 'java.lang.Object', 'new', '2022-09-19 08:50:12'),
(340, 7, 24, 44, '8', 'new', '2022-09-19 08:50:12'),
(341, 7, 24, 42, 'java.applet', 'new', '2022-09-19 08:50:12'),
(342, 7, 24, 50, 'Basic', 'new', '2022-09-19 08:50:12'),
(343, 7, 24, 48, 'Label', 'new', '2022-09-19 08:50:12'),
(344, 7, 24, 49, ' new', 'new', '2022-09-19 08:50:12'),
(345, 7, 24, 47, 'byteclass', 'new', '2022-09-19 08:50:12'),
(346, 7, 24, 43, 'Moderate type', 'new', '2022-09-19 08:50:12'),
(347, 7, 24, 46, 'Dynamic', 'new', '2022-09-19 08:50:13'),
(348, 7, 24, 45, 'Multithreading', 'new', '2022-09-19 08:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(51, 6, 12, 'used'),
(52, 4, 11, 'used'),
(53, 4, 12, 'used'),
(54, 8, 12, 'used'),
(55, 5, 11, 'used'),
(56, 7, 13, 'used'),
(57, 8, 13, 'used'),
(58, 4, 13, 'used'),
(59, 7, 24, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(10, 12, 'What is part of a database that holds only one type of information?', 'Report', 'Field', 'Record', 'File', 'Field', 'active'),
(14, 12, 'OS computer abbreviation usually means ?', 'Order of Significance', 'Open Software', 'Operating System', 'Optical Sensor', 'Operating System', 'active'),
(15, 12, 'Who developed Yahoo?', 'Dennis Ritchie & Ken Thompson', 'David Filo & Jerry Yang', 'Vint Cerf & Robert Kahn', 'Steve Case & Jeff Bezos', 'David Filo & Jerry Yang', 'active'),
(16, 12, 'DB computer abbreviation usually means ?', 'Database', 'Double Byte', 'Data Block', 'Driver Boot', 'Database', 'active'),
(17, 12, '.INI extension refers usually to what kind of file?', 'Image file', 'System file', 'Hypertext related file', 'Image Color Matching Profile file', 'System file', 'active'),
(18, 12, 'What does the term PLC stand for?', 'Programmable Lift Computer', 'Program List Control', 'Programmable Logic Controller', 'Piezo Lamp Connector', 'Programmable Logic Controller', 'active'),
(19, 12, 'What do we call a network whose elements may be separated by some distance? It usually involves two or more small networks and dedicated high-speed telephone lines.', 'URL (Universal Resource Locator)', 'LAN (Local Area Network)', 'WAN (Wide Area Network)', 'World Wide Web', 'WAN (Wide Area Network)', 'active'),
(21, 12, '.TMP extension refers usually to what kind of file?', 'Compressed Archive file', 'Image file', 'Temporary file', 'Audio file', 'Temporary file', 'active'),
(22, 12, 'What do we call a collection of two or more computers that are located within a limited distance of each other and that are connected to each other directly or indirectly?', 'Inernet', 'Interanet', 'Local Area Network', 'Wide Area Network', 'Local Area Network', 'active'),
(24, 12, '	 In what year was the \"@\" chosen for its use in e-mail addresses?', '1976', '1972', '1980', '1984', '1972', 'active'),
(25, 12, 'What are three types of lasers?', 'Gas, metal vapor, rock', 'Pointer, diode, CD', 'Diode, inverted, pointer', 'Gas, solid state, diode', 'Gas, solid state, diode', 'active'),
(27, 15, 'asdasd', 'dsf', 'sd', 'yui', 'sdf', 'yui', 'active'),
(31, 13, 'Who developed Python Programming Language?', 'Wick van Rossum', 'Rasmus Lerdorf', 'Guido van Rossum', 'Niene Stom', 'Guido van Rossum', 'active'),
(32, 13, 'Which type of Programming does Python support? ', 'object-oriented programming', 'structured programming', 'functional programming', 'all of the mentioned', 'all of the mentioned', 'active'),
(33, 13, 'Is Python code compiled or interpreted?', 'Python code is both compiled and interpreted', 'Python code is neither compiled nor interpreted', 'Python code is only compiled', ' Python code is only interpreted', 'Python code is neither compiled nor interpreted', 'active'),
(34, 13, 'Which keyword is used for function in Python language? ', 'Function', 'Def', 'Fun', 'Define', 'Def', 'active'),
(35, 13, 'What will be the output of the following Python code?  i = 1 while True:     if i%3 == 0:         break     print(i)       i + = 1', '1 2 3', 'error', '1 2 ', 'none of the mentioned', 'error', 'active'),
(36, 13, 'To add a new element to a list we use which Python command?', 'list1.addEnd(5)', ' list1.addLast(5)', 'list1.append(5)', 'list1.add(5)', 'list1.append(5)', 'active'),
(37, 13, ' What is the maximum possible length of an identifier in Python?', '79 characters', '31 characters', '63 characters', 'none of the mentioned', 'none of the mentioned', 'active'),
(38, 13, 'Which of the following is a Python tuple?', '{1, 2, 3}', '{ }', '[1, 2, 3]', '(1, 2, 3)', '(1, 2, 3)', 'active'),
(39, 13, '', '', '', '', '', '', 'active'),
(40, 13, ' Which of the following functions is a built-in function in python?', 'factorial()', ' print()', 'seed()', ' sqrt()', ' print()', 'active'),
(41, 24, ' In which of the following is toString() method defined?', 'java.lang.Object', 'java.lang.String', 'java.lang.util', 'None', 'java.lang.Object', 'active'),
(42, 24, 'Which package is used to remotely invoke a method?', ' java.awt', 'java.rmi', 'java.applet', 'java.util', 'java.rmi', 'active'),
(43, 24, 'Java is a ..... language.', 'Strongly type', 'Weakly type', 'Moderate type', 'None of above', 'Strong type', 'active'),
(44, 24, 'How many primitive data types are there in java?', '7', '5', '8', '9', '8', 'active'),
(45, 24, '______ is the ability of a Java application to perform multiple tasks at the same time.', 'Multiprogramming ', 'Multiprocessing', 'Multithreading', 'Multitasking', 'Multithreading', 'active'),
(46, 24, 'Which Property does not hold good for Java.', 'Object-oriented', 'Secure ', 'Dynamic', 'Complex', 'Complex', 'active'),
(47, 24, 'A compiler converts the Java program into an intermediate language representation called ___', 'bytecode', ' byte', 'byteclass', 'bytejava', 'bytecode', 'active'),
(48, 24, '___ is a multi-way branch statement', 'Continue', 'Break', 'Label', ' Switch ', ' Switch ', 'active'),
(49, 24, '___ Operator is used to creating an object.  ', 'class', ' print', ' new', 'main', ' new', 'active'),
(50, 24, 'Java is associated with ___ programming Language', 'C', 'Oak', 'Basic', 'Perl', 'Oak', 'active'),
(52, 11, 'A reduction in price on purchase during a stated period of time is known as.', 'Discount', 'Sale', 'Allowance', 'None of these', 'Discount', 'active'),
(53, 11, 'Which among these is not the nature and characteristic of a service.', 'Durability', 'Intangibility ', 'Variability', 'Perishability', 'Durability', 'active'),
(54, 11, 'Which among these is concerned with pricing policies for late entrants to a market.', 'Marketing research', 'Market penetration ', 'Marketing skills', 'Market skimming', 'Market penetration ', 'active'),
(55, 11, 'USP is defined as', 'Unique selling price', 'Unique sales preposition', 'Unique selling proposition', 'Unique strategy promotion', 'Unique selling proposition', 'active'),
(56, 11, '_______ plays a positive role in solving marketing problems.', 'Marketing research', 'Customer behavior', 'Product concept ', 'Management', 'Marketing research', 'active'),
(57, 11, '________concept revolves around the customers.', 'Production', 'Marketing', 'Selling', 'Exchange', 'Marketing', 'active'),
(58, 11, 'Marketing is a process which aims at _____', 'Production', 'The satification of customer needs', 'Profit-making', 'Selling products', 'The satification of customer needs', 'active'),
(59, 11, 'In the history of marketing,when did the production  period end ?', 'In the late 1800s.', 'In the early 1900s', 'In the 1900s.', 'None of above.', 'In the 1900s.', 'active'),
(60, 11, '_____is the father of Modern Marketing.', 'Abraham Maslow', 'Philip kotler', 'Lester Wrunderman', 'Peter Drucker', 'Philip kotler', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(11, 25, 'Marketing', '10', 10, 'Marketing Knowledge', '2022-09-19 07:03:26'),
(12, 65, 'Database', '10', 11, 'DB Exam', '2022-09-19 07:04:20'),
(13, 26, 'Python', '10', 10, 'Basic', '2022-09-19 06:19:26'),
(24, 26, 'JAVA', '10', 10, 'Core Java', '2022-09-19 06:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks_tbl`
--

INSERT INTO `feedbacks_tbl` (`fb_id`, `exmne_id`, `fb_exmne_as`, `fb_feedbacks`, `fb_date`) VALUES
(4, 6, 'Glenn Duerme', 'Gwapa kay Miss Pam', 'June 05, 2022'),
(5, 6, 'Anonymous', 'Lageh, idol na nako!', 'June 05, 2022'),
(6, 4, 'Rogz Nunezsss', 'Yes', 'July 08, 2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
