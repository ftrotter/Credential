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
-- Table structure for table `Countrys`
--

DROP TABLE IF EXISTS `Countrys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Countrys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Countrys`
--

LOCK TABLES `Countrys` WRITE;
/*!40000 ALTER TABLE `Countrys` DISABLE KEYS */;
INSERT INTO `Countrys` VALUES (1,'AFGHANISTAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'ALBANIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'ALGERIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'AMERICAN SAMOA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'ANDORRA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'ANGOLA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'ANGUILLA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'ANTARCTICA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'ANTIGUA AND BARBUDA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'ARGENTINA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'ARMENIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'ARUBA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'AUSTRALIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'AUSTRIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'AZERBAIJAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'BAHAMAS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'BAHRAIN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'BANGLADESH',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'BARBADOS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'BELARUS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'BELGIUM',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'BELIZE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'BENIN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'BERMUDA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'BHUTAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'BOLIVIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'BOSNIA AND HERZEGOVINA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'BOTSWANA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'BOUVET ISLAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'BRAZIL',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'BRITISH INDIAN OCEAN TERRITORY',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'BRUNEI DARUSSALAM',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'BULGARIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'BURKINA FASO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'BURUNDI',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'CAMBODIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'CAMEROON',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'CAPE VERDE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'CAYMAN ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'CENTRAL AFRICAN REPUBLIC',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'CHAD',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'CHILE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'CHINA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'CHRISTMAS ISLAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'COCOS (KEELING) ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'COLOMBIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'COMOROS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'CONGO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'CONGO, THE DEMOCRATIC REPUBLIC OF THE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'COOK ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'COSTA RICA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'CÔTE D\'IVOIRE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'CROATIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'CUBA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'CYPRUS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'CZECH REPUBLIC',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'DENMARK',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'DJIBOUTI',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'DOMINICA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'DOMINICAN REPUBLIC',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'ECUADOR',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'EGYPT',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'EL SALVADOR',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'EQUATORIAL GUINEA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'ERITREA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'ESTONIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'ETHIOPIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'FALKLAND ISLANDS (MALVINAS)',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'FAROE ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'FIJI',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'FINLAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'FRANCE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'FRENCH GUIANA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'FRENCH POLYNESIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'FRENCH SOUTHERN TERRITORIES',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'GABON',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'GAMBIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'GEORGIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'GERMANY',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'GHANA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'GIBRALTAR',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'GREECE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'GREENLAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'GRENADA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'GUADELOUPE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'GUAM',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'GUATEMALA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'GUINEA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'GUINEA-BISSAU',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'GUYANA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'HAITI',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'HEARD ISLAND AND MCDONALD ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'HOLY SEE (VATICAN CITY STATE)',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'HONDURAS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'HONG KONG',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'HUNGARY',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'ICELAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'INDIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'INDONESIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'IRAN, ISLAMIC REPUBLIC OF',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'IRAQ',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'IRELAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'ISRAEL',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'ITALY',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'JAMAICA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'JAPAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'JORDAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'KAZAKHSTAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'KENYA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'KIRIBATI',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'KOREA, REPUBLIC OF',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'KUWAIT',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'KYRGYZSTAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'LATVIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'LEBANON',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'LESOTHO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'LIBERIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'LIBYAN ARAB JAMAHIRIYA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'LIECHTENSTEIN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'LITHUANIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'LUXEMBOURG',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'MACAO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'MADAGASCAR',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'MALAWI',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'MALAYSIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'MALDIVES',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'MALI',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'MALTA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'MARSHALL ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'MARTINIQUE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'MAURITANIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'MAURITIUS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'MAYOTTE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'MICRONESIA, FEDERATED STATES OF',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'MOLDOVA, REPUBLIC OF',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'MONACO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'MONGOLIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'MONTSERRAT',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'MOROCCO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'MOZAMBIQUE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'MYANMAR',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'NAMIBIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'NAURU',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'NEPAL',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'NETHERLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'NETHERLANDS ANTILLES',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'NEW CALEDONIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'NEW ZEALAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'NICARAGUA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'NIGER',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'NIGERIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'NIUE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'NORFOLK ISLAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'NORTHERN MARIANA ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'NORWAY',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'OMAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'PAKISTAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'PALAU',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'PALESTINIAN TERRITORY, OCCUPIED',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'PANAMA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'PAPUA NEW GUINEA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,'PARAGUAY',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,'PERU',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,'PHILIPPINES',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,'PITCAIRN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,'POLAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,'PORTUGAL',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,'PUERTO RICO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,'QATAR',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,'RÉUNION',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,'ROMANIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,'RUSSIAN FEDERATION',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,'RWANDA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,'SAINT HELENA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,'SAINT KITTS AND NEVIS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,'SAINT LUCIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,'SAINT PIERRE AND MIQUELON',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,'SAINT VINCENT AND THE GRENADINES',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,'SAMOA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,'SAN MARINO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,'SAO TOME AND PRINCIPE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,'SAUDI ARABIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,'SENEGAL',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,'SERBIA AND MONTENEGRO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(188,'SEYCHELLES',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,'SIERRA LEONE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,'SINGAPORE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,'SLOVAKIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,'SLOVENIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,'SOLOMON ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,'SOMALIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,'SOUTH AFRICA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,'SPAIN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,'SRI LANKA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,'SUDAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,'SURINAME',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,'SVALBARD AND JAN MAYEN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,'SWAZILAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,'SWEDEN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,'SWITZERLAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,'SYRIAN ARAB REPUBLIC',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,'TAIWAN, PROVINCE OF CHINA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,'TAJIKISTAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,'TANZANIA, UNITED REPUBLIC OF',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(209,'THAILAND',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(210,'TIMOR-LESTE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(211,'TOGO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,'TOKELAU',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,'TONGA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,'TRINIDAD AND TOBAGO',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,'TUNISIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,'TURKEY',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,'TURKMENISTAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,'TURKS AND CAICOS ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,'TUVALU',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,'Ubited States Of America',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,'UGANDA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,'UKRAINE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,'UNITED ARAB EMIRATES',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,'UNITED KINGDOM',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,'UNITED STATES',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,'UNITED STATES MINOR OUTLYING ISLANDS',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,'URUGUAY',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,'US',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,'UZBEKISTAN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,'VANUATU',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,'VENEZUELA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,'VIET NAM',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,'VIRGIN ISLANDS, BRITISH',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(234,'VIRGIN ISLANDS, U.S.',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(235,'WALLIS AND FUTUNA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(236,'WESTERN SAHARA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,'YEMEN',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,'ZAMBIA',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,'ZIMBABWE',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `Countrys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-25  8:47:44