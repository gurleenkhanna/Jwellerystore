-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2018 at 08:41 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asheeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE IF NOT EXISTS `contact_us` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(50000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`name`, `email`, `subject`, `message`) VALUES
('sfsfsf', 'fdsdsfsfds@eee', 'dsfdsfdfdfs', 'sfsdsfddf'),
('Rat', 'fdsdsfsfds@eee', 'dddd', 'bdkjagfkagwlefu');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `username` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  UNIQUE KEY `mnumber` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`username`, `email`, `phone`, `password`) VALUES
('Saumya', 'saumyakushwaha26@gmail.com', '1234567890', '1234'),
('Deepankar', 'deepankarchor@attendance.lelo', '420420420', '1234567890'),
('sagar', 'chaurasiasagar01@gmail.com', '7687267889', '123456789'),
('deepankar sahu', 'deepankar.advisior@gmail.com', '8115721127', 'dany5368'),
('Ratnesh', 'ratnesh@gmail.com', '8354034248', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` int(5) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(15) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `brand` varchar(10) NOT NULL DEFAULT 'asHeeta',
  `colour` text NOT NULL,
  `base_material` text NOT NULL,
  `collection` int(1) NOT NULL,
  `plating` text NOT NULL,
  `size` varchar(10) NOT NULL,
  `price` int(5) NOT NULL,
  `type` text NOT NULL,
  `description` text NOT NULL,
  `img1` varchar(100) DEFAULT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100003 ;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_code`, `product_name`, `brand`, `colour`, `base_material`, `collection`, `plating`, `size`, `price`, `type`, `description`, `img1`, `img2`, `img3`, `thumbnail`) VALUES
