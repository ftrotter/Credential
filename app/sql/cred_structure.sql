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
-- Table structure for table `Addresss`
--

DROP TABLE IF EXISTS `Addresss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Addresss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `State_id` int(11) DEFAULT NULL,
  `City_id` int(11) NOT NULL,
  `County_id` int(11) DEFAULT NULL,
  `Country_id` int(11) NOT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=649 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Billingcompanys`
--

DROP TABLE IF EXISTS `Billingcompanys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Billingcompanys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `Address_id` int(11) NOT NULL,
  `Phone_id` int(11) NOT NULL,
  `Fax_Phone_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `billing_representative` varchar(255) NOT NULL,
  `check_payable_to` varchar(255) NOT NULL,
  `billing_department_if_hospital` varchar(255) NOT NULL,
  `is_bill_electronic` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Carriers`
--

DROP TABLE IF EXISTS `Carriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Carriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Citys`
--

DROP TABLE IF EXISTS `Citys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Citys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `Countys`
--

DROP TABLE IF EXISTS `Countys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Countys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CredentialOrganizations`
--

DROP TABLE IF EXISTS `CredentialOrganizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CredentialOrganizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Address_id` int(11) NOT NULL,
  `Phone_id` int(11) NOT NULL,
  `Fax_Phone_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `credentialing_contact` varchar(255) NOT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Days`
--

DROP TABLE IF EXISTS `Days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DocumentStates`
--

DROP TABLE IF EXISTS `DocumentStates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DocumentStates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DocumentTypes`
--

DROP TABLE IF EXISTS `DocumentTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DocumentTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Documents`
--

DROP TABLE IF EXISTS `Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `DocumentType_id` int(11) DEFAULT NULL,
  `DocumentState_id` int(11) NOT NULL,
  `documentURL` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `select_name` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EducationInstitutions`
--

DROP TABLE IF EXISTS `EducationInstitutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EducationInstitutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `Address_id` int(11) DEFAULT NULL,
  `Phone_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EducationLevels`
--

DROP TABLE IF EXISTS `EducationLevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EducationLevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ethniccodes`
--

DROP TABLE IF EXISTS `Ethniccodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ethniccodes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FormTest`
--

DROP TABLE IF EXISTS `FormTest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FormTest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_date` datetime NOT NULL,
  `Address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Genders`
--

DROP TABLE IF EXISTS `Genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hospitals`
--

DROP TABLE IF EXISTS `Hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hospitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Address_id` int(11) DEFAULT NULL,
  `Phone_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hours`
--

DROP TABLE IF EXISTS `Hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hours` (
  `id` int(11) NOT NULL,
  `Hoursprofile_id` int(11) NOT NULL,
  `Day_id` int(11) NOT NULL,
  `is_no_patients_seen` int(11) NOT NULL,
  `morning_start_hour` int(11) NOT NULL,
  `morning_stop_hour` int(11) NOT NULL,
  `afternoon_start_hour` int(11) NOT NULL,
  `afternoon_stop_hour` int(11) NOT NULL,
  `evening_start_hour` int(11) NOT NULL,
  `evening_stop_hour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Hoursprofiles`
--

DROP TABLE IF EXISTS `Hoursprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hoursprofiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IdentifierTypes`
--

DROP TABLE IF EXISTS `IdentifierTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IdentifierTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Identifiers`
--

DROP TABLE IF EXISTS `Identifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Identifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) NOT NULL,
  `IdentifierType_id` int(11) NOT NULL,
  `Issue_State_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `issue_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3581 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Insurancecarriers`
--

DROP TABLE IF EXISTS `Insurancecarriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Insurancecarriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `Address_id` int(11) NOT NULL,
  `Phone_id` int(11) NOT NULL,
  `Fax_Phone_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Insurancecoverages`
--

DROP TABLE IF EXISTS `Insurancecoverages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Insurancecoverages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Insurancecarrier_id` int(11) NOT NULL,
  `is_self_insured` int(11) NOT NULL,
  `policy_number` varchar(255) NOT NULL,
  `effective_date` datetime NOT NULL,
  `expiration_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `coverage_per_incident` int(11) NOT NULL,
  `coverage_aggregate` int(11) NOT NULL,
  `is_individual_coverage` int(11) NOT NULL,
  `is_group_coverage` int(11) NOT NULL,
  `length_of_time_with_carrier` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Languages`
