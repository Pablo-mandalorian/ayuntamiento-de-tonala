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
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add proceedings',7,'add_proceedings'),
(26,'Can change proceedings',7,'change_proceedings'),
(27,'Can delete proceedings',7,'delete_proceedings'),
(28,'Can view proceedings',7,'view_proceedings'),
(29,'Can add constitutive_ act',8,'add_constitutive_act'),
(30,'Can change constitutive_ act',8,'change_constitutive_act'),
(31,'Can delete constitutive_ act',8,'delete_constitutive_act'),
(32,'Can view constitutive_ act',8,'view_constitutive_act'),
(33,'Can add location',9,'add_location'),
(34,'Can change location',9,'change_location'),
(35,'Can delete location',9,'delete_location'),
(36,'Can view location',9,'view_location'),
(37,'Can add status',10,'add_status'),
(38,'Can change status',10,'change_status'),
(39,'Can delete status',10,'delete_status'),
(40,'Can view status',10,'view_status'),
(41,'Can add identification_ type',11,'add_identification_type'),
(42,'Can change identification_ type',11,'change_identification_type'),
(43,'Can delete identification_ type',11,'delete_identification_type'),
(44,'Can view identification_ type',11,'view_identification_type'),
(45,'Can add identification',12,'add_identification'),
(46,'Can change identification',12,'change_identification'),
(47,'Can delete identification',12,'delete_identification'),
(48,'Can view identification',12,'view_identification'),
(49,'Can add request',13,'add_request'),
(50,'Can change request',13,'change_request'),
(51,'Can delete request',13,'delete_request'),
(52,'Can view request',13,'view_request'),
(53,'Can add user_ proceedings',14,'add_user_proceedings'),
(54,'Can change user_ proceedings',14,'change_user_proceedings'),
(55,'Can delete user_ proceedings',14,'delete_user_proceedings'),
(56,'Can view user_ proceedings',14,'view_user_proceedings'),
(57,'Can add ownership_ type',15,'add_ownership_type'),
(58,'Can change ownership_ type',15,'change_ownership_type'),
(59,'Can delete ownership_ type',15,'delete_ownership_type'),
(60,'Can view ownership_ type',15,'view_ownership_type'),
(61,'Can add user',16,'add_user'),
(62,'Can change user',16,'change_user'),
(63,'Can delete user',16,'delete_user'),
(64,'Can view user',16,'view_user'),
(65,'Can add plane',17,'add_plane'),
(66,'Can change plane',17,'change_plane'),
(67,'Can delete plane',17,'delete_plane'),
(68,'Can view plane',17,'view_plane'),
(69,'Can add not_ applicable',18,'add_not_applicable'),
(70,'Can change not_ applicable',18,'change_not_applicable'),
(71,'Can delete not_ applicable',18,'delete_not_applicable'),
(72,'Can view not_ applicable',18,'view_not_applicable'),
(73,'Can add property_ accreditation',19,'add_property_accreditation'),
(74,'Can change property_ accreditation',19,'change_property_accreditation'),
(75,'Can delete property_ accreditation',19,'delete_property_accreditation'),
(76,'Can view property_ accreditation',19,'view_property_accreditation'),
(77,'Can add power_ letter',20,'add_power_letter'),
(78,'Can change power_ letter',20,'change_power_letter'),
(79,'Can delete power_ letter',20,'delete_power_letter'),
(80,'Can view power_ letter',20,'view_power_letter'),
(81,'Can add privilege',21,'add_privilege'),
(82,'Can change privilege',21,'change_privilege'),
(83,'Can delete privilege',21,'delete_privilege'),
(84,'Can view privilege',21,'view_privilege');
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
(1,'pbkdf2_sha256$320000$f909Ksxel9Q7IpNkgfbcLY$EgfEgEaM3AlBvJKF0b+8ja+WINCJPBW9B8E+xf42GUY=','2022-05-07 00:25:39.903901',1,'tristan','','','tristanhdez0@gmail.com',1,1,'2022-05-07 00:21:44.547575');
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
  `act_pdf` longblob NOT NULL,
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
(1,'%PDF-1.4\n%Óëéá\n1 0 obj\n<</Creator (Chromium)\n/Producer (Skia/PDF m101)\n/CreationDate (D:20220502132232+00\'00\')\n/ModDate (D:20220502132232+00\'00\')>>\nendobj\n3 0 obj\n<</ca 1\n/BM /Normal>>\nendobj\n4 0 obj\n<</CA 1\n/ca 1\n/LC 0\n/LJ 0\n/LW 1\n/ML 4\n/SA true\n/BM /Normal>>\nendobj\n5 0 obj\n<</CA 1\n/ca 1\n/LC 0\n/LJ 0\n/LW 1\n/ML 10\n/SA true\n/BM /Normal>>\nendobj\n7 0 obj\n<</Filter /FlateDecode\n/Length 16012>> stream\nxœí}Û®%¹‘İ{}Åy6à£ä	HšÑÀxÜü²g£Û€Çÿ˜q!×âÎ¬ªF­ìîêÚ;vŞHFÄZßc:õŸ·cüûŸßék©ııèÇßşüÓ§ÿûI~/1–·˜jyıŒoÿö??ı÷ÿôöÆñı<[;Š^eû2Î\roòïûÇ7ûğoÿúé7ÿ˜Şşõÿé%CËé­õS.ö/Ÿşyü»ß*¾‡3ä¯Ş*¼ç³÷óÉÇÍßÏ6.ôŞÖÇÿå)^$xœÜŞÇ…RûéÓ8Û?ÿ8>×÷#ÆS¿¿ãŸPÆãƒsŒÙ„-×\\‡ğ|?Ê¸¬ÈâèÊ£½ıùSIÇ{i)U§–BÏo%Å÷Ã,gMm\\2¥q\\¨v\\?S¿Ëéåı¨%µ!>Gg¥Çql·?F·‰°Ô#œãö©îè1½…|Œqü.8ßs)¥©8çœÆ-ÆÉï½7“c¨Ç0ö¼Ç3×ñT9¼ÓÊ©ÏŸÓ{;B‹C<Fc´ùóÇSµ:Z\"ÂÖbÓ‹Ö÷ÎSLcÚìí½Õ4Î\n9¿Ç£—&7}5~/*<G³Ú[)Ç{JIÏ/ï}<g)r~	ïUš3Äõ½öØ†¸”øŞc<D8†¢ÆEK\Z—:£4kôë¸^Ò.,Ca[-CûÆ]K¡(õ=©Œ.·m¯*lï©C%ƒÜ4œÒïr>º°¥ÑÚqÛzÖqô8vôk“Û†qÛÑí¹aÕ.e7ºÒR”Ô¡•!}ã¶¡µ1äãØøBrÕqÛ¡ÉáÂôjŠãYÇMGœ]û æqµSŸà|?SŒÒßCØÎ0îÆõ‡±œe4aXg9Né­qı28kÔ:T²…ñãgLA:|»Á8)Õ9ä©Ú{®‡ôáøuØ–=ÿPò<ÎÂş†$õ£gÇ¨ÖÑ©£Ñ*­ja<nhöè£ŸÒ)ıÔâèÆ3„7‘õãÌãzm<MÊu^;ŞÃ¡£ÔÊ{=êsi>Òè®1‚ã¹ÃĞI‘ÕX»ÈÆÀŒ®*k­¹Ëè ašÁÏ>ãÜ·Ğƒa—#ƒZñxğ>üÇprÅq×.6/ç„·|Û_ÇgP/`Ïi×ÌGÅ	î>ŒC|€)şzÎ|4÷hO>Nuhw‡z€è½f=”CT`½f=™CRû¯Ôç9d7/›ª¿g#˜CSÓ¯4ÔÃjÅô[vMQ¥ÈñPÃ/oPÑ¯j÷aéÙ¸qLnö¦§¦’y¸Ğ¦Z>57‹#­ê(–’çáGÍäåÜicğİâa8y8×>†ÿ$ËÃµŠ½ëP/sÌÃ·ej»ÍÃ¹ŠµW2ñœ²’³§7ÈÃßÊ9£…Ëm—)×n\'y˜<¼­=…œ=Q®Û^k™¶‹\\nWzÀüãt…9í«qäò™\"“íä^óğ¹£ï“¶{yâáÙe”Ä·šÇî*’±¬Ó¹79,Ë¨]”“×…,—Qı\0^ˆLµÈ\"\"S7–	BY,Ò?­D68ly´j¨º9$G@‘eíy\0¥ÈÄp€¨\"y( -ìé0Å$x<AZeãŸÑ‡\nâYï¦Ø.ü$-Fïc‡J—ŒÛÈ\0ú%EÕyİ\\zlŒ†8œ£Ì‡–>:ÌÓlK}5ì<W›EOF‡©¯ë«wÆ‘Å|b§^LY½g[7{ĞÀ¤ Î8òø.¯Îm¤‡E‰ƒ•t\"V‚ª‹B†è<éØèHA—¼´1‡·á†TMTkó[°\\½Å²†QhËÓ†/>KŸæ\"ÎWÁ2¤Í®†ó\\ml¡(\0ËI0Õáú¬Å]’U«—Œu°r\0Ã\n(â\n—§AéBÅu§\"¦)y0‹&ºüÏiDÜúòS]éJ!Ö”ØÔÚÈ÷5e@UúÍ=dUªTEùØ“*«RŸkôK¼ÏòÍY˜Ú €isâÉHİÁî>)ùÓç¨”&\nŸè¡ºbŒò\0ÎœoQ©§¸¦‰GƒŠ(Kí‚„\\rv0B›E÷â‚ÑŞTÃBBáéB‘Ã!(` Ùõl!ÓIºÌĞU˜¡ïÄæ?šˆı£~šHóøt§IôNë¡@#èáÁ7ĞNf&èpô¸ú˜YcÑ\'ŒHF—ÙØRæmK_ˆàMÕj;t¬q„²Å„^ot&@Ô•Œ…X.YÖF‰É‰?“ÅÕ&óŞx9ù\"ñğ\ZD÷á`¶WƒéŠêz8ûÛtYxáhË·¥õn\"\0\'ˆ·8Kzİ_İ^àé5jºêÌ/\\Ó«·ıål@á9\0½ñS¶·CÀ½I§è¶½Ÿ.ğ£WY€$½òN<mûë1 —Ş¤ÑôÎ½ŞÏÿüé}ú—OïMĞì=\r—7ş/ú%/÷¡¾ßççışy¿ŞïŸ÷ûçışy¿ŞïŸ÷ûçışy¿ŞïŸ÷ûçışy¿Şïï÷?hÀ!ïôöAßã‹¼Çİ%¯ññ°O?ê§ÔôÓèˆ¡–öå‡9·?fxI•ÓFÊ—n/Ûó·–ı·uŞ\Zuğgø ëı`ZçŸ¬1C¯p)ûòÚ‘®›Ç°İ|n¿ÛÍí·kc~îõ~ø|¦G9Ş„îı4,:ê§åÓP§CpXâ#†ö†3ÉWA‹jc¸¼&6+.³Å3¨[ •ÔMÇK8ˆ<”¶‡jÈE2TÄ#\rû¤ÂÚ‹’<c>º‰‡yŞ$>­]y.;ô. 6ÜŸ¨çUXBmêÜ†8šÔTÚóğ6zèğ\nÇ°8^ùÆk£¾ùû¨IPD„¸;¿¿äjÃØ¢€ÆhKU·<Z!Ï-Âñ,ê[ïÉD§ ¸>n:|ëèø(8dö=^›á³Ü_@IÙ¦á‡Ñ‹Phÿ©ÄK¼i8²ˆóà¯ò2!ÂdT8\\m)*Rß\0Ç8:³ù†µ\'Î!ş¸	0É™“SúC¿ÙÁÃ8€ü8?éÀ·7ºH\Z>YœWæŠp÷ûù³×JıóZ!B}nñğÜ6ú~ïëè¿Q?¦AÍdô+z<Eq©G˜=îc#bûúF£(BüÎ#*ÈÇâ\ZãÚ!âqZƒ¥rù>NŞ0E8$hû¡œ\"-™NPãñ¦©Í¬ò\"”®èn3nIß¯‚xo’µƒÙèD(c¡\\*b·øFF¬B}Ù\n:úxè‡ñNvªR:j ´hğÖu¹!ëi»³¼‡U±gzH}é\ZFP>Ô»ç´µ{HÅ:õĞ\0ŸÑëò…®TtÜçÜz}HG§—ƒhÈÄ\\µw|â‹aËË¸¼r\'l¤\"ÅW´NJ$¯aAß\\ßôXˆAïª¬¦—ÂàÅQ	_†™ø4½ t]àytW\ndC¦~²’ı™¸ÔØÙÒäeo8ßL&™õ…é‹Z¶›Í¤åxµò1Æë(ø€u18	Ü”ı	®Í€BƒÙ¡kàùVÂC¢«Ù™bPàu×ØÁ;cÙ‘Càó¡5\0×¯š6&q–Â™ ÙbË\0w°à\"lŠ!Ö´]Fª‘Cl›j¹£bùÁõ×\\pıÁõ×\\ÿÄõt±Å—nøëûïÿôé7ÿõí·¿ıÍ?ıá¿üıøåïşî÷ÿ‡O¿ù£Ûßşô/ã½_W„·*3\0qh÷èÄ?ıôé·Ç%?‡Ä&ÇÿÒøoüÉyüùÈşîíOÿûÓ?üÓ>ıÃŸ¾ğ@Ÿ]àá1ŒtHäX¨ˆ~ªA¢31i•xÅOŸâ©ÓEEÃ?îg$\rn¼üVíÅL>èz?|’ø´…‘$¢i!ı$ó› Ò8ô)êÁrÙ”ª|}9#×vùÍÎÛšğA×ûBØ\'\nPdÁK-A¿\'GŸ.ß\\_“USÙÔìä˜vªÔl MğS™ÙJš8©²iTiBªJÅüÆu{°dµÒ,g7O™Ø³óĞ£JÅò«iŞ?•é!’s„¢²šÊi!Ønx’Š9qC§&ßU&ü$ªL°ÔN6*#RówãâÎy¬«Ä«¨h@£ôjÿLN¤ºö”yÚäŒëT™yääÜ¬jï‰[É~¶Ò8•š—Wm-ì›Æ©åÓ)TĞ?éç7\\cØ»ÂN »‰ÌFÚîfÏ%@2Òõ\rÏ/2éD-Í‡Bã1[j]\"RéÕu2½ä#½:Y¦Ÿ&*c8Djø½FMDs çğæ|\0Š Ráí\r\n#S_réBª%2¡\"vöTB‘\ni±AppLrµÙdA0\0w]ß`(\"“.MÓ¤ì‚“ÁöD:GzZgÖGıûÏjÉÙbÀ\'Y¿GœJ×ˆMuİM\'ÄÊz¬Q†u­¯Ç—³\rg;O› ®ş½Gä@EYIZ9&İ‹ÇqëãhÈFt„¯4jÑ¹@ÜÆ7:iÈ¤	ÑÉE!…‰NCò¦ZÑù\n+a4^£?•5:Ê›ZGçJ \Z§\nl(ÑÙWØL*:MKd|1³yú7;VMùGÿ4M|^ƒÀ¼[ZîbŞ\rnÙ†\ZÏ„–²«BŸ,Ÿ†®ƒëC\'³“ÄpÀbØàv1ÀìŸ¡\nğäPx|(cÔ(2Õ5ÚL½Şq	\0ƒ¥\0é`SŒ‰°> \'ìSğu\"ğWâ8P?@ı\0õÔP?@ı\0õ_¨¿70>˜‰½zd¦¯ÈÌ-2£Q˜?HîÒEbjğT	Xrˆ~ºÄdLê12Ä\'ÙÎ°àÄËo×˜Ì]ï\rÒ„6ƒI!JDBW¯¥ éeQùÉ=AÊÑ¾œm¢ë1¸Î%ÈôºÇW¢6Şúõ“A5H’YidPdW2(Ró†ÀBÍËt¯3QSdW2(ÒW2(¹¯dPdæv˜Šô•†n.¤[ÙŒ\0/Z!y¦‡Í¥,ö!2‰M‘N5l\\PW%LT0ts›•’ÈÄç¤Jş«øœ“¸ È4Lì,tsîçÆE*>§+û½No£ß&ŒqrÁñI‡¸ŒÉà(ÒİD&%l\\0¦9û€ç™³şÕRI!ËÄ[\"$…×@T0¦9q‡>	3w‘útÛ3É0Ÿ4¸£=7TP¤Îù§¶ÄTçŸz%2<d\"(ByØ@Dptø¢üS¥E&­ßx ¥›ñ@‘Iw®W+»ô{Şx He„2ñ@•‰*Œi²Á˜v6ˆã€J¸ğ‹ï¤Ã#Ñ”Å	½ÉÊ}Á	gç$â„Ş‰\'¤Ş¾cXÀÖè0ğ0ƒZ@!@A 7 +SÃÂÆ¡‹`?KeA“¦nÇN+(D§µ4\"„Ó®6>Œ™MÔ¿9sşÑ?M3„#\0d—>ç‚Ç‡BCÙ]¡GàØĞsËÿ¡‹ÙQb0–GÅ˜ÁñbtÙCC\ràË¡.ÓçwÒ«‰;œ8’ˆo@™ üÀ0	°æÄ¨Ã~Â@Õ¤ƒ¿!nó@õÕT?Pı@õÕTÿu¡ú{#7ñK‘›h‘›fäftªFl$rS‚åÔÄŒàS)q†?Êm.MÙs_\nç·”=÷åå·û\\š¸ŞWB\Z¹N”ëÎ“rµ5h‰ØRöô©Nl){¢UŞØR®×Y®\\¯³\\Ùs¼ÒÆ–r½²¥\\¯l)SzMZ¬D4šÜh×Y®ÜnØRö¸“ØRöT¹Î0”TGS5+ı¦tV–Mş´»i®ì™…øRöAf0Ùs	ÃÆ—²gÚÄVn<Í•ÛäK%L¾TÂuš«Äë4W±tÉ–7¾T<±2_*ñ:ÍUâİ4Wñ¤ÎB„©XògmÔËÅ³DëF˜J¼LsO;åñ-ñ0•x!LÅò]•ÆOÕ*–wÆT,‡¶DbL%^S‰w³\\%^g¹J¼Ìr•x7ËUVâ0lTüQÒ®›d©Ä,Éwxk\\~ïÀc)ğø‹&q;A“Ğ#\0)ôàŒûÀ‡Ñ\0@®A’òès¡€f¨@œh+€ª‚?°Rƒi@ıA”`& JlP`J0=áA0NÿæL)·É”`à`J¹]\'¹¦³ÈS‚[¡I:w?‘§óÜQÕ)M—FDiz>äbIsË›ÒÜäòº4‹Ùî¨9Í‹.‡O3¨\r4×Z¯“\\\0P¥\\ï¨Ò°BTi¿y0$ÒóOš„^ ;Áøbf?˜ı`öƒÙf?˜ı`ö/³¿7È‘¾ä®©æCô+‡N_9TæJ¡ñ¹í+ˆJõ?¿£cÛÇDA¤\"£•™©i–™‘OA™H‹ZÅ¾¬ÈH‹\ZšJ[ZÔj)Rª¼1«Ù[çm‘‘ºŞŸmL,ÔûòÚ‘®›K\nMy=cşV¶›Ûo×ÆüÜë}¾1–·ì—²/¯±$g¿æ ½1ËÛÍí·kc~îõ>ß˜œ¨1öåµ19ÑÍ¥J_y=cş–¶›Ûo×ÆüÜë}¾1†û~)ûòÚ8ú\rÆuøæótû-n7·ß®ù¹×û|cj°Ã‹@àğãûûe£,nU\Z5ï?Ëã¤%íïÅOº¿pìÍu÷æÿ;ßøıtÒ Û—×A¯\'\rR;¶Aš§G;p$ûí:è?÷z?øâÆ™½ØtF=H=Lúx]šiâ¹–2„¼-¦ÜO\n!µë¯7ë3?ò¢_ˆç8‹x”8‹xƒt~§UZÓä~kQ±ÈlÖ“V‹)9\\/Ø\"sÚ¹^°…Aå…Ï\"u*»–HÛvÊ»VR+·©^bQ\"u\Z½ø–½P(İ^¼lØ÷œe&\'Rcğka¸Ô¦õôµ~\\d–¬Î+ÍEj°&]Šİ—ŒÚiéºÈäu$n‹Üµ,îè‹BËáEæï7kÙ¼ÈìMˆØ‹Ôß™».VáTFo±p5R«ZfÕ‡õÿ¸êàÎTO\0ˆÂh\n\n Ñ\\Ê\0İƒ¢èFí@‡sÕ\rê-¬DY5×o€R¬BĞÔƒ€–qåè#jL@oQ‹\ZÎE+`(o›AŒe\\\\.VˆÂ\Z°Sà(q–éËö:áœáê+\'…:B÷·±­PGh3ÈƒB¡Í`*u„êZ½UêÕ—>¡RG(s…*uhZ­Ì•:B«®P©#ä¹:kUêÉW	l•:‚½À.ÕâŒ¾¡TGˆîF¶Ra­j ZaFş¨VGğá^«Cß[;—°™¼w÷­VÇ|ïŞjuØ+3¡”àµãb¨Ö±Êu¬ã¸\\Ç¼×ëXÙ[½ùˆ\\¯c6…ëuÌFïõ:f÷P½ÕT°cuøV°c\r\rìXCH;Ö`o;–VPÅ¥=T±céÙV±ci$Uì˜ŠK;–†o;–-PÉe3T²cY×V²cÙ!•ìXö*ø;ú+óÈ €üòÈ €ü—äßEÏŸ¢g™EìCı­tx­­Ìì%x¬°k5qLªU\ZE9ƒ…r÷€Ï,ˆ«š3XLÔ4Ûş[ô\0\r·G>èz_ˆ‹´|xE1[®­Ìê¦µş@]­³Ÿ²¸|¸Èd—=b©FÏDjJ$²áNd»—c*[—© Ù#FeS-Ezöó´³Í.{Vü*Y7á0»™Ñ\0‘M‹èY11ÙT¶¶Bdg.gWod6Ö³‚¬l÷`\"•E÷Ù}ØmÏŠÚÍœÙ·È†¯?L6=HÔQ˜ËmRÂ`›˜kÙ@™f.Áæ¸ÆÉºåƒî?²×ÄÙÀ-Ù>$Ìh‘õaíMáhN&ŠTö#¨*5»T™uP˜.U•Y]¦~*Â§è¸rúd6]¯>éMw®XÍOÏXçô*µ¥\ZŠp£«Í×V?Ù»§\Z0Å7ôbÀ³»%ñ$ûu·LULLç\r`“Ï4ÔÕPv*Š+E•Hyê¬È`sš¨ÚàªX½°¿©²r‡æÑ”;ë3«(n\ZnuNà“¹Ô9Ñï†¥í\0£!¬“û‘ÖÉ‘Ô„ÕóªYÛœYRßLGµÔ=GWÙĞ©8o+—H˜^\'2ƒ4£¥	2Ü`‘:¢®®ii¢º°%L£³EjHˆ™!&®¥‰­<Ä\"uD]ÊĞÒDkWšU6ü‡ì¡U‘‰ RAÔ2Qn£DAGoª«ÈêPÅ¼)¶H³îÔ4\r@$Ã\'Ù‰È†ÓÔ.ƒE‰t¸×Â¶×ÒÕFe«(±`=C­Úæ-^m®·|ƒßY6·\"/âÏ¨ÛêM\Z5[R§_jİÛ\\¦ÿjşê¬y:ïBİRif$xg·8]§Ÿ½†e9Y\Z¾åŒi Ém“J,Oª³€À•LËÂ\02H¸Ú.\"\'¸\"SXÀF&³\0–EHI&¸0uêÀÜ‰Ê_‰…<àı€÷Şx?àı€÷Ş¿DğşŞøGù|üchœ-•”ç²ğÇ,;.Ë$%QPâ!ùDò`ş½‡FâÇ†G,/L£†ù×‘Ğ®1,ùÄ+…™9\n\'¯2Í0ÏÙÌEpˆÔ²V0\"³ìVğ,‘]y–H_y–„Z_y–†_}‰1 R¤b^\'ñ,	ŞÚ¾\0_‘‰Á–gI<x˜î‰g‰L\"Ï™àCg¥agÙ7€x–„¬m¥6(‡†±/<KBŞf¹à0\"³à%ØÖ¯<K¤¯<Kã÷‹gÙfÖú©î<+Õ™\rN×k3_œîÜ,06•šâGÄ³D&0sr«›åËF´Djá{tc›“N Z²ÿâœt¢‘isæ€F°Í\Zë†¹ÒŠf“‰ˆÖè@_ %	V€h‰ÔÖ\Z€h¥6×$€h‰lÎ½´9KCöÒælˆ–ÈfIO²Áv%Z*[D+µI´l/‚é¿q¼<®¶à€oÜÀ_Ğ 7˜…Î¶¡Aµ¸»—à*†Ìƒ¬†:\0Ó§Ú0Õr{¡ZSq-h,¸ÖÔíÈ\\F\0²cÙšfµq-Ø8ìT–X±q-±læZ°{º^¼r-ö$àZğ9àZğM“k±×‚·×‚W×b÷Iã²-ßrÈ4ÒäºI\'–“\'İY`\0®Å°Aú®\\@D\Zî¸Àlf Œ‹Ğ’¬páê²Õ…¾¥¿!\\ò€ùæ˜?`ş€ùæ˜ÿÒÁü{Ã\'õáY5ª‹0eÑ¶ÇO~·oßöïG±Å‚\Z=)¿Ş8JŒ“zÅ¸S/ù‡?¾]fªDfK©™t‰ôu¦Jd¶”\Z¤Kd¶”šI—H_I—´³Òk ]ZäîBºDú:S%Åñ¬ì€Xd×™ª˜f)9@»ÈlM6H—ÈfmºÅ´¬ŸÔ°§‚€¯œK‹w1\"­|øŒÈÄ‚1)[8ÓìÀ‘DúÊ¹´8¢®¤V]N“s‰£gÎÛ•sÅ~å\\\"sp Gìss	jJŸkı©Ñ°DİÓgı\0tb÷ù0®Øˆ4,}B\'\r_¿ÎS\rx¹™§©æ|’æô™\ZªU$;ÒGA¸Dj‰¦ \\±Ï„T.‘]	—H_§©Dö:M%²ë4•H_	—ÊáŠ}®Ø™pá(¸z\\maßàÈ !€#n2€€C\'‚pqw41$\0×5r@abà5”¸¥ßbõßZzºmİb½^t\0ºCİ\"‹=‚éµt5Ñ–Ì€nÅ´Ó-˜<]/]é;Ğ-¸Ğ-¸¥I·Ø}nÁÑn¹?èÖtœi£[p±4|ËÓ@§»y*¸wÒœx§bÀ mth)D·‚t–~Ç;º5aç©\00-ÂI²Áø:O%ˆ;1ù¢&t?Ğı@÷İt?Ğı@÷/º¿7FÒ¾”b=FëZb“<6R¼U´8‰.»ù£—ç®+)·å½À‘U†]³ZO¿ÎøHH“d…´“,ù\'?¾©Jd•¡hOìÍ±è™Î\rLŒ¡*d\"¢%BÑİ¶3-‹šLµBrªˆk‰PM\'odKÄbe­Û\nù:;%21Ü´Ó­½*]&¾%B1âó$Â%Bñ¹1ã\Z\\­ø¬Ä¹B6Wä´Éø‡Õkí“TR‘F2{F´K„šÚËì\'ds™½nÄKÄbÌó\nÙİpTêò¤^¡ïÔk|¿P¯p^©—È„\ZìÜ+œså&5èœ+<©íç÷©n)Ş<¯UáÄ4DçÜÌ‚Æòœ›^Ğ°ŸwU\"D¾Æ*Òë4§~»NT‰ôu¢*œ×‰*‘ù(dçuJd¯óT\"»ÎS‰Ô\n¸’á]Y—üm¬+œÌºä|=®°@aŞjÏéÅCeğğÀ£ÙÊ°ñ­Ù•øÖì·L|‹{¨‰Q\0ºb´€Ã<®@lh\0šÂ5u*n„ÚÆµt„‹•y.h=¬„Ëíh\'\\08)¦Ğ,1[#\\Ò&\\détAøP®Í€s‘¯é\"¯4Y×æ¿@»È×w‘WñÚ(œ-\r$Ü29»pR|¦\"X\0ûÚ „”pCZ`\"…g#Û\0à‘\ZanŒ¢d˜@Üe¹ÉXXHß@y°ıÁöÛl°ıÁöÛÿÆ°ı{#,ı–:Æ½Ô([³­Ràİ\")eÉÕÊ€k´eFZd3´úqQ«ÜµvØ¯7ª’Ïµ>ú|Y}në£Ï›õÑçíúèóf}ôy³>ú¼]}Ş¬>oÖGŸwSW\"}º\Z*rY-2³[æ[ån¶Àr‘™Ù‚m‰l.ò[ô s5 HÄp!VslCDsy!xI9æ2Dğ‘™¹‚é”ã.ÓW¤¯SW£(Ó·“c•¼s¬ñİÇ›®Wuºs¹™º*åº:Zd6èÔè‚½(¨wÊeêª”ëòèâ¬zHÉ>Ú4r%ûhÓ—âŸ˜]‰ÔÎÖe¦…Ñòíº0Z¤¯£K¹.Œ™Ècz%R+¥;™u#è•È®ÓV¥\\§­T¦#¨›‚”I²Ja’…£àÑqµåûù¶@	< à\ròp“Rè :T‹»‰!–bè\0»<È@h¨ jªUm\'É‚údAKÁ²XŸË‚âƒeÁ@À²È’@Š`r`O0MáV%O–%ÆÌ,¦N×;®SVÓyìSVp3`XpG“`±Û¿Zş\rì\nnäŠı%\rÈò¬4pËÓ“¯&e8nEŸ×+Æ	Z}Ş,Š>oEŸ·‹¢Ï›EÑçuQôy»(ú¼,Š>}QôùmMÄ~ûAì±Ä~ûAì_boäüR¤z¤¤µ\'í éZ›æ²CòN>.úQı¨Ç¯7ú!sÆ¥JÛ¹TiÌ¥Æ7/¹.%²+—©™)aIën¦àR\"«ü:™”ÈÌLÁ¤†N»«“Ùµ6œHÍN	;»ÚÜ¶ôUd7Lªß0©~Ã¤úMm¸Òo˜T¿Ö†Ù\r•ê×eÎ\"fšO&4]½áÑw*Õç–²D‘ºúW#R}©\Zw\"Uãuz©¦ëô’È.Dª¦ëì’È^³vkº#R\"}!R5Í…¥ R5İ¥íŠôu³È^ÓvÇ ßL/‰ô•NÕÄtJ¾]§—DúJ§jºÒ)‘]óvEúš·+²×¼]‘]é”H_é”ÊªiÒ©š˜Ná(øs\\m9~¾-$AC€9Üd :(†Nâî2bH€ :`-2Pê\0ô†Ú€N±‚TAAª ± U¬Û‹TÁ@ª`, UdU A0?%˜©P)1b\'Uı…T¹Ñ¥Z®(9¢TËİ¥ê¯+œÙ}¥ê×ÒppˆÄ©Ès§ê7œªßpª~Ë©–\'\"¾p\0œŠƒÈıÂz	XD¯«èµba\Z½~,ìÃ{J»cT€ÓõÚÓŒQÙ$şWc n?¸ıàöƒÛn?¸ıàö/·¿7/-·é¾Ü¦†\n9=ác†?¢ïŸ©LÉÏ\r‡|6tËh±.º‘\")EİŒO^ÃX« •äUK}&2«‡\\hÃ TòÜo­Îa™ï·Vçp¥R<³«Ô9¬\"óİÖêşTª;RgÈ,•¹ûY¡]’Dj+ùÊÚO)•6·[[û.¥27^+\rÊ,RÛn­M­¿ÌíÖÚ´‘™—,´9”H-W±´Y(ÕÃs‹o7uªÌ²øŠmLeÍ®‡úr¹Ï,+/2ñù§Ê¼ŞN=<Y±4ÌÂˆÔR\rK›~&É|m°åŸ›)û|ùğO³¼ÖºB3Œ{UÛù«Í{ÙSÕ8ãÊxú\Zgüí¬¶ë˜\"\ZzD¤^Vlõ\\3ô>–­Å¬wmjœEä×pÕ8#í×\Z“‡Ô8ašRã„7èT˜€öÕ8!ZZmÏ8µ…©ÍÕ6—kÕmÁô¾ê6tZ8nÙGsvÃ-É.hdON&Wm<©Y·Œ²ÆI(’ö¸+1ãª¹]1Ÿ¾êÇÅ<wòÂõD&zT·;Ç¼˜ÇzD‘Y@M‰Y=sßÚ,B\'«wb6WßV/ÑâÖİŠŞ\";ks`d•eÎ^XsòUŸ<Ô\"uŞ±”\"fC¸Bº#2q\ZvÜä\"5÷MŒÙĞµ“ÆŠÌJ°n‹ÔŠÀ\nD&­Edæ*Ù®b¶-ğYà‘ú7;VíùGÿdV>¯À^`Ş+mşÂŸJ6?]O„v²¯BÀ«¡çàıĞÇì\'1\Zğ¨5x^Œ/»hhœ94NºÅğ\0%LeÍ8S«˜ ı\00X	€öÄËxÂBµh†ğWBN?8ıàôƒÓN?8ıàô_§¿;4>\Zm„=4€ÍnO}í–›‡C¯ç8òOÿãí·(Ï¡qƒ?˜%9Ú–.ırÜ`Ñ‘6²‘_t“™ŒĞú\"#ÄR™ŒX²‹ÔñÕA}§#¶(f¦#^Ì%31u«u§#¦˜‚ê\0£¹Ş‰PËWFUf#Õ×Pub#ÕŠıRz•°sc#ÕÍ‘ÙH5³•ZÂ@i3ğ¼‘‘º–ì¯ufD<ùêÜÈH]«×”lX\"W±/“Œ„c’‘pX´	Áƒ¥•n&BÊ°Ó‘a¹6Ğ•øˆe¤™„`ÿ4N±,”\'\\½‚Å‰ËI‚/eİ™‰ˆm…â\Z:é`\'\Zäqaû”6n\"b9)F\"\'xµ~·ôT1ê“¤ˆXÚ•ÙÔvt/ã„‚‹LºÂÙ²K¯åJE„ºˆôE™EÙ9ŠˆuØ\"‘‰¤9éI;=‘ïptxÒyÃZ6jBÏïL­Xädk0Ø	úÀ@™ÊFPhp€K4Œ€°mÈv¤€E¨\0tÓ8`-i\'@™ôø½é< æ¢2íÈ‡#Ø´9§I“ª}\n	û7ç*uR•åÀUà$ÀUØ€«ÀñÓZŠ8<‘·åò˜äM×Htœ(Çån‰`.·LT”ü7‘Öéè‰©,< ¦BÈALea1•…EÄTµˆ«,|#®²p¸ŠW‹;WYØJ\\Å©Ê·EüAğÁüAğ_\"‚w¬!~K¬áüå„\Z|µÄğ+Á×J„£İ­ÏbZP1¾m+*ö“æ¯sMŸ»-ÒøÈ‹~a¥Æ™FWT»ÅP…Xíz)z~‘ÆWuø±ÉW7bŠ¨*œq«!^µ£ë\\¤BoÖ¹Zh‹§JÅŠ…E*ö¨©Ç×ª[gxÕq‚SG²¯3Z\'‚Y-{öT(qİÑ¸ÂU€»¡h¯Š=ZÜæÒC¸Šz·¹×´\n½ş7Å*Ul±ê6«ıYÅÛL‹RaRß@¥R“·¹èL…P_ÁWZv^lXÈ¦bÓ·¹æÍ„ºÿSlsqœiuó“‚ìÈ¤¿MF–`¸h²HsÌü\0)®¬5zÖg~µ*ÅY-	\"Ê*Q_‰ØùÌêÔg¡&êÿQÓ‰Æ*Å™ÚG£šâÜŸŒ4 E¤’¶¤è•¼§ZÉü\\œ¿U#½§\"ŠƒOE-¶/˜Õ\'•Nq\'õO¹’d*)ÎÒ[dT)Î\Z]Ó\0µYHÕ$cMq&u’A§8«­«Á\'}c/tèŒæõ+8ŞªT•Nº¢Èlv€o~Ææ9ƒxN‘\rM–	áÕ 3Z]ÚÚ.Òa­Q7QQQ{iöç×îbÔõ\"õùÖ5J\"›û•ùh›aÜEjIƒP‘3\nÈg#]™¤‰N­S¾#Âá’â¹Tplí`·Yd¾ƒé¼Hm»e\"šÛÃM+™9Y²·3†9±¾,óŒŒ×¿Ù±jğ?ú§é	p\r¸ÜŒ½‹?–=Ñ|úJËÚY6×æı!s%Ë	z¿I9ûå-g×Í¯b(à‚1dğÕ\\vëĞ \0´Páz%ï„*Ğ@@4f8ƒöù`%€HØ£),Àløı•ØÊóÌ?0ÿÀüóÌ?0ÿ·\róß€IŸÀœåô’éàmWl;Z\"Ÿ÷A•x¬ÀJŒ·İ\'§ã =²4]1:w¬|àEø4<U˜ÌJ>Š<7ükËQ£LZå2?}ÊuøÊ·Xôª/gä–¯¿UûBíù ë}!F4Œb±Çp.ö(õ%ÑÌAª(×t$f\"ô]Ã˜=Jæáïb`ö(Â~6	%ƒ=J½gßÙ£ˆ/ìQjH_Øc8_Ø£Ô©¾°G«‘-‹‰=†ó–=ŠøÂÃyú¾éÄEhY¡{ñ+{ŒÇ\r{¡Õ’Úè£ˆ/ôQ„ú(Âú(bÁ÷ÎôQ­ÄÑ¾úá‹8úÇIq!¢Œ¸)SF<QF´„(#Z½qFôqÆÕ•Ä½×_9£ĞÎ1–Ä1îg„€3B™ˆ3åÄ¡˜Ä¡ÂÄ¡î[„i[„[„ÁmlÆIlLl1œ“-ªÙ]cˆ.|q×¦êDA»\"Ü_èj70Ü©m¿rÆ!T€­õ…0wÅâš7rİ´sëØ£¾§ÊŞ•\nl#%²â8dwÌQÅ¾€Ş.ú•;ªĞ¼\r³GË´N\'ú8„“/ñ‹P¿#*öuô~Õ\'Yã7±>—ön/mıÊ\"ƒæ\'Ğ;`Ÿ<R?\Z‘ôx§ìW*I÷ÜßTû•LRKøıwµzWîWFI}É/àÖïıÅÛÚ•c¯_£É€~G+II8²0µ‰CKñöpÅRRj,uæğÇRı=TÒ¯ä’Š0Ëøö`Í2Tìt&˜ã¿Hz¸ÀÃ.ğp‡<\\àáÿ¸ÀwG›òç£MA’È,ßá¦˜½äˆW`Õ=hâuwßÒ>(ü”Ê\n?‰ÖzÄGØ?\Z\n\n/A©tj%ø©§Eˆfüh;iş\ZfüˆÎİƒRxÑ¾Ô´|pÓìÛ¥iùà§ÈaŠu	ûõØŸÂ~½iÚG\\ôKAª˜1MyÓ”·)Î”o¦8S¾%¦)ßÓ”oˆiÊ·Ä4YQ°Îáã!œ3GäR³L›·HyÎH‘gIùf¢3å[zš¬šzçåÚ’UMóØ»;Á”o\':“•b‹›sMV³­°Nån¢3•všÊ\r;Må–¦rÃNU»AöÕ_ìÔ?N0Ã…ğpSÆF<Á(ZB€»\Z½aóê‚qô#‘SôùFN1>D$0’D90ê=†€É@•ˆò@í6v%&e&ÎÅßøŒ„¸Ì‰XLocˆ0Sb“0eâ)/Š*À)jL75¦Š\ZÓİçÏÔYzØ˜n(jL·5¦Š\ZÓ\rEé–¢Æt¥¨1])jL·5¦Š\ZÓ\rEé–¢ÆUú(jL75Z)8íl~GK75¦Š\ZÓEé†¢Æ´¿s¦EQå£STûˆ·×tCQqÏım8İPT´„ß±W«÷÷ñtCQÑ—ü–¿ú}ó¸#òÎMòãùÍçCI–6@ñ6Ğ’@A	Ê úìÁL\"aP¦0¾\rxa¨Ò0iò‰ö_W=¬àa+xXÁÃ\nVğ°‚ÿH¬à»Wå«(%‡_ò¤¢¥$/ê˜Ê²4Ú8‹|üU¦\r79ÛXd}²ñ²ñÑ¹Æ×Yí<`ÈEhà\\=Ô7—0$@•Dh t%Lx\n® Í.0ç`BõÅ–rìœ­	^\0JŸÀ¾Î´Dà3?¡ÎM·ThxÜâôTÅæá‘‚[§?üÄñà–|Ê±ñƒÙ|	&Ì]×çº¨vÉ$Â*§JtÊÜé4“)9	^ Ëî\'	îËN;t`œø:÷z~¾Ô|²âIı|Kp¦:îpóüj]-Ô™ÔQOot¡èEÍNºg$ ÀÓEÇ:g–.…šˆVçD`z1:ºeîñè|,Ìw¾ÔÄ8FÇ×Êc‹óT\Zgì¶¡HÑñı4u‹FìÉÃzW0¾P\\©ı­Â™EYš®´åğÓRüe„æAm`jÑi+Û4Ëè”I»i½R9¹ÒöHët¼Äà£ñ°¡ÓiãĞ1jÓ½ã¢\"t(ğĞ®ËÇšïÀÃŠĞÍÊÇ#ê‘:n¡³ò±İ*hGÃˆ-	TlÀ‰aÙ°\\qk<ó¡`,‡^ÄQlŒ´$Šğ:V¦OÙ„š‡™„‰Ô‰Ô4‹b@¡Eèóh¬û\"ÎPÇu™‰mk2(ÊŞi³½|Øvl¤ùX«O`Îù0C·sÔüuüç¡äÖ5Éƒøİ{Ù½\r”ÚD.íßÜúŠ<#z•\\è\Z€ÍÛb¬È3¯A%ñßÜ=T… aéaÔoÃ¨*¡”šğú¿al…pVE\nÜĞÖJÈ»Ö+OˆÿZˆæ¡x¨ÀC*ğP‡\nüê©ÀwÇeêâ2Y–ù†8ÔË×ª…e´6PÛ}ÜNÎ\Z›÷aš\\,:o“,ém[’Šã¬h‹Æ$„’dk³x9ièe»şjçîI6xÑ.MkmFwğéÚ0•ÎG°ÈĞºÇv†E”ößnÚôA×ûZ*µE=S{¡\" ŒKí†z&ÚÎ‹°3ùÆ_©gòÂN¦É¶›ôoe·RõLm_…$ÚÃŒCj7Ô3õ÷\rIbÄ ,©ßPÏäÛ²u&BÉwp+;õLıJ=“o\nW‰‡%Û>®Çz¦¾\"ê w©¯Øû¢©S˜Œ1ù.w§qÍdÛàu~]Ô3ÇE=óÚS.”×æ{¸gNwÔ3û~~•©g^ÿ¡É™vDçäµ— õböM¹Ã3mOHƒ“}\'ÃÈÌ3¯-iÈ³ïwæ™Ó•yæ´&™DÛrÂ&D=sZ³V 9­ù-PÏì›B–{fİ?ò8OæÙ7šdSË´%%™e¶Í+ãÉÔ3§5Å\'¦Ó¢9½PO:`FğùìÄÓŸ´6&³Mñœí;óÌkWL‚ó¼¶Å$èßF`±\Z&Ğ	Œ\'˜Ç6ô‹¤–€ÍL}ªD|¦ê½0Ï¼¶Æ$65õyc®ú¯Ì“¬|ì	Ì“Mo±D²QĞI²f¡›9.æ™úó$ï°®IÌss6xRòKhy0´óvè+rŒèUò k\06g‹±\"Ç¼•<8ÆóöPB†¥S!P¿\rn ªJ92óœğu²L¨«;ó$X„Y€Â\07°…±0Ã¬¼\'ÂKêax˜ÀÃ&ğ0‡	üš™ÀwÇ Ú—bPeèiåÍk/íxÚÂ5­ôÇ¿ÔŞW²KxÕ4­q®hİò\"eãˆñ½çé\"ëÚN¬[–eÕ#V_ö<kĞÕúëy««k+³¾’<ëÚò¬[6èiçšJ÷•6ZëÜZ½[†éi2«&gO´©\Zö”l·îI«ãÛÜÖ½¯üÖJ½õ<Wo×µ%\\Ïs™w][ÇuO¯5™Õ—“³}íxµ€ïø¹—¹Æ¼Zdx f÷ÔŞª²™Ş×WpõxsÑ#\r\nª¦³]ÑöK¬´·^/“bÔ6]Ê¬ƒÚtIY®:i&ŸšÎ™á¸¦—ÃõZœîwnˆİãÛÊºDSZœ®n„İÓÖ6‡«›ï†Vw§!ËŞÑ6$mí­ˆ¡kkFr£İ\Z¡mN¬@kÚÚ—SÊí7Ú\"ÒuP\"™kGÎ©«rƒ	º¦ÓYøíoqB9¬¤­í.ûÊZncÂòZœ[hÂ6[œ[mŠn6kn:=Ö,»‘j+	Wk–/·Û¶•Y‰l–‚Ù\n5¤Y¶f;g“ÕZšfÌÎWO¶?AY8Ds#îí–fÍ=ŒH[é§kàÚJTån+§ºĞRôìTèLK³€ éU[É´Ğ½–fqF¨hK‚Y™›çò’Ö·4QÖÑ,=X;k™Q³DâÂöÖÒÕ.Çqjµz†Z²ğÕÎq=øƒ¶ò’Ùsø#ŠS_>¦­¬dø\"ksÙ|V[ÉğnŞ‡!Ë¶•Ìî#ÇŠ‘ƒÆ³«†2À©Ciàü]½ÄÛL@(ĞW\04\0\0ÁR\0xË¤a{ÀĞi¡‚±…¿jxÀúë¬°~Àúë¬	`ıİÑ€şùh@Íµ\n7\r…şhmòï¬ªMŠ¾pèçV´ù|‚CM+·¶¥•[Û¼L¼%ç4«$8§YÑùº§ú4¯OÏYAÍ\nÙNjVó~O4áQÛ¬ˆş–ºÔÒKBmóÍ8ªyõ~Î™j^èO¯j¶\'@åL¬æ›pÆV³}öÜ®f$ÎkùšHÛò]\"m³í¶<Úfû&li´-ß¥Ñ6ÛŒ!p\\³]NÎ•ky¥ÒÊGO¥]GRŞº\"eêù½û–Ò·’’ÿVc(Kp5{K(\\D¹‡«#)IÑz<{*í\ZÊ¤]cH)’k´·dÊ¥H»\\êCé™Íöt8·TZWÆÂ)ŸÍ7tàÜPÓíÔ·,R3‚vr¾©KäÄÔeV[í2@Jw]&Jy±bÁB+ví)´5Ş¤ĞÖx“B[ãªÆ)´5Ş¤ĞÖx“B[ã]\nm7)´5Ş¤ĞÖx›B[Q¤ƒTQÍ\rfEİöê[l©Ö5Ş$ÑÖx—D[ãMmÅNPä\Zo“h+vG€yTl£\0;ª¾ãBÛ,®boØfİÓáı«>ógëX‘ÛÀ=7ƒç#g„–×B«7‡\"_è}7§éİ.Óì_1Dä‰1˜ä²1ğ›w‡@›1êÚKd—º6} ªk×Â*Wıvî æf²ÃŸT)Œ“0¾\rRa¨„¾0iËËMß¶æûì°Àşûì°ÿ€ıw&Î/¤)Ô\"~N\Z\"¾§¶ş‰ö·D(FOAÿş‹F(bY¤%–´Èwò™åJZb¡DEZb¹’–X.¤%JCqÒËÊWY¤%–•Ø\"¤%Jê”+i‰ueÔ\0Æ*%ß\0ğêªá`¬«ØÏ$-±RY `m]„€Éu•\ZzWÊ;Î×<| šŸèDZb¥´\'PŒº2¤@EêÊ¤R¦Ri‘°3“–ñ}¦g­+¦°ò¸iÙ…´¤°ÊE­ÆˆÌëJ­f§@™–«ƒDê™–«#SX)l‹´ŒK\0?ÖØˆô•´ˆÌ«j­ÑN\np-½éiIa%ï-Ò\"²Uük±‘zåb-)\\Y‹È¸ÃF[DúJ[DöJ[Dv¥-)Å(D[RpÂâ*6-7Â’ÂFUè:ğ–Û-AUèé@U¨ *[‹ÁU¨sÀU¨ÁU¶ºĞØ\0‡0†€¬m´o¤\0BÒ ÅU6]W!µ“şµ7UÂ“U€ù€7°¡bIÊÿÈjıëä*bê?ÎË	é· ~Ä…¸|±.8+bhì×ˆÍÁ‚«¯WÙÜ*ÑI8`\"ğÔDRÙ©Ÿ…ÿ\'æ[n¸ÊÄ”®BÈ®B®²a¸\n¡¸\nÁ#½(0’ÒKE¹á*ŠË»¿%0ñ`üƒñÆ?ÿ`üƒñÆÿmbü÷Æ#âñmñˆó«ñˆîñˆôG¤¼¸Š|d®’2s)µıÊUDvå*\"}å*\"{á*\"zå*\"{å*Z\r\\E¾^\'Q´¼øW‘2ä¯\\Ed3İ‡p®„o[xXfÑâ*\"å>7®2ğÆó~Š‹*cv¡\"É@÷²VL”µ´jQ•T^EÄ¢\\çPRYuŸ•ŸP•ó…ªœWª\"Ä^©ŠÈ$°m\\EVrùRµÕ\Z‘ùš¶ÕnY±uå*\"}D‘%[¯\\E×k]¸ŠH_¹Š.Øzá*²ZëÊUD*iÈŠ¬Ö²Œ@‘­u‡‹¬ˆÔ—(.²\"ë·|İç\"+\"[ÅĞY© |$²\"2¡‰,KdkÑç²A‘¾’•|8Y‘NV|‡)¸·|ld…®w9oùBVæÓmde6c#+ŞâW²2;g#+³7²²u8à…Æ@DƒĞÚÆ\0Gª($ZleÓ6°RL`1i0p{Sv`<ÙØ\0˜Ãfk`d–ÊOÎ®œ‹®ˆ¹ÿ8?.G@¼§ÜLŸLçòBWÈñ‚Ã\"’Æ¾İò‚`+ä-ÁV6ÇJ„.˜¨\'|5ÑTvëÄhË\r[!¨\0[ÙPl…°l…@\nleC3°Â=°HzWÈ·l…`—Ş=²³ùğ-‰å”PşAùå”Pşoå¿;&¾)&‘ú7Ç$ş²9m‘•¶s•ÆTÅ«_dò§^\'#ö©4‡JLÅjoœ)€©x•–‰©4Ï“ÉÄT¼îGÉÆT¼:H=7¦â…Di‘¼àH#èòÒ$iŸ:ñ*&ÛÔ‰W;9O•Y¥lDeVPáœÎYj…“½*KÚ§N¼€ËÉ9^é¥b*³(Ì¹1¯³1¯3SŒ¨ôÅSBÜyJ˜µk\"•àUnNL%X=œvî“\'Ájçä#W	^e§1I^‘\'õ­¯Ş£	e+EÖëü”“øJ°š@a&\0Ï¼[/Ôˆ°¯3¤¥ëW*¯—$*i£,Á«…Bœ%x£3i	é&Á3$OHLDZ‚—¤Ê<‘¼$ÓY7Ú¢ÅrŞçJ¼%xI*#R3{ÚkR9í\\‰ÖV>*ifíÊÅöBSfrÁÅ`Bza0|,eÑe)İl{P~`pnÈÌŞ`3Ük 3ÜÁà3<”£GÃFé|4Â”û·©%\n’îPN!´lQš]!ÁiX{)­‘r 7« „I2!Ê­$k£DÌÍ4)k“ìXù\r»ŸÜ¦/jÏ‘‡Á]7g„G$¿…ÖƒCÓ7_ˆ~\"·	jCşÔfsÅ*rÚUòîP\r /€hA˜Í†B`6„U`6j`6úÙN‚Ù Â7ì…í¥aåÍyÍ7Ôª|èÀC:ğĞ‡<tà¡ÿ!èÀwG9â7E9Bøj”ãww™/7KŸ¿Y®Z#Šƒ[;´ß•%ûN-°û‰,¿DSşùÓÿØB\nendstream\nendobj\n2 0 obj\n<</Type /Page\n/Resources <</ProcSet [/PDF /Text /ImageB /ImageC /ImageI]\n/ExtGState <</G3 3 0 R\n/G4 4 0 R\n/G5 5 0 R>>\n/Font <</F6 6 0 R>>>>\n/MediaBox [0 0 1254 568.08002]\n/Contents 7 0 R\n/StructParents 0\n/Parent 8 0 R>>\nendobj\n8 0 obj\n<</Type /Pages\n/Count 1\n/Kids [2 0 R]>>\nendobj\n16 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 15 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 0>>]\n/ID (node00000012)>>\nendobj\n15 0 obj\n<</Type /StructElem\n/S /Div\n/P 14 0 R\n/K [16 0 R]\n/ID (node00000011)>>\nendobj\n14 0 obj\n<</Type /StructElem\n/S /Div\n/P 13 0 R\n/K [15 0 R]\n/ID (node00000010)>>\nendobj\n13 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [14 0 R]\n/ID (node00000009)>>\nendobj\n20 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 19 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 1>>]\n/ID (node00000016)>>\nendobj\n19 0 obj\n<</Type /StructElem\n/S /Div\n/P 18 0 R\n/K [20 0 R]\n/ID (node00000015)>>\nendobj\n18 0 obj\n<</Type /StructElem\n/S /Div\n/P 17 0 R\n/K [19 0 R]\n/ID (node00000014)>>\nendobj\n17 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [18 0 R]\n/ID (node00000013)>>\nendobj\n24 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 23 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 2>>]\n/ID (node00000020)>>\nendobj\n23 0 obj\n<</Type /StructElem\n/S /Div\n/P 22 0 R\n/K [24 0 R]\n/ID (node00000019)>>\nendobj\n22 0 obj\n<</Type /StructElem\n/S /Div\n/P 21 0 R\n/K [23 0 R]\n/ID (node00000018)>>\nendobj\n21 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [22 0 R]\n/ID (node00000017)>>\nendobj\n28 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 27 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 3>>]\n/ID (node00000024)>>\nendobj\n27 0 obj\n<</Type /StructElem\n/S /Div\n/P 26 0 R\n/K [28 0 R]\n/ID (node00000023)>>\nendobj\n26 0 obj\n<</Type /StructElem\n/S /Div\n/P 25 0 R\n/K [27 0 R]\n/ID (node00000022)>>\nendobj\n25 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [26 0 R]\n/ID (node00000021)>>\nendobj\n32 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 31 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 4>>]\n/ID (node00000028)>>\nendobj\n31 0 obj\n<</Type /StructElem\n/S /Div\n/P 30 0 R\n/K [32 0 R]\n/ID (node00000027)>>\nendobj\n30 0 obj\n<</Type /StructElem\n/S /Div\n/P 29 0 R\n/K [31 0 R]\n/ID (node00000026)>>\nendobj\n29 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [30 0 R]\n/ID (node00000025)>>\nendobj\n36 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 35 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 5>>]\n/ID (node00000032)>>\nendobj\n35 0 obj\n<</Type /StructElem\n/S /Div\n/P 34 0 R\n/K [36 0 R]\n/ID (node00000031)>>\nendobj\n34 0 obj\n<</Type /StructElem\n/S /Div\n/P 33 0 R\n/K [35 0 R]\n/ID (node00000030)>>\nendobj\n33 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [34 0 R]\n/ID (node00000029)>>\nendobj\n40 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 39 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 6>>]\n/ID (node00000036)>>\nendobj\n39 0 obj\n<</Type /StructElem\n/S /Div\n/P 38 0 R\n/K [40 0 R]\n/ID (node00000035)>>\nendobj\n38 0 obj\n<</Type /StructElem\n/S /Div\n/P 37 0 R\n/K [39 0 R]\n/ID (node00000034)>>\nendobj\n37 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [38 0 R]\n/ID (node00000033)>>\nendobj\n44 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 43 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 7>>]\n/ID (node00000040)>>\nendobj\n43 0 obj\n<</Type /StructElem\n/S /Div\n/P 42 0 R\n/K [44 0 R]\n/ID (node00000039)>>\nendobj\n42 0 obj\n<</Type /StructElem\n/S /Div\n/P 41 0 R\n/K [43 0 R]\n/ID (node00000038)>>\nendobj\n41 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [42 0 R]\n/ID (node00000037)>>\nendobj\n48 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 47 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 8>>]\n/ID (node00000044)>>\nendobj\n47 0 obj\n<</Type /StructElem\n/S /Div\n/P 46 0 R\n/K [48 0 R]\n/ID (node00000043)>>\nendobj\n46 0 obj\n<</Type /StructElem\n/S /Div\n/P 45 0 R\n/K [47 0 R]\n/ID (node00000042)>>\nendobj\n45 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [46 0 R]\n/ID (node00000041)>>\nendobj\n52 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 51 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 9>>]\n/ID (node00000048)>>\nendobj\n51 0 obj\n<</Type /StructElem\n/S /Div\n/P 50 0 R\n/K [52 0 R]\n/ID (node00000047)>>\nendobj\n50 0 obj\n<</Type /StructElem\n/S /Div\n/P 49 0 R\n/K [51 0 R]\n/ID (node00000046)>>\nendobj\n49 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [50 0 R]\n/ID (node00000045)>>\nendobj\n56 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 55 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 10>>]\n/ID (node00000052)>>\nendobj\n55 0 obj\n<</Type /StructElem\n/S /Div\n/P 54 0 R\n/K [56 0 R]\n/ID (node00000051)>>\nendobj\n54 0 obj\n<</Type /StructElem\n/S /Div\n/P 53 0 R\n/K [55 0 R]\n/ID (node00000050)>>\nendobj\n53 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [54 0 R]\n/ID (node00000049)>>\nendobj\n60 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 59 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 11>>]\n/ID (node00000056)>>\nendobj\n59 0 obj\n<</Type /StructElem\n/S /Div\n/P 58 0 R\n/K [60 0 R]\n/ID (node00000055)>>\nendobj\n58 0 obj\n<</Type /StructElem\n/S /Div\n/P 57 0 R\n/K [59 0 R]\n/ID (node00000054)>>\nendobj\n57 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [58 0 R]\n/ID (node00000053)>>\nendobj\n64 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 63 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 12>>]\n/ID (node00000060)>>\nendobj\n63 0 obj\n<</Type /StructElem\n/S /Div\n/P 62 0 R\n/K [64 0 R]\n/ID (node00000059)>>\nendobj\n62 0 obj\n<</Type /StructElem\n/S /Div\n/P 61 0 R\n/K [63 0 R]\n/ID (node00000058)>>\nendobj\n61 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [62 0 R]\n/ID (node00000057)>>\nendobj\n68 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 67 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 13>>]\n/ID (node00000064)>>\nendobj\n67 0 obj\n<</Type /StructElem\n/S /Div\n/P 66 0 R\n/K [68 0 R]\n/ID (node00000063)>>\nendobj\n66 0 obj\n<</Type /StructElem\n/S /Div\n/P 65 0 R\n/K [67 0 R]\n/ID (node00000062)>>\nendobj\n65 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [66 0 R]\n/ID (node00000061)>>\nendobj\n72 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 71 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 14>>]\n/ID (node00000068)>>\nendobj\n71 0 obj\n<</Type /StructElem\n/S /Div\n/P 70 0 R\n/K [72 0 R]\n/ID (node00000067)>>\nendobj\n70 0 obj\n<</Type /StructElem\n/S /Div\n/P 69 0 R\n/K [71 0 R]\n/ID (node00000066)>>\nendobj\n69 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [70 0 R]\n/ID (node00000065)>>\nendobj\n76 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 75 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 15>>]\n/ID (node00000072)>>\nendobj\n75 0 obj\n<</Type /StructElem\n/S /Div\n/P 74 0 R\n/K [76 0 R]\n/ID (node00000071)>>\nendobj\n74 0 obj\n<</Type /StructElem\n/S /Div\n/P 73 0 R\n/K [75 0 R]\n/ID (node00000070)>>\nendobj\n73 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [74 0 R]\n/ID (node00000069)>>\nendobj\n80 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 79 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 16>>]\n/ID (node00000076)>>\nendobj\n79 0 obj\n<</Type /StructElem\n/S /Div\n/P 78 0 R\n/K [80 0 R]\n/ID (node00000075)>>\nendobj\n78 0 obj\n<</Type /StructElem\n/S /Div\n/P 77 0 R\n/K [79 0 R]\n/ID (node00000074)>>\nendobj\n77 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [78 0 R]\n/ID (node00000073)>>\nendobj\n84 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 83 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 17>>]\n/ID (node00000080)>>\nendobj\n83 0 obj\n<</Type /StructElem\n/S /Div\n/P 82 0 R\n/K [84 0 R]\n/ID (node00000079)>>\nendobj\n82 0 obj\n<</Type /StructElem\n/S /Div\n/P 81 0 R\n/K [83 0 R]\n/ID (node00000078)>>\nendobj\n81 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [82 0 R]\n/ID (node00000077)>>\nendobj\n88 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 87 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 18>>]\n/ID (node00000084)>>\nendobj\n87 0 obj\n<</Type /StructElem\n/S /Div\n/P 86 0 R\n/K [88 0 R]\n/ID (node00000083)>>\nendobj\n86 0 obj\n<</Type /StructElem\n/S /Div\n/P 85 0 R\n/K [87 0 R]\n/ID (node00000082)>>\nendobj\n85 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [86 0 R]\n/ID (node00000081)>>\nendobj\n92 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 91 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 19>>]\n/ID (node00000088)>>\nendobj\n91 0 obj\n<</Type /StructElem\n/S /Div\n/P 90 0 R\n/K [92 0 R]\n/ID (node00000087)>>\nendobj\n90 0 obj\n<</Type /StructElem\n/S /Div\n/P 89 0 R\n/K [91 0 R]\n/ID (node00000086)>>\nendobj\n89 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [90 0 R]\n/ID (node00000085)>>\nendobj\n96 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 95 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 20>>]\n/ID (node00000092)>>\nendobj\n95 0 obj\n<</Type /StructElem\n/S /Div\n/P 94 0 R\n/K [96 0 R]\n/ID (node00000091)>>\nendobj\n94 0 obj\n<</Type /StructElem\n/S /Div\n/P 93 0 R\n/K [95 0 R]\n/ID (node00000090)>>\nendobj\n93 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [94 0 R]\n/ID (node00000089)>>\nendobj\n100 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 99 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 21>>]\n/ID (node00000096)>>\nendobj\n99 0 obj\n<</Type /StructElem\n/S /Div\n/P 98 0 R\n/K [100 0 R]\n/ID (node00000095)>>\nendobj\n98 0 obj\n<</Type /StructElem\n/S /Div\n/P 97 0 R\n/K [99 0 R]\n/ID (node00000094)>>\nendobj\n97 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [98 0 R]\n/ID (node00000093)>>\nendobj\n104 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 103 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 22>>]\n/ID (node00000100)>>\nendobj\n103 0 obj\n<</Type /StructElem\n/S /Div\n/P 102 0 R\n/K [104 0 R]\n/ID (node00000099)>>\nendobj\n102 0 obj\n<</Type /StructElem\n/S /Div\n/P 101 0 R\n/K [103 0 R]\n/ID (node00000098)>>\nendobj\n101 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [102 0 R]\n/ID (node00000097)>>\nendobj\n108 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 107 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 23>>]\n/ID (node00000104)>>\nendobj\n107 0 obj\n<</Type /StructElem\n/S /Div\n/P 106 0 R\n/K [108 0 R]\n/ID (node00000103)>>\nendobj\n106 0 obj\n<</Type /StructElem\n/S /Div\n/P 105 0 R\n/K [107 0 R]\n/ID (node00000102)>>\nendobj\n105 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [106 0 R]\n/ID (node00000101)>>\nendobj\n12 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 11 0 R\n/K [13 0 R 17 0 R 21 0 R 25 0 R 29 0 R 33 0 R 37 0 R 41 0 R 45 0 R 49 0 R 53 0 R 57 0 R 61 0 R 65 0 R 69 0 R 73 0 R 77 0 R 81 0 R 85 0 R 89 0 R 93 0 R 97 0 R 101 0 R 105 0 R]\n/ID (node00000008)>>\nendobj\n11 0 obj\n<</Type /StructElem\n/S /Div\n/P 10 0 R\n/K [12 0 R]\n/ID (node00000007)>>\nendobj\n10 0 obj\n<</Type /StructElem\n/S /Document\n/Lang (en-US)\n/P 9 0 R\n/K [11 0 R]\n/ID (node00000003)>>\nendobj\n109 0 obj\n[16 0 R 20 0 R 24 0 R 28 0 R 32 0 R 36 0 R 40 0 R 44 0 R 48 0 R 52 0 R 56 0 R 60 0 R 64 0 R 68 0 R 72 0 R 76 0 R 80 0 R 84 0 R 88 0 R 92 0 R 96 0 R 100 0 R 104 0 R 108 0 R]\nendobj\n110 0 obj\n<</Type /ParentTree\n/Nums [0 109 0 R]>>\nendobj\n111 0 obj\n<</Limits [(node00000003) (node00000104)]\n/Names [(node00000003) 10 0 R (node00000007) 11 0 R (node00000008) 12 0 R (node00000009) 13 0 R (node00000010) 14 0 R (node00000011) 15 0 R (node00000012) 16 0 R (node00000013) 17 0 R (node00000014) 18 0 R (node00000015) 19 0 R (node00000016) 20 0 R (node00000017) 21 0 R (node00000018) 22 0 R (node00000019) 23 0 R (node00000020) 24 0 R (node00000021) 25 0 R (node00000022) 26 0 R (node00000023) 27 0 R (node00000024) 28 0 R (node00000025) 29 0 R (node00000026) 30 0 R (node00000027) 31 0 R (node00000028) 32 0 R (node00000029) 33 0 R (node00000030) 34 0 R (node00000031) 35 0 R (node00000032) 36 0 R (node00000033) 37 0 R (node00000034) 38 0 R (node00000035) 39 0 R (node00000036) 40 0 R (node00000037) 41 0 R (node00000038) 42 0 R (node00000039) 43 0 R (node00000040) 44 0 R (node00000041) 45 0 R (node00000042) 46 0 R (node00000043) 47 0 R (node00000044) 48 0 R (node00000045) 49 0 R (node00000046) 50 0 R (node00000047) 51 0 R (node00000048) 52 0 R (node00000049) 53 0 R (node00000050) 54 0 R (node00000051) 55 0 R (node00000052) 56 0 R (node00000053) 57 0 R (node00000054) 58 0 R (node00000055) 59 0 R (node00000056) 60 0 R (node00000057) 61 0 R (node00000058) 62 0 R (node00000059) 63 0 R (node00000060) 64 0 R (node00000061) 65 0 R (node00000062) 66 0 R (node00000063) 67 0 R (node00000064) 68 0 R (node00000065) 69 0 R (node00000066) 70 0 R (node00000067) 71 0 R (node00000068) 72 0 R (node00000069) 73 0 R (node00000070) 74 0 R (node00000071) 75 0 R (node00000072) 76 0 R (node00000073) 77 0 R (node00000074) 78 0 R (node00000075) 79 0 R (node00000076) 80 0 R (node00000077) 81 0 R (node00000078) 82 0 R (node00000079) 83 0 R (node00000080) 84 0 R (node00000081) 85 0 R (node00000082) 86 0 R (node00000083) 87 0 R (node00000084) 88 0 R (node00000085) 89 0 R (node00000086) 90 0 R (node00000087) 91 0 R (node00000088) 92 0 R (node00000089) 93 0 R (node00000090) 94 0 R (node00000091) 95 0 R (node00000092) 96 0 R (node00000093) 97 0 R (node00000094) 98 0 R (node00000095) 99 0 R (node00000096) 100 0 R (node00000097) 101 0 R (node00000098) 102 0 R (node00000099) 103 0 R (node00000100) 104 0 R (node00000101) 105 0 R (node00000102) 106 0 R (node00000103) 107 0 R (node00000104) 108 0 R]>>\nendobj\n112 0 obj\n<</Kids [111 0 R]>>\nendobj\n9 0 obj\n<</Type /StructTreeRoot\n/K 10 0 R\n/ParentTreeNextKey 1\n/ParentTree 110 0 R\n/IDTree 112 0 R>>\nendobj\n113 0 obj\n<</Type /Catalog\n/Pages 8 0 R\n/MarkInfo <</Type /MarkInfo\n/Marked true>>\n/StructTreeRoot 9 0 R>>\nendobj\n114 0 obj\n<</Length1 40264\n/Filter /FlateDecode\n/Length 22978>> stream\nxœì½	tTEÖ8~«Ş{½/¯;½w\'İNw H!I³„-a‹	I„°#;‚ã#*ãŒŒË(¸ê8vB€\02ê¸;àèè¸‚ŠÛÌ ÌÃ(šôÿV½~IGô;ó;ßùŸßù~ç{ºu_Õ­ıÖ½·–î\0\00mfqÉòÏ\0@º0´©nÜ”úÚ[—ş x\"€íçóW4¯_\'PÆÿzş†u¡Ç:v3€ö€æ’…«­ş +à^`L.j^»\n¼ÆüL¬”EË7-|şö¥×$Ş˜»tñ‚Sñk>°4èu‹[š|º r,Ò·\"ı°Å`/ÕÇğ}.¾ç-^±nãş¥Öc\0Æ“uËWÎo^S‹ëó,Æ?±¢yã*ÍLıãÀ÷Ğ%Í+Z*éœ\'±q§‘æìª•k×¥\n`ÆW²øUkZVİÛñù_\0\"ØS1@°”JXß4Ò½P	/(È€ë$·ô7ğ]\0ş¤òY?ğ`zí¨©0V†³Ÿ½Læ!ıF¢ùtá…¦êóæY+ÿ¥óëxÄ}ç0ÿµ»?î>ûx÷\"tÓñUß›ƒ l%Û±:éN©3ö+¾ğ\Z,¤vD\Z‘²Gd´™EÎš26„íÁ.éõé¤T;Št$€¤°Å Æ¤C¬g\0ûÛ§¤t $Üávôs1^ÄØ†¡Pca<L‚)P3¡ša	\\\n›`ËÓ”!Íh¨†‰p>Lƒœf>,WhRÿ—ŸùçôØã!%Ê‡6\n·âç_ç~¤5Û´àçİ|İ|}¶ş5ö1”»İ¦÷Ìw›ï¶:äûØGşĞÇt—»öºÏx^ôåøó•ì“­ÏùWÈ.ÏiÎbsòËŒ¸¹ğ¾Âû\rÕd4Vü÷Ú\'®…Ùß{÷©aè7ÿ\'yHu©n©vHÏÃBåî?†İÀ:>•‘ÿÍ#œ\'@Só‘ö4İ½ˆÏíËùö?oÃdîÔ\">]\r–™…şt[Èó°U¥EüZ,G7.íO¤ÀfL_…éòğıZÄ}X\'M:_”G8›ç0®±^4®IãçşÆ4NÁKÓ¸\0ã –ÆÅ\Z	<H¥à\ZÄ\0ù|\rò3r÷˜…œŞ‚ïk1d%\\‚sa‚\nœSøûJX‡s`ÒŒÈHÂÒ‹`=âÍ\Z‚H¿gÌ\ZL±İBL7ğ{T}éÆ%XÆœ›!¬Ãb¤SbgíJL³ŠÃfWê8cFc.J=–`	‹1nmºVky{6 \\À)ÍØÌMÄ‹1¦g~ç8+á,[-ë|,aæ¿ó\naŞ+1_Ö¢º•H³‰×^)+ÔÛ‚ÁPŠX¬÷­\ny=X+W!mËmÆrXóaYšv2¾-æ½=Ë[À{Lië‹%¼-Ë´>y„`¾_Œ1,T•şmTòY™niˆ—²cçóöª£t)²©ğŞa¸:&“°N¬w–ğt—ğşÉÓ·pŠXe²Ş^Àa(]#•6ÄÃ×rŞX‚uY×Ëij;Xü:.“—#İ œ‹Á‹Î\'ı\n¼bùRŸ¡ûœù=KRŸ³xæSÔŠĞ•v€óÿ1²Ã¹ÿ49…©‡Ğ	/€gÆ/árø9lÁ0CnÀš3cüœxSP÷â¹^EÚàJ8.âI}WÁfáuLµ9(y®k|9?µåÆ1ñZíó±%«Hkª>usêÖÔğ ^Huƒ|ØâùğjêKéÏ©÷ SÜwÀ1r«~/j¶ )ïÆöß)4Š$µ(ukÆÑxgïx•¦qÌ½>#r¹0s¹?•L=‹TÔÈ‹áN8H†’	4,ÍMMI½\n.,c#æztÀ>ütÁoáb’N¥HB§Gò*ì?ÃBO÷Õ=ULèa/\rÄÙ>	Ûõ$<GI„ü®”LR‰”.K½útÊæàW˜òSòoz%~®Ç§Æ ,Ù?e½\r¿‡‰“i¤¤+é=Â\Z´Q\n1íİ%Øß·cî8ÙGMôˆp¿ø¨ø­&»çxÊ‚#ƒ»ànø1cKCd-¹†¼I>¦cé<zıHø¹ø°øGm3¶ú\"ä´›àQø7±“ád:¹,&—“-ä§äò*9J>§£é,ºŒ~%,V¿Çàg¦¸V¼Vº^ºQóyO}Ï³=¯õü;U’º¦#?\\µ¿\rµA\'òÉx?Çà#\"#±à\'DÂd6ù	~®$7‘ûÈnò0éÄR’Èää_ä[Š˜j¨Ÿ†i.~\"t\r½”şœş’ÁÏQú7úàr…¸0T¨\Z„•X«-Âvüì>}â1…ı\\\"ívJ»¥G¥§¥S\Z“ö\Zè^ùîşî‚îz gkÏÎÔ‡híx‘§DKo:Î–f”üÑ¦{ùüubÂ¾ó‘2Šœ=3,%«ÉFìÉëÈäA^÷ß\'°—Ş\"_aÍ4Àë<ˆ¥cè4ü\\D[èjºŞJ;é›ô¬ Œ‚Up\nÂ¡QhÖ	›„BRxEx_øH8#|‡Ÿ”hƒb®ãâq¸^¼GüLüLš+½,}¢1hVh®×tiş®¦¥­ÕN×6joÑîÓ¾¡kBî|öÂşLJWÕÂ^¸™–Š^úúäçy°@˜B‘Sén²•^A:i´Q3’$Sá”Ã¾~î¤gèHa\n©!3a)¢ä¦qˆ W)>\'Å\'°mÀœ7jLäJú•Æ„Û1ä÷Â`1.¼ïÇˆV¼Ş\rÄMNÒ_	µÈ¿GIõ~	¿V“+`/­0|«Û†|<• N‡Yh©}-¤@ S‘‹Ê…áZXFÿ\'qo…_â\"¸JÉåğ<„³b t‰¦@ã$/Ò%bÍ\"@Å‡™MEòˆ 9à:Ò(Ü©ùŠ¾²øˆh€„_cíĞßSÄSÒ²gÀhİ¯N]\r›¤zñd¤¢âq”n—%bı«PªÌE™¶g÷A”£…)âAÎ9ùb6Jˆ;ñs;Ê	9h	ÎñPŠı:5³h,’,¥Z!/÷Ì€9©‡àÔ\"¸$u+¡<Ø’ºsÜ\rŸÀ-°›lîù	Jôœ9ó¥ñôˆ4>UDÛèÛt&İÑ|±·£ÄÁÏoğeÚğmâ[hW¥¶¥ş„Ü=\0%ì¨I&Ã	lå—XÂDá0”öL¥í©ñê_éLOı*$XœZ\Zü	xP+A³6cœ$ÄöşZèŒÔ:¡¥g	öÃ-Øl-´åÏ\râjñZñØ†s~Ê›]8oÁ™Ãæ>{ØZ±ÉhĞ}oÂX‰9b˜ñG§Õ²\0-.=48WÓb`fF#j4Ou\Z\ZÃMFı¹ùk™Ór/ Óc GB­Wœì/#\ZQV+àæeÔâ#â›Ä=³ÑÀÇÿ:½^É•åo¾è!ÓöEÚïç/²üµ`5ÏÍŸµ\\§Ëè\0½çjÀô:#˜Àj¥ÏL ÓéDåoFT\'áÖD²Ùtnşz^åŒŒFËÒˆéõfìSÀÀÌ:½^ÔëD?¶¶7›ÙÌtŞ˜¿ô£ù³<±–?¢zNÔcşzÈ’-çæoäYfd`6[\0jF2Z±OÁ‚µ2÷%0€ÁhÔ\r˜¿(#jÔ$ÖDN›Œ¨<l×Âdâ^:‹•eiAB“\r°JVK¿üM¬…\Z#kŸ(MF£KÃšÁã°÷ã4%;^åŒ¬2æjæoÎÂ6«•53ÉbÖZ,Ã³Å¢3i-F–ëw;úÍ%;æ¬Øí°Û 	­nl3°ZÙ2X¬V­ÕŠåk\\V|ôkbl¯ëÜüeædî)OV–²ìàÄ†Ênpg33XeY\'Ë¯õÊø¬:ÙìÄv…ü8g•hçUæò8Xk¸‘Ğî¯ÜNà{é{Ïf3Øì,¿İf³e½[j…°ßûäïryÀå\0’¿Ïlµ+3›İf°«ùÛíF[:ÿh0ÀØ«ÿãäUÎ¨ ×‹µvƒów±OÕÊÛ—ÀYN‡ÁÉúOtâc²œ6?–[‚FT7snî)O ä ¡;á\0ä`­™	œn·ÙíÆŠ\ZòÜøX&·;k8(éÇÉüñ1çãòƒaÀ††1_ò‚b`f·ÏgñùXş1>V·Ùçc¹%cÀWÈ™O€W9£‚ápË2	!?yae½Ş›ÀX,ß4 €Ík	x#Ø…ÃŠö›)üÉa.‡{Ê“——Ï²ÌGÂœ\"ìSÈÏÃÀÌşœkN6“\ZEÙ999v¿5ÛŸ~1¤2]yBÌ…¸§<ùùÌ?TEùP™	²C!9bù	á“•-‡²bşc+JúÍşD™‹rOyŠŠ6t0FË¡¬a`f‚Üh4+\ZÅò­Q|\\¹YÑp1vaMÕğ~3…?l‡± €{ÊSR2JÁ0$,8F”À0¬UIf‚XA³ \0E†­ª\0oÌYŠåÎœ0\n2Qy17ˆ{ÊS^^	å¥P‰„ƒªat9T–c`f‚‚Aƒ<ƒáŒ´O„O À=hàHìÂ¹Sª!ƒ•§”¹Rî)Ïyçó†Ã$,­‰çÁ˜ó003Á ÒRY)ÊJÇ”ÒÒÒ²à _iÑhìÂ³júÍşgn8÷”gìØ‰0ö<˜ˆ„ÃgÂÔ±0q,f&(><»|8“\Z³†^.	2—j‰7¯[»fõª•—¬X¾lé’Å‹¶\\ÜXAİìYÓ¦NT:¯räˆŠáåCËJK†.TT/8 ?Í‹ä†CÁœì€ßçõ¸]NG–İ&[-f“Ñ ×i5’(P…Õ‘ñM¡d¬))Æ\"\'±÷H34g4%C4¾?M2ÔÄÉBı)H¹ğ{”	…2ÑKIäP%T†ª#¡ä«ã\"¡.2gz=â7‹4„’\'9>…ãÛ9nF<Æ¡jÏâq¡$i\nU\'ÇoXÜVİ4³k7\ZÆFÆ¶Š\n¡İ`DÔˆXÒYÕNÜ£G¨»zD;+•ôEÆU\'½‘q¬I!Zİ¼ Y;½¾zœ?n(*L’±ó#\'!2&isË‹IjÆ&µ¼˜ĞÖ\Z¸1Ô^x¸m[—7ÅM\"šçÖ\'…æV†-åKº/;áé{ÅÌícë·dÆú…¶jÏ’{mkÛJîš^Ÿf°¡óÀ´4:¾©m<½\r;±ffK£›ê“d3b-a­RÚ×©f!MKCI}dLdqÛÒ&\Z_[fl\nwø|‰©ãà«µÍª„“UşHCó¸@»ÚflÚãM„¼ıcŠ\nÛe›Ò±ík\Z1™3‘–Ş8qr†ÕÌèíYÂj™„‘ÍaMê#Ø¦á´‡¶ùÃ‘Ÿ‚©’pD–$õc›Úä,œ¥OJQ9jû DNş­Hs:D•ÿe|ÒËj¯âÉx<YPÀXD;Çë8Š¿-*ÜĞE#‘Ur=ì>¨Å¾mnQŒİ³¾±+ãK²uz½ò‚‹ı(7$i‹9¬Æ8g³˜V5¦7yS9¹“ïŞ;“ºXïŸUveU/‘$®ÿ\"ºE‰¯™©™>§>TİÖ”îÛšYıŞ”øá½qi,™5¶^ğÓ4FıE¦œÛKÌ^êMI1Š\ZÎÔº´:äJBBã“rÓD6Âáÿ0QWêKÅ½¾déj&GÄû¿ì÷Ş¯z¦6+,ÆhÍ¬9mm†~qÈjJ“Òr<Ìª‡Æ&a6ÎÌ(şu¥g®ÁŸL`—eÈJPúµ¡?7àÃ¸³¨p<\nº¶¶ñ‘Ğø¶¦¶æ®TëÅ‘i;@Ÿ¦O·­ªnR§+uğFrü¶ì«ÅdDQa„Å´µ-h!ŠÅ$üí„#åcolHN‹7D’Ç#áH}¶¥}˜Â³šÆ\"FaL{„lŞ [gÎ©?€ÆDhë¬úJèØ¦1\ríyW\0m‰¥,”²—{\Z‚]ÓAuœŞ ĞÊcEÀßçwàa:5ŒÀü.ª„ÉJA1^P(ÆˆJLB¥1L§„µ*ÔÒÔ:Œ‘YÌA@<RyÚñeV}ÂP‘™E«(öêÀƒH;’ÀQ¤ŠøÛ1Ï<¸‹´¶Løğœf¤)[‘’…µö†aÍYFFXÒğÙ}-˜=§~Ï(Àü9DŠ1ìa’+‘9‡¸`b|~A¼ŞDÛjf\"²HÃp¿!#:Ä&I$9/²1ÌZ—¬‹l\nc`$BiDí0!ĞĞÖÂO{e~]½Y)`N\rÉÖ‹UZ\0y¢ïÕ„I9_í	0Ò[ÚOÔÒÖ`iiS‹KÎÿÁÒ°öIr!ƒüW¿}D”òQK+…¶Ím›ƒüNf³‚ÓõÀWK ç€5¹×„på4m‚…l.…˜C1™ÜN§Æ¹O¸ß69R½\0)˜C¥;+ZĞÀ¨\"lÒ0ÆÿQ\"’AÄ	Ï¼M©¾‘ô›2}Û’‹ú¿.î}ÏÚ(ÑAŠ˜À¶ğ)N.õ\'—7Ä{IšY›Ûpn`|O<¹&T;’­ó›±Š¨o&Í`ÀdÕ_¬ô SÔmÌršßŒÉX/§KJ^ï—%Ê‚\"\n3bÍI¶Ö†š\ZBM(CÈtìl()¡ZˆæS¤™ÉZ¥=µ(üÑkn›‰i\r›?©Ey¶°¹%Â„k’ñ»Òû¬\"ÖfÖ\'ÁßÖAÂ*FÇ#1fKjb“˜‡«â‘æfÙ-d†]‹br`uyï°ÜüÕ‘p’Ğ(ïKì8œh30¿ÙMqì	[›½-TÑ†¾QfWæ×5¡\\ÃåËøêf?¾a\'Lbo\r˜‘B¨2BLÏÿbÉñöFm´/„ÿ­Œ+Ä:+7\"’µ*‰–ÿ!²:¤îáÉ\ZOfÌázŠu„İ›@®ò³Ô8‹f¥Õ†’~KêWLI†!\rª@~o’­µ™’pnÒ^3ãB?vlQû¬Í£B!ûĞ\\È† \n ı‚Mv°K°\'æ	}BÇÑQa`G<;x@È²;F]BdİYb]$„PsB¸İãèØ%ŠyB†Ë¯B×ŠîqtO¡;ŠN€Å†Ğ­D·İq#dPP/x1­›`Üğº:ëéÆRİ0\rİ<t· Û‰NÃéXÈJtW¡{\nİ)“Ü·–bİİ7roÏÒå%üµYyÛÈ_÷\\Ğ øS¦+ş¸I\nÙ…lH™<hŒâç*¾=ZÒÊ|ƒ¹äğh—àÂFº°â«ú,X	 ìœDGM:$!Ø÷äÅJv>%ˆ@*X\0ÁÔat˜m%£\r4E¿;é—ô¤COî±ØJvL?‚ÇÑ=…N áçCú!\\E³>GX…n\'º§ĞA÷:\r=Ÿcøù€~\0Vú>£«B7İNtO¡û\n–¾P¦ï1#C†W¡£ô=„2}›õ.B+}±wè;Xµ×;Ê+Jp$^œF‚Ñ4âö§»«¤‹ş±ã›ÈQ1iä¨CB.Œ‚R!·#:ÙÏÓQ¹$ØE?ŞŠwLß€$:¶/ş–ü„ĞÕ¢kB·\n±7{ZÑmG·]rB]ˆ¾„îtoÂ`t	tµètôhÓEtÄÆG»èèó¸ÖÒWéÜ…>Çı—éï¹ÿ\"ú9è¿DŸëÈ	Âh#Æ¦‘Ñ—Ñ/Æx‰şnO=˜\Zm£Oaß£«B7\rİ<t· ÓĞ§hnÇ‚ 39/é\0);àî?÷é ±4˜ˆE1qbv†vÆh\"¶ã|e vó­ˆ1»nbÄ.»\Z1bË7 Æ@lÁRÄˆÍ™‡±i³CĞEïÙŸ—,Ÿ¶Œ„F[é¥ØK—b/]Š½t)ˆôRöoDV·»:\n\n°ÇîLÄ[Ñ¶y‚´Î ­÷‘ÖÒz%i½š´V’Ö‹Hkœ´HkiMÖCd8vE+Itö{­HxHëK¤õ1Òº–´ÆHk”´æ‘Ö)OtÑpÇ¤RîUsoÏh6éĞ?oJ+\rc†‘çÃ(Bx]Š¿%(”«{s˜Ÿ»§ Jy4¢d%NŸg0á38ÏÀ1t\"Ğ3ÈFÏ`&Ï`V„Uèæ¡;Œî+t)t\Z¤ÎÅŠßÂ¡a1º*tóĞ]…î+t\Z^¯ĞQX™®âã¼b¬ÒÅéŠOC\'ÒgğÃNÃ4œÈ–r\\(Ü Ö2-\'•CËÁÅöhí6­‹˜÷ıÛüõ¿Í ­§7Ó[˜è¦ÛÓş-ß è&·wÄG;É/ GDÎ##Qô‡ÃZş>:æ—A€>Š~IG “Y;b…ÁƒÄÂRí~8ü\"ĞEı<p(øV¨K$Á?aÈ£û‚on¾XÜ¥Ã\'b]½ƒ!Nz 0<øØKœôjŒ¸³#x%óö¯L.ğˆ%â¢µø–°gÄæ\'b~ãk1Ï}ÁªÀEÁJ…j(K³/8«WĞ¬ìÀ\0/4’ƒ!Á¡³g—w‘Å‰Bím½všv˜¶D[¨\rkƒÚl­_ëĞÙu²Î¢3é:N£uT:GWêx\"Î.,:4üŞ¢FdPä¸Ld÷™è#:\n“!™%ÔĞš™cHMòğ|¨¹8”<33ÒE¸ğ“\"cjV¨™5&9<^Ó¥MÍH–Çk’ÚÚëÛ	¹¹C“t+.]fÕw‘Úìg[,€Ûæ›üÌ°ù¦†ğ¸6Tyªì£lãÇı\0hJÃxßãé‡gIî¨™Yß1ô‘G²Ç4$K8J!^“üÛŠ9@şANU;@şÎ¼†úÂ(òê,\\5®¡¡¦‹Ôq:‘¿#²Îß9µ4£ƒ.G¡»S¡‹bz¤ËcÒéõåtQ½Ó‰„Ñµ¯Í«×—ÇiÜ!XËiÖºC™4/E‘&\Zå4®Vx‰Ó¼äje4ÉQœ$@’œ\0\'!>p’\0ñq’º>’â4É\r½$7ğ’ÒGPhÌÇU\Zóq¤‰ÿ§OË˜xœìÙ0.ÛÆjŠT· kJŞ¸a±‡Yä¡öù\réı­XÓÅó3mÒ†HË¸äüÈ¸PûÈ¹?=—EŒŒk‡¹Õ³êÛç&ZÆuŒLŒ¬4kØ3¡¶¬¼_Y7ô–UVû™Õ²ÌÊXYÊ ºœEO`e•³²ÊYYxYÀY½¶¾]c\ZÆÎUü=Ôh@¶mB;~ŒK^5ŠóğÈ°çJÿA4]vƒ1Ş4EÆ$ÍèXTÑè¢Ñ,\n§‹²°½Êt”çÊ‘aÿA²;%c°-2âëÖ¯]ê%ã”¿µø`Ğºõ¬Ã_ûcÆU\'ÍãÖ®¨IÌ¬IVáâ·]«ÅĞ&Ö¤ä5Ìh¬îJVaà(½„,¬’…éõiÂsÇ}ÚËfA+=´‡$rÈ:XÛ $sjfQ”³Ò›BÑ°bºbm6p-‰“µjéjÇã ¼k³êÖ­Océ¾X—ö•”˜d­Ú%½ë¬xo­ãÙòîŒÏ­m†	Å0\ZmçÁè¡_„~	ú%BqÂ\n´<¨×•†qA­f\\PÍµ!Î6ÿ{$A -Wô7ãaøZ—bÇò©v¸êfGĞü›¡	LÍ`FháĞ\n„2XÚ~‡–­\raØ: ¡á·àB78z/¸÷q?ø8Ì?Â¤¾AkšÁd#£­ü\r»Í0‚ğkÈƒ0Â(ä\"Œ!ü7äCá\0ÈC8b8ŒC~êÂ\0„E‚„ÅG8ŠAø/ì¾AK¡aN†¡ƒ!Ë¡áp(Kı*8Cä°†!<Ê‚á« \"õHÀ„£a$Â1P‰p,Â¿Ã88a5ŒB8ªR§`$N„Ñ\'Á„“9¬±Ï‡q§ÀøÔW0•Ãi0a-LD8&¥¾„Î„ÉgAMê$Ì†)ë8¼\0¦\"¬‡i©¿AÔ\"œƒğ$\\ÓŸ36Â,„q8f§ş\nMP‡°.@x1Â¿À|h@¸\0æ l.„¹©/`‡‹¡á¸(õ9,…&Ä—q¸š®€‹1ü˜p%‡«`Aê3X\r-×À\"„k9\\‹SŸÂzX‚p,Ex)ÂO`#,C¸	V ¼.Aø/‡•¯€U¯„Õ©p‡­°áÕ°á5°>Åîfm@x‡›áÒÔGp=lD¸6!Ü\n—!¼~’úÚàr„7Â²\rá‡p\\‰ğf¸\ná-p5ÂíÃOá\Z„·Âµ×¥ÁÏ9¼\r6#Ü[ş¶bìíÁpÂ;¡-õÜ7\"ü%lCx7‡÷ÀÍwÂ-wÁv„÷\"|îƒŸ\"¼nEø\0üáƒğóÔ{ğÜ–z~;î†_ |˜ÃGàv„Â\rw!|ŒÃßÀ/>w#LÂ=Û¾°áØ…°îK½\r{áşÔŸa‡ûá„]ğ ÂğÂƒ‚İŸ€‡SoÁoá„Orø<Šğ0ü\Záïà1„OÃo>§Ş„g!‰ğ÷Ğú<ÇáóĞğØ“z^„N„/Á^„/Ã>„¯À~„¯BÂ?À„G8<\n¾O ü#ü6õ:¼ğğ<‰ğOğÂ7ápê5x‹Ã?ÃÓß†g¾Ï\"|—Ã÷à÷ß‡ç~\0Ï§Â1Ã‹©#ğ!¼„ğ#xáÇ€W~¯\"üş€ğ38šú|Îáğ\ZÂ¿ÀS¯Â_áu„ãğ$¼ğKx3õ\n|o!<ÅáßáÏÿo#ü\'¼ƒğ4‡ÿ‚÷R/Ãxá¿á„_#|	¾cÏÂq„ßÂ‡¿ã°>N½=pa\n>Aø¿2ıÿ™ş÷ÿá2ı¯ÿ±LÿâGdúçÈôÏD¦vLÿô?é\'zeúš~2ıã‘és™şñ92ı#.Ó?Êéq™ş—éeÈôÏ‘éÇ¹L?Îeúñÿ2ıíÿK2ıÿ•éÿ+ÓÿÇÉôÿévúÿ\\™şcvúÿÊôÿ•é?,Ó_ø@¦SœÅŸ‰6é0JêlÒ“Ü¯o§Êe_(9rÌf·¾+õy§ÕJg3$á5›³‰…€ËdBhbaPÇ_Eğ*T¬:9d°¿]snN§1\'\rËéÓN³™#_&¼F£†e)³M&YXo–}y&¦Šš-t«q«õE‹¤×\Z=´:ë|çdïXÿ¬¬¹Î¹ŞşeÚeÆùYËË¼MşMôRÍãeÖ-šÛµ;ä=ïĞ75o\Zßµúz«4ZF©Ú‹$PºQş¢>Kã_3}F	[{­>”\rÖĞËzªmÀD*¡\'Ü_§ß´™L¦.’è¬³YŒFÑ™Íˆì©³­Eö<œ0aNìç(¨¤ K“‚Bº¯¶ç<£\'.ŸÁ¦7ÆO\"dhãj¦»‚4®†Æ$›LÔÖwjB^9Ğ•:ÕACÆ\'Q¸ĞÙÑYÑ\rgA×ĞĞào7;º„âÎåf³èC¤c¹(§*^<¤!K¶+-q¹ìN™j\"¹ù±,ÙUZ2Ì&Ç\"¹ZÍìe¯ïÚĞ±nÌÒ×ï}cÓO<|ùå?|åå“éëD$çızŞÔ;===Ï<vû~rwÏ/¾:E“¥_.¹êc_ö²ïBÓ\0ã±\'Ğ\\8«t{gY“îIíŠèUÄ \"’Ú­\ZÑ«ˆAE´º4±NE´jët½4¼«YH\Z‘TD£\"z1(H¢¼Î^oZlºÓô°éE“t¾p¾ùç¢`\'T& •FA‹ƒj6¿$ˆA3P“YÔ\n‡è!´œ(Ù•0€(²/Ì¼d»èÂı’dHdË]©ã²Lg”yÁ‘/ù1t‘ò„Y›È”i[ÃCµÛ­”1‘Ñì(*Ó(KÌÒ rbKC÷ZºÈ¶vÆ@cüÃxç4Û…­”?•»+¡ªJ>]y¦ÒVQAlöŠŠ-ƒââò³V«™ŠoE›StØ+Ì(LÆÒ\n!·¨B³³+ùFn#4\"MÂaJ+L­µ¦D¬Â”@¿¨BÙê%?pÒqÿ>“¨×fÚ%”ìgì&ÎzUöŠâxii‰½90l%¥¶RgÄ&ØİÑ}½ûgÏ=×Ù3”Ì{PØ÷İä{î¥\"½­{.¹ÂÒCCµŒ§öd©<bW‘,Sz´í*’eJ©‘lş*âî\0ìU3ëF°rœÎ€½‹J­¢˜0[h=]©¿p1ÈFéaÂ®øÕb>!±İÏÊÏÆ™Œ*c¹kf[9¬ñmÊnËŞ‘õ«¬gLošŞõëôYKOÈ28íYY/Y¬K–Ãb5wÑY¬è„e—…Z,Ö„“¤«±ß*’×ÙEÅ.âIØX…lóä•òUò-²(·jûÉ0m†ÓfÈ0íZ—aÙC±§÷³êy¶‡ìO¡`%·!åğË^r`LÖ+©¶»È­œ¡Î 8:ä©´8:İˆu²»ñïƒF:ù¤|b‹nP\\B¶d±!ƒU9¥,\r6D¡$¤3‘4¼¬ndÇüñ\'L\0s–Å‚üá4 |Ú»Üé´D.²f«½K(íXn‘…E1‡ü‚e3Vîbkh\n,6?+ì(ÑÀéĞ¢<‹Íş­óå×t>¶í‚m¾™¾İ½Úu?=Ltën:ıB7i•Ûn|ö¾;;¦U¹èßİ³anÏ™×ÿi»\nÓŒòË%ı\nûòFÆi	Ë³f\"âÕ‰zœäŒQS\"êMæµ‚@Y7O£óèJœ›>«n­ş¯0Ì#ó¨P…ŞJrÊK¯%İ¡SåÓ«+§œ>9U>³:^9E>‰Ó³²»²ÂÆ\'\'ÎÈÕşN½IÀÁgm\'¼í¥U¬µCÃN\r\Zmd˜İ^Ş,ìİÖs²f˜õ€pÍ?oÏ>¶í¶{Ï·]ï>FşBÿ%P\\‡Ô€RXÚÆÚ1:¹şë^Î1àŠLÅõáR.ªx†pÕˆ½RÖdz2ä¬Â„H¦1\ZŸL§=­R“\ZHú5U6»T}¨N[£ª\"U¨ˆŞ¢VC\rÑ*!ûëˆÅ*s±øÎ4ò5—©ˆœN403ƒéÍl‰Ãby°¼H·Xß$o¶Ë/JÏiË§d£Nj u´V^lLÊÿ4ıÓüO‹^4‰fÑ\"\rzIMf‹N£Õš×iLZ¨ä¿NX¹]ÒšE…9Y˜ML¥Ï‘$]FĞtÑU	=èL_$(¡ô 1!Æ„İ‚­0£V<\"…í\"»IkM‡µÇLÂv1±wÙª=¢¥Wi[µTû3ë›oáEvò¢Ã?ÏIù¤Ï+Ÿ<‰Sé;Yu¢R>‰[¤Añ8NÌ-ƒ<Üç:\0uÁùÙg-Ï>»ER|ä¼š¤qfM2gúeöÎ©ï­‚N{WšúZ™½kØôıñÇß®Ót	C¦å:Q‡\r%ëSZUÅæ,³:\"¤”D„°bù\Z­@K_£õï?Ú}×½o“¿ß1>7P*<;<Ñ3Î!;\\zÓ °_“¿@^¶A67`–ÈìFQ©‹,Œ¬Õ_§×,ñ­—Vé×\Z¯•®5jò]zÁ“_ãÊÖ£Ôü<ƒß??× Kxêôú,{NAÁÀÈÎÁ\næäØ@çÁ´=½i=×“:ƒá,­¡ÎÓ˜˜R× ROD™æĞØ™ÚĞh#ht¬¦\ZÎz\ZcKÍ¬h¿|£ùF{ó•ë¢1S€åk2°ÜLŒ™M,/“¯ë˜9ª1”c0qÛÅR—\"ü%K‹Lz†+3pó½+u¶“s­‚hr*aà6yc|äÜ´9Ê,ÒÊnfLLåïS¸H·b¢øbÇ·Í\nf¿Û*p¸‰İÍ\ZZq‡Ş^€mïr»@bËAG²Gûä;³\nJma´J–ApIù0&æc´JÊGQßAc»_^»pÑæ[.hıİ¶Ÿ‘ó®>¹fü5÷ô¼KV\\;gÄ¬Û¶õ<&l8ĞrÑC¥ùO´.jo\Z\"Ì°¹N™´rà·»´¦áËÆÏØ4»iaê3iƒô:®ŠŠwíO—fSÂ–B|eÂ–Bó‚ó|öË2Ù­p]öv¸SzTxĞ|@è4?o>\n\'²ÿ™m³Ø³mÙÙBf€­ \nN0×9.pÖyKË²b¿Ñ~§p‡åÎÀnò\0İmû“%à“²OD1õAÇ€\nÂì½Ğ€\nÙŠÈŸ•cü9¢^Y\'C,Dñİê »ÕAw§İPç…tå25×é8§è¼9óçrİƒƒÉÇ‘Ó\'¹)cãÃ„Ql…“5ş„ışU–M¢í·Îå¨ë²éXn”±²3=Œ‡‹¸5b$7ÇÄWZ\"ºµ1¦©ÓagÊYì|ú¼g>9ÙóÖ]“±O¿G\nG>UúôÏşxîŠO¯¿ÿ#J‡|õíïÈ%ü„Ìn?şrÑ®[ïëùê§‡z¾h{‚İ¥º«Á~Ç\'¹&vj¤ûMAdÓÓ Ï1‚NËzÌ!ÛË´³„É!CÈL\r>³¨§½\ZC]9ôN\rıÿÁÔĞëd˜F^˜îÓô,™¢N“Æ)§Oœ3/ØYÒñ9 I¸°Tç€xÎP¦€3œv÷‰yßİ#Ä¿û“ptğ±ª_÷˜c}³ûf3ö^ç}“Ëûæ-éíìš_†p…H©Ïøßì„QYù§\'CÏ9½a9÷G{ã„bã0s±_Oìç=ñ½.°¿vï÷	Mv×²Öx¬{!Öô´mr_ñŠ.0#¸²œe¢£7ì25PƒD©‘ıŞC?!«Ë²:UÈî­Ó…´Z\r[ƒq±®¸˜è–¹èf7ÿœ\\|.¾[ÍÄLj‡\ZÕ5*º¿Î¨ô\'ãKVê?èX]ºcÿ­vì×	WšÍBf2×š›Ì«ÌâÈÚáª`îÍr£‚½Ë ²^UeEcq%ëk‚JY@Ûº4a^.@ØÏgH”wvUŸVfFu]áOÓ³O?İ­‘v?DçœO÷tOÁÖ<…Lw5ö¹@jùú‹ªíT„jÓ! 2Úœ6ø¾éípPq$•LÊÂL@¤—ô[e<8i\ZßWÇø˜JØ—{†ŸWÆıÒ2Å/\Z¬ø*~$ªøÙ9Šïñq?Q`–ËBÒvéqIB(Ùn]±×:µpNdaàv$e±ÍÆÆ“³¿©cö¥:fg²bîñ1»O|³!CWâb¹£mºÆ†Õk*»{%¶\nçB¶×RÚƒŒÏ!İûO=Íììgfë`?Kğ\0Ÿ×hA!WK 1«şj¯–öö¸ ²Ğ;—…ÿX¶éãµô$Öü€Ú—?mTD›¶ ¨b‹W½—sœ;¦Äúÿ“K¦Û4Vl,(œ¢+0*ƒMé·\nÇ)¨L\0Ålã&;ö2\"Û\'À0“EKV“ Buz£tzj0jXûŒ2k“Û´Qe`*é–­¶ü»Î~û•ls±êğaùèÑÃ6´Pâqe\\@İ¿jùÀj889”8Ô1éaåÒPĞ°^¤–¾õ…C­ºüĞ±2,&SÈ`/³r ¡.%Ô_Ø™|ÿ‡åÆÉ!Zvi]Âœ»\Zu¸x¶@X[NŸæ&XUe¥Ò˜Æ.ƒô*û* VƒúuâÓõ¦°+M“L“¬Â@1j.´ÔŠÌ-[Ì:#•tæa–i´F§Mè¦˜ÇX·Ó;„ÚºİÂ¯´\Z;µZ,ƒ%ê$ª3™Íƒ%¢:Óë’ÀN§ÇeÙl±Èlœšì­vj?HwãTÒ!…t]dÈ^“Ş .ıÒë»„¾ÎJ˜®2ãAl¶…‘–v¡g%0Ú€rºO„œQdùş:YWÉDî¢uûCR“Ô*áì¥»÷Ø˜Œôâºètc¥§›10_á›/ãõD#ãßÊJ9ããÃµ[-m¹‚/–Ğ2zEõ¿\n%]êM\\[¿ÉC5IÆ\rè[01=ôu»ÅÀ\"Ó;koìWX\nÃ|wm_y…¥¤œ£{‹04½ƒoÀU¬nD™Ñ\0l¼ÌF&£ÙtjM/ŸØG‘aâr+\'aÕ$Bl·“<rá`—w(™G¤C=u÷ÔK¿ıÇO\'ÖŞ%|wv¼øò·CÅãß†Ø7ºĞÂ}_z,à\'³¸d©ñY‰Cv8ün¿_eÑatıâÃî}–ç,‚ÛíñÓPvÂ6-kš;á«—êõÈ³mó²æ¸çyê|øotßAeo ØsŒzg?-ëÌĞ²NUËî«sÆBh<™±™®EûšMW­*^9Åå“–íº1¶×²CÆğZ¦-ù4ÓúZ³I¶U‚VUZ{Í`kŒÉÀŞ}ö´=œUšŒ™ä\rÌï³YT»¸QÕ­J@ææ;ÚÇşv£ÄF½àå± dì§C¸D´;”ÛÃå2”–€­Œ¢9óÉV2ìe2şÑÎ}Oé9¸û’ıÖ»Ä¿é‹Ÿş¡ç-úYAî~ºçÁ÷õìÚû™ódÏ¿{2âßCŒ?ëùGïÔ\nİ(SÍà!ƒøèå´Ø–9h\\ã¸P¾Ğ!\ZM985ÁíQ,?{¿±gˆ]İ%ÜSgéáğ(«_K¯0urZÌNØY?é|!Á?ŸÇ¬ö¸Yíqs¯Ú1ÿŸšç\ZÔŞLíÓ·ê\\­Iz8T‹š›6¸´ô·[LÜ”´X˜)éùaS²Äƒ\ZÛg+É|\\>ŞCŞ:eù­\r_ö¼Ø³•üä‰{\ZÏr]Ï\rÒA‹½eßŠC=İİ¿È¶«æ^ë4³ß~¾mN\\K‚réU|Âv£…Ø‡æêVq‘ÆÅ=‡ZóĞœàÜlfLÌ“ŠUÄŞ•úhİW†ş©=¹ùe6ö_&§}kÚÇø?ïÉ)ñH/§}Ÿ˜„HÔ29094Ó87°\"°F¿Ñ²ÉºÙ°ÕúóÃÖ.ëç–Ï¬2ÎÍê°Ù¬6«Io÷Ó°ÏeĞØm²Ù$yôz—ÛçÍq?™:œq&vX±{İnçr¾òx¬V‹.§såd0WNŸM³üR£%jTNàÆ´—›Õ\Z¾ÒÊ[•×š\'äåzTöò¨ìåée/ÏÊ^šs\ré4{EFîş¡JzÆ{OxÒ»L¤¹,ïÆ—ŠbÔ¬WÉ[,Ê7ã¼~Û^¶ü]ÂZa•GØì#˜\\\'«¹°¤>Hø¼¶\\o…%¨sè‚èœi%oğwè½n*	ãr¯ˆ•\0ÉåB&ÍÏŠµş½-·ËQäèçn¾¾—¶=ûÊe/½>eÀìóS§Ÿ}ÉEášÉ½›wLıÅı=ƒ¥ƒÓ^ØôË7³£yS×÷¬&C®Û6Ü¨í^/”–oš°øzìé¹©ÏÄ¿J¯Ã`a4ß;¶A¾*7p˜cxTÅq¼äôzUÄ‡Èè §3gì¹™2pcÈÀı*Ö­\'ÍTEˆ‚$ÔÍæ‹k…u¢Í*TÆ\n“´çgWÇåÏŸ)4hçf_0à†,K„í\n3æÉS‘¨ŠÄT$_E\"œ¯b‰ªHLEòÙ:`<Ã˜cy4OÈ³–EÆE«‹ç„ê\"³£ËKÍË,-MÆËÌ—Y¯×ç­^/´o0·Yo’7ç]½Õ¼ÃºÃ™“6<‹Â1»?æÓÇ’À@Ÿ],ƒ=æ¢MşüÔu™‹rò£$*¹$¾È·³sŠô99.«ª8²H#º´×H˜UX|RùøEÑ<‹Ù(…Ù9~V#\nTC¢y¹¦‘rüE¾›C· ¬?é‚\"¾ÅÍo™„H-i\"«Èv¢!]$™0å„²²ÆÌfKlJ›Ù«\n¶`²¾ß•>C>èUfÙW§Á@2©y‹…ÎÈÚÃ§ğ@_IX=Ñ«’ ¬•c‘˜-ËX*»*ì½»ğöYLPx‡ÌWvg\Z§œ`•rz×KÕë|ë+2®ÑN0pšõNr¶=Îv.Ğøk\\İ7ÇIæŸñşıÄOŠü®\"‰/ŠŠŒ®®}\\‚º—ƒÓU9§Ê¡¥ÊÄÌååÇbCË†ñ“÷ô^™Óáv‰n>Ÿ5h9Äæî7Ï{áŠ•Ì¬;²gùô%‹®üÇÏïÿæzé õ±‡“÷V\'o×·^vı·w?ßóÏ;È[ò%7]0fí¸êEws¼üş–•¿[°ä•«-7Ş|õ…ÓJK—\r¹wÃú#k×}ÁVfzÔaãÙÉ<\Z¬le&ªÇëêÄIOX]¿}“³½8ô3à2÷SşÑ;aÕq£–Ş\0}ê/½2C§â¸p˜ÍO¦óıT\r$yés[ª\"ŸzØÄÈÒgR$Oİy@$ca™°³}%n@Òë$B¥â÷_•ßÕVZ\nÊ¶;¸Í+–H¢†bÓ`S“éİ\rúí¦Ã¦S&cÈTk¢\"5ê¨2;÷ë‰ÉÈ×½UUüSôúNrèt.øCTrP*é±¨/B\\ü´èHÕñ\r…µ:ÒªÛ®ÃwBfšP1’[èNJ)±…¤Z‰ÆeÌvé°tJ’p)³u±i·²”Y}™9|’Vú¼\'=U•l±’>Ùa;ÊRÅÑ·é\0+®\'ÿŞ¡·æáÍl~=„/^ õ°élÕüw€¸™‹&Õœèsvß\'áZUİ9b;¿aRª,FJ	İıÂÉƒ‚¹EdÛsİOã\Zä­ÖU7ŠÏG69õ¹GÁ\0(r¹íT¨7ë¼f_Á@sA®9åş“\n\ZÍKÍK\nš·™¯x§ë.ßÃfç\0u>ŸßHbØCŞGìó\Zğ¬÷È€?:ß ç\"9L„Ø˜H´ÛûÎù†2é4aAwĞ/,(«+\n\'‰ët\rñ…º%ñ\r¦-¦Mß˜¿‰ÛÊË,D”‹óÊÜ%a‡gŞÀ•éÀ@±¥Êr‹e§%e‘vZ·|e,‡ÔÏıu~3ÊÂäÓV	‡,kf[øu\0‹†]€²ÄÒllñpİ[g±w}dG™‚ÌÆ)4ÆÌöÜæ´ĞÛ¨Î7”ãÀf¹P®f®…¿Î˜“ß¥Íx#.r¸M\rç11™VzS¶µòD&#ñıv(GNóEä½„‘U;W8m›°âóºè…	K~br,{<&U0«–I_T†o*È!	é5El‹O˜s\"eƒ+WĞ]¤ÂÍn°Ìİ:u½ïzr‹Õ7Åª¼/VäFÂVWœ÷”æˆ†5U\Zªq¨RÊÑ{gGÉgPÆÂÍK~%Mãáv¥‰µLÃ×\Z·1ù3Íá}§ìv•¢âq\'¿yuRµ\rã|íÿä¦SO šÀ×ÜøêK¼ZÑ²\\Ã2]Á•;…Õşı Äã&“e`—PÄ–&|ƒPÂqÁèq»~‡EIq)j~øÅo6àÄŠ2=ÀµD9ÿ-ËW®8Œ¢\\m¸œN‡Ë‰	\Z­×5ìœ‰„Ê–>şÄ„µ‡.{g)­ŞzÕ¦ì¤ç’£7l}¤VÖ»sŸ¸/~våÜ’KßË¾vöøG7O½zªÃböåE\r—×°Ú³úÆšDóäAO}»ù¼áäıyÀ”â‰MN;ïR¦?jSŸ\'qûh³r¯Ë:¥\ncƒzA@¯\"V‘UÄ¦ë/§Ë,WY‰•±s-¬D{À¨õD#±8µ:ÆZZ>²ZßÙÈjù(¼úÆsÜà‘Ÿm,a‰ó	z	ÆfuÏÌšénÊjrßEïî4? ?à3éÌ^ÃRºDX*­7­2·š2íÕï3ì5™\\¦ëMSÁ’;ÏºÒz•U°œ–‰Ø`¾;Ü„ÕÚ»à8œBåiµ²ß¤VëÀªó«ê$´ª\n0a­³æYt|şçúïaÎ˜«_ö’A1$õIXâŠi›H39I¤{SfEƒW“›Kd\"ãjâc¥I§:™œêdr¦\'S¸Î™wDK‚Ú*-ÕZøŠe åRR«^‘Ò*éöÕi‡øËí]‰+ó$ãÈaMúÄøªá\r»æ4;	^£Ş‹BV–Oà· P§¨\nE9W´ãŒµ‹~ÇG4²ıœ\nFmïùWÆ¹\"Î°•ñ[Š½¦cv¡²=û«ß¼Óóï5_ÜğØ{ÁÇ½WÍÙúÈ×-½™lvï?B²‰á×„^ıø½şeËŸyıÍ§¯A\r49÷˜rƒ€fq\rt¹Šæ¨¹Ì<Î,\ru\r\\@gf8fÑR‹~¾£)p8ø†ô§¬÷½Ÿd}âøÊıWï\'ÙÇƒ© +Œû*]•¾\Zßªàö vÚ(ƒ\\#èPs\r­6wL\n\\`¨3/2¢ùÌu–œ¶ÈÄ‰æl?ò\rNædˆ¾”§ï–§”À¡>;\n¢6+Êü>Rë²[^5*ËGmD¶%lM¶V›L°©L°Éc³3`ã\Z…	K›†M,›‡Çñ³.Æ6ã	›ºÿlS÷™m‡ÔÚí«³­³ëz/Ô©·ï.ÛWgÏÓª«>¶ûÁ8odİSÚ#ÚcÚ”VdÜ7M+hsøæ‚Z›£LmÎ‘\\Yj}œ#½9eµKufxs£½;Ã\"i\\]Émz¹;^yBÙ§«dß<`ŒGØª¿]p\"%(w‰Å£ŸóQk~€QUj¯à›wá¡Lä¢ÌU¸\r%1qô].†·<{ÕŸÖ/}ãÚ¦Å{ºC¿^¿áÁİ?Ùxïõ÷lûöşDh›>šZÎ§öW^úİsï¼ò,Û/ªA›\'e¥9ÎÅ9Î„€“Î\Z¥Fılc‹°LZ©o1êœLó®F$1ƒaÙóíoKgg|âûïÀhûßèÀtû\\ïŒ@³}…¯9°Q³Ñy†ñÈà\"V³Û]ëjr­r	®€u»¼K¦²,ú-¤°¹ÊM¾¨ãC-£Ì¹-å»}ê¿¾½§Î0£‰À×Zfõ²ª™=lÄÌ,S}~AYÒLÌ¾ ;{‹ÆÊ˜¿Ÿ™AtR\r”}u®Ò^} «ë9}å6«NÎÓ&ò\nÊT~QÙ,-¦ñ:v<ÓËBÎBŠPpæáÇ¦Œ…Ê3w{âq¾İsÃÎğµœºÃËéÒ×+»WWróŞ®^]aJ}?‘\r\\Eµ¢6§‘Ãp”ıX”(»™—Ë –i– Ä¬´x3ø¹x3hÕkó.j,ÛJ‹Wgˆ8e§Ø¡\róûŒ$ãê^¸è`á—¾èùŠ8Şû±ï>7tl¿­û:İ4¼î†Ë&uîû;IÄDô|ĞózüàbrÛõc?Ä´u²a«ô:¸ÉEÊ±CO¬Şbï`oÂ»Ê{—é—æ‡Í:Ÿy€9é=ì½lƒ¾`Y¶Î,˜¬qÒ¸#K4`Øé T–2Xûë²bßÕU ¸•‘BûÓA ·~\0¾gÈğ2~Ë¶ñ&˜ò&Ì(‚ÀÁ·óğ½¼\\&” 0½÷ôv#½ÇŒk|Ê¿PÀ6üösëø~÷	rÂp†ÀŸÉ”l{ït¥\\ÉÅÉøÉF¶\\É3OVØp€ÇnBSİ¦Ñk5:´2e½İ6ÕOâ$^põÕ$\"d/\\YEë­s¹ 1Xù*2> ¥%Ê©LdhéĞ²r¶ªGEÅô”“]jîØ¹3Ëwí†óçú‡—Ìwäˆpç¶ÕËÊÆ_`¿Û0¾éâmß-drbLÏtá/(\'r €äãÔd4JBcÔq¾±Ú¡Ñg{³1Ga¤Â8Ì1Ù8ŞQ§­7.65üËi)Ì•~şöÂ]…Úaáa«\nÇÇ‡«Î\nÏ\Z¸D;?<`Saká;ùŸ‡¿Œ|•os»4Î.ÚŞ9 ¥å–Ìş%agiÆĞ¸ô W$d)°\Zªs&ƒËY\Z-5 Œè“Äû®‘ª—óêQç¨›Èî„»ÉİêqéìB®…Ü\\¹{µ›k!·‹Çá\0+ZˆQiØ»¢…ÜÊé-\"¨0ÏfÈ¨³é2MuîuV…Ü ÊA•!ƒi†t×ó²±³¦¬bĞZe†6*V¬iM5¨ÎÊÅŠÕÇØÎšËje\r°\Z)·º­\\3Y½ñÂua¦œâSû$Ëêô’œ©Ÿ¸‚âç»/}\"}eúDUeú4i5ZC8I]@V@âwŸ±ÇM¹ˆí_½®qf\rà²#KY% ²ªà÷®P‚ Ë¹İ¸àv>Šªè-÷ĞRßCŠee(¯…KÆ®»b«ÇB6$ß=uÉk7=qÙC-ïîzò/w<tÅå»»lãîzßôhÉ‚9åÉIåû·²íöÖï–~}dã£BÁk‡Ÿzå™çaòd€Ànc9È‹Ê­Îo§»L`Kl¾ÒŠŠC…já YäAN··Ì­³™lA\"`\rHZ‡Ñ`êgÏ˜2¸Ê¤Ú6‰ü:STŸ(V–Ò“ÃzââÆŒ+ÁH?€Cc=[ÖÚø”ø²Vïctz¶3Ë™IÏ×áz¶5häß>2¤¿Œtf?­Ÿêb‚É]6¬,é:å¢«\\»\\IWÊ%º¨Ce\"‡Ê(•¿QåbŒÕ;Å~î+ì{a\"?ÒJOœM¸¹4Õ»=WÏ½..Á(_”ŸMLuN¨õdÚØ«ãêÅÕ½—-Õ˜ô1\Z;6vkÜ®È1‹Æ¢Z4&?1ëP‚Š°øÕ€\"ÄıûŒ0J®ÁË%vgÙÃ¹I½zÂ÷\"¶ˆ³‹ÆiÛÒyåá\r¿©é\\¿¬ö¦Jé`÷?nm|à—İóè½[~2óæ+º¡ÔÚÊşg,»\rZjPîzï¢¨ËõŞŞˆŒö¦/ù|—±Ñ‡K¸¨âuÔ¨ŞtQŠhéÍ´;cuÕ‡K¸¨â˜©˜]AE4*¢E$£¦æŞëH}¸”‹½Û.åuúalœ§é·ëwé“úÃúcúSz-èƒúUúVıÎtĞq}JoêqÁ§© ×‡R‡Ó9Ô	WĞH\ZÑ ÑF%wŠ»Ä¤xX<.j‹§D\nbH<Šo¢ÈlsÆjb/«‰œÕD«‚È•¦¨*M‘]×cl†Èw	c;qªîû·¦’SÙ*®ÜGÇ$ÕšÌ]ïş¿h4àüä{µJù’B©S@–ÚÚÙÙ)şõÈ‘obìÛwpš\\‹üRÎo]}.·ô^\0ûŞøô’şÀˆod3r=g÷×I|¸ø=±òáÊ}±²¡Š?xˆâç*÷ÉQ”qV)(í”Iâ4§$!(­’Z¥”$bë\rTP„Ë‰\'Z;†SìGû$Ä×}\";CBğaKÛ:º´¡£Œ\")õ$3=x0Uì?xlôØ–Uú;g¬ö€A™÷é9m\'¿n¦HuMíˆ°’Ÿôİ\nYBYîws ·eàÙ=ÈÀı¸/ÏÎøæI ÷gà¾Ü”qaÎÀ-¸5ÏÊ0OäÜÛ2ğ¬…”©œì¸-7§o¤èÔ«)¨Rşœ˜b4—EÅâ	ı‡îOBÒŸ¤3!êÖ…\"z?¤„HN@ãd…–h\">¯l8\Z%Û£»¢4êvû,Ñí6bù:İÃ×è|Ç–¯ÓŒEllçÛÍØÄFùjİÄWë|¯Ö¦^¦è[³w‘Æ=İ9ÇéÊìH˜ë<Ñí~âç%ù{Kòó’üìê•äç*ËÏ÷Š0´GQ¢~+Ó¯îû±¨}@K#j!UuFÒö—£.%G°m4\Z„*˜†Jƒe§Ì\0~…dõnû’qZS~§Úü§®2öç†xó¢]dãğ„şÆ—dÊJOÎÌüÒ{ïZİ2îÓÕk€-PêMaç*67ÿ–ªPM¬˜Ãdó»Ù©*TuEø£\"1a\r>Ô¶Dct¢ºİ·Ü¨ÕšD;–kC®„ä«óĞÉİ(\n˜/2Uñ½%-İğ‹à•/İóÈÈÜQ«~ŞY¿àü«Gˆ±Û¦Î»¸şàãûºóéİËç¸íî_Ğkïüi÷Ûªµö)Îkù”¯*²$A“EwË]òÇÂgY§„3Y\Z‘İ¾ÉE¾İ$“Ûå£ã”Gé‡ËÖ\ZÑ¸Ì³Ådég²Y2f¾¥×dÔYò<ÜBópkÍÈí4#·ÓŒ½vš‘Ë;c.§à\'¾l¬ÜNÃ÷o3r;ÍÈì8¾Eiä¦ ‘àŸqª‡ÉW³Ù<§<t•g—\'é9ì=-uºTŞs©ÜèRí7—Ğg:m¶ô%Ø4Õß3Õl¦š˜–Ç‡öï›~Sİò™ÌãaÅx;ÍÍ·~qå;3¸$e\\ÕÉ>ûÍ¥±é\r:ƒÖ hä˜Mcñ«Áf»‚«ÙŠ!Î–z³Á…Ì%HvÎR’º6èe§ôù@/m¹oıûM÷ÖÊ†Î‚e×şJŒıâñêUSJ®è^K¯¿dÅè[_é~•Ô¸Ôçb>r‹¼$ÅøeŸÓÃ\ZœÅÎŞø\nˆI †yy„]kğš&h&êê4\rºEš%:]™<Â>Â5ÔS-×Øk\\Õ¹Ò\\ı¹ÑŞèšáY!­Ğ/WØW¸x.%N½F2_(Ì’f.4-Z¤.yÜQkC	éè·Ötdìx:z×šr#ÏÏ×•~Înìº ²®Ôò}ÍôQ»M˜¾DxJ½DxŠï ¤/\ZräpÂ’-Œ†±VÖ†´‚¶÷8‹m†CIÉOqÙVâ•É,*oYÒí£q€ÉÂv3ø7¿€ŸZ@€3ß£J/.¼Ù) L`ÑL*RP7âû~(À”ŞZ…!>¶•ş}€LN’WÇÏÄûó—zk‘m²kIú™ÒLıÅÒÅz‘46ğ[Áşv£MÙ	5Šnå‡´Ë•¯Ñòİ©Ì¥ä¸nøı»Äõ“¿Şx¬çä-×wìÙ¼¥ƒf‘ü›7ô|Øıê_¯!9ÄüÊË¯¼öû—_Â&méY\"†‘«ìCşÄ¥Ğ:“\\$Ÿ\'×ÈbU(¢ÁĞ@S$»ÄY’=&{Uh{H7Â=Â?Ù=Ùß »Ğ4×=×¿T·Ì´D^á^æ?zİñ¾ç}ßë9\'\'r‡R!WDŒËqçPq„<^œ,Ï‘?1ş5»G6Ú,‚+`ŠÖ°ÁâíÇPŞ†òö2T Î›wÔ@dCÂĞdh5ˆ!ÎV¡DúÛùŸ&ŒŒ¹ô»r‰>óÚ¶òK6K¬ü÷:’UJKû6ÌU‘”Ş9OxëìQ€Ã„l\'»H’œ\"bT‘iD ÌÔãÊ‘påH¸r$œ£	ß-\'L’ñ3 FÊ×“„v£®b§AŞà„rÉÜşTô\"ß8}¢o£B9ÜA»ñ$Fés¤…ÕşN°Ø,®ÿ¯ën£:óï½]íŸ·»Ú?ZKZI¶Y–ËØ®­Ä8	x	¡	¸$î%Ø4s@8—4	¸%™†h\n¦C˜¶&!S®I°˜„@¦ZÊdğÜ…tàğ™4eğs“2w	¶ï½·Zy¨m­>Y+iµû½ïÏïû}ƒ#Â\n19BjŒ»¢âÅXIuÅ÷aÑ*›N‘ÈåM. 0»_\\ôä¿><>pï\'¬}¼ÉÜ·uÛo÷oÙ|xº?tâÑÕ«÷Ìì}aúÒO¿³hê÷â©7ß}ÿİ?ÿ…hÍŠé~n‚hRğu¦5ƒ\n*¢†øbÔ…¶«BgU§Óå<Qó\\M¨)%;k–E–%»#İÉÛ#·\'×Õì¨9-¼oş¦~7æ£ŒZ¬ê@ÔëÑ·Õµ¨} şgüÓèßœsÉ¯yÍN¤1,Ø)¨J,Üæh˜S¸›…º\0-¸èĞĞ]}¾CçkÔUÃôEgP—^ºtuéêÒY Å@¦(½‚Ô¬2;ÄvgTE}‹é+ÍåãEÜX™ıZMå²\n[è³Ìü10Kd`–õ˜Ó:^]s9ŒUF±–`]XòuığÔò6S^	š’`ê¡ÌUh–‹xËğÔœªJcÃÓ·œ˜şï\rÿñ£·6>?5ïåm›÷ÜzïÓıHZ¼6Añ¹éï{ìâµÜ¿:õ‡?>óG\Z×<\0z›h‡	Ùwqs\Z<¬ãKüµ|7¿ßÂ²)É’¬ELYœf\0–OHPÊ¤#0‚2—Ol	íŒñT2¸ÿuÍ@à 0?\'fõ`j.y0µüÍo‚yÎ\Z}6Ñ&9z;ü9Àxgw˜õ ôm‚}É£4¨$±¤2Æ-Ä’Á8ÒƒEâózşêşÎ[o»zéÒÅ·Ù5|î7W,ÚŸ_Ş¹nÓÔiz;gÎs‡É9lákX6^ó+¹‚C‰[íLí%È¹€\\³¹. gò¼€œ®‘C=|ÆÎ,’o—e{2wf†äÇä]Ù}‘ß6şÓäX\"kéj<%Ñ-­Ç{¥^¹÷*½j¯6 \rÈx@P´‘ÜH^§d»ìü…ÙµxrGîÂ–º-ÙÙ§ğ¯Ô\'O7ş¢åE|@}!ÿba8÷V.Zğ“¹Œ/ÔùBÖ\ni»¼ê|!ëÕc3»VMÇZ)_¯b>‘ÎUñJSu‚Bí§‘•eNg•ó=ç ó#èN­³ÁùÄákÇäœ jTE4œUì\\›înĞÎ\ZC iSòÉa;Zb•<#l– lê­¬FÕ©*‘÷=\Z:çÃ?çÜÕE>Õ¤Ô&`\"ë¸‘x©•¾¼•câŞ–š	‡MxrÒô•Nš¾Êaä‡•Õè³×ÈçD·Î’ÿ†‰Ái ï7šêo€\rô£éÛ4øìïßÈ5x³TˆpÜ¿èÃ=\r	v,óò\r¥u­\'[QgëVÔJË“Y÷²C¶|ÒŞe ^™\nô©p”dºl£=é¬Î¥Î¾ˆ.ÛÜ‹4…$ë)CúŞ	×ìÑ3Ÿ\0HóRœo•ë†Ä»ÜIœQœÜ´Ò§\n‹iõ0RNRú¹ïœÜÈxB…¡¼Rzç1…ÊD!ë»ù+jêBvcÎ4,#bpBFK\'\\“0tÙÔØäá¼p]dê4Uš“°—±Pä“ Ö¨¦YA‘²Ô½\rKFŠ;wîÛM‘»¾Ù@/9V+¹\\uÏw“â$UÕ,ş«š%#™”ˆä‘0*#Vò¹|ZPZØş5æ*ù¥Í¬ìĞùŠşÈCÛÔ?õö3«®¹²áçİ?<±Ö<¤nî\ZˆF›“»Şxº§ÿí¾÷¼*u÷¦;—]U¯o½~çÊåÛµÅÜ¿©÷¦öºTugÛ®ê]ûìw_&Ö*;ó?¨!ôˆÁ{B•ƒ)shª³²…€Œi§h®$SËa‡T595ä¢IÔÈ)º‘¨}CøVnYËğM…3¢t|İ:ñâñ	‘$}xN<$ÇE55•»›.°u R†9c5yHMY(÷;]d:M\ZlI(ç\'^&C ^øGºÉr¹à,uÖ“´{:k³­Íx\'Ğ¬<ÌEY÷§Ğñ2­®<IÄa†±Ì|7Ø°™ÖÖær\"PóH´¼i¶³9M6Õd$¾³ä_wí\Z5¿yÖ¸úÎçÑí{ 88ı³=SOİØ˜ ~æÇÄÏLğ9rØG½ŠQ‚ªb%”DiëÊ®cÙ¥bf¥HT…‘¨BÜ´IÎ?h‹ÎA¢˜,\Z@¢õñ…{ˆ1Ô!f±Òb…ôc>:VÁbv¹ÈX®Å¤£xƒFOùLŒÁØÊU‘(…\Z_$ĞÏ%%f<å’yJ¡úJ¡z‘Ã0­[U:>.-Ë2/ûƒ\\	Ê%+Ì\nUô£Y¼ 3¬Afe!y¥3è-×~¾*xA½ğK:Ês„ˆ™IğFXÓ5$ˆ’ …$N0x5	4ÉL\n+44ì$±U‹Zp&ƒ«8%*05è¤AÜ,/&O” Í$«=ÊˆìDæ:‡Ş¿í…U†2¢˜÷¬^ıØâ‘_¬øşª›Ñ“SÃ?ûÖòÕİ?Œ:öŸ uC¢İî±Lñ\0A|3AE+P~0—f™‡È˜Ë*Œ…$€%\nòw–®¾Ps1Ègğ£BdÌL½¶fvÈQ+U’èW5LîaùSŒW®™W²ayœ©/(ÙGº?*4•@šltu>(È9Üà`9î=hôÏòz¸õKıò6p¼m—¶É÷áİp7ú	÷ˆø°ô¨ük°Wş9~<O€£âaüxŞÇŸƒOñ%p7’¯ƒã Š ‡Ûñ*àb9äZÑRˆ¨q©ÜD\"Sæ»@ƒ]ªî:›)˜¿£ç‚5õ1èšœö_\n©\n¥¶~T$ç†ÜNOAs…\"ßEIª—±-Ëp‘ÈØ†&á´$!Ë€¡fªÉu]y‡Œä1˜uC;B(D$WN#f”ÏşªódÂ™ê›êKÄ\'ÏöyT›JÛ•Ù1·—va”iµ³?AŠ:e¥³kd¥G(+=Òáï¦_?[_/~şêô=|nj×]nŞŠfZ)\0:J´Ò\n}ş\ZÑ¬ŠFR4çõ@AÚSBµ<¯Àğ+L¡JíUô“›Sjªh°á³¢£€*İuŒÊpD}v+°‡4»õ\nşáÍYEŞá	~í•4^|5°-¿FW+{Xivqvì#bÀìUşff&°Çù@·Òºe¦ıä*C¾Y¸¼ëÇ²lEö‡X4ofÎÑ#²eÌåôˆª±Àö<I )w1­zOœ	{ÅĞ“n3•L—=Æ&Jò!(èD[5•\rbRMˆxÌ›¸\\Vñü°Igû2Îœ2N³ù\0¬G„ñºƒñST·a?£Ì[ÍÇL~9†ùLøÖ	ŸÈ÷…+×Î+©ê<4¾pÖfK¼ Ê!);Vˆ¼ ÈJX²ál1%%•êpÔ‹\rR1\\ÄEÒâğ2n¹àŠ7J]ÊµúróëVı&ënñé.k»p¿¸EzU8¦±ş.\\’ŠY\0-.èy«Ù¾´[÷I?‘örO«ûáKè%eŸ:\nÇÂâÏÈçùóú_­ÂE9¥°6L•m\rÁkYğÂc†ò–ÍJ‡uŞ¦$Jõ¢^¦ĞUXä4¨Ökc3gÜvêÆ4b\Z>¥A;\"`ÅÌá¢y3î5Í!óQ›˜\'¶‚^ïÂÌê>–ô6/4{­XÆYúë…Îä/éÚ\\(D|™’1–UÅ†i’¢k8,’\\ï®Çz8ıS”Ò¢iYÅh‡Bb˜\\çz-lkZX2u½ˆ%›¼„*– (Z¼¤›jXc‡g‘€Î¢¦ÍÒiO5¶¿44H°ìĞ8¢Íû]œ^…áü FxİâÊ«L¸Á|ĞD&}¤!¸•‡9büöÂ/#_®gI…sã…¾¾8I\nÈ5‚}ñsËçO!°¼*T‡7¥Îë¼1hçŞ­Ü6ŞÃÆz£2½uªí®qÓÒj\Z½63AÊ	²şÇG@‹¶ÆÊY3P×¡R÷ìifü°ØÙÿçuwj8f&‹iïIkî¸8Úè:~„¤\\ä‰§El¡ó\n¸ó>¾ò‰•—Ç‚/7g&†qšO6¼ÖŸN\Z9}Äê\0äFlÀáí—]ãcšE¯7‰\rO˜›íü£ê˜wˆÄ¨‹¨ãòìš>~ì@\'ßvàÕg\\uäàôÈñóÿBÜÅ/ÏšF÷Lí}÷ZéC44úÕ{4ª7½šû/â9è-†èñ\n[¨ÂÁ÷Q¾ ó~››5k>Ãş³š/¨•ı+Å_Ğ|›ş[U<\0\rEƒ1P5¶uNáRn	Šq-=­¸jZg¹¾î4%â§AïôÄÌ]rXOAC›S»G?ˆ9Wsu¤§-%ƒnDU¶¢ZÜÊ+y5¯-TjÂÏ˜JÁ*DVD×Xk\"kªú­şHÕva«¶İ¼ß¾¿ê!íQsµ\'òˆ½¿¤¼f7ÙŸá¿Ú×¦Œÿ³gR5V$/½¥ll¢%•äõeú.ÓÊ—ğ\02«l)Hh¢ëªAV:‰K;©·°Mè*YÊõ\n¶Gh#˜\"Ğ7\0)#…šSo¤PjuêäŒ¸öºÙU:-×Bß³Ş°5—Ña\\—Äô)vÎÜ´Ú¢®R¹RgTD.ÀÒáfœ!Ô9’L‘eMNá¿HÂ:X$n\\8ëgû6N&âÆ$“Hd2é­o\ZÛH´c/D–o¸<-•,Ø%K$²fÃd=Äg×Ãq¯Kzæ<]lkŠşr°g>>ÒŞ3íaâ	G«:Ìrù\Zš\0)‘¥0WåÉü:¹ÇÅƒ®cÌÎ&‹—¼zOŞc¶ÓV>?v\"æ™DşÚ‹—¬ˆ™¹2ııßTÌÔ?™¼&Û2ÔSš¾ë€QÈ&ïÖ«ùÂÔ3÷îÚŠî¾ô§ƒK×t\0ş3‚ä\nendstream\nendobj\n115 0 obj\n<</Type /FontDescriptor\n/FontName /AAAAAA+ArialMT\n/Flags 4\n/Ascent 905.27344\n/Descent 211.91406\n/StemV 45.898438\n/CapHeight 716.30859\n/ItalicAngle 0\n/FontBBox [-664.55078 -324.70703 2000 1039.55078]\n/FontFile2 114 0 R>>\nendobj\n116 0 obj\n<</Type /Font\n/FontDescriptor 115 0 R\n/BaseFont /AAAAAA+ArialMT\n/Subtype /CIDFontType2\n/CIDToGIDMap /Identity\n/CIDSystemInfo <</Registry (Adobe)\n/Ordering (Identity)\n/Supplement 0>>\n/W [0 [750 0 0 277.83203] 19 26 556.15234 36 37 666.99219 38 [722.16797 0 666.99219 610.83984 0 722.16797 277.83203 0 0 556.15234 833.00781 0 777.83203 666.99219 0 722.16797 666.99219 0 0 666.99219] 68 [556.15234 0 500 556.15234 556.15234 277.83203 556.15234 556.15234 222.16797 0 0 222.16797 833.00781] 81 84 556.15234 85 [333.00781 500 277.83203 556.15234 500 722.16797 0 500]]\n/DW 0>>\nendobj\n117 0 obj\n<</Filter /FlateDecode\n/Length 332>> stream\nxœ]RMoƒ0½ó+rìm%„Ô1Uâ°õĞÄt‘FˆBzàß/Ø´“	Ğ{ö{¶qâºyiŒö,şp£lÁ³^å`\ZoN»ÀU›(åLiéW„o9t6Šƒ¸\'Ccú1*KÆâÏ¼›Ùæ¨Æ<Eñ»Sà´¹²Í¹nnoÖşÀ\0Æ³$ª*¦ N¯}ë`1Ê¶\nqíçmĞüe|ÍGœR7rT0ÙN‚ëÌ¢2	§bå)œ*£şÅR]zùİ9ÌÎBv’ğ¤ZPJ([Ñ‘ĞQv@”ˆ„@T¤ˆò\ZÑî€5W÷Ã½Ö£µt‡ié|j99ñ?‚9¥pª)r\"Ÿ‰¤bbOäéŞ2’5õÊ‰¤qÄ‰ÈœH*”sš£¸ëpœŒHòÌiş¢^§¢9–Ÿº,ÿ±1ys.,oniÙ6ğ¸Dv´‹jy~A™«0\nendstream\nendobj\n6 0 obj\n<</Type /Font\n/Subtype /Type0\n/BaseFont /AAAAAA+ArialMT\n/Encoding /Identity-H\n/DescendantFonts [116 0 R]\n/ToUnicode 117 0 R>>\nendobj\nxref\n0 118\n0000000000 65535 f \n0000000015 00000 n \n0000016429 00000 n \n0000000155 00000 n \n0000000192 00000 n \n0000000268 00000 n \n0000053525 00000 n \n0000000345 00000 n \n0000016664 00000 n \n0000029008 00000 n \n0000026362 00000 n \n0000026275 00000 n \n0000026019 00000 n \n0000017012 00000 n \n0000016925 00000 n \n0000016838 00000 n \n0000016719 00000 n \n0000017398 00000 n \n0000017311 00000 n \n0000017224 00000 n \n0000017105 00000 n \n0000017784 00000 n \n0000017697 00000 n \n0000017610 00000 n \n0000017491 00000 n \n0000018170 00000 n \n0000018083 00000 n \n0000017996 00000 n \n0000017877 00000 n \n0000018556 00000 n \n0000018469 00000 n \n0000018382 00000 n \n0000018263 00000 n \n0000018942 00000 n \n0000018855 00000 n \n0000018768 00000 n \n0000018649 00000 n \n0000019328 00000 n \n0000019241 00000 n \n0000019154 00000 n \n0000019035 00000 n \n0000019714 00000 n \n0000019627 00000 n \n0000019540 00000 n \n0000019421 00000 n \n0000020100 00000 n \n0000020013 00000 n \n0000019926 00000 n \n0000019807 00000 n \n0000020486 00000 n \n0000020399 00000 n \n0000020312 00000 n \n0000020193 00000 n \n0000020873 00000 n \n0000020786 00000 n \n0000020699 00000 n \n0000020579 00000 n \n0000021260 00000 n \n0000021173 00000 n \n0000021086 00000 n \n0000020966 00000 n \n0000021647 00000 n \n0000021560 00000 n \n0000021473 00000 n \n0000021353 00000 n \n0000022034 00000 n \n0000021947 00000 n \n0000021860 00000 n \n0000021740 00000 n \n0000022421 00000 n \n0000022334 00000 n \n0000022247 00000 n \n0000022127 00000 n \n0000022808 00000 n \n0000022721 00000 n \n0000022634 00000 n \n0000022514 00000 n \n0000023195 00000 n \n0000023108 00000 n \n0000023021 00000 n \n0000022901 00000 n \n0000023582 00000 n \n0000023495 00000 n \n0000023408 00000 n \n0000023288 00000 n \n0000023969 00000 n \n0000023882 00000 n \n0000023795 00000 n \n0000023675 00000 n \n0000024356 00000 n \n0000024269 00000 n \n0000024182 00000 n \n0000024062 00000 n \n0000024743 00000 n \n0000024656 00000 n \n0000024569 00000 n \n0000024449 00000 n \n0000025132 00000 n \n0000025045 00000 n \n0000024957 00000 n \n0000024836 00000 n \n0000025527 00000 n \n0000025437 00000 n \n0000025347 00000 n \n0000025225 00000 n \n0000025924 00000 n \n0000025834 00000 n \n0000025744 00000 n \n0000025622 00000 n \n0000026467 00000 n \n0000026657 00000 n \n0000026714 00000 n \n0000028971 00000 n \n0000029116 00000 n \n0000029230 00000 n \n0000052297 00000 n \n0000052534 00000 n \n0000053121 00000 n \ntrailer\n<</Size 118\n/Root 113 0 R\n/Info 1 0 R>>\nstartxref\n53666\n%%EOF',2);
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
(2,'SÃ­ Aplica');
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
  `plane_pdf` longblob NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_plane`
--

LOCK TABLES `capture_plane` WRITE;
/*!40000 ALTER TABLE `capture_plane` DISABLE KEYS */;
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
  `power_letter_pdf` longblob NOT NULL,
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
(1,'%PDF-1.4\n%Óëéá\n1 0 obj\n<</Creator (Chromium)\n/Producer (Skia/PDF m101)\n/CreationDate (D:20220502132232+00\'00\')\n/ModDate (D:20220502132232+00\'00\')>>\nendobj\n3 0 obj\n<</ca 1\n/BM /Normal>>\nendobj\n4 0 obj\n<</CA 1\n/ca 1\n/LC 0\n/LJ 0\n/LW 1\n/ML 4\n/SA true\n/BM /Normal>>\nendobj\n5 0 obj\n<</CA 1\n/ca 1\n/LC 0\n/LJ 0\n/LW 1\n/ML 10\n/SA true\n/BM /Normal>>\nendobj\n7 0 obj\n<</Filter /FlateDecode\n/Length 16012>> stream\nxœí}Û®%¹‘İ{}Åy6à£ä	HšÑÀxÜü²g£Û€Çÿ˜q!×âÎ¬ªF­ìîêÚ;vŞHFÄZßc:õŸ·cüûŸßék©ııèÇßşüÓ§ÿûI~/1–·˜jyıŒoÿö??ı÷ÿôöÆñı<[;Š^eû2Î\roòïûÇ7ûğoÿúé7ÿ˜Şşõÿé%CËé­õS.ö/Ÿşyü»ß*¾‡3ä¯Ş*¼ç³÷óÉÇÍßÏ6.ôŞÖÇÿå)^$xœÜŞÇ…RûéÓ8Û?ÿ8>×÷#ÆS¿¿ãŸPÆãƒsŒÙ„-×\\‡ğ|?Ê¸¬ÈâèÊ£½ıùSIÇ{i)U§–BÏo%Å÷Ã,gMm\\2¥q\\¨v\\?S¿Ëéåı¨%µ!>Gg¥Çql·?F·‰°Ô#œãö©îè1½…|Œqü.8ßs)¥©8çœÆ-ÆÉï½7“c¨Ç0ö¼Ç3×ñT9¼ÓÊ©ÏŸÓ{;B‹C<Fc´ùóÇSµ:Z\"ÂÖbÓ‹Ö÷ÎSLcÚìí½Õ4Î\n9¿Ç£—&7}5~/*<G³Ú[)Ç{JIÏ/ï}<g)r~	ïUš3Äõ½öØ†¸”øŞc<D8†¢ÆEK\Z—:£4kôë¸^Ò.,Ca[-CûÆ]K¡(õ=©Œ.·m¯*lï©C%ƒÜ4œÒïr>º°¥ÑÚqÛzÖqô8vôk“Û†qÛÑí¹aÕ.e7ºÒR”Ô¡•!}ã¶¡µ1äãØøBrÕqÛ¡ÉáÂôjŠãYÇMGœ]û æqµSŸà|?SŒÒßCØÎ0îÆõ‡±œe4aXg9Né­qı28kÔ:T²…ñãgLA:|»Á8)Õ9ä©Ú{®‡ôáøuØ–=ÿPò<ÎÂş†$õ£gÇ¨ÖÑ©£Ñ*­ja<nhöè£ŸÒ)ıÔâèÆ3„7‘õãÌãzm<MÊu^;ŞÃ¡£ÔÊ{=êsi>Òè®1‚ã¹ÃĞI‘ÕX»ÈÆÀŒ®*k­¹Ëè ašÁÏ>ãÜ·Ğƒa—#ƒZñxğ>üÇprÅq×.6/ç„·|Û_ÇgP/`Ïi×ÌGÅ	î>ŒC|€)şzÎ|4÷hO>Nuhw‡z€è½f=”CT`½f=™CRû¯Ôç9d7/›ª¿g#˜CSÓ¯4ÔÃjÅô[vMQ¥ÈñPÃ/oPÑ¯j÷aéÙ¸qLnö¦§¦’y¸Ğ¦Z>57‹#­ê(–’çáGÍäåÜicğİâa8y8×>†ÿ$ËÃµŠ½ëP/sÌÃ·ej»ÍÃ¹ŠµW2ñœ²’³§7ÈÃßÊ9£…Ëm—)×n\'y˜<¼­=…œ=Q®Û^k™¶‹\\nWzÀüãt…9í«qäò™\"“íä^óğ¹£ï“¶{yâáÙe”Ä·šÇî*’±¬Ó¹79,Ë¨]”“×…,—Qı\0^ˆLµÈ\"\"S7–	BY,Ò?­D68ly´j¨º9$G@‘eíy\0¥ÈÄp€¨\"y( -ìé0Å$x<AZeãŸÑ‡\nâYï¦Ø.ü$-Fïc‡J—ŒÛÈ\0ú%EÕyİ\\zlŒ†8œ£Ì‡–>:ÌÓlK}5ì<W›EOF‡©¯ë«wÆ‘Å|b§^LY½g[7{ĞÀ¤ Î8òø.¯Îm¤‡E‰ƒ•t\"V‚ª‹B†è<éØèHA—¼´1‡·á†TMTkó[°\\½Å²†QhËÓ†/>KŸæ\"ÎWÁ2¤Í®†ó\\ml¡(\0ËI0Õáú¬Å]’U«—Œu°r\0Ã\n(â\n—§AéBÅu§\"¦)y0‹&ºüÏiDÜúòS]éJ!Ö”ØÔÚÈ÷5e@UúÍ=dUªTEùØ“*«RŸkôK¼ÏòÍY˜Ú €isâÉHİÁî>)ùÓç¨”&\nŸè¡ºbŒò\0ÎœoQ©§¸¦‰GƒŠ(Kí‚„\\rv0B›E÷â‚ÑŞTÃBBáéB‘Ã!(` Ùõl!ÓIºÌĞU˜¡ïÄæ?šˆı£~šHóøt§IôNë¡@#èáÁ7ĞNf&èpô¸ú˜YcÑ\'ŒHF—ÙØRæmK_ˆàMÕj;t¬q„²Å„^ot&@Ô•Œ…X.YÖF‰É‰?“ÅÕ&óŞx9ù\"ñğ\ZD÷á`¶WƒéŠêz8ûÛtYxáhË·¥õn\"\0\'ˆ·8Kzİ_İ^àé5jºêÌ/\\Ó«·ıål@á9\0½ñS¶·CÀ½I§è¶½Ÿ.ğ£WY€$½òN<mûë1 —Ş¤ÑôÎ½ŞÏÿüé}ú—OïMĞì=\r—7ş/ú%/÷¡¾ßççışy¿ŞïŸ÷ûçışy¿ŞïŸ÷ûçışy¿ŞïŸ÷ûçışy¿Şïï÷?hÀ!ïôöAßã‹¼Çİ%¯ññ°O?ê§ÔôÓèˆ¡–öå‡9·?fxI•ÓFÊ—n/Ûó·–ı·uŞ\Zuğgø ëı`ZçŸ¬1C¯p)ûòÚ‘®›Ç°İ|n¿ÛÍí·kc~îõ~ø|¦G9Ş„îı4,:ê§åÓP§CpXâ#†ö†3ÉWA‹jc¸¼&6+.³Å3¨[ •ÔMÇK8ˆ<”¶‡jÈE2TÄ#\rû¤ÂÚ‹’<c>º‰‡yŞ$>­]y.;ô. 6ÜŸ¨çUXBmêÜ†8šÔTÚóğ6zèğ\nÇ°8^ùÆk£¾ùû¨IPD„¸;¿¿äjÃØ¢€ÆhKU·<Z!Ï-Âñ,ê[ïÉD§ ¸>n:|ëèø(8dö=^›á³Ü_@IÙ¦á‡Ñ‹Phÿ©ÄK¼i8²ˆóà¯ò2!ÂdT8\\m)*Rß\0Ç8:³ù†µ\'Î!ş¸	0É™“SúC¿ÙÁÃ8€ü8?éÀ·7ºH\Z>YœWæŠp÷ûù³×JıóZ!B}nñğÜ6ú~ïëè¿Q?¦AÍdô+z<Eq©G˜=îc#bûúF£(BüÎ#*ÈÇâ\ZãÚ!âqZƒ¥rù>NŞ0E8$hû¡œ\"-™NPãñ¦©Í¬ò\"”®èn3nIß¯‚xo’µƒÙèD(c¡\\*b·øFF¬B}Ù\n:úxè‡ñNvªR:j ´hğÖu¹!ëi»³¼‡U±gzH}é\ZFP>Ô»ç´µ{HÅ:õĞ\0ŸÑëò…®TtÜçÜz}HG§—ƒhÈÄ\\µw|â‹aËË¸¼r\'l¤\"ÅW´NJ$¯aAß\\ßôXˆAïª¬¦—ÂàÅQ	_†™ø4½ t]àytW\ndC¦~²’ı™¸ÔØÙÒäeo8ßL&™õ…é‹Z¶›Í¤åxµò1Æë(ø€u18	Ü”ı	®Í€BƒÙ¡kàùVÂC¢«Ù™bPàu×ØÁ;cÙ‘Càó¡5\0×¯š6&q–Â™ ÙbË\0w°à\"lŠ!Ö´]Fª‘Cl›j¹£bùÁõ×\\pıÁõ×\\ÿÄõt±Å—nøëûïÿôé7ÿõí·¿ıÍ?ıá¿üıøåïşî÷ÿ‡O¿ù£Ûßşô/ã½_W„·*3\0qh÷èÄ?ıôé·Ç%?‡Ä&ÇÿÒøoüÉyüùÈşîíOÿûÓ?üÓ>ıÃŸ¾ğ@Ÿ]àá1ŒtHäX¨ˆ~ªA¢31i•xÅOŸâ©ÓEEÃ?îg$\rn¼üVíÅL>èz?|’ø´…‘$¢i!ı$ó› Ò8ô)êÁrÙ”ª|}9#×vùÍÎÛšğA×ûBØ\'\nPdÁK-A¿\'GŸ.ß\\_“USÙÔìä˜vªÔl MğS™ÙJš8©²iTiBªJÅüÆu{°dµÒ,g7O™Ø³óĞ£JÅò«iŞ?•é!’s„¢²šÊi!Ønx’Š9qC§&ßU&ü$ªL°ÔN6*#RówãâÎy¬«Ä«¨h@£ôjÿLN¤ºö”yÚäŒëT™yääÜ¬jï‰[É~¶Ò8•š—Wm-ì›Æ©åÓ)TĞ?éç7\\cØ»ÂN »‰ÌFÚîfÏ%@2Òõ\rÏ/2éD-Í‡Bã1[j]\"RéÕu2½ä#½:Y¦Ÿ&*c8Djø½FMDs çğæ|\0Š Ráí\r\n#S_réBª%2¡\"vöTB‘\ni±AppLrµÙdA0\0w]ß`(\"“.MÓ¤ì‚“ÁöD:GzZgÖGıûÏjÉÙbÀ\'Y¿GœJ×ˆMuİM\'ÄÊz¬Q†u­¯Ç—³\rg;O› ®ş½Gä@EYIZ9&İ‹ÇqëãhÈFt„¯4jÑ¹@ÜÆ7:iÈ¤	ÑÉE!…‰NCò¦ZÑù\n+a4^£?•5:Ê›ZGçJ \Z§\nl(ÑÙWØL*:MKd|1³yú7;VMùGÿ4M|^ƒÀ¼[ZîbŞ\rnÙ†\ZÏ„–²«BŸ,Ÿ†®ƒëC\'³“ÄpÀbØàv1ÀìŸ¡\nğäPx|(cÔ(2Õ5ÚL½Şq	\0ƒ¥\0é`SŒ‰°> \'ìSğu\"ğWâ8P?@ı\0õÔP?@ı\0õ_¨¿70>˜‰½zd¦¯ÈÌ-2£Q˜?HîÒEbjğT	Xrˆ~ºÄdLê12Ä\'ÙÎ°àÄËo×˜Ì]ï\rÒ„6ƒI!JDBW¯¥ éeQùÉ=AÊÑ¾œm¢ë1¸Î%ÈôºÇW¢6Şúõ“A5H’YidPdW2(Ró†ÀBÍËt¯3QSdW2(ÒW2(¹¯dPdæv˜Šô•†n.¤[ÙŒ\0/Z!y¦‡Í¥,ö!2‰M‘N5l\\PW%LT0ts›•’ÈÄç¤Jş«øœ“¸ È4Lì,tsîçÆE*>§+û½No£ß&ŒqrÁñI‡¸ŒÉà(ÒİD&%l\\0¦9û€ç™³şÕRI!ËÄ[\"$…×@T0¦9q‡>	3w‘útÛ3É0Ÿ4¸£=7TP¤Îù§¶ÄTçŸz%2<d\"(ByØ@Dptø¢üS¥E&­ßx ¥›ñ@‘Iw®W+»ô{Şx He„2ñ@•‰*Œi²Á˜v6ˆã€J¸ğ‹ï¤Ã#Ñ”Å	½ÉÊ}Á	gç$â„Ş‰\'¤Ş¾cXÀÖè0ğ0ƒZ@!@A 7 +SÃÂÆ¡‹`?KeA“¦nÇN+(D§µ4\"„Ó®6>Œ™MÔ¿9sşÑ?M3„#\0d—>ç‚Ç‡BCÙ]¡GàØĞsËÿ¡‹ÙQb0–GÅ˜ÁñbtÙCC\ràË¡.ÓçwÒ«‰;œ8’ˆo@™ üÀ0	°æÄ¨Ã~Â@Õ¤ƒ¿!nó@õÕT?Pı@õÕTÿu¡ú{#7ñK‘›h‘›fäftªFl$rS‚åÔÄŒàS)q†?Êm.MÙs_\nç·”=÷åå·û\\š¸ŞWB\Z¹N”ëÎ“rµ5h‰ØRöô©Nl){¢UŞØR®×Y®\\¯³\\Ùs¼ÒÆ–r½²¥\\¯l)SzMZ¬D4šÜh×Y®ÜnØRö¸“ØRöT¹Î0”TGS5+ı¦tV–Mş´»i®ì™…øRöAf0Ùs	ÃÆ—²gÚÄVn<Í•ÛäK%L¾TÂuš«Äë4W±tÉ–7¾T<±2_*ñ:ÍUâİ4Wñ¤ÎB„©XògmÔËÅ³DëF˜J¼LsO;åñ-ñ0•x!LÅò]•ÆOÕ*–wÆT,‡¶DbL%^S‰w³\\%^g¹J¼Ìr•x7ËUVâ0lTüQÒ®›d©Ä,Éwxk\\~ïÀc)ğø‹&q;A“Ğ#\0)ôàŒûÀ‡Ñ\0@®A’òès¡€f¨@œh+€ª‚?°Rƒi@ıA”`& JlP`J0=áA0NÿæL)·É”`à`J¹]\'¹¦³ÈS‚[¡I:w?‘§óÜQÕ)M—FDiz>äbIsË›ÒÜäòº4‹Ùî¨9Í‹.‡O3¨\r4×Z¯“\\\0P¥\\ï¨Ò°BTi¿y0$ÒóOš„^ ;Áøbf?˜ı`öƒÙf?˜ı`ö/³¿7È‘¾ä®©æCô+‡N_9TæJ¡ñ¹í+ˆJõ?¿£cÛÇDA¤\"£•™©i–™‘OA™H‹ZÅ¾¬ÈH‹\ZšJ[ZÔj)Rª¼1«Ù[çm‘‘ºŞŸmL,ÔûòÚ‘®›K\nMy=cşV¶›Ûo×ÆüÜë}¾1–·ì—²/¯±$g¿æ ½1ËÛÍí·kc~îõ>ß˜œ¨1öåµ19ÑÍ¥J_y=cş–¶›Ûo×ÆüÜë}¾1†û~)ûòÚ8ú\rÆuøæótû-n7·ß®ù¹×û|cj°Ã‹@àğãûûe£,nU\Z5ï?Ëã¤%íïÅOº¿pìÍu÷æÿ;ßøıtÒ Û—×A¯\'\rR;¶Aš§G;p$ûí:è?÷z?øâÆ™½ØtF=H=Lúx]šiâ¹–2„¼-¦ÜO\n!µë¯7ë3?ò¢_ˆç8‹x”8‹xƒt~§UZÓä~kQ±ÈlÖ“V‹)9\\/Ø\"sÚ¹^°…Aå…Ï\"u*»–HÛvÊ»VR+·©^bQ\"u\Z½ø–½P(İ^¼lØ÷œe&\'Rcğka¸Ô¦õôµ~\\d–¬Î+ÍEj°&]Šİ—ŒÚiéºÈäu$n‹Üµ,îè‹BËáEæï7kÙ¼ÈìMˆØ‹Ôß™».VáTFo±p5R«ZfÕ‡õÿ¸êàÎTO\0ˆÂh\n\n Ñ\\Ê\0İƒ¢èFí@‡sÕ\rê-¬DY5×o€R¬BĞÔƒ€–qåè#jL@oQ‹\ZÎE+`(o›AŒe\\\\.VˆÂ\Z°Sà(q–éËö:áœáê+\'…:B÷·±­PGh3ÈƒB¡Í`*u„êZ½UêÕ—>¡RG(s…*uhZ­Ì•:B«®P©#ä¹:kUêÉW	l•:‚½À.ÕâŒ¾¡TGˆîF¶Ra­j ZaFş¨VGğá^«Cß[;—°™¼w÷­VÇ|ïŞjuØ+3¡”àµãb¨Ö±Êu¬ã¸\\Ç¼×ëXÙ[½ùˆ\\¯c6…ëuÌFïõ:f÷P½ÕT°cuøV°c\r\rìXCH;Ö`o;–VPÅ¥=T±céÙV±ci$Uì˜ŠK;–†o;–-PÉe3T²cY×V²cÙ!•ìXö*ø;ú+óÈ €üòÈ €ü—äßEÏŸ¢g™EìCı­tx­­Ìì%x¬°k5qLªU\ZE9ƒ…r÷€Ï,ˆ«š3XLÔ4Ûş[ô\0\r·G>èz_ˆ‹´|xE1[®­Ìê¦µş@]­³Ÿ²¸|¸Èd—=b©FÏDjJ$²áNd»—c*[—© Ù#FeS-Ezöó´³Í.{Vü*Y7á0»™Ñ\0‘M‹èY11ÙT¶¶Bdg.gWod6Ö³‚¬l÷`\"•E÷Ù}ØmÏŠÚÍœÙ·È†¯?L6=HÔQ˜ËmRÂ`›˜kÙ@™f.Áæ¸ÆÉºåƒî?²×ÄÙÀ-Ù>$Ìh‘õaíMáhN&ŠTö#¨*5»T™uP˜.U•Y]¦~*Â§è¸rúd6]¯>éMw®XÍOÏXçô*µ¥\ZŠp£«Í×V?Ù»§\Z0Å7ôbÀ³»%ñ$ûu·LULLç\r`“Ï4ÔÕPv*Š+E•Hyê¬È`sš¨ÚàªX½°¿©²r‡æÑ”;ë3«(n\ZnuNà“¹Ô9Ñï†¥í\0£!¬“û‘ÖÉ‘Ô„ÕóªYÛœYRßLGµÔ=GWÙĞ©8o+—H˜^\'2ƒ4£¥	2Ü`‘:¢®®ii¢º°%L£³EjHˆ™!&®¥‰­<Ä\"uD]ÊĞÒDkWšU6ü‡ì¡U‘‰ RAÔ2Qn£DAGoª«ÈêPÅ¼)¶H³îÔ4\r@$Ã\'Ù‰È†ÓÔ.ƒE‰t¸×Â¶×ÒÕFe«(±`=C­Úæ-^m®·|ƒßY6·\"/âÏ¨ÛêM\Z5[R§_jİÛ\\¦ÿjşê¬y:ïBİRif$xg·8]§Ÿ½†e9Y\Z¾åŒi Ém“J,Oª³€À•LËÂ\02H¸Ú.\"\'¸\"SXÀF&³\0–EHI&¸0uêÀÜ‰Ê_‰…<àı€÷Şx?àı€÷Ş¿DğşŞøGù|üchœ-•”ç²ğÇ,;.Ë$%QPâ!ùDò`ş½‡FâÇ†G,/L£†ù×‘Ğ®1,ùÄ+…™9\n\'¯2Í0ÏÙÌEpˆÔ²V0\"³ìVğ,‘]y–H_y–„Z_y–†_}‰1 R¤b^\'ñ,	ŞÚ¾\0_‘‰Á–gI<x˜î‰g‰L\"Ï™àCg¥agÙ7€x–„¬m¥6(‡†±/<KBŞf¹à0\"³à%ØÖ¯<K¤¯<Kã÷‹gÙfÖú©î<+Õ™\rN×k3_œîÜ,06•šâGÄ³D&0sr«›åËF´Djá{tc›“N Z²ÿâœt¢‘isæ€F°Í\Zë†¹ÒŠf“‰ˆÖè@_ %	V€h‰ÔÖ\Z€h¥6×$€h‰lÎ½´9KCöÒælˆ–ÈfIO²Áv%Z*[D+µI´l/‚é¿q¼<®¶à€oÜÀ_Ğ 7˜…Î¶¡Aµ¸»—à*†Ìƒ¬†:\0Ó§Ú0Õr{¡ZSq-h,¸ÖÔíÈ\\F\0²cÙšfµq-Ø8ìT–X±q-±læZ°{º^¼r-ö$àZğ9àZğM“k±×‚·×‚W×b÷Iã²-ßrÈ4ÒäºI\'–“\'İY`\0®Å°Aú®\\@D\Zî¸Àlf Œ‹Ğ’¬páê²Õ…¾¥¿!\\ò€ùæ˜?`ş€ùæ˜ÿÒÁü{Ã\'õáY5ª‹0eÑ¶ÇO~·oßöïG±Å‚\Z=)¿Ş8JŒ“zÅ¸S/ù‡?¾]fªDfK©™t‰ôu¦Jd¶”\Z¤Kd¶”šI—H_I—´³Òk ]ZäîBºDú:S%Åñ¬ì€Xd×™ª˜f)9@»ÈlM6H—ÈfmºÅ´¬ŸÔ°§‚€¯œK‹w1\"­|øŒÈÄ‚1)[8ÓìÀ‘DúÊ¹´8¢®¤V]N“s‰£gÎÛ•sÅ~å\\\"sp Gìss	jJŸkı©Ñ°DİÓgı\0tb÷ù0®Øˆ4,}B\'\r_¿ÎS\rx¹™§©æ|’æô™\ZªU$;ÒGA¸Dj‰¦ \\±Ï„T.‘]	—H_§©Dö:M%²ë4•H_	—ÊáŠ}®Ø™pá(¸z\\maßàÈ !€#n2€€C\'‚pqw41$\0×5r@abà5”¸¥ßbõßZzºmİb½^t\0ºCİ\"‹=‚éµt5Ñ–Ì€nÅ´Ó-˜<]/]é;Ğ-¸Ğ-¸¥I·Ø}nÁÑn¹?èÖtœi£[p±4|ËÓ@§»y*¸wÒœx§bÀ mth)D·‚t–~Ç;º5aç©\00-ÂI²Áø:O%ˆ;1ù¢&t?Ğı@÷İt?Ğı@÷/º¿7FÒ¾”b=FëZb“<6R¼U´8‰.»ù£—ç®+)·å½À‘U†]³ZO¿ÎøHH“d…´“,ù\'?¾©Jd•¡hOìÍ±è™Î\rLŒ¡*d\"¢%BÑİ¶3-‹šLµBrªˆk‰PM\'odKÄbe­Û\nù:;%21Ü´Ó­½*]&¾%B1âó$Â%Bñ¹1ã\Z\\­ø¬Ä¹B6Wä´Éø‡Õkí“TR‘F2{F´K„šÚËì\'ds™½nÄKÄbÌó\nÙİpTêò¤^¡ïÔk|¿P¯p^©—È„\ZìÜ+œså&5èœ+<©íç÷©n)Ş<¯UáÄ4DçÜÌ‚Æòœ›^Ğ°ŸwU\"D¾Æ*Òë4§~»NT‰ôu¢*œ×‰*‘ù(dçuJd¯óT\"»ÎS‰Ô\n¸’á]Y—üm¬+œÌºä|=®°@aŞjÏéÅCeğğÀ£ÙÊ°ñ­Ù•øÖì·L|‹{¨‰Q\0ºb´€Ã<®@lh\0šÂ5u*n„ÚÆµt„‹•y.h=¬„Ëíh\'\\08)¦Ğ,1[#\\Ò&\\détAøP®Í€s‘¯é\"¯4Y×æ¿@»È×w‘WñÚ(œ-\r$Ü29»pR|¦\"X\0ûÚ „”pCZ`\"…g#Û\0à‘\ZanŒ¢d˜@Üe¹ÉXXHß@y°ıÁöÛl°ıÁöÛÿÆ°ı{#,ı–:Æ½Ô([³­Ràİ\")eÉÕÊ€k´eFZd3´úqQ«ÜµvØ¯7ª’Ïµ>ú|Y}në£Ï›õÑçíúèóf}ôy³>ú¼]}Ş¬>oÖGŸwSW\"}º\Z*rY-2³[æ[ån¶Àr‘™Ù‚m‰l.ò[ô s5 HÄp!VslCDsy!xI9æ2Dğ‘™¹‚é”ã.ÓW¤¯SW£(Ó·“c•¼s¬ñİÇ›®Wuºs¹™º*åº:Zd6èÔè‚½(¨wÊeêª”ëòèâ¬zHÉ>Ú4r%ûhÓ—âŸ˜]‰ÔÎÖe¦…Ñòíº0Z¤¯£K¹.Œ™Ècz%R+¥;™u#è•È®ÓV¥\\§­T¦#¨›‚”I²Ja’…£àÑqµåûù¶@	< à\ròp“Rè :T‹»‰!–bè\0»<È@h¨ jªUm\'É‚údAKÁ²XŸË‚âƒeÁ@À²È’@Š`r`O0MáV%O–%ÆÌ,¦N×;®SVÓyìSVp3`XpG“`±Û¿Zş\rì\nnäŠı%\rÈò¬4pËÓ“¯&e8nEŸ×+Æ	Z}Ş,Š>oEŸ·‹¢Ï›EÑçuQôy»(ú¼,Š>}QôùmMÄ~ûAì±Ä~ûAì_boäüR¤z¤¤µ\'í éZ›æ²CòN>.úQı¨Ç¯7ú!sÆ¥JÛ¹TiÌ¥Æ7/¹.%²+—©™)aIën¦àR\"«ü:™”ÈÌLÁ¤†N»«“Ùµ6œHÍN	;»ÚÜ¶ôUd7Lªß0©~Ã¤úMm¸Òo˜T¿Ö†Ù\r•ê×eÎ\"fšO&4]½áÑw*Õç–²D‘ºúW#R}©\Zw\"Uãuz©¦ëô’È.Dª¦ëì’È^³vkº#R\"}!R5Í…¥ R5İ¥íŠôu³È^ÓvÇ ßL/‰ô•NÕÄtJ¾]§—DúJ§jºÒ)‘]óvEúš·+²×¼]‘]é”H_é”ÊªiÒ©š˜Ná(øs\\m9~¾-$AC€9Üd :(†Nâî2bH€ :`-2Pê\0ô†Ú€N±‚TAAª ± U¬Û‹TÁ@ª`, UdU A0?%˜©P)1b\'Uı…T¹Ñ¥Z®(9¢TËİ¥ê¯+œÙ}¥ê×ÒppˆÄ©Ès§ê7œªßpª~Ë©–\'\"¾p\0œŠƒÈıÂz	XD¯«èµba\Z½~,ìÃ{J»cT€ÓõÚÓŒQÙ$şWc n?¸ıàöƒÛn?¸ıàö/·¿7/-·é¾Ü¦†\n9=ác†?¢ïŸ©LÉÏ\r‡|6tËh±.º‘\")EİŒO^ÃX« •äUK}&2«‡\\hÃ TòÜo­Îa™ï·Vçp¥R<³«Ô9¬\"óİÖêşTª;RgÈ,•¹ûY¡]’Dj+ùÊÚO)•6·[[û.¥27^+\rÊ,RÛn­M­¿ÌíÖÚ´‘™—,´9”H-W±´Y(ÕÃs‹o7uªÌ²øŠmLeÍ®‡úr¹Ï,+/2ñù§Ê¼ŞN=<Y±4ÌÂˆÔR\rK›~&É|m°åŸ›)û|ùğO³¼ÖºB3Œ{UÛù«Í{ÙSÕ8ãÊxú\Zgüí¬¶ë˜\"\ZzD¤^Vlõ\\3ô>–­Å¬wmjœEä×pÕ8#í×\Z“‡Ô8ašRã„7èT˜€öÕ8!ZZmÏ8µ…©ÍÕ6—kÕmÁô¾ê6tZ8nÙGsvÃ-É.hdON&Wm<©Y·Œ²ÆI(’ö¸+1ãª¹]1Ÿ¾êÇÅ<wòÂõD&zT·;Ç¼˜ÇzD‘Y@M‰Y=sßÚ,B\'«wb6WßV/ÑâÖİŠŞ\";ks`d•eÎ^XsòUŸ<Ô\"uŞ±”\"fC¸Bº#2q\ZvÜä\"5÷MŒÙĞµ“ÆŠÌJ°n‹ÔŠÀ\nD&­Edæ*Ù®b¶-ğYà‘ú7;VíùGÿdV>¯À^`Ş+mşÂŸJ6?]O„v²¯BÀ«¡çàıĞÇì\'1\Zğ¨5x^Œ/»hhœ94NºÅğ\0%LeÍ8S«˜ ı\00X	€öÄËxÂBµh†ğWBN?8ıàôƒÓN?8ıàô_§¿;4>\Zm„=4€ÍnO}í–›‡C¯ç8òOÿãí·(Ï¡qƒ?˜%9Ú–.ırÜ`Ñ‘6²‘_t“™ŒĞú\"#ÄR™ŒX²‹ÔñÕA}§#¶(f¦#^Ì%31u«u§#¦˜‚ê\0£¹Ş‰PËWFUf#Õ×Pub#ÕŠıRz•°sc#ÕÍ‘ÙH5³•ZÂ@i3ğ¼‘‘º–ì¯ufD<ùêÜÈH]«×”lX\"W±/“Œ„c’‘pX´	Áƒ¥•n&BÊ°Ó‘a¹6Ğ•øˆe¤™„`ÿ4N±,”\'\\½‚Å‰ËI‚/eİ™‰ˆm…â\Z:é`\'\Zäqaû”6n\"b9)F\"\'xµ~·ôT1ê“¤ˆXÚ•ÙÔvt/ã„‚‹LºÂÙ²K¯åJE„ºˆôE™EÙ9ŠˆuØ\"‘‰¤9éI;=‘ïptxÒyÃZ6jBÏïL­Xädk0Ø	úÀ@™ÊFPhp€K4Œ€°mÈv¤€E¨\0tÓ8`-i\'@™ôø½é< æ¢2íÈ‡#Ø´9§I“ª}\n	û7ç*uR•åÀUà$ÀUØ€«ÀñÓZŠ8<‘·åò˜äM×Htœ(Çån‰`.·LT”ü7‘Öéè‰©,< ¦BÈALea1•…EÄTµˆ«,|#®²p¸ŠW‹;WYØJ\\Å©Ê·EüAğÁüAğ_\"‚w¬!~K¬áüå„\Z|µÄğ+Á×J„£İ­ÏbZP1¾m+*ö“æ¯sMŸ»-ÒøÈ‹~a¥Æ™FWT»ÅP…Xíz)z~‘ÆWuø±ÉW7bŠ¨*œq«!^µ£ë\\¤BoÖ¹Zh‹§JÅŠ…E*ö¨©Ç×ª[gxÕq‚SG²¯3Z\'‚Y-{öT(qİÑ¸ÂU€»¡h¯Š=ZÜæÒC¸Šz·¹×´\n½ş7Å*Ul±ê6«ıYÅÛL‹RaRß@¥R“·¹èL…P_ÁWZv^lXÈ¦bÓ·¹æÍ„ºÿSlsqœiuó“‚ìÈ¤¿MF–`¸h²HsÌü\0)®¬5zÖg~µ*ÅY-	\"Ê*Q_‰ØùÌêÔg¡&êÿQÓ‰Æ*Å™ÚG£šâÜŸŒ4 E¤’¶¤è•¼§ZÉü\\œ¿U#½§\"ŠƒOE-¶/˜Õ\'•Nq\'õO¹’d*)ÎÒ[dT)Î\Z]Ó\0µYHÕ$cMq&u’A§8«­«Á\'}c/tèŒæõ+8ŞªT•Nº¢Èlv€o~Ææ9ƒxN‘\rM–	áÕ 3Z]ÚÚ.Òa­Q7QQQ{iöç×îbÔõ\"õùÖ5J\"›û•ùh›aÜEjIƒP‘3\nÈg#]™¤‰N­S¾#Âá’â¹Tplí`·Yd¾ƒé¼Hm»e\"šÛÃM+™9Y²·3†9±¾,óŒŒ×¿Ù±jğ?ú§é	p\r¸ÜŒ½‹?–=Ñ|úJËÚY6×æı!s%Ë	z¿I9ûå-g×Í¯b(à‚1dğÕ\\vëĞ \0´Páz%ï„*Ğ@@4f8ƒöù`%€HØ£),Àløı•ØÊóÌ?0ÿÀüóÌ?0ÿ·\róß€IŸÀœåô’éàmWl;Z\"Ÿ÷A•x¬ÀJŒ·İ\'§ã =²4]1:w¬|àEø4<U˜ÌJ>Š<7ükËQ£LZå2?}ÊuøÊ·Xôª/gä–¯¿UûBíù ë}!F4Œb±Çp.ö(õ%ÑÌAª(×t$f\"ô]Ã˜=Jæáïb`ö(Â~6	%ƒ=J½gßÙ£ˆ/ìQjH_Øc8_Ø£Ô©¾°G«‘-‹‰=†ó–=ŠøÂÃyú¾éÄEhY¡{ñ+{ŒÇ\r{¡Õ’Úè£ˆ/ôQ„ú(Âú(bÁ÷ÎôQ­ÄÑ¾úá‹8úÇIq!¢Œ¸)SF<QF´„(#Z½qFôqÆÕ•Ä½×_9£ĞÎ1–Ä1îg„€3B™ˆ3åÄ¡˜Ä¡ÂÄ¡î[„i[„[„ÁmlÆIlLl1œ“-ªÙ]cˆ.|q×¦êDA»\"Ü_èj70Ü©m¿rÆ!T€­õ…0wÅâš7rİ´sëØ£¾§ÊŞ•\nl#%²â8dwÌQÅ¾€Ş.ú•;ªĞ¼\r³GË´N\'ú8„“/ñ‹P¿#*öuô~Õ\'Yã7±>—ön/mıÊ\"ƒæ\'Ğ;`Ÿ<R?\Z‘ôx§ìW*I÷ÜßTû•LRKøıwµzWîWFI}É/àÖïıÅÛÚ•c¯_£É€~G+II8²0µ‰CKñöpÅRRj,uæğÇRı=TÒ¯ä’Š0Ëøö`Í2Tìt&˜ã¿Hz¸ÀÃ.ğp‡<\\àáÿ¸ÀwG›òç£MA’È,ßá¦˜½äˆW`Õ=hâuwßÒ>(ü”Ê\n?‰ÖzÄGØ?\Z\n\n/A©tj%ø©§Eˆfüh;iş\ZfüˆÎİƒRxÑ¾Ô´|pÓìÛ¥iùà§ÈaŠu	ûõØŸÂ~½iÚG\\ôKAª˜1MyÓ”·)Î”o¦8S¾%¦)ßÓ”oˆiÊ·Ä4YQ°Îáã!œ3GäR³L›·HyÎH‘gIùf¢3å[zš¬šzçåÚ’UMóØ»;Á”o\':“•b‹›sMV³­°Nån¢3•všÊ\r;Må–¦rÃNU»AöÕ_ìÔ?N0Ã…ğpSÆF<Á(ZB€»\Z½aóê‚qô#‘SôùFN1>D$0’D90ê=†€É@•ˆò@í6v%&e&ÎÅßøŒ„¸Ì‰XLocˆ0Sb“0eâ)/Š*À)jL75¦Š\ZÓİçÏÔYzØ˜n(jL·5¦Š\ZÓ\rEé–¢Æt¥¨1])jL·5¦Š\ZÓ\rEé–¢ÆUú(jL75Z)8íl~GK75¦Š\ZÓEé†¢Æ´¿s¦EQå£STûˆ·×tCQqÏım8İPT´„ß±W«÷÷ñtCQÑ—ü–¿ú}ó¸#òÎMòãùÍçCI–6@ñ6Ğ’@A	Ê úìÁL\"aP¦0¾\rxa¨Ò0iò‰ö_W=¬àa+xXÁÃ\nVğ°‚ÿH¬à»Wå«(%‡_ò¤¢¥$/ê˜Ê²4Ú8‹|üU¦\r79ÛXd}²ñ²ñÑ¹Æ×Yí<`ÈEhà\\=Ô7—0$@•Dh t%Lx\n® Í.0ç`BõÅ–rìœ­	^\0JŸÀ¾Î´Dà3?¡ÎM·ThxÜâôTÅæá‘‚[§?üÄñà–|Ê±ñƒÙ|	&Ì]×çº¨vÉ$Â*§JtÊÜé4“)9	^ Ëî\'	îËN;t`œø:÷z~¾Ô|²âIı|Kp¦:îpóüj]-Ô™ÔQOot¡èEÍNºg$ ÀÓEÇ:g–.…šˆVçD`z1:ºeîñè|,Ìw¾ÔÄ8FÇ×Êc‹óT\Zgì¶¡HÑñı4u‹FìÉÃzW0¾P\\©ı­Â™EYš®´åğÓRüe„æAm`jÑi+Û4Ëè”I»i½R9¹ÒöHët¼Äà£ñ°¡ÓiãĞ1jÓ½ã¢\"t(ğĞ®ËÇšïÀÃŠĞÍÊÇ#ê‘:n¡³ò±İ*hGÃˆ-	TlÀ‰aÙ°\\qk<ó¡`,‡^ÄQlŒ´$Šğ:V¦OÙ„š‡™„‰Ô‰Ô4‹b@¡Eèóh¬û\"ÎPÇu™‰mk2(ÊŞi³½|Øvl¤ùX«O`Îù0C·sÔüuüç¡äÖ5Éƒøİ{Ù½\r”ÚD.íßÜúŠ<#z•\\è\Z€ÍÛb¬È3¯A%ñßÜ=T… aéaÔoÃ¨*¡”šğú¿al…pVE\nÜĞÖJÈ»Ö+OˆÿZˆæ¡x¨ÀC*ğP‡\nüê©ÀwÇeêâ2Y–ù†8ÔË×ª…e´6PÛ}ÜNÎ\Z›÷aš\\,:o“,ém[’Šã¬h‹Æ$„’dk³x9ièe»şjçîI6xÑ.MkmFwğéÚ0•ÎG°ÈĞºÇv†E”ößnÚôA×ûZ*µE=S{¡\" ŒKí†z&ÚÎ‹°3ùÆ_©gòÂN¦É¶›ôoe·RõLm_…$ÚÃŒCj7Ô3õ÷\rIbÄ ,©ßPÏäÛ²u&BÉwp+;õLıJ=“o\nW‰‡%Û>®Çz¦¾\"ê w©¯Øû¢©S˜Œ1ù.w§qÍdÛàu~]Ô3ÇE=óÚS.”×æ{¸gNwÔ3û~~•©g^ÿ¡É™vDçäµ— õböM¹Ã3mOHƒ“}\'ÃÈÌ3¯-iÈ³ïwæ™Ó•yæ´&™DÛrÂ&D=sZ³V 9­ù-PÏì›B–{fİ?ò8OæÙ7šdSË´%%™e¶Í+ãÉÔ3§5Å\'¦Ó¢9½PO:`FğùìÄÓŸ´6&³Mñœí;óÌkWL‚ó¼¶Å$èßF`±\Z&Ğ	Œ\'˜Ç6ô‹¤–€ÍL}ªD|¦ê½0Ï¼¶Æ$65õyc®ú¯Ì“¬|ì	Ì“Mo±D²QĞI²f¡›9.æ™úó$ï°®IÌss6xRòKhy0´óvè+rŒèUò k\06g‹±\"Ç¼•<8ÆóöPB†¥S!P¿\rn ªJ92óœğu²L¨«;ó$X„Y€Â\07°…±0Ã¬¼\'ÂKêax˜ÀÃ&ğ0‡	üš™ÀwÇ Ú—bPeèiåÍk/íxÚÂ5­ôÇ¿ÔŞW²KxÕ4­q®hİò\"eãˆñ½çé\"ëÚN¬[–eÕ#V_ö<kĞÕúëy««k+³¾’<ëÚò¬[6èiçšJ÷•6ZëÜZ½[†éi2«&gO´©\Zö”l·îI«ãÛÜÖ½¯üÖJ½õ<Wo×µ%\\Ïs™w][ÇuO¯5™Õ—“³}íxµ€ïø¹—¹Æ¼Zdx f÷ÔŞª²™Ş×WpõxsÑ#\r\nª¦³]ÑöK¬´·^/“bÔ6]Ê¬ƒÚtIY®:i&ŸšÎ™á¸¦—ÃõZœîwnˆİãÛÊºDSZœ®n„İÓÖ6‡«›ï†Vw§!ËŞÑ6$mí­ˆ¡kkFr£İ\Z¡mN¬@kÚÚ—SÊí7Ú\"ÒuP\"™kGÎ©«rƒ	º¦ÓYøíoqB9¬¤­í.ûÊZncÂòZœ[hÂ6[œ[mŠn6kn:=Ö,»‘j+	Wk–/·Û¶•Y‰l–‚Ù\n5¤Y¶f;g“ÕZšfÌÎWO¶?AY8Ds#îí–fÍ=ŒH[é§kàÚJTån+§ºĞRôìTèLK³€ éU[É´Ğ½–fqF¨hK‚Y™›çò’Ö·4QÖÑ,=X;k™Q³DâÂöÖÒÕ.Çqjµz†Z²ğÕÎq=øƒ¶ò’Ùsø#ŠS_>¦­¬dø\"ksÙ|V[ÉğnŞ‡!Ë¶•Ìî#ÇŠ‘ƒÆ³«†2À©Ciàü]½ÄÛL@(ĞW\04\0\0ÁR\0xË¤a{ÀĞi¡‚±…¿jxÀúë¬°~Àúë¬	`ıİÑ€şùh@Íµ\n7\r…şhmòï¬ªMŠ¾pèçV´ù|‚CM+·¶¥•[Û¼L¼%ç4«$8§YÑùº§ú4¯OÏYAÍ\nÙNjVó~O4áQÛ¬ˆş–ºÔÒKBmóÍ8ªyõ~Î™j^èO¯j¶\'@åL¬æ›pÆV³}öÜ®f$ÎkùšHÛò]\"m³í¶<Úfû&li´-ß¥Ñ6ÛŒ!p\\³]NÎ•ky¥ÒÊGO¥]GRŞº\"eêù½û–Ò·’’ÿVc(Kp5{K(\\D¹‡«#)IÑz<{*í\ZÊ¤]cH)’k´·dÊ¥H»\\êCé™Íöt8·TZWÆÂ)ŸÍ7tàÜPÓíÔ·,R3‚vr¾©KäÄÔeV[í2@Jw]&Jy±bÁB+ví)´5Ş¤ĞÖx“B[ãªÆ)´5Ş¤ĞÖx“B[ã]\nm7)´5Ş¤ĞÖx›B[Q¤ƒTQÍ\rfEİöê[l©Ö5Ş$ÑÖx—D[ãMmÅNPä\Zo“h+vG€yTl£\0;ª¾ãBÛ,®boØfİÓáı«>ógëX‘ÛÀ=7ƒç#g„–×B«7‡\"_è}7§éİ.Óì_1Dä‰1˜ä²1ğ›w‡@›1êÚKd—º6} ªk×Â*Wıvî æf²ÃŸT)Œ“0¾\rRa¨„¾0iËËMß¶æûì°Àşûì°ÿ€ıw&Î/¤)Ô\"~N\Z\"¾§¶ş‰ö·D(FOAÿş‹F(bY¤%–´Èwò™åJZb¡DEZb¹’–X.¤%JCqÒËÊWY¤%–•Ø\"¤%Jê”+i‰ueÔ\0Æ*%ß\0ğêªá`¬«ØÏ$-±RY `m]„€Éu•\ZzWÊ;Î×<| šŸèDZb¥´\'PŒº2¤@EêÊ¤R¦Ri‘°3“–ñ}¦g­+¦°ò¸iÙ…´¤°ÊE­ÆˆÌëJ­f§@™–«ƒDê™–«#SX)l‹´ŒK\0?ÖØˆô•´ˆÌ«j­ÑN\np-½éiIa%ï-Ò\"²Uük±‘zåb-)\\Y‹È¸ÃF[DúJ[DöJ[Dv¥-)Å(D[RpÂâ*6-7Â’ÂFUè:ğ–Û-AUèé@U¨ *[‹ÁU¨sÀU¨ÁU¶ºĞØ\0‡0†€¬m´o¤\0BÒ ÅU6]W!µ“şµ7UÂ“U€ù€7°¡bIÊÿÈjıëä*bê?ÎË	é· ~Ä…¸|±.8+bhì×ˆÍÁ‚«¯WÙÜ*ÑI8`\"ğÔDRÙ©Ÿ…ÿ\'æ[n¸ÊÄ”®BÈ®B®²a¸\n¡¸\nÁ#½(0’ÒKE¹á*ŠË»¿%0ñ`üƒñÆ?ÿ`üƒñÆÿmbü÷Æ#âñmñˆó«ñˆîñˆôG¤¼¸Š|d®’2s)µıÊUDvå*\"}å*\"{á*\"zå*\"{å*Z\r\\E¾^\'Q´¼øW‘2ä¯\\Ed3İ‡p®„o[xXfÑâ*\"å>7®2ğÆó~Š‹*cv¡\"É@÷²VL”µ´jQ•T^EÄ¢\\çPRYuŸ•ŸP•ó…ªœWª\"Ä^©ŠÈ$°m\\EVrùRµÕ\Z‘ùš¶ÕnY±uå*\"}D‘%[¯\\E×k]¸ŠH_¹Š.Øzá*²ZëÊUD*iÈŠ¬Ö²Œ@‘­u‡‹¬ˆÔ—(.²\"ë·|İç\"+\"[ÅĞY© |$²\"2¡‰,KdkÑç²A‘¾’•|8Y‘NV|‡)¸·|ld…®w9oùBVæÓmde6c#+ŞâW²2;g#+³7²²u8à…Æ@DƒĞÚÆ\0Gª($ZleÓ6°RL`1i0p{Sv`<ÙØ\0˜Ãfk`d–ÊOÎ®œ‹®ˆ¹ÿ8?.G@¼§ÜLŸLçòBWÈñ‚Ã\"’Æ¾İò‚`+ä-ÁV6ÇJ„.˜¨\'|5ÑTvëÄhË\r[!¨\0[ÙPl…°l…@\nleC3°Â=°HzWÈ·l…`—Ş=²³ùğ-‰å”PşAùå”Pşoå¿;&¾)&‘ú7Ç$ş²9m‘•¶s•ÆTÅ«_dò§^\'#ö©4‡JLÅjoœ)€©x•–‰©4Ï“ÉÄT¼îGÉÆT¼:H=7¦â…Di‘¼àH#èòÒ$iŸ:ñ*&ÛÔ‰W;9O•Y¥lDeVPáœÎYj…“½*KÚ§N¼€ËÉ9^é¥b*³(Ì¹1¯³1¯3SŒ¨ôÅSBÜyJ˜µk\"•àUnNL%X=œvî“\'Ájçä#W	^e§1I^‘\'õ­¯Ş£	e+EÖëü”“øJ°š@a&\0Ï¼[/Ôˆ°¯3¤¥ëW*¯—$*i£,Á«…Bœ%x£3i	é&Á3$OHLDZ‚—¤Ê<‘¼$ÓY7Ú¢ÅrŞçJ¼%xI*#R3{ÚkR9í\\‰ÖV>*ifíÊÅöBSfrÁÅ`Bza0|,eÑe)İl{P~`pnÈÌŞ`3Ük 3ÜÁà3<”£GÃFé|4Â”û·©%\n’îPN!´lQš]!ÁiX{)­‘r 7« „I2!Ê­$k£DÌÍ4)k“ìXù\r»ŸÜ¦/jÏ‘‡Á]7g„G$¿…ÖƒCÓ7_ˆ~\"·	jCşÔfsÅ*rÚUòîP\r /€hA˜Í†B`6„U`6j`6úÙN‚Ù Â7ì…í¥aåÍyÍ7Ôª|èÀC:ğĞ‡<tà¡ÿ!èÀwG9â7E9Bøj”ãww™/7KŸ¿Y®Z#Šƒ[;´ß•%ûN-°û‰,¿DSşùÓÿØB\nendstream\nendobj\n2 0 obj\n<</Type /Page\n/Resources <</ProcSet [/PDF /Text /ImageB /ImageC /ImageI]\n/ExtGState <</G3 3 0 R\n/G4 4 0 R\n/G5 5 0 R>>\n/Font <</F6 6 0 R>>>>\n/MediaBox [0 0 1254 568.08002]\n/Contents 7 0 R\n/StructParents 0\n/Parent 8 0 R>>\nendobj\n8 0 obj\n<</Type /Pages\n/Count 1\n/Kids [2 0 R]>>\nendobj\n16 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 15 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 0>>]\n/ID (node00000012)>>\nendobj\n15 0 obj\n<</Type /StructElem\n/S /Div\n/P 14 0 R\n/K [16 0 R]\n/ID (node00000011)>>\nendobj\n14 0 obj\n<</Type /StructElem\n/S /Div\n/P 13 0 R\n/K [15 0 R]\n/ID (node00000010)>>\nendobj\n13 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [14 0 R]\n/ID (node00000009)>>\nendobj\n20 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 19 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 1>>]\n/ID (node00000016)>>\nendobj\n19 0 obj\n<</Type /StructElem\n/S /Div\n/P 18 0 R\n/K [20 0 R]\n/ID (node00000015)>>\nendobj\n18 0 obj\n<</Type /StructElem\n/S /Div\n/P 17 0 R\n/K [19 0 R]\n/ID (node00000014)>>\nendobj\n17 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [18 0 R]\n/ID (node00000013)>>\nendobj\n24 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 23 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 2>>]\n/ID (node00000020)>>\nendobj\n23 0 obj\n<</Type /StructElem\n/S /Div\n/P 22 0 R\n/K [24 0 R]\n/ID (node00000019)>>\nendobj\n22 0 obj\n<</Type /StructElem\n/S /Div\n/P 21 0 R\n/K [23 0 R]\n/ID (node00000018)>>\nendobj\n21 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [22 0 R]\n/ID (node00000017)>>\nendobj\n28 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 27 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 3>>]\n/ID (node00000024)>>\nendobj\n27 0 obj\n<</Type /StructElem\n/S /Div\n/P 26 0 R\n/K [28 0 R]\n/ID (node00000023)>>\nendobj\n26 0 obj\n<</Type /StructElem\n/S /Div\n/P 25 0 R\n/K [27 0 R]\n/ID (node00000022)>>\nendobj\n25 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [26 0 R]\n/ID (node00000021)>>\nendobj\n32 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 31 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 4>>]\n/ID (node00000028)>>\nendobj\n31 0 obj\n<</Type /StructElem\n/S /Div\n/P 30 0 R\n/K [32 0 R]\n/ID (node00000027)>>\nendobj\n30 0 obj\n<</Type /StructElem\n/S /Div\n/P 29 0 R\n/K [31 0 R]\n/ID (node00000026)>>\nendobj\n29 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [30 0 R]\n/ID (node00000025)>>\nendobj\n36 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 35 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 5>>]\n/ID (node00000032)>>\nendobj\n35 0 obj\n<</Type /StructElem\n/S /Div\n/P 34 0 R\n/K [36 0 R]\n/ID (node00000031)>>\nendobj\n34 0 obj\n<</Type /StructElem\n/S /Div\n/P 33 0 R\n/K [35 0 R]\n/ID (node00000030)>>\nendobj\n33 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [34 0 R]\n/ID (node00000029)>>\nendobj\n40 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 39 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 6>>]\n/ID (node00000036)>>\nendobj\n39 0 obj\n<</Type /StructElem\n/S /Div\n/P 38 0 R\n/K [40 0 R]\n/ID (node00000035)>>\nendobj\n38 0 obj\n<</Type /StructElem\n/S /Div\n/P 37 0 R\n/K [39 0 R]\n/ID (node00000034)>>\nendobj\n37 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [38 0 R]\n/ID (node00000033)>>\nendobj\n44 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 43 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 7>>]\n/ID (node00000040)>>\nendobj\n43 0 obj\n<</Type /StructElem\n/S /Div\n/P 42 0 R\n/K [44 0 R]\n/ID (node00000039)>>\nendobj\n42 0 obj\n<</Type /StructElem\n/S /Div\n/P 41 0 R\n/K [43 0 R]\n/ID (node00000038)>>\nendobj\n41 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [42 0 R]\n/ID (node00000037)>>\nendobj\n48 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 47 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 8>>]\n/ID (node00000044)>>\nendobj\n47 0 obj\n<</Type /StructElem\n/S /Div\n/P 46 0 R\n/K [48 0 R]\n/ID (node00000043)>>\nendobj\n46 0 obj\n<</Type /StructElem\n/S /Div\n/P 45 0 R\n/K [47 0 R]\n/ID (node00000042)>>\nendobj\n45 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [46 0 R]\n/ID (node00000041)>>\nendobj\n52 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 51 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 9>>]\n/ID (node00000048)>>\nendobj\n51 0 obj\n<</Type /StructElem\n/S /Div\n/P 50 0 R\n/K [52 0 R]\n/ID (node00000047)>>\nendobj\n50 0 obj\n<</Type /StructElem\n/S /Div\n/P 49 0 R\n/K [51 0 R]\n/ID (node00000046)>>\nendobj\n49 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [50 0 R]\n/ID (node00000045)>>\nendobj\n56 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 55 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 10>>]\n/ID (node00000052)>>\nendobj\n55 0 obj\n<</Type /StructElem\n/S /Div\n/P 54 0 R\n/K [56 0 R]\n/ID (node00000051)>>\nendobj\n54 0 obj\n<</Type /StructElem\n/S /Div\n/P 53 0 R\n/K [55 0 R]\n/ID (node00000050)>>\nendobj\n53 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [54 0 R]\n/ID (node00000049)>>\nendobj\n60 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 59 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 11>>]\n/ID (node00000056)>>\nendobj\n59 0 obj\n<</Type /StructElem\n/S /Div\n/P 58 0 R\n/K [60 0 R]\n/ID (node00000055)>>\nendobj\n58 0 obj\n<</Type /StructElem\n/S /Div\n/P 57 0 R\n/K [59 0 R]\n/ID (node00000054)>>\nendobj\n57 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [58 0 R]\n/ID (node00000053)>>\nendobj\n64 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 63 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 12>>]\n/ID (node00000060)>>\nendobj\n63 0 obj\n<</Type /StructElem\n/S /Div\n/P 62 0 R\n/K [64 0 R]\n/ID (node00000059)>>\nendobj\n62 0 obj\n<</Type /StructElem\n/S /Div\n/P 61 0 R\n/K [63 0 R]\n/ID (node00000058)>>\nendobj\n61 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [62 0 R]\n/ID (node00000057)>>\nendobj\n68 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 67 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 13>>]\n/ID (node00000064)>>\nendobj\n67 0 obj\n<</Type /StructElem\n/S /Div\n/P 66 0 R\n/K [68 0 R]\n/ID (node00000063)>>\nendobj\n66 0 obj\n<</Type /StructElem\n/S /Div\n/P 65 0 R\n/K [67 0 R]\n/ID (node00000062)>>\nendobj\n65 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [66 0 R]\n/ID (node00000061)>>\nendobj\n72 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 71 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 14>>]\n/ID (node00000068)>>\nendobj\n71 0 obj\n<</Type /StructElem\n/S /Div\n/P 70 0 R\n/K [72 0 R]\n/ID (node00000067)>>\nendobj\n70 0 obj\n<</Type /StructElem\n/S /Div\n/P 69 0 R\n/K [71 0 R]\n/ID (node00000066)>>\nendobj\n69 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [70 0 R]\n/ID (node00000065)>>\nendobj\n76 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 75 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 15>>]\n/ID (node00000072)>>\nendobj\n75 0 obj\n<</Type /StructElem\n/S /Div\n/P 74 0 R\n/K [76 0 R]\n/ID (node00000071)>>\nendobj\n74 0 obj\n<</Type /StructElem\n/S /Div\n/P 73 0 R\n/K [75 0 R]\n/ID (node00000070)>>\nendobj\n73 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [74 0 R]\n/ID (node00000069)>>\nendobj\n80 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 79 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 16>>]\n/ID (node00000076)>>\nendobj\n79 0 obj\n<</Type /StructElem\n/S /Div\n/P 78 0 R\n/K [80 0 R]\n/ID (node00000075)>>\nendobj\n78 0 obj\n<</Type /StructElem\n/S /Div\n/P 77 0 R\n/K [79 0 R]\n/ID (node00000074)>>\nendobj\n77 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [78 0 R]\n/ID (node00000073)>>\nendobj\n84 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 83 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 17>>]\n/ID (node00000080)>>\nendobj\n83 0 obj\n<</Type /StructElem\n/S /Div\n/P 82 0 R\n/K [84 0 R]\n/ID (node00000079)>>\nendobj\n82 0 obj\n<</Type /StructElem\n/S /Div\n/P 81 0 R\n/K [83 0 R]\n/ID (node00000078)>>\nendobj\n81 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [82 0 R]\n/ID (node00000077)>>\nendobj\n88 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 87 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 18>>]\n/ID (node00000084)>>\nendobj\n87 0 obj\n<</Type /StructElem\n/S /Div\n/P 86 0 R\n/K [88 0 R]\n/ID (node00000083)>>\nendobj\n86 0 obj\n<</Type /StructElem\n/S /Div\n/P 85 0 R\n/K [87 0 R]\n/ID (node00000082)>>\nendobj\n85 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [86 0 R]\n/ID (node00000081)>>\nendobj\n92 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 91 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 19>>]\n/ID (node00000088)>>\nendobj\n91 0 obj\n<</Type /StructElem\n/S /Div\n/P 90 0 R\n/K [92 0 R]\n/ID (node00000087)>>\nendobj\n90 0 obj\n<</Type /StructElem\n/S /Div\n/P 89 0 R\n/K [91 0 R]\n/ID (node00000086)>>\nendobj\n89 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [90 0 R]\n/ID (node00000085)>>\nendobj\n96 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 95 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 20>>]\n/ID (node00000092)>>\nendobj\n95 0 obj\n<</Type /StructElem\n/S /Div\n/P 94 0 R\n/K [96 0 R]\n/ID (node00000091)>>\nendobj\n94 0 obj\n<</Type /StructElem\n/S /Div\n/P 93 0 R\n/K [95 0 R]\n/ID (node00000090)>>\nendobj\n93 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [94 0 R]\n/ID (node00000089)>>\nendobj\n100 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 99 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 21>>]\n/ID (node00000096)>>\nendobj\n99 0 obj\n<</Type /StructElem\n/S /Div\n/P 98 0 R\n/K [100 0 R]\n/ID (node00000095)>>\nendobj\n98 0 obj\n<</Type /StructElem\n/S /Div\n/P 97 0 R\n/K [99 0 R]\n/ID (node00000094)>>\nendobj\n97 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [98 0 R]\n/ID (node00000093)>>\nendobj\n104 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 103 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 22>>]\n/ID (node00000100)>>\nendobj\n103 0 obj\n<</Type /StructElem\n/S /Div\n/P 102 0 R\n/K [104 0 R]\n/ID (node00000099)>>\nendobj\n102 0 obj\n<</Type /StructElem\n/S /Div\n/P 101 0 R\n/K [103 0 R]\n/ID (node00000098)>>\nendobj\n101 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [102 0 R]\n/ID (node00000097)>>\nendobj\n108 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 107 0 R\n/K [<</Type /MCR\n/Pg 2 0 R\n/MCID 23>>]\n/ID (node00000104)>>\nendobj\n107 0 obj\n<</Type /StructElem\n/S /Div\n/P 106 0 R\n/K [108 0 R]\n/ID (node00000103)>>\nendobj\n106 0 obj\n<</Type /StructElem\n/S /Div\n/P 105 0 R\n/K [107 0 R]\n/ID (node00000102)>>\nendobj\n105 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 12 0 R\n/K [106 0 R]\n/ID (node00000101)>>\nendobj\n12 0 obj\n<</Type /StructElem\n/S /NonStruct\n/P 11 0 R\n/K [13 0 R 17 0 R 21 0 R 25 0 R 29 0 R 33 0 R 37 0 R 41 0 R 45 0 R 49 0 R 53 0 R 57 0 R 61 0 R 65 0 R 69 0 R 73 0 R 77 0 R 81 0 R 85 0 R 89 0 R 93 0 R 97 0 R 101 0 R 105 0 R]\n/ID (node00000008)>>\nendobj\n11 0 obj\n<</Type /StructElem\n/S /Div\n/P 10 0 R\n/K [12 0 R]\n/ID (node00000007)>>\nendobj\n10 0 obj\n<</Type /StructElem\n/S /Document\n/Lang (en-US)\n/P 9 0 R\n/K [11 0 R]\n/ID (node00000003)>>\nendobj\n109 0 obj\n[16 0 R 20 0 R 24 0 R 28 0 R 32 0 R 36 0 R 40 0 R 44 0 R 48 0 R 52 0 R 56 0 R 60 0 R 64 0 R 68 0 R 72 0 R 76 0 R 80 0 R 84 0 R 88 0 R 92 0 R 96 0 R 100 0 R 104 0 R 108 0 R]\nendobj\n110 0 obj\n<</Type /ParentTree\n/Nums [0 109 0 R]>>\nendobj\n111 0 obj\n<</Limits [(node00000003) (node00000104)]\n/Names [(node00000003) 10 0 R (node00000007) 11 0 R (node00000008) 12 0 R (node00000009) 13 0 R (node00000010) 14 0 R (node00000011) 15 0 R (node00000012) 16 0 R (node00000013) 17 0 R (node00000014) 18 0 R (node00000015) 19 0 R (node00000016) 20 0 R (node00000017) 21 0 R (node00000018) 22 0 R (node00000019) 23 0 R (node00000020) 24 0 R (node00000021) 25 0 R (node00000022) 26 0 R (node00000023) 27 0 R (node00000024) 28 0 R (node00000025) 29 0 R (node00000026) 30 0 R (node00000027) 31 0 R (node00000028) 32 0 R (node00000029) 33 0 R (node00000030) 34 0 R (node00000031) 35 0 R (node00000032) 36 0 R (node00000033) 37 0 R (node00000034) 38 0 R (node00000035) 39 0 R (node00000036) 40 0 R (node00000037) 41 0 R (node00000038) 42 0 R (node00000039) 43 0 R (node00000040) 44 0 R (node00000041) 45 0 R (node00000042) 46 0 R (node00000043) 47 0 R (node00000044) 48 0 R (node00000045) 49 0 R (node00000046) 50 0 R (node00000047) 51 0 R (node00000048) 52 0 R (node00000049) 53 0 R (node00000050) 54 0 R (node00000051) 55 0 R (node00000052) 56 0 R (node00000053) 57 0 R (node00000054) 58 0 R (node00000055) 59 0 R (node00000056) 60 0 R (node00000057) 61 0 R (node00000058) 62 0 R (node00000059) 63 0 R (node00000060) 64 0 R (node00000061) 65 0 R (node00000062) 66 0 R (node00000063) 67 0 R (node00000064) 68 0 R (node00000065) 69 0 R (node00000066) 70 0 R (node00000067) 71 0 R (node00000068) 72 0 R (node00000069) 73 0 R (node00000070) 74 0 R (node00000071) 75 0 R (node00000072) 76 0 R (node00000073) 77 0 R (node00000074) 78 0 R (node00000075) 79 0 R (node00000076) 80 0 R (node00000077) 81 0 R (node00000078) 82 0 R (node00000079) 83 0 R (node00000080) 84 0 R (node00000081) 85 0 R (node00000082) 86 0 R (node00000083) 87 0 R (node00000084) 88 0 R (node00000085) 89 0 R (node00000086) 90 0 R (node00000087) 91 0 R (node00000088) 92 0 R (node00000089) 93 0 R (node00000090) 94 0 R (node00000091) 95 0 R (node00000092) 96 0 R (node00000093) 97 0 R (node00000094) 98 0 R (node00000095) 99 0 R (node00000096) 100 0 R (node00000097) 101 0 R (node00000098) 102 0 R (node00000099) 103 0 R (node00000100) 104 0 R (node00000101) 105 0 R (node00000102) 106 0 R (node00000103) 107 0 R (node00000104) 108 0 R]>>\nendobj\n112 0 obj\n<</Kids [111 0 R]>>\nendobj\n9 0 obj\n<</Type /StructTreeRoot\n/K 10 0 R\n/ParentTreeNextKey 1\n/ParentTree 110 0 R\n/IDTree 112 0 R>>\nendobj\n113 0 obj\n<</Type /Catalog\n/Pages 8 0 R\n/MarkInfo <</Type /MarkInfo\n/Marked true>>\n/StructTreeRoot 9 0 R>>\nendobj\n114 0 obj\n<</Length1 40264\n/Filter /FlateDecode\n/Length 22978>> stream\nxœì½	tTEÖ8~«Ş{½/¯;½w\'İNw H!I³„-a‹	I„°#;‚ã#*ãŒŒË(¸ê8vB€\02ê¸;àèè¸‚ŠÛÌ ÌÃ(šôÿV½~IGô;ó;ßùŸßù~ç{ºu_Õ­ıÖ½·–î\0\00mfqÉòÏ\0@º0´©nÜ”úÚ[—ş x\"€íçóW4¯_\'PÆÿzş†u¡Ç:v3€ö€æ’…«­ş +à^`L.j^»\n¼ÆüL¬”EË7-|şö¥×$Ş˜»tñ‚Sñk>°4èu‹[š|º r,Ò·\"ı°Å`/ÕÇğ}.¾ç-^±nãş¥Öc\0Æ“uËWÎo^S‹ëó,Æ?±¢yã*ÍLıãÀ÷Ğ%Í+Z*éœ\'±q§‘æìª•k×¥\n`ÆW²øUkZVİÛñù_\0\"ØS1@°”JXß4Ò½P	/(È€ë$·ô7ğ]\0ş¤òY?ğ`zí¨©0V†³Ÿ½Læ!ıF¢ùtá…¦êóæY+ÿ¥óëxÄ}ç0ÿµ»?î>ûx÷\"tÓñUß›ƒ l%Û±:éN©3ö+¾ğ\Z,¤vD\Z‘²Gd´™EÎš26„íÁ.éõé¤T;Št$€¤°Å Æ¤C¬g\0ûÛ§¤t $Üávôs1^ÄØ†¡Pca<L‚)P3¡ša	\\\n›`ËÓ”!Íh¨†‰p>Lƒœf>,WhRÿ—ŸùçôØã!%Ê‡6\n·âç_ç~¤5Û´àçİ|İ|}¶ş5ö1”»İ¦÷Ìw›ï¶:äûØGşĞÇt—»öºÏx^ôåøó•ì“­ÏùWÈ.ÏiÎbsòËŒ¸¹ğ¾Âû\rÕd4Vü÷Ú\'®…Ùß{÷©aè7ÿ\'yHu©n©vHÏÃBåî?†İÀ:>•‘ÿÍ#œ\'@Só‘ö4İ½ˆÏíËùö?oÃdîÔ\">]\r–™…şt[Èó°U¥EüZ,G7.íO¤ÀfL_…éòğıZÄ}X\'M:_”G8›ç0®±^4®IãçşÆ4NÁKÓ¸\0ã –ÆÅ\Z	<H¥à\ZÄ\0ù|\rò3r÷˜…œŞ‚ïk1d%\\‚sa‚\nœSøûJX‡s`ÒŒÈHÂÒ‹`=âÍ\Z‚H¿gÌ\ZL±İBL7ğ{T}éÆ%XÆœ›!¬Ãb¤SbgíJL³ŠÃfWê8cFc.J=–`	‹1nmºVky{6 \\À)ÍØÌMÄ‹1¦g~ç8+á,[-ë|,aæ¿ó\naŞ+1_Ö¢º•H³‰×^)+ÔÛ‚ÁPŠX¬÷­\ny=X+W!mËmÆrXóaYšv2¾-æ½=Ë[À{Lië‹%¼-Ë´>y„`¾_Œ1,T•şmTòY™niˆ—²cçóöª£t)²©ğŞa¸:&“°N¬w–ğt—ğşÉÓ·pŠXe²Ş^Àa(]#•6ÄÃ×rŞX‚uY×Ëij;Xü:.“—#İ œ‹Á‹Î\'ı\n¼bùRŸ¡ûœù=KRŸ³xæSÔŠĞ•v€óÿ1²Ã¹ÿ49…©‡Ğ	/€gÆ/árø9lÁ0CnÀš3cüœxSP÷â¹^EÚàJ8.âI}WÁfáuLµ9(y®k|9?µåÆ1ñZíó±%«Hkª>usêÖÔğ ^Huƒ|ØâùğjêKéÏ©÷ SÜwÀ1r«~/j¶ )ïÆöß)4Š$µ(ukÆÑxgïx•¦qÌ½>#r¹0s¹?•L=‹TÔÈ‹áN8H†’	4,ÍMMI½\n.,c#æztÀ>ütÁoáb’N¥HB§Gò*ì?ÃBO÷Õ=ULèa/\rÄÙ>	Ûõ$<GI„ü®”LR‰”.K½útÊæàW˜òSòoz%~®Ç§Æ ,Ù?e½\r¿‡‰“i¤¤+é=Â\Z´Q\n1íİ%Øß·cî8ÙGMôˆp¿ø¨ø­&»çxÊ‚#ƒ»ànø1cKCd-¹†¼I>¦cé<zıHø¹ø°øGm3¶ú\"ä´›àQø7±“ád:¹,&—“-ä§äò*9J>§£é,ºŒ~%,V¿Çàg¦¸V¼Vº^ºQóyO}Ï³=¯õü;U’º¦#?\\µ¿\rµA\'òÉx?Çà#\"#±à\'DÂd6ù	~®$7‘ûÈnò0éÄR’Èää_ä[Š˜j¨Ÿ†i.~\"t\r½”şœş’ÁÏQú7úàr…¸0T¨\Z„•X«-Âvüì>}â1…ı\\\"ívJ»¥G¥§¥S\Z“ö\Zè^ùîşî‚îz gkÏÎÔ‡híx‘§DKo:Î–f”üÑ¦{ùüubÂ¾ó‘2Šœ=3,%«ÉFìÉëÈäA^÷ß\'°—Ş\"_aÍ4Àë<ˆ¥cè4ü\\D[èjºŞJ;é›ô¬ Œ‚Up\nÂ¡QhÖ	›„BRxEx_øH8#|‡Ÿ”hƒb®ãâq¸^¼GüLüLš+½,}¢1hVh®×tiş®¦¥­ÕN×6joÑîÓ¾¡kBî|öÂşLJWÕÂ^¸™–Š^úúäçy°@˜B‘Sén²•^A:i´Q3’$Sá”Ã¾~î¤gèHa\n©!3a)¢ä¦qˆ W)>\'Å\'°mÀœ7jLäJú•Æ„Û1ä÷Â`1.¼ïÇˆV¼Ş\rÄMNÒ_	µÈ¿GIõ~	¿V“+`/­0|«Û†|<• N‡Yh©}-¤@ S‘‹Ê…áZXFÿ\'qo…_â\"¸JÉåğ<„³b t‰¦@ã$/Ò%bÍ\"@Å‡™MEòˆ 9à:Ò(Ü©ùŠ¾²øˆh€„_cíĞßSÄSÒ²gÀhİ¯N]\r›¤zñd¤¢âq”n—%bı«PªÌE™¶g÷A”£…)âAÎ9ùb6Jˆ;ñs;Ê	9h	ÎñPŠı:5³h,’,¥Z!/÷Ì€9©‡àÔ\"¸$u+¡<Ø’ºsÜ\rŸÀ-°›lîù	Jôœ9ó¥ñôˆ4>UDÛèÛt&İÑ|±·£ÄÁÏoğeÚğmâ[hW¥¶¥ş„Ü=\0%ì¨I&Ã	lå—XÂDá0”öL¥í©ñê_éLOı*$XœZ\Zü	xP+A³6cœ$ÄöşZèŒÔ:¡¥g	öÃ-Øl-´åÏ\râjñZñØ†s~Ê›]8oÁ™Ãæ>{ØZ±ÉhĞ}oÂX‰9b˜ñG§Õ²\0-.=48WÓb`fF#j4Ou\Z\ZÃMFı¹ùk™Ór/ Óc GB­Wœì/#\ZQV+àæeÔâ#â›Ä=³ÑÀÇÿ:½^É•åo¾è!ÓöEÚïç/²üµ`5ÏÍŸµ\\§Ëè\0½çjÀô:#˜Àj¥ÏL ÓéDåoFT\'áÖD²Ùtnşz^åŒŒFËÒˆéõfìSÀÀÌ:½^ÔëD?¶¶7›ÙÌtŞ˜¿ô£ù³<±–?¢zNÔcşzÈ’-çæoäYfd`6[\0jF2Z±OÁ‚µ2÷%0€ÁhÔ\r˜¿(#jÔ$ÖDN›Œ¨<l×Âdâ^:‹•eiAB“\r°JVK¿üM¬…\Z#kŸ(MF£KÃšÁã°÷ã4%;^åŒ¬2æjæoÎÂ6«•53ÉbÖZ,Ã³Å¢3i-F–ëw;úÍ%;æ¬Øí°Û 	­nl3°ZÙ2X¬V­ÕŠåk\\V|ôkbl¯ëÜüeædî)OV–²ìàÄ†Ênpg33XeY\'Ë¯õÊø¬:ÙìÄv…ü8g•hçUæò8Xk¸‘Ğî¯ÜNà{é{Ïf3Øì,¿İf³e½[j…°ßûäïryÀå\0’¿Ïlµ+3›İf°«ùÛíF[:ÿh0ÀØ«ÿãäUÎ¨ ×‹µvƒów±OÕÊÛ—ÀYN‡ÁÉúOtâc²œ6?–[‚FT7snî)O ä ¡;á\0ä`­™	œn·ÙíÆŠ\ZòÜøX&·;k8(éÇÉüñ1çãòƒaÀ††1_ò‚b`f·ÏgñùXş1>V·Ùçc¹%cÀWÈ™O€W9£‚ápË2	!?yae½Ş›ÀX,ß4 €Ík	x#Ø…ÃŠö›)üÉa.‡{Ê“——Ï²ÌGÂœ\"ìSÈÏÃÀÌşœkN6“\ZEÙ999v¿5ÛŸ~1¤2]yBÌ…¸§<ùùÌ?TEùP™	²C!9bù	á“•-‡²bşc+JúÍşD™‹rOyŠŠ6t0FË¡¬a`f‚Üh4+\ZÅò­Q|\\¹YÑp1vaMÕğ~3…?l‡± €{ÊSR2JÁ0$,8F”À0¬UIf‚XA³ \0E†­ª\0oÌYŠåÎœ0\n2Qy17ˆ{ÊS^^	å¥P‰„ƒªat9T–c`f‚‚Aƒ<ƒáŒ´O„O À=hàHìÂ¹Sª!ƒ•§”¹Rî)Ïyçó†Ã$,­‰çÁ˜ó003Á ÒRY)ÊJÇ”ÒÒÒ²à _iÑhìÂ³júÍşgn8÷”gìØ‰0ö<˜ˆ„ÃgÂÔ±0q,f&(><»|8“\Z³†^.	2—j‰7¯[»fõª•—¬X¾lé’Å‹¶\\ÜXAİìYÓ¦NT:¯räˆŠáåCËJK†.TT/8 ?Í‹ä†CÁœì€ßçõ¸]NG–İ&[-f“Ñ ×i5’(P…Õ‘ñM¡d¬))Æ\"\'±÷H34g4%C4¾?M2ÔÄÉBı)H¹ğ{”	…2ÑKIäP%T†ª#¡ä«ã\"¡.2gz=â7‹4„’\'9>…ãÛ9nF<Æ¡jÏâq¡$i\nU\'ÇoXÜVİ4³k7\ZÆFÆ¶Š\n¡İ`DÔˆXÒYÕNÜ£G¨»zD;+•ôEÆU\'½‘q¬I!Zİ¼ Y;½¾zœ?n(*L’±ó#\'!2&isË‹IjÆ&µ¼˜ĞÖ\Z¸1Ô^x¸m[—7ÅM\"šçÖ\'…æV†-åKº/;áé{ÅÌícë·dÆú…¶jÏ’{mkÛJîš^Ÿf°¡óÀ´4:¾©m<½\r;±ffK£›ê“d3b-a­RÚ×©f!MKCI}dLdqÛÒ&\Z_[fl\nwø|‰©ãà«µÍª„“UşHCó¸@»ÚflÚãM„¼ıcŠ\nÛe›Ò±ík\Z1™3‘–Ş8qr†ÕÌèíYÂj™„‘ÍaMê#Ø¦á´‡¶ùÃ‘Ÿ‚©’pD–$õc›Úä,œ¥OJQ9jû DNş­Hs:D•ÿe|ÒËj¯âÉx<YPÀXD;Çë8Š¿-*ÜĞE#‘Ur=ì>¨Å¾mnQŒİ³¾±+ãK²uz½ò‚‹ı(7$i‹9¬Æ8g³˜V5¦7yS9¹“ïŞ;“ºXïŸUveU/‘$®ÿ\"ºE‰¯™©™>§>TİÖ”îÛšYıŞ”øá½qi,™5¶^ğÓ4FıE¦œÛKÌ^êMI1Š\ZÎÔº´:äJBBã“rÓD6Âáÿ0QWêKÅ½¾déj&GÄû¿ì÷Ş¯z¦6+,ÆhÍ¬9mm†~qÈjJ“Òr<Ìª‡Æ&a6ÎÌ(şu¥g®ÁŸL`—eÈJPúµ¡?7àÃ¸³¨p<\nº¶¶ñ‘Ğø¶¦¶æ®TëÅ‘i;@Ÿ¦O·­ªnR§+uğFrü¶ì«ÅdDQa„Å´µ-h!ŠÅ$üí„#åcolHN‹7D’Ç#áH}¶¥}˜Â³šÆ\"FaL{„lŞ [gÎ©?€ÆDhë¬úJèØ¦1\ríyW\0m‰¥,”²—{\Z‚]ÓAuœŞ ĞÊcEÀßçwàa:5ŒÀü.ª„ÉJA1^P(ÆˆJLB¥1L§„µ*ÔÒÔ:Œ‘YÌA@<RyÚñeV}ÂP‘™E«(öêÀƒH;’ÀQ¤ŠøÛ1Ï<¸‹´¶Løğœf¤)[‘’…µö†aÍYFFXÒğÙ}-˜=§~Ï(Àü9DŠ1ìa’+‘9‡¸`b|~A¼ŞDÛjf\"²HÃp¿!#:Ä&I$9/²1ÌZ—¬‹l\nc`$BiDí0!ĞĞÖÂO{e~]½Y)`N\rÉÖ‹UZ\0y¢ïÕ„I9_í	0Ò[ÚOÔÒÖ`iiS‹KÎÿÁÒ°öIr!ƒüW¿}D”òQK+…¶Ím›ƒüNf³‚ÓõÀWK ç€5¹×„på4m‚…l.…˜C1™ÜN§Æ¹O¸ß69R½\0)˜C¥;+ZĞÀ¨\"lÒ0ÆÿQ\"’AÄ	Ï¼M©¾‘ô›2}Û’‹ú¿.î}ÏÚ(ÑAŠ˜À¶ğ)N.õ\'—7Ä{IšY›Ûpn`|O<¹&T;’­ó›±Š¨o&Í`ÀdÕ_¬ô SÔmÌršßŒÉX/§KJ^ï—%Ê‚\"\n3bÍI¶Ö†š\ZBM(CÈtìl()¡ZˆæS¤™ÉZ¥=µ(üÑkn›‰i\r›?©Ey¶°¹%Â„k’ñ»Òû¬\"ÖfÖ\'ÁßÖAÂ*FÇ#1fKjb“˜‡«â‘æfÙ-d†]‹br`uyï°ÜüÕ‘p’Ğ(ïKì8œh30¿ÙMqì	[›½-TÑ†¾QfWæ×5¡\\ÃåËøêf?¾a\'Lbo\r˜‘B¨2BLÏÿbÉñöFm´/„ÿ­Œ+Ä:+7\"’µ*‰–ÿ!²:¤îáÉ\ZOfÌázŠu„İ›@®ò³Ô8‹f¥Õ†’~KêWLI†!\rª@~o’­µ™’pnÒ^3ãB?vlQû¬Í£B!ûĞ\\È† \n ı‚Mv°K°\'æ	}BÇÑQa`G<;x@È²;F]BdİYb]$„PsB¸İãèØ%ŠyB†Ë¯B×ŠîqtO¡;ŠN€Å†Ğ­D·İq#dPP/x1­›`Üğº:ëéÆRİ0\rİ<t· Û‰NÃéXÈJtW¡{\nİ)“Ü·–bİİ7roÏÒå%üµYyÛÈ_÷\\Ğ øS¦+ş¸I\nÙ…lH™<hŒâç*¾=ZÒÊ|ƒ¹äğh—àÂFº°â«ú,X	 ìœDGM:$!Ø÷äÅJv>%ˆ@*X\0ÁÔat˜m%£\r4E¿;é—ô¤COî±ØJvL?‚ÇÑ=…N áçCú!\\E³>GX…n\'º§ĞA÷:\r=Ÿcøù€~\0Vú>£«B7İNtO¡û\n–¾P¦ï1#C†W¡£ô=„2}›õ.B+}±wè;Xµ×;Ê+Jp$^œF‚Ñ4âö§»«¤‹ş±ã›ÈQ1iä¨CB.Œ‚R!·#:ÙÏÓQ¹$ØE?ŞŠwLß€$:¶/ş–ü„ĞÕ¢kB·\n±7{ZÑmG·]rB]ˆ¾„îtoÂ`t	tµètôhÓEtÄÆG»èèó¸ÖÒWéÜ…>Çı—éï¹ÿ\"ú9è¿DŸëÈ	Âh#Æ¦‘Ñ—Ñ/Æx‰şnO=˜\Zm£Oaß£«B7\rİ<t· ÓĞ§hnÇ‚ 39/é\0);àî?÷é ±4˜ˆE1qbv†vÆh\"¶ã|e vó­ˆ1»nbÄ.»\Z1bË7 Æ@lÁRÄˆÍ™‡±i³CĞEïÙŸ—,Ÿ¶Œ„F[é¥ØK—b/]Š½t)ˆôRöoDV·»:\n\n°ÇîLÄ[Ñ¶y‚´Î ­÷‘ÖÒz%i½š´V’Ö‹Hkœ´HkiMÖCd8vE+Itö{­HxHëK¤õ1Òº–´ÆHk”´æ‘Ö)OtÑpÇ¤RîUsoÏh6éĞ?oJ+\rc†‘çÃ(Bx]Š¿%(”«{s˜Ÿ»§ Jy4¢d%NŸg0á38ÏÀ1t\"Ğ3ÈFÏ`&Ï`V„Uèæ¡;Œî+t)t\Z¤ÎÅŠßÂ¡a1º*tóĞ]…î+t\Z^¯ĞQX™®âã¼b¬ÒÅéŠOC\'ÒgğÃNÃ4œÈ–r\\(Ü Ö2-\'•CËÁÅöhí6­‹˜÷ıÛüõ¿Í ­§7Ó[˜è¦ÛÓş-ß è&·wÄG;É/ GDÎ##Qô‡ÃZş>:æ—A€>Š~IG “Y;b…ÁƒÄÂRí~8ü\"ĞEı<p(øV¨K$Á?aÈ£û‚on¾XÜ¥Ã\'b]½ƒ!Nz 0<øØKœôjŒ¸³#x%óö¯L.ğˆ%â¢µø–°gÄæ\'b~ãk1Ï}ÁªÀEÁJ…j(K³/8«WĞ¬ìÀ\0/4’ƒ!Á¡³g—w‘Å‰Bím½všv˜¶D[¨\rkƒÚl­_ëĞÙu²Î¢3é:N£uT:GWêx\"Î.,:4üŞ¢FdPä¸Ld÷™è#:\n“!™%ÔĞš™cHMòğ|¨¹8”<33ÒE¸ğ“\"cjV¨™5&9<^Ó¥MÍH–Çk’ÚÚëÛ	¹¹C“t+.]fÕw‘Úìg[,€Ûæ›üÌ°ù¦†ğ¸6Tyªì£lãÇı\0hJÃxßãé‡gIî¨™Yß1ô‘G²Ç4$K8J!^“üÛŠ9@şANU;@şÎ¼†úÂ(òê,\\5®¡¡¦‹Ôq:‘¿#²Îß9µ4£ƒ.G¡»S¡‹bz¤ËcÒéõåtQ½Ó‰„Ñµ¯Í«×—ÇiÜ!XËiÖºC™4/E‘&\Zå4®Vx‰Ó¼äje4ÉQœ$@’œ\0\'!>p’\0ñq’º>’â4É\r½$7ğ’ÒGPhÌÇU\Zóq¤‰ÿ§OË˜xœìÙ0.ÛÆjŠT· kJŞ¸a±‡Yä¡öù\réı­XÓÅó3mÒ†HË¸äüÈ¸PûÈ¹?=—EŒŒk‡¹Õ³êÛç&ZÆuŒLŒ¬4kØ3¡¶¬¼_Y7ô–UVû™Õ²ÌÊXYÊ ºœEO`e•³²ÊYYxYÀY½¶¾]c\ZÆÎUü=Ôh@¶mB;~ŒK^5ŠóğÈ°çJÿA4]vƒ1Ş4EÆ$ÍèXTÑè¢Ñ,\n§‹²°½Êt”çÊ‘aÿA²;%c°-2âëÖ¯]ê%ã”¿µø`Ğºõ¬Ã_ûcÆU\'ÍãÖ®¨IÌ¬IVáâ·]«ÅĞ&Ö¤ä5Ìh¬îJVaà(½„,¬’…éõiÂsÇ}ÚËfA+=´‡$rÈ:XÛ $sjfQ”³Ò›BÑ°bºbm6p-‰“µjéjÇã ¼k³êÖ­Océ¾X—ö•”˜d­Ú%½ë¬xo­ãÙòîŒÏ­m†	Å0\ZmçÁè¡_„~	ú%BqÂ\n´<¨×•†qA­f\\PÍµ!Î6ÿ{$A -Wô7ãaøZ—bÇò©v¸êfGĞü›¡	LÍ`FháĞ\n„2XÚ~‡–­\raØ: ¡á·àB78z/¸÷q?ø8Ì?Â¤¾AkšÁd#£­ü\r»Í0‚ğkÈƒ0Â(ä\"Œ!ü7äCá\0ÈC8b8ŒC~êÂ\0„E‚„ÅG8ŠAø/ì¾AK¡aN†¡ƒ!Ë¡áp(Kı*8Cä°†!<Ê‚á« \"õHÀ„£a$Â1P‰p,Â¿Ã88a5ŒB8ªR§`$N„Ñ\'Á„“9¬±Ï‡q§ÀøÔW0•Ãi0a-LD8&¥¾„Î„ÉgAMê$Ì†)ë8¼\0¦\"¬‡i©¿AÔ\"œƒğ$\\ÓŸ36Â,„q8f§ş\nMP‡°.@x1Â¿À|h@¸\0æ l.„¹©/`‡‹¡á¸(õ9,…&Ä—q¸š®€‹1ü˜p%‡«`Aê3X\r-×À\"„k9\\‹SŸÂzX‚p,Ex)ÂO`#,C¸	V ¼.Aø/‡•¯€U¯„Õ©p‡­°áÕ°á5°>Åîfm@x‡›áÒÔGp=lD¸6!Ü\n—!¼~’úÚàr„7Â²\rá‡p\\‰ğf¸\ná-p5ÂíÃOá\Z„·Âµ×¥ÁÏ9¼\r6#Ü[ş¶bìíÁpÂ;¡-õÜ7\"ü%lCx7‡÷ÀÍwÂ-wÁv„÷\"|îƒŸ\"¼nEø\0üáƒğóÔ{ğÜ–z~;î†_ |˜ÃGàv„Â\rw!|ŒÃßÀ/>w#LÂ=Û¾°áØ…°îK½\r{áşÔŸa‡ûá„]ğ ÂğÂƒ‚İŸ€‡SoÁoá„Orø<Šğ0ü\Záïà1„OÃo>§Ş„g!‰ğ÷Ğú<ÇáóĞğØ“z^„N„/Á^„/Ã>„¯À~„¯BÂ?À„G8<\n¾O ü#ü6õ:¼ğğ<‰ğOğÂ7ápê5x‹Ã?ÃÓß†g¾Ï\"|—Ã÷à÷ß‡ç~\0Ï§Â1Ã‹©#ğ!¼„ğ#xáÇ€W~¯\"üş€ğ38šú|Îáğ\ZÂ¿ÀS¯Â_áu„ãğ$¼ğKx3õ\n|o!<ÅáßáÏÿo#ü\'¼ƒğ4‡ÿ‚÷R/Ãxá¿á„_#|	¾cÏÂq„ßÂ‡¿ã°>N½=pa\n>Aø¿2ıÿ™ş÷ÿá2ı¯ÿ±LÿâGdúçÈôÏD¦vLÿô?é\'zeúš~2ıã‘és™şñ92ı#.Ó?Êéq™ş—éeÈôÏ‘éÇ¹L?Îeúñÿ2ıíÿK2ıÿ•éÿ+ÓÿÇÉôÿévúÿ\\™şcvúÿÊôÿ•é?,Ó_ø@¦SœÅŸ‰6é0JêlÒ“Ü¯o§Êe_(9rÌf·¾+õy§ÕJg3$á5›³‰…€ËdBhbaPÇ_Eğ*T¬:9d°¿]snN§1\'\rËéÓN³™#_&¼F£†e)³M&YXo–}y&¦Šš-t«q«õE‹¤×\Z=´:ë|çdïXÿ¬¬¹Î¹ŞşeÚeÆùYËË¼MşMôRÍãeÖ-šÛµ;ä=ïĞ75o\Zßµúz«4ZF©Ú‹$PºQş¢>Kã_3}F	[{­>”\rÖĞËzªmÀD*¡\'Ü_§ß´™L¦.’è¬³YŒFÑ™Íˆì©³­Eö<œ0aNìç(¨¤ K“‚Bº¯¶ç<£\'.ŸÁ¦7ÆO\"dhãj¦»‚4®†Æ$›LÔÖwjB^9Ğ•:ÕACÆ\'Q¸ĞÙÑYÑ\rgA×ĞĞào7;º„âÎåf³èC¤c¹(§*^<¤!K¶+-q¹ìN™j\"¹ù±,ÙUZ2Ì&Ç\"¹ZÍìe¯ïÚĞ±nÌÒ×ï}cÓO<|ùå?|åå“éëD$çızŞÔ;===Ï<vû~rwÏ/¾:E“¥_.¹êc_ö²ïBÓ\0ã±\'Ğ\\8«t{gY“îIíŠèUÄ \"’Ú­\ZÑ«ˆAE´º4±NE´jët½4¼«YH\Z‘TD£\"z1(H¢¼Î^oZlºÓô°éE“t¾p¾ùç¢`\'T& •FA‹ƒj6¿$ˆA3P“YÔ\n‡è!´œ(Ù•0€(²/Ì¼d»èÂı’dHdË]©ã²Lg”yÁ‘/ù1t‘ò„Y›È”i[ÃCµÛ­”1‘Ñì(*Ó(KÌÒ rbKC÷ZºÈ¶vÆ@cüÃxç4Û…­”?•»+¡ªJ>]y¦ÒVQAlöŠŠ-ƒââò³V«™ŠoE›StØ+Ì(LÆÒ\n!·¨B³³+ùFn#4\"MÂaJ+L­µ¦D¬Â”@¿¨BÙê%?pÒqÿ>“¨×fÚ%”ìgì&ÎzUöŠâxii‰½90l%¥¶RgÄ&ØİÑ}½ûgÏ=×Ù3”Ì{PØ÷İä{î¥\"½­{.¹ÂÒCCµŒ§öd©<bW‘,Sz´í*’eJ©‘lş*âî\0ìU3ëF°rœÎ€½‹J­¢˜0[h=]©¿p1ÈFéaÂ®øÕb>!±İÏÊÏÆ™Œ*c¹kf[9¬ñmÊnËŞ‘õ«¬gLošŞõëôYKOÈ28íYY/Y¬K–Ãb5wÑY¬è„e—…Z,Ö„“¤«±ß*’×ÙEÅ.âIØX…lóä•òUò-²(·jûÉ0m†ÓfÈ0íZ—aÙC±§÷³êy¶‡ìO¡`%·!åğË^r`LÖ+©¶»È­œ¡Î 8:ä©´8:İˆu²»ñïƒF:ù¤|b‹nP\\B¶d±!ƒU9¥,\r6D¡$¤3‘4¼¬ndÇüñ\'L\0s–Å‚üá4 |Ú»Üé´D.²f«½K(íXn‘…E1‡ü‚e3Vîbkh\n,6?+ì(ÑÀéĞ¢<‹Íş­óå×t>¶í‚m¾™¾İ½Úu?=Ltën:ıB7i•Ûn|ö¾;;¦U¹èßİ³anÏ™×ÿi»\nÓŒòË%ı\nûòFÆi	Ë³f\"âÕ‰zœäŒQS\"êMæµ‚@Y7O£óèJœ›>«n­ş¯0Ì#ó¨P…ŞJrÊK¯%İ¡SåÓ«+§œ>9U>³:^9E>‰Ó³²»²ÂÆ\'\'ÎÈÕşN½IÀÁgm\'¼í¥U¬µCÃN\r\Zmd˜İ^Ş,ìİÖs²f˜õ€pÍ?oÏ>¶í¶{Ï·]ï>FşBÿ%P\\‡Ô€RXÚÆÚ1:¹şë^Î1àŠLÅõáR.ªx†pÕˆ½RÖdz2ä¬Â„H¦1\ZŸL§=­R“\ZHú5U6»T}¨N[£ª\"U¨ˆŞ¢VC\rÑ*!ûëˆÅ*s±øÎ4ò5—©ˆœN403ƒéÍl‰Ãby°¼H·Xß$o¶Ë/JÏiË§d£Nj u´V^lLÊÿ4ıÓüO‹^4‰fÑ\"\rzIMf‹N£Õš×iLZ¨ä¿NX¹]ÒšE…9Y˜ML¥Ï‘$]FĞtÑU	=èL_$(¡ô 1!Æ„İ‚­0£V<\"…í\"»IkM‡µÇLÂv1±wÙª=¢¥Wi[µTû3ë›oáEvò¢Ã?ÏIù¤Ï+Ÿ<‰Sé;Yu¢R>‰[¤Añ8NÌ-ƒ<Üç:\0uÁùÙg-Ï>»ER|ä¼š¤qfM2gúeöÎ©ï­‚N{WšúZ™½kØôıñÇß®Ót	C¦å:Q‡\r%ëSZUÅæ,³:\"¤”D„°bù\Z­@K_£õï?Ú}×½o“¿ß1>7P*<;<Ñ3Î!;\\zÓ °_“¿@^¶A67`–ÈìFQ©‹,Œ¬Õ_§×,ñ­—Vé×\Z¯•®5jò]zÁ“_ãÊÖ£Ôü<ƒß??× Kxêôú,{NAÁÀÈÎÁ\næäØ@çÁ´=½i=×“:ƒá,­¡ÎÓ˜˜R× ROD™æĞØ™ÚĞh#ht¬¦\ZÎz\ZcKÍ¬h¿|£ùF{ó•ë¢1S€åk2°ÜLŒ™M,/“¯ë˜9ª1”c0qÛÅR—\"ü%K‹Lz†+3pó½+u¶“s­‚hr*aà6yc|äÜ´9Ê,ÒÊnfLLåïS¸H·b¢øbÇ·Í\nf¿Û*p¸‰İÍ\ZZq‡Ş^€mïr»@bËAG²Gûä;³\nJma´J–ApIù0&æc´JÊGQßAc»_^»pÑæ[.hıİ¶Ÿ‘ó®>¹fü5÷ô¼KV\\;gÄ¬Û¶õ<&l8ĞrÑC¥ùO´.jo\Z\"Ì°¹N™´rà·»´¦áËÆÏØ4»iaê3iƒô:®ŠŠwíO—fSÂ–B|eÂ–Bó‚ó|öË2Ù­p]öv¸SzTxĞ|@è4?o>\n\'²ÿ™m³Ø³mÙÙBf€­ \nN0×9.pÖyKË²b¿Ñ~§p‡åÎÀnò\0İmû“%à“²OD1õAÇ€\nÂì½Ğ€\nÙŠÈŸ•cü9¢^Y\'C,Dñİê »ÕAw§İPç…tå25×é8§è¼9óçrİƒƒÉÇ‘Ó\'¹)cãÃ„Ql…“5ş„ışU–M¢í·Îå¨ë²éXn”±²3=Œ‡‹¸5b$7ÇÄWZ\"ºµ1¦©ÓagÊYì|ú¼g>9ÙóÖ]“±O¿G\nG>UúôÏşxîŠO¯¿ÿ#J‡|õíïÈ%ü„Ìn?şrÑ®[ïëùê§‡z¾h{‚İ¥º«Á~Ç\'¹&vj¤ûMAdÓÓ Ï1‚NËzÌ!ÛË´³„É!CÈL\r>³¨§½\ZC]9ôN\rıÿÁÔĞëd˜F^˜îÓô,™¢N“Æ)§Oœ3/ØYÒñ9 I¸°Tç€xÎP¦€3œv÷‰yßİ#Ä¿û“ptğ±ª_÷˜c}³ûf3ö^ç}“Ëûæ-éíìš_†p…H©Ïøßì„QYù§\'CÏ9½a9÷G{ã„bã0s±_Oìç=ñ½.°¿vï÷	Mv×²Öx¬{!Öô´mr_ñŠ.0#¸²œe¢£7ì25PƒD©‘ıŞC?!«Ë²:UÈî­Ó…´Z\r[ƒq±®¸˜è–¹èf7ÿœ\\|.¾[ÍÄLj‡\ZÕ5*º¿Î¨ô\'ãKVê?èX]ºcÿ­vì×	WšÍBf2×š›Ì«ÌâÈÚáª`îÍr£‚½Ë ²^UeEcq%ëk‚JY@Ûº4a^.@ØÏgH”wvUŸVfFu]áOÓ³O?İ­‘v?DçœO÷tOÁÖ<…Lw5ö¹@jùú‹ªíT„jÓ! 2Úœ6ø¾éípPq$•LÊÂL@¤—ô[e<8i\ZßWÇø˜JØ—{†ŸWÆıÒ2Å/\Z¬ø*~$ªøÙ9Šïñq?Q`–ËBÒvéqIB(Ùn]±×:µpNdaàv$e±ÍÆÆ“³¿©cö¥:fg²bîñ1»O|³!CWâb¹£mºÆ†Õk*»{%¶\nçB¶×RÚƒŒÏ!İûO=Íììgfë`?Kğ\0Ÿ×hA!WK 1«şj¯–öö¸ ²Ğ;—…ÿX¶éãµô$Öü€Ú—?mTD›¶ ¨b‹W½—sœ;¦Äúÿ“K¦Û4Vl,(œ¢+0*ƒMé·\nÇ)¨L\0Ålã&;ö2\"Û\'À0“EKV“ Buz£tzj0jXûŒ2k“Û´Qe`*é–­¶ü»Î~û•ls±êğaùèÑÃ6´Pâqe\\@İ¿jùÀj889”8Ô1éaåÒPĞ°^¤–¾õ…C­ºüĞ±2,&SÈ`/³r ¡.%Ô_Ø™|ÿ‡åÆÉ!Zvi]Âœ»\Zu¸x¶@X[NŸæ&XUe¥Ò˜Æ.ƒô*û* VƒúuâÓõ¦°+M“L“¬Â@1j.´ÔŠÌ-[Ì:#•tæa–i´F§Mè¦˜ÇX·Ó;„ÚºİÂ¯´\Z;µZ,ƒ%ê$ª3™Íƒ%¢:Óë’ÀN§ÇeÙl±Èlœšì­vj?HwãTÒ!…t]dÈ^“Ş .ıÒë»„¾ÎJ˜®2ãAl¶…‘–v¡g%0Ú€rºO„œQdùş:YWÉDî¢uûCR“Ô*áì¥»÷Ø˜Œôâºètc¥§›10_á›/ãõD#ãßÊJ9ããÃµ[-m¹‚/–Ğ2zEõ¿\n%]êM\\[¿ÉC5IÆ\rè[01=ôu»ÅÀ\"Ó;koìWX\nÃ|wm_y…¥¤œ£{‹04½ƒoÀU¬nD™Ñ\0l¼ÌF&£ÙtjM/ŸØG‘aâr+\'aÕ$Bl·“<rá`—w(™G¤C=u÷ÔK¿ıÇO\'ÖŞ%|wv¼øò·CÅãß†Ø7ºĞÂ}_z,à\'³¸d©ñY‰Cv8ün¿_eÑatıâÃî}–ç,‚ÛíñÓPvÂ6-kš;á«—êõÈ³mó²æ¸çyê|øotßAeo ØsŒzg?-ëÌĞ²NUËî«sÆBh<™±™®EûšMW­*^9Åå“–íº1¶×²CÆğZ¦-ù4ÓúZ³I¶U‚VUZ{Í`kŒÉÀŞ}ö´=œUšŒ™ä\rÌï³YT»¸QÕ­J@ææ;ÚÇşv£ÄF½àå± dì§C¸D´;”ÛÃå2”–€­Œ¢9óÉV2ìe2şÑÎ}Oé9¸û’ıÖ»Ä¿é‹Ÿş¡ç-úYAî~ºçÁ÷õìÚû™ódÏ¿{2âßCŒ?ëùGïÔ\nİ(SÍà!ƒøèå´Ø–9h\\ã¸P¾Ğ!\ZM985ÁíQ,?{¿±gˆ]İ%ÜSgéáğ(«_K¯0urZÌNØY?é|!Á?ŸÇ¬ö¸Yíqs¯Ú1ÿŸšç\ZÔŞLíÓ·ê\\­Iz8T‹š›6¸´ô·[LÜ”´X˜)éùaS²Äƒ\ZÛg+É|\\>ŞCŞ:eù­\r_ö¼Ø³•üä‰{\ZÏr]Ï\rÒA‹½eßŠC=İİ¿È¶«æ^ë4³ß~¾mN\\K‚réU|Âv£…Ø‡æêVq‘ÆÅ=‡ZóĞœàÜlfLÌ“ŠUÄŞ•úhİW†ş©=¹ùe6ö_&§}kÚÇø?ïÉ)ñH/§}Ÿ˜„HÔ29094Ó87°\"°F¿Ñ²ÉºÙ°ÕúóÃÖ.ëç–Ï¬2ÎÍê°Ù¬6«Io÷Ó°ÏeĞØm²Ù$yôz—ÛçÍq?™:œq&vX±{İnçr¾òx¬V‹.§såd0WNŸM³üR£%jTNàÆ´—›Õ\Z¾ÒÊ[•×š\'äåzTöò¨ìåée/ÏÊ^šs\ré4{EFîş¡JzÆ{OxÒ»L¤¹,ïÆ—ŠbÔ¬WÉ[,Ê7ã¼~Û^¶ü]ÂZa•GØì#˜\\\'«¹°¤>Hø¼¶\\o…%¨sè‚èœi%oğwè½n*	ãr¯ˆ•\0ÉåB&ÍÏŠµş½-·ËQäèçn¾¾—¶=ûÊe/½>eÀìóS§Ÿ}ÉEášÉ½›wLıÅı=ƒ¥ƒÓ^ØôË7³£yS×÷¬&C®Û6Ü¨í^/”–oš°øzìé¹©ÏÄ¿J¯Ã`a4ß;¶A¾*7p˜cxTÅq¼äôzUÄ‡Èè §3gì¹™2pcÈÀı*Ö­\'ÍTEˆ‚$ÔÍæ‹k…u¢Í*TÆ\n“´çgWÇåÏŸ)4hçf_0à†,K„í\n3æÉS‘¨ŠÄT$_E\"œ¯b‰ªHLEòÙ:`<Ã˜cy4OÈ³–EÆE«‹ç„ê\"³£ËKÍË,-MÆËÌ—Y¯×ç­^/´o0·Yo’7ç]½Õ¼ÃºÃ™“6<‹Â1»?æÓÇ’À@Ÿ],ƒ=æ¢MşüÔu™‹rò£$*¹$¾È·³sŠô99.«ª8²H#º´×H˜UX|RùøEÑ<‹Ù(…Ù9~V#\nTC¢y¹¦‘rüE¾›C· ¬?é‚\"¾ÅÍo™„H-i\"«Èv¢!]$™0å„²²ÆÌfKlJ›Ù«\n¶`²¾ß•>C>èUfÙW§Á@2©y‹…ÎÈÚÃ§ğ@_IX=Ñ«’ ¬•c‘˜-ËX*»*ì½»ğöYLPx‡ÌWvg\Z§œ`•rz×KÕë|ë+2®ÑN0pšõNr¶=Îv.Ğøk\\İ7ÇIæŸñşıÄOŠü®\"‰/ŠŠŒ®®}\\‚º—ƒÓU9§Ê¡¥ÊÄÌååÇbCË†ñ“÷ô^™Óáv‰n>Ÿ5h9Äæî7Ï{áŠ•Ì¬;²gùô%‹®üÇÏïÿæzé õ±‡“÷V\'o×·^vı·w?ßóÏ;È[ò%7]0fí¸êEws¼üş–•¿[°ä•«-7Ş|õ…ÓJK—\r¹wÃú#k×}ÁVfzÔaãÙÉ<\Z¬le&ªÇëêÄIOX]¿}“³½8ô3à2÷SşÑ;aÕq£–Ş\0}ê/½2C§â¸p˜ÍO¦óıT\r$yés[ª\"ŸzØÄÈÒgR$Oİy@$ca™°³}%n@Òë$B¥â÷_•ßÕVZ\nÊ¶;¸Í+–H¢†bÓ`S“éİ\rúí¦Ã¦S&cÈTk¢\"5ê¨2;÷ë‰ÉÈ×½UUüSôúNrèt.øCTrP*é±¨/B\\ü´èHÕñ\r…µ:ÒªÛ®ÃwBfšP1’[èNJ)±…¤Z‰ÆeÌvé°tJ’p)³u±i·²”Y}™9|’Vú¼\'=U•l±’>Ùa;ÊRÅÑ·é\0+®\'ÿŞ¡·æáÍl~=„/^ õ°élÕüw€¸™‹&Õœèsvß\'áZUİ9b;¿aRª,FJ	İıÂÉƒ‚¹EdÛsİOã\Zä­ÖU7ŠÏG69õ¹GÁ\0(r¹íT¨7ë¼f_Á@sA®9åş“\n\ZÍKÍK\nš·™¯x§ë.ßÃfç\0u>ŸßHbØCŞGìó\Zğ¬÷È€?:ß ç\"9L„Ø˜H´ÛûÎù†2é4aAwĞ/,(«+\n\'‰ët\rñ…º%ñ\r¦-¦Mß˜¿‰ÛÊË,D”‹óÊÜ%a‡gŞÀ•éÀ@±¥Êr‹e§%e‘vZ·|e,‡ÔÏıu~3ÊÂäÓV	‡,kf[øu\0‹†]€²ÄÒllñpİ[g±w}dG™‚ÌÆ)4ÆÌöÜæ´ĞÛ¨Î7”ãÀf¹P®f®…¿Î˜“ß¥Íx#.r¸M\rç11™VzS¶µòD&#ñıv(GNóEä½„‘U;W8m›°âóºè…	K~br,{<&U0«–I_T†o*È!	é5El‹O˜s\"eƒ+WĞ]¤ÂÍn°Ìİ:u½ïzr‹Õ7Åª¼/VäFÂVWœ÷”æˆ†5U\Zªq¨RÊÑ{gGÉgPÆÂÍK~%Mãáv¥‰µLÃ×\Z·1ù3Íá}§ìv•¢âq\'¿yuRµ\rã|íÿä¦SO šÀ×ÜøêK¼ZÑ²\\Ã2]Á•;…Õşı Äã&“e`—PÄ–&|ƒPÂqÁèq»~‡EIq)j~øÅo6àÄŠ2=ÀµD9ÿ-ËW®8Œ¢\\m¸œN‡Ë‰	\Z­×5ìœ‰„Ê–>şÄ„µ‡.{g)­ŞzÕ¦ì¤ç’£7l}¤VÖ»sŸ¸/~våÜ’KßË¾vöøG7O½zªÃböåE\r—×°Ú³úÆšDóäAO}»ù¼áäıyÀ”â‰MN;ïR¦?jSŸ\'qûh³r¯Ë:¥\ncƒzA@¯\"V‘UÄ¦ë/§Ë,WY‰•±s-¬D{À¨õD#±8µ:ÆZZ>²ZßÙÈjù(¼úÆsÜà‘Ÿm,a‰ó	z	ÆfuÏÌšénÊjrßEïî4? ?à3éÌ^ÃRºDX*­7­2·š2íÕï3ì5™\\¦ëMSÁ’;ÏºÒz•U°œ–‰Ø`¾;Ü„ÕÚ»à8œBåiµ²ß¤VëÀªó«ê$´ª\n0a­³æYt|şçúïaÎ˜«_ö’A1$õIXâŠi›H39I¤{SfEƒW“›Kd\"ãjâc¥I§:™œêdr¦\'S¸Î™wDK‚Ú*-ÕZøŠe åRR«^‘Ò*éöÕi‡øËí]‰+ó$ãÈaMúÄøªá\r»æ4;	^£Ş‹BV–Oà· P§¨\nE9W´ãŒµ‹~ÇG4²ıœ\nFmïùWÆ¹\"Î°•ñ[Š½¦cv¡²=û«ß¼Óóï5_ÜğØ{ÁÇ½WÍÙúÈ×-½™lvï?B²‰á×„^ıø½şeËŸyıÍ§¯A\r49÷˜rƒ€fq\rt¹Šæ¨¹Ì<Î,\ru\r\\@gf8fÑR‹~¾£)p8ø†ô§¬÷½Ÿd}âøÊıWï\'ÙÇƒ© +Œû*]•¾\Zßªàö vÚ(ƒ\\#èPs\r­6wL\n\\`¨3/2¢ùÌu–œ¶ÈÄ‰æl?ò\rNædˆ¾”§ï–§”À¡>;\n¢6+Êü>Rë²[^5*ËGmD¶%lM¶V›L°©L°Éc³3`ã\Z…	K›†M,›‡Çñ³.Æ6ã	›ºÿlS÷™m‡ÔÚí«³­³ëz/Ô©·ï.ÛWgÏÓª«>¶ûÁ8odİSÚ#ÚcÚ”VdÜ7M+hsøæ‚Z›£LmÎ‘\\Yj}œ#½9eµKufxs£½;Ã\"i\\]Émz¹;^yBÙ§«dß<`ŒGØª¿]p\"%(w‰Å£ŸóQk~€QUj¯à›wá¡Lä¢ÌU¸\r%1qô].†·<{ÕŸÖ/}ãÚ¦Å{ºC¿^¿áÁİ?Ùxïõ÷lûöşDh›>šZÎ§öW^úİsï¼ò,Û/ªA›\'e¥9ÎÅ9Î„€“Î\Z¥Fılc‹°LZ©o1êœLó®F$1ƒaÙóíoKgg|âûïÀhûßèÀtû\\ïŒ@³}…¯9°Q³Ñy†ñÈà\"V³Û]ëjr­r	®€u»¼K¦²,ú-¤°¹ÊM¾¨ãC-£Ì¹-å»}ê¿¾½§Î0£‰À×Zfõ²ª™=lÄÌ,S}~AYÒLÌ¾ ;{‹ÆÊ˜¿Ÿ™AtR\r”}u®Ò^} «ë9}å6«NÎÓ&ò\nÊT~QÙ,-¦ñ:v<ÓËBÎBŠPpæáÇ¦Œ…Ê3w{âq¾İsÃÎğµœºÃËéÒ×+»WWróŞ®^]aJ}?‘\r\\Eµ¢6§‘Ãp”ıX”(»™—Ë –i– Ä¬´x3ø¹x3hÕkó.j,ÛJ‹Wgˆ8e§Ø¡\róûŒ$ãê^¸è`á—¾èùŠ8Şû±ï>7tl¿­û:İ4¼î†Ë&uîû;IÄDô|ĞózüàbrÛõc?Ä´u²a«ô:¸ÉEÊ±CO¬Şbï`oÂ»Ê{—é—æ‡Í:Ÿy€9é=ì½lƒ¾`Y¶Î,˜¬qÒ¸#K4`Øé T–2Xûë²bßÕU ¸•‘BûÓA ·~\0¾gÈğ2~Ë¶ñ&˜ò&Ì(‚ÀÁ·óğ½¼\\&” 0½÷ôv#½ÇŒk|Ê¿PÀ6üösëø~÷	rÂp†ÀŸÉ”l{ït¥\\ÉÅÉøÉF¶\\É3OVØp€ÇnBSİ¦Ñk5:´2e½İ6ÕOâ$^põÕ$\"d/\\YEë­s¹ 1Xù*2> ¥%Ê©LdhéĞ²r¶ªGEÅô”“]jîØ¹3Ëwí†óçú‡—Ìwäˆpç¶ÕËÊÆ_`¿Û0¾éâmß-drbLÏtá/(\'r €äãÔd4JBcÔq¾±Ú¡Ñg{³1Ga¤Â8Ì1Ù8ŞQ§­7.65üËi)Ì•~şöÂ]…Úaáa«\nÇÇ‡«Î\nÏ\Z¸D;?<`Saká;ùŸ‡¿Œ|•os»4Î.ÚŞ9 ¥å–Ìş%agiÆĞ¸ô W$d)°\Zªs&ƒËY\Z-5 Œè“Äû®‘ª—óêQç¨›Èî„»ÉİêqéìB®…Ü\\¹{µ›k!·‹Çá\0+ZˆQiØ»¢…ÜÊé-\"¨0ÏfÈ¨³é2MuîuV…Ü ÊA•!ƒi†t×ó²±³¦¬bĞZe†6*V¬iM5¨ÎÊÅŠÕÇØÎšËje\r°\Z)·º­\\3Y½ñÂua¦œâSû$Ëêô’œ©Ÿ¸‚âç»/}\"}eúDUeú4i5ZC8I]@V@âwŸ±ÇM¹ˆí_½®qf\rà²#KY% ²ªà÷®P‚ Ë¹İ¸àv>Šªè-÷ĞRßCŠee(¯…KÆ®»b«ÇB6$ß=uÉk7=qÙC-ïîzò/w<tÅå»»lãîzßôhÉ‚9åÉIåû·²íöÖï–~}dã£BÁk‡Ÿzå™çaòd€Ànc9È‹Ê­Îo§»L`Kl¾ÒŠŠC…já YäAN··Ì­³™lA\"`\rHZ‡Ñ`êgÏ˜2¸Ê¤Ú6‰ü:STŸ(V–Ò“ÃzââÆŒ+ÁH?€Cc=[ÖÚø”ø²Vïctz¶3Ë™IÏ×áz¶5häß>2¤¿Œtf?­Ÿêb‚É]6¬,é:å¢«\\»\\IWÊ%º¨Ce\"‡Ê(•¿QåbŒÕ;Å~î+ì{a\"?ÒJOœM¸¹4Õ»=WÏ½..Á(_”ŸMLuN¨õdÚØ«ãêÅÕ½—-Õ˜ô1\Z;6vkÜ®È1‹Æ¢Z4&?1ëP‚Š°øÕ€\"ÄıûŒ0J®ÁË%vgÙÃ¹I½zÂ÷\"¶ˆ³‹ÆiÛÒyåá\r¿©é\\¿¬ö¦Jé`÷?nm|à—İóè½[~2óæ+º¡ÔÚÊşg,»\rZjPîzï¢¨ËõŞŞˆŒö¦/ù|—±Ñ‡K¸¨âuÔ¨ŞtQŠhéÍ´;cuÕ‡K¸¨â˜©˜]AE4*¢E$£¦æŞëH}¸”‹½Û.åuúalœ§é·ëwé“úÃúcúSz-èƒúUúVıÎtĞq}JoêqÁ§© ×‡R‡Ó9Ô	WĞH\ZÑ ÑF%wŠ»Ä¤xX<.j‹§D\nbH<Šo¢ÈlsÆjb/«‰œÕD«‚È•¦¨*M‘]×cl†Èw	c;qªîû·¦’SÙ*®ÜGÇ$ÕšÌ]ïş¿h4àüä{µJù’B©S@–ÚÚÙÙ)şõÈ‘obìÛwpš\\‹üRÎo]}.·ô^\0ûŞøô’şÀˆod3r=g÷×I|¸ø=±òáÊ}±²¡Š?xˆâç*÷ÉQ”qV)(í”Iâ4§$!(­’Z¥”$bë\rTP„Ë‰\'Z;†SìGû$Ä×}\";CBğaKÛ:º´¡£Œ\")õ$3=x0Uì?xlôØ–Uú;g¬ö€A™÷é9m\'¿n¦HuMíˆ°’Ÿôİ\nYBYîws ·eàÙ=ÈÀı¸/ÏÎøæI ÷gà¾Ü”qaÎÀ-¸5ÏÊ0OäÜÛ2ğ¬…”©œì¸-7§o¤èÔ«)¨Rşœ˜b4—EÅâ	ı‡îOBÒŸ¤3!êÖ…\"z?¤„HN@ãd…–h\">¯l8\Z%Û£»¢4êvû,Ñí6bù:İÃ×è|Ç–¯ÓŒEllçÛÍØÄFùjİÄWë|¯Ö¦^¦è[³w‘Æ=İ9ÇéÊìH˜ë<Ñí~âç%ù{Kòó’üìê•äç*ËÏ÷Š0´GQ¢~+Ó¯îû±¨}@K#j!UuFÒö—£.%G°m4\Z„*˜†Jƒe§Ì\0~…dõnû’qZS~§Úü§®2öç†xó¢]dãğ„şÆ—dÊJOÎÌüÒ{ïZİ2îÓÕk€-PêMaç*67ÿ–ªPM¬˜Ãdó»Ù©*TuEø£\"1a\r>Ô¶Dct¢ºİ·Ü¨ÕšD;–kC®„ä«óĞÉİ(\n˜/2Uñ½%-İğ‹à•/İóÈÈÜQ«~ŞY¿àü«Gˆ±Û¦Î»¸şàãûºóéİËç¸íî_Ğkïüi÷Ûªµö)Îkù”¯*²$A“EwË]òÇÂgY§„3Y\Z‘İ¾ÉE¾İ$“Ûå£ã”Gé‡ËÖ\ZÑ¸Ì³Ådég²Y2f¾¥×dÔYò<ÜBópkÍÈí4#·ÓŒ½vš‘Ë;c.§à\'¾l¬ÜNÃ÷o3r;ÍÈì8¾Eiä¦ ‘àŸqª‡ÉW³Ù<§<t•g—\'é9ì=-uºTŞs©ÜèRí7—Ğg:m¶ô%Ø4Õß3Õl¦š˜–Ç‡öï›~Sİò™ÌãaÅx;ÍÍ·~qå;3¸$e\\ÕÉ>ûÍ¥±é\r:ƒÖ hä˜Mcñ«Áf»‚«ÙŠ!Î–z³Á…Ì%HvÎR’º6èe§ôù@/m¹oıûM÷ÖÊ†Î‚e×şJŒıâñêUSJ®è^K¯¿dÅè[_é~•Ô¸Ôçb>r‹¼$ÅøeŸÓÃ\ZœÅÎŞø\nˆI †yy„]kğš&h&êê4\rºEš%:]™<Â>Â5ÔS-×Øk\\Õ¹Ò\\ı¹ÑŞèšáY!­Ğ/WØW¸x.%N½F2_(Ì’f.4-Z¤.yÜQkC	éè·Ötdìx:z×šr#ÏÏ×•~Înìº ²®Ôò}ÍôQ»M˜¾DxJ½DxŠï ¤/\ZräpÂ’-Œ†±VÖ†´‚¶÷8‹m†CIÉOqÙVâ•É,*oYÒí£q€ÉÂv3ø7¿€ŸZ@€3ß£J/.¼Ù) L`ÑL*RP7âû~(À”ŞZ…!>¶•ş}€LN’WÇÏÄûó—zk‘m²kIú™ÒLıÅÒÅz‘46ğ[Áşv£MÙ	5Šnå‡´Ë•¯Ñòİ©Ì¥ä¸nøı»Äõ“¿Şx¬çä-×wìÙ¼¥ƒf‘ü›7ô|Øıê_¯!9ÄüÊË¯¼öû—_Â&méY\"†‘«ìCşÄ¥Ğ:“\\$Ÿ\'×ÈbU(¢ÁĞ@S$»ÄY’=&{Uh{H7Â=Â?Ù=Ùß »Ğ4×=×¿T·Ì´D^á^æ?zİñ¾ç}ßë9\'\'r‡R!WDŒËqçPq„<^œ,Ï‘?1ş5»G6Ú,‚+`ŠÖ°ÁâíÇPŞ†òö2T Î›wÔ@dCÂĞdh5ˆ!ÎV¡DúÛùŸ&ŒŒ¹ô»r‰>óÚ¶òK6K¬ü÷:’UJKû6ÌU‘”Ş9OxëìQ€Ã„l\'»H’œ\"bT‘iD ÌÔãÊ‘påH¸r$œ£	ß-\'L’ñ3 FÊ×“„v£®b§AŞà„rÉÜşTô\"ß8}¢o£B9ÜA»ñ$Fés¤…ÕşN°Ø,®ÿ¯ën£:óï½]íŸ·»Ú?ZKZI¶Y–ËØ®­Ä8	x	¡	¸$î%Ø4s@8—4	¸%™†h\n¦C˜¶&!S®I°˜„@¦ZÊdğÜ…tàğ™4eğs“2w	¶ï½·Zy¨m­>Y+iµû½ïÏïû}ƒ#Â\n19BjŒ»¢âÅXIuÅ÷aÑ*›N‘ÈåM. 0»_\\ôä¿><>pï\'¬}¼ÉÜ·uÛo÷oÙ|xº?tâÑÕ«÷Ìì}aúÒO¿³hê÷â©7ß}ÿİ?ÿ…hÍŠé~n‚hRğu¦5ƒ\n*¢†øbÔ…¶«BgU§Óå<Qó\\M¨)%;k–E–%»#İÉÛ#·\'×Õì¨9-¼oş¦~7æ£ŒZ¬ê@ÔëÑ·Õµ¨} şgüÓèßœsÉ¯yÍN¤1,Ø)¨J,Üæh˜S¸›…º\0-¸èĞĞ]}¾CçkÔUÃôEgP—^ºtuéêÒY Å@¦(½‚Ô¬2;ÄvgTE}‹é+ÍåãEÜX™ıZMå²\n[è³Ìü10Kd`–õ˜Ó:^]s9ŒUF±–`]XòuığÔò6S^	š’`ê¡ÌUh–‹xËğÔœªJcÃÓ·œ˜şï\rÿñ£·6>?5ïåm›÷ÜzïÓıHZ¼6Añ¹éï{ìâµÜ¿:õ‡?>óG\Z×<\0z›h‡	Ùwqs\Z<¬ãKüµ|7¿ßÂ²)É’¬ELYœf\0–OHPÊ¤#0‚2—Ol	íŒñT2¸ÿuÍ@à 0?\'fõ`j.y0µüÍo‚yÎ\Z}6Ñ&9z;ü9Àxgw˜õ ôm‚}É£4¨$±¤2Æ-Ä’Á8ÒƒEâózşêşÎ[o»zéÒÅ·Ù5|î7W,ÚŸ_Ş¹nÓÔiz;gÎs‡É9lákX6^ó+¹‚C‰[íLí%È¹€\\³¹. gò¼€œ®‘C=|ÆÎ,’o—e{2wf†äÇä]Ù}‘ß6şÓäX\"kéj<%Ñ-­Ç{¥^¹÷*½j¯6 \rÈx@P´‘ÜH^§d»ìü…ÙµxrGîÂ–º-ÙÙ§ğ¯Ô\'O7ş¢åE|@}!ÿba8÷V.Zğ“¹Œ/ÔùBÖ\ni»¼ê|!ëÕc3»VMÇZ)_¯b>‘ÎUñJSu‚Bí§‘•eNg•ó=ç ó#èN­³ÁùÄákÇäœ jTE4œUì\\›înĞÎ\ZC iSòÉa;Zb•<#l– lê­¬FÕ©*‘÷=\Z:çÃ?çÜÕE>Õ¤Ô&`\"ë¸‘x©•¾¼•câŞ–š	‡MxrÒô•Nš¾Êaä‡•Õè³×ÈçD·Î’ÿ†‰Ái ï7šêo€\rô£éÛ4øìïßÈ5x³TˆpÜ¿èÃ=\r	v,óò\r¥u­\'[QgëVÔJË“Y÷²C¶|ÒŞe ^™\nô©p”dºl£=é¬Î¥Î¾ˆ.ÛÜ‹4…$ë)CúŞ	×ìÑ3Ÿ\0HóRœo•ë†Ä»ÜIœQœÜ´Ò§\n‹iõ0RNRú¹ïœÜÈxB…¡¼Rzç1…ÊD!ë»ù+jêBvcÎ4,#bpBFK\'\\“0tÙÔØäá¼p]dê4Uš“°—±Pä“ Ö¨¦YA‘²Ô½\rKFŠ;wîÛM‘»¾Ù@/9V+¹\\uÏw“â$UÕ,ş«š%#™”ˆä‘0*#Vò¹|ZPZØş5æ*ù¥Í¬ìĞùŠşÈCÛÔ?õö3«®¹²áçİ?<±Ö<¤nî\ZˆF›“»Şxº§ÿí¾÷¼*u÷¦;—]U¯o½~çÊåÛµÅÜ¿©÷¦öºTugÛ®ê]ûìw_&Ö*;ó?¨!ôˆÁ{B•ƒ)shª³²…€Œi§h®$SËa‡T595ä¢IÔÈ)º‘¨}CøVnYËğM…3¢t|İ:ñâñ	‘$}xN<$ÇE55•»›.°u R†9c5yHMY(÷;]d:M\ZlI(ç\'^&C ^øGºÉr¹à,uÖ“´{:k³­Íx\'Ğ¬<ÌEY÷§Ğñ2­®<IÄa†±Ì|7Ø°™ÖÖær\"PóH´¼i¶³9M6Õd$¾³ä_wí\Z5¿yÖ¸úÎçÑí{ 88ı³=SOİØ˜ ~æÇÄÏLğ9rØG½ŠQ‚ªb%”DiëÊ®cÙ¥bf¥HT…‘¨BÜ´IÎ?h‹ÎA¢˜,\Z@¢õñ…{ˆ1Ô!f±Òb…ôc>:VÁbv¹ÈX®Å¤£xƒFOùLŒÁØÊU‘(…\Z_$ĞÏ%%f<å’yJ¡úJ¡z‘Ã0­[U:>.-Ë2/ûƒ\\	Ê%+Ì\nUô£Y¼ 3¬Afe!y¥3è-×~¾*xA½ğK:Ês„ˆ™IğFXÓ5$ˆ’ …$N0x5	4ÉL\n+44ì$±U‹Zp&ƒ«8%*05è¤AÜ,/&O” Í$«=ÊˆìDæ:‡Ş¿í…U†2¢˜÷¬^ıØâ‘_¬øşª›Ñ“SÃ?ûÖòÕİ?Œ:öŸ uC¢İî±Lñ\0A|3AE+P~0—f™‡È˜Ë*Œ…$€%\nòw–®¾Ps1Ègğ£BdÌL½¶fvÈQ+U’èW5LîaùSŒW®™W²ayœ©/(ÙGº?*4•@šltu>(È9Üà`9î=hôÏòz¸õKıò6p¼m—¶É÷áİp7ú	÷ˆø°ô¨ük°Wş9~<O€£âaüxŞÇŸƒOñ%p7’¯ƒã Š ‡Ûñ*àb9äZÑRˆ¨q©ÜD\"Sæ»@ƒ]ªî:›)˜¿£ç‚5õ1èšœö_\n©\n¥¶~T$ç†ÜNOAs…\"ßEIª—±-Ëp‘ÈØ†&á´$!Ë€¡fªÉu]y‡Œä1˜uC;B(D$WN#f”ÏşªódÂ™ê›êKÄ\'ÏöyT›JÛ•Ù1·—va”iµ³?AŠ:e¥³kd¥G(+=Òáï¦_?[_/~şêô=|nj×]nŞŠfZ)\0:J´Ò\n}ş\ZÑ¬ŠFR4çõ@AÚSBµ<¯Àğ+L¡JíUô“›Sjªh°á³¢£€*İuŒÊpD}v+°‡4»õ\nşáÍYEŞá	~í•4^|5°-¿FW+{Xivqvì#bÀìUşff&°Çù@·Òºe¦ıä*C¾Y¸¼ëÇ²lEö‡X4ofÎÑ#²eÌåôˆª±Àö<I )w1­zOœ	{ÅĞ“n3•L—=Æ&Jò!(èD[5•\rbRMˆxÌ›¸\\Vñü°Igû2Îœ2N³ù\0¬G„ñºƒñST·a?£Ì[ÍÇL~9†ùLøÖ	ŸÈ÷…+×Î+©ê<4¾pÖfK¼ Ê!);Vˆ¼ ÈJX²ál1%%•êpÔ‹\rR1\\ÄEÒâğ2n¹àŠ7J]ÊµúróëVı&ënñé.k»p¿¸EzU8¦±ş.\\’ŠY\0-.èy«Ù¾´[÷I?‘örO«ûáKè%eŸ:\nÇÂâÏÈçùóú_­ÂE9¥°6L•m\rÁkYğÂc†ò–ÍJ‡uŞ¦$Jõ¢^¦ĞUXä4¨Ökc3gÜvêÆ4b\Z>¥A;\"`ÅÌá¢y3î5Í!óQ›˜\'¶‚^ïÂÌê>–ô6/4{­XÆYúë…Îä/éÚ\\(D|™’1–UÅ†i’¢k8,’\\ï®Çz8ıS”Ò¢iYÅh‡Bb˜\\çz-lkZX2u½ˆ%›¼„*– (Z¼¤›jXc‡g‘€Î¢¦ÍÒiO5¶¿44H°ìĞ8¢Íû]œ^…áü FxİâÊ«L¸Á|ĞD&}¤!¸•‡9büöÂ/#_®gI…sã…¾¾8I\nÈ5‚}ñsËçO!°¼*T‡7¥Îë¼1hçŞ­Ü6ŞÃÆz£2½uªí®qÓÒj\Z½63AÊ	²şÇG@‹¶ÆÊY3P×¡R÷ìifü°ØÙÿçuwj8f&‹iïIkî¸8Úè:~„¤\\ä‰§El¡ó\n¸ó>¾ò‰•—Ç‚/7g&†qšO6¼ÖŸN\Z9}Äê\0äFlÀáí—]ãcšE¯7‰\rO˜›íü£ê˜wˆÄ¨‹¨ãòìš>~ì@\'ßvàÕg\\uäàôÈñóÿBÜÅ/ÏšF÷Lí}÷ZéC44úÕ{4ª7½šû/â9è-†èñ\n[¨ÂÁ÷Q¾ ó~››5k>Ãş³š/¨•ı+Å_Ğ|›ş[U<\0\rEƒ1P5¶uNáRn	Šq-=­¸jZg¹¾î4%â§AïôÄÌ]rXOAC›S»G?ˆ9Wsu¤§-%ƒnDU¶¢ZÜÊ+y5¯-TjÂÏ˜JÁ*DVD×Xk\"kªú­şHÕva«¶İ¼ß¾¿ê!íQsµ\'òˆ½¿¤¼f7ÙŸá¿Ú×¦Œÿ³gR5V$/½¥ll¢%•äõeú.ÓÊ—ğ\02«l)Hh¢ëªAV:‰K;©·°Mè*YÊõ\n¶Gh#˜\"Ğ7\0)#…šSo¤PjuêäŒ¸öºÙU:-×Bß³Ş°5—Ña\\—Äô)vÎÜ´Ú¢®R¹RgTD.ÀÒáfœ!Ô9’L‘eMNá¿HÂ:X$n\\8ëgû6N&âÆ$“Hd2é­o\ZÛH´c/D–o¸<-•,Ø%K$²fÃd=Äg×Ãq¯Kzæ<]lkŠşr°g>>ÒŞ3íaâ	G«:Ìrù\Zš\0)‘¥0WåÉü:¹ÇÅƒ®cÌÎ&‹—¼zOŞc¶ÓV>?v\"æ™DşÚ‹—¬ˆ™¹2ııßTÌÔ?™¼&Û2ÔSš¾ë€QÈ&ïÖ«ùÂÔ3÷îÚŠî¾ô§ƒK×t\0ş3‚ä\nendstream\nendobj\n115 0 obj\n<</Type /FontDescriptor\n/FontName /AAAAAA+ArialMT\n/Flags 4\n/Ascent 905.27344\n/Descent 211.91406\n/StemV 45.898438\n/CapHeight 716.30859\n/ItalicAngle 0\n/FontBBox [-664.55078 -324.70703 2000 1039.55078]\n/FontFile2 114 0 R>>\nendobj\n116 0 obj\n<</Type /Font\n/FontDescriptor 115 0 R\n/BaseFont /AAAAAA+ArialMT\n/Subtype /CIDFontType2\n/CIDToGIDMap /Identity\n/CIDSystemInfo <</Registry (Adobe)\n/Ordering (Identity)\n/Supplement 0>>\n/W [0 [750 0 0 277.83203] 19 26 556.15234 36 37 666.99219 38 [722.16797 0 666.99219 610.83984 0 722.16797 277.83203 0 0 556.15234 833.00781 0 777.83203 666.99219 0 722.16797 666.99219 0 0 666.99219] 68 [556.15234 0 500 556.15234 556.15234 277.83203 556.15234 556.15234 222.16797 0 0 222.16797 833.00781] 81 84 556.15234 85 [333.00781 500 277.83203 556.15234 500 722.16797 0 500]]\n/DW 0>>\nendobj\n117 0 obj\n<</Filter /FlateDecode\n/Length 332>> stream\nxœ]RMoƒ0½ó+rìm%„Ô1Uâ°õĞÄt‘FˆBzàß/Ø´“	Ğ{ö{¶qâºyiŒö,şp£lÁ³^å`\ZoN»ÀU›(åLiéW„o9t6Šƒ¸\'Ccú1*KÆâÏ¼›Ùæ¨Æ<Eñ»Sà´¹²Í¹nnoÖşÀ\0Æ³$ª*¦ N¯}ë`1Ê¶\nqíçmĞüe|ÍGœR7rT0ÙN‚ëÌ¢2	§bå)œ*£şÅR]zùİ9ÌÎBv’ğ¤ZPJ([Ñ‘ĞQv@”ˆ„@T¤ˆò\ZÑî€5W÷Ã½Ö£µt‡ié|j99ñ?‚9¥pª)r\"Ÿ‰¤bbOäéŞ2’5õÊ‰¤qÄ‰ÈœH*”sš£¸ëpœŒHòÌiş¢^§¢9–Ÿº,ÿ±1ys.,oniÙ6ğ¸Dv´‹jy~A™«0\nendstream\nendobj\n6 0 obj\n<</Type /Font\n/Subtype /Type0\n/BaseFont /AAAAAA+ArialMT\n/Encoding /Identity-H\n/DescendantFonts [116 0 R]\n/ToUnicode 117 0 R>>\nendobj\nxref\n0 118\n0000000000 65535 f \n0000000015 00000 n \n0000016429 00000 n \n0000000155 00000 n \n0000000192 00000 n \n0000000268 00000 n \n0000053525 00000 n \n0000000345 00000 n \n0000016664 00000 n \n0000029008 00000 n \n0000026362 00000 n \n0000026275 00000 n \n0000026019 00000 n \n0000017012 00000 n \n0000016925 00000 n \n0000016838 00000 n \n0000016719 00000 n \n0000017398 00000 n \n0000017311 00000 n \n0000017224 00000 n \n0000017105 00000 n \n0000017784 00000 n \n0000017697 00000 n \n0000017610 00000 n \n0000017491 00000 n \n0000018170 00000 n \n0000018083 00000 n \n0000017996 00000 n \n0000017877 00000 n \n0000018556 00000 n \n0000018469 00000 n \n0000018382 00000 n \n0000018263 00000 n \n0000018942 00000 n \n0000018855 00000 n \n0000018768 00000 n \n0000018649 00000 n \n0000019328 00000 n \n0000019241 00000 n \n0000019154 00000 n \n0000019035 00000 n \n0000019714 00000 n \n0000019627 00000 n \n0000019540 00000 n \n0000019421 00000 n \n0000020100 00000 n \n0000020013 00000 n \n0000019926 00000 n \n0000019807 00000 n \n0000020486 00000 n \n0000020399 00000 n \n0000020312 00000 n \n0000020193 00000 n \n0000020873 00000 n \n0000020786 00000 n \n0000020699 00000 n \n0000020579 00000 n \n0000021260 00000 n \n0000021173 00000 n \n0000021086 00000 n \n0000020966 00000 n \n0000021647 00000 n \n0000021560 00000 n \n0000021473 00000 n \n0000021353 00000 n \n0000022034 00000 n \n0000021947 00000 n \n0000021860 00000 n \n0000021740 00000 n \n0000022421 00000 n \n0000022334 00000 n \n0000022247 00000 n \n0000022127 00000 n \n0000022808 00000 n \n0000022721 00000 n \n0000022634 00000 n \n0000022514 00000 n \n0000023195 00000 n \n0000023108 00000 n \n0000023021 00000 n \n0000022901 00000 n \n0000023582 00000 n \n0000023495 00000 n \n0000023408 00000 n \n0000023288 00000 n \n0000023969 00000 n \n0000023882 00000 n \n0000023795 00000 n \n0000023675 00000 n \n0000024356 00000 n \n0000024269 00000 n \n0000024182 00000 n \n0000024062 00000 n \n0000024743 00000 n \n0000024656 00000 n \n0000024569 00000 n \n0000024449 00000 n \n0000025132 00000 n \n0000025045 00000 n \n0000024957 00000 n \n0000024836 00000 n \n0000025527 00000 n \n0000025437 00000 n \n0000025347 00000 n \n0000025225 00000 n \n0000025924 00000 n \n0000025834 00000 n \n0000025744 00000 n \n0000025622 00000 n \n0000026467 00000 n \n0000026657 00000 n \n0000026714 00000 n \n0000028971 00000 n \n0000029116 00000 n \n0000029230 00000 n \n0000052297 00000 n \n0000052534 00000 n \n0000053121 00000 n \ntrailer\n<</Size 118\n/Root 113 0 R\n/Info 1 0 R>>\nstartxref\n53666\n%%EOF',1);
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
(1,'SuperUser');
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
  `document_pdf` longblob NOT NULL,
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
  `request_pdf` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_request`
--

LOCK TABLES `capture_request` WRITE;
/*!40000 ALTER TABLE `capture_request` DISABLE KEYS */;
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
(1,'tristan','123456789',1),
(2,'admin','123456789',1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capture_user_proceedings`
--

