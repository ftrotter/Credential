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
-- Table structure for table `Medicalboards`
--

DROP TABLE IF EXISTS `Medicalboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Medicalboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Address_id` int(11) NOT NULL,
  `Phone_id` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `FaxPhone_id` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicalboards`
--

LOCK TABLES `Medicalboards` WRITE;
/*!40000 ALTER TABLE `Medicalboards` DISABLE KEYS */;
INSERT INTO `Medicalboards` VALUES (1,'American Board of Allergy & Immunology',624,'624','625','www.abai.org','abai@abai.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(2,'American Board of Anesthesiology',625,'626','627','www.theaba.org','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(3,'American Board of Colon and Rectal Surgery',626,'628','629','www.abcrs.org','admin@abcrs.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(4,'American Board of Dermatology',627,'630','631','www.abderm.org','abderm@hfhs.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(5,'American Board of Emergency Medicine',628,'632','633','www.abem.org','abem@abem.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(6,'American Board of Family Medicine',629,'634','635','www.theabfm.org','help@theabfm.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(7,'American Board of Internal Medicine',630,'636','637','www.abim.org','request@abim.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(8,'American Board of Medical Genetics',631,'638','639','www.abmg.org','abmg@genetics.faseb.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(9,'American Board of Multiple Specialties in Podiatry',632,'640','641','www.abmsp.org','msp@ptcny.com',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(10,'American Board of Neurological Surgery',633,'642','643','www.abns.org','abns@tmh.tmc.edu',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(11,'American Board of Nuclear Medicine',634,'644','645','www.abnm.org','abnm@abnm.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(12,'American Board of Obstetrics and Gynecology',635,'646','647','www.abog.org','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(13,'American Board of Ophthalmology',636,'648','649','www.abop.org','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(14,'American Board of Orthopaedic Surgery',637,'650','651','www.abos.org','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(15,'American Board of Otolaryngology',638,'652','653','www.aboto.org','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(16,'American Board of Pathology',639,'654','655','www.abpath.org','questions@abpath.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(17,'American Board of Pediatrics ',640,'656','657','www.abp.org','abpeds@abpeds.org ',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(18,'American Board of Physical Medicine and Rehabilitation',641,'658','659','www.abpmr.org','info@abpmr.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(19,'American Board of Plastic Surgery',642,'660','661','www.abplsurg.org','info@abplsurg.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(20,'American Board of Preventive Medicine',643,'662','663','www.abprevmed.org','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(21,'American Board of Psychiatry & Neurology',644,'664','665','www.abpn.com','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(22,'American Board of Radiology',645,'666','667','www.theabr.org','information@theabr.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(23,'American Board of Surgery',646,'668','669','www.absurgery.org','itweb@absurgery.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(24,'American Board of Thoracic Surgery',647,'670','671','www.abts.org','info@abts.org',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(25,'American Board of Urology',648,'672','673','www.abu.org','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36'),(26,'American Medical Association',0,'0','0','','',0,0,'2013-06-25 08:38:36','2013-06-25 08:38:36');
/*!40000 ALTER TABLE `Medicalboards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-29 16:56:47