--

DROP TABLE IF EXISTS `Languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbreviation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Licensecodes`
--

DROP TABLE IF EXISTS `Licensecodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Licensecodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Malpracticeawards`
--

DROP TABLE IF EXISTS `Malpracticeawards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Malpracticeawards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Insurancecoverage_id` int(11) NOT NULL,
  `incident_date` datetime NOT NULL,
  `claim_date` datetime NOT NULL,
  `claim_status` varchar(255) NOT NULL,
  `amount_of_award` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `is_dismissed` int(11) NOT NULL,
  `is_settled_with_prejudice` int(11) NOT NULL,
  `is_settled_without_prejudice` int(11) NOT NULL,
  `is_judgement_for_defendant` int(11) NOT NULL,
  `is_judgement_for_plaintiff` int(11) NOT NULL,
  `is_mediation_or_arbitration` int(11) NOT NULL,
  `description_of_allegation` varchar(255) NOT NULL,
  `description_of_alleged_injury` varchar(255) NOT NULL,
  `is_primary_defendant` int(11) NOT NULL,
  `number_of_codefendants` int(11) NOT NULL,
  `your_involvement_description` varchar(255) NOT NULL,
  `is_in_NPDB` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `Networks`
--

DROP TABLE IF EXISTS `Networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Networks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Notes`
--

DROP TABLE IF EXISTS `Notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) NOT NULL,
  `Notetype_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Notetypes`
--

DROP TABLE IF EXISTS `Notetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notetypes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Panels`
--

DROP TABLE IF EXISTS `Panels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Panels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Patientacceptcodes`
--

DROP TABLE IF EXISTS `Patientacceptcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patientacceptcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Phonecoveragecodes`
--

DROP TABLE IF EXISTS `Phonecoveragecodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phonecoveragecodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Phones`
--

DROP TABLE IF EXISTS `Phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` bigint(15) unsigned DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Practices`
--

