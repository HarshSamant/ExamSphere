-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2023 at 03:30 AM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customizations`
--

CREATE TABLE `customizations` (
  `id` int NOT NULL,
  `font_size` int NOT NULL,
  `color` varchar(10) NOT NULL,
  `student_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customizations`
--

INSERT INTO `customizations` (`id`, `font_size`, `color`, `student_id`) VALUES
(3, 2, '#1e00ff', 8),
(4, 2, '#0055ff', 9),
(5, 2, '#ff6600', 13),
(6, 2, '#ff5900', 9),
(7, 2, '#ff5900', 9),
(8, 2, '#00ff2a', 13),
(9, 2, '#00ff2a', 13),
(10, 3, '#ffae00', 9),
(11, 3, '#004cff', 7),
(12, 2, '#001eff', 7),
(13, 1, '#00e1ff', 7),
(14, 2, '#ff7b00', 15);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exam_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `duration` int NOT NULL,
  `totalQuestions` int NOT NULL,
  `correctMarks` int NOT NULL,
  `wrongMarks` int NOT NULL,
  `scheduledDate` datetime NOT NULL,
  `creationDate` datetime NOT NULL,
  `userID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `title`, `duration`, `totalQuestions`, `correctMarks`, `wrongMarks`, `scheduledDate`, `creationDate`, `userID`) VALUES
(2, 'JAVA', 60, 20, 2, 0, '2023-05-16 09:33:00', '2023-05-11 20:33:40', 7),
(3, 'Computer Networks', 60, 10, 2, 0, '2023-05-14 11:00:00', '2023-05-12 10:01:41', 7),
(4, 'GK', 20, 5, 2, 0, '2023-05-15 12:00:00', '2023-05-15 11:52:18', 7),
(5, 'COA', 120, 10, 2, 0, '2023-05-15 12:45:00', '2023-05-15 12:37:09', 7),
(6, 'new exam', 45, 50, 2, 0, '2023-05-15 15:50:00', '2023-05-15 15:45:15', 7),
(7, 'Trial exam', 30, 5, 2, 0, '2023-05-17 10:35:00', '2023-05-16 20:26:03', 8),
(8, 'Trial 2', 30, 5, 2, 0, '2023-05-17 10:54:00', '2023-05-17 10:44:17', 7),
(9, 'abc', 10, 2, 2, 0, '2023-05-20 14:50:00', '2023-05-20 14:49:39', 11),
(10, 'Trial', 60, 3, 2, 0, '2023-05-20 16:46:00', '2023-05-20 16:43:40', 12),
(11, 'abc', 10, 3, 2, 0, '2023-05-20 17:02:00', '2023-05-20 17:00:23', 13);

-- --------------------------------------------------------

--
-- Table structure for table `invigilators`
--

