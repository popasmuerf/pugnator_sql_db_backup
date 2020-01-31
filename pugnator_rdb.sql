-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: pugnator_rdb
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.16.04.2

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `street_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `zipcode_id` bigint(20) NOT NULL,
  KEY `city_id` (`city_id`),
  KEY `state_id` (`state_id`),
  KEY `zipcode_id` (`zipcode_id`),
  KEY `street_id` (`street_id`,`city_id`,`state_id`,`zipcode_id`),
  CONSTRAINT `address_ibfk_10` FOREIGN KEY (`street_id`) REFERENCES `street` (`street_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_11` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_12` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_13` FOREIGN KEY (`zipcode_id`) REFERENCES `zipcodes` (`zipcode_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_3` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_4` FOREIGN KEY (`street_id`) REFERENCES `street` (`street_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_5` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_6` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_7` FOREIGN KEY (`street_id`) REFERENCES `street` (`street_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_8` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`) ON DELETE CASCADE,
  CONSTRAINT `address_ibfk_9` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `city_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'New York','2020-01-31 17:32:01'),(2,'Boston','2020-01-31 17:32:02'),(3,'Philadelphia','2020-01-31 17:32:02'),(4,'Washington DC','2020-01-31 17:32:02'),(5,'Chicago','2020-01-31 17:32:02'),(6,'Germantown','2020-01-31 17:32:02'),(7,'Charlottesville','2020-01-31 17:32:02');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplines` (
  `discipline_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`discipline_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'Judo','Judo (柔道, jūdō, Japanese pronunciation: [dʑɯꜜːdoː], lit. \"gentle way\") is generally categorized as a modern martial art, which has since evolved into a combat and Olympic sport. The sport was originally created in 1882 by Jigoro Kano (嘉納治五郎) as a physical, mental, and moral pedagogy in Japan. Judo\'s most prominent feature is its competitive element, where the objective is to either throw or take down an opponent to the ground, immobilize or otherwise subdue an opponent with a pin, or force an opponent to submit with a joint lock or a choke. Strikes and thrusts by hands and feet as well as weapons defences are a part of judo, but only in pre-arranged forms (kata, 形) and are not allowed in judo competition or free practice (randori, 乱取り). A judo practitioner is called a judoka. ','2020-01-31 17:53:34','https://judoinfo.com/'),(2,'Judo','Judo (柔道, jūdō, Japanese pronunciation: [dʑɯꜜːdoː], lit. \"gentle way\") is generally categorized as a modern martial art, which has since evolved into a combat and Olympic sport. The sport was originally created in 1882 by Jigoro Kano (嘉納治五郎) as a physical, mental, and moral pedagogy in Japan. Judo\'s most prominent feature is its competitive element, where the objective is to either throw or take down an opponent to the ground, immobilize or otherwise subdue an opponent with a pin, or force an opponent to submit with a joint lock or a choke. Strikes and thrusts by hands and feet as well as weapons defences are a part of judo, but only in pre-arranged forms (kata, 形) and are not allowed in judo competition or free practice (randori, 乱取り). A judo practitioner is called a judoka. ','2020-01-31 17:56:10','https://judoinfo.com/'),(3,'Brazilian Jiujitsu','Brazilian jiu-jitsu (/dʒuːˈdʒɪtsuː/; Portuguese: [ˈʒiw ˈʒit(i)su], [ˈʒu ˈʒit(i)su], [dʒiˈu dʒit(i)ˈsu]) (BJJ; Portuguese: jiu-jitsu brasileiro) is a self-defense system, martial art and combat sport system that focuses on grappling with particular emphasis on ground fighting. Brazilian jiu-jitsu was developed from Kodokan judo ground fighting (newaza) fundamentals that were taught by a number of Japanese individuals including Takeo Yano, Mitsuyo Maeda, Soshihiro Satake, and Isao Okano. Brazilian jiu-jitsu eventually came to be its own defined combat sport through the innovations, practices, and adaptation of judo.','2020-01-31 17:56:10','https://www.bjjheroes.com/bjj-news/brazilian-jiu-jitsu'),(4,'Sambo','Sambo (Russian: са́мбо, IPA: [ˈsambə]; самозащита без оружия) is a Soviet martial art and combat sport. It originated in the Russian SFSR in Soviet Union. The word \"SAMBO\" is an acronym of samozashchita bez oruzhiya, which literally translates as \"self-defence without weapons\". Sambo is relatively modern, since its development began in the early 1920s by the Soviet NKVD and Red Army to improve hand-to-hand combat abilities of the servicemen. It was intended to be a merger of the most effective techniques of other martial arts.','2020-01-31 17:56:10','https://en.wikipedia.org/wiki/Sambo_(martial_art)'),(5,'Greco-Roman Wrestling ','Greco-Roman (US), Graeco-Roman (UK) or classic wrestling (Europe)[2] is a style of wrestling that is practiced worldwide. It was contested at the first modern Olympic Games in 1896 and has been included in every edition of the summer Olympics held since 1904. This style of wrestling forbids holds below the waist; this is the major difference from freestyle wrestling, the other form of wrestling at the Olympics. This restriction results in an emphasis on throws because a wrestler cannot use trips to take an opponent to the ground, or avoid throws by hooking or grabbing the opponent\'s leg.\nAccording to United World Wrestling, Greco-Roman wrestling is one of the six main forms of amateur competitive wrestling practised internationally today. The other five forms are freestyle wrestling, grappling/submission wrestling, beach wrestling, pankration athlima, alysh/belt wrestling and traditional/folk wrestling.','2020-01-31 17:56:10','https://en.wikipedia.org/wiki/Greco-Roman_wrestling'),(6,'Freestlye Wrestling','Freestyle wrestling is a style of amateur wrestling that is practiced throughout the world. Along with Greco-Roman, it is one of the two styles of wrestling contested in the Olympic games. American high school and college wrestling is conducted under different rules and is termed scholastic and collegiate wrestling.\n\nFreestyle wrestling, like collegiate wrestling, has its greatest origins in catch-as-catch-can wrestling. In both styles the ultimate goal is to throw and pin the opponent to the mat, which results in an immediate win. Unlike Greco-Roman, freestyle and collegiate wrestling allow the use of the wrestler\'s or the opponent\'s legs in offense and defense. Freestyle wrestling brings together traditional wrestling, judo, and sambo techniques.','2020-01-31 17:56:10','https://en.wikipedia.org/wiki/Freestyle_wrestling'),(7,'Shuai Jiao','Shuai Jiao (Chinese: 摔跤 or 摔角; pinyin: Shuāijiāo; Wade–Giles: Shuai-chiao) is the term pertaining to the ancient jacket wrestling wushu style of Beijing, Tianjin and Baoding of Hebei Province in the North China Plain which was codified by Shan Pu Ying (善撲营 The Battalion of Excellency in Catching) of the Nei Wu Fu (内務府, Internal Administration Unit of Imperial Household Department). In modern usage it is also the general Mandarin Chinese term for any form of wrestling, both inside and outside China. As a generic name, it may be used to cover various styles of wrestling practised in China in the form of a martial arts system or a sport. The art was introduced to Southern China in the Republican era (see Republic of China (1912–1949)) after 1911.','2020-01-31 17:56:10','https://en.wikipedia.org/wiki/Shuai_jiao');
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dojo_discipline_registration`
--

DROP TABLE IF EXISTS `dojo_discipline_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dojo_discipline_registration` (
  `discipline_id` bigint(20) NOT NULL,
  `dojo_id` bigint(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `discipline_id` (`discipline_id`),
  KEY `dojo_id` (`dojo_id`),
  CONSTRAINT `dojo_discipline_registration_ibfk_1` FOREIGN KEY (`discipline_id`) REFERENCES `disciplines` (`discipline_id`) ON DELETE CASCADE,
  CONSTRAINT `dojo_discipline_registration_ibfk_2` FOREIGN KEY (`dojo_id`) REFERENCES `dojos` (`dojo_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dojo_discipline_registration`
--

LOCK TABLES `dojo_discipline_registration` WRITE;
/*!40000 ALTER TABLE `dojo_discipline_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `dojo_discipline_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dojo_registration`
--

DROP TABLE IF EXISTS `dojo_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dojo_registration` (
  `dojo_id` bigint(20) DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `registration_id` varchar(45) DEFAULT NULL,
  KEY `dojo_id` (`dojo_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `dojo_registration_ibfk_1` FOREIGN KEY (`dojo_id`) REFERENCES `dojos` (`dojo_id`) ON DELETE CASCADE,
  CONSTRAINT `dojo_registration_ibfk_2` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`org_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dojo_registration`
--

LOCK TABLES `dojo_registration` WRITE;
/*!40000 ALTER TABLE `dojo_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `dojo_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dojos`
--

DROP TABLE IF EXISTS `dojos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dojos` (
  `dojo_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(100) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dojo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dojos`
--

LOCK TABLES `dojos` WRITE;
/*!40000 ALTER TABLE `dojos` DISABLE KEYS */;
INSERT INTO `dojos` VALUES (1,'College Park Judo Club','The College Park Judo Club, Inc. is a NON-PROFIT organization dedicated to teaching Kodokan Judo in a family and team oriented manner. Our membership includes recreational and competitive judoka (judo players) of all ages, shapes, colors and sizes. The dojo (practice facility) is conveniently located in College Park, Maryland; a mile inside the Washington beltway.','2020-01-31 15:20:47','http://www.collegeparkjudo.org/','CPJC'),(2,'Washington Judo Club','Our Judo program for both beginners and advanced levels is held at the Yates Field House at Georgetown University in Washington, DC.  Class instruction is available to males and females regardless of age or experience. The class emphasizes individual mastery of the techniques of breaking one\'s fall, maintaining balance, developing skill, coordination, strength, and speed as a necessary foundation for the study of throwing, holding, and allied techniques.\nThe course is taught by World Class instructors and competitors including Yoshi Komori (6th Dan), Tad Nalls (6th Dan) and Fran Vall (6th Dan).  Included in the beginner\'s class is a basic course in self-defense.','2020-01-31 15:47:47','https://www.washingtonjudo.org/','WSHJC'),(3,'NIH Judo Club','The NIH Judo Club offers training in Kodokan judo to people of all ages from 13 and older at all skill levels. Our focus is on judo as an Olympic sport for fitness and recreation. We emphasize classical training in falling, throwing, matwork, chokes and armlocks, as well as kata. Our members are encouraged to compete in local and regional tournaments.\'s class is a basic course in self-defense.','2020-01-31 15:51:41','http://www.nihjudoclub.com/','NIH');
/*!40000 ALTER TABLE `dojos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_registrations`
--

DROP TABLE IF EXISTS `org_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `org_registrations` (
  `user_id` bigint(20) NOT NULL,
  `org_id` bigint(20) NOT NULL,
  `registration_no` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `user_id` (`user_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_registrations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `org_registrations_ibfk_2` FOREIGN KEY (`org_id`) REFERENCES `organizations` (`org_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_registrations`
--

LOCK TABLES `org_registrations` WRITE;
/*!40000 ALTER TABLE `org_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations` (
  `org_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(100) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'International Judo Federation','International Judo Federation','2020-01-31 16:38:50','https://www.ijf.org/','IJF'),(2,'United States Judo Federation','International Judo Federation','2020-01-31 16:38:51','https://www.usjf.com/','USJF'),(3,'United States Judo','United States Judo','2020-01-31 16:38:51','https://www.teamusa.org/USA-Judo','USAJUDO');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Alabama','2020-01-31 18:29:47'),(2,'Alaska','2020-01-31 18:29:47'),(3,'Arizona','2020-01-31 18:29:47'),(4,'Arkansas','2020-01-31 18:29:47'),(5,'California','2020-01-31 18:29:47'),(6,'Colorado','2020-01-31 18:29:47'),(7,'Connectitcut','2020-01-31 18:29:47'),(8,'Delaware','2020-01-31 18:29:47'),(9,'Florida','2020-01-31 18:29:47'),(10,'Georgia','2020-01-31 18:29:47'),(11,'Hawaii','2020-01-31 18:29:47'),(12,'Idaho','2020-01-31 18:29:47'),(13,'Illinois','2020-01-31 18:29:47'),(14,'Indiana','2020-01-31 18:29:47'),(15,'Iowa','2020-01-31 18:29:47'),(16,'Kansas','2020-01-31 18:29:48'),(17,'Kentucky','2020-01-31 18:29:48'),(18,'Louisiana','2020-01-31 18:29:48'),(19,'Main','2020-01-31 18:29:48'),(20,'Maryland','2020-01-31 18:29:48'),(21,'Massachusetts','2020-01-31 18:29:48'),(22,'Michigan','2020-01-31 18:29:48'),(23,'Minnesota','2020-01-31 18:29:48'),(24,'Mississippi','2020-01-31 18:29:48'),(25,'Missouri','2020-01-31 18:29:48'),(26,'Montana','2020-01-31 18:29:48'),(27,'Nebraska','2020-01-31 18:29:48'),(28,'Nevada','2020-01-31 18:29:48'),(29,'New Hampshire','2020-01-31 18:29:48'),(30,'New Jersey','2020-01-31 18:29:48'),(31,'New Mexico','2020-01-31 18:29:48'),(32,'New York','2020-01-31 18:29:48'),(33,'North Carolina','2020-01-31 18:29:48'),(34,'North Dakota','2020-01-31 18:29:48'),(35,'Ohio','2020-01-31 18:29:48'),(36,'Oklahoma','2020-01-31 18:29:48'),(37,'Oregon','2020-01-31 18:29:49'),(38,'Pennsylvania','2020-01-31 18:29:49'),(39,'Rhode Island','2020-01-31 18:29:49'),(40,'South Carolina','2020-01-31 18:29:49'),(41,'South Dakota','2020-01-31 18:29:49'),(42,'Tennessee','2020-01-31 18:29:49'),(43,'Texas','2020-01-31 18:29:49'),(44,'Utah','2020-01-31 18:29:49'),(45,'Vermont','2020-01-31 18:29:49'),(46,'Virginia','2020-01-31 18:29:49'),(47,'Washington','2020-01-31 18:29:49'),(48,'West Virginia','2020-01-31 18:29:49'),(49,'Wisconsin','2020-01-31 18:29:49'),(50,'Wyoming','2020-01-31 18:29:49');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `street`
--

DROP TABLE IF EXISTS `street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `street` (
  `street_number` bigint(20) NOT NULL,
  `street_name` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `street_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `street`
--

LOCK TABLES `street` WRITE;
/*!40000 ALTER TABLE `street` DISABLE KEYS */;
/*!40000 ALTER TABLE `street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Michael','Brown','Dwight','2020-01-31 14:39:25',NULL),(2,'Foo','Bar','tldr','2020-01-31 14:41:07',NULL),(3,'Saeed','Vanderdoost',NULL,'2020-01-31 16:16:06',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zipcodes`
--

DROP TABLE IF EXISTS `zipcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zipcodes` (
  `zipcode_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zip` varchar(45) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`zipcode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zipcodes`
--

LOCK TABLES `zipcodes` WRITE;
/*!40000 ALTER TABLE `zipcodes` DISABLE KEYS */;
INSERT INTO `zipcodes` VALUES (1,'20001','2020-01-31 18:43:51'),(2,'20002','2020-01-31 18:43:51'),(3,'20003','2020-01-31 18:43:51'),(4,'20004','2020-01-31 18:43:51'),(5,'20005','2020-01-31 18:43:51'),(6,'20006','2020-01-31 18:43:51'),(7,'20007','2020-01-31 18:43:51'),(8,'20008','2020-01-31 18:43:51'),(9,'20009','2020-01-31 18:43:51'),(10,'20010','2020-01-31 18:43:51'),(11,'20011','2020-01-31 18:43:51'),(12,'20012','2020-01-31 18:43:51'),(13,'20013','2020-01-31 18:43:51'),(14,'20014','2020-01-31 18:43:51'),(15,'20015','2020-01-31 18:43:52'),(16,'20016','2020-01-31 18:43:52'),(17,'20017','2020-01-31 18:43:52'),(18,'20018','2020-01-31 18:43:52'),(19,'20019','2020-01-31 18:43:52'),(20,'20020','2020-01-31 18:43:52'),(21,'20021','2020-01-31 18:43:52'),(22,'20022','2020-01-31 18:43:52'),(23,'20023','2020-01-31 18:43:52'),(24,'20024','2020-01-31 18:43:52'),(25,'20025','2020-01-31 18:43:52'),(26,'20026','2020-01-31 18:43:52'),(27,'20027','2020-01-31 18:43:52'),(28,'20028','2020-01-31 18:43:52'),(29,'20029','2020-01-31 18:43:52'),(30,'20030','2020-01-31 18:43:52'),(31,'20031','2020-01-31 18:43:52'),(32,'20032','2020-01-31 18:43:52'),(33,'20033','2020-01-31 18:43:52'),(34,'20034','2020-01-31 18:43:52'),(35,'20035','2020-01-31 18:43:52'),(36,'20036','2020-01-31 18:43:52'),(37,'20037','2020-01-31 18:43:52'),(38,'20038','2020-01-31 18:43:52'),(39,'20039','2020-01-31 18:43:52'),(40,'20040','2020-01-31 18:43:52'),(41,'20041','2020-01-31 18:43:53'),(42,'20042','2020-01-31 18:43:53'),(43,'20043','2020-01-31 18:43:53');
/*!40000 ALTER TABLE `zipcodes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-31 13:51:41
