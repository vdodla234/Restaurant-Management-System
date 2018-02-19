-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2016 at 06:57 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team_6`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `state_id`) VALUES
(1, 'charlotte', 1),
(2, 'Columbia', 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `first_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `dob` date NOT NULL,
  `salary` int(11) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address_line_1` varchar(100) NOT NULL,
  `address_line_2` varchar(100) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `date_of_joining` date NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `password`, `first_name`, `last_name`, `dob`, `salary`, `contact`, `address_line_1`, `address_line_2`, `zip_code`, `date_of_joining`, `type`) VALUES
(1234567, '1234567', 'disha', 'shetty', '1992-07-29', 5000, '9803192256', '9523 H', 'Unniversity terrace drive', 28262, '2016-11-01', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`type`) VALUES
('Full Time'),
('Manager'),
('Part time');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `full_name` varchar(25) NOT NULL,
  `meal_type` varchar(25) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `number_of_people` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `full_name`, `meal_type`, `phone_number`, `number_of_people`) VALUES
(1, 'disha', 'Dinner', '982056787', 2),
(2, 'raju', 'Breakfast', '1234566', 1),
(3, 'pratik', 'Breakfast', '99898976', 2),
(4, 'pratik', 'Breakfast', '99898976', 2),
(5, 'pratik', 'Breakfast', '99898976', 2),
(6, 'pratik', 'Breakfast', '99898976', 2),
(7, 'viresh', 'Breakfast', '9820568087', 6),
(8, 'viresh', 'Breakfast', '9820568087', 1),
(9, 'viresh', 'Breakfast', '9820568087', 1),
(10, 'viresh', 'Breakfast', '9820568087', 1),
(11, 'viresh', 'Breakfast', '9820568087', 2),
(12, 'viresh', 'Breakfast', '9820568087', 2),
(13, 'viresh', 'Breakfast', '9820568087', 2),
(14, 'rishi', 'Breakfast', '982056897', 1),
(15, 'rish', 'Breakfast', '982056896', 2),
(16, 'rish', 'Breakfast', '982056896', 2),
(17, 'rish', 'Breakfast', '982056896', 2),
(18, 'rish', 'Breakfast', '982056896', 2),
(19, 'rish', 'Breakfast', '982056896', 2),
(20, 'nn', 'Breakfast', '878543', 2),
(21, 'bb', 'Breakfast', '87553232', 2),
(22, 'bb', 'Breakfast', '87553232', 2),
(23, 'bb', 'Breakfast', '87553232', 2),
(24, 'tanvi', 'Breakfast', '9820568087', 2),
(25, 'tt', 'Breakfast', '9870347575', 2),
(26, 'rr', 'Breakfast', '2222222222', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `dish_name` varchar(20) NOT NULL,
  `price` int(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`dish_name`, `price`, `description`) VALUES
('fries', 2, 'fried potato sticks'),
('matar', 8, 'green peas dish'),
('pizza', 8, 'Flat bread topped with tomato sauce and cheese'),
('sambar', 2, 'vegetable soup'),
('tacos', 5, 'Mexican dish composed of corn folded around a filling');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL,
  `table_no` int(10) NOT NULL,
  `date_booked` date NOT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `table_no`, `date_booked`, `guest_id`, `type`, `time`) VALUES
(1, 3, '2016-11-01', 4, 'Breakfast', '23:00:00'),
(2, 4, '2016-11-01', 5, 'Breakfast', NULL),
(3, 1, '2016-11-29', 8, 'Breakfast', NULL),
(4, 2, '2016-11-29', 9, 'Breakfast', NULL),
(7, 1, '2016-11-19', 14, 'Breakfast', NULL),
(8, 3, '2016-11-19', 15, 'Breakfast', NULL),
(9, 3, '2016-11-19', 16, '', '10:00:00'),
(10, 3, '2016-11-24', 17, '', '12:00:00'),
(11, 4, '2016-11-24', 18, '', '12:00:00'),
(12, 3, '2016-11-20', 20, '', '00:00:00'),
(13, 3, '2016-11-28', 21, '', '13:00:00'),
(14, 4, '2016-11-28', 22, '', '13:00:00'),
(15, 3, '2016-11-07', 24, '', '10:00:00'),
(16, 4, '2016-11-07', 25, '', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_table`
--

CREATE TABLE `restaurant_table` (
  `table_no` int(10) NOT NULL,
  `capacity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant_table`
--

INSERT INTO `restaurant_table` (`table_no`, `capacity`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'North Carolina'),
(2, 'South Carolina');

-- --------------------------------------------------------

--
-- Table structure for table `zipcode`
--

CREATE TABLE `zipcode` (
  `zipcode` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zipcode`
--

INSERT INTO `zipcode` (`zipcode`, `city_id`) VALUES
(28262, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `zip_code` (`zip_code`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`dish_name`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `table_no` (`table_no`),
  ADD KEY `guest_id` (`guest_id`);

--
-- Indexes for table `restaurant_table`
--
ALTER TABLE `restaurant_table`
  ADD PRIMARY KEY (`table_no`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `zipcode`
--
ALTER TABLE `zipcode`
  ADD PRIMARY KEY (`zipcode`),
  ADD KEY `city_id` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`zip_code`) REFERENCES `zipcode` (`zipcode`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`type`) REFERENCES `employee_type` (`type`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`table_no`) REFERENCES `restaurant_table` (`table_no`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`);

--
-- Constraints for table `zipcode`
--
ALTER TABLE `zipcode`
  ADD CONSTRAINT `zipcode_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
