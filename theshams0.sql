-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 06:34 PM
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
-- Database: `theshams0`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(20) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(34, 'Shams ul haque', '03082093967', 'Contact form check', '2024-05-02 15:18:38', 'haque3967@gmail.com'),
(35, 'c', 'c', 'c', '2024-05-22 21:23:50', 'c'),
(36, 'Taha', '023243245353454', 'kerrr aa', '2024-05-23 10:19:32', 'taha@gmail.com'),
(37, 'Taha', '023243245353454', 'grt', '2024-05-23 10:41:57', 'haque3967@gmail.com'),
(38, 'Tahaaa', '023243245353454', 'xsdfew', '2024-05-23 10:45:39', 'haque3967@gmail.comaa'),
(39, 'Taha', '023243245353454', 'grt', '2024-05-23 10:47:03', 'haque3967@gmail.com'),
(40, 'Taha', '023243245353454', 'grt', '2024-05-23 10:47:32', 'haque3967@gmail.com'),
(41, 'Taha', '023243245353454', 'grt', '2024-05-23 10:47:49', 'haque3967@gmail.com'),
(42, 'Akhriii Naalo', 'Akhriii Phonnee', 'Message bhi aakhri Message bhi aakhri Message bhi aakhri Message bhi aakhri', '2024-05-23 10:54:48', 'Akhriii Email'),
(43, 'Taha', '023243245353454', 'grt', '2024-05-23 10:58:07', 'haque3967@gmail.com'),
(44, 'a', '3', 'd', '2024-05-23 11:04:35', 'b'),
(45, 'a', '3', 'd', '2024-05-23 11:06:18', 'b'),
(46, 'a', '3', 'd', '2024-05-23 11:08:43', 'b'),
(47, '', '3', 'fger', '2024-05-23 11:09:57', 'b'),
(48, 'a', '3', ' f', '2024-05-23 11:10:57', 'b'),
(49, 'Kerr', '77777777777', 'ewedewf4ef', '2024-05-23 11:11:24', 'kerr @ gmail.com'),
(50, 'Shams ul haque Phull', '03113473911', 'BHaiiii Internet q nahi chaal rahhaaaa', '2024-05-23 11:28:16', 'phullsahab@gmail.com'),
(51, 'Admin Check', '031111101121212', 'Checkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', '2024-05-23 13:12:44', 'check.admin@gamil.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `sb_title` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `sb_title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'First Post PSL 2024: Babar Azam breaks Chris Gayle’s record to become fastest to 10K runs in T20s', 'PSL 2024', 'first-post', 'Babar Azam has become the fastest batter to score 10 thousnad runs in T20 cricket. He achieved the record on Wednesday, February 21, while playing for Peshawar Zalmi in their match against the Karachi Kings in the Pakistan Super League (PSL) 2024 at the Gaddafi Stadium in Lahore.\r\n\r\nBabar broke the record of Chris Gayle, who achieved the feat back in his 285th innings while playing for the Royal Challengers Bangalore (RCB) in their Indian Premier League (IPL) 2017 match against the defunct Gujarat Lions in Rajkot.', 'bb.PNG', '2024-05-23 09:53:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
