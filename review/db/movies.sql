# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#

# Generation Time: 2014-12-16 06:10:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table movies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `movie_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) NOT NULL DEFAULT '',
  `movie_year` int(4) NOT NULL,
  `movie_rating` varchar(10) NOT NULL DEFAULT '',
  `movie_bio` varchar(255) DEFAULT NULL,
  `movie_img` varchar(200) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `movies` (`movie_id`, `movie_name`, `movie_year`, `movie_rating`, `movie_bio`, `movie_img`)
VALUES
	(1,'The Shawshank Redemption',1994,'G','Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency','images/1.jpg'),
(2,'Forrest Gump', 1994,'G','The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75','images/2.jpg'),
(3,'Schindlers List', 1993,'PG -13' ,'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis','images/3.jpg'),
(4,'The Godfather',1972,'PG -13' , 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son','images/4.jpg'),
(5,'The Green Mile',1999,'G' , 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift','images/5.jpg'),
(6,'Hotel Rwanda', 2004, 'G', 'Paul Rusesabagina was a hotel manager who housed over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda','images/6.jpg'),
(7,'Goodfellas',1990, 'PG -13', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate','images/7.jpg'),
(8,'Saving Private Ryan',1998,'G' , 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action','images/8.jpg'),
(9,'The Departed',2006,'G' , 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston','images/9.jpg'),
(10,' Memento',2000,'G' , 'A man with short-term memory loss attempts to track down the murderer of his wife','images/10.jpg'),
(11,'Reservoir Dogs',1992,'PG -13' , 'When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant','images/11.jpg'),
(12,'Pulp Fiction',1994,'G' , 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption','images/12.jpg'),
(13,'Kill Bill: Volume 1',2003,'PG -13', 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her','images/13.jpg'),
(14,'Kill Bill: Volume 2',2004,'PG -13' , 'The Bride continues her quest of vengeance against her former boss and lover Bill, the reclusive bouncer Budd, and the treacherous, one-eyed Elle','images/14.jpg'),
(15,'Death Proof',2007,'PG -13', 'Two separate sets of voluptuous women are stalked at different times by a scarred stuntman who uses his death proof cars to execute his murderous plans','images/15.jpg'),
(16,'Inglourious Basterds',2009,'PG -13' , 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with the owner of the theatre vengeful plans for the same','images/16.jpg'),
(17,'Django Unchained',2012,'PG -13' , 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner Drama,Blaxploitation','images/17.jpg'),
(18,'The Hateful Eight',2015,'PG -13', 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters','images/18.jpg'),
(19,'Once Upon a Time in Hollywood',2019,'PG -13', 'A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood Golden Age in 1969 Los Angeles','images/19.jpg'),
(20,'Taxi Driver',1976,'PG -13' , 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute','images/20.jpg'),
(21,'The Last Waltz',1978,'PG -13', 'A film account and presentation of the final concert of The Band','images/21.jpg'),
(22,'Raging Bull',1980,'G' , 'The life of boxer Jake LaMotta, whose violence and temper that lead him to the top in the ring destroyed his life outside of it','images/22.jpg'),
(23,'The Last Temptation of Christ',1988,'G' , 'The life of Jesus Christ, his journey through life as he faces the struggles all humans do, and his final temptation on the cross','images/23.jpg'),
(24,'Cape Fear',1991,'G', 'A convicted rapist, released from prison after serving a fourteen-year sentence, stalks the family of the lawyer who originally defended him','images/24.jpg'),
(25,'Casino',1995,'G' , 'A tale of greed, deception, money, power, and murder occur between two best friends: a mafia enforcer and a casino executive, compete against each other over a gambling empire, and over a fast living and fast loving socialite','images/25.jpg'),
(26,'Gangs of New York',2002,'PG ' , 'In 1862, Amsterdam Vallon returns to the Five Points area of New York City seeking revenge against Bill the Butcher, the killer of his father','images/26.jpg'),
(27,'The Aviator',2004,'G' , 'A biopic depicting the early years of legendary Director and aviator Howard Hughes career from the late 1920s to the mid 1940s','images/27.jpg'),
(28,'The Wolf of Wall Street',2013,'R' , 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.','images/28.jpg'),
(29,'Shutter Island',2010,'G', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer, who escaped from a hospital for the criminally insane','images/29.jpg'),
(30,'Silence',2016,'G' , 'In the 17th century, two Portuguese Jesuit priests travel to Japan in an attempt to locate their mentor, who is rumored to have committed apostasy, and to propagate Catholicism','images/30.jpg'),
(32,'Insomnia',2002,'G','Two Los Angeles homicide detectives are dispatched to a northern town where the sun doesnt set to investigate the methodical murder of a local teen','images/32.jpg'),
(33,'Inception',2010,'G','A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O','images/33.jpg'),
(34,'Intersetllar',2014,'G','A team of explorers travel through a wormhole in space in an attempt to ensure humanitys survival','images/34.jpg'),
(35,'Dunkirk',2017,'G','Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army, and evacuated during a fierce battle in World War II','images/35.jpg'),
(36,'The Dark Knight',2008,'G','When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice','images/36.jpg'),
(37,'2001: A Space Odyssey',1968,'PG -13','After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000','images/37.jpg'),
(38,'A Clockwork Orange',1971,'R','In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesnt go as planned','images/38.jpg'),
(39,'The Shining',1980,'PG -13','A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future','images/39.jpg'),
(40,'John Wick',2014,'PG -13','An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him','images/40.jpg'),
(41,'Nayakan',1987,'G','A common mans struggles against a corrupt police force put him on the wrong side of the law. He becomes a don, who is loved and respected by many, but his growing power and influence exact a heavy toll','images/41.jpg'),
(42,'Anbe Sivam',2003,'G','Two men, one young and arrogant, the other damaged - physically but not spiritually - by life, are thrown together by circumstances, and find that they are in some ways bound together by fate','images/42.jpg'),
(43,'Vikram Vedha',2017,'PG -13','Vikram, a no-nonsense police officer, accompanied by Simon, his partner, is on the hunt to capture Vedha, a smuggler and a murderer. Vedha tries to change Vikrams life, which leads to a conflict','images/43.jpg'),
(44,'Ratsasan',2018,'PG -13','Constant rejections in his attempts to become a filmmaker and family constraints force Arun to let go of his dream and take up the job of a Police officer','images/44.jpg'),
(45,'Thevar Magan',1987,'G','The urbane son of a village chieftain struggles between his personal aspirations and those of his family','images/45.jpg'),
(46,'Pariyerum Perumal',2018,'G','A law student from a lower caste begins a friendship with his classmate, a girl who belongs to a higher caste, and the men in her family start giving him trouble over this','images/46.jpg'),
(47,'Thalapathi',1991,'G','An orphan named Surya raised in a slum befriends a good crime boss named Devaraj and works for him. Their existence is threatened when a new honest district collector arrives','images/47.jpg'),
(48,'Aruvi',2016,'PG -13','A gentle girl born and brought up amidst the ever growing eco-social-consumeristic environment finds it difficult to fit in the society. She decides to take it hard on the people. What she does is the rest of the story','images/48.jpg'),
(50,'Dhuruvangal Pathinaaru',2016,'PG -13','A police officer retires after an accident during a case investigation. Years later, he is forced to relive the past as he narrates the story to his friends son','images/50.jpg'),
(51,'Thuppakki',2012,'G','An army captain is on a mission to track down and destroy a terrorist gang and deactivate the sleeper cells under its command','images/51.jpg'),
(53,'Ghilli',2004,'G','Velu, an aspiring kabaddi player, goes to Madurai to participate in a regional match, where he rescues Dhanalakshmi from Muthupandi, a powerful man keen on marrying the girl against her wish','images/53.jpg'),
(54,'Pudhupettai',2006,'R','A high school kid joins a gang and becomes a drug dealer, then a politician','images/54.jpg'),
(55,'Aayirathil Oruvan',2010,'R','Chandramouli, a famous archaeologist, goes missing while on a research expedition. Anitha, a government officer, and Lavanya, Chandramoulis daughter, embark on an adventurous journey to find him','images/55.jpg'),
(56,'Mayakkam Enna',2011,'PG -13','Karthik and Yamini cant stand each other, but there lies the twist when opposites attract','images/56.jpg'),
(57,'7G Rainbow Colony',2004,'PG -13','A neighborhood good-for-nothing attempts to romance the new girl in town','images/57.jpg'),
(58,'Arjun Reddy',2017,'R','Arjun Reddy, a short tempered house surgeon gets used to drugs and drinks when his girlfriend is forced to marry another person','images/58.jpg'),
(59,'Evaru',2019,'PG -13','Sub-inspector Vikram Vasudev is entrusted with the task of investigating the murder of a high ranking officer who was killed by his alleged rape victim. When he delves deeper into the case he uncovers some surprising facts','images/59.jpg'),
(60,'Goodachari',2018,'PG -13','A young NSA agent is framed for the murder of his bosses making him realize that now his mission is darker than expected and has some personal scores to settle regarding his fathers death, a former NSA agent','images/60.jpg'),
(61,'Brochevarevarura',2019,'G','This is the story of R3 batch consisting of Rocky, Rambo and Rahul, three friends who keep failing every year and are stuck with studying inter','images/61.jpg'),
(62,'Agent Sai Srinivasa Athreya',2019,'G','Agent Sai Srinivasa Athreya is an authentic humorous investigative thriller revolving around the adventures of a detective based out of Nellore','images/62.jpg'),
(63,'Kumbalangi Nights',2019,'G','The film revolves around four brothers who share a love-hate relationship with each other. Their relationship progresses to another level when Saji, Boney, and Franky decide to help Bobby stand by his love','images/63.jpg'),
(64,'Solo',2017,'PG -13','Solo tells the story of four people, each story revolving around four elements: Earth, Fire, Wind and Water, each with the facets of Lord Shiva','images/64.jpg'),
(65,'Premam',2015,'G','TA young man has three opportunities to find love. Will the third time be the charm?','images/65.jpg'),
(66,'Banglore Days',2014,'G','Three cousins set out to fulfill their Bangalore dreams','images/66.jpg'),
(67,'Ulidavaru Kandanthe',2014,'PG -13','A journalist sets out to uncover the truth behind an incident, through the perspectives of different people, unraveling how they and their lives are intertwined with it','images/67.jpg'),
(68,'Awe',2018,'PG -13','Unusual(multiple) persons tend to meet at a Restaurant and their life-changing moments take place in order to know about a single person','images/68.jpg'),
(69,'K.G.F: Chapter 1',2018,'G','Set in the 1970s, its the story of a fierce rebel who rises against the brutal oppression and becomes the symbol of hope to legions of downtrodden people','images/69.jpg'),
(70,'Andhadhun',2018,'PG -13','A series of mysterious events change the life of a blind pianist who now must report a crime that was actually never witnessed by him','images/70.jpg'),
(71,'3 Idiots',2009,'G','Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them "idiots"','images/71.jpg'),
(72,'Gangs of Wasseypur Part 1',2012,'R','A clash between Sultan and Shahid Khan leads to the expulsion of Khan from Wasseypur, and ignites a deadly blood feud spanning three generations','images/72.jpg');




# Dump of table reviews
# ------------------------------------------------------------



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '',
  `user_full_name` varchar(150) NOT NULL DEFAULT '',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL DEFAULT '',
  `user_role` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `users` (`user_id`, `user_name`, `user_full_name`, `user_email`, `user_password`, `user_role`)
VALUES
	(38,'admin','Admin 1','admin@admin.com','admin',1),
	(39,'test','Test','test@test.com','test',2);


DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `review_movie_id` int(11) unsigned NOT NULL,
  `review_user_id` int(11) unsigned NOT NULL,
  `review_rating` int(11) NOT NULL,
  `review_content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`review_id`),
  KEY `users_foreign_key` (`review_user_id`),
  KEY `movies_foreign_key` (`review_movie_id`),
  CONSTRAINT `movies_foreign_key` FOREIGN KEY (`review_movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_foreign_key` FOREIGN KEY (`review_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `reviews` (`review_id`, `review_movie_id`, `review_user_id`, `review_rating`, `review_content`)
VALUES
  (6,1,39,4,'This is one of my favorite movies of all time!'),
  (7,1,39,1,'On second thought, this was awful.');




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
