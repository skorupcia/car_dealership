-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2024 at 04:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `make` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `make`, `model`, `year`, `color`, `price`) VALUES
(1, 'Toyota', 'Corolla', 2017, 'White', '15000'),
(2, 'Honda', 'Civic', 2018, 'Silver', '16000'),
(3, 'Ford', 'Mustang', 2020, 'Red', '30000'),
(4, 'Chevrolet', 'Camaro', 2019, 'Black', '28000'),
(5, 'BMW', '3 Series', 2021, 'Blue', '35000'),
(6, 'Mercedes-Benz', 'E-Class', 2019, 'Gray', '40000'),
(7, 'Audi', 'A3', 2020, 'Black', '32000'),
(8, 'Tesla', 'Model 3', 2022, 'White', '45000'),
(9, 'Hyundai', 'Elantra', 2021, 'Red', '18000'),
(10, 'Nissan', 'Maxima', 2018, 'Blue', '25000'),
(11, 'Subaru', 'Forester', 2019, 'Green', '22000'),
(12, 'Lexus', 'IS', 2020, 'Silver', '38000'),
(13, 'Mazda', 'Mazda3', 2017, 'Red', '17000'),
(14, 'Jeep', 'Grand Cherokee', 2018, 'White', '27000'),
(15, 'Volkswagen', 'Passat', 2021, 'Black', '29000'),
(16, 'Ram', '2500', 2020, 'Blue', '42000'),
(17, 'Kia', 'Optima', 2019, 'Silver', '19000'),
(18, 'GMC', 'Yukon', 2018, 'Gray', '55000'),
(19, 'Volvo', 'S60', 2021, 'Red', '36000'),
(20, 'Acura', 'TLX', 2022, 'Black', '33000'),
(21, 'Buick', 'Enclave', 2017, 'White', '26000'),
(22, 'Infiniti', 'QX60', 2018, 'Blue', '34000'),
(23, 'Jaguar', 'XE', 2020, 'Silver', '40000'),
(24, 'Land Rover', 'Discovery', 2021, 'Black', '58000'),
(25, 'Porsche', '911', 2019, 'Red', '90000'),
(26, 'Chrysler', 'Pacifica', 2017, 'Gray', '28000'),
(27, 'Dodge', 'Durango', 2018, 'Black', '33000'),
(28, 'Lincoln', 'MKZ', 2020, 'Blue', '35000'),
(29, 'Cadillac', 'XT5', 2021, 'White', '42000'),
(30, 'Maserati', 'Quattroporte', 2019, 'Red', '85000'),
(31, 'Ferrari', '812 Superfast', 2020, 'Yellow', '350000'),
(32, 'McLaren', '570S', 2018, 'Orange', '180000'),
(33, 'Bentley', 'Bentayga', 2019, 'Green', '250000'),
(34, 'Rolls-Royce', 'Cullinan', 2020, 'Blue', '325000'),
(35, 'Aston Martin', 'Vantage', 2021, 'Silver', '200000'),
(36, 'Lamborghini', 'Aventador', 2018, 'White', '400000'),
(37, 'Bugatti', 'Veyron', 2017, 'Black', '1500000'),
(38, 'Koenigsegg', 'Jesko', 2022, 'Silver', '2800000'),
(39, 'Pagani', 'Zonda', 2023, 'Gold', '4000000'),
(40, 'Lotus', 'Exige', 2021, 'Yellow', '85000'),
(41, 'Toyota', 'Rav4', 2022, 'Blue', '28000'),
(42, 'Honda', 'CR-V', 2023, 'Red', '32000'),
(43, 'Ford', 'Escape', 2021, 'Black', '30000'),
(44, 'Chevrolet', 'Equinox', 2020, 'Silver', '27000'),
(45, 'BMW', '5 Series', 2022, 'White', '45000'),
(46, 'Mercedes-Benz', 'GLC', 2021, 'Gray', '42000'),
(47, 'Audi', 'Q5', 2022, 'Black', '46000'),
(48, 'Tesla', 'Model Y', 2023, 'Blue', '50000'),
(49, 'Hyundai', 'Tucson', 2021, 'Green', '26000'),
(50, 'Nissan', 'Rogue', 2020, 'Red', '28000'),
(51, 'Subaru', 'Crosstrek', 2022, 'Orange', '25000'),
(52, 'Lexus', 'UX', 2023, 'Silver', '38000'),
(53, 'Mazda', 'CX-30', 2021, 'Blue', '24000'),
(54, 'Jeep', 'Renegade', 2020, 'Yellow', '22000'),
(55, 'Volkswagen', 'Tiguan', 2022, 'Green', '30000'),
(56, 'Ram', '1500 Classic', 2021, 'Black', '35000'),
(57, 'Kia', 'Sportage', 2020, 'Gray', '25000'),
(58, 'GMC', 'Terrain', 2021, 'Silver', '32000'),
(59, 'Volvo', 'V60', 2023, 'White', '40000'),
(60, 'Acura', 'RDX', 2022, 'Red', '38000'),
(61, 'Buick', 'Envision', 2020, 'Blue', '28000'),
(62, 'Infiniti', 'QX50', 2021, 'Black', '36000'),
(63, 'Jaguar', 'F-Type', 2023, 'Green', '70000'),
(64, 'Land Rover', 'Range Rover Sport', 2022, 'Gray', '90000'),
(65, 'Porsche', 'Panamera', 2020, 'White', '85000'),
(66, 'Chrysler', 'Voyager', 2021, 'Silver', '32000'),
(67, 'Dodge', 'Challenger', 2022, 'Orange', '38000'),
(68, 'Lincoln', 'Nautilus', 2020, 'Red', '42000'),
(69, 'Cadillac', 'CT5', 2023, 'Black', '46000'),
(70, 'Maserati', 'Levante', 2021, 'Blue', '65000'),
(71, 'Ferrari', 'SF90 Stradale', 2022, 'Red', '600000'),
(72, 'McLaren', 'Artura', 2023, 'Silver', '300000'),
(73, 'Bentley', 'Flying Spur', 2022, 'White', '250000'),
(74, 'Rolls-Royce', 'Dawn', 2023, 'Black', '400000'),
(75, 'Aston Martin', 'DBS Superleggera', 2021, 'Blue', '350000'),
(76, 'Lamborghini', 'Urus', 2022, 'Yellow', '350000'),
(77, 'Bugatti', 'Centodieci', 2022, 'Black', '10000000'),
(78, 'Koenigsegg', 'Gemera', 2021, 'Green', '3000000'),
(79, 'Pagani', 'Huayra BC', 2022, 'Purple', '3500000'),
(80, 'Lotus', 'Elise', 2023, 'Pink', '60000'),
(81, 'Toyota', 'Land Cruiser', 2023, 'Silver', '85000'),
(82, 'Honda', 'Odyssey', 2022, 'Gray', '36000'),
(83, 'Ford', 'Explorer', 2021, 'Black', '42000'),
(84, 'Chevrolet', 'Traverse', 2020, 'Blue', '38000'),
(85, 'BMW', 'X7', 2022, 'White', '70000'),
(86, 'Mercedes-Benz', 'GLE', 2021, 'Red', '65000'),
(87, 'Audi', 'Q7', 2022, 'Black', '55000'),
(88, 'Tesla', 'Model X', 2023, 'Blue', '80000'),
(89, 'Hyundai', 'Palisade', 2021, 'Green', '40000'),
(90, 'BMW', '3 Series', 2022, 'Black', '45000'),
(91, 'BMW', '5 Series', 2023, 'White', '55000'),
(92, 'BMW', 'X3', 2022, 'Blue', '48000'),
(93, 'BMW', 'X5', 2023, 'Silver', '65000'),
(94, 'BMW', 'X1', 2022, 'Gray', '38000'),
(95, 'BMW', '4 Series', 2022, 'Red', '49000'),
(96, 'BMW', '7 Series', 2023, 'Black', '80000'),
(97, 'BMW', 'X7', 2022, 'White', '85000'),
(98, 'BMW', '2 Series', 2023, 'Blue', '36000'),
(99, 'BMW', 'i3', 2022, 'Silver', '42000'),
(100, 'BMW', 'M4', 2022, 'Gray', '72000'),
(101, 'BMW', 'X6', 2023, 'Red', '70000'),
(102, 'BMW', '8 Series', 2022, 'Black', '95000'),
(103, 'BMW', 'X4', 2022, 'White', '54000'),
(104, 'BMW', 'i8', 2023, 'Blue', '160000'),
(105, 'BMW', 'M5', 2022, 'Silver', '105000'),
(106, 'BMW', 'X2', 2022, 'Gray', '35000'),
(107, 'BMW', 'M3', 2023, 'Red', '65000'),
(108, 'BMW', 'Z4', 2022, 'Black', '63000'),
(109, 'BMW', 'X6 M', 2022, 'White', '120000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