CREATE TABLE `invigilators` (
  `invigilator_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint NOT NULL,
  `userID` varchar(200) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `exam_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `invigilators`
--

INSERT INTO `invigilators` (`invigilator_id`, `name`, `email`, `phone`, `userID`, `pass`, `exam_id`) VALUES
(1, 'Apoorv Bansal', 'workfiles99999@gmail.com', 9389998674, 'workfiles99999@gmail.com_645e0b7ec7b54', 'bb9ec7162ba97323', 2),
(4, 'harshit', 'harshitbakhshi135@gmail.com', 7340752115, 'harshitbakhshi135@gmail.com_6461d148d6723', '9d8f8d84d2c28dba', 4),
(5, 'harshit', 'harshitbakhshi01@gmail.com', 9988637061, 'harshitbakhshi01@gmail.com_64639c3c4830e', '00959b80488ade4d', 7);

-- --------------------------------------------------------

--
-- Table structure for table `online_exam_teacher`
--

CREATE TABLE `online_exam_teacher` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `Passwordd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `token` varchar(255) NOT NULL,
  `Activity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `online_exam_teacher`
--

INSERT INTO `online_exam_teacher` (`id`, `name`, `email`, `Passwordd`, `token`, `Activity`) VALUES
(3, 'Harshit', 'harshitbakhshi1135@gmail.com', '$2y$10$lLDbBljS91nIeqdncQG41u0GAnu1DTo2GQ8GKPUpmU6PzH0ZVDI7S', '108ec6ac8b3fb739b21833f0a34749', 'active'),
(5, 'Sangeeta', 'sangeetarulaniyan004@gmail.com', '$2y$10$orophXWg1un88KJ9g3Sm3eeGuOETxVM3AEFF84jeK3JmsqJH5mMTW', '2bd0676ee5f846f9fd5d9d3f272452', 'active'),
(7, 'Harshit Bakhshi', 'harshitbakhshi01@gmail.com', '$2y$10$flaPxt6xpGMnQbtaKVABSe83wSFeMob97jYcaI/1Eymc8sT56zSJW', '252a76f4bb22edc7122da423885249', 'active'),
(8, 'Harshit Bakhshi', 'harshitbakshi83@gmail.com', '$2y$10$2DV/CLcnWpii/I3aC.t2AeL24vcNYiWWvlw0s/WJxI2iNy2kJqHfK', 'fdbe6bf3cbf5d04c814ca4a7ba1058', 'active'),
(9, 'aa', 'kpuniya@yahoo.com', '$2y$10$MRe.SDBZ4kRXT0.GM6Iykepytr7cdgbJWZbk6xE3GvxajlaJHb8FK', 'acaaf0995d82a1c5bd0fb7afdfbdbd', 'inactive'),
(11, 'Khushbu Chandel', 'chandelkhushbu773@gmail.com', '$2y$10$ocINR575L.BOyp.Ka/.nFeYnM4gbqSOU9FZv05U0Wlzeyr34.DJS.', '59241b979d2b5a8a90e60b719a08f6', 'active'),
(12, 'Bibek', 'budhathokiviveek@gmail.com', '$2y$10$C7C1E0pv4sIwhtTLKUqqYes5tEXciJwHAIR0J8S.diQN4BHweLxvi', '54cd8fbc93693862d4a6e947970747', 'active'),
(13, 'Harshit Bakhshi', 'harshitbakhshi83@gmail.com', '$2y$10$HuL7N3JnIrhFv5afSgu.6uClCevI917/.GP8DZWCH0PuuihiJUyZG', '0d89bf0e3cc6a98ee0b21de0528702', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int NOT NULL,
  `questionNumber` int NOT NULL,
  `question` varchar(200) NOT NULL,
  `option1` varchar(200) NOT NULL,
  `option2` varchar(200) NOT NULL,
  `option3` varchar(200) NOT NULL,
  `option4` varchar(200) NOT NULL,
  `answer` enum('1','2','3','4') NOT NULL,
  `exam_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `questionNumber`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `exam_id`) VALUES
(1, 1, 'Which approach stack follows?', 'FIFO', 'FILO', 'Both', 'None', '2', 1),
(2, 1, 'which of the following is an OOPS concept?', 'Abstraction', 'System.out.print( )', 'both', 'none', '1', 2),
(3, 1, 'what is full form of TCP?', 'transmission control protocol', 'tranfer control protocol', 'both', 'none ', '1', 3),
(4, 2, 'Which approach queue follows?', 'FIFO', 'FILO', 'both', 'none', '1', 1),
(5, 2, 'UDP is a ?', 'connection oriented', 'connection less', 'both', 'none', '2', 3),
(6, 2, 'who founded java?', 'me', 'not me', 'nitin', 'bibek', '2', 2),
(8, 1, 'what is capital of india?', 'delhi', 'mumbai', 'pune', 'chandigarh', '1', 4),
(9, 2, 'who is prime minister of india?', 'narendra modi', 'rahul gandhi', 'amit shah ', 'bibek budhathoki', '1', 4),
(10, 3, 'what is capital of punjab?', 'ludhiana', 'chandigarh', 'mohali', 'Gharuan', '2', 4),
(11, 4, 'Full form of gk?', 'generic knowledge', 'both', 'general knowledge', 'none', '3', 4),
(12, 5, 'full form of CU?', 'control unit', 'chandigarh university ', 'none', 'both', '4', 4),
(13, 1, 'full form of COA', 'computer organization and architecture', 'i dont know ', 'both', 'none ', '1', 5),
(14, 1, 'what is ?', 'a', 'b', 'c', 'd', '1', 6),
(15, 1, 'what is full form of TCP?', 'transmission control protocol', 'tranfer control protocol', 'both ', 'None', '2', 7);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `duration` int NOT NULL,
  `response_time` time NOT NULL,
  `total_scores` int NOT NULL,
  `exam_id` int NOT NULL,
  `student_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `name`, `email`, `start_time`, `end_time`, `duration`, `response_time`, `total_scores`, `exam_id`, `student_id`) VALUES
(17, 'Akhil Gautam', 'akhilgautam2004@gmail.com', '2023-05-13 23:13:48', '2023-05-13 23:14:51', 60, '00:00:00', 4, 2, 7),
(21, 'Hritik', 'hritik@gmail.com', '2023-05-14 11:26:29', '2023-05-14 11:54:21', 60, '00:00:00', 4, 3, 8),
(22, 'Hritik', 'hritik@gmail.com', '2023-05-14 23:10:02', '2023-05-14 23:21:10', 60, '00:00:00', 4, 3, 8),
(23, 'Bibek ', 'budhathokiviveek@gmail.com', '2023-05-15 12:02:20', '2023-05-15 12:03:44', 20, '00:00:00', 10, 4, 9),
(24, 'Bibek ', 'budhathokiviveek@gmail.com', '2023-05-15 12:07:31', '2023-05-15 12:09:00', 20, '00:00:00', 6, 4, 13),
(25, 'Bibek ', 'budhathokiviveek@gmail.com', '2023-05-15 12:07:31', '2023-05-15 12:09:18', 20, '00:00:00', 6, 4, 13),
(26, 'Bibek ', 'budhathokiviveek@gmail.com', '2023-05-15 12:44:59', '2023-05-15 12:46:52', 20, '00:00:00', 8, 4, 9),
(27, 'Bibek ', 'budhathokiviveek@gmail.com', '2023-05-15 14:13:00', '2023-05-15 14:15:31', 20, '00:00:00', 2, 4, 13),
(28, 'Bibek ', 'budhathokiviveek@gmail.com', '2023-05-15 14:13:00', '2023-05-15 14:16:45', 20, '00:00:00', 8, 4, 13),
(29, 'Akhil Gautam', 'akhilgautam2004@gmail.com', '2023-05-16 20:40:35', '2023-05-16 20:42:10', 60, '00:00:00', 4, 2, 7),
(30, 'Akhil Gautam', 'akhilgautam2004@gmail.com', '2023-05-17 10:49:53', '2023-05-17 10:50:29', 60, '00:00:00', 4, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint NOT NULL,
  `userID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pass` varchar(40) NOT NULL,
  `marks` int DEFAULT NULL,
  `AttemptTime` datetime DEFAULT NULL,
  `warnings` int NOT NULL DEFAULT '0',
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `video` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `exam_id` int NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `email`, `phone`, `userID`, `pass`, `marks`, `AttemptTime`, `warnings`, `photo`, `video`, `exam_id`, `status`) VALUES
(7, 'Akhil Gautam', 'akhilgautam2004@gmail.com', 9816847213, 'akhilgautam2004@gmail.com_645e2700862ab', '0bd3da6f2fa0513a', NULL, '2023-05-17 10:49:35', 3, 'captured_Images/646464001cb4f.png', 'recorded_videos/646464147a495.mp4', 2, 'finished'),
(8, 'Hritik', 'hritik@gmail.com', 1234567890, 'hritik@gmail.com_645fc1af34531', 'd1de4525e10d6991', NULL, '2023-05-14 23:09:42', 2, 'captured_Images/64611d2144a45.png', 'recorded_videos/64611f8c9dab1.mp4', 3, 'finished'),
(9, 'Bibek ', 'budhathokiviveek@gmail.com', 8194932415, 'budhathokiviveek@gmail.com_6461d0c05d6eb', 'c41f062c94643a70', NULL, '2023-05-15 15:48:02', 3, 'captured_Images/646206f4666b6.png', 'recorded_videos/6461dc60af0f7.mp4', 4, 'started'),
(13, 'Bibek ', 'budhathokiviveek@gmail.com', 8194932415, 'budhathokiviveek@gmail.com_6461d124acd1e', '1d5ecda5fd79f510', NULL, '2023-05-15 14:12:36', 2, 'captured_Images/6461f0b459af8.png', 'recorded_videos/6461f1718b150.mp4', 4, 'finished'),
(14, 'Harshit', 'harshitbakhshi83@gmail.com', 7340752115, 'harshitbakhshi83@gmail.com_64639ba4920fa', 'a0cea5b054f80621', NULL, NULL, 0, NULL, NULL, 7, 'no'),
(15, 'Khushbu', 'chandelkhushbu773@gmail.com', 1234567890, 'chandelkhushbu773@gmail.com_64646383f3d33', '273f84671f149fbb', NULL, '2023-05-20 14:53:48', 2, 'captured_Images/646891d9dd105.png', 'recorded_videos/646891ee4c3c6.mp4', 8, 'started'),
(16, 'Harshit', 'harshitbakshi83@gmail.com', 7340752115, 'harshitbakshi83@gmail.com_6468aba50a7bf', '70e61a6b206c3e19', NULL, NULL, 0, NULL, NULL, 10, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customizations`
--
ALTER TABLE `customizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studentIDFORCUSTOMIZATION` (`student_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `invigilators`
--
ALTER TABLE `invigilators`
  ADD PRIMARY KEY (`invigilator_id`),
  ADD UNIQUE KEY `login id` (`userID`);

--
-- Indexes for table `online_exam_teacher`
--
ALTER TABLE `online_exam_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `exam_id_forresult` (`exam_id`),
  ADD KEY `student_id for result` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `login id` (`userID`),
  ADD KEY `exam_id` (`exam_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customizations`
--
ALTER TABLE `customizations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `invigilators`
--
ALTER TABLE `invigilators`
  MODIFY `invigilator_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `online_exam_teacher`
--
ALTER TABLE `online_exam_teacher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customizations`
--
ALTER TABLE `customizations`
  ADD CONSTRAINT `studentIDFORCUSTOMIZATION` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `exam_id_forresult` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_id for result` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
