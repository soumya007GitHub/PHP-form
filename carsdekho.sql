-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 07:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carsdekho`
--

-- --------------------------------------------------------

--
-- Table structure for table `car categories`
--

CREATE TABLE `car categories` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car categories`
--

INSERT INTO `car categories` (`id`, `name`) VALUES
(1, 'SUV'),
(2, 'Hatchback'),
(3, 'Sedan'),
(4, 'MUV'),
(5, 'Luxury');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `image_name` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` varchar(40) NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `image_name`, `name`, `price`, `catid`) VALUES
(1, 'nexon', 'Tata Nexon', 'Rs 8 - 14.60 Lakh*', 1),
(2, 'thar', 'Mahindra Thar', 'Rs 10.54 - 16.78 Lakh*', 1),
(3, 'exter', 'Hyundai Exter', 'Rs 6 - 10.10 Lakh*', 1),
(4, 'fortuner', 'Toyota Fortuner', 'Rs 32.99 - 50.74 Lakh*', 1),
(5, 'swift', 'Maruti Swift', 'Rs 5.99 - 9.03 Lakh*', 2),
(6, 'i20', 'Hyundai i20', 'Rs 6.99 - 11.01 Lakh*', 2),
(7, 'baleno', 'Maruti Baleno', 'Rs 6.61 - 9.88 Lakh*', 2),
(8, 'wagon r', 'Maruti Wagon R', 'Rs 5.54 - 7.42 Lakh*', 2),
(9, 'verna', 'Hyundai Verna', 'Rs 10.96 - 17.38 Lakh*', 3),
(10, 'dzire', 'Maruti Dzire', 'Rs 6.51 - 9.39 Lakh*', 3),
(11, 'city', 'Honda City', 'Rs 11.63 - 16.11 Lakh*', 3),
(12, 'aura', 'Hyundai Aura', 'Rs 6.33 - 8.90 Lakh*', 3),
(13, 'crysta', 'Toyota Innova Crysta', 'Rs 19.99 - 26.05 Lakh*', 4),
(14, 'ertiga', 'Maruti Ertiga', 'Rs 8.64 - 13.08 Lakh*', 4),
(15, 'rumion', 'Toyota Rumion', 'Rs 10.29 - 13.68 Lakh*', 4),
(16, 'triber', 'Renault Triber', 'Rs 6.33 - 8.97 Lakh*', 4),
(17, 'c40', 'Volvo C40 Recharge', 'Rs 61.25 Lakh*', 5),
(18, 'gla', 'Mercedes-Benz GLA', 'Rs 48.50 - 52.70 Lakh*', 5),
(19, 'a4', 'Audi A4', 'Rs 43.85 - 51.85 Lakh*', 5),
(20, 'i7', 'BMW i7', 'Rs 1.95 Cr*', 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(300) NOT NULL,
  `car_types` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `phone_number`, `email`, `address`, `car_types`) VALUES
(1, 'Soumya Tripathy', '9692229679', 'soumyatripathy977@gamil.com', 'vvrvvv', 'hatchback'),
(2, 'tulika', '9692229676', 'tulikamohapatra737@gmail.com', 'hrnfsc', 'hatchback, hu'),
(3, 'Soumya Tripathy', '9692229679', 'soumya.yunay@gmail.com', 'near new age living gym, pareswar sahi', 'Hatchback, Sedan'),
(4, 'guru gopal', '1234567890', 'adityaverma502340@gmail.com', 'bfddnnn n gmgfmgm mm, gmmytk,t,t', 'SUV, Hatchback, Sedan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car categories`
--
ALTER TABLE `car categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car categories`
--
ALTER TABLE `car categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
