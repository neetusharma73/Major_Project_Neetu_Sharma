-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2024 at 07:18 PM
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
-- Database: `petadopt_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `padopt_db`
--

CREATE TABLE `padopt_db` (
  `pet_id` int(2) NOT NULL,
  `pet_breed` varchar(50) NOT NULL,
  `pet_desc` varchar(10000) NOT NULL,
  `pet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `padopt_db`
--

INSERT INTO `padopt_db` (`pet_id`, `pet_breed`, `pet_desc`, `pet_image`) VALUES
(4, 'Dachshund Dog', 'Dachshunds, also known as \"wiener dogs\" or \"sausage dogs,\" are a small breed of hound dog originally from Germany. They were bred for hunting badgers, rabbits, and other burrowing animals. Characterized by their long bodies and short legs, dachshunds come in three coat varieties: smooth, longhaired, and wirehaired. They are known for their playful and lively nature, as well as their strong-willed and courageous temperament. Despite their small size, dachshunds are active and require regular exercise. They can be prone to back issues due to their elongated spine, so it\'s important to prevent them from jumping excessively and to support their back when carrying them. Overall, dachshunds make loyal and affectionate pets, known for their distinctive appearance and spirited personality.\r\nDachshunds, also known as \"wiener dogs\" or \"sausage dogs,\" are a small breed of hound dog originally from Germany. They were bred for hunting badgers, rabbits, and other burrowing animals. Characterized by their long bodies and short legs, dachshunds come in three coat varieties: smooth, longhaired, and wirehaired. \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'pics/dc7.jpg'),
(5, 'Beagle ', 'Beagles are a small to medium-sized breed of hound dog, renowned for their keen sense of smell and tracking ability. Originating in England, beagles were primarily used for hunting small game like rabbits and hare. They have a distinctive appearance with a muscular build, long ears, and a short, smooth coat that comes in various color combinations, typically tricolor or bicolor', 'pics/dc8.jpg'),
(6, 'Labrador', 'Labrador Retrievers, commonly known as Labradors or Labs, are one of the most popular dog breeds worldwide. Originating in Newfoundland, Canada, they were initially bred to help fishermen retrieve nets and catch fish that escaped from fishing lines. Labradors are medium to large-sized dogs with a sturdy build, short and dense coat, and webbed paws, making them excellent swimmers.', 'pics/dc9.jpg'),
(7, 'Golden Retriever', 'Golden Retrievers are a popular breed known for their friendly and tolerant temperament. Originating from Scotland, they were initially bred for retrieving game during hunting due to their excellent swimming ability and soft mouth. Golden Retrievers are medium to large-sized dogs with a dense, water-repellant outer coat and a thick undercoat. Their coat color ranges from light golden to dark golden.', 'pics/dc10.jpg'),
(8, 'German Shepherd.', 'German Shepherds are a large and versatile breed known for their intelligence, strength, and loyalty. Originating in Germany, they were initially bred for herding sheep but have become one of the most popular working and companion dogs worldwide. They have a strong, muscular build, a double coat that can be short or long, and typically come in colors like black and tan, sable, or all black.\r\n\r\n', 'pics/dc3.jpg'),
(9, 'Bulldog', 'Bulldogs, often referred to as English Bulldogs, are a medium-sized breed known for their distinctive wrinkled face, pushed-in nose, and muscular, stocky build. Originating in England, they were initially bred for bull-baiting, but today they are beloved companion animals.', 'pics/dc1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pparticipant_tb`
--

CREATE TABLE `pparticipant_tb` (
  `pet_id` int(2) NOT NULL,
  `powner_name` varchar(30) NOT NULL,
  `pet_breed` varchar(100) NOT NULL,
  `pet_city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pparticipant_tb`
--

INSERT INTO `pparticipant_tb` (`pet_id`, `powner_name`, `pet_breed`, `pet_city`) VALUES
(4, 'Neetu', 'Lahori dog', 'Patiala');

-- --------------------------------------------------------

--
-- Table structure for table `pregister_tb`
--

CREATE TABLE `pregister_tb` (
  `pet_id` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` int(10) NOT NULL,
  `email` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pregister_tb`
--

INSERT INTO `pregister_tb` (`pet_id`, `username`, `password`, `email`) VALUES
(1, 'naina', 1234, 'naina22@gmail.c'),
(2, 'Khushi', 12345, 'khushi22@gmail.'),
(3, 'Neetu Sharma', 12345, 'mailneetu11@gma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `padopt_db`
--
ALTER TABLE `padopt_db`
  ADD PRIMARY KEY (`pet_id`);

--
-- Indexes for table `pparticipant_tb`
--
ALTER TABLE `pparticipant_tb`
  ADD PRIMARY KEY (`pet_id`);

--
-- Indexes for table `pregister_tb`
--
ALTER TABLE `pregister_tb`
  ADD PRIMARY KEY (`pet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `padopt_db`
--
ALTER TABLE `padopt_db`
  MODIFY `pet_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pparticipant_tb`
--
ALTER TABLE `pparticipant_tb`
  MODIFY `pet_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pregister_tb`
--
ALTER TABLE `pregister_tb`
  MODIFY `pet_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
