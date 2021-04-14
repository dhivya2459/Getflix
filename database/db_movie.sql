-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 22, 2019 at 01:05 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

DROP TABLE IF EXISTS `tbl_bookings`;
CREATE TABLE IF NOT EXISTS `tbl_bookings` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(3, '', 4, 4, 3, 3, 200, 75, '2019-05-21', '2019-05-21', 1),
(4, '', 4, 4, 1, 3, 2, 150, '2019-05-22', '2019-05-22', 1),
(5, '', 3, 3, 6, 1, 200, 70, '2019-05-25', '2019-05-22', 1),
(6, '', 3, 3, 6, 1, 100, 70, '2019-05-22', '2019-05-22', 1),
(7, '', 3, 3, 5, 1, 1, 70, '2019-05-22', '2019-05-22', 1),
(19, 'BKID8192568', 3, 2, 19, 2, 1, 60, '2019-10-15', '2019-10-15', 1),
(20, 'BKID7387264', 4, 2, 1, 3, 1, 75, '2019-10-17', '2019-10-17', 1),
(24, 'BKID3181958', 4, 2, 1, 3, 200, 15000, '2019-10-22', '2019-10-22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'admin', 0),
(2, 3, 'vettri', 'password', 1),
(3, 4, 'vidya', 'password', 1),
(4, 5, 'sathyam', 'password', 1),
(5, 6, 'inox', 'password', 1),
(6, 7, 'luxe', 'password', 1),
(7, 8, 'national', 'password', 1),
(8, 9, 'pvr', 'password', 1),
(9, 10, 'kumaran', 'password', 1),
(10, 11, 'palazzo', 'password', 1),
(11, 1, 'a@gmail.com', 'l23', 2),
(12, 2, 'di@gmail.com', 'noname', 2),
(19, 4, 'dh@gmail.com', 'noname123', 2),
(20, 5, 'g@gmail.com', 'o23', 2),
(21, 6, 'k@gmail.com', 'kk23', 2),
(22, 11, 'vettri2', 'passord', 1),
(23, 12, 'go_t', 'kd23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

DROP TABLE IF EXISTS `tbl_movie`;
CREATE TABLE IF NOT EXISTS `tbl_movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(100) NOT NULL,
  `mov_date` date NOT NULL,
  `mov_lang` varchar(50) NOT NULL,
  `mov_ind` varchar(50) NOT NULL,
  `mov_dur` varchar(20) NOT NULL,
  `mov_dir` varchar(50) NOT NULL,
  `mov_pro` varchar(50) NOT NULL,
  `mov_mus` varchar(50) NOT NULL,
  `mov_cam` varchar(50) NOT NULL,
  `mov_edi` varchar(50) NOT NULL,
  `mov_bo` int(20) NOT NULL,
  `mov_bud` int(20) NOT NULL,
  `mov_des` varchar(1000) NOT NULL,
  `mov_genre` varchar(200) NOT NULL,
  `mov_actors` varchar(200) NOT NULL,
  `mov_images` varchar(200) NOT NULL,
  `mov_trailer` varchar(200) NOT NULL,
  `mov_online` varchar(200) NOT NULL,
  `mov_download` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active ',
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie`
--
-- insert your own movie db table the first one is an example 

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `mov_date`, `mov_lang`, `mov_ind`, `mov_dur`, `mov_dir`, `mov_pro`, `mov_mus`, `mov_cam`, `mov_edi`, `mov_bo`, `mov_bud`, `mov_des`, `mov_genre`, `mov_actors`, `mov_images`, `mov_trailer`, `mov_online`, `mov_download`, `status`) VALUES
(1, 3, 'The Shawshank Redemption', '1994-09-22', 'English', 'Hollywood', '02:22:00', 'Frank Darabont', 'Niki Marvin', 'Thomas Newman', 'Roger Deakins', 'Richard Francis-Bruce', 58300000, 22000000, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency', 'Drama,Mystery,Crime,Fiction', 'Tim Robbins,Morgan Freeman', 'images/1.jpg', '', '', 0)
/
-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

DROP TABLE IF EXISTS `tbl_news`;
CREATE TABLE IF NOT EXISTS `tbl_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(1, 'Gone with the Wind', 'Clarke Gable, Vivien Leigh', '1939-12-15', 'A manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods', 'images/h1.jpg'),
(2, 'Mouna Ragam', 'Mohan, Revathi', '1986-08-15', 'Divya, a woman grieving over the death of her lover, is convinced into an arranged marriage with Chandra Kumar. Over a year the couple attempt to adjust to each others presence and live with each othe', 'images/h2.jpg'),
(3, 'Sholay', 'Amitabh Bachchan, Dharmendra', '1975-10-15', 'After his family is murdered by a notorious and ruthless bandit, a former police officer enlists the services of two outlaws to capture the bandit', 'images/h3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

DROP TABLE IF EXISTS `tbl_registration`;
CREATE TABLE IF NOT EXISTS `tbl_registration` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--
-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

DROP TABLE IF EXISTS `tbl_screens`;
CREATE TABLE IF NOT EXISTS `tbl_screens` (
  `screen_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL,
  PRIMARY KEY (`screen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 70),
(2, 3, 'Screen 2', 150, 60),
(3, 3, 'Screen 3', 200, 75),
(4, 4, 'Screen 1', 34, 120),
(5, 4, 'Screen 2', 100, 150),
(6, 4, 'Screen 3', 100, 70),
(7, 5, 'Screen 1', 150, 60),
(8, 5, 'Screen 2', 200, 75),
(9, 5, 'Screen 3', 34, 120),
(10, 6, 'Screen 1', 100, 150),
(11, 6, 'Screen 2', 100, 70),
(12, 6, 'Screen 3', 150, 60),
(13, 7, 'Screen 1', 200, 75),
(14, 7, 'Screen 2', 34, 120),
(15, 7, 'Screen 3', 100, 150),
(16, 8, 'Screen 1', 100, 70),
(17, 8, 'Screen 2', 150, 60),
(18, 8, 'Screen 3', 200, 75),
(19, 9, 'Screen 1', 34, 120),
(20, 9, 'Screen 2', 100, 150),
(21, 9, 'Screen 3', 100, 70),
(22, 10, 'Screen 1', 150, 60),
(23, 10, 'Screen 2', 200, 75),
(24, 10, 'Screen 3', 34, 120),
(25, 11, 'Screen 1', 100, 150),
(26, 11, 'Screen 2', 100, 70),
(27, 11, 'Screen 3', 150, 60),
(28, 12, '1', 250, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

DROP TABLE IF EXISTS `tbl_shows`;
CREATE TABLE IF NOT EXISTS `tbl_shows` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(1, 9, 4, 1, '0000-00-00', 1, 1),
(2, 10, 4, 1, '2019-10-01', 0, 1),
(3, 11, 4, 2, '2019-10-01', 1, 1),
(4, 12, 4, 2, '2019-10-01', 1, 1),
(5, 1, 3, 1, '2019-10-01', 1, 1),
(6, 2, 3, 1, '2019-10-01', 1, 1),
(7, 3, 3, 1, '2019-10-01', 1, 1),
(8, 4, 3, 1, '2019-10-01', 1, 1),
(9, 5, 3, 2, '2019-10-01', 1, 1),
(10, 6, 3, 2, '2019-10-01', 1, 1),
(11, 7, 3, 2, '2019-10-01', 1, 1),
(12, 8, 3, 2, '2019-10-01', 1, 1),
(13, 1, 3, 10, '2019-10-25', 1, 1),
(14, 2, 3, 10, '2019-10-25', 1, 0),
(15, 9, 4, 8, '2019-10-28', 1, 0),
(16, 10, 4, 8, '2019-10-28', 1, 0),
(17, 11, 4, 8, '2019-10-28', 1, 0),
(18, 12, 4, 8, '2019-10-28', 1, 1),
(19, 7, 3, 70, '2019-10-15', 1, 1),
(20, 2, 3, 15, '2019-11-10', 1, 0),
(21, 3, 3, 14, '2000-10-15', 0, 1),
(22, 2, 3, 13, '2019-10-12', 0, 1),
(23, 3, 3, 12, '2000-02-23', 0, 1),
(24, 91, 12, 4, '2000-02-12', 1, 0),
(25, 3, 3, 57, '2000-02-23', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

DROP TABLE IF EXISTS `tbl_show_time`;
CREATE TABLE IF NOT EXISTS `tbl_show_time` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00'),
(15, 4, 'First', '09:35:00'),
(16, 4, 'Second', '21:00:00'),
(17, 5, 'Noon', '10:00:00'),
(18, 5, 'Matinee', '14:00:00'),
(19, 5, 'First', '18:00:00'),
(20, 5, 'Second', '21:00:00'),
(21, 6, 'Noon', '10:00:00'),
(22, 6, 'Matinee', '14:00:00'),
(23, 6, 'First', '18:00:00'),
(24, 6, 'Second', '21:00:00'),
(25, 7, 'Noon', '10:00:00'),
(26, 7, 'Matinee', '14:00:00'),
(27, 7, 'First', '18:00:00'),
(28, 7, 'Second', '21:00:00'),
(29, 8, 'Noon', '10:00:00'),
(30, 8, 'Matinee', '14:00:00'),
(31, 8, 'First', '18:00:00'),
(32, 8, 'Second', '21:00:00'),
(33, 9, 'Noon', '10:00:00'),
(34, 9, 'Matinee', '14:00:00'),
(35, 9, 'First', '18:00:00'),
(36, 9, 'Second', '21:00:00'),
(37, 10, 'Noon', '12:03:00'),
(38, 10, 'First', '09:35:00'),
(39, 11, 'Second', '21:00:00'),
(40, 12, 'Noon', '10:00:00'),
(41, 12, 'Matinee', '14:00:00'),
(42, 12, 'First', '18:00:00'),
(43, 12, 'Second', '21:00:00'),
(44, 13, 'Noon', '10:00:00'),
(45, 13, 'Matinee', '14:00:00'),
(46, 13, 'First', '18:00:00'),
(47, 13, 'Second', '21:00:00'),
(48, 14, 'Noon', '10:00:00'),
(49, 14, 'Matinee', '14:00:00'),
(50, 14, 'First', '18:00:00'),
(51, 15, 'Second', '21:00:00'),
(52, 15, 'Noon', '10:00:00'),
(53, 15, 'Matinee', '14:00:00'),
(54, 16, 'First', '18:00:00'),
(55, 16, 'Second', '21:00:00'),
(56, 16, 'Noon', '10:00:00'),
(57, 17, 'Matinee', '14:00:00'),
(58, 17, 'First', '18:00:00'),
(59, 17, 'Second', '21:00:00'),
(60, 18, 'Noon', '12:03:00'),
(61, 18, 'First', '09:35:00'),
(62, 18, 'Second', '21:00:00'),
(63, 19, 'Noon', '10:00:00'),
(64, 19, 'Matinee', '14:00:00'),
(65, 20, 'First', '18:00:00'),
(66, 20, 'Second', '21:00:00'),
(67, 20, 'Noon', '10:00:00'),
(68, 21, 'Matinee', '14:00:00'),
(69, 21, 'First', '18:00:00'),
(70, 21, 'Second', '21:00:00'),
(71, 22, 'Noon', '10:00:00'),
(72, 22, 'Matinee', '14:00:00'),
(73, 22, 'First', '18:00:00'),
(74, 23, 'Second', '21:00:00'),
(75, 23, 'Noon', '10:00:00'),
(76, 23, 'Matinee', '14:00:00'),
(77, 24, 'First', '18:00:00'),
(78, 24, 'Second', '21:00:00'),
(79, 24, 'Noon', '10:00:00'),
(80, 25, 'Matinee', '14:00:00'),
(81, 25, 'First', '18:00:00'),
(82, 25, 'Second', '21:00:00'),
(84, 26, 'Noon', '12:03:00'),
(85, 26, 'First', '09:35:00'),
(86, 26, 'Second', '21:00:00'),
(87, 27, 'Noon', '10:00:00'),
(88, 27, 'Matinee', '14:00:00'),
(89, 27, 'First', '18:00:00'),
(90, 28, 'Second', '21:00:00'),
(91, 28, 'Noon', '10:00:00'),
(92, 28, 'Matinee', '14:00:00'),
(93, 29, 'First', '18:00:00'),
(94, 29, 'Second', '21:00:00'),
(95, 28, 'Noon', '12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

DROP TABLE IF EXISTS `tbl_theatre`;
CREATE TABLE IF NOT EXISTS `tbl_theatre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(3, 'Vettri Theatres', 'Chromepet', 'Chennai', 'Tamilnadu', 600044),
(4, 'Vidya Theatres', 'Tambaram', 'Chennai', 'Tamilnadu', 600045),
(5, 'Sathyam Theatres', 'Royapettah', 'Chennai', 'Tamilnadu', 600014),
(6, 'Inox Theatres', 'Mandaveli', 'Chennai', 'Tamilnadu', 600004),
(7, 'Luxe Cinemas', 'Velachery', 'Chennai', 'Tamilnadu', 600042),
(8, 'National Theatres', 'Tambaram', 'Chennai', 'Tamilnadu', 600045),
(9, 'PVR Cinemas', 'Velachery', 'Chennai', 'Tamilnadu', 600042),
(10, 'Kumaran Theatres', 'Madipakkam', 'Chennai', 'Tamilnadu', 600091),
(11, 'vettri', 'no address', 'no pllace', 'no state', 600061),
(12, 'GTheatre', 'Chromepet Chennai', 'Chennai', 'TN', 600044);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