DROP TABLE IF EXISTS `Practices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Practices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `select_name` varchar(255) NOT NULL,
  `IRS_name` varchar(255) NOT NULL,
  `Servicecode_id` int(11) NOT NULL,
  `24hour_coverage_answering_service_is` int(11) NOT NULL,
  `24hour_coverage_none_is` int(11) NOT NULL,
  `24hour_coverage_voicemail_service_is` int(11) NOT NULL,
  `24hour_coverage_voicemail_service_other_is` int(11) NOT NULL,
  `accepts_all_new_patients_is` int(11) NOT NULL,
  `accepts_existing_patients_payor_change_is` int(11) NOT NULL,
  `accepts_new_medicaid_patients_is` int(11) NOT NULL,
  `accepts_new_medicare_patients_is` int(11) NOT NULL,
  `accepts_new_patients_referral_is` int(11) NOT NULL,
  `accepts_vary_by_plan_new_patients_explanation` varchar(255) NOT NULL,
  `additional_office_procedures` varchar(255) NOT NULL,
  `anesthesia_admin_classes` varchar(255) NOT NULL,
  `current_practice_location_is` int(11) NOT NULL,
  `address_is_primary` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `group_name_corresponding_tax_id` varchar(255) NOT NULL,
  `group_number_corresponding_tax_id` varchar(255) NOT NULL,
  `handicapped_access_building_is` int(11) NOT NULL,
  `handicapped_access_other` varchar(255) NOT NULL,
  `handicapped_access_parking_is` int(11) NOT NULL,
  `handicapped_access_restroom_is` int(11) NOT NULL,
  `if_hospital_based_department_name` varchar(255) NOT NULL,
  `if_no_current_location_expected_start_date` datetime NOT NULL,
  `interpreters_0_Language_id` int(11) NOT NULL,
  `interpreters_1_Language_id` int(11) NOT NULL,
  `interpreters_2_Language_id` int(11) NOT NULL,
  `interpreters_3_Language_id` int(11) NOT NULL,
  `interpreters_4_Language_id` int(11) NOT NULL,
  `is_ada_accessibility` int(11) NOT NULL,
  `is_age_appropriate_immunizations_services` int(11) NOT NULL,
  `is_allergy_injections_services` int(11) NOT NULL,
  `is_allergy_skin_tests_services` int(11) NOT NULL,
  `is_anesthesia_admin` int(11) NOT NULL,
  `is_asthma_treatments_services` int(11) NOT NULL,
  `is_cardiac_stress_test_services` int(11) NOT NULL,
  `is_care_minor_lacerations_services` int(11) NOT NULL,
  `is_childcare_services` int(11) NOT NULL,
  `is_drawing_blood_services` int(11) NOT NULL,
  `is_ekg` int(11) NOT NULL,
  `is_flexible_sigmoidoscopy_services` int(11) NOT NULL,
  `is_interpreters_avail` int(11) NOT NULL,
  `is_iv_hydration_treatments_services` int(11) NOT NULL,
  `is_lab_services_following` int(11) NOT NULL,
  `is_lab_services_list_certs` int(11) NOT NULL,
  `is_minority_business` int(11) NOT NULL,
  `is_osteopathic_manipulations_services` int(11) NOT NULL,
  `is_other_services` int(11) NOT NULL,
  `is_physical_therapies_services` int(11) NOT NULL,
  `is_provider_cert_adv_cardiac_life_support` int(11) NOT NULL,
  `is_provider_cert_adv_neonatal_life_support` int(11) NOT NULL,
  `is_provider_cert_adv_trauma_life_support` int(11) NOT NULL,
  `is_provider_cert_advanced_ob_life_support` int(11) NOT NULL,
  `is_provider_cert_basic_life_support` int(11) NOT NULL,
  `is_provider_cert_cardio_pulmonary_resuscitation` int(11) NOT NULL,
  `is_provider_cert_other` int(11) NOT NULL,
  `is_provider_cert_pediatric_adv_life_support` int(11) NOT NULL,
  `is_pulmonary_function_tests_services` int(11) NOT NULL,
  `is_radiology_services` int(11) NOT NULL,
  `is_routine_office_gynecology_services` int(11) NOT NULL,
  `is_services_ASL_disabled` int(11) NOT NULL,
  `is_services_TTY_disabled` int(11) NOT NULL,
  `is_services_mental_physical_disabled` int(11) NOT NULL,
  `is_services_other_disabled` int(11) NOT NULL,
  `is_staff_cert_adv_cardiac_life_support` int(11) NOT NULL,
  `is_staff_cert_adv_neonatal_life_support` int(11) NOT NULL,
  `is_staff_cert_adv_trauma_life_support` int(11) NOT NULL,
  `is_staff_cert_advanced_ob_life_support` int(11) NOT NULL,
  `is_staff_cert_basic_life_support` int(11) NOT NULL,
  `is_staff_cert_cardio_pulmonary_resuscitation` int(11) NOT NULL,
  `is_staff_cert_other` int(11) NOT NULL,
  `is_staff_cert_pediatric_adv_life_support` int(11) NOT NULL,
  `is_trans_bus_accessible` int(11) NOT NULL,
  `is_trans_other_accessible` int(11) NOT NULL,
  `is_trans_train_accessible` int(11) NOT NULL,
  `is_tympanometry_audiometry_services` int(11) NOT NULL,
  `is_xray_services_following` int(11) NOT NULL,
  `is_xray_services_list_certs` int(11) NOT NULL,
  `lab_services_certs_list` varchar(255) NOT NULL,
  `limitations_age_top` varchar(255) NOT NULL,
  `limitations_female_only_is` int(11) NOT NULL,
  `limitations_male_only_is` int(11) NOT NULL,
  `limitations_other_explanation` varchar(255) NOT NULL,
  `limitations_other_is` int(11) NOT NULL,
  `location_listed_in_dir_is` int(11) NOT NULL,
  `non_physician_0_Provider_id` int(11) NOT NULL,
  `non_physician_1_Provider_id` int(11) NOT NULL,
  `non_physician_2_Provider_id` int(11) NOT NULL,
  `non_physician_3_Provider_id` int(11) NOT NULL,
  `non_physician_4_Provider_id` int(11) NOT NULL,
  `non_physician_5_Provider_id` int(11) NOT NULL,
  `non_physician_provider_is` int(11) NOT NULL,
  `office_manager_or_contact_fax_Phone_id` int(11) NOT NULL,
  `office_manager_or_cantact_Phone_id` int(11) NOT NULL,
  `other_services_explanation` varchar(255) NOT NULL,
  `provider_cert_adv_cardiac_life_support_expire_date` datetime NOT NULL,
  `provider_cert_adv_neonatal_life_support_expire_date` datetime NOT NULL,
  `provider_cert_adv_trauma_life_support_expire_date` datetime NOT NULL,
  `provider_cert_advanced_ob_life_support_expire_date` datetime NOT NULL,
  `provider_cert_basic_life_support_expire_date` datetime NOT NULL,
  `provider_cert_cardio_pulmonary_resuscitation_expire_date` datetime NOT NULL,
  `provider_cert_other_expire_date` datetime NOT NULL,
  `provider_cert_other_specify` varchar(255) NOT NULL,
  `provider_cert_pediatric_adv_life_support_expire_date` datetime NOT NULL,
  `service_type_group_multi_speciality_is` int(11) NOT NULL,
  `service_type_group_primary_is` int(11) NOT NULL,
  `service_type_group_single_specialty_is` int(11) NOT NULL,
  `service_type_solo_primary_is` int(11) NOT NULL,
  `service_type_solo_specialty_is` int(11) NOT NULL,
  `services_other_disabled_explanation` varchar(255) NOT NULL,
  `site_medicaid_number` varchar(255) NOT NULL,
  `tax_id_number` varchar(255) NOT NULL,
  `trans_other_accessible_explanation` varchar(255) NOT NULL,
  `xray_services_certs_list` varchar(255) NOT NULL,
  `Provider_0_Language_id` int(11) NOT NULL,
  `Provider_1_Language_id` int(11) NOT NULL,
  `Provider_2_Language_id` int(11) NOT NULL,
  `Staff_0_Language_id` int(11) NOT NULL,
  `Staff_1_Language_id` int(11) NOT NULL,
  `Staff_2_Language_id` int(11) NOT NULL,
  `Phone_id` int(11) NOT NULL,
  `Fax_Phone_id` int(11) NOT NULL,
  `Billingcompany_id` int(11) NOT NULL,
  `Address_id` int(11) NOT NULL,
  `CredentialOrganization_id` int(11) NOT NULL,
  `NonPhysician_0_Provider_id` int(11) NOT NULL,
  `NonPhysician_1_Provider_id` int(11) NOT NULL,
  `NonPhysician_2_Provider_id` int(11) NOT NULL,
  `NonPhysician_3_Provider_id` int(11) NOT NULL,
  `NonPhysician_4_Provider_id` int(11) NOT NULL,
  `NonPhysician_5_Provider_id` int(11) NOT NULL,
  `Hoursprofile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Privileges`
--

DROP TABLE IF EXISTS `Privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Privileges` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `ProviderCallcoverage`
--

DROP TABLE IF EXISTS `ProviderCallcoverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderCallcoverage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) NOT NULL,
  `CallCoverage_Provider_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderCarriers`
