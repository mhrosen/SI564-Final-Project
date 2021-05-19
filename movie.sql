-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 35.239.81.122    Database: movie
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `age`
--

DROP TABLE IF EXISTS `age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `age` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `age_category_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age`
--

LOCK TABLES `age` WRITE;
/*!40000 ALTER TABLE `age` DISABLE KEYS */;
INSERT INTO `age` VALUES (1,'13+'),(4,'16+'),(2,'18+'),(3,'7+'),(5,'all');
/*!40000 ALTER TABLE `age` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (13,'Bulgaria'),(9,'Canada'),(16,'Colombia'),(4,'Germany'),(12,'India'),(5,'Italy'),(15,'Luxembourg'),(6,'Malawi'),(8,'Mexico'),(11,'South Africa'),(7,'South Korea'),(10,'Spain'),(14,'Sweden'),(3,'United Kingdom'),(1,'United States'),(2,'West Germany');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Christopher','Nolan'),(2,'Sergio','Leone'),(3,'Roman','Polanski'),(4,'Steven','Spielberg'),(5,'Quentin','Tarantino'),(6,'Martin','Scorsese'),(7,'Harold','Ramis'),(8,'Tom','Hooper'),(9,'Chiwetel','Ejiofor'),(10,'Gabriela','Cowperthwaite'),(11,'Vince','Gilligan'),(12,'Bong','Joon-Ho'),(13,'Bryan','Fogel'),(14,'David','Gelb'),(15,'Kevin','Smith'),(16,'Ted','Demme'),(17,'Noah','Baumbach'),(18,'David','Mackenzie'),(19,'Roland','Emmerich'),(20,'Gavin','O\'Connor'),(21,'Richard','LaGravenese'),(22,'Andy','Tennant'),(23,'Denis','Villeneuve'),(24,'Oriol','Paulo'),(25,'Lone','Scherfig'),(26,'Randal','Kleiser'),(27,'David','Cronenberg'),(28,'Brian','Smrz'),(29,'Mark','Williams'),(30,'Stephan','Rick'),(31,'Kyle','Rideout'),(32,'Steven','Brill'),(33,'Jason','Stone'),(34,'Duncan','Jones'),(35,'Raja','Gosnell'),(36,'Karey','Kirkpatrick'),(37,'David','Ward'),(38,'Mike','Disa'),(39,'Marco','Schnabel'),(40,'John','Schultz'),(41,'Shreyas','Talpade'),(42,'Dianne','Dreyer'),(43,'Mark','Atkins'),(44,'Kees','Vanoostrum'),(45,'Hèctor','Vicens'),(46,'Ross','Boyask'),(47,'Ruben','Fleischer'),(48,'John','Krasinski'),(49,'Jason','Reitman'),(50,'Drew','Goddard'),(51,'Lynne','Ramsay'),(52,'Simon','Kaijser'),(53,'Tyler','Perry'),(54,'Justin','Reardon'),(55,'Harald','Zwart'),(56,'David','Heinz'),(57,'Joel','Potrykus'),(58,'Dwight','Little'),(59,'Jason','Cabell'),(60,'Michael','Rosenbaum'),(61,'Chris','Dowling'),(62,'Kenneth','Branagh'),(63,'Joe','Johnston'),(64,'Alejandro','Amenábar'),(65,'David','Zucker'),(66,'Henry','Jaglom'),(67,'Rohit','Rao'),(68,'Otis','Mass'),(69,'Ryan','Little'),(70,'Tristan','Loraine'),(71,'Eric','Forsberg'),(72,'Alex','Cox'),(73,'Eitan','Arrusi'),(74,'Neal','Miller'),(75,'Andrzej','Krakowski'),(76,'Rupert','Wainwright'),(77,'Brad','Bird'),(78,'Ron','Howard'),(79,'Bradley','Raymond'),(80,'Steve','Boyum'),(81,'Robert','Stevenson'),(82,'Duwayne','Dunham'),(83,'John','Lasseter'),(84,'Bruce','Hendricks'),(85,'David','Grossman'),(86,'Paul','Glaser'),(87,'George','Scribner'),(88,'Kenny','Ortega'),(89,'Pascal','Laugier');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_info`
--

