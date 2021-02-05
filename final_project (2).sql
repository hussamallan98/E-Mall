-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 07:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(5) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_image`) VALUES
(16, 'hussamallan98@gmail.com', 'allanhussam', 'hussam allan', 'me.jpg'),
(20, 'ahmad@gmail.com', '1234', 'ahmad mustafa ', 'Ahmad Mustafa.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(3) NOT NULL,
  `cat_name` text NOT NULL,
  `cat_desc` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_desc`, `cat_image`) VALUES
(10, 'Mobile', 'Mobile', 'images (4).jpg'),
(11, 'Men', 'Men', 'download (4).jpg'),
(12, 'Computer', 'Computer', 'images (10).jpg'),
(13, 'Women', 'Women', 'adam-winger-Xt4g9VbMljE-unsplash.jpg'),
(14, 'Accessories', 'Accessories', 's-o-c-i-a-l-c-u-t-aXJdmnxauwY-unsplash.jpg'),
(15, 'Perfumes', 'Perfumes', 'joice-kelly-45An7hKX510-unsplash.jpg.crdownload');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(3) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_password` varchar(50) NOT NULL,
  `cust_mobile` int(15) NOT NULL,
  `cust_address` varchar(50) NOT NULL,
  `cust_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `cust_password`, `cust_mobile`, `cust_address`, `cust_image`) VALUES
(7, 'hussam allan', 'hussam98@gmail.com', 'allanhussam', 795676636, 'amman zarqa', 'me.jpg'),
(10, 'ahmad', 'ahmad@gmail.com', '1234', 775768343, 'amman', 'Ahmad Mustafa.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `cust_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `cust_id`) VALUES
(43, '2021-02-04', 10),
(44, '2021-02-05', 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(3) NOT NULL,
  `order_id` int(3) NOT NULL,
  `pro_name` text NOT NULL,
  `pro_image` text NOT NULL,
  `qty` int(3) NOT NULL,
  `total` int(5) NOT NULL,
  `v_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `pro_name`, `pro_image`, `qty`, `total`, `v_id`) VALUES
(81, 43, 'iphone 12 pro max', 'images (1).jpg', 1, 340, 7),
(82, 44, 'iphone 12 pro max', 'images (1).jpg', 3, 1020, 7),
(83, 44, 'iphone x', 'images (4).jpg', 2, 840, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(3) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_price` int(10) NOT NULL,
  `pro_image` text NOT NULL,
  `cat_id` int(4) NOT NULL,
  `v_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_desc`, `pro_price`, `pro_image`, `cat_id`, `v_id`) VALUES
(18, 'Adidas shoes b-32', 'white shoes made by adidas', 65, 's1.jpg', 11, 6),
(20, 'Adidas T-shirt', 'Stylish Adidas T-shirt', 25, 't1.jpg', 11, 6),
(22, 'turkish jeans', 'turkish jeans size 30 to42', 15, 'j1.jpg', 11, 8),
(24, 'Suite', 'formal Suite', 150, 'su1.jpg', 11, 8),
(26, 'iphone 12 pro max', 'iphone 12 pro max new silver 256 Giga', 350, 'images (1).jpg', 10, 7),
(28, 'Samsung note 20', 'Samsung note 20 128G diamond', 500, 'download.jpg', 10, 9),
(30, 'PC', 'PC with RAM 32G Cor i9 10th Generation', 2500, 'download (10).jpg', 12, 9),
(31, 'Laptop Mac  ', 'Laptop Mac  white', 900, 'images (2).jpg', 12, 7),
(34, 'turkish jeans', 'blue turkiesh jeans', 25, 'laura-chouette-yTSyjvG-FAY-unsplash.jpg', 13, 8),
(35, 'Adidas Jacket', 'white women Adidas jacket ', 60, 'laura-chouette-KCBy2qFWBF0-unsplash.jpg', 13, 6),
(36, 'Bag', 'black Sport Bag', 22, 'b1.jpg', 14, 6),
(40, 'brown glass', 'brown sun glasses', 45, 'download (2).jpg', 14, 10),
(41, 'Perfume', 'french Perfumes', 85, 'p1.jpg', 15, 10),
(44, 'iphone XR', 'iphone xr 128 giga', 420, 'download (11).jpg', 10, 7),
(45, 'iphone x', 'iphone x 64 giga', 420, 'images (4).jpg', 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `v_id` int(3) NOT NULL,
  `v_name` text NOT NULL,
  `v_email` text NOT NULL,
  `v_password` text NOT NULL,
  `v_mobile` text NOT NULL,
  `v_address` text NOT NULL,
  `v_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`v_id`, `v_name`, `v_email`, `v_password`, `v_mobile`, `v_address`, `v_image`) VALUES
(6, 'Adidas', 'adidas@gmail.com', '1234', '0777888888', 'Amman', 'Adidas-logo.jpg'),
(7, 'Apple', 'apple@gmail.com', '1234', '0788888807', 'zarqa', 'mac-apple-logo-screen-icon.png'),
(8, 'Zara', 'zara@gmail.com', '1234', '078888888', 'Aqapa', 'download.png'),
(9, 'samsung', 'samsung@gmail.com', '1234', '0799999999', 'amman', 'download (9).jpg'),
(10, 'jamaly', 'jamaly@gmail.com', '1234', '0781292605', 'Amman', 'jamaly.jpg'),
(11, 'Bath & Body', 'bath@gmail.com', '1234', '078456123', 'amman', 'bath.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `v_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
