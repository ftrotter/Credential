-- MySQL dump 10.13  Distrib 5.5.31, for Linux (x86_64)
--
-- Host: localhost    Database: cred
-- ------------------------------------------------------
-- Server version	5.5.31

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
-- Table structure for table `Professioncodes`
--

DROP TABLE IF EXISTS `Professioncodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professioncodes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `abbreviation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professioncodes`
--

LOCK TABLES `Professioncodes` WRITE;
/*!40000 ALTER TABLE `Professioncodes` DISABLE KEYS */;
INSERT INTO `Professioncodes` VALUES (1,'Medical Doctor','MD',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Doctor of Osteopathic Medicine','DO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Doctor of Chiropractic','DC',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Doctor of Naturopathic Medicine','ND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Doctor of Physical Therapy','DPT',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Doctor of Podiatric Medicine','DPM',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Doctor of Optometry','OD',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Doctor of Audiology','AuD',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Doctor of Detal Surgery','DDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Doctor of Dental Medicine','DMD',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Nurse Practitioner','ENP/CNJ',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Facility: Diagnostic & Imaging',NULL,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Facility: Home Health',NULL,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Facility: Surgical Center',NULL,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Facility: Physical Therapy',NULL,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `Professioncodes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-25  8:47:35