DROP TABLE IF EXISTS `film_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `imdb` float NOT NULL,
  `rotten_tomato` int DEFAULT NULL,
  `netflix` enum('1','0') DEFAULT NULL,
  `hulu` enum('1','0') DEFAULT NULL,
  `prime` enum('1','0') DEFAULT NULL,
  `disney_plus` enum('1','0') DEFAULT NULL,
  `runtime` int NOT NULL,
  `year` int NOT NULL,
  `director_id` int NOT NULL,
  `age_id` int NOT NULL,
  `country_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `film_info_age_id_fk` (`age_id`),
  KEY `film_info_country_id_fk` (`country_id`),
  KEY `film_info_director_id_fk` (`director_id`),
  KEY `film_info_genre_id_fk` (`genre_id`),
  CONSTRAINT `film_info_age_id_fk` FOREIGN KEY (`age_id`) REFERENCES `age` (`id`),
  CONSTRAINT `film_info_country_id_fk` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `film_info_director_id_fk` FOREIGN KEY (`director_id`) REFERENCES `director` (`id`),
  CONSTRAINT `film_info_genre_id_fk` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_info`
--

LOCK TABLES `film_info` WRITE;
/*!40000 ALTER TABLE `film_info` DISABLE KEYS */;
INSERT INTO `film_info` VALUES (1,'Inception',8.8,67,'1','0','0','0',148,2010,1,1,1,1),(2,'The Good, the Bad and the Ugly',5.8,97,'1','0','1','0',161,1966,2,2,2,2),(3,'The Chanukkah Candles',8.5,95,'1','0','1','0',150,2002,3,2,3,3),(4,'Raiders of the Lost Ark',8.4,89,'1','0','0','0',115,1981,4,3,1,1),(5,'Inglourious Basterds',7.2,95,'1','0','0','0',153,2009,5,2,4,4),(6,'Taxi Driver',8.3,95,'1','0','0','0',114,1976,6,2,1,5),(7,'Once Upon a Time in the West',5.5,88,'1','0','1','0',165,1968,2,1,5,2),(8,'Indiana Jones and the Last Crusade',8.2,96,'1','0','0','0',127,1989,4,1,1,1),(9,'Groundhog Day',8,95,'1','0','0','0',101,1993,7,3,1,6),(10,'The King\'s Speech',8,25,'1','0','0','0',118,2010,8,2,3,3),(11,'The Boy Who Harnessed the Wind',7.6,30,'1','0','1','0',113,2019,9,3,6,5),(12,'Blackfish',8.1,98,'1','1','0','0',83,2013,10,1,1,7),(13,'El Camino: A Breaking Bad Movie',7.4,91,'1','0','0','0',122,2019,11,2,1,1),(14,'Okja',7.3,87,'1','0','0','0',120,2017,12,1,7,1),(15,'Icarus',7.9,93,'1','0','0','0',120,2017,13,2,1,7),(16,'Jiro Dreams of Sushi',7.9,99,'1','1','0','0',81,2011,14,3,1,7),(17,'Chasing Amy',7.2,87,'1','0','0','0',113,1997,15,2,1,6),(18,'Blow',4.6,55,'1','0','0','0',124,2001,16,2,8,3),(19,'The Squid and the Whale',7.3,92,'1','0','1','0',81,2005,17,2,1,6),(20,'Starred Up',7.4,99,'1','0','1','0',106,2013,18,2,3,5),(21,'The Patriot',7.2,61,'1','1','0','0',165,2000,19,2,1,1),(22,'Miracle',7.5,81,'1','0','0','1',135,2004,20,3,9,3),(23,'Freedom Writers',3.1,70,'1','0','1','0',123,2007,21,1,4,3),(24,'Hitch',6.6,68,'1','1','0','0',118,2005,22,1,1,6),(25,'Enemy',9.9,71,'1','0','0','0',91,2013,23,2,9,5),(26,'Mirage',9.9,71,'1','0','1','0',128,2018,24,2,10,5),(27,'One Day',9.9,36,'1','0','1','0',107,2011,25,1,1,5),(28,'White Fang',6.9,88,'1','0','0','1',107,2018,26,3,1,5),(29,'Gemini',5.4,71,'1','1','0','0',116,2018,27,2,9,5),(30,'24 Hours to Live',5.7,52,'1','0','0','0',93,2017,28,2,11,1),(31,'A Family Man',8.6,13,'1','0','0','0',108,2017,29,2,9,5),(32,'The Super',8.9,90,'1','0','0','0',90,2018,30,2,1,8),(33,'Adventures in Public School',5.8,71,'1','0','0','0',86,2018,31,4,9,6),(34,'Drillbit Taylor',5.7,26,'1','0','0','0',110,2008,32,1,1,1),(35,'At First Light',5.5,54,'1','0','0','0',90,2018,33,1,9,5),(36,'It Takes Two',5.9,8,'1','0','1','0',101,1995,22,3,1,6),(37,'The Do-Over',5.7,9,'1','0','1','0',108,2016,32,2,1,1),(38,'Mute',5.4,20,'1','0','1','0',126,2018,34,2,3,8),(39,'Yours, Mine & Ours',5.5,6,'1','0','1','0',88,2005,35,3,1,6),(40,'Imagine That',5.6,41,'1','0','1','0',107,2009,36,3,1,6),(41,'Major League II',9,5,'1','1','0','0',105,1994,37,3,1,6),(42,'Hoodwinked Too! Hood VS. Evil',4.7,11,'1','0','0','0',86,2011,38,3,1,6),(43,'The Love Guru',3.8,14,'1','0','1','0',87,2008,39,1,3,6),(44,'Judy Moody and the Not Bummer Summer',4.2,20,'1','0','0','0',91,2011,40,3,1,6),(45,'Poster Boys',5.5,33,'1','0','0','0',128,2017,41,1,12,6),(46,'Change in the Air',5.4,11,'1','0','0','0',94,2018,42,3,1,5),(47,'Monster Island',4.8,18,'1','0','1','0',89,2017,43,3,1,1),(48,'A Perfect Man',5.2,20,'1','0','0','0',95,2013,44,2,1,5),(49,'Day of the Dead: Bloodline',3.4,13,'1','0','0','0',90,2017,45,2,13,9),(50,'I Am Vengeance',4.3,38,'1','0','1','0',92,2018,46,2,3,1),(51,'The Dark Knight',9,94,'0','1','0','0',152,2008,1,1,1,1),(52,'GoodFellas',8.7,96,'0','1','0','0',146,1990,6,2,1,3),(53,'Parasite',8.6,99,'0','1','1','0',132,2019,12,2,7,6),(54,'Zombieland',7.6,90,'0','1','1','0',88,2009,47,2,1,6),(55,'A Quiet Place',7.5,95,'0','1','1','0',90,2018,48,1,1,5),(56,'Up in the Air',7.4,91,'0','1','1','0',109,2009,49,2,1,6),(57,'The Cabin in the Woods',4,92,'0','1','1','0',95,2012,50,2,1,9),(58,'We Need to Talk About Kevin',7.5,75,'0','1','1','0',112,2011,51,2,3,5),(59,'Spinning Man',8.1,42,'0','1','0','0',100,2018,52,2,14,5),(60,'Madea\'s Witness Protection',4.9,19,'0','1','1','0',114,2012,53,1,1,6),(61,'Playing It Cool',6,14,'0','1','1','0',94,2014,54,2,1,6),(62,'The Pink Panther 2',5.6,13,'0','1','1','0',92,2009,55,3,1,1),(63,'American Folk',6.1,76,'0','1','1','0',99,2018,56,3,1,10),(64,'The Alchemist Cookbook',5.1,80,'0','1','1','0',82,2016,57,2,1,9),(65,'Free Willy 2: The Adventure Home',9.9,31,'0','1','0','0',95,1995,58,3,15,5),(66,'Running with the Devil',5.4,25,'0','1','0','0',100,2019,59,2,16,5),(67,'The Reunion',5.2,8,'0','1','1','0',94,2011,60,1,3,6),(68,'Run the Race',5.9,40,'0','1','1','0',101,2019,61,3,1,5),(69,'Thor',7,77,'0','0','1','1',115,2011,62,1,1,1),(70,'Captain America: The First Avenger',6.9,80,'0','0','1','1',124,2011,63,1,1,1),(71,'The Darkness',4.4,3,'0','0','1','0',101,2016,64,1,5,9),(72,'My Boss\'s Daughter',4.7,8,'0','0','1','0',86,2003,65,1,1,6),(73,'The M Word',6.1,38,'0','0','1','0',117,2014,66,2,1,5),(74,'Ultrasonic',5.5,13,'0','0','1','0',90,2012,67,2,1,5),(75,'The Incomparable Rose Hartman',6.3,75,'0','0','1','0',71,2016,68,4,1,7),(76,'Age of the Dragons',3.4,9,'0','0','1','0',91,2011,69,1,1,1),(77,'31 North 62 East',4.1,8,'0','0','1','0',105,2009,70,2,3,8),(78,'Just 45 Minutes from Broadway',9.5,10,'0','0','1','0',112,2012,66,2,1,5),(79,'Mega Piranha',2.4,8,'0','0','1','0',92,2010,71,2,10,1),(80,'The Winner',4.8,17,'0','0','1','0',92,1996,72,2,1,6),(81,'Reverb',3.9,9,'0','0','1','0',88,2007,73,1,3,9),(82,'Raising Flagg',5.4,23,'0','0','1','0',103,2006,74,1,1,6),(83,'Looking for Palladin',5.5,22,'0','0','1','0',115,2008,75,2,1,6),(84,'Blank Check',5.3,9,'0','0','0','1',93,1994,76,3,1,6),(85,'The Incredibles',8,97,'0','0','0','1',115,2004,77,3,1,1),(86,'Splash',6.2,90,'0','0','0','1',111,1984,78,3,1,6),(87,'Tinker Bell',6.8,100,'0','0','0','1',78,2008,79,5,1,11),(88,'Meet the Deedles',4.1,7,'0','0','0','1',93,1998,80,3,1,6),(89,'The Shaggy D.A.',5.9,50,'0','0','0','1',91,1976,81,5,1,6),(90,'Herbie Rides Again',5.7,80,'0','0','0','1',88,1974,81,5,1,6),(91,'Halloweentown',6.8,80,'0','0','0','1',84,1998,82,5,1,12),(92,'Toy Story',8.3,100,'0','0','0','1',81,1995,83,5,1,11),(93,'Jonas Brothers: The Concert Experience',1.6,24,'0','0','0','1',76,2009,84,5,1,7),(94,'George of the Jungle 2',3.3,17,'0','0','0','1',87,2003,85,3,1,11),(95,'That Darn Cat',4.7,13,'0','0','0','1',116,1997,81,3,1,11),(96,'Kazaam',3,6,'0','0','0','1',93,1996,86,3,1,11),(97,'Splash',6.2,90,'0','0','0','1',111,1984,78,3,1,6),(98,'Oliver & Company',6.7,51,'0','0','0','1',74,1988,87,5,1,11),(99,'Descendants',6.4,90,'0','0','0','1',112,2015,88,5,1,11),(100,'The Secret',5.6,74,'1','0','0','0',106,2006,89,3,9,5);
/*!40000 ALTER TABLE `film_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genre_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Action'),(4,'Adventure'),(3,'Biography'),(6,'Comedy'),(7,'Documentary'),(5,'Drama'),(11,'Family'),(12,'Fantasy'),(9,'Horror'),(10,'Musical'),(8,'Thriller'),(2,'Western');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lang`
--

