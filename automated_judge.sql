-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 08:40 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `automated_judge`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignment_id` varchar(8) NOT NULL,
  `assignment_title` varchar(20) NOT NULL,
  `duration` date NOT NULL,
  `marks` int(4) NOT NULL,
  `course_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assignment_id`, `assignment_title`, `duration`, `marks`, `course_id`) VALUES
('101', 'Personal website', '2018-04-08', 40, 'cse482'),
('102', 'Network connection', '2018-04-18', 60, 'cse338'),
('103', 'CMOS circuit', '2018-04-07', 30, 'cse435'),
('105', 'Project Website', '2018-04-01', 50, 'cse482'),
('111', 'Front-End design', '2018-04-09', 100, 'CSE499');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(15) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `section` int(2) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `initial` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_title`, `section`, `semester`, `student_id`, `initial`) VALUES
('cse115', 'C Language', 1, 'spring', 1411875642, 'MLE'),
('cse225', 'Data structure C++', 2, 'summer', 1320097042, 'Iha'),
('cse338', 'Networking', 5, 'fall', 1411875642, 'Rjp'),
('cse435', 'Circuit design', 2, 'spring', 1320097042, 'IqR'),
('cse440', 'AI', 4, 'spring', 1410097042, 'MLE'),
('cse482', 'Website making', 2, 'spring', 1411875642, 'Szz'),
('cse499', 'senior design', 3, 'spring', 1411875642, 'TnR');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `name` varchar(255) NOT NULL,
  `initial` varchar(5) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`name`, `initial`, `phone_no`, `email`, `password`) VALUES
('Hasan Uz Zaman', 'Huz', '01920960916', 'huz@northsouth.edu', 'aaa88edd492fd0f9193bdb669e7db9db26c5f080'),
('Ishtiaque Hossain', 'Iha', '0255668200', 'ishtiaque.hossain@northsouth.edu', 'fdd9f440d61f5135ffe913713eaac4e66d8eb670'),
('Mr. Iqbalur Rahman Rokon', 'IqR', '0255668200', 'iqbalur.rahman@northsouth.edu', 'd20502d9739a228373aa111702f3480a6907c77d'),
('Mahady ', 'Mdy', '01520930912', 'mdy@gmail.com', 'f15c1307faf1a1362c8ae0a67ba692dae618053c'),
('Mirza Mohammad Lutfe Elahi', 'MLE', '0255668200', 'lutfe.elahi@northsouth.edu', '473f8bc366f4c022fd36da333875aadcbd55ac86'),
('Rajesh Palit', 'Rjp', '01670889965', 'rjp@northsouth.edu', '90731fdfab4384c0e945046c46288a637606bedf'),
('Dr. Mohammad Rezaul Bari', 'Rzb', '0255668200', 'rezaul.bari@northsouth.edu', '849e416f0e4f74d1af852afba3e1698f7b2b16e3'),
('Dr. Shazzad Hosain', 'Szz', ' 0255668200', 'shazzad.hosain@northsouth.edu', 'db0fd6a1a4645d68cb952cb9c5bd46f3996c437e'),
('Tanjila Farah', 'TnF', '01670221133', 'tanjila.farah@northsouth.edu', '3bd3b36f059f1ca6bae60d88697c1845d7b0f58a'),
('Tanzilur Rahman', 'TnR', '01879462452', 'tanzilur.rahman@northsouth.edu', '2ca542793ad48bad3f127082d748f15948ca0453');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `problem_id` int(5) NOT NULL,
  `problem_title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `source_code` varchar(255) NOT NULL,
  `input` varchar(255) NOT NULL,
  `output` varchar(255) NOT NULL,
  `marks` varchar(3) NOT NULL,
  `assignment_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`problem_id`, `problem_title`, `description`, `source_code`, `input`, `output`, `marks`, `assignment_id`) VALUES
(1, 'Personal Website Design', 'Design a wedsite of your own & connect with your databse to store the data. ', 'index.html', 'user id, password', 'show website', '40', '101'),
(2, 'Front-End Design updates', 'Design the front-end of your project.', 'index.html style.css', 'username, password', 'login', '100', '111');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `score_id` int(3) NOT NULL,
  `quiz` varchar(2) NOT NULL,
  `attendance` varchar(2) NOT NULL,
  `lab_work` varchar(2) NOT NULL,
  `mid_1` varchar(2) NOT NULL,
  `mid_2` varchar(2) NOT NULL,
  `final` varchar(2) NOT NULL,
  `assignment` varchar(2) NOT NULL,
  `student_id` int(10) NOT NULL,
  `course_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`score_id`, `quiz`, `attendance`, `lab_work`, `mid_1`, `mid_2`, `final`, `assignment`, `student_id`, `course_id`) VALUES
(1, '8', '10', '40', '18', '15', '38', '8', 1420097042, 'cse115'),
(2, '4', '8', '30', '10', '15', '21', '4', 1511875642, 'cse115'),
(3, '5', '10', '20', '17', '19', '36', '10', 1510098042, 'cse225'),
(4, '10', '10', '25', '18', '16', '38', '10', 1320097042, 'cse435');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `name` varchar(50) NOT NULL,
  `student_id` int(10) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`name`, `student_id`, `phone_no`, `email`, `password`) VALUES
('Nazmul Hasan', 1320067642, '01761223750', 'edufornazmul@gmail.com', '44a78e05632417b0e85ea12d1297d501c261be2f'),
('Deboprio mani', 1320087042, '01672335577', 'debo.mani@gmail.com', 'c2017fc2461a7c06ff69b71a4623d3c4a5667c67'),
('Foyez Ahmed Rony', 1320097042, '01670996685', 'foyez.rony@northsouth.edu', '442afd1dcf8fa780acd91240ec99dd60c83bbe71'),
('Mahamud Hasan', 1410097042, '01671998877', 'mahamud.hasan@northsouth.edu', 'f1a63f82df8f8fbdb864e0bc85233451e41dbf05'),
('Naima Akter Bristy', 1411875642, '01951230196', 'naima.brishty@northsouth.edu', '032cbb1d4271f0dd78522edf90cef3b83e0fd7c1'),
('Shibbir saadi', 1420097042, '01675225588', 'saadi@gmail.com', '6827f0b2a610957e8ddb6a2d1baafdfee3917559'),
('Amrena Deena', 1510098042, '01951230197', 'deena@gmail.com', '06531451fcb2c11bb167e2f760a45d42b3a7bb78'),
('Pranth Talukdar', 1511875642, '01970996685', 'pranto@gmail.com', 'e50de1c18e13329bc858c780c7c5d12ac5144b31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `initial` (`initial`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`initial`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`problem_id`),
  ADD KEY `assignment_id` (`assignment_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `problem_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `score_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_initial` FOREIGN KEY (`initial`) REFERENCES `faculties` (`initial`),
  ADD CONSTRAINT `fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `problems`
--
ALTER TABLE `problems`
  ADD CONSTRAINT `fk_assignment_id` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`assignment_id`);

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `fk_student_id_score` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