--

DROP TABLE IF EXISTS `ProviderCarriers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderCarriers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `Carrier_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ProviderCarriers_Providers` (`Provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5054 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderCredentials`
--

DROP TABLE IF EXISTS `ProviderCredentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderCredentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `CredentialOrganization_id` int(11) DEFAULT NULL,
  `credential_date` datetime DEFAULT NULL,
  `recredential_date` datetime DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderEducations`
--

DROP TABLE IF EXISTS `ProviderEducations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderEducations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `ProviderSpeciality_id` int(11) DEFAULT NULL,
  `attendance_period_start` datetime DEFAULT NULL,
  `attendance_period_end` datetime DEFAULT NULL,
  `EducationInstitution_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderEducationsProviderEducations`
--

DROP TABLE IF EXISTS `ProviderEducationsProviderEducations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderEducationsProviderEducations` (
  `ProviderEducation_id` int(11) NOT NULL DEFAULT '0',
  `ProviderEducationsId` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`ProviderEducation_id`,`ProviderEducationsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderHospitals`
--

DROP TABLE IF EXISTS `ProviderHospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderHospitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  `has_hospital_privaleges` tinyint(1) DEFAULT NULL,
  `Hospital_npi` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `ste_apt_etc` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `State_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `fax` int(11) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `is_unrestricted_privileges` tinyint(1) DEFAULT NULL,
  `privileges_type` varchar(255) DEFAULT NULL,
  `is_privileges_temp` tinyint(1) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderLicenses`
--

DROP TABLE IF EXISTS `ProviderLicenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderLicenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `ProviderSpeciality_id` int(11) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `State_id` int(11) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderNetworks`
--

DROP TABLE IF EXISTS `ProviderNetworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderNetworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `Network_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderPartners`
--

DROP TABLE IF EXISTS `ProviderPartners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderPartners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) NOT NULL,
  `Partner_Provider_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderReferences`
--

DROP TABLE IF EXISTS `ProviderReferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderReferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `Reference_Provider_id` int(11) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderSpecialitys`
--

DROP TABLE IF EXISTS `ProviderSpecialitys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderSpecialitys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Provider_id` int(11) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL,
  `Speciality_id` int(11) DEFAULT NULL,
  `Board_id` int(11) DEFAULT NULL,
  `initial_cert_date` datetime DEFAULT NULL,
  `recertification_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `hmo` tinyint(1) DEFAULT NULL,
  `ppo` tinyint(1) DEFAULT NULL,
  `pos` tinyint(1) DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProviderStates`
--

DROP TABLE IF EXISTS `ProviderStates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderStates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Providers`
--

DROP TABLE IF EXISTS `Providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProviderState_id` int(11) DEFAULT NULL,
  `select_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `maiden_name` varchar(255) DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `Birth_Address_id` int(11) DEFAULT NULL,
  `Gender_id` int(11) DEFAULT NULL,
  `is_pcp` smallint(1) DEFAULT NULL,
  `is_specialist` smallint(1) DEFAULT NULL,
  `Home_Phone_id` int(11) DEFAULT NULL,
  `Home_Address_id` int(11) DEFAULT NULL,
  `Corr_Phone_id` int(11) DEFAULT NULL,
  `Corr_Address_id` int(11) DEFAULT NULL,
  `Corr_Fax_Phone_id` int(11) DEFAULT NULL,
  `Corr_email` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `signature_date` datetime DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProvidersProviderSpecialitys`
--

DROP TABLE IF EXISTS `ProvidersProviderSpecialitys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProvidersProviderSpecialitys` (
  `ProviderSpeciality_id` int(11) NOT NULL DEFAULT '0',
  `Provider_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`ProviderSpeciality_id`,`Provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Servicecodes`
--

DROP TABLE IF EXISTS `Servicecodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Servicecodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_by_User_id` int(11) NOT NULL,
  `modified_by_User_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Specialitys`
--

DROP TABLE IF EXISTS `Specialitys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Specialitys` (
  `id` int(11) NOT NULL DEFAULT '0',
  `specialty_abbreviation` varchar(255) DEFAULT NULL,
  `specialty_name` varchar(255) DEFAULT NULL,
  `created_by_User_id` int(11) DEFAULT NULL,
  `modified_by_User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `States`
--

DROP TABLE IF EXISTS `States`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `States` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state_abbr` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TagLinks`
--

DROP TABLE IF EXISTS `TagLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TagLinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL,
  `row_id` int(11) DEFAULT NULL,
  `Tag_id` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Tags`
--

DROP TABLE IF EXISTS `Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Tests`
--

DROP TABLE IF EXISTS `Tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tests` (
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `description` text,
  `somenumber` int(11) DEFAULT NULL,
  `somefloat` float DEFAULT NULL,
  `normaltrue` tinyint(1) DEFAULT NULL,
  `confusingtrue` tinyint(1) DEFAULT NULL,
  `ok_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `laravel_migrations`
--

DROP TABLE IF EXISTS `laravel_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laravel_migrations` (
  `bundle` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`bundle`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rows`
--

DROP TABLE IF EXISTS `rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notused` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `taxonomys`
--

DROP TABLE IF EXISTS `taxonomys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notused` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-06-29 16:56:47
