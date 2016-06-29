-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 09, 2016 at 04:42 am
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `photo` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `description`, `price`, `photo`, `type_id`) VALUES
(1, 'Foofighters - Greatest Hits', 'Greatest Hits is a greatest hits album released by American rock band the Foo Fighters on November 3, 2009.', 20, 'bla.jpg', 1),
(2, 'Rage Against the Machine - Rage Against the Machine', 'Rage Against the Machine is an American rock band from Los Angeles, California. Formed in 1991, the group consists of rapper and vocalist Zack de la Rocha, bassist and backing vocalist Tim Commerford, guitarist Tom Morello, and drummer Brad Wilk.', 18, 'bla.jpg', 1),
(3, 'Psy - Chiljip Psy-da', 'Park Jae-sang, better known by his stage name Psy, stylized PSY, is a South Korean singer, songwriter, record producer and rapper.', 25, 'bla.jpg', 2),
(4, 'Skepta - Konnichiwa', 'Joseph Junior Adenuga, better known by his stage name Skepta, is an English MC, rapper, grime artist, songwriter and record producer of Nigerian descent. He is the brother of fellow musician Jme, and radio presenter Julie Adenuga.', 25, 'bla.jpg', 3),
(5, 'Fat Freddy''s Drop - Based On A True Story', 'Based on a True Story was the first studio produced album by New Zealand group Fat Freddy''s Drop. It was recorded in Wellington and released on the band''s own label, The Drop.', 26, 'bla.jpg', 4),
(6, 'Nas - Illmatic', 'Illmatic is the debut studio album by American rapper Nas, released on April 19, 1994, by Columbia Records.', 18, 'bla.jpg', 3),
(7, 'Akdong Musician - Play', 'Akdong Musician is a South Korean duo debuted under YG Entertainment, consisting of siblings Lee Chanhyuk and Lee Suhyun. They won the second installment of the K-pop Star series.', 22, 'bla.jpg', 2),
(8, 'Green Day - American Idiot', 'Green Day is an American punk rock band formed in 1986 by vocalist/guitarist Billie Joe Armstrong and bassist Mike Dirnt. ', 17, 'bla.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
`id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `type_description` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `type_name`, `type_description`) VALUES
(1, 'Rock', 'Rock albums'),
(2, 'K-pop', 'Korean pop music'),
(3, 'Hip-hop/ R''n''B', 'Hip-hop / Rhythm and blues music'),
(4, 'Reggae', 'Reggae and dub music');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `delivery_date`, `status`, `customer_id`) VALUES
(1, '2016-01-12', '2016-01-16', 'Being processed', 1),
(2, '2016-02-12', '2016-02-15', 'Pending', 2),
(3, '2016-03-15', '2016-03-18', 'Pending', 2),
(4, '2016-03-15', '2016-03-18', 'Being processed', 3),
(5, '2016-03-17', '2016-03-20', 'Being processed', 4),
(6, '2016-04-15', '2016-04-17', 'Being processed', 6);

-- --------------------------------------------------------

--
-- Table structure for table `order_album`
--

CREATE TABLE IF NOT EXISTS `order_album` (
`id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `order_album`
--

INSERT INTO `order_album` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 2, 1),
(4, 2, 3, 1),
(5, 2, 4, 1),
(6, 3, 3, 1),
(7, 3, 4, 1),
(8, 3, 7, 2),
(9, 4, 1, 2),
(10, 4, 5, 1),
(11, 4, 6, 1),
(12, 4, 7, 1),
(13, 5, 5, 3),
(14, 6, 2, 1),
(15, 6, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(300) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `admin` varchar(3) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `address`, `telephone`, `email`, `admin`) VALUES
(1, 'mary.smith', '1', 'Mary', 'Smith', '234 Great South Road', '123454544', 'mary.smith@gmail.com', 'no'),
(2, 'peter.pan', '1', 'Peter', 'Pan', '12 Neveland', '3433323', 'peter.pan@gmail.com', 'no'),
(3, 'john.willis', '1', 'John', 'Willis', '543 Queen Street', '4439483', 'john.willis@gmail.com', 'no'),
(4, 'oscar.dillingworth', '1', 'Oscar', 'Dillingworth', '563 Epsom', '58483904', 'ocsar.dillingworth@gmail.com', 'no'),
(5, 'charles.jones', '1', 'Charles', 'Jones', '45 Northcote', '434566534', 'charles.jones@gmail.com', 'no'),
(6, 'mario.sutherland', '1', 'Mario', 'Sutherland', '143 Hart Street', '454454334', 'mario.sutherland@gmail.com', 'no'),
(7, 'admin', 'admin', 'admin', 'admin', 'admin', '', '', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
 ADD PRIMARY KEY (`id`), ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_album`
--
ALTER TABLE `order_album`
 ADD PRIMARY KEY (`id`), ADD KEY `order_id` (`order_id`,`product_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `order_album`
--
ALTER TABLE `order_album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `genres` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_album`
--
ALTER TABLE `order_album`
ADD CONSTRAINT `order_album_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
ADD CONSTRAINT `order_album_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `albums` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