DROP TABLE IF EXISTS `lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_name_uindex` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lang`
--

LOCK TABLES `lang` WRITE;
/*!40000 ALTER TABLE `lang` DISABLE KEYS */;
INSERT INTO `lang` VALUES (10,'Arabic'),(14,'Chinese'),(19,'Dutch'),(3,'English'),(17,'Finnish'),(1,'French'),(6,'German'),(11,'Greek'),(8,'Hebrew'),(15,'Hindi'),(18,'Indonesian'),(4,'Italian'),(2,'Japanese'),(13,'Korean'),(16,'Mandarin'),(7,'Nepali'),(20,'Norwegian'),(12,'Nyanja'),(5,'Russian'),(9,'Spanish'),(21,'Swedish');
/*!40000 ALTER TABLE `lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_lang_film`
--

DROP TABLE IF EXISTS `link_lang_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_lang_film` (
  `id` int NOT NULL AUTO_INCREMENT,
  `film_id` int NOT NULL,
  `lang_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_lang_film_film_info_id_fk` (`film_id`),
  KEY `link_lang_film_lang_id_fk` (`lang_id`),
  CONSTRAINT `link_lang_film_film_info_id_fk` FOREIGN KEY (`film_id`) REFERENCES `film_info` (`id`),
  CONSTRAINT `link_lang_film_lang_id_fk` FOREIGN KEY (`lang_id`) REFERENCES `lang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_lang_film`
--

LOCK TABLES `link_lang_film` WRITE;
/*!40000 ALTER TABLE `link_lang_film` DISABLE KEYS */;
INSERT INTO `link_lang_film` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,3,5),(6,3,6),(7,3,3),(8,4,7),(9,4,8),(10,4,6),(11,4,3),(12,5,4),(13,5,1),(14,5,6),(15,5,3),(16,6,9),(17,6,3),(18,7,9),(19,7,3),(20,7,4),(21,8,10),(22,8,11),(23,8,6),(24,8,3),(25,9,4),(26,9,1),(27,9,3),(28,10,3),(29,11,3),(30,11,12),(31,11,10),(32,12,9),(33,12,3),(34,13,3),(35,14,9),(36,14,13),(37,14,3),(38,15,5),(39,15,3),(40,16,2),(41,17,3),(42,18,3),(43,19,3),(44,20,3),(45,21,1),(46,21,3),(47,22,3),(48,23,9),(49,23,3),(50,24,3),(51,25,3),(52,26,9),(53,27,3),(54,28,3),(55,29,3),(56,30,14),(57,30,3),(58,31,3),(59,32,3),(60,33,9),(61,33,3),(62,34,3),(63,35,3),(64,36,3),(65,37,3),(66,38,6),(67,38,3),(68,39,3),(69,40,3),(70,41,3),(71,42,3),(72,43,3),(73,44,3),(74,45,15),(75,46,3),(76,47,3),(77,48,3),(78,49,3),(79,50,3),(80,51,16),(81,51,3),(82,52,4),(83,52,3),(84,53,3),(85,53,13),(86,54,3),(87,55,3),(88,56,3),(89,57,2),(90,57,3),(91,58,3),(92,59,3),(93,60,3),(94,61,13),(95,61,3),(96,62,4),(97,62,9),(98,62,1),(99,62,3),(100,63,3),(101,64,3),(102,65,17),(103,65,18),(104,65,19),(105,65,3),(106,66,9),(107,66,3),(108,67,3),(109,68,3),(110,69,3),(111,70,1),(112,70,20),(113,70,3),(114,71,4),(115,71,1),(116,71,3),(117,72,3),(118,73,3),(119,74,3),(120,75,3),(121,76,3),(122,77,3),(123,78,3),(124,79,9),(125,79,3),(126,80,3),(127,81,3),(128,82,3),(129,83,3),(130,84,3),(131,85,1),(132,85,3),(133,86,21),(134,86,3),(135,87,3),(136,88,3),(137,89,3),(138,90,3),(139,91,3),(140,92,3),(141,93,3),(142,94,3),(143,95,1),(144,95,3),(145,96,3),(146,97,21),(147,97,3),(148,98,3),(149,99,3),(150,100,3);
/*!40000 ALTER TABLE `link_lang_film` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 11:26:03
