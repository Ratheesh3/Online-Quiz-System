-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2025 at 04:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL,
  `level` enum('easy','medium','hard') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `level`) VALUES
(1, 'What is the capital of France?', 'Paris', 'Rome', 'Madrid', 'Berlin', 'Paris', 'easy'),
(2, 'Which language runs in a web browser?', 'Python', 'C++', 'JavaScript', 'Java', 'JavaScript', 'easy'),
(3, '2 + 2 × 2 = ?', '6', '8', '4', '10', '6', 'easy'),
(4, 'Which planet is known as the Red Planet?', 'Earth', 'Mars', 'Jupiter', 'Venus', 'Mars', 'easy'),
(5, 'What is H2O commonly known as?', 'Hydrogen', 'Oxygen', 'Water', 'Salt', 'Water', 'easy'),
(6, 'How many continents are there?', '5', '6', '7', '8', '7', 'easy'),
(7, 'What is the largest ocean?', 'Atlantic', 'Indian', 'Arctic', 'Pacific', 'Pacific', 'easy'),
(8, 'How many colors are in a rainbow?', '5', '6', '7', '8', '7', 'easy'),
(9, 'Which organ pumps blood?', 'Lungs', 'Heart', 'Brain', 'Kidney', 'Heart', 'easy'),
(10, 'Which gas do plants absorb?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'Carbon Dioxide', 'easy'),
(11, 'Who developed the theory of relativity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Nikola Tesla', 'Albert Einstein', 'medium'),
(12, 'Which country is the largest producer of coffee in the world?', 'India', 'Brazil', 'Colombia', 'Ethiopia', 'Brazil', 'medium'),
(13, 'What is the hardest natural substance on Earth?', 'Gold', 'Iron', 'Diamond', 'Platinum', 'Diamond', 'medium'),
(14, 'Which organ in the human body is primarily responsible for detoxification?', 'Heart', 'Liver', 'Kidney', 'Lungs', 'Liver', 'medium'),
(15, 'Which element has the chemical symbol \"Na\"?', 'Nitrogen', 'Nickel', 'Sodium', 'Neon', 'Sodium', 'medium'),
(16, 'What is the largest desert in the world?', 'Gobi', 'Sahara', 'Antarctica', 'Kalahari', 'Antarctica', 'medium'),
(17, 'Which planet has the most moons?', 'Mars', 'Saturn', 'Jupiter', 'Uranus', 'Saturn', 'medium'),
(18, 'Which programming language is primarily used for iOS app development?', 'Kotlin', 'Swift', 'Java', 'C#', 'Swift', 'medium'),
(19, 'Who painted the Mona Lisa?', 'Vincent van Gogh', 'Leonardo da Vinci', 'Pablo Picasso', 'Michelangelo', 'Leonardo da Vinci', 'medium'),
(20, 'What is the capital city of Canada?', 'Toronto', 'Ottawa', 'Vancouver', 'Montreal', 'Ottawa', 'medium'),
(21, 'Which is the smallest prime number greater than 100?', '101', '103', '107', '109', '101', 'hard'),
(22, 'What is the value of π (pi) correct to three decimal places?', '3.141', '3.142', '3.143', '3.144', '3.142', 'hard'),
(23, 'Who is known as the father of computers?', 'Charles Babbage', 'Alan Turing', 'Bill Gates', 'John von Neumann', 'Charles Babbage', 'hard'),
(24, 'Which metal has the highest melting point?', 'Gold', 'Iron', 'Tungsten', 'Titanium', 'Tungsten', 'hard'),
(25, 'In which year did World War II end?', '1942', '1945', '1948', '1950', '1945', 'hard'),
(26, 'What is the chemical formula of sulfuric acid?', 'H2SO3', 'H2SO4', 'HNO3', 'HCl', 'H2SO4', 'hard'),
(27, 'Which data structure uses LIFO principle?', 'Queue', 'Array', 'Stack', 'Linked List', 'Stack', 'hard'),
(28, 'Which gas is most abundant in Earth’s atmosphere?', 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen', 'Nitrogen', 'hard'),
(29, 'Which country first launched a satellite into space?', 'USA', 'Germany', 'USSR', 'China', 'USSR', 'hard'),
(30, 'Which programming paradigm does Python primarily support?', 'Functional', 'Procedural', 'Object-Oriented', 'All of the above', 'All of the above', 'hard');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
