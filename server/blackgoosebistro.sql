-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2017 at 03:47 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blackgoosebistro`
--

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE IF NOT EXISTS `foods` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`ID`, `name`, `description`, `category`, `price`, `img`) VALUES
(1, 'Black bean purses', 'Spicy black bean and a blend of mexican cheeses wrapped in sheets of phyllo and baked until golden', 'APPETIZERS', 3.95, '1.jpg'),
(2, 'Southwestern napoleons with lump crab — new item!', 'Layers of light lump crab meat, bean and corn salsa, and our handmade flour tortillas.', 'APPETIZERS', 7.95, '2.jpg'),
(3, 'Jerk rotisserie chicken with fried plantains — new', 'Tender chicken slow-roasted on the rotisserie, flavored with spicy and fragrant jerk sauce and served with fried plantains and fresh mango. Very spicy. ', 'MAIN COURSES', 12.95, '3.jpg'),
(4, 'Shrimp sate kebabs with peanut sauce', 'Skewers of shrimp marinated in lemongrass, garlic, and fish sauce then grilled to perfection. Served with spicy peanut sauce and jasmine rice. ', 'MAIN COURSES', 12.95, '4.jpg'),
(5, 'Grilled skirt steak with mushroom fricasee', 'Flavorful skirt steak marinated in asian flavors grilled as you like it*. Served over a blend of sauteed wild mushrooms with a side of blue cheese mashed potatoes.', 'MAIN COURSES', 16.95, '5.jpg'),
(6, 'Cream toast', 'Simple cream sauce over highest quality toasted bread, baked daily.', 'TRADITIONAL TOASTS', 3.95, '6.jpg'),
(7, 'Mushroom toast', 'Layers of light lump crab meat, bean and corn salsa, and our handmade flour tortillas. ', 'TRADITIONAL TOASTS', 6.95, '7.jpg'),
(8, 'Nun''s toast', 'Onions and hard-boiled eggs in a cream sauce over buttered hot toast.', 'TRADITIONAL TOASTS', 6.95, '8.jpg'),
(9, 'Apple toast', 'Sweet, cinnamon stewed apples over delicious buttery grilled bread.', 'TRADITIONAL TOASTS', 6.95, '9.jpg'),
(10, 'Lemon chiffon cake — new item!', 'Light and citrus flavored sponge cake with buttercream frosting as light as a cloud.', 'DESSERT SELECTION', 2.95, '10.jpg'),
(11, 'Molten chocolate cake', 'Bubba''s special dark chocolate cake with a warm, molten center. Served with or without a splash of almond liqueur.', 'DESSERT SELECTION', 3.95, '11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `card` varchar(100) NOT NULL,
  `totalPrice` float NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `email`, `card`, `totalPrice`, `details`) VALUES
(13, 'a@a.com', 'fadfadfsaff', 3.95, '[{"ID":"1","name":"Black bean purses","price":"3.95","count":1,"totalPrice":3.95}]'),
(14, 'a@a.com', '378282246310005', 3.95, '[{"ID":"1","name":"Black bean purses","price":"3.95","count":1,"totalPrice":3.95}]'),
(15, 'a@a.com', '378282246310005', 3.95, '[{"ID":"1","name":"Black bean purses","price":"3.95","count":1,"totalPrice":3.95}]'),
(16, 'a@a.com', '378282246310005', 3.95, '[{"ID":"1","name":"Black bean purses","price":"3.95","count":1,"totalPrice":3.95}]'),
(17, 'a@a.com', '378282246310005', 15.85, '[{"ID":"1","name":"Black bean purses","price":"3.95","count":2,"totalPrice":7.9},{"ID":"2","name":"Southwestern napoleons with lump crab u0097 new item!","price":"7.95","count":1,"totalPrice":7.95}]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'randy', 'what@what.com', '0dc8732a8ba6b3b578c1e891a9eb6aa3'),
(2, 'randy', 'a@a.com', '098f6bcd4621d373cade4e832627b4f6');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
