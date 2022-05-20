-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ayuntamiento
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add constitutive_ act',1,'add_constitutive_act'),
(2,'Can change constitutive_ act',1,'change_constitutive_act'),
(3,'Can delete constitutive_ act',1,'delete_constitutive_act'),
(4,'Can view constitutive_ act',1,'view_constitutive_act'),
(5,'Can add identification',2,'add_identification'),
(6,'Can change identification',2,'change_identification'),
(7,'Can delete identification',2,'delete_identification'),
(8,'Can view identification',2,'view_identification'),
(9,'Can add identification_ type',3,'add_identification_type'),
(10,'Can change identification_ type',3,'change_identification_type'),
(11,'Can delete identification_ type',3,'delete_identification_type'),
(12,'Can view identification_ type',3,'view_identification_type'),
(13,'Can add location',4,'add_location'),
(14,'Can change location',4,'change_location'),
(15,'Can delete location',4,'delete_location'),
(16,'Can view location',4,'view_location'),
(17,'Can add not_ applicable',5,'add_not_applicable'),
(18,'Can change not_ applicable',5,'change_not_applicable'),
(19,'Can delete not_ applicable',5,'delete_not_applicable'),
(20,'Can view not_ applicable',5,'view_not_applicable'),
(21,'Can add ownership_ type',6,'add_ownership_type'),
(22,'Can change ownership_ type',6,'change_ownership_type'),
(23,'Can delete ownership_ type',6,'delete_ownership_type'),
(24,'Can view ownership_ type',6,'view_ownership_type'),
(25,'Can add plane',7,'add_plane'),
(26,'Can change plane',7,'change_plane'),
(27,'Can delete plane',7,'delete_plane'),
(28,'Can view plane',7,'view_plane'),
(29,'Can add privilege',8,'add_privilege'),
(30,'Can change privilege',8,'change_privilege'),
(31,'Can delete privilege',8,'delete_privilege'),
(32,'Can view privilege',8,'view_privilege'),
(33,'Can add proceedings',9,'add_proceedings'),
(34,'Can change proceedings',9,'change_proceedings'),
(35,'Can delete proceedings',9,'delete_proceedings'),
(36,'Can view proceedings',9,'view_proceedings'),
(37,'Can add request',10,'add_request'),
(38,'Can change request',10,'change_request'),
(39,'Can delete request',10,'delete_request'),
(40,'Can view request',10,'view_request'),
(41,'Can add status',11,'add_status'),
(42,'Can change status',11,'change_status'),
(43,'Can delete status',11,'delete_status'),
(44,'Can view status',11,'view_status'),
(45,'Can add user',12,'add_user'),
(46,'Can change user',12,'change_user'),
(47,'Can delete user',12,'delete_user'),
(48,'Can view user',12,'view_user'),
(49,'Can add user_ proceedings',13,'add_user_proceedings'),
(50,'Can change user_ proceedings',13,'change_user_proceedings'),
(51,'Can delete user_ proceedings',13,'delete_user_proceedings'),
(52,'Can view user_ proceedings',13,'view_user_proceedings'),
(53,'Can add property_ accreditation',14,'add_property_accreditation'),
(54,'Can change property_ accreditation',14,'change_property_accreditation'),
(55,'Can delete property_ accreditation',14,'delete_property_accreditation'),
(56,'Can view property_ accreditation',14,'view_property_accreditation'),
(57,'Can add power_ letter',15,'add_power_letter'),
(58,'Can change power_ letter',15,'change_power_letter'),
(59,'Can delete power_ letter',15,'delete_power_letter'),
(60,'Can view power_ letter',15,'view_power_letter'),
(61,'Can add log entry',16,'add_logentry'),
(62,'Can change log entry',16,'change_logentry'),
(63,'Can delete log entry',16,'delete_logentry'),
(64,'Can view log entry',16,'view_logentry'),
(65,'Can add permission',17,'add_permission'),
(66,'Can change permission',17,'change_permission'),
(67,'Can delete permission',17,'delete_permission'),
(68,'Can view permission',17,'view_permission'),
(69,'Can add group',18,'add_group'),
(70,'Can change group',18,'change_group'),
(71,'Can delete group',18,'delete_group'),
(72,'Can view group',18,'view_group'),
(73,'Can add user',19,'add_user'),
(74,'Can change user',19,'change_user'),
(75,'Can delete user',19,'delete_user'),
(76,'Can view user',19,'view_user'),
(77,'Can add content type',20,'add_contenttype'),
(78,'Can change content type',20,'change_contenttype'),
(79,'Can delete content type',20,'delete_contenttype'),
(80,'Can view content type',20,'view_contenttype'),
(81,'Can add session',21,'add_session'),
(82,'Can change session',21,'change_session'),
(83,'Can delete session',21,'delete_session'),
(84,'Can view session',21,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$320000$5o1eOJ2mKzmOohgeWbSZH0$M9tFkZ0QX2oB5rhMjNTM7ZfT0j9wx9GckC1cluu7T8M=','2022-05-11 10:06:18.484135',1,'tristan','','','tristanhdez0@gmail.com',1,1,'2022-05-11 10:05:40.582366');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_constitutive_act`
--

DROP TABLE IF EXISTS `capture_constitutive_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_constitutive_act` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `act_pdf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_applicable_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_constitutive_not_applicable_id_973578c4_fk_capture_n` (`not_applicable_id`),
  CONSTRAINT `capture_constitutive_not_applicable_id_973578c4_fk_capture_n` FOREIGN KEY (`not_applicable_id`) REFERENCES `capture_not_applicable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_constitutive_act`
--

LOCK TABLES `capture_constitutive_act` WRITE;
/*!40000 ALTER TABLE `capture_constitutive_act` DISABLE KEYS */;
INSERT INTO `capture_constitutive_act` VALUES
(1,'store/act_pdf/ecommerce.pdf',2);
/*!40000 ALTER TABLE `capture_constitutive_act` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_identification`
--

DROP TABLE IF EXISTS `capture_identification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_identification` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `identification_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_identificati_identification_type__08e7afb3_fk_capture_i` (`identification_type_id`),
  CONSTRAINT `capture_identificati_identification_type__08e7afb3_fk_capture_i` FOREIGN KEY (`identification_type_id`) REFERENCES `capture_identification_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_identification`
--

LOCK TABLES `capture_identification` WRITE;
/*!40000 ALTER TABLE `capture_identification` DISABLE KEYS */;
INSERT INTO `capture_identification` VALUES
(1,1),
(2,2),
(3,3);
/*!40000 ALTER TABLE `capture_identification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_identification_type`
--

DROP TABLE IF EXISTS `capture_identification_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_identification_type` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `identification_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_identification_type`
--

LOCK TABLES `capture_identification_type` WRITE;
/*!40000 ALTER TABLE `capture_identification_type` DISABLE KEYS */;
INSERT INTO `capture_identification_type` VALUES
(1,'Alto'),
(2,'Media'),
(3,'Baja');
/*!40000 ALTER TABLE `capture_identification_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_location`
--

DROP TABLE IF EXISTS `capture_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_location` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `photo_ubication` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_location`
--

LOCK TABLES `capture_location` WRITE;
/*!40000 ALTER TABLE `capture_location` DISABLE KEYS */;
INSERT INTO `capture_location` VALUES
(1,'store/photo_ubication/image.png','https://www.google.com/maps/place/Valle+De+Los+Sabinos+Arboledas/@20.4311134,-103.2144471,14z/data=!4m5!3m4!1s0x842f481a2dba0e73:0xb88bb612771c5d0!8m2!3d20.415002!4d-103.1828569');
/*!40000 ALTER TABLE `capture_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_not_applicable`
--

DROP TABLE IF EXISTS `capture_not_applicable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_not_applicable` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `not_applicable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_not_applicable`
--

LOCK TABLES `capture_not_applicable` WRITE;
/*!40000 ALTER TABLE `capture_not_applicable` DISABLE KEYS */;
INSERT INTO `capture_not_applicable` VALUES
(1,'No Aplica'),
(2,'Sí Aplica');
/*!40000 ALTER TABLE `capture_not_applicable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_ownership_type`
--

DROP TABLE IF EXISTS `capture_ownership_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_ownership_type` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `ownership_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_ownership_type`
--

LOCK TABLES `capture_ownership_type` WRITE;
/*!40000 ALTER TABLE `capture_ownership_type` DISABLE KEYS */;
INSERT INTO `capture_ownership_type` VALUES
(1,'Derecho Total');
/*!40000 ALTER TABLE `capture_ownership_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_plane`
--

DROP TABLE IF EXISTS `capture_plane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_plane` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `plane_pdf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_plane`
--

LOCK TABLES `capture_plane` WRITE;
/*!40000 ALTER TABLE `capture_plane` DISABLE KEYS */;
INSERT INTO `capture_plane` VALUES
(1,'store/plane_pdf/ecommerce.pdf','Este es un plano de Juanito.');
/*!40000 ALTER TABLE `capture_plane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_power_letter`
--

DROP TABLE IF EXISTS `capture_power_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_power_letter` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `power_letter_pdf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_applicable_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_power_letter_not_applicable_id_5aeee571_fk_capture_n` (`not_applicable_id`),
  CONSTRAINT `capture_power_letter_not_applicable_id_5aeee571_fk_capture_n` FOREIGN KEY (`not_applicable_id`) REFERENCES `capture_not_applicable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_power_letter`
--

LOCK TABLES `capture_power_letter` WRITE;
/*!40000 ALTER TABLE `capture_power_letter` DISABLE KEYS */;
INSERT INTO `capture_power_letter` VALUES
(1,'store/power_letter_pdf/ecommerce.pdf',2);
/*!40000 ALTER TABLE `capture_power_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_privilege`
--

DROP TABLE IF EXISTS `capture_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_privilege` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `privilege` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_privilege`
--

LOCK TABLES `capture_privilege` WRITE;
/*!40000 ALTER TABLE `capture_privilege` DISABLE KEYS */;
INSERT INTO `capture_privilege` VALUES
(1,'Capturista'),
(2,'Super Usuario');
/*!40000 ALTER TABLE `capture_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_proceedings`
--

DROP TABLE IF EXISTS `capture_proceedings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_proceedings` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `comments` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `accreditation_id` smallint(5) unsigned NOT NULL,
  `constitutive_act_id` smallint(5) unsigned NOT NULL,
  `identification_id` smallint(5) unsigned NOT NULL,
  `location_id` smallint(5) unsigned NOT NULL,
  `plane_id` smallint(5) unsigned NOT NULL,
  `request_id` smallint(5) unsigned NOT NULL,
  `status_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_proceedings_accreditation_id_45ebfe09_fk_capture_p` (`accreditation_id`),
  KEY `capture_proceedings_constitutive_act_id_0dfdf59b_fk_capture_c` (`constitutive_act_id`),
  KEY `capture_proceedings_identification_id_9fcaa950_fk_capture_i` (`identification_id`),
  KEY `capture_proceedings_location_id_043caa74_fk_capture_location_id` (`location_id`),
  KEY `capture_proceedings_plane_id_ed3d2cf3_fk_capture_plane_id` (`plane_id`),
  KEY `capture_proceedings_request_id_17d7399b_fk_capture_request_id` (`request_id`),
  KEY `capture_proceedings_status_id_117230e4_fk_capture_status_id` (`status_id`),
  CONSTRAINT `capture_proceedings_accreditation_id_45ebfe09_fk_capture_p` FOREIGN KEY (`accreditation_id`) REFERENCES `capture_property_accreditation` (`id`),
  CONSTRAINT `capture_proceedings_constitutive_act_id_0dfdf59b_fk_capture_c` FOREIGN KEY (`constitutive_act_id`) REFERENCES `capture_constitutive_act` (`id`),
  CONSTRAINT `capture_proceedings_identification_id_9fcaa950_fk_capture_i` FOREIGN KEY (`identification_id`) REFERENCES `capture_identification` (`id`),
  CONSTRAINT `capture_proceedings_location_id_043caa74_fk_capture_location_id` FOREIGN KEY (`location_id`) REFERENCES `capture_location` (`id`),
  CONSTRAINT `capture_proceedings_plane_id_ed3d2cf3_fk_capture_plane_id` FOREIGN KEY (`plane_id`) REFERENCES `capture_plane` (`id`),
  CONSTRAINT `capture_proceedings_request_id_17d7399b_fk_capture_request_id` FOREIGN KEY (`request_id`) REFERENCES `capture_request` (`id`),
  CONSTRAINT `capture_proceedings_status_id_117230e4_fk_capture_status_id` FOREIGN KEY (`status_id`) REFERENCES `capture_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_proceedings`
--

LOCK TABLES `capture_proceedings` WRITE;
/*!40000 ALTER TABLE `capture_proceedings` DISABLE KEYS */;
INSERT INTO `capture_proceedings` VALUES
(1,'Este es el expediente de Tristán',1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `capture_proceedings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_property_accreditation`
--

DROP TABLE IF EXISTS `capture_property_accreditation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_property_accreditation` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `document_pdf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownership_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_property_acc_ownership_type_id_429876fb_fk_capture_o` (`ownership_type_id`),
  CONSTRAINT `capture_property_acc_ownership_type_id_429876fb_fk_capture_o` FOREIGN KEY (`ownership_type_id`) REFERENCES `capture_ownership_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_property_accreditation`
--

LOCK TABLES `capture_property_accreditation` WRITE;
/*!40000 ALTER TABLE `capture_property_accreditation` DISABLE KEYS */;
INSERT INTO `capture_property_accreditation` VALUES
(1,'store/document_pdf/ecommerce.pdf',1);
/*!40000 ALTER TABLE `capture_property_accreditation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_request`
--

DROP TABLE IF EXISTS `capture_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_request` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `request_pdf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_request`
--

LOCK TABLES `capture_request` WRITE;
/*!40000 ALTER TABLE `capture_request` DISABLE KEYS */;
INSERT INTO `capture_request` VALUES
(1,'store/request_pdf/ecommerce.pdf');
/*!40000 ALTER TABLE `capture_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_status`
--

DROP TABLE IF EXISTS `capture_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_status` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_status`
--

LOCK TABLES `capture_status` WRITE;
/*!40000 ALTER TABLE `capture_status` DISABLE KEYS */;
INSERT INTO `capture_status` VALUES
(1,'Validado'),
(2,'No Validado');
/*!40000 ALTER TABLE `capture_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_user`
--

DROP TABLE IF EXISTS `capture_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_user` (
  `id` smallint(5) unsigned NOT NULL CHECK (`id` >= 0),
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `privilege_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_user_privilege_id_0293ba97_fk_capture_privilege_id` (`privilege_id`),
  CONSTRAINT `capture_user_privilege_id_0293ba97_fk_capture_privilege_id` FOREIGN KEY (`privilege_id`) REFERENCES `capture_privilege` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_user`
--

LOCK TABLES `capture_user` WRITE;
/*!40000 ALTER TABLE `capture_user` DISABLE KEYS */;
INSERT INTO `capture_user` VALUES
(1,'Tristan','123456789',2),
(2,'Admin','123456',2),
(3,'Juan','123456',1);
/*!40000 ALTER TABLE `capture_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capture_user_proceedings`
--

DROP TABLE IF EXISTS `capture_user_proceedings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `capture_user_proceedings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_proceedings_id` smallint(5) unsigned NOT NULL,
  `id_user_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `capture_user_proceed_id_proceedings_id_4ae6542c_fk_capture_p` (`id_proceedings_id`),
  KEY `capture_user_proceedings_id_user_id_597efa82_fk_capture_user_id` (`id_user_id`),
  CONSTRAINT `capture_user_proceed_id_proceedings_id_4ae6542c_fk_capture_p` FOREIGN KEY (`id_proceedings_id`) REFERENCES `capture_proceedings` (`id`),
  CONSTRAINT `capture_user_proceedings_id_user_id_597efa82_fk_capture_user_id` FOREIGN KEY (`id_user_id`) REFERENCES `capture_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_user_proceedings`
--

LOCK TABLES `capture_user_proceedings` WRITE;
/*!40000 ALTER TABLE `capture_user_proceedings` DISABLE KEYS */;
INSERT INTO `capture_user_proceedings` VALUES
(1,1,3);
/*!40000 ALTER TABLE `capture_user_proceedings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2022-05-11 10:06:43.587239','1','Capturista',1,'[{\"added\": {}}]',8,1),
(2,'2022-05-11 10:06:47.702126','2','Super Usuario',1,'[{\"added\": {}}]',8,1),
(3,'2022-05-11 10:06:56.269716','1','Validado',1,'[{\"added\": {}}]',11,1),
(4,'2022-05-11 10:06:59.671860','2','No Validado',1,'[{\"added\": {}}]',11,1),
(5,'2022-05-11 10:07:56.173677','1','Tristan',1,'[{\"added\": {}}]',12,1),
(6,'2022-05-11 10:08:11.407600','2','Admin',1,'[{\"added\": {}}]',12,1),
(7,'2022-05-11 10:26:16.872185','1','No Aplica',1,'[{\"added\": {}}]',5,1),
(8,'2022-05-11 10:26:20.593245','2','Sí Aplica',1,'[{\"added\": {}}]',5,1),
(9,'2022-05-11 10:26:41.044340','1','store/act_pdf/ecommerce.pdf',1,'[{\"added\": {}}]',1,1),
(10,'2022-05-11 10:27:04.943290','1','Alto',1,'[{\"added\": {}}]',3,1),
(11,'2022-05-11 10:27:07.360778','2','Media',1,'[{\"added\": {}}]',3,1),
(12,'2022-05-11 10:27:11.342879','3','Baja',1,'[{\"added\": {}}]',3,1),
(13,'2022-05-11 10:27:29.253136','1','Alto',1,'[{\"added\": {}}]',2,1),
(14,'2022-05-11 10:27:31.536179','2','Media',1,'[{\"added\": {}}]',2,1),
(15,'2022-05-11 10:27:34.323855','3','Baja',1,'[{\"added\": {}}]',2,1),
(16,'2022-05-11 10:30:31.144549','1','store/photo_ubication/image.png',1,'[{\"added\": {}}]',4,1),
(17,'2022-05-11 10:30:48.749148','1','Derecho Total',1,'[{\"added\": {}}]',6,1),
(18,'2022-05-11 10:31:06.931954','1','store/plane_pdf/ecommerce.pdf',1,'[{\"added\": {}}]',7,1),
(19,'2022-05-11 10:31:17.900521','1','store/power_letter_pdf/ecommerce.pdf',1,'[{\"added\": {}}]',15,1),
(20,'2022-05-11 10:34:16.714089','1','store/request_pdf/ecommerce_Vy2H1ZO.pdf',1,'[{\"added\": {}}]',10,1),
(21,'2022-05-11 10:34:34.479599','1','store/request_pdf/ecommerce_Vy2H1ZO.pdf',3,'',10,1),
(22,'2022-05-11 10:34:41.542364','1','store/request_pdf/ecommerce.pdf',1,'[{\"added\": {}}]',10,1),
(23,'2022-05-11 10:37:27.128305','1','store/document_pdf/ecommerce.pdf',1,'[{\"added\": {}}]',14,1),
(24,'2022-05-11 10:38:43.203583','1','1',1,'[{\"added\": {}}]',9,1),
(25,'2022-05-11 10:38:54.229548','1','1',1,'[{\"added\": {}}]',13,1),
(26,'2022-05-11 10:42:06.255030','3','Juan',1,'[{\"added\": {}}]',12,1),
(27,'2022-05-11 10:42:26.795272','1','1',2,'[{\"changed\": {\"fields\": [\"Id user\"]}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(16,'admin','logentry'),
(18,'auth','group'),
(17,'auth','permission'),
(19,'auth','user'),
(1,'capture','constitutive_act'),
(2,'capture','identification'),
(3,'capture','identification_type'),
(4,'capture','location'),
(5,'capture','not_applicable'),
(6,'capture','ownership_type'),
(7,'capture','plane'),
(15,'capture','power_letter'),
(8,'capture','privilege'),
(9,'capture','proceedings'),
(14,'capture','property_accreditation'),
(10,'capture','request'),
(11,'capture','status'),
(12,'capture','user'),
(13,'capture','user_proceedings'),
(20,'contenttypes','contenttype'),
(21,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2022-05-11 10:04:38.101301'),
(2,'auth','0001_initial','2022-05-11 10:04:46.620898'),
(3,'admin','0001_initial','2022-05-11 10:04:48.404637'),
(4,'admin','0002_logentry_remove_auto_add','2022-05-11 10:04:48.445217'),
(5,'admin','0003_logentry_add_action_flag_choices','2022-05-11 10:04:48.494237'),
(6,'contenttypes','0002_remove_content_type_name','2022-05-11 10:04:49.468079'),
(7,'auth','0002_alter_permission_name_max_length','2022-05-11 10:04:50.154990'),
(8,'auth','0003_alter_user_email_max_length','2022-05-11 10:04:50.510547'),
(9,'auth','0004_alter_user_username_opts','2022-05-11 10:04:50.546320'),
(10,'auth','0005_alter_user_last_login_null','2022-05-11 10:04:51.173163'),
(11,'auth','0006_require_contenttypes_0002','2022-05-11 10:04:51.197866'),
(12,'auth','0007_alter_validators_add_error_messages','2022-05-11 10:04:51.232006'),
(13,'auth','0008_alter_user_username_max_length','2022-05-11 10:04:51.621348'),
(14,'auth','0009_alter_user_last_name_max_length','2022-05-11 10:04:52.046307'),
(15,'auth','0010_alter_group_name_max_length','2022-05-11 10:04:52.413523'),
(16,'auth','0011_update_proxy_permissions','2022-05-11 10:04:52.452003'),
(17,'auth','0012_alter_user_first_name_max_length','2022-05-11 10:04:52.815193'),
(18,'capture','0001_initial','2022-05-11 10:05:08.559351'),
(19,'sessions','0001_initial','2022-05-11 10:05:09.414899'),
(20,'capture','0002_alter_constitutive_act_act_pdf_alter_plane_plane_pdf_and_more','2022-05-11 10:25:19.645027'),
(21,'capture','0003_alter_location_photo_ubication','2022-05-11 10:28:57.276817');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('hc5n0q3c26urr5epcjpp8la6aagywtwx','.eJxVjEEOwiAQAP_C2RCW4kI9evcNZBcWWzUlKe3J-HdD0oNeZybzVpH2bYp7kzXOWV0UqNMvY0pPWbrID1ruVae6bOvMuif6sE3fapbX9Wj_BhO1qW_Rgj8DgSkuY2EMRYQFk4zjAOSsLYYMj5mHLENwhIEAkrBP6INF9fkC6Ts4Kg:1nojEY:AGZHfi28GAC1zXVSEe6bgTalgjMJC1o1zSRkKcjSHdI','2022-05-25 10:06:18.509275');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11  7:24:55