(1, '2000ADNK1201', 'American Diamond Silver Platted Necklace Set for Women', 'asHeeta', 'Silver', 'Alloy', 4, 'Silver Platted', 'Free Size', 450, 'Necklace', 'American Diamond Silver Platted Necklace Set for Women , which of Free Size .', 'images/Jewellery-Pics/american-diamond/AD-necklace/2000ADNK1201/img (1).jpg', 'images/Jewellery-Pics/american-diamond/AD-necklace/2000ADNK1201/img (2).jpg', 'images/Jewellery-Pics/american-diamond/AD-necklace/2000ADNK1201/img (3).jpg', 'images/Jewellery-Pics/american-diamond/AD-necklace/2000ADNK1201/thumbnail.jpg'),
(2, '2000GLDKNK1000', 'Kundan Multicolor Necklace Set with Earings', 'asHeeta', 'Multi', 'Alloy', 3, 'Gold platted', 'Free Size', 440, 'Necklace', 'Kundan Multicolor Necklace Set with Earings. Free size.', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDANK1000/img (1).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDANK1000/img (2).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDANK1000/img (3).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDANK1000/thumbnail.jpg'),
(3, '2000GLDKNK1001', 'Kundan Stone Studded Gold Plated Necklace Set with Earrings', 'asHeeta', 'Gold', 'Alloy', 3, 'Gold Plated', 'Free Size', 260, 'Necklace', 'Kundan Stone Studded Gold Plated Necklace Set with Earrings for Women', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDKNK1001/img (1).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDKNK1001/img (2).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDKNK1001/img (3).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDKNK1001/thumbnail.jpg'),
(4, '2000ADNK1200', 'American Diamond Studded With Kundan Gold Plated Necklace Set', 'asHeeta', 'Gold', 'Alloy', 4, 'Gold Plated', 'Free Size', 190, 'Necklace', 'American Diamond Studded With Kundan Gold Plated Necklace Set For Women', 'images/Jewellery-Pics/american-diamond/AD-necklace/2000ADNK1200/img (1).jpg', 'images/Jewellery-Pics/american-diamond/AD-necklace/2000ADNK1200/img (2).jpg', 'images/Jewellery-Pics/american-diamond/AD-necklace/2000ADNK1200/img (3).jpg', 'images/Jewellery-Pics/american-diamond/AD-necklace/2000ADNK1200/thumbnail.jpg'),
(5, '2000GLDNK1202', 'Square Shape Kundan Studded Necklace Set', 'asHeeta', 'Gold', 'Alloy', 3, 'Gold Plated', 'Free Size', 315, 'Necklace', 'Square Shape Kundan Studded Necklace Set for Women', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1202/img (1).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1202/img (2).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1202/img (3).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1202/thumbnail.jpg'),
(6, '2000GLDNK1203', 'Gold Plated Ginni Necklace Set For Women', 'asHeeta', 'Gold', 'Alloy', 3, 'Gold Plated', 'Free Size', 325, 'Necklace', 'Gold Plated Ginni Necklace Set For Women', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1203/img (1).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1203/img (2).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1203/img (3).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1203/thumbnail.jpg'),
(7, '2000GLDNK1204', 'Red, White Stone & Pearl Studded Elegant Choker Necklace Set', 'asHeeta', 'Gold', 'Copper', 3, 'Gold Plated', 'Free Size', 375, 'Necklace', 'Red, White Stone & Pearl Studded Elegant Choker Necklace Set For Women', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1204/img (1).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1204/img (2).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1204/img (3).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1204/thumbnail.jpg'),
(8, '2000GLDNK1205', 'White Pearl String Pendant Gold Plated Necklace Set', 'asHeeta', 'Gold ', 'Alloy', 3, 'Gold Plated', 'Free Size', 192, 'Necklace', 'White Pearl String Pendant Gold Plated Necklace Set For Women', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1205/img (1).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1205/img (2).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1205/img (3).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1205/thumbnail.jpg'),
(9, '2000GLDNK1206', 'Elegant Gold Plated Three Layer Ball Chain Necklace Set For Women', 'asHeeta', 'Gold', 'Alloy', 3, 'Gold Plated', 'Free Size', 250, 'Necklace', 'Elegant Gold Plated Three Layer Ball Chain Necklace Set For Women', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1206/img (1).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1206/img (2).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1206/img (3).jpg', 'images/Jewellery-Pics/Wedding Jewellery/Necklace/2000GLDNK1206/thumbnail.jpg'),
(11, '2000CNK3001', 'Beautiful White and Gold Color Necklace For Women', 'asHeeta', 'White and Gold ', 'Alloy', 1, 'Gold', 'Free Size', 80, 'Necklace', 'Beautiful White and Gold Color Necklace For Women', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3001/img (1).jpg', NULL, NULL, 'images/Jewellery-Pics/Casual/Necklace/2000CNK3001/thumbnail.jpg'),
(12, '2000CNK3002', 'Beautiful Brown Stone Necklace for Women', 'asHeeta', 'Brown', 'Stone ', 1, 'Brown', 'Free Size', 240, 'Necklace', 'Beautiful Brown Stone Necklace for Women', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3002/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3002/img (2).jpg', NULL, 'images/Jewellery-Pics/Casual/Necklace/2000CNK3002/thumbnail.jpg'),
(13, '2000CNK3003', 'Red Color Beads Necklace for Women', 'asHeeta', 'Red', 'Beads ', 1, 'Beads', 'Free Size', 110, 'Necklace', 'Red Color Beads Necklace for Women', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3003/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3003/img (2).jpg', NULL, 'images/Jewellery-Pics/Casual/Necklace/2000CNK3003/thumbnail.jpg'),
(14, '2000CNK3006', 'Black and Gold Color Necklace for Women', 'asHeeta', 'Black and Gold', 'Alloy', 1, 'Gold', 'Free Size', 130, 'Necklace', 'Black and Gold Color Necklace for Women', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3006/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3006/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3006/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3006/thumbnail.jpg'),
(15, '2000CNK3008', 'Gold Metal Chain Necklace Set With Black and White Metal Statement', 'asHeeta', 'Black and White', 'Alloy', 1, 'Gold', 'Free Size', 120, 'Necklace', 'Gold Metal Chain Necklace Set With Black and White Metal Statement', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3008/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3008/img (2).jpg', NULL, 'images/Jewellery-Pics/Casual/Necklace/2000CNK3008/thumbnail.jpg'),
(16, '2000TNK3001', 'Gold Plated Austrial Stone Yellow Thread Necklace Set', 'asHeeta', 'Yellow', 'Zince Alloy', 1, 'Thread', 'Free Size', 100, 'Necklace', 'Gold Plated Austrial Stone Yellow Thread Necklace Set', 'images/Jewellery-Pics/Casual/Necklace/2000TNK3001/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000TNK3001/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000TNK3001/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000TNK3001/thumbnail.jpg'),
(17, '2000TNK3002', 'Gold Plated Austrian Stone Green Thread Necklace Set', 'asHeeta', 'Green', 'Zinc Alloy', 1, 'Thread', 'Free Size', 100, 'Necklace', 'Gold Plated Austrian Stone Green Thread Necklace Set', 'images/Jewellery-Pics/Casual/Necklace/2000TNK3002/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000TNK3002/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000TNK3002/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/2000TNK3002/thumbnail.jpg'),
(18, '2000CNK3005', 'Designer Multi Color Gold Plated Necklace', 'asHeeta', 'Multi', 'Alloy', 1, 'Gold', 'Free Size', 140, 'Necklace', 'Designer Multi Color Gold Plated Necklace', 'images/Jewellery-Pics/Casual/Necklace/2000CNK3005/img (1).jpg', NULL, NULL, 'images/Jewellery-Pics/Casual/Necklace/2000CNK3005/thumbnail.jpg'),
(19, 'CER3001', 'American Diamond Studded Pandant With Earrings', 'asHeeta', 'Silver,Gold', 'Alloy', 4, 'Gold Plated', 'Free Size', 150, 'Earrings', 'American Diamond Studded Pandant With Earrings', 'images/Jewellery-Pics/Casual/Earrings/CER3001/img (1).jpg', 'images/Jewellery-Pics/Casual/Earrings/CER3001/img (2).jpg', NULL, 'images/Jewellery-Pics/Casual/Earrings/CER3001/thumbnail.jpg'),
(20, 'CER3002', 'American Diamon Studded Gold Plated Earrings', 'asHeeta', 'White Dark Pink', 'Alloy', 4, 'Gold', 'Free Size', 80, 'Earrings', 'American Diamon Studded Gold Plated Earrings', 'images/Jewellery-Pics/Casual/Earrings/CER3002/img (1).jpg', NULL, NULL, 'images/Jewellery-Pics/Casual/Earrings/CER3002/thumbnail.jpg'),
(21, 'CER3003', 'American Diamond Studded Gold Plated Leaf Size Earrings', 'asHeeta', 'Gold', 'Alloy', 4, 'Gold', 'Free Size', 85, 'Earrings', 'American Diamon Studded Gold Plated Earrings', 'images/Jewellery-Pics/Casual/Earrings/CER3003/img (1).jpg', 'images/Jewellery-Pics/Casual/Earrings/CER3003/img (2).jpg', NULL, 'images/Jewellery-Pics/Casual/Earrings/CER3003/thumbnail.jpg'),
(22, 'ER3001', 'White Oxidised Silver Plated Earrings For Women and Girls', 'asHeeta', 'Silver', 'Alloy', 1, 'Oxidised Silver', 'Free Size', 80, 'Earrings', 'American Diamon Studded Gold Plated Earrings', 'images/Jewellery-Pics/Casual/Earrings/ER3001/img (1).jpg', NULL, NULL, 'images/Jewellery-Pics/Casual/Earrings/ER3001/thumbnail.jpg'),
(23, 'ER3004', 'Oxidised Gold Plated Earrings For Women and Girls', 'asHeeta', 'Gold', 'Alloy', 1, 'Oxidised Gold', 'Free Size', 150, 'Earrings', 'American Diamon Studded Gold Plated Earrings', 'images/Jewellery-Pics/Casual/Earrings/ER3004/img (1).jpg', NULL, NULL, 'images/Jewellery-Pics/Casual/Earrings/ER3004/thumbnail.jpg'),
(24, '3000BDS1004', 'Gold Plated Chain Necklace Set White pearl and Black Beads', 'asHeeta', 'White & Black', 'Alloy', 1, 'Gold', 'Free Size', 170, 'Necklace', 'Gold Plated Chain Necklace Set White pearl and Black Beads For Women', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1004/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1004/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1004/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1004/thumbnail.jpg'),
(25, '3000BDS1005', 'Pink White Beads Crystal Necklace Set With Pendant ', 'asHeeta', 'White & Pink', 'Crystal', 1, 'Gold', 'Free Size', 150, 'Necklace', 'Pink White Beads Crystal Necklace Set With Pendant For Women', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1005/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1005/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1005/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1005/thumbnail.jpg'),
(26, '3000BDS1006', 'Blue White Beads Crystal Necklace Set with Pendant for Women', 'asHeeta', 'White and Blue', 'Crystal', 1, 'Gold', 'Free Size', 150, 'Necklace', 'Blue White Beads Crystal Necklace Set with Pendant for Women', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1006/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1006/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1006/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1006/thumbnail.jpg'),
(27, '3000BDS1007', 'Sky Blue White Beads Crystal Necklace set with pendant', 'asHeeta', 'Sky Blue, White', 'Crystal', 1, 'Gold', 'Free Size', 150, 'Necklace', 'Sky Blue White Beads Crystal Necklace set with pendant for Women', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1007/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1007/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1007/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1007/thumbnail.jpg'),
(28, '3000BDS1008', 'Orange White Beads Crystal Necklace set With Pendant ', 'asHeeta', 'Orange & White', 'Crystal ', 1, 'Gold', 'Free Size', 150, 'Necklace', 'Orange White Beads Crystal Necklace set with pendant for Women', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1008/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1008/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1008/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1008/thumbnail.jpg'),
(29, '3000BDS1009', 'Dark Maroon color Necklace With Multiline Pearl', 'asHeeta', 'Maroon, White, Gold', 'Mother of Pearl', 1, 'Gold', 'Free Size', 80, 'Necklace', 'Dark Maroon color Necklace with Multiline Pearl Necklace for Women', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1009/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1009/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1009/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1009/thumbnail.jpg'),
(30, '3000BDS1010', 'Black Color Necklace With Multiline Pearl', 'asHeeta', 'Black, White, Gold', 'Mother of Pearl', 1, 'Gold', 'Free Size', 80, 'Necklace', 'Black color Necklace with Multiline Pearl for Women and Girls', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1010/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1010/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1010/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1010/thumbnail.jpg'),
(31, '3000BDS1011', 'Multi Layer Dark Maroon Real Onyx Stone Beads Necklace', 'asHeeta', 'Maroon & White ', 'Crystal ', 1, 'Gold', 'Free Size', 80, 'Necklace', 'Multi Layer Dark Maroon Real Onyx Stone Beads Necklace For Women and Girls', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1011/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1011/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1011/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1011/thumbnail.jpg'),
(32, '3000BDS1012', 'Multi Layer Pearl Necklace With White And Pink Beads', 'asHeeta', 'White & Pink', 'Mother of Pearl ', 1, 'Gold', 'Free Size', 100, 'Necklace', 'Multi layer pearl necklace with a Great combination of white and pink beads', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1012/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1012/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1012/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1012/thumbnail.jpg'),
(33, '3000BDS1013', 'White Pearl and Green Beads Leaf Necklace Set', 'asHeeta', 'Green, White , Gold', 'Crystal ', 1, 'Gold', 'Free Size', 180, 'Necklace', 'White pearl and green beads leaf necklace set for women and girls', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1013/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1013/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1013/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1013/thumbnail.jpg'),
(34, '3000BDS1014', 'Gold Plated Pendant Set Beaded With Pearls and Precious Beads', 'asHeeta', 'White & Gold ', 'Alloy', 1, 'Gold', 'Free Size', 110, 'Necklace', 'Gold plated pendant set beaded with synthetic pearls and semi precious beads', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1014/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1014/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1014/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1014/thumbnail.jpg'),
(35, '3000BDS1015', 'Multi Layer Pearl and Beads Necklace With Gold Plated Pendant', 'asHeeta', 'White & Gold ', 'Alloy', 1, 'Gold', 'Free Size', 300, 'Necklace', 'Multi layer pearl and white colour beads necklace with gold plated pendant', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1015/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1015/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1015/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1015/thumbnail.jpg'),
(36, '3000BDS1016', '3 Strings Gold Plated Necklace Set with Multi color Stone Pendant', 'asHeeta', 'Red, White, Green', 'Crystal ', 1, 'Gold', 'Free Size', 90, 'Necklace', 'Three strings gold plated necklace set with multi color stone studded pendant', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1016/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1016/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1016/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1016/thumbnail.jpg'),
(37, '3000BDS1017', 'Red White Green color Beads Necklace set', 'asHeeta', 'White, Red, Green', 'Pearl ', 1, 'Gold', 'Free Size', 90, 'Necklace', 'Red white green color beads necklace set for women', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1017/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1017/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1017/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1018/thumbnail.jpg'),
(38, '3000BDS1018', 'White Color Pearl Necklace set For Women', 'asHeeta', 'White', 'Pearl', 1, 'Gold', 'Free Size', 90, 'Necklace', 'White color pearl necklace set for women', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1018/img (1).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1018/img (2).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1018/img (3).jpg', 'images/Jewellery-Pics/Casual/Necklace/3000BDS1018/thumbnail.jpg'),
(39, '4000BER1001', 'Designer Red Beads Gold Plated Chand Bali Earrings Tikka Set', 'asHeeta', 'Red, White, Gold', 'Copper', 1, 'Gold', 'Free Size', 140, 'Earrings', 'Designer red beads gold plated chand bali earrings tikka set', 'images/Jewellery-Pics/Casual/Earrings/4000BER1001/img (1).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1001/img (2).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1001/img (3).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1001/thumbnail.jpg'),
(40, '4000BER1002', 'White Pearl Red And Green Stone Studded Earrings', 'asHeeta', 'White, Red, Green', 'Alloy', 1, 'Gold', 'Free Size', 260, 'Earrings', 'White pearl red and green stione studded earrings', 'images/Jewellery-Pics/Casual/Earrings/4000BER1002/img (1).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1002/img (2).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1002/img (3).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1002/thumbnail.jpg'),
(41, '4000BER1003', 'Designer Green Beads Gold Plated Chand Bali Earrings Tikka Set', 'asHeeta', 'Green, White, Gold', 'Copper', 1, 'Gold', 'Free Size', 140, 'Earrings', 'Designer green beads gold plated chand bali earrings tikka set', 'images/Jewellery-Pics/Casual/Earrings/4000BER1003/img (1).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1003/img (2).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1003/img (3).jpg', 'images/Jewellery-Pics/Casual/Earrings/4000BER1003/thumbnail.jpg'),
(42, '200CBN01', 'Red & Multi Color Silk Thread Bangle Set', 'asHeeta', 'Red', 'Silk Thread', 1, 'Silk Thread ', 'Free Size', 60, 'Bangle', 'Red and multi color silk thread bangle set for women', 'images/Jewellery-Pics/Casual/Bangles/200CBN01/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN01/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN01/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN01/thumbnail.jpg'),
(43, '200CBN02', 'White & Multi Color Silk Thread Bangle Set', 'asHeeta', 'White', 'Silk Thread', 1, 'Silk Thread ', 'Free Size', 60, 'Bangle', 'White and multi color silk thread bangle set for women', 'images/Jewellery-Pics/Casual/Bangles/200CBN02/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN02/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN02/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN02/thumbnail.jpg'),
(44, '200CBN03', 'Multi Color Silk Thread Plastic Bangle Set For Women', 'asHeeta', 'Multi Color ', 'Silk Thread', 1, 'Silk Thread ', 'Free Size', 50, 'Bangle', 'Multi color silk thread plastic bangel set for women', 'images/Jewellery-Pics/Casual/Bangles/200CBN03/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN03/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN03/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN03/thumbnail.jpg'),
(45, '200CBN04', 'Gold Plated Rich Pearl And Stones Studded Designer', 'asHeeta', 'White & Green', 'Copper', 1, 'Gold ', '2.6 & 2.8', 90, 'Bangle', 'Gold plated rich pearl and stones studded designer bangles', 'images/Jewellery-Pics/Casual/Bangles/200CBN04/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN04/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN04/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN04/thumbnail.jpg'),
(46, '200CBN05', 'Traditional Ethnic Pearl Engraved Gold Plated Designer Bangle', 'asHeeta', '', 'Gold Plated', 1, 'Gold Plated ', '2.8', 90, 'Bangle', 'Traditional ethinic pearl engraved gold plated designer bangle', 'images/Jewellery-Pics/Casual/Bangles/200CBN05/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN05/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN05/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN05/thumbnail.jpg'),
(47, '200CBN06', 'Beautiful Designer Silk Thread Bangle For Women', 'asHeeta', '', 'Glass & Fabric', 1, 'Silk Thread ', 'Free Size', 80, 'Bangle', 'Beautiful designer silk thread Bangle', 'images/Jewellery-Pics/Casual/Bangles/200CBN06/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN06/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN06/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN06/thumbnail.jpg'),
(48, '200CBN07', 'Yellow Silk Thread Bangle With Gold Plated', 'asHeeta', 'Yellow & Orange', 'Fabric\r\n\r\n\r\n', 1, 'Silk Thread', 'Free Size', 60, 'Bangle', 'Yellow silk thread bangle with gold plated', 'images/Jewellery-Pics/Casual/Bangles/200CBN07/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN07/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN07/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN07/thumbnail.jpg'),
(49, '200CBN08', 'Designer Silk Thread Bangles Sky Blue and Gold Color', 'asHeeta', 'Sky Blue & Gold', 'Copper', 1, 'Silk Thread ', 'Free Size', 60, 'Bangle', 'Designer silk thread bangles sky blue and gold color', 'images/Jewellery-Pics/Casual/Bangles/200CBN08/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN08/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN08/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN08/thumbnail.jpg'),
(50, '200CBN09', 'Designer Silk Thread Bangles Sky Blue and Gold Color', 'asHeeta', 'Pink & Gold Color', 'Copper', 1, 'Silk Thread ', 'Free Size', 60, 'Bangle', 'Designer silk thread bangles pink and gold color', 'images/Jewellery-Pics/Casual/Bangles/200CBN09/img (1).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN09/img (2).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN09/img (3).jpg', 'images/Jewellery-Pics/Casual/Bangles/200CBN09/thumbnail.jpg'),
(100001, 'null', 'null', 'asHeeta', 'null', 'null', 100001, 'null', 'null', 100001, 'null', 'null', NULL, NULL, NULL, NULL),
(100002, 'null', 'null', 'asHeeta', 'null', 'null', 100001, 'null', 'null', 100001, 'null', 'null', NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
