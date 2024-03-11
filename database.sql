-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 06:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour_and_travels`
--
CREATE DATABASE IF NOT EXISTS `tour_and_travels` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tour_and_travels`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_image` varchar(100) NOT NULL,
  `car_price` varchar(50) NOT NULL,
  `car_seats` varchar(100) NOT NULL,
  `fuel_type` varchar(100) NOT NULL,
  `car_availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_image`, `car_price`, `car_seats`, `fuel_type`, `car_availability`) VALUES
(39, 'tata nexon', 'Acer_Wallpaper_05_3840x2400.jpg', '14000', '5 Seater Sedan Car', 'Diesel', 1),
(40, 'tata nexon', 'scorpio.jpeg', '12000', '6 Seater Sedan Car', 'Petrol', 1),
(41, 'tata nexon', 'ertiga.jpeg', '54746', '15', 'petrol', 1),
(42, 'tata nexon', 'scorpio.jpeg', '14000', '5 Seater Sedan Car', 'petrol', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_availibility`
--

CREATE TABLE `car_availibility` (
  `availability_id` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `available_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `central_india`
--

CREATE TABLE `central_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `central_india`
--

INSERT INTO `central_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Madhya Pradesh', 'mp.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 5),
(2, 'Chattisgarh', 'chhattisgarh.jpg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 5);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `destination_id` int(11) NOT NULL,
  `region` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `num_of_places` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`destination_id`, `region`, `link`, `image_url`, `description`, `num_of_places`) VALUES
(1, 'North India', 'north_india', 'north.jpg', 'Home to the Taj Mahal...', 5),
(2, 'South India', 'south_india', 'south.jpg', 'A hill station in Kerala...', 3),
(3, 'East India', 'east_india', 'east.jpg', 'Known for its tea gardens...', 4),
(4, 'West India', 'west_india', 'west.jpg', 'The Pink City of Rajasthan...', 6),
(5, 'Central India', 'central_india', 'central.jpg', 'Famous for its temples...', 2);

-- --------------------------------------------------------

--
-- Table structure for table `east_india`
--

CREATE TABLE `east_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `east_india`
--

INSERT INTO `east_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Arunachal Pradesh', 'arunachal.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 3),
(2, 'Sikkim', 'sikkim.jpeg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 3),
(3, 'Assam', 'assam.jpeg', 22000.00, '7 D/7 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2243, 3),
(4, 'Nagaland', 'nagaland.jpg', 16000.00, '5 D/5 N', '5 star accommodation', 'transportation', 'food facilities', 1, 5433, 3),
(5, 'Meghalaya', 'meghalaya.jpeg', 22000.00, '10 D/9 N', '5 star accommodation', 'transportation', 'food facilities', 1, 3221, 3),
(6, 'West Bengal', 'bengal.jpeg', 25000.00, '6 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1988, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_image` varchar(100) NOT NULL,
  `hotel_price` int(11) NOT NULL,
  `hotel_destination` varchar(100) NOT NULL,
  `hotel_location` varchar(100) NOT NULL,
  `hotel_address` varchar(200) NOT NULL,
  `hotel_phone` int(11) NOT NULL,
  `hotel_email` varchar(50) NOT NULL,
  `hotel_availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `hotel_image`, `hotel_price`, `hotel_destination`, `hotel_location`, `hotel_address`, `hotel_phone`, `hotel_email`, `hotel_availability`) VALUES
(9, 'taj', 'swift.jpeg', 1500, 'West', 'Mumbai', 'Allanhabad', 1245454255, 'jndskbdh@dnsdn.com', 1),
(12, 'taj', 'amaze.jpeg', 2000, 'East', 'Nagaland', 'Varanasi', 154454548, 'taj@vns.com', 1),
(14, 'taj', 'Acer_Wallpaper_05_3840x2400.jpg', 2000, 'North', 'Uttar Pradesh', 'Varanasi', 15454454, 'aaaa@ggg.v', 1),
(15, 'lotus hotel', 'Acer_Wallpaper_05_3840x2400.jpg', 2500, 'North', 'Uttar Pradesh', 'saranath, varanasi', 2147483647, 'lotus@sarnath.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `north_india`
--

CREATE TABLE `north_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `north_india`
--

INSERT INTO `north_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Jammu and Kashmir', 'jk.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 1),
(2, 'Uttar Pradesh', 'up.jpeg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 1),
(3, 'Uttrakhand', 'uk.jpg', 22000.00, '7 D/7 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2243, 1),
(4, 'Himachal Pradesh', 'hp.jpeg', 16000.00, '5 D/5 N', '5 star accommodation', 'transportation', 'food facilities', 1, 5433, 1),
(5, 'Punjab', 'punjab.jpeg', 22000.00, '10 D/9 N', '5 star accommodation', 'transportation', 'food facilities', 1, 3221, 1),
(6, 'Delhi', 'delhi.jpg', 25000.00, '6 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1988, 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Mumbai', 'mumbai.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(2, 'Goa', 'goa.jpg', 15000.00, '4 D/3 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(3, 'Manali', 'manali.jpg', 22000.00, '7 D/7 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(4, 'Shimla', 'shimla', 16000.00, '5 D/5 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(5, 'Haridwar-Rishikesh', 'rishikesh.jpg', 22000.00, '10 D/9 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(6, 'Kedarnath-Badrinath', 'kedarnath.webp', 25000.00, '6 D/6 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `registration_form`
--

CREATE TABLE `registration_form` (
  `user` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `destination_region` varchar(100) NOT NULL,
  `destination_place` varchar(100) NOT NULL,
  `travel_date` date NOT NULL,
  `duration` int(11) NOT NULL,
  `male` int(11) NOT NULL,
  `female` int(11) NOT NULL,
  `child` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_form`
--

INSERT INTO `registration_form` (`user`, `name`, `email`, `contact`, `destination_region`, `destination_place`, `travel_date`, `duration`, `male`, `female`, `child`) VALUES
(5, 'taj', 'taj@vns.in', 12545415, 'Northern', 'Uttar Pradesh', '2002-01-01', 5, 5, 5, 5),
(6, 'taj', 'taj@vns.in', 12545415, 'Northern', 'Jammu And Kashmir', '2002-01-01', 5, 5, 5, 5),
(7, 'taj2', 'taj@vns.in', 12545415, 'Northern', 'Jammu And Kashmir', '2024-01-21', 5, 5, 5, 5),
(8, 'taj8', 'taj@vns.com', 2147483647, 'Northern', 'Uttar Pradesh', '2024-01-26', 10, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `south_india`
--

CREATE TABLE `south_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `south_india`
--

INSERT INTO `south_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Telangana', 'telangana.jpeg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 2),
(2, 'Andhra Pradesh', 'andhra.jpeg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 2),
(3, 'Kerala', 'kerala.jpeg', 22000.00, '7 D/7 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2243, 2),
(4, 'Karnataka', 'karnataka.jpeg', 16000.00, '5 D/5 N', '5 star accommodation', 'transportation', 'food facilities', 1, 5433, 2),
(5, 'Tamil Nadu', 'tamilnadu.jpeg', 22000.00, '10 D/9 N', '5 star accommodation', 'transportation', 'food facilities', 1, 3221, 2),
(6, 'Andaman and Nicobar Islands', 'andaman.jpg', 25000.00, '6 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1988, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`) VALUES
(3, 'gdfgdfdf@m.v', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `data_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`data_id`, `user_id`, `name`, `email`, `phone`, `dob`, `address`) VALUES
(3, 3, 'ss', 'gdfgdfdf@m.v', '1245678923', '2024-01-10', 'dgfdhfgghf');

-- --------------------------------------------------------

--
-- Table structure for table `west_india`
--

CREATE TABLE `west_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `west_india`
--

INSERT INTO `west_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Maharashtra', 'mumbai.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 4),
(2, 'Goa', 'goa.jpg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 4),
(3, 'Gujarat', 'manali.jpg', 22000.00, '7 D/7 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2243, 4),
(4, 'Daman and Diu', 'shimla', 16000.00, '5 D/5 N', '5 star accommodation', 'transportation', 'food facilities', 1, 5433, 4),
(5, 'Dadra and Nagar Haveli', 'rishikesh.jpg', 22000.00, '10 D/9 N', '5 star accommodation', 'transportation', 'food facilities', 1, 3221, 4),
(6, 'Rajasthan', 'kedarnath.webp', 25000.00, '6 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1988, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `car_availibility`
--
ALTER TABLE `car_availibility`
  ADD PRIMARY KEY (`availability_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `central_india`
--
ALTER TABLE `central_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`destination_id`);

--
-- Indexes for table `east_india`
--
ALTER TABLE `east_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `north_india`
--
ALTER TABLE `north_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_form`
--
ALTER TABLE `registration_form`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `south_india`
--
ALTER TABLE `south_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`data_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `west_india`
--
ALTER TABLE `west_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `car_availibility`
--
ALTER TABLE `car_availibility`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `central_india`
--
ALTER TABLE `central_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `destination_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `east_india`
--
ALTER TABLE `east_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `north_india`
--
ALTER TABLE `north_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration_form`
--
ALTER TABLE `registration_form`
  MODIFY `user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `south_india`
--
ALTER TABLE `south_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `west_india`
--
ALTER TABLE `west_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_availibility`
--
ALTER TABLE `car_availibility`
  ADD CONSTRAINT `car_availibility_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `central_india`
--
ALTER TABLE `central_india`
  ADD CONSTRAINT `central_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `east_india`
--
ALTER TABLE `east_india`
  ADD CONSTRAINT `east_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `north_india`
--
ALTER TABLE `north_india`
  ADD CONSTRAINT `north_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `south_india`
--
ALTER TABLE `south_india`
  ADD CONSTRAINT `south_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `user_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `west_india`
--
ALTER TABLE `west_india`
  ADD CONSTRAINT `west_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
