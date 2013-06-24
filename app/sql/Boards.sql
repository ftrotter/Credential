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
-- Table structure for table `Boards`
--

DROP TABLE IF EXISTS `Boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Address_id` int(11) DEFAULT NULL,
  `Phone_id` int(11) DEFAULT NULL,
  `Fax_Phone_id` int(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Boards`
--

LOCK TABLES `Boards` WRITE;
/*!40000 ALTER TABLE `Boards` DISABLE KEYS */;
INSERT INTO `Boards` VALUES (1,'American Board of Allergy & Immunology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'American Board of Anesthesiology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'American Board of Colon and Rectal Surgery',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'American Board of Dermatology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'American Board of Emergency Medicine',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'American Board of Family Medicine',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'American Board of Internal Medicine',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'American Board of Medical Genetics',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'American Board of Multiple Specialties in Podiatry',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'American Board of Neurological Surgery',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'American Board of Nuclear Medicine',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'American Board of Obstetrics and Gynecology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'American Board of Ophthalmology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'American Board of Orthopaedic Surgery',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'American Board of Otolaryngology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'American Board of Pathology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'American Board of Pediatrics ',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'American Board of Physical Medicine and Rehabilitation',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'American Board of Plastic Surgery',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'American Board of Preventive Medicine',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'American Board of Psychiatry & Neurology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'American Board of Radiology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'American Board of Surgery',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'American Board of Thoracic Surgery',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'American Board of Urology',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'American Medical Association',0,0,0,'','',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `Boards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-24 23:10:52