LOCK TABLES `capture_user_proceedings` WRITE;
/*!40000 ALTER TABLE `capture_user_proceedings` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2022-05-07 00:22:27.045591','1','Status object (1)',1,'[{\"added\": {}}]',10,1),
(2,'2022-05-07 00:22:29.919860','2','Status object (2)',1,'[{\"added\": {}}]',10,1),
(3,'2022-05-07 00:26:12.252229','1','Privilege object (1)',1,'[{\"added\": {}}]',21,1),
(4,'2022-05-07 00:26:29.488807','1','User object (1)',1,'[{\"added\": {}}]',16,1),
(5,'2022-05-07 02:27:49.992201','1','Identification_Type object (1)',1,'[{\"added\": {}}]',11,1),
(6,'2022-05-07 02:27:52.159892','2','Identification_Type object (2)',1,'[{\"added\": {}}]',11,1),
(7,'2022-05-07 02:27:54.540993','3','Identification_Type object (3)',1,'[{\"added\": {}}]',11,1),
(8,'2022-05-07 02:55:05.825609','2','admin',1,'[{\"added\": {}}]',16,1),
(9,'2022-05-07 03:09:58.354454','1','No Aplica',1,'[{\"added\": {}}]',18,1),
(10,'2022-05-07 03:10:02.584995','2','SÃ­ Aplica',1,'[{\"added\": {}}]',18,1);
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
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(8,'capture','constitutive_act'),
(12,'capture','identification'),
(11,'capture','identification_type'),
(9,'capture','location'),
(18,'capture','not_applicable'),
(15,'capture','ownership_type'),
(17,'capture','plane'),
(20,'capture','power_letter'),
(21,'capture','privilege'),
(7,'capture','proceedings'),
(19,'capture','property_accreditation'),
(13,'capture','request'),
(10,'capture','status'),
(16,'capture','user'),
(14,'capture','user_proceedings'),
(5,'contenttypes','contenttype'),
(6,'sessions','session');
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
(1,'contenttypes','0001_initial','2022-05-06 15:17:52.024997'),
(2,'auth','0001_initial','2022-05-06 15:18:01.338028'),
(3,'admin','0001_initial','2022-05-06 15:18:03.190461'),
(4,'admin','0002_logentry_remove_auto_add','2022-05-06 15:18:03.227533'),
(5,'admin','0003_logentry_add_action_flag_choices','2022-05-06 15:18:03.273144'),
(6,'contenttypes','0002_remove_content_type_name','2022-05-06 15:18:04.316288'),
(7,'auth','0002_alter_permission_name_max_length','2022-05-06 15:18:04.992595'),
(8,'auth','0003_alter_user_email_max_length','2022-05-06 15:18:05.426075'),
(9,'auth','0004_alter_user_username_opts','2022-05-06 15:18:05.464139'),
(10,'auth','0005_alter_user_last_login_null','2022-05-06 15:18:06.185018'),
(11,'auth','0006_require_contenttypes_0002','2022-05-06 15:18:06.211600'),
(12,'auth','0007_alter_validators_add_error_messages','2022-05-06 15:18:06.285549'),
(13,'auth','0008_alter_user_username_max_length','2022-05-06 15:18:06.688762'),
(14,'auth','0009_alter_user_last_name_max_length','2022-05-06 15:18:07.192344'),
(15,'auth','0010_alter_group_name_max_length','2022-05-06 15:18:07.583501'),
(16,'auth','0011_update_proxy_permissions','2022-05-06 15:18:07.624348'),
(17,'auth','0012_alter_user_first_name_max_length','2022-05-06 15:18:07.986308'),
(18,'sessions','0001_initial','2022-05-06 15:18:08.843808'),
(19,'capture','0001_initial','2022-05-06 15:19:10.033245'),
(20,'capture','0002_alter_constitutive_act_act_pdf_alter_plane_plane_pdf_and_more','2022-05-06 15:20:52.425882'),
(21,'capture','0003_alter_constitutive_act_act_pdf_alter_plane_plane_pdf_and_more','2022-05-07 03:06:39.936521');
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
('yt4de5x65zjxnra8lswtnzp02a354yun','.eJxVjMEOwiAQRP-FsyGULl3q0Xu_gSxdkKqBpLQn479Lkx70OG_ezFs42rfk9hpWt7C4ik5cfpmn-RnyUfCD8r3IueRtXbw8FHm2VU6Fw-t2un8HiWpqazJs7UBDH8EgjKA0RjVYMKNm61HzTGhUVJ5awC70AGQbBOwtIhvx-QLCeDck:1nn8GR:IrJZiGkx6o4KApld6wKQpA1Vo_4N3YM7PhEj8epG4xw','2022-05-21 00:25:39.953805');
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

-- Dump completed on 2022-05-06 22:18:46
