-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 03:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'admin', '2025-04-15 15:25:33', 'Add Subject');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D'),
(89, 36, 'Right', 'A'),
(90, 36, 'Wrong', 'B'),
(91, 36, 'Wrong', 'C'),
(92, 36, 'Wrong', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(2, 'uploads/6843_File_Doc3.docx', '2013-10-11 01:24:32', 'fasfasf', 13, 36, 'Assignment number 1'),
(3, 'uploads/3617_File_login.mdb', '2013-10-28 19:35:28', 'q', 9, 80, 'q'),
(4, 'admin/uploads/7146_File_normalization.ppt', '2013-10-30 18:48:15', 'fsaf', 9, 95, 'fsaf'),
(5, 'admin/uploads/7784_File_ABSTRACT.docx', '2013-10-30 18:48:33', 'fsaf', 9, 95, 'dsaf'),
(6, 'admin/uploads/4536_File_ABSTRACT.docx', '2013-10-30 18:53:32', 'file', 9, 95, 'abstract'),
(10, 'admin/uploads/2209_File_598378_543547629007198_436971088_n.jpg', '2013-11-01 13:13:18', 'fsafasf', 9, 95, 'Assignment#2'),
(11, 'admin/uploads/1511_File_bootstrap.css', '2013-11-01 13:18:25', 'sdsa', 9, 95, 'css'),
(12, 'admin/uploads/4309_File_new  2.txt', '2013-11-17 23:21:46', 'test', 12, 145, 'test'),
(13, 'admin/uploads/5901_File_IS 112-Personal Productivity Using IS.doc', '2013-11-18 16:59:35', 'q', 12, 145, 'q'),
(15, 'admin/uploads/7077_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:38:45', 'afs', 18, 159, 'dasf'),
(16, 'admin/uploads/8470_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:19', 'test', 18, 160, 'assign1'),
(17, 'admin/uploads/2840_File_IMG_0698.jpg', '2013-11-25 15:53:20', 'q', 12, 161, 'q'),
(19, '', '2013-12-07 20:11:39', 'kevin test', 12, 162, ''),
(20, '', '2013-12-07 20:26:43', 'dasddsd', 12, 145, ''),
(21, '', '2013-12-07 20:26:43', 'dasddsd', 12, 162, ''),
(22, '', '2013-12-07 20:27:18', 'dasffsafsaf', 12, 162, ''),
(23, '', '2013-12-07 20:33:11', 'test', 12, 162, ''),
(24, 'admin/uploads/7053_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:39:05', 'kevin', 12, 0, 'kevin'),
(25, 'admin/uploads/2417_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:41:10', 'kevin', 12, 0, 'kevin'),
(26, 'admin/uploads/8095_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:43:25', 'kevin', 12, 0, 'kevin'),
(27, 'admin/uploads/4089_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:47:48', 'fasfafaf', 12, 0, 'fasf'),
(28, 'admin/uploads/2948_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:48:59', 'dasdasd', 12, 0, 'dasd'),
(29, 'admin/uploads/5971_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:50:47', 'dasdasd', 12, 0, 'dsad'),
(30, 'admin/uploads/6926_File_Resume.docx', '2014-02-13 11:27:59', 'q', 12, 167, 'q'),
(31, 'admin/uploads/8289_File_sample.pdf', '2020-12-21 09:56:48', 'asdasd', 9, 186, 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(7, '1IT'),
(8, '2IT'),
(12, '3IT'),
(13, '4IT'),
(14, '5IT'),
(15, '6IT'),
(16, '1CE'),
(17, '2CE'),
(18, '3CE'),
(19, '4CE'),
(20, '5CE'),

(24, '6CE');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; </span><br /><br /></p>'),
(3, 'History', '<pre><span style=\"font-size: large;\">HISTORY &nbsp;</span> </pre>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>'),
(4, 'Footer', '<p style=\"text-align:center\">Virtual Learning Managenment System</p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2025</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre><p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">Virtual Learning Management System</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\r\n<span style=\"font-size:medium\"><strong>&nbsp;</strong></span></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n		\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	\r\n</ul>\r\n</div>\r\n'),
(12, 'president', '<p>It is my great pleasure and privilege to welcome you to Virtual Learning&rsquo;s official website. Accept my deep appreciation for continuously taking interest in Virtual Learning and its programs and activities.<br /> Recently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img style=\"float: left;\" src=\"images/president.jpg\" alt=\"\" />education to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br /><br /> Honored and humbled to be given the opportunity for stewardship of this good College, I am fully aware that the goal is to make Virtual Learning as the center of excellence or development in various fields. The vision, Virtual Learning ExCELS: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of Virtual Learning Community. A CHMSCian must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the College is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br /><br /> The tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to <br /><br /></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">Provide wider access to CHMSC programs;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students thru effective teaching and learning methodologies and techniques;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable CHMSC Environment for All through secure green campus;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em; text-align: justify;\">Together, WE can make CHMSC</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</span></p>\r\n<p style=\"text-align: justify;\"><br /><br /> Dear readers and guests, these are the challenges for every CHMSCian to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br /><br /> Warmest welcome and I wish you well!</p>\r\n<p style=\"text-align: justify;\"><br /><br /></p>\r\n<p style=\"text-align: justify;\">RENATO M. SOROLLA, Ph.D.<br />SUC President II</p>'),
(13, 'motto', '<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Virtual Learning EXCELS:</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Excellence, Competence and Educational</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Leadership in Science and Technology</span></span></strong></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>Social Media</strong></span></pre>\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(4, 'Information Technology', 'Jagruti Prajapati'),
(5, 'Computer Engineering', 'Shital Gondilya');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(12, ' 	  Orientation with the Parents of the College Freshmen', 0, '06/04/2013', '06/04/2013'),
(13, 'Start of Classes', 0, '11/04/2013', '11/04/2013'),
(14, 'Intercampus Sports and Cultural Fest/College Week', 0, '11/19/2013', '11/22/2013'),
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(16, 'Long Test', 0, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013'),
(18, 'Sample', 186, '12/22/2020', '12/24/2020');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:31:38', 'sas', 14, 177, 'sss', ''),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:29:53', 'sas', 14, 178, 'sss', ''),
(131, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:28:09', 'sas', 14, 12, 'sss', ''),
(129, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:12:38', 'sas', 0, 12, 'sss', ''),
(130, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:26:11', 'sas', 0, 12, 'sss', ''),
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2014-02-13 13:31:18', 'qwwqw', 12, 185, 'kevi', 'Ruby Mae Morante'),
(127, 'admin/uploads/1085_File_Resume.docx', '2014-02-13 12:53:09', 'q', 12, 183, 'q', 'Ruby Mae Morante'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2014-02-13 12:35:42', 'chapter 1', 12, 182, 'chapter 1', 'Ruby Mae Morante'),
(125, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:10:56', 'test', 12, 181, 'test', 'Ruby Mae Morante'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2013-12-11 12:02:46', 'jdkasjfd', 12, 163, 'Test', 'Ruby Mae Morante'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:00:22', 'dasdasd', 12, 145, 'dasd', 'Ruby Mae Morante'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 162, 'kevin', 'Ruby Mae Morante'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 145, 'kevin', 'Ruby Mae Morante'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:58:44', 'kevin', 12, 145, 'kevin', 'Ruby Mae Morante'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante'),
(138, 'admin/uploads/3952_File_sample.pdf', '2020-12-21 09:24:50', 'Sample', 9, 186, 'Sample', 'JomarPabuaya'),
(139, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 09:38:22', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(140, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 09:39:32', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(141, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 09:40:28', 'adasd', 9, 186, '234234', 'JomarPabuaya');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna', ''),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza', 'read'),
(17, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(19, 12, 'fasfaf', '2013-12-01 23:56:17', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(27, 93, 'fa', '2013-12-02 00:01:54', 12, 'John Kevin  Lorayna', 'Ruby Mae  Morante', ''),
(28, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante', ''),
(29, 18, 'Test message', '2020-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 42, 'sad', '2013-11-12 22:50:05', 42, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(3, 12, 'bjhkcbkjsdnckldvls', '2013-11-25 15:58:55', 71, 'Ruby Mae  Morante', 'Noli Mendoza'),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza'),
(5, 12, 'test', '2013-11-30 20:54:05', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(11, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(12, 12, 'fasfasf', '2013-12-01 23:49:13', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(13, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante'),
(14, 18, 'Test message', '2020-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2024-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Add Annoucements', '2024-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2024-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2024-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2044-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2024-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2024-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Add Practice Quiz file', '2024-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Add Annoucements', '2024-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2024-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2024-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2024-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2024-02-21 16:52:30', 'downloadable_student.php'),
(15, 186, 'Add Downloadable Materials file name <b>Sample</b>', '2025-02-21 09:24:50', 'downloadable_student.php'),
(16, 0, 'Add Downloadable Materials file name <b>123</b>', '2025-02-21 09:31:40', 'downloadable_student.php'),
(17, 0, 'Add Downloadable Materials file name <b>234234</b>', '2025-02-21 09:36:27', 'downloadable_student.php'),
(18, 0, 'Add Downloadable Materials file name <b>234234</b>', '2025-02-21 09:38:22', 'downloadable_student.php'),
(19, 186, 'Add Downloadable Materials file name <b>234234</b>', '2025-02-21 09:39:32', 'downloadable_student.php'),
(20, 186, 'Add Downloadable Materials file name <b>234234</b>', '2025-02-21 09:40:28', 'downloadable_student.php'),
(21, 186, 'Add Assignment file name <b>asdasd</b>', '2025-02-21 09:56:48', 'assignment_student.php'),
(22, 186, 'Add Annoucements', '2025-02-21 09:59:00', 'announcements_student.php'),
(23, 186, 'Add Practice Quiz file', '2025-02-21 10:10:11', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12),
(6, 'Sample Quiz', 'Sample 101', '2020-12-21 10:04:11', 9);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True'),
(36, 6, '<p>sample</p>\r\n', 1, 0, '2020-12-21 10:05:09', 'A'),
(37, 6, '<p>asdasd</p>\r\n', 2, 0, '2020-12-21 10:05:25', 'True'),
(38, 6, '<p>sdsd</p>\r\n', 2, 0, '2020-12-21 10:05:35', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(2, '2023-2024'),
(3, '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(113, 'abc', 'def', 13, '21100324', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(112, 'Akshar', 'Patel', 13, '2700372', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(111, 'Askshar', 'Narola', 13, '21100867', 'heni', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(108, 'Neeraj', 'Chavda', 13, '21101151', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(105, 'Nishant', 'Korat', 13, '21101131', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(106, 'Nilay', 'Patel', 13, '29000676', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(103, 'Jayan', 'Tandel', 13, '21100617', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(104, 'Fenil', 'Patel', 13, '21100277', 'lms10117', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(100, 'Jay', 'Rathod', 13, '21100303', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(101, 'Vraj', 'Bhoye', 13, '21100318', 'sen', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(102, 'Kevin', 'Pitroda', 13, '21101124', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(97, 'Joy', 'Patel', 13, '20101289', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(98, 'Joy', 'Mehta', 13, '21100579', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(95, 'Elis', 'Patel', 13, '21101142', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(93, 'Kevin ', 'Parmar', 7, '111', 'teph', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(94, 'Lakshya', 'Chauhan', 13, '21100471', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(76, 'Vidhya', 'Patel', 13, '21100555', '123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(107, 'Harry', 'Patel', 13, '29001002', 'florypis', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(110, 'Zenil', 'Patel', 13, '21100881', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(109, 'Rena', 'Chavda', 13, '29001081', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(99, 'Rishi', 'Thakor', 13, '21100315', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(96, 'Rishi', 'Patel', 13, '20101436', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(209, 'Dhyey', 'Patel', 20, '21300311', '123456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(75, 'Mayur', 'Patel', 13, '21100855', 'em', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(74, 'Mayur', 'Tandel', 13, '21100913', '123456+', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(73, 'Shrey', 'Baria', 13, '21101042', 'tephai', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(72, 'Vivek', 'Baria', 13, '21100547', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(71, 'Aayush', 'Badoni', 13, '21100556', 'noledel', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(134, 'Vivek', 'Patel', 12, '21101050', 'akositon', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(135, 'Amar', 'Thakor', 14, '20101361', '789456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(136, 'Jadish', 'Savaliya', 7, '20100331', 'jorgie', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(137, 'Veer', 'Ahir', 8, '20100447', '789456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(138, 'Brij', 'Chauhan', 7, '29000557', '789456', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(139, 'Ram', 'Parmar', 7, '20100RC', '456123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(140, 'Deep', 'Rathod', 14, '21100665', '456123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(141, 'Jay', 'Korat', 15, '21100695', 'iloveyoujam', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(142, 'Alay', 'Patel', 12, '21100351', '45+123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(143, 'Deep', 'Yadav', 12, '21100396', '741852', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(144, 'Naman', 'Dheer', 12, '21100557', '741852', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(145, 'Piyush', 'Patel', 12, '21100291', '852741', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(146, 'Hardik', 'Patel', 12, '21100411', '852852', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(147, 'Harsh', 'Patel', 12, '21100369', 'jerwin27 cute', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(148, 'Harsh', 'Yadav', 12, '21100431', '741852', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(149, 'Harshvardhan', 'Rathod', 12, '21100406', '741852', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(150, 'Jethala', 'Gada', 12, '21101273', '852741', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(151, 'Keyur', 'Patel', 12, '21100895', '741852', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(152, 'Keyur', 'Vhavda', 12, '21101063', '852741', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(153, 'Rudra', 'Dave', 12, '20101392', '741852', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(154, 'Manan', 'Patel', 12, '21100904', '258369', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(155, 'Mann', 'Patel', 12, '21100421', '369852', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(156, 'Samay', 'Raval', 12, '2100287', '369258', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(157, 'Akash', 'Shah', 12, '21100393', 'DianaraSayon', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(158, 'Rudresh', 'Patel', 12, '21101195', '258369', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(159, 'Manan', 'Chauhan', 12, '21100701', '985632', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(162, 'Krish', 'Ahir', 14, '21101182', 'kimzteng', 'uploads/29001002.jpg', 'Registered'),
(210, 'Chandu', 'Parmar', 20, '21300036', 'sawsa', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(164, 'Amar', 'Baria', 14, '20101605', '456987', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(165, 'Akash', 'Mehta', 14, '21100785', '258369', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(166, 'Tushar', 'Pandey', 14, '21100651', '258369', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(167, 'Lalit', 'Yadav', 14, '21100265', '258369', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(168, 'Alay', 'Kyada', 14, '27000921', '258147', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(169, 'Jyan', 'Flores', 14, '21100820', '215487', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(172, 'Henil', 'Patel', 14, '21100805', '326598', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(171, 'Joy', 'Mehta', 14, '21100464', '215487', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(173, 'Nitish', 'Patel ', 14, '21100711', '784512', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(174, 'Dev', 'Narola', 14, '21100711', '784512', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(175, 'Animesh', 'Patel', 14, '21100654', '215487', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(176, 'Manan', 'Chavda', 14, '21100772', '235689', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(177, 'Mann', 'Patil', 14, '21100418', '895623', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(178, 'Manan', 'Patil', 14, '21101150', '235689', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(179, 'Harsh', 'Patil', 14, '21100710', 'test', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered'),
(180, 'Dev', 'Patil', 14, '21101227', '235689', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(181, 'Jay', 'Patil', 14, '21100819', '215487', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(182, 'Vatsal', 'Patel', 14, '29000405', '215487', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(183, 'Vatsal', 'Patil', 14, '21101148', '215487', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(184, 'vats', 'Patel', 17, '21201166', '215487', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(185, 'veer', 'Patel', 17, '21201453', '21245478', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(186, 'Ram', 'Patil', 17, '21201244', '326598', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(187, 'Ria', 'Gohil', 17, '21201282', '326598', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(188, 'Jay', 'Gohil', 17, '21200798', '326598', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(189, 'Rishi', 'Gohil', 17, '21201012', '2154487', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(190, 'Shiv', 'Gohil', 17, '21201219', '2222558', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(191, 'Shiv', 'Patil', 17, '21200855', '253614', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(192, 'Shiv', 'Varu', 17, '120733', '251436', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(193, 'Krish', 'Patil', 17, '21201338', '362514', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(194, 'Sanjay', 'Yadav', 17, '21201335', '253614', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(195, 'Divyam', 'Rathod', 17, '21201113', '142536', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(196, 'Divya', 'Patel', 17, '21200782', '475869', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(197, 'Mann', 'Thakor', 17, '21201437', '586947', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(198, 'Yug', 'Patel', 17, '21201163', '362514', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(199, 'Anjali', 'Patel', 17, '21201356', '142536', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(200, 'Jamai', 'Raja', 17, '21201115', '141414', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(201, 'Arish', 'Patel', 17, '21201430', '215436', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(202, 'Charan', 'Yadav', 17, '21200984', '1425145', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(203, 'Krish', 'Chauhan', 17, '20100527', '545454', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(204, 'Mayur', 'Rana', 17, '21200935', '636352', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(205, 'Keval', 'Rana', 17, '21201268', '259874', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(206, 'Mayur', 'Rathod', 14, '21100293', '986532', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(207, 'Divyesh', 'Rana', 14, '21100613', '457812', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(208, 'Dev', 'Rana', 19, '21300413', 'olebirish', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(211, 'Pal', 'Rana', 7, '201011231', '125698', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(212, 'Pal', 'Patel', 15, '21200363', 'chrys', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(213, 'Chandani', 'Patel', 18, '21300410', '256341', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(214, 'Dhiraj', 'Patel', 18, '21300375', 'maayeeh', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(215, 'Kumar', 'Rathod', 18, '21300258', '159357', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(216, 'Alay', 'Rana', 18, '21300176', '357753', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(217, 'Anjali', 'Rana', 17, '21200507', '256982', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(218, 'Nidhi', 'Patel', 7, '20100452', 'heaven', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(219, 'Nidhi ', 'Pawar', 18, '2011120', 'cblake123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 31, 'admin/uploads/7820_File_sample.pdf', '2020-12-21 10:12:04', 'aaa', 'asdasd', 219, '');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(2, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(3, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(4, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(14, '202000104', 'Calculus', '', 'The course is aimed to convey to the student a sense of continuum of higher secondary calculus and its applications to develop basic understanding of engineering subjects. This course is a cohesive one which unifies differential and integral calculus with approximations and their applications.', 4, '', '1st'),
(15, '202000110', 'Computer Programming with C', '', 'Students will gain understanding of basics of computer, hardware, software, and programming language. Students will learn problem solving skills through C programming language.', 4, '', '1st'),
(16, '202001203', 'Basic of Electrical and Electronics Engineering', '', 'Electricity has been the main source of energy for the developing and developed countries. Per capita consumption of electricity of a country can be considered as an indicator of the development of the country. In view of this, it is essential for all engineering graduates to know the basic aspects of electrical engineering. This subject deals with basic circuit solution methods, introduction to electrical machines.', 4, '', '1st'),
(17, '202001206', 'Constitution of India', '', '<p>The course is intended to familiarize students about the basic features of the Indian Constitution with a background of the twin themes of liberty and freedom from a civil rights perspective and to address the growth of Indian opinion regarding modern Indian intellectuals’ constitutional role and entitlement to civil and economic rights, fundamental duties as well as the emergence of nationhood in the early years of Indian nationalism.</p>', 0, '', '1st'),
(22, '202001209', 'Engineering workshop', '', 'Engineering Workshop will help the students to get acquainted with various basic trades and develop and enhance relevant trades required in the various engineering industries and workshops.', 2, '', '1st'),
(23, '202001215', 'Professional Communication', '', 'The rationale of Professional Communication helps students to understand the concept of communication in link with Non-verbal communication. The curriculum also targets the understanding of different barriers that creep into communication process. Moreover, units covered on LSRW skills development will help students acquire competence over linguistic skills. This would be developed through balanced and integrated tasks.', 3, '', '1st'),
(24, '202001202', 'Basic Mechanical Engineering', '', 'The course is intended to make students familiar with the basic concepts of Mechanical systems and engineering and enable them to carry out elementary analysis of mechanical systems and interpret the outcomes.', 4, '', '2nd'),
(25, '202001207', 'Energy and Environment Science', '', 'The objectives of this course are to introduce the basics of environment & ecosystem, different sources of pollution, its control measures and various energy resources & its management. The course gives awareness about global environmental issues and outlines themeasures for sustainable development.', 3, '', '2nd'),
(26, '202001208', 'Engineering Graphics', '', 'The course is intended to make students familiar with the concepts of Engineering Drawing, widely used in the industries and facilitate them in enhancing their technical communication skills using Engineering Drawing. To improve visualization skills of students which they can use in the industries for developing products. ', 4, '', '2nd'),
(27, '202000211', 'Linear Algebra, Vector Calculus and ODE', '', 'The course is intended to develop computational proficiency involving procedures in Matrices, Linear algebra, Vector Calculus and Differential Calculus which are useful to all engineering disciplines.', 4, '', '2nd'),
(28, '202000212', '	Object Oriented Programming', '', 'The object oriented approach for software development has become the defacto standard for the industry to develop the product based or customized software based on customer demand. The software libraries developed for various fields also follows the phenomena of object oriented development. The subject covers the basic concepts of the object oriented paradigm and popular object oriented programming language C++. The subject covers the basics of C++, objects and classes, Inheritance, and Polymorphism. The subject introduces the Python Programming Language to harness its potential for modern computing requirements.', 4, '', '2nd'),
(29, '202001213', 'Physics', '', ' The basic science physics course is to prepare students for implementing physics principles to the advancement of technology. The course aims to provide a stable foundation for the pursuit of graduate studies in engineering as well as to enhance their scientific thinking abilities towards the real life problems in various engineering branches.', 4, '', '2nd'),
(30, '202040301', '	Data Structures', '', 'The main objective of this course is to understand the concepts of data structures and how these concepts are useful in problem solving. Moreover, it will help to get familiarized with elementary data structures: Linear, Non-linear. Further, this subject will inculcate practicing programming techniques for efficient storage and retrieval for developing sophisticated computer applications.', 5, '', '3rd'),
(31, '202040302', 'Database Management Systems', '', 'The main objective of this course is to understand the basic database concepts, apply ER and Relational data model in database design, apply the concept of transaction management, concurrency control, security, and recovery on database. Moreover, this subject will help in identifying the purpose of query processing and query optimization. Further, it will help in recognizing the storage and structure of files. Also, it will facilitate in design SQL and relational algebra queries and database system.', 5, '', '3rd'),
(32, '202040303', 'Digital Fundamentals', '', 'This course introduces the concepts of digital logic. Digital number systems and basic logic gates are covered. It includes the functionality of logic gates, simplifying Digital Circuits, Boolean Expression, combinational and sequential circuits. Emphasis is placed on providing a foundation for the application of digital logic to use of digital applications such as programmable logic converters.', 4, '', '3rd'),
(33, '202003403', '	Indian Ethos and Value Education', '', 'To develop proper management. To ensure all round development. Work sincerely. Productivity of human being.', 0, '', '2nd'),
(34, '202003402', 'Fundamentals of Economics and Business Management', '', 'To facilitate students in understanding the fundamental concepts and principles of business management; need for setting the objectives, the basic roles, skills, functions of management, basic concepts of economics with major emphasis on demand and supply and to make them aware about the essential factors of production, various types of costs along with break-even analysis and market structure.', 3, '', '3rd'),
(35, '202000303', 'Probability Statistics and Numerical Methods', '', ': The main objective of this course is to provide students with the basics of probabilistic and statistical analysis and various numerical methods to develop problem solving skills used in varied engineering disciplines.', 4, '', '2nd'),
(36, '900009901', 'Creativity, Problem Solving and Innovation', '', '', 2, '', '3rd'),
(37, '202040401', 'Computer Organization & Architecture', '', 'To provide students with basic concepts in computer system as its logic operations. To make the students understand the basic operations involved in execution of an instruction. Explain the basic concept of interrupts and their usage to implement I/O control and data transfers. Students identify the different architectural design issues that can affect the performance of a computer such as, RISC architecture, instruction set design, and addressing modes.', 4, '', '4th'),
(38, '202040402', 'Operating System', '', 'The students will be able to understand the basic components of operating system, and the interactions among the various components. The students will learn policies for scheduling, deadlocks, memory management, synchronization, system calls, and file systems. ', 4, '', '4th'),
(39, '202040404', 'Seminar', '', 'This course aims to prepare students to explore new technical topics of their interest and cultivate report writing and presentation skills.', 1, '', '4th'),
(40, '202003404', 'Technical Writing ands Soft Skills', '', 'This uniquely designed course aims at thorough understanding of the fundamental soft skills and of their practical social and workplace usage. It helps participants to communicate effectively and to carry themselves confidently and in harmony with the surroundings. They also learn how to identify and overcome the barriers in interpersonal relationships, and to employ oral and written communication, teamwork, leadership, problem-solving and decisionmaking skills, to gain best results.', 3, '', '4th'),
(41, '202003405', '	Entrepreneur Skills ', '', 'Entrepreneurship is introduced with motive to develop entrepreneurial attitude in today’s competitive business environment. This course creates awareness and motivate students about entrepreneurship development. It covers marketing plan, financial plan, organizational plan, and human resource plan for setting new business. It makes aware about legal issues of business forms. Finally, business proposal preparation activity is recommended by referring entrepreneurial case studies.', 0, '', '4th'),
(42, '202044501', 'Computer Network', '', 'This course provides the fundamental knowledge of the various aspects of computer networking and enables students to understand the basic concepts data communication occurring using computer network. It is based on the OSI Reference Model, which deals with the major issues in the form of layered architecture with the use of related protocols. The course is driven from the engineering perspective.', 4, '', '4th'),
(43, '202044502', 'Programming With Java', '', 'To understand the basic concepts and fundamentals of platform independent objectoriented language and gain knowledge about basic Java language syntax. To demonstrate skills in writing programs using exception handling techniques, multithreading, and File Management system. To Understands Collection framework and generic programming. To understand streams, network programming and efficient user interface design techniques.', 4, '', '4th'),
(44, '202044504', 'Programming with Python', '', ' Python Programming is used massively for Artificial Intelligent, Data Science, Web Development and many more. This course is designed with the intention to equip students with the knowledge of Python Programming which intern will motivate them to explore the trending domains of IT. By the end of the course, students will have gained a fundamental understanding of programming in Python by creating a variety of projects using python.', 4, '', '5th'),
(45, '202044505', 'Web Development', '', 'Internet is a strong medium for this fast-growing world. The motivation behind this course is to provide students’ knowledge regarding World Wide Web (WWW), browser, client server architecture and web programming. By learning this course student will be able to create both front end and back-end concepts for any web-based application with advanced user interface elements. ', 4, '', '5th'),
(46, '202045601', 'Design and Analysis of Algorithms', '', 'This course provides the fundamental knowledge to design and analyse the algorithms. Different algorithm paradigms will be explored. Students will learn how to measure performance of various algorithms.', 5, '', '5th'),
(47, '202045602', '202045602', '', 'This course provides the fundamental knowledge of Software Development Life Cycle, Development models and Agile Software development. It also embraces fundamental concepts in software testing, including software testing objectives, process, criteria, strategies, and methods. It also elaborates various software testing issues and solutions in software unit test; integration, regression, and system testing & express to gain the techniques and skills on how to use modern oftware testing tools to support software testing projects. The course is driven from the engineering perspective.', 4, '', '5th'),
(48, '202045605', 'Advanced Java Programming', '', 'This Course will equipped the students with the advanced feature of Javawhich would enable them to handle real life problems, managing data and creating robust webapplications. Enabling students to cope up with industry demands by providing web technologiesused by industries to solve the problems.', 4, '', '5th'),
(49, '202045607', 'Cyber Security', '', '', 4, '', '5th'),
(50, '202044503', 'Artificial Intelligence', '', 'The concepts of artificial intelligence have been in focus since the inception of modern computers. The advancements in computing technologies have further stressed on the use of AI concepts in many real world problems. This course will aim to provide fundamental knowledge in basic domains of AI like search, knowledge representation and inference, game playing, planning, Natural Language processing and genetic algorithms. The course will also focus on study and use of logic programming for solving AI problems.', 4, '', '5th'),
(51, '202030521', 'Disaster Management', '', 'The objectives of the course are to understand the various features of natural and manmade disasters and the safety measures associated with each disaster. Students learn the concept of Disaster Management Cycle and Framework. Different tools used to minimize the risk of disasters with the effective use of Remote sensing and GIS is covered in the syllabus. The course also provides insight to the initiatives of disaster management taken at global, national and regional level.', 3, '', '5th'),
(52, '202050522', 'Energy Systems', '', 'The course will provide understanding of power generation technology using conventional and non-conventional energy sources which will be useful for understanding the operation and working of power plants.', 3, '', '5th'),
(53, '202005603', 'Probability Theory with Applications', '', 'The main objective of this course is to familiarize the students with the elementary concepts of probability theory and the methods of statistical analysis to deal with the real life problems frequently occurring in various engineering disciplines. ', 3, '', '5th'),
(54, '202090522', '	Project Management', '', 'The course is intended to impart basic skills of Project management & its various aspects to undergraduate students.', 3, '', '5th'),
(55, '202040601', 'Mini Project', '', ': The main objective of Mini Project is to let the students apply the knowledge of theoretical concepts which they have learnt as a part of the curriculum of the undergraduate courses to real time problems or situations.', 2, '', '6th'),
(56, '202046708', 'Information and Network Security', '', 'The objective of this course is to teach the concepts of securing computer networks, with emphasize on principles and practices of information and network security. The subject covers various important topics concerning information security like symmetric and asymmetric cryptography, hashing, message and user authentication, digital signatures, key distribution with the overview of the network security.', 4, '', '6th'),
(57, '202045609', 'Machine Learning', '', 'This course is centered around Machine learning techniques on how to imitate learning mechanism which can improve automatically through experience by the use of data. For that several aspects of Machine learning like model preparation, how it can be evaluated, what are all different techniques and algorithms to construct a learning model, relevant applications and advance concepts are covered.', 4, '', '6th'),
(59, '202046709', 'Internet of Things', '', 'Internet of Things plays an important role in connecting things i.e., variety of devices through the Internet. The IoT has emerged as cutting-edge technology with applications in manufacturing, healthcare, agriculture, transport, mining, smart cities, and many more. This subject covers the fundamentals of IoT with its architecture, protocols, and Applications. It also covers the overview and programming of widely used IoT nodes like Arduino, NodeMCU and Raspberry Pi.', 4, '', '6th'),
(60, '202046701', 'Advanced Web Development', '', 'On completion of the course, the students will become familiar with client-server architecture and able to develop web application using JavaScript based frameworks on client and server side both. Students will learn the advanced web programming concepts related to MEAN stack development.', 4, '', '6th'),
(61, '202046705', 'Computer Vision and Image Processing', '', 'This subject emphasis on fundamentals of Image processing and Computer vision. Students will gain the knowledge of Image Formation, Image Enhancement and Segmentation. Students will also learn various feature extraction techniques. This subject has more emphasis on core vision tasks through Motion estimation and Object as well as pattern recognition. Students shall explore the areas where automation can be possible through Image processing and Computer Vision.', 4, '', '6th'),
(62, '202046706', 'Data Mining and Business Intelligence', '', 'This course provides the knowledge of basic applications, concepts, and techniques of data warehousing and data mining. It introduces the concept of Data Mining as an important tool for enterprise data management and as a cutting-edge technology for building competitive advantage. The course is driven from the engineering perspective.', 4, '', '6th'),
(63, '202090622', 'Supply Chain Management', '', 'This open elective course intends to make students understand and appreciate the importance of Supply Chain Management in the industrial and business systems. Students will be able to understand processes of logistics, sourcing and procurement, current and world class supply chain management practices as well as impact of IT in supply chain operations. ', 3, '', '6th'),
(64, '202060621', 'Multimedia Systems and Applications', '', 'Multimedia has become an indispensable part of modern computer technology. In this course, students will be introduced to principles and current technologies of multimedia systems. Issues in effectively representing, processing, and retrieving multimedia data such as signal, graphics, image and video will be addressed. The students will gain hands-on experience in those areas by implementing some components of multimedia streaming system in laboratories. Latest Web technologies and some advanced topics in current multimedia research will also be discussed.', 3, '', '6th'),
(65, '202030622', 'Smart Cities Planning and Management', '', 'The objectives of the course are to understand the basic concept of various types of Infrastructure and Smart cities and its associated challenges. Students will learn the process of planning system and to apply the basic need to solve various Infrastructure problems. ', 3, '', '6th');


-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(9, '1001', 'test', 'Pratik ', 'Soni', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(5, '1002', 'red', 'Pritesh', 'Pandey', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(11, '1003', 'aladin', 'Mehul', 'Thakkar', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(13, '1004', 'test', 'Jagruti', 'Prajapati', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(12, '1005', 'morante', 'Dhruval ', 'Kachhiya', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '<p style=\"text-align: justify;\">Dan Grossman has taught programming languages at the University of Washington since 2003. During his 10 years as a faculty member, his department&rsquo;s undergraduate students have elected him &ldquo;teacher of the year&rdquo; twice and awarded him second place once. His research, resulting in over 50 peer-reviewed publications, has covered the theory, design, and implementation of programming languages, as well as connections to computer architecture and softwar', '', 'Activated'),
(14, '1006', 'lee', 'Jayshree', 'Patil', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(15, '1007', 'chaw', 'Komal', 'Yadav', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(17, '1008', 'test', 'Jeet ', 'Panchal', 5, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(18, '1009', 'test123', 'Hitesh', 'Thakvani', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(19, '1010', 'denise', 'Nitin', 'Patel', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(135, 0, 22, 29, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(151, 5, 7, 14, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(152, 5, 8, 14, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(153, 5, 13, 36, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(157, 18, 15, 23, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(158, 18, 16, 23, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(159, 18, 12, 23, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(160, 18, 7, 29, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(165, 134, 15, 23, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(167, 12, 13, 35, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(168, 12, 14, 35, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(170, 12, 16, 24, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(172, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(173, 18, 14, 39, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(174, 13, 12, 16, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(175, 13, 13, 16, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(176, 13, 14, 16, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(180, 19, 13, 22, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(181, 12, 20, 24, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(183, 12, 18, 24, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(184, 12, 17, 25, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2024-2025'),
(186, 9, 18, 42, 'admin/uploads/thumbnails.jpg', '2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(39, '<p>Test</p>\r\n', '9', 186, '2020-12-21 09:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(31, 165, 141, 134),
(32, 165, 134, 134),
(54, 167, 113, 12),
(55, 167, 112, 12),
(57, 167, 108, 12),
(58, 167, 105, 12),
(59, 167, 106, 12),
(60, 167, 103, 12),
(61, 167, 104, 12),
(62, 167, 100, 12),
(63, 167, 101, 12),
(64, 167, 102, 12),
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(68, 167, 94, 12),
(69, 167, 76, 12),
(70, 167, 107, 12),
(71, 167, 110, 12),
(72, 167, 109, 12),
(73, 167, 99, 12),
(74, 167, 96, 12),
(75, 167, 75, 12),
(76, 167, 74, 12),
(77, 167, 73, 12),
(78, 167, 72, 12),
(79, 167, 71, 12),
(80, 168, 135, 12),
(81, 168, 140, 12),
(82, 168, 162, 12),
(83, 168, 164, 12),
(84, 168, 165, 12),
(85, 168, 166, 12),
(86, 168, 167, 12),
(87, 168, 168, 12),
(88, 168, 169, 12),
(89, 168, 172, 12),
(90, 168, 171, 12),
(91, 168, 173, 12),
(92, 168, 174, 12),
(93, 168, 175, 12),
(94, 168, 176, 12),
(95, 168, 177, 12),
(96, 168, 178, 12),
(97, 168, 179, 12),
(98, 168, 180, 12),
(99, 168, 181, 12),
(100, 168, 182, 12),
(101, 168, 183, 12),
(102, 168, 206, 12),
(103, 168, 207, 12),
(127, 172, 113, 18),
(128, 172, 112, 18),
(129, 172, 111, 18),
(130, 172, 108, 18),
(131, 172, 105, 18),
(132, 172, 106, 18),
(133, 172, 103, 18),
(134, 172, 104, 18),
(135, 172, 100, 18),
(136, 172, 101, 18),
(137, 172, 102, 18),
(138, 172, 97, 18),
(139, 172, 98, 18),
(140, 172, 95, 18),
(141, 172, 94, 18),
(142, 172, 76, 18),
(143, 172, 107, 18),
(144, 172, 110, 18),
(145, 172, 109, 18),
(146, 172, 99, 18),
(147, 172, 96, 18),
(148, 172, 75, 18),
(149, 172, 74, 18),
(150, 172, 73, 18),
(151, 172, 72, 18),
(152, 172, 71, 18),
(153, 173, 135, 18),
(154, 173, 140, 18),
(155, 173, 162, 18),
(156, 173, 164, 18),
(157, 173, 165, 18),
(158, 173, 166, 18),
(159, 173, 167, 18),
(160, 173, 168, 18),
(161, 173, 169, 18),
(162, 173, 172, 18),
(163, 173, 171, 18),
(164, 173, 173, 18),
(165, 173, 174, 18),
(166, 173, 175, 18),
(167, 173, 176, 18),
(168, 173, 177, 18),
(169, 173, 178, 18),
(170, 173, 179, 18),
(171, 173, 180, 18),
(172, 173, 181, 18),
(173, 173, 182, 18),
(174, 173, 183, 18),
(175, 173, 206, 18),
(176, 173, 207, 18),
(177, 174, 134, 13),
(178, 174, 142, 13),
(179, 174, 143, 13),
(180, 174, 144, 13),
(181, 174, 145, 13),
(182, 174, 146, 13),
(183, 174, 147, 13),
(184, 174, 148, 13),
(185, 174, 149, 13),
(186, 174, 150, 13),
(187, 174, 151, 13),
(188, 174, 152, 13),
(189, 174, 153, 13),
(190, 174, 154, 13),
(191, 174, 155, 13),
(192, 174, 156, 13),
(193, 174, 157, 13),
(194, 174, 158, 13),
(195, 174, 159, 13),
(196, 175, 113, 13),
(197, 175, 112, 13),
(198, 175, 111, 13),
(199, 175, 108, 13),
(200, 175, 105, 13),
(201, 175, 106, 13),
(202, 175, 103, 13),
(203, 175, 104, 13),
(204, 175, 100, 13),
(205, 175, 101, 13),
(206, 175, 102, 13),
(207, 175, 97, 13),
(208, 175, 98, 13),
(209, 175, 95, 13),
(210, 175, 94, 13),
(211, 175, 76, 13),
(212, 175, 107, 13),
(213, 175, 110, 13),
(214, 175, 109, 13),
(215, 175, 99, 13),
(216, 175, 96, 13),
(217, 175, 75, 13),
(218, 175, 74, 13),
(219, 175, 73, 13),
(220, 175, 72, 13),
(221, 175, 71, 13),
(222, 176, 135, 13),
(223, 176, 140, 13),
(224, 176, 162, 13),
(225, 176, 164, 13),
(226, 176, 165, 13),
(227, 176, 166, 13),
(228, 176, 167, 13),
(229, 176, 168, 13),
(230, 176, 169, 13),
(231, 176, 172, 13),
(232, 176, 171, 13),
(233, 176, 173, 13),
(234, 176, 174, 13),
(235, 176, 175, 13),
(236, 176, 176, 13),
(237, 176, 177, 13),
(238, 176, 178, 13),
(239, 176, 179, 13),
(240, 176, 180, 13),
(241, 176, 181, 13),
(242, 176, 182, 13),
(243, 176, 183, 13),
(244, 176, 206, 13),
(245, 176, 207, 13),
(246, 177, 134, 14),
(247, 177, 142, 14),
(248, 177, 143, 14),
(249, 177, 144, 14),
(250, 177, 145, 14),
(251, 177, 146, 14),
(252, 177, 147, 14),
(253, 177, 148, 14),
(254, 177, 149, 14),
(255, 177, 150, 14),
(256, 177, 151, 14),
(257, 177, 152, 14),
(258, 177, 153, 14),
(259, 177, 154, 14),
(260, 177, 155, 14),
(261, 177, 156, 14),
(262, 177, 157, 14),
(263, 177, 158, 14),
(264, 177, 159, 14),
(265, 178, 113, 14),
(266, 178, 112, 14),
(267, 178, 111, 14),
(268, 178, 108, 14),
(269, 178, 105, 14),
(270, 178, 106, 14),
(271, 178, 103, 14),
(272, 178, 104, 14),
(273, 178, 100, 14),
(274, 178, 101, 14),
(275, 178, 102, 14),
(276, 178, 97, 14),
(277, 178, 98, 14),
(278, 178, 95, 14),
(279, 178, 94, 14),
(280, 178, 76, 14),
(281, 178, 107, 14),
(282, 178, 110, 14),
(283, 178, 109, 14),
(284, 178, 99, 14),
(285, 178, 96, 14),
(286, 178, 75, 14),
(287, 178, 74, 14),
(288, 178, 73, 14),
(289, 178, 72, 14),
(290, 178, 71, 14),
(291, 179, 135, 14),
(292, 179, 140, 14),
(293, 179, 162, 14),
(294, 179, 164, 14),
(295, 179, 165, 14),
(296, 179, 166, 14),
(297, 179, 167, 14),
(298, 179, 168, 14),
(299, 179, 169, 14),
(300, 179, 172, 14),
(301, 179, 171, 14),
(302, 179, 173, 14),
(303, 179, 174, 14),
(304, 179, 175, 14),
(305, 179, 176, 14),
(306, 179, 177, 14),
(307, 179, 178, 14),
(308, 179, 179, 14),
(309, 179, 180, 14),
(310, 179, 181, 14),
(311, 179, 182, 14),
(312, 179, 183, 14),
(313, 179, 206, 14),
(314, 179, 207, 14),
(315, 180, 113, 19),
(316, 180, 112, 19),
(317, 180, 111, 19),
(318, 180, 108, 19),
(319, 180, 105, 19),
(320, 180, 106, 19),
(321, 180, 103, 19),
(322, 180, 104, 19),
(323, 180, 100, 19),
(324, 180, 101, 19),
(325, 180, 102, 19),
(326, 180, 97, 19),
(327, 180, 98, 19),
(328, 180, 95, 19),
(329, 180, 94, 19),
(330, 180, 76, 19),
(331, 180, 107, 19),
(332, 180, 110, 19),
(333, 180, 109, 19),
(334, 180, 99, 19),
(335, 180, 96, 19),
(336, 180, 75, 19),
(337, 180, 74, 19),
(338, 180, 73, 19),
(339, 180, 72, 19),
(340, 180, 71, 19),
(341, 181, 209, 12),
(342, 181, 210, 12),
(345, 183, 213, 12),
(346, 183, 214, 12),
(347, 183, 215, 12),
(348, 183, 216, 12),
(349, 184, 184, 12),
(350, 184, 185, 12),
(351, 184, 186, 12),
(352, 184, 187, 12),
(353, 184, 188, 12),
(354, 184, 189, 12),
(355, 184, 190, 12),
(356, 184, 191, 12),
(358, 184, 193, 12),
(359, 184, 194, 12),
(360, 184, 195, 12),
(361, 184, 196, 12),
(362, 184, 197, 12),
(363, 184, 198, 12),
(364, 184, 199, 12),
(365, 184, 200, 12),
(366, 184, 201, 12),
(367, 184, 202, 12),
(368, 184, 203, 12),
(369, 184, 204, 12),
(370, 184, 205, 12),
(371, 184, 217, 12),
(372, 184, 192, 12),
(373, 185, 93, 12),
(374, 185, 136, 12),
(375, 185, 138, 12),
(376, 185, 139, 12),
(377, 185, 211, 12),
(378, 186, 213, 9),
(379, 186, 214, 9),
(380, 186, 215, 9),
(381, 186, 216, 9),
(382, 186, 219, 9);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17),
(18, 186, 'Submit Assignment file name <b>asdasd</b>', '2020-12-21 10:12:04', 'view_submit_assignment.php', 219, 31);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES

(15, 'admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2025-04-16 11:57:33', '2025-04-16 10:33:54', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
