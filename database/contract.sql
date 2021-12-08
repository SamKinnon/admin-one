-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 08:11 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contract`
--

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE `contractor` (
  `c_number` varchar(50) NOT NULL,
  `c_title` varchar(100) NOT NULL,
  `c_client` varchar(30) NOT NULL,
  `c_partner` varchar(30) NOT NULL,
  `c_sp` varchar(40) NOT NULL,
  `c_amount` int(100) NOT NULL,
  `c_manager` varchar(30) NOT NULL,
  `c_duration` varchar(40) NOT NULL,
  `c_attachment` blob NOT NULL,
  `c_date` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contractor`
--

INSERT INTO `contractor` (`c_number`, `c_title`, `c_client`, `c_partner`, `c_sp`, `c_amount`, `c_manager`, `c_duration`, `c_attachment`, `c_date`, `status`) VALUES
('123', 'Ubukode', 'amazon', 'Google', 'FedX', 12344, 'Roger', '4 Months', 0x5472616e7363726970742e706466, '2021-11-09', 'Ended'),
('321', 'tg', 'Sano', 'Jhn', 'rews', 13321, 'Kikuu', '23 years', 0x53616d526573756d655f312e706466, '2021-11-05', 'Ended');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `c_number` varchar(100) NOT NULL,
  `c_duration` varchar(20) NOT NULL,
  `c_attachments` blob NOT NULL,
  `c_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`c_number`, `c_duration`, `c_attachments`, `c_date`) VALUES
('321', '2 years', 0x53616d49642e706466, '2021-11-06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, '', '$2y$10$/9O6WvspNyJcE2CWM4PADe/'),
(2, 'sam', '$2y$10$URl2tLYUSyaVX.05ELV3jOO'),
(4, 'Admin', '$2y$10$mDAsFw4/598mBdBgBDQZ3e1asSLW5ZVZPw9LWUc79tY7QsIf5xMyK'),
(5, 'Manzi', '$2y$10$ORZVxts0KDBsSMJquu1dg.NmsmvYwFZZYUIqNPtdXRzlZRrk8wNFW'),
(6, 'Gogo', '$2y$10$92b2HzmUQXwEQHlz0ypjIuUTBWHL7ZaqTUSLBa5LHFzYqZDmSt3eG'),
(7, 'Divine', '$2y$10$0EoD1jQegqtPPtWf88DW.ehgGd0u2o4Miyc1GlU7IWycX.jNM1nte'),
(8, 'Gafebu', '$2y$10$y7FUYFzGcwYPhBE0MmRBWeoa7CN8Xa6cxkCYjynxT4z7y3oCAOpAe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`c_number`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD KEY `c_number` (`c_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `c_number` FOREIGN KEY (`c_number`) REFERENCES `contractor` (`c_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
