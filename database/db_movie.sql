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

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `mov_date`, `mov_lang`, `mov_ind`, `mov_dur`, `mov_dir`, `mov_pro`, `mov_mus`, `mov_cam`, `mov_edi`, `mov_bo`, `mov_bud`, `mov_des`, `mov_genre`, `mov_actors`, `mov_images`, `mov_trailer`, `mov_online`, `mov_download`, `status`) VALUES
(1, 3, 'The Shawshank Redemption', '1994-09-22', 'English', 'Hollywood', '02:22:00', 'Frank Darabont', 'Niki Marvin', 'Thomas Newman', 'Roger Deakins', 'Richard Francis-Bruce', 58300000, 22000000, 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency', 'Drama,Mystery,Crime,Fiction', 'Tim Robbins,Morgan Freeman', 'images/1.jpg', 'https://www.youtube.com/watch?v=NmzuHjWmXOc', 'https://ww2.123movies.domains/movie/the-shawshank-redemption/FmXDM0wH/BaaTLAWf', 'https://www.1377x.to/torrent/306665/The-Shawshank-Redemption-1994-720p-BrRip-x264-YIFY/', 0),
(2, 3, 'Forrest Gump', '1994-06-23', 'English', 'Hollywood', '02:32:00', 'Robert Zemeckis', 'Wendy Finerman', 'Alan Silvestri', 'Don Burgess', 'Arthur Schmidt', 678100000, 55000000, 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75', 'Drama,Comedy', 'Tom Hanks,Robin Wright', 'images/2.jpg', 'https://www.youtube.com/watch?v=bLvqoHBptjg', 'https://ww2.123movies.domains/movie/forrest-gump/8mD5HgKx/VqBx6eZ6', 'https://www.1377x.to/torrent/1340934/Forrest-Gump-1994-720p-BrRip-x264-YIFY/', 0),
(3, 3, 'Schindlers List', '1993-09-30', 'English', 'Hollywood', '03:25:00', 'Steven Spielberg', 'Steven Spielberg', 'John Williams', 'Janusz Kaminski', 'Michael Kahne', 322100000, 22000000, 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis', 'Drama', 'Liam Neeson,Ben Kingley', 'images/3.jpg', 'https://www.youtube.com/watch?v=M5FpB6qDGAE', 'https://ww2.123movies.domains/movie/schindlers-list/8pA9EoSZ/xkjt4RNj', 'https://www.1377x.to/torrent/690742/Schindlers-List-1993-720p-BrRip-x264-Dual-Audio-Hindi-English-Lokioddin-PimpRG/', 0),
(4, 3, 'The Godfather', '1972-03-15', 'English', 'Hollywood', '02:57:00', 'Francis Ford Coppola', 'Albert S. Ruddy', 'Nino Rota', 'Gordon Willis', 'William Reynolds & Peter Zinner', 286000000, 6500000, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son', 'Drama,Crime', 'Marlon Brando,Al Pacino,', 'images/4.jpg', 'https://www.youtube.com/watch?v=sY1S34973zA', 'https://ww2.123movies.domains/movie/the-godfather/gvun23zP/2U2yq2kv', 'https://www.1377x.to/torrent/489894/The-Godfather-1972-1080p-BrRip-x264-YIFY/', 0),
(5, 3, 'The Green Mile', '1999-12-10', 'English', 'Hollywood', '03:09:00', 'Frank Darabonta', 'Frank Darabont', 'Thomas Newman', 'David Tattersall', 'Richard Francis-Bruce\r\n', 290700000, 60000000, 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift', 'Drama,Fantasy', 'Tom Hanks,Michael Clarke Duncan', 'images/5.jpg', 'https://www.youtube.com/watch?v=Ki4haFrqSrw', 'https://ww2.123movies.domains/movie/the-green-mile/01pPLmOz/PCyTI4SC', 'https://www.1377x.to/torrent/1340818/The-Green-Mile-1999-720p-BrRip-x264-YIFY/', 0),
(6, 4, 'Hotel Rwanda', '2004-09-11', 'English', 'Hollywood', '02:01:00', 'Terry George', 'Terry George', 'Rupert Gregson-Williams & Andrea Guerra', 'Robert Fraisse', 'Naomi Geraghty', 33900000, 17500000, 'Paul Rusesabagina was a hotel manager who housed over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda', 'Drama,Historical', 'Don Cheadle,Joaquin Phoenix', 'images/6.jpg', 'https://www.youtube.com/watch?v=qZzfxL90100', 'https://ww2.123movies.domains/movie/hotel-rwanda/7iLTU6G5/FG6iA3or', 'https://www.1377x.to/torrent/424273/Hotel-Rwanda-2004-720p-BrRip-x264-YIFY/', 0),
(7, 4, 'Goodfellas', '1990-09-09', 'English', 'Hollywood', '02:25:00', 'Martin Scorsese', 'Irwin Winkler', 'Gino Paoli', 'Michael Ballhaus', 'Thelma Schoonmaker', 33900000, 17500000, 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate', 'Drama,Crime', 'Robert De Niro,ray Liotta', 'images/7.jpg', 'https://www.youtube.com/watch?v=qo5jJpHtI1Y', 'https://ww2.123movies.domains/movie/goodfellas/Jlc41BYc/Ly8BZ49h', 'https://www.1377x.to/torrent/2951261/Goodfellas-1990-BluRay-1080p-YTS-YIFY/', 0),
(8, 4, 'Saving Private Ryan', '1998-07-24', 'English', 'Hollywood', '02:49:00', 'Steven Spielberg', 'Ian Bryce', 'John Williams', 'Janusz Kaminski', 'Michael Kahn', 482300000, 70000000, 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action', 'Drama,Action', 'Tom Hanks,Matt Damon', 'images/8.jpg', 'https://www.youtube.com/watch?v=zwhP5b4tD6g', 'https://ww2.123movies.domains/movie/saving-private-ryan/C4W8HFLm/2u5ce5Ty', 'https://www.1377x.to/torrent/353652/Saving-Private-Ryan-1998-720p-BrRip-x264-YIFY/', 0),
(9, 4, 'The Departed', '2006-09-26', 'English', 'Hollywood', '02:31:00', 'Martin Scorsese', 'Brad Pitt', 'Howard Shore', 'Michael Ballhaus', 'Thelma Schoonmaker', 291500000, 90000000, 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston', 'Drama,Mystery', 'Leonardo DiCaprio,Jack Nicholson,Matt Damon', 'images/9.jpg', 'https://www.youtube.com/watch?v=iojhqm0JTW4', 'https://ww2.123movies.domains/movie/the-departed/BclEhKbM/F73rFZJz', 'https://www.1377x.to/torrent/302473/The-Departed-2006-720p-BrRip-x264-750MB-YIFY/', 0),
(10, 4, ' Memento', '2000-09-05', 'English', 'Hollywood', '01:53:00', 'Christopher Nolan', 'Suzanne Todd', 'David Julyan', 'Wally Pfister', 'Dody Dorn', 39700000, 9000000, 'A man with short-term memory loss attempts to track down the murderer of his wife', 'Drama,Crime', 'Guy Pearce,Carrie Anne Moss', 'images/10.jpg', 'https://www.youtube.com/watch?v=0vS0E9bBSL0', 'https://ww2.123movies.domains/movie/memento/wdPrRhui/oJWFMUJy', 'https://www.1377x.to/torrent/370508/Memento-2000-720p-BrRip-x264-700MB-YIFY/', 0),
(11, 4, 'Reservoir Dogs', '1992-01-12', 'English', 'Hollywood', '01:39:00', 'Quentin Tarantino', 'Lawrence Bender', '-Uncertain-', 'Andrzej Sekula', 'Sally Menke', 2800000, 1500000, 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant', 'Drama,Mystery', 'Quentin Tarantino,Michael Madsen,Tim Roth', 'images/11.jpg', 'https://www.youtube.com/watch?v=vayksn4Y93A', 'https://ww2.123movies.domains/movie/reservoir-dogs/SmIayrIt/pHYYCbtD', 'https://www.1377x.to/search/reservoir%20dogs/1/', 0),
(12, 4, 'Pulp Fiction', '1994-05-21', 'English', 'Hollywood', '02:34:00', 'Quentin Tarantino', 'Lawrence Bender', '-Uncertain-', 'Andrzej Sekula', 'Sally Menke', 213900000, 8500000, 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption', 'Drama,Crime', 'John Travolta,Samuel L Jackson, Uma Thurman', 'images/12.jpg', 'https://www.youtube.com/watch?v=s7EdQ4FqbhY', 'https://ww2.123movies.domains/movie/pulp-fiction/C1UfbeGY/j5mwIT58', 'https://www.1377x.to/torrent/1335301/Pulp-Fiction-1994-720p-BrRip-x264-YIFY/', 0),
(13, 4, 'Kill Bill: Volume 1', '2003-10-10', 'English', 'Hollywood', '01:51:00', 'Quentin Tarantino', 'Lawrence Bender', 'The RZA', 'Robert Richardson', 'Sally Menke', 180900000, 30000000, 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her', 'Mystery,Crime', 'Uma Thurman,David Carradine', 'images/13.jpg', 'https://www.youtube.com/watch?v=7kSuas6mRpk', 'https://ww2.123movies.domains/movie/kill-bill-vol-1/o4daWXlP/05MrrJhe', 'https://www.1377x.to/torrent/3813015/Kill-Bill-Volume-1-2003-1080p-Bluray-10bit-x265-HazMatt-mkv/', 0),
(14, 4, 'Kill Bill: Volume 2', '2004-04-08', 'English', 'Hollywood', '02:16:00', 'Quentin Tarantino', 'Lawrence Bender', 'The RZA', 'Robert Richardson', 'Sally Menke', 152200000, 30000000, 'The Bride continues her quest of vengeance against her former boss and lover Bill, the reclusive bouncer Budd, and the treacherous, one-eyed Elle', 'Mystery,Crime', 'Uma Thurman,David Carradine', 'images/14.jpg', 'https://www.youtube.com/watch?v=WTt8cCIvGYI', 'https://ww2.123movies.domains/movie/kill-bill-vol-2/jW08w30h/5u3M2KZT', 'https://www.1377x.to/torrent/3813072/Kill-Bill-Volume-2-2004-1080p-Bluray-10bit-x265-HazMatt-mkv/', 0),
(15, 5, 'Death Proof', '2007-04-06', 'English', 'Hollywood', '01:53:00', 'Quentin Tarantino', 'Quentin Tarantino', '-Uncertain-', 'Quentin Tarantino', 'Sally Menke', 30700000, 30000000, 'Two separate sets of voluptuous women are stalked at different times by a scarred stuntman who uses his death proof cars to execute his murderous plans', 'Drama,Slasher', 'Kurt Russel,Zoe Bell', 'images/15.jpg', 'https://www.youtube.com/watch?v=m5VmaMY7T70', 'https://www.1377x.to/torrent/979154/Death-Proof-2007-1080p-BrRip-x264-YIFY/', 'https://ww2.123movies.domains/movie/death-proof/2oOQxAa2/UaQINiiy', 0),
(16, 5, 'Inglourious Basterds', '2009-05-20', 'English', 'Hollywood', '02:33:00', 'Quentin Tarantino', 'Lawrence Bender', 'Ennio Morricone', 'Robert Richardson', 'Sally Menke', 2800000, 1500000, 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with the owner of the theatre vengeful plans for the same', 'Drama,Action', 'Christoph Waltz,Brad Pitt', 'images/16.jpg', 'https://www.youtube.com/watch?v=KnrRy6kSFF0', 'https://ww2.123movies.domains/movie/inglourious-basterds/xPHlTYjZ/aBmhLbDh', 'https://www.1377x.to/torrent/1328412/Inglourious-Basterds-2009-1080p-BluRay-x264-AC3-ETRG/', 0),
(17, 5, 'Django Unchained', '2012-12-11', 'English', 'Hollywood', '02:45:00', 'Quentin Tarantino', 'Stacey Sher', 'Ennio Morricone', 'Robert Richardson', 'Fred Raskin', 425400000, 100000000, 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner', 'Drama,Blaxploitation', 'Jamie Foxx,Leonardo DiCaprio,Christoph Waltz', 'images/17.jpg', 'https://www.youtube.com/watch?v=eUdM9vrCbow', 'https://ww2.123movies.domains/movie/django-unchained/sGcO0AtT/mJ7qX3VR', 'https://www.1377x.to/torrent/506200/Django-Unchained-2012-1080p-BrRip-x264-YIFY/', 0),
(18, 5, 'The Hateful Eight', '2015-12-07', 'English', 'Hollywood', '03:07:00', 'Quentin Tarantino', 'Richard N. Gladstein', 'Ennio Morricone', 'Robert Richardson', 'Fred Raskin', 155800000, 54000000, 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters', 'Drama,Mystery', 'Samuel L Jackson,Kurt Russel,Jennifer Lason Leigh', 'images/18.jpg', 'https://www.youtube.com/watch?v=nIOmotayDMY', 'https://ww2.123movies.domains/movie/the-hateful-eight/w9XdiREn/fNqJqWMe', 'https://www.1377x.to/torrent/2098333/The-Hateful-Eight-2015-1080p-YTS-AG-YIFY/', 0),
(19, 5, 'Once Upon a Time in Hollywood', '2019-05-21', 'English', 'Hollywood', '02:41:00', 'Quentin Tarantino', 'David Heyman', '-Uncertain-', 'Robert Richardson', 'Fred Raskin', 284500000, 96000000, 'A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood Golden Age in 1969 Los Angeles', 'Drama,Thriller', 'Leonardo DiCaprio,Brad Pitt,Margot Robbie', 'images/19.jpg', 'https://www.youtube.com/watch?v=ELeMaP8EPAA', 'https://ww2.123movies.domains/movie/once-upon-a-time-in-hollywood/pitu6uEd/2uXhtnms', 'https://www.1377x.to/torrent/3958970/Once-Upon-a-Time-in-Hollywood-2019-HC-HDCam-XviD-B4ND1T69/', 0),
(20, 5, 'Taxi Driver', '1976-02-08', 'English', 'Hollywood', '02:53:00', 'Martin Scorsese', 'Julia Phillips', 'Bernard Herrmann', 'Michael Chapman', 'Marcia Lucas', 28300000, 1900000, 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute', 'Mystery,Crime', 'Robert De Niro,Jodi Foster', 'images/20.jpg', 'https://www.youtube.com/watch?v=sLpMx8_TYOo', 'https://ww2.123movies.domains/movie/taxi-driver/4Nn2qSTi/NgtGkjuN', 'https://www.1377x.to/torrent/1336146/Taxi-Driver-1976-720p-BrRip-x264-YIFY/', 0),
(21, 5, 'The Last Waltz', '1978-04-26', 'English', 'Hollywood', '02:56:00', 'Martin Scorsese', 'Robbie Robertson', 'The Band', 'Michael Chapman', 'Jan Roblee & Yeu-Bun Yee', 13100000, 1300000, 'A film account and presentation of the final concert of The Band', 'Music,Concert', 'Robbie Robertson,Neil Young', 'images/21.jpg', 'https://www.youtube.com/watch?v=M63DTQc6WPE', 'https://www.dailymotion.com/video/x5s5rka', 'https://www.1377x.to/torrent/153259/The-Last-Waltz-1978-DVDRip-big-dad-e/', 0),
(22, 5, 'Raging Bull', '1980-09-14', 'English', 'Hollywood', '02:09:00', 'Martin Scorsese', 'Irwin Winkler', 'The Band', 'Michael Chapman', 'Thelma Schoonmaker', 23400000, 1800000, 'The life of boxer Jake LaMotta, whose violence and temper that lead him to the top in the ring destroyed his life outside of it', 'Drama,Sport', 'Robert De Niro,Cathy Moriarty', 'images/22.jpg', 'https://www.youtube.com/watch?v=yUp6d79WRVI', 'https://ww2.123movies.domains/movie/raging-bull/aNNyLRQD/f50y85C9', 'https://www.1377x.to/torrent/550981/Raging-Bull-1980-1080p-BrRip-x264-YIFY/', 0),
(23, 5, 'The Last Temptation of Christ', '1988-08-12', 'English', 'Hollywood', '02:43:00', 'Martin Scorsese', 'Barbara De Fina', 'Peter Gabriel', 'Michael Ballhaus', 'Thelma Schoonmaker', 8900000, 7000000, 'The life of Jesus Christ, his journey through life as he faces the struggles all humans do, and his final temptation on the cross', 'Drama,Mythology', 'Willem Dafoe,Harvey Keitel', 'images/23.jpg', 'https://www.youtube.com/watch?v=qJKxg4p-Alk', 'https://ww2.123movies.domains/movie/the-last-temptation-of-christ/fSauuZT5/bYXJOyNB', 'https://www.1377x.to/torrent/3921865/The-Last-Temptation-of-Christ-1988-BluRay-720p-YTS-YIFY/', 0),
(24, 5, 'Cape Fear', '1991-11-13', 'English', 'Hollywood', '02:43:00', 'Martin Scorsese', 'Barbara De Fina', 'Bernard Herrmann', 'Freddie Francis', 'Thelma Schoonmaker', 182300000, 35000000, 'A convicted rapist, released from prison after serving a fourteen-year sentence, stalks the family of the lawyer who originally defended him', 'Thriller,Mystery', 'Robert De Niro,Gregory Pack', 'images/24.jpg', 'https://www.youtube.com/watch?v=jsXIpnMRu88', 'https://ww2.123movies.domains/movie/cape-fear/kpBTypp8/tpxxZTkH', 'https://www.1377x.to/torrent/3194040/Cape-Fear-1991-BluRay-1080p-YTS-YIFY/', 0),
(25, 5, 'Casino', '1995-11-12', 'English', 'Hollywood', '02:59:00', 'Martin Scorsese', 'Barbara De Fina', '-Uncertain-', 'Bernard Herrmann', 'Thelma Schoonmaker', 116100000, 50000000, 'A tale of greed, deception, money, power, and murder occur between two best friends: a mafia enforcer and a casino executive, compete against each other over a gambling empire, and over a fast living and fast loving socialite', 'Drama,Crime', 'Robert De Niro,Joe Pesci,Sharon Stone', 'images/25.jpg', 'https://www.youtube.com/watch?v=EJXDMwGWhoA', 'https://ww2.123movies.domains/movie/casino/ifb1195i/yTALXnrb', 'https://www.1377x.to/torrent/304113/Casino-1995-720p-BrRip-x264-1-1GB-YIFY/', 0),
(26, 5, 'Gangs of New York', '2002-12-20', 'English', 'Hollywood', '02:48:00', 'Martin Scorsese', 'Alberto Grimaldi', 'Howard Shore', 'Michael Ballhaus', 'Thelma Schoonmaker', 193100000, 100000000, 'In 1862, Amsterdam Vallon returns to the Five Points area of New York City seeking revenge against Bill the Butcher, the killer of his father', 'Drama,Crime', 'Leonardo DiCaprio,Daniel Day-Lewis,Cameron Diaz', 'images/26.jpg', 'https://www.youtube.com/watch?v=qHVUPri5tjA', 'https://ww2.123movies.domains/movie/gangs-of-new-york/WiACSt5J/7NIaZMfP', 'https://www.1377x.to/torrent/3929928/Gangs-of-New-York-2002-1080p-BluRay-x265-HEVC-10bit-AAC-5-1-afm72-QxR/', 0),
(27, 5, 'The Aviator', '2004-12-14', 'English', 'Hollywood', '02:50:00', 'Martin Scorsese', 'Michael Mann', 'Howard Shore', 'Robert Richardson', 'Thelma Schoonmaker', 213700000, 110000000, 'A biopic depicting the early years of legendary Director and aviator Howard Hughes career from the late 1920s to the mid 1940s', 'Drama', 'Leonardo DiCaprio,Cate Blanchett', 'images/27.jpg', 'https://www.youtube.com/watch?v=FebPJlmgldE', 'https://ww2.123movies.domains/movie/the-aviator/dZjC5PkG/zPPcPuAm', 'https://www.1377x.to/torrent/489883/The-Aviator-2004-720p-BrRip-x264-YIFY/', 0),
(28, 5, 'The Wolf of Wall Street', '2013-12-17', 'English', 'Hollywood', '03:00:00', 'Martin Scorsese', 'Martin Scorsese', '-Uncertain-', 'Rodrigo Prieto', 'Thelma Schoonmaker', 392000000, 100000000, 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'Drama,Comedy', 'Leonardo DiCaprio,Margot Robbie', 'images/28.jpg', 'https://www.youtube.com/watch?v=iszwuX1AK6A', 'https://ww2.123movies.domains/movie/the-wolf-of-wall-street/fJg53z0w/6nSSZUId', 'https://www.1377x.to/torrent/777305/The-Wolf-of-Wall-Street-2013-1080p-BrRip-x264-YIFY/', 0),
(29, 6, 'Shutter Island', '2010-02-13', 'English', 'Hollywood', '02:19:00', 'Martin Scorsese', 'Mike Medavoy', '-Uncertain-', 'Robert Richardson', 'Thelma Schoonmaker', 294800000, 80000000, 'In 1954, a U.S. Marshal investigates the disappearance of a murderer, who escaped from a hospital for the criminally insane', 'Mystery,Thriller', 'Leonardo DiCaprio,Mark Ruffalo,Ben Kingsley', 'images/29.jpg', 'https://www.youtube.com/watch?v=5iaYLCiq5RM', 'https://ww2.123movies.domains/movie/shutter-island/TDMU8cu9/LR6MTPH1', 'https://www.1377x.to/torrent/1336251/Shutter-Island-2010-720p-BrRip-x264-YIFY/', 0),
(30, 6, 'Silence', '2016-11-29', 'English', 'Hollywood', '02:41:00', 'Martin Scorsese', 'Barbara De Finae', 'Kim Allen Kluge & Kathryn Kluge', 'Rodrigo Prieto', 'Thelma Schoonmaker', 23700000, 40500000, 'In the 17th century, two Portuguese Jesuit priests travel to Japan in an attempt to locate their mentor, who is rumored to have committed apostasy, and to propagate Catholicism', 'Drama,Historical', 'Andrew Garfield,Adam Driver', 'images/30.jpg', 'https://www.youtube.com/watch?v=A0KUWzfugg4', 'https://ww2.123movies.domains/movie/silence/VJSOsuY0/dgnO9EV9', 'https://www.1377x.to/torrent/3701447/The-Silence-2019-WEBRip-1080p-YTS-YIFY/', 0),
(32, 6, 'Insomnia', '2002-05-03', 'English', 'Hollywood', '01:58:00', 'Christopher Nolan', 'Paul Junger Witt', 'David Julyan', 'Wally Pfister', 'Dody Dorn', 46000000, 113700000, 'Two Los Angeles homicide detectives are dispatched to a northern town where the sun doesnt set to investigate the methodical murder of a local teen', 'Drama,Mystery', 'Robin Williams,Al Pacino,Hilary Swank', 'images/32.jpg', 'https://www.youtube.com/watch?v=brHA3CF4_Mw', 'https://ww2.123movies.domains/movie/insomnia/tTaC5iHl/DbHkAG03', 'https://www.1377x.to/torrent/3954189/Insomnia-1997-BluRay-1080p-YTS-YIFY/', 0),
(33, 6, 'Inception', '2010-05-10', 'English', 'Hollywood', '02:28:00', 'Christopher Nolan', 'Emma Thomas', 'Hans Zimmer', 'Wally Pfister', 'Lee Smith', 160000000, 828300000, 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O', 'Sci-Fi,Thriller', 'Leonardo DiCaprio,Tom Hardy,Ellen Page,Cillian Murphy', 'images/33.jpg', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'https://ww2.123movies.domains/movie/inception/iDssrwpp/npDtNM1f', 'https://www.1377x.to/torrent/354767/Inception-2010-1080p-BrRip-x264-1-85GB-YIFY/', 0),
(34, 6, 'Intersetllar', '2014-10-26', 'English', 'Hollywood', '02:49:00', 'Christopher Nolan', 'Emma Thomas', 'Hans Zimmer', 'Hoyte van Hoytema', 'Lee Smith', 165000000, 677500000, 'A team of explorers travel through a wormhole in space in an attempt to ensure humanitys survival', 'Sci-Fi,Drama,Mystery', 'Matthew McConaughey,Anne Hathway,Michael Caine', 'images/34.jpg', 'https://www.youtube.com/watch?v=zSWdZVtXT7E', 'https://ww2.123movies.domains/movie/interstellar/jzbIX5JO/gK1OiSz6', 'https://www.1377x.to/torrent/1099151/Interstellar-2014-1080p-BrRip-x264-YIFY/', 0),
(35, 6, 'Dunkirk', '2017-07-13', 'English', 'Hollywood', '01:46:00', 'Christopher Nolan', 'Emma Thomas', 'Hans Zimmer', 'Hoyte van Hoytema', 'Lee Smith', 150000000, 526900000, 'Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army, and evacuated during a fierce battle in World War II', 'Drama,Historical,War', 'Harry Styles,Tom Hardy,Cillian Murphy', 'images/35.jpg', 'https://www.youtube.com/watch?v=F-eMt3SrfFU', 'https://ww2.123movies.domains/movie/dunkirk/pmnQTKkG/DvZieSdB', 'https://www.1377x.to/torrent/2641696/Dunkirk-2017-1080p-YTS-YIFY/', 0),
(36, 6, 'The Dark Knight', '2008-07-14', 'English', 'Hollywood', '02:32:00', 'Christopher Nolan', 'Emma Thomas', 'Hans Zimmer', 'Wally Pfister', 'Lee Smith', 185000000, 100500000, 'When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice', 'Drama,Thriller', 'Christian Bale,Heath Ledger,Gary Oldman', 'images/36.jpg', 'https://www.youtube.com/watch?v=EXeTwQWrcwY', 'https://ww2.123movies.domains/movie/batman-the-dark-knight/9dhQuDuT/KXP0OzQ7', 'https://www.1377x.to/torrent/283920/The-Dark-Knight-2008-1080p-BluRay-x264-1-7GB-YIFY/', 0),
(37, 6, '2001: A Space Odyssey', '1968-04-02', 'English', 'Hollywood', '02:22:00', 'Stanley Kubrick', 'Stanley Kubrick', 'Alex North', 'Geoffrey Unsworth', 'Ray Lovejoy', 10500000, 193000000, 'After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000', 'Fantasy,Sci-Fi', 'Keir Dullea,Gary Lockwood,Arthur C Clarke', 'images/37.jpg', 'https://www.youtube.com/watch?v=oR_e9y-bka0', 'https://ww2.123movies.domains/movie/2001-a-space-odyssey/OJAgW69s/dXYVGcb4', 'https://www.1377x.to/torrent/2976700/2001-A-Space-Odyssey-1968-BluRay-1080p-YTS-YIFY/', 0),
(38, 6, 'A Clockwork Orange', '1971-12-19', 'English', 'Hollywood', '02:16:00', 'Stanley Kubrick', 'Stanley Kubrick', 'Wendy Carlos', 'John Alcott', 'Bill Butler', 2200000, 26600000, 'In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesnt go as planned', 'Drama,Mystery', 'Malcom McDowell,Patrick Magee', 'images/38.jpg', 'https://www.youtube.com/watch?v=vN-1Mup0UI0', 'https://ww2.123movies.domains/movie/a-clockwork-orange/PulETyHd/iSVhqDrf', 'https://www.1377x.to/torrent/710798/A-Clockwork-Orange-1971-720p-BluRay-x264-AC3-Ozlem-Hotpena-1337x/', 0),
(39, 6, 'The Shining', '1980-05-23', 'English', 'Hollywood', '02:26:00', 'Stanley Kubrick', 'Stanley Kubrick', 'Wendy Carlos', 'John Alcott', 'Ray Lovejoy', 19000000, 44400000, 'A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future', 'Mystery,Psychological,Horror', 'Jack Nicholson,Shelley Duvall', 'images/39.jpg', 'https://www.youtube.com/watch?v=5Cb3ik6zP2I', 'https://ww2.123movies.domains/movie/the-shining/yl6EFA6a/MdPfxScQ', 'https://www.1377x.to/torrent/2967820/The-Shining-1980-BluRay-1080p-YTS-YIFY/', 0),
(40, 7, 'John Wick', '2014-09-19', 'English', 'Hollywood', '02:41:00', 'Chad Stahelski', 'Basil Iwanyk', 'Tyler Bates', 'Jonathan Sela', 'Elisabet Ronalds', 19000000, 44400000, 'An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him', 'Crime,Thriller', 'Keanu Reeves,Ian McShane', 'images/40.jpg', 'https://www.youtube.com/watch?v=2AUmvWm5ZDQ', 'https://ww2.123movies.domains/movie/john-wick/pmR6sxZ2/fClCFmsZ', 'https://www.1377x.to/torrent/3873487/John-Wick-3-2019-HDRip-XviD-AC3-EVO/', 0),
(41, 7, 'Nayakan', '1987-10-21', 'Tamil', 'Kollywood', '02:35:00', 'Mani Ratnam', 'Muktha Srinivasan', 'Ilaiyaraaja', 'P. C. Sreeram', 'B. Lenin', 1000000, 500000, 'A common mans struggles against a corrupt police force put him on the wrong side of the law. He becomes a don, who is loved and respected by many, but his growing power and influence exact a heavy toll', 'Drama,Crime', 'Kamal Hassan,Saranya Ponvannan', 'images/41.jpg', 'https://www.youtube.com/watch?v=XX25ea8PeFk', 'http://www.tamildbox.top/watch/Nayakan', 'http://tamilrockers.ws/index.php/topic/62030-nayakan-1987-tamil-720p-hdrip-x264-51-14gb-esubs/', 0),
(42, 7, 'Anbe Sivam', '2003-01-05', 'Tamil', 'Kollywood', '02:40:00', 'Sundar C', 'K.Muralitharan', 'Vidyasagar', 'Arthur A. Wilson', 'P. Sai Suresh', 3591640, 1691640, 'Two men, one young and arrogant, the other damaged - physically but not spiritually - by life, are thrown together by circumstances, and find that they are in some ways bound together by fate', 'Comedy,Music,Drama', 'Kamal Hassan,Madhavan', 'images/42.jpg', 'https://www.youtube.com/watch?v=qPRj4xwsBOQ', 'http://www.tamildbox.top/watch/Anbe-Sivam', 'http://tamilrockers.ws/index.php/topic/84938-anbe-sivam-2003-tamil-ayn-dvdrip-1cd-x264-aac-700mb-esubs/', 0),
(43, 7, 'Vikram Vedha', '2017-07-21', 'Tamil', 'Kollywood', '02:27:00', 'Pushkar & Gayathri', 'S. Sashikanth', 'Sam C. S.', 'P. S. Vinod', 'Richard Kevin', 8458200, 1550670, 'Vikram, a no-nonsense police officer, accompanied by Simon, his partner, is on the hunt to capture Vedha, a smuggler and a murderer. Vedha tries to change Vikrams life, which leads to a conflict', 'Drama,Mystery', 'Vijay Sethupathy,Madhavan,Shraddha Srinath', 'images/43.jpg', 'https://www.youtube.com/watch?v=1sVr-uWZPjE', 'http://www.tamildbox.top/watch/Vikram-Vedha', 'http://tamilrockers.ws/index.php/topic/66611-vikram-vedha-2017720p-hd-tamil-malayalam-x264-51-23gb-esubs/', 0),
(44, 7, 'Ratsasan', '2018-10-05', 'Tamil', 'Kollywood', '02:25:00', 'Ram Kumar', 'G. Dilli Babu', 'Ghibran', 'P. V. Shankar', 'San Lokesh', 2819400, 101940, 'Constant rejections in his attempts to become a filmmaker and family constraints force Arun to let go of his dream and take up the job of a Police officer', 'Drama,Crime', 'Vishnu Vishal,Amala Paul', 'images/44.jpg', 'https://www.youtube.com/watch?v=GsrN7rNch9Y', 'http://www.tamildbox.top/watch/Ratsasan', 'http://tamilrockers.ws/index.php/topic/87893-ratchasan-2018-tamil-original-motion-picture-soundtrack-flac-m4a-untouched-high-quality/', 0),
(45, 7, 'Thevar Magan', '1987-10-21', 'Tamil', 'Kollywood', '02:35:00', 'Bharathan', 'Kamal Haasan', 'Ilaiyaraaja', 'P. C. Sreeram', 'B. Lenin', 1000000, 500000, 'The urbane son of a village chieftain struggles between his personal aspirations and those of his family', 'Drama', 'Kamal Hassan,Sivaji Ganesan', 'images/45.jpg', 'https://www.youtube.com/watch?v=h8kfABvuJBk', 'http://www.tamildbox.top/watch/Thevar-Magan', 'http://tamilrockers.ws/index.php/topic/82124-thevar-magan-1992-tamil-hd-480p-aac-mp4-12-gb/', 0),
(46, 7, 'Pariyerum Perumal', '2018-09-27', 'Tamil', 'Kollywood', '02:34:00', 'Mari Selvaraj', 'Pa. Ranjith', 'Santhosh Narayanan', 'Sridhar', 'Selva RK', 13800000, 5250000, 'A law student from a lower caste begins a friendship with his classmate, a girl who belongs to a higher caste, and the men in her family start giving him trouble over this', 'Drama', 'Kathir,Anandhi', 'images/46.jpg', 'https://www.youtube.com/watch?v=GMNsUxJe4R4', 'http://tamilgun.be/video/pariyerum-perumal-hd/', 'http://tamilrockers.ws/index.php/topic/83189-pariyerum-perumal-2018tamil-proper-720p-hdrip-x265-hevc-ac3-51-900mb-esubs/', 0),
(47, 7, 'Thalapathi', '1991-11-05', 'Tamil', 'Kollywood', '02:55:00', 'Mani Ratnam', 'G. Venkateswaran', 'Ilaiyaraaja', 'Santosh Sivan', 'Suresh Urs', 1230000, 522000, 'An orphan named Surya raised in a slum befriends a good crime boss named Devaraj and works for him. Their existence is threatened when a new honest district collector arrives', 'Thriller,Drama', 'Rajinikanth,Mammooty', 'images/47.jpg', 'https://www.youtube.com/watch?v=pC5yWXqb8Ys', 'http://www.tamildbox.top/watch/Thalapathi', 'http://tamilrockers.ws/index.php/topic/10589-thalapathi-1991-download-tamil-movie-dvdrip-1cd-700mb-team-tr/', 0),
(48, 7, 'Aruvi', '2016-06-14', 'Tamil', 'Kollywood', '02:10:00', 'Arun Prabu Purushothaman', 'S. R. Prabhu', 'Bindhu Malini', 'Shelley Calist', 'Raymond Derrick Crasta', 100000000, 2500000, 'A gentle girl born and brought up amidst the ever growing eco-social-consumeristic environment finds it difficult to fit in the society. She decides to take it hard on the people. What she does is the rest of the story', 'Drama,Politics', 'Aditi Balan', 'images/48.jpg', 'https://www.youtube.com/watch?v=jgYYxs_d_bo', 'http://www.tamildbox.top/watch/Aruvi', 'http://tamilrockers.ws/index.php/topic/63387-aruvi-2017hdrip-x264-700mb-esubs-tamil/', 0),
(49, 7, 'Visaaranai', '2015-09-12', 'Tamil', 'Kollywood', '01:58:00', 'Vetrimaaran', 'Dhanush', 'G. V. Prakash Kumar', 'S. Ramalingam', 'Kishore Te', 1900000, 220000, 'Four labourers are tortured by the police to confess to a theft they have not committed', 'Drama,Crime', 'Dinesh,Anandhi', 'images/49.jpg', 'https://www.youtube.com/watch?v=4mnzK2KIz9U', 'http://tamilgun.be/video/visaranai-hd/', 'http://tamilrockers.ws/index.php/topic/36651-visaranai-2016720p-hd-avc-mp4-1gb-esubs-tamil/', 0),
(50, 8, 'Dhuruvangal Pathinaaru', '2016-11-29', 'Tamil', 'Kollywood', '01:45:00', 'Karthick Naren', 'Karthick Naren', 'Jakes Bejoy', 'Sujith Sarang', 'Sreejith Sarang', 1100000, 250000, 'A police officer retires after an accident during a case investigation. Years later, he is forced to relive the past as he narrates the story to his friends son', 'Mystery,Crime', 'Rahman', 'images/50.jpg', 'https://www.youtube.com/watch?v=xpt2jfiL5GY', 'http://tamilgun.be/video/dhuruvangal-pathinaaru/', 'http://tamilrockers.ws/index.php/topic/51128-dhuruvangal-pathinaaru-2016720p-v2-hd-51-avc-mp4-16gb-esubs-tamil/', 0),
(51, 8, 'Thuppakki', '2012-11-13', 'Tamil', 'Kollywood', '02:50:00', 'AR Murugadoss', 'S. Thanu', 'Harris Jayaraj', 'Santosh Sivan', 'A. Sreekar Prasad', 1626580, 9150700, 'An army captain is on a mission to track down and destroy a terrorist gang and deactivate the sleeper cells under its command', 'Thriller,Action', 'Vijay,Kajal Agarwal', 'images/51.jpg', 'https://www.youtube.com/watch?v=s0O44Sn1hD4', 'https://www.youtube.com/watch?v=JLMofAiJz2Q', 'http://tamilrockers.ws/index.php/topic/16433-thuppaki-2012-%e2%80%93-brrip-%e2%80%93-x264-%e2%80%93-720p-ac351chesubs/', 0),
(52, 8, 'Mersal', '2017-10-18', 'Tamil', 'Kollywood', '02:49:00', 'Atlee', 'Hema Rukmani', 'A. R. Rahman', 'G.K.Vishnu', 'Ruben', 36602800, 16893600, 'A magician and a doctor attempt to expose the corruption at the heart of Indias medical industry', 'Drama,Thriller', 'Vijay,Kajal Agarwal,Samantha Akkineni,Nithya Menon', 'images/52.jpg', 'https://www.youtube.com/watch?v=gQDo5QuZTaw', 'http://tamilgun.be/video/mersal-full-movie-online-hd/', 'http://tamilrockers.ws/index.php/topic/76598-mersal-2017-tamil-720p-true-hdrip-x264-dd-51-esub-2gb-maze/', 0),
(53, 8, 'Ghilli', '2004-04-17', 'Tamil', 'Kollywood', '02:40:00', 'Dharani', 'A. M. Rathnam', 'Vidyasagar', 'Gopinath', 'B. Lenin', 1626450, 1126240, 'Velu, an aspiring kabaddi player, goes to Madurai to participate in a regional match, where he rescues Dhanalakshmi from Muthupandi, a powerful man keen on marrying the girl against her wish', 'Sport,Action', 'Vijay,Trisha', 'images/53.jpg', 'https://www.youtube.com/watch?v=rc81o7b3jAA', 'https://www.youtube.com/watch?v=ZG8ukClchJQ', 'http://tamilrockers.ws/index.php/topic/42022-vijay-in-ghilli-full-movie-720p-480p-hd-user-request/page-5', 0),
(54, 8, 'Pudhupettai', '2006-05-26', 'Tamil', 'Kollywood', '02:40:00', 'Selvaraghavan', 'K Muralidharan', 'Yuvan Shankar Raja', 'Arvind Krishna', 'Kola Bhaskar', 520000, 350000, 'A high school kid joins a gang and becomes a drug dealer, then a politician', 'Drama,Crime', 'Dhanush,Sonia Agarwal,Sneha', 'images/54.jpg', 'https://www.youtube.com/watch?v=2RuxneprdiE', 'https://www.youtube.com/watch?v=GidG-OlwzrI', 'http://tamilrockers.ws/index.php/topic/94806-pudhupettai-2006tamil-proper-720p-hdrip-x264-dd-51-14gb-esubs/', 0),
(55, 9, 'Aayirathil Oruvan', '2010-01-14', 'Tamil', 'Kollywood', '03:01:00', 'Selvaraghavan', 'R. Ravindran', 'G. V. Prakash Kumar', 'Ramji', 'Kola Bhaskar', 5200000, 4223400, 'Chandramouli, a famous archaeologist, goes missing while on a research expedition. Anitha, a government officer, and Lavanya, Chandramoulis daughter, embark on an adventurous journey to find him', 'Fantasy,Sci-Fi', 'Karthi,Reemasen,Andrea Jeremiah', 'images/55.jpg', 'https://www.youtube.com/watch?v=HZWlRm8vLxc', 'http://www.tamildbox.top/watch/Aayirathil-Oruvan', 'http://tamilrockers.ws/index.php/topic/91175-aayirathil-oruvan-2010-tamil-proper-final-hq-true-hdrip-x264-250mb/', 0),
(56, 9, 'Mayakkam Enna', '2011-11-25', 'Tamil', 'Kollywood', '02:31:00', 'Selvaraghavan', 'Dineshkumar', 'G. V. Prakash Kumar', 'Ramji', 'Kola Bhaskar', 8700000, 5223400, 'Karthik and Yamini cant stand each other, but there lies the twist when opposites attract', 'Drama,Romance', 'Dhanush,Richa Gangopadhay', 'images/56.jpg', 'https://www.youtube.com/watch?v=ziKPQ1cFqEc', 'http://www.tamildbox.top/watch/Mayakkam-Enna', 'http://tamilrockers.ws/index.php/topic/54870-mayakkam-enna-2011-tamil-720p-hdrip-x264-aac-51-1gb/', 0),
(57, 9, '7G Rainbow Colony', '2004-10-15', 'Tamil', 'Kollywood', '02:55:00', 'Selvaraghavan', 'A. M. Rathnam', 'Yuvan Shankar Raja', 'Arvind Krishna', 'Kola Bhaskar', 490000, 250000, 'A neighborhood good-for-nothing attempts to romance the new girl in town', 'Drama', 'Ravi Krishna,Sonia Agarwal', 'images/57.jpg', 'https://www.youtube.com/watch?v=8STLj6FNHeQ', 'https://www.youtube.com/watch?v=CvRpmRSG-eM', 'http://tamilrockers.ws/index.php/topic/49543-7g-rainbow-colony-2004-1080p-dvdrip-x264-dts-esubs-chaps-team-cr/', 0),
(58, 9, 'Arjun Reddy', '2017-08-25', 'Telugu', 'Tollywood', '03:06:00', 'Sandeep Vanga', 'Pranay Reddy Vanga', 'Radhan', 'Raj Thota', 'Shashank Mali', 7217725, 721721, 'Arjun Reddy, a short tempered house surgeon gets used to drugs and drinks when his girlfriend is forced to marry another person', 'Drama,Action', 'Vijay Devarakonda,Shalini Pandey', 'images/58.jpg', 'https://www.youtube.com/watch?v=aozErj9NqeE', 'https://www19.123movierulz.live/watch-arjun-reddy-2017-full-movie-online-free-movierulz-5355.html', 'http://tamilrockers.ws/index.php/topic/61005-arjun-reddy-2017-telugu-720p-hdrip-x264-15gb-esubs/#entry397022', 0),
(59, 9, 'Evaru', '2019-08-19', 'Telugu', 'Tollywood', '01:59:00', 'Venkat Ramji', 'Pearl V. Potluri', 'Sricharan Pakala', 'Vamsi Patchipulusu', 'Garry BH', 3504875, 981365, 'Sub-inspector Vikram Vasudev is entrusted with the task of investigating the murder of a high ranking officer who was killed by his alleged rape victim. When he delves deeper into the case he uncovers some surprising facts', 'Drama,Thriller', 'Advi Sesh,Regina Cassandra', 'images/59.jpg', 'https://www.youtube.com/watch?v=TfW6lil5uyc', 'https://www19.123movierulz.live/watch-evaru-2019-full-movie-online-free-movierulz-1-6133.html', 'http://tamilrockers.ws/index.php/topic/118691-evaru-2019-telugu-hdrip-x264-250mb-esubs/', 0),
(60, 9, 'Goodachari', '2018-08-03', 'Telugu', 'Tollywood', '02:29:00', 'Sashi Kiran Tikka', 'Abhishek Nama', 'Sricharan Pakala', 'Shaneil Deo', 'Garry Bh', 1870000, 870000, 'A young NSA agent is framed for the murder of his bosses making him realize that now his mission is darker than expected and has some personal scores to settle regarding his fathers death, a former NSA agent', 'Thriller,Action', 'Advi Sesh,Sobhita Dhulipala', 'images/60.jpg', 'https://www.youtube.com/watch?v=lysoF97MOMk', 'https://www19.123movierulz.live/watch-goodachari-2018-full-movie-online-free-movierulz-dvd-59-873.html', 'http://tamilrockers.ws/index.php/topic/78012-goodachari-2018telugu-proper-hq-hdrip-xvid-mp3-700mb-esubs/', 0),
(61, 9, 'Brochevarevarura', '2019-06-28', 'Telugu', 'Tollywood', '02:06:00', 'Vivek Athreya', 'Vijay Kumar Manyam', 'Vivek Sagar', 'Sai Sriram', 'Raviteja Girijala', 12237725, 121721, 'This is the story of R3 batch consisting of Rocky, Rambo and Rahul, three friends who keep failing every year and are stuck with studying inter', 'Romance,Comedy', 'Sree Vishnu,Nivetha Thomas,Nivetha Pethuraj', 'images/61.jpg', 'https://www.youtube.com/watch?v=MS30HyBiRbU', 'https://1movierulzfree.me/brochevarevarura-2019-telugu/full-movie-watch-online-free-3.html', 'https://1movierulzfree.me/brochevarevarura-2019-telugu/full-movie-watch-online-free-3.html', 0),
(62, 9, 'Agent Sai Srinivasa Athreya', '2019-06-21', 'Telugu', 'Tollywood', '02:28:00', 'Swaroop RSJ', 'Rahul Yadav Nakka', 'Mark K Robin', 'Sunny Kurapati', 'Amit Tripath', 330293, 210292, 'Agent Sai Srinivasa Athreya is an authentic humorous investigative thriller revolving around the adventures of a detective based out of Nellore', 'Drama,Thriller', 'Naveen Polishetty', 'images/62.jpg', 'https://www.youtube.com/watch?v=iPfVbR5oAWE', 'https://www.youtube.com/watch?v=iPfVbR5oAWE', 'https://www.youtube.com/watch?v=iPfVbR5oAWE', 0),
(63, 9, 'Kumbalangi Nights', '2019-02-07', 'Malayalam', 'Mollywood', '02:15:00', 'Madhu C. Narayanan', 'Fahadh Faasil', 'Sushin Shyam', 'Shyju Khalid', 'Saiju Sreedharan', 5607400, 981295, 'The film revolves around four brothers who share a love-hate relationship with each other. Their relationship progresses to another level when Saji, Boney, and Franky decide to help Bobby stand by his love', 'Drama,Romance', 'Fahadh Faasil,Soubin Shabir', 'images/63.jpg', 'https://www.youtube.com/watch?v=3P4BFBSafF0', 'https://hdbest.net/kumbalangi-nights-2019-25887.html', 'https://hdbest.net/kumbalangi-nights-2019-25887.html', 0),
(64, 9, 'Solo', '2017-10-05', 'Malayalam', 'Mollywood', '02:32:00', 'Bejoy Nambiar', 'Abraham Mathew', 'Masala Coffee', 'Girish Gangadharan', 'A. Sreekar Prasad', 330293, 210292, 'Solo tells the story of four people, each story revolving around four elements: Earth, Fire, Wind and Water, each with the facets of Lord Shiva', 'Drama,Thriller', 'Dulqueer Salman', 'images/64.jpg', 'https://www.youtube.com/watch?v=LqbdX3tlB0E', 'http://mymoviesda.com/tamil/solo-full-movie-download.html', 'http://mymoviesda.com/tamil/solo-full-movie-download.html', 0),
(65, 9, 'Premam', '2015-05-29', 'Malayalam', 'Mollywood', '02:42:00', 'Alphonse Puthren', 'Anwar Rasheed', 'Rajesh Murugesan', 'Anand C. Chandran', 'Alphonse Puthren', 8411100, 560740, 'TA young man has three opportunities to find love. Will the third time be the charm?', 'Drama,Romance', 'Nivin Pauly', 'images/65.jpg', 'https://www.youtube.com/watch?v=pbgvTikmIMk', 'https://sourceforge.net/directory/os:mac/?q=premam+movie+download', 'https://sourceforge.net/directory/os:mac/?q=premam+movie+download', 0),
(66, 9, 'Banglore Days', '2014-05-30', 'Malayalam', 'Mollywood', '02:32:00', 'Anjali Menon', 'Anwar Rasheed', 'Gopi Sunder', 'Sameer Thahir', 'Praveen Prabhakar', 6307200, 1401600, 'Three cousins set out to fulfill their Bangalore dreams', 'Drama,Romance', 'Nivin Pauly, Dulqueer Salman,Fahadh Faasil', 'images/66.jpg', 'https://www.youtube.com/watch?v=Gdzif0Px_qY', 'https://www.hotstar.com/movies/bangalore-days/1000081352', 'https://027ppt2.com/2014-movies/bangalore-days-2014-movie-free-download-720p-bluray-mc/', 0),
(67, 9, 'Ulidavaru Kandanthe', '2014-03-28', 'Kannada', 'Sandalwood', '02:34:00', 'Rakshit Shetty', 'Hemanth', 'B. Ajaneesh Loknath', 'Karm Chawla', 'Sachin', 2900000, 360000, 'A journalist sets out to uncover the truth behind an incident, through the perspectives of different people, unraveling how they and their lives are intertwined with it', 'Drama,Crime', 'Rakshit Shetty', 'images/67.jpg', 'https://www.youtube.com/watch?v=POJ_6EtGeMw', 'http://lloydinsulations.com/wcs/ulidavaru-kandante-movie.html', 'http://lloydinsulations.com/wcs/ulidavaru-kandante-movie.html', 0),
(68, 10, 'Awe', '2018-02-16', 'Kannada', 'Sandalwood', '02:14:00', 'Prasanth Varma', 'Nani', 'Mark K. Robin', 'Karthik Ghattamaneni', 'Goutham Nerusu', 2300000, 234000, 'Unusual(multiple) persons tend to meet at a Restaurant and their life-changing moments take place in order to know about a single person', 'Drama,Sci-Fi', 'Kajal Agarwal,Nithya Menon,Regina Cassandra', 'images/68.jpg', 'https://www.youtube.com/watch?v=xOEscQChX7M', 'https://ru-clip.net/rev/awe+movie+download/', 'https://ru-clip.net/rev/awe+movie+download/', 0),
(69, 10, 'K.G.F: Chapter 1', '2018-12-20', 'Kannada', 'Sandalwood', '02:35:00', 'Prashanth Neel', 'Vijay Kiragandur', 'Ravi Basrur', 'Bhuvan Gowda', 'Shrikanth', 42036000, 11209600, 'Set in the 1970s, its the story of a fierce rebel who rises against the brutal oppression and becomes the symbol of hope to legions of downtrodden people', 'Drama,Thriller', 'Yash', 'images/69.jpg', 'https://www.youtube.com/watch?v=3oxo-wacE50', 'https://www.pinterest.com/pin/734579389198474528/', 'https://www.pinterest.com/pin/734579389198474528/', 0),
(70, 10, 'Andhadhun', '2018-10-05', 'Hindi', 'Bollywood', '02:18:00', 'Sriram Raghavan', 'Viacom 18 Motion Pictures', 'Amit Trivedi', 'K. U. Mohanaa', 'Pooja Ladha Surti', 63894720, 11209600, 'A series of mysterious events change the life of a blind pianist who now must report a crime that was actually never witnessed by him', 'Crime,Thriller', 'Aayushmaan Khuranna,Radhika Apte', 'images/70.jpg', 'https://www.youtube.com/watch?v=2iVYI99VGaw', 'https://www.livehindustan.com/tags/andhahun-free-movie-download', 'https://www.livehindustan.com/tags/andhahun-free-movie-download', 0),
(71, 10, '3 Idiots', '2009-12-25', 'Hindi', 'Bollywood', '03:02:00', 'Raj Kumar Hirani', 'Chopra Parneedh', 'Shantanu Moitra', 'Karam Mohanaa', 'Raj Kumar Hirani', 63894720, 11209600, 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them \"idiots\"', 'Drama', 'Aamir Khan,Madhavan', 'images/71.jpg', 'https://www.youtube.com/watch?v=K0eDlFX9GMc', 'https://archive.org/details/3.Idiots.2009', 'https://archive.org/details/3.Idiots.2009', 0),
(73, 2, 'Asuran', '2019-10-05', 'Hindi', 'Bollywood', '02:18:00', 'Sriram Raghavan', 'Viacom 18 Motion Pictures', 'Amit Trivedi', 'K. U. Mohanaa', 'Pooja Ladha Surti', 63894720, 11209600, 'The teenage son of a farmer from an underprivileged caste kills a rich, upper caste landlord. Will the farmer, a loving father and a pacifist by heart, be able to save his hot-blooded son is the rest of the story', 'Crime,Thriller', 'Dhanush, Manju Warrier', 'images/73.jpg', 'https://www.youtube.com/watch?v=vOCM9wztBYQ', 'http://www.tamildbox.top/watch/Asuran', 'http://tamilrockers.ws/index.php/topic/120148-asuran-2019-tamil-720p-hq-pre-dvdrip-x264-14gb-original-audio/', 0),
(74, 3, 'Joker', '2019-12-04', 'Hindi', 'Bollywood', '03:02:00', 'Raj Kumar Hirani', 'Chopra Parneedh', 'Shantanu Moitra', 'Karam Mohanaa', 'Raj Kumar Hirani', 63894720, 11209600, 'In Gotham City, mentally-troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: \"The Joker\"', 'Drama, Thriller', 'Joaquin Phoenix', 'images/74.jpg', 'https://www.youtube.com/watch?v=zAGVQLHvwOY', 'https://ww2.123movies.domains/movie/joker/HwWT9pR4/kQHoRTuI', 'http://tamilrockers.ws/index.php/topic/120266-joker-2019-english-720p-hq-dvdscr-x264-1gb-hq-line-audio/', 0),
(75, 3, 'Namma Veetu Pillai', '2019-09-22', 'Hindi', 'Bollywood', '03:18:00', 'Anurag Kashyap', 'Anurag Kashyap', 'G. V. Prakash Kumar', 'Rajeev Ravi', 'Shweta Venkat', 5000000, 1300000, 'A brother who dotes on his sister is forced into a situation where he has to get her married to a ruffian with whom he is at loggerheads. Can their relationship survive?', 'Drama', 'Sivakarthikeyan, Anu Emannuel', 'images/75.jpg', 'https://www.youtube.com/watch?v=59_Fl_e46IU', 'http://www.tamildbox.top/watch/Namma-Veettu-Pillai', 'http://tamilrockers.ws/index.php/topic/119787-namma-veettu-pillai-2019-tamil-720p-hq-pre-dvdrip-x264-14gb-original-audio/', 0),
(76, 3, 'Bigil', '2019-10-25', 'Kannada', 'Sandalwood', '02:35:00', 'Prashanth Neel', 'Vijay Kiragandur', 'Ravi Basrur', 'Bhuvan Gowda', 'Shrikanth', 42036000, 11209600, 'A Sports Drama story', 'Drama,Sports', 'Vijay, Nayanthara', 'images/76.jpg', 'https://www.youtube.com/watch?v=GR-Ui8-V2M0', 'https://www.youtube.com/watch?v=GR-Ui8-V2M0', 'https://www.youtube.com/watch?v=GR-Ui8-V2M0', 0);

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
