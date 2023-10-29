-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: diary
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anniversaries`
--

DROP TABLE IF EXISTS `anniversaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anniversaries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `year` int DEFAULT NULL,
  `class` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `program_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contastant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `song_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `participant` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anniversaries`
--

LOCK TABLES `anniversaries` WRITE;
/*!40000 ALTER TABLE `anniversaries` DISABLE KEYS */;
INSERT INTO `anniversaries` VALUES (7,2022,'lp','group','Deva nandha & party','cham cham bhagi','Cham Cham - Baaghi (Monali Thakur).mp3','2022-10-23 06:20:53','2023-09-21 09:52:14',1,NULL),(8,2022,'lp','solo','Deva nandha','Nandha lala','nandha_lala.mp3','2022-10-23 06:21:44','2022-10-23 06:21:44',NULL,NULL),(9,2022,'lp','folk','Niveditha','ezhimala kaduchutty','ezhimala_folk.mp3','2022-10-23 06:23:06','2022-10-23 06:23:06',NULL,NULL),(10,2022,'lp','solo','Deva dutt','Pala palli','pala_palli.mp3','2022-10-23 06:23:57','2022-10-23 06:23:57',NULL,NULL),(11,2022,'v','group','Aswin & party','PalaPalli','pala_palli.mp3','2022-10-23 06:26:05','2022-10-24 21:17:58',NULL,NULL),(12,2022,'v','chain','Abhirami & Sanooja','akkare ninnoru','abhirami & sanooja.mp3','2022-10-23 06:27:14','2022-11-01 11:48:24',NULL,NULL),(13,2022,'v','solo','Abhirami','Nagumo','nagumo.mp3','2022-10-23 06:28:14','2022-10-23 06:28:14',NULL,NULL),(15,2022,'vi','folk','Gopika Suresh','folk dance','gopika_folk_dance.mp3','2022-10-23 06:31:20','2022-10-26 10:20:49',NULL,NULL),(16,2022,'vi','solo','Anakha SA','Nacha Nacha','6Anakha_nacho.mp3','2022-10-23 06:32:06','2022-10-30 20:12:22',NULL,NULL),(17,2022,'vi','group','Anakha & party','Mala dum Enemy movie','mala_dum.mp3','2022-10-23 06:33:12','2022-10-23 06:33:12',NULL,NULL),(18,2022,'vi','group','Athira & party','adi adi adipoli','adipoli.mp3','2022-10-23 06:34:14','2022-10-23 06:34:14',NULL,NULL),(19,2022,'vi','group','Sidarth & party','fusion strts with vel muruka','6Boys.mp3','2022-10-23 06:35:11','2022-10-30 21:04:10',NULL,NULL),(21,2022,'vii','group','Sreelekshmi & party','Sivadam Siva namam','sivadam.mp3','2022-10-23 06:37:06','2022-10-23 06:37:06',NULL,NULL),(23,2022,'viii','group','Jeena & party','Ada Karupp kanna kanchana','8_girls_karuppu.mp3','2022-10-23 06:39:14','2022-11-11 05:17:37',NULL,NULL),(24,2022,'viii','group','Karthika & party','Starts from vijay','8girls_new_chain.mp3','2022-10-23 06:40:12','2022-11-11 05:18:03',NULL,NULL),(25,2022,'viii','folk','Gouri SV','Kunjinu vayundo','GOURI Kunjinu vayundo _.mp3','2022-10-23 06:40:55','2022-11-01 11:52:32',NULL,NULL),(26,2022,'viii','solo','Gouri SV','Arivin nilave','GOURI- Arivin Nilaave.mp3','2022-10-23 06:42:05','2022-11-01 11:53:15',NULL,NULL),(28,2022,'viii','group','Mynak & party','Pushpa movie dialogue','8boys.mp3','2022-10-23 06:44:28','2022-11-07 10:45:09',NULL,NULL),(29,2022,'ix','solo','Sree lekshmi','Bharatha dance','BharathadanceSreele.mp3','2022-10-23 06:45:44','2022-11-06 11:12:06',NULL,NULL),(30,2022,'ix','folk','Nandhana','folk dance','nandhana_folk.mp3','2022-10-23 06:46:19','2022-11-11 05:19:05',NULL,NULL),(31,2022,'ix','solo','Kavya','Chandra chooda','kavya_chandra_chooda.mp3','2022-10-23 06:46:57','2022-10-30 20:29:04',NULL,NULL),(32,2022,'ix','solo','Kavya','Hara Hara Sankara','hara.mp3','2022-10-23 06:47:38','2022-10-23 06:47:38',NULL,NULL),(33,2022,'ix','chain','Kavya & party','Pathale pathale','kavya_chain.mp3','2022-10-23 06:48:53','2022-10-29 11:15:29',NULL,NULL),(34,2022,'ix','chain','Arun Raj & party','jorthale','arun_raj_jorthale.mp3','2022-10-23 06:50:00','2022-10-26 10:18:41',NULL,NULL),(35,2022,'x','chain','Anakha & party','Apple pennano, kacha path','anakha10.mp3','2022-10-23 06:51:53','2022-10-30 20:43:50',NULL,NULL),(36,2022,'x','chain','Jyothika & party','chinnatho chinnatho','10girlschainSaniya.mp3','2022-10-23 23:55:41','2022-11-04 10:43:28',NULL,NULL),(38,2022,'x','chain','Sanu & party','Rathi pushpam','Dance 10 main.mp3','2022-10-23 23:57:31','2022-11-12 02:25:05',NULL,NULL),(39,2022,'+1','classical','Devika Suresh & party','swala jathy','swalla.mp3','2022-10-23 23:58:15','2023-09-21 09:56:23',2,NULL),(40,2022,'+1','solo','Abhirami S chandran','pranavu pranavakaram','pranavu.mp3','2022-10-24 00:00:16','2022-10-25 10:50:26',NULL,NULL),(42,2022,'+1','karoke','Anjima MJ & deepika','Enna solla','anjima_ennasolla_karokke.mp3','2022-10-24 01:37:47','2022-11-09 10:41:41',NULL,NULL),(43,2022,'+1','karoke','Abhirami S chandran','Olichirikkan','13 ABHIRAMI OLICHIRIKKAN.mp3','2022-10-24 01:38:19','2022-11-01 11:49:16',NULL,NULL),(44,2022,'+2','chain','Arya & party','mal habibi, karimekha kettu','adithya1.mp3','2022-10-24 01:39:40','2022-11-07 10:47:21',NULL,NULL),(45,2022,'+2','chain','Adithya & party','starts with salim kumar dialo','adithya2.mp3','2022-10-24 01:40:32','2022-11-07 10:49:11',NULL,NULL),(46,2022,'+2','chain','Reshmi $ party','Palapalli, ellulleri','reshmi_pala.mp3','2022-10-24 01:41:23','2022-10-24 01:41:23',NULL,NULL),(47,2022,'+2','chain','Abhirami & party','Ra ra rakkamma','rakkamma.mp3','2022-10-24 01:42:03','2022-10-24 01:42:03',NULL,NULL),(48,2022,'+2','classical','Adharsh & party','OPPANA','oppana.mp3','2022-10-24 01:42:53','2022-10-24 01:42:53',NULL,NULL),(49,2022,'+2','skit','Siva Surya & party','skit','skit.mp3','2022-10-24 01:43:30','2022-10-24 01:43:30',NULL,NULL),(52,2022,'+1','skit','Aparna & party','Comedy skit plus One girls','plusOne_girls_skit.mp3','2022-10-25 10:28:53','2022-10-30 20:58:07',NULL,NULL),(53,2022,'+1','drama','Abirami Chandran & party','Ekalavyan - Dance drama','ekalavya.mp3','2022-10-25 10:30:51','2022-10-25 10:30:51',NULL,NULL),(54,2022,'vii','chain','Vaishnavi & party','Samy samy','samy.mp3','2022-10-25 10:46:49','2022-10-30 07:29:08',NULL,NULL),(55,2022,'+1','group','Devika Deepika Aswathy','Fusion Dance-dippam','dipam.m4a','2022-10-25 10:52:16','2022-11-04 10:44:53',NULL,NULL),(56,2022,'+1','group','Devika Suresh & party','Pooja - Shwedambare','pooja.mp3','2022-10-26 10:25:56','2022-10-26 10:25:56',NULL,NULL),(60,2022,'lp','group','Arish & party','muqa bula -kathalan','mukkala_hindi.mp3','2022-10-29 21:14:09','2022-11-06 07:34:35',NULL,NULL),(61,2022,'special','duet','Devika & Gopika Suresh','Kannodu kanpath','kannodu_kanpath.mp3','2022-10-30 20:15:26','2022-10-30 20:15:26',NULL,NULL),(62,2022,'special','duet','Kavya & Nivedhya R Kumar','mukunda - dasavatharam','mukunda.mp3','2022-10-30 20:20:07','2022-10-30 20:20:07',NULL,NULL),(63,2022,'x','solo','Anakha B krishna','nag dol','anakha_nag_dol.mp3','2022-10-30 20:45:18','2023-09-21 09:56:00',3,NULL),(64,2022,'special','group','Prathibha final','final program','prathibha dance.mp3','2022-10-30 20:47:46','2022-11-13 07:49:09',NULL,NULL),(65,2022,'special','duet','Leksmi & Abhirami(+2)','Fusion Dance','WhatsApp Audio 2022-10-31 at 6.53.35 AM.mp3','2022-10-30 20:48:56','2022-10-30 20:48:56',NULL,NULL),(66,2022,'+1','mime','Adharsh & party','mime music','plusOne_mime.mp3','2022-10-30 20:59:09','2022-10-30 20:59:09',NULL,NULL),(67,2022,'+1','classical','Abhirami S chandran','Thodayam','BB Thodayam.mp3','2022-10-31 10:55:24','2023-09-21 09:56:35',4,NULL),(68,2022,'+1','classical','Abhirami S chandran','Aigiri nandhini','abhirami_aigiri_nandini.mp3','2022-10-31 10:56:34','2022-10-31 10:56:34',NULL,NULL),(69,2022,'+1','classical','Abhirami S chandran','Bharathanatyam madhava','Bharathanatyam.mp3','2022-11-01 11:50:25','2022-11-04 10:52:15',NULL,NULL),(70,2022,'+1','karoke','Abhirami S chandran','kiliye kiliye','kiliye kiliye karokke.mp3','2022-11-01 11:51:25','2022-11-06 11:23:27',NULL,NULL),(71,2022,'viii','karoke','Gouri SV','mudhal nee mudivum','GOURI Mudhal Nee Mudivum Nee _Karaoke.mp3','2022-11-01 11:54:06','2022-11-01 11:54:06',NULL,NULL),(72,2022,'viii','solo','Gouri SV','kanthara movie','gouri_8.mp3','2022-11-06 11:10:39','2022-11-06 11:10:39',NULL,NULL),(73,2022,'ix','solo','Sree lekshmi','moha munthiri','mohamundiri.mp3','2022-11-06 11:17:13','2022-11-06 11:17:13',NULL,NULL),(74,2022,'x','group','Gouri & party','korean dance','gouri korean.mp3','2022-11-06 11:21:28','2022-11-06 11:21:28',NULL,NULL),(75,2022,'+2','solo','Vaishnavi','Mohiniyattam - malarani kkattil','vaishnavi_plustwo.mp3','2022-11-06 11:25:18','2022-11-06 11:46:09',NULL,NULL),(76,2022,'special','group','akhil & team','Avvai shanmukhi','avvai shanmugi.mp3','2022-11-06 11:26:55','2022-11-06 11:26:55',NULL,NULL),(77,2022,'v','karoke','Abhirami & Sanooja','mehabooba','mehaboobaKarokke.mp3','2022-11-06 11:50:05','2022-11-06 11:50:05',NULL,NULL),(78,2022,'ix','solo','Nandhana','punyalan agarbathies','nandhana _punyalan.mp3','2022-11-11 05:20:10','2022-11-11 05:21:05',NULL,NULL),(79,2022,'x','group','Gouri & party','ramji rao dialogue','sanooja&gouri.mp3','2022-11-11 05:22:31','2022-11-12 11:23:11',NULL,NULL),(80,2022,'special','karoke','Neethu','vaseegara','vaseegara_karooke.mp3','2022-11-11 05:23:24','2022-11-11 05:23:24',NULL,NULL),(81,2022,'special','group','not set','rakkilippattu','rakkilippattu.mp3','2022-11-12 11:25:39','2022-11-12 11:25:39',NULL,NULL),(83,2023,'viii','group','Vaishnavi Krishna & party','à´—à´£ à´¨à´¾à´¯à´•à´¾à´¯','prathibha_annual_2023/viii/Gananayakaya _ Abhirami _ Devananda _ Mayura school of dances.mp3','2023-10-06 11:20:51','2023-10-14 06:01:51',NULL,'Vaishnavi, Sreelekshmi, Revathy'),(84,2023,'viii','group','Sreelekshmi & party','Dilbar Dilbar','prathibha_annual_2023/viii/dilbar.mp3','2023-10-06 20:19:18','2023-10-24 04:46:49',NULL,'Sreelekshmi, Vaishanavi Krishna, Revathy'),(85,2023,'lp','solo','Nandhitha','Not get','prathibha_annual_2023/lp/not_get','2023-10-08 07:09:27','2023-10-08 07:09:27',NULL,NULL),(86,2023,'lp','group','Nivedhitha s.s & party','dekho dekho','prathibha_annual_2023/lp/niveditha_lp_cut.mp3','2023-10-08 07:10:29','2023-10-25 09:47:02',NULL,'Nivedhitha, Reshma, Nanditha, Peeli,'),(87,2023,'lp','group','Abhinav RS & Party','theythaka','prathibha_annual_2023/lp/Abhinav_lp.mp3','2023-10-08 07:11:06','2023-10-25 09:47:45',NULL,'Abhinav RS, Sharon, Rithu, Adithyan SS'),(88,2023,'v','classical','Abhithajith','à´­à´°à´¤à´¨à´¾à´Ÿàµà´¯à´‚ à´†à´¨à´¨àµà´¦ à´¨àµ¼à´¤àµà´¤à´¨ à´—à´£à´ªà´¤à´¿','prathibha_annual_2023/v/Ananda nirthana.mp3','2023-10-08 07:13:59','2023-10-25 09:49:41',NULL,'Abhithajith'),(89,2023,'v','solo','Abhithajith','Semi Classical - à´•à´£àµà´£àµ‹à´Ÿàµ à´•à´¾à´£àµà´®à´¤àµ†à´²àµà´²à´¾à´‚','prathibha_annual_2023/v/abhithajith .m4a','2023-10-08 07:22:29','2023-10-24 04:57:15',NULL,'Abhithajith'),(90,2023,'v','solo','Amritha','à´­à´°à´¤à´¨à´¾à´Ÿàµà´¯à´‚ à´—à´£à´ªà´¤à´¿ à´µàµ¼à´£à´‚','prathibha_annual_2023/v/amritha classical.mp3','2023-10-08 07:23:29','2023-10-24 04:52:47',NULL,'Amritha'),(91,2023,'v','folk','Amritha','à´®àµà´¤àµà´¤à´ªàµà´ªàµ»','prathibha_annual_2023/v/amritha 5th class.mp3','2023-10-08 07:24:15','2023-10-26 21:09:22',NULL,'Amritha'),(92,2023,'v','solo','Devanandha BK','à´­à´°à´¤à´¨à´¾à´Ÿàµà´¯à´‚ à´…à´´à´•à´¾à´¨àµ‡ à´†à´¨à´¨àµà´¦ à´°à´¾à´®à´¨àµ†','prathibha_annual_2023/v/not_get','2023-10-08 08:03:26','2023-10-08 08:03:26',NULL,NULL),(93,2023,'v','folk','Devanandha B K','à´¤àµ† à´¤àµ† à´®à´¾à´¨à´¤àµà´¤à´¿àµ» à´¤à´¿à´°àµà´®àµà´±àµà´±à´¤àµà´¤àµ','prathibha_annual_2023/v/not_get','2023-10-08 08:04:34','2023-10-08 08:04:34',NULL,NULL),(94,2023,'v','group','Aruna S sajeendran & party','vel muruka','prathibha_annual_2023/v/5th girls fusion dance.mp3','2023-10-08 08:06:02','2023-10-24 04:58:34',NULL,'Aruna S sajeendran, Devanandha PR, Amritha SS, Abhithajith, Devanandha BK, Devanandha AB, Arathy BS, Keerthana'),(95,2023,'v','group','Arish & party','Not get','prathibha_annual_2023/v/arish&party.mp3','2023-10-08 08:06:34','2023-10-26 21:09:51',NULL,'Abhinav, Arish, Andrik'),(96,2023,'v','group','Arish & Abhinav','à´à´²àµà´²àµà´²àµà´²àµ‡à´°à´¿','prathibha_annual_2023/v/abhinav and arish.mp3','2023-10-08 08:08:23','2023-10-26 21:10:21',NULL,'Arish & Abhinav'),(97,2023,'v','group','Devanandha AB & party','à´—àµ‹à´•àµà´² à´ªà´¾à´² à´¬à´¾à´²à´•','prathibha_annual_2023/v/not_get','2023-10-08 08:09:45','2023-10-14 05:52:18',NULL,'Devanandha AB, Devanandha PR, Aruna S Sajeendran'),(98,2023,'vi','solo','Abhirami SS','soubhagya lekshmi','prathibha_annual_2023/vi/6th class abhirami bhagatha lekshmi.mp3','2023-10-08 08:10:56','2023-10-28 20:42:47',NULL,'Abhirami SS'),(99,2023,'vi','solo','Abhirami SS','shape of you','prathibha_annual_2023/vi/Shaape of u and RITHU Semi-classical Sithara krishnakumar Team yukta Dance.mp3','2023-10-08 08:11:18','2023-10-28 20:44:47',NULL,'Abhirami SS'),(100,2023,'vi','solo','Daya D Nair','Muquala','prathibha_annual_2023/vi/days d nair .mp3','2023-10-08 08:11:44','2023-10-24 04:49:24',NULL,'Daya D Nair'),(102,2023,'vi','group','Abhirami & party','Ra ra rakkamma','prathibha_annual_2023/vi/Abhirami Chain Song.mp3','2023-10-08 08:12:48','2023-10-28 20:45:28',NULL,'Abhirami, Anjali, Keerthi, Daya D Nair, Abhirami'),(103,2023,'vi','group','Aswin & party','kalapakkare ningal','prathibha_annual_2023/vi/aswin6.mp3','2023-10-08 08:13:10','2023-10-28 20:53:00',NULL,'Aswin B, Vishnu SS, Abhijith, Amjith, Nikhil VC, Roshan JL'),(104,2023,'vii','solo','Anagha SA','à´°à´¾à´§ à´•àµˆà´¸àµ‡ à´¨ à´œà´²àµ‡','prathibha_annual_2023/vii/7th class anagha single.mp3','2023-10-08 08:14:21','2023-10-26 21:12:15',NULL,'Anagha SA'),(105,2023,'vii','solo','Anusree SR','mazhavillin - hello','prathibha_annual_2023/vii/7th class anusree single mazha.mp3','2023-10-08 08:14:40','2023-10-28 20:55:12',NULL,'Anusree SR'),(106,2023,'vii','solo','Athulya','Not get','prathibha_annual_2023/vii/not_get','2023-10-08 08:14:56','2023-10-08 08:14:56',NULL,NULL),(107,2023,'vii','group','Avani & party','Not get','prathibha_annual_2023/vii/not_get','2023-10-08 08:15:22','2023-10-14 05:57:15',NULL,'Avani, Amalendu, Sandra'),(108,2023,'vii','group','Ananya & party','Not get','prathibha_annual_2023/vii/not_get','2023-10-08 08:15:47','2023-10-14 05:58:01',NULL,'Ananya, Athira RS, Sandra, Athulya'),(109,2023,'vii','group','Athulya & party','Not get','prathibha_annual_2023/vii/not_get','2023-10-08 08:16:19','2023-10-14 05:58:31',NULL,'Athulya, Ananya, Amalendu'),(110,2023,'vii','group','Anusree & party','pistha suma kira - neram','prathibha_annual_2023/vii/7th class anusree&party.mp3','2023-10-08 08:16:37','2023-10-28 20:58:18',NULL,'Anusree, Durga S Jyothiraj, Anagha SA, Siva Ganga'),(111,2023,'vii','group','Anagha & party','kayi kayi raath','prathibha_annual_2023/vii/7th class anagha& party.mp3','2023-10-08 08:17:00','2023-10-28 20:59:46',NULL,'Anagha, Athira, Avani'),(112,2023,'vii','group','Adarsh & party','mari 2','prathibha_annual_2023/vii/ADARSH AND PARTY.mp3','2023-10-08 08:17:25','2023-10-24 04:21:22',NULL,'Adarsh, Abhinav, Indhraksh, Aswajith, Akshay'),(113,2023,'viii','group','Adithya & party','asura nee ravana','prathibha_annual_2023/viii/8th class.mp3','2023-10-08 08:17:54','2023-10-24 05:25:56',NULL,'Adithya, Vaishnavi, Ardra, Athira, Sona, Stephy'),(117,2023,'ix','folk','Gowri SV','à´®à´•à´° à´•àµŠà´¯àµà´¤àµà´¤àµ à´µà´¨àµà´¨à´²àµà´²àµ‹','prathibha_annual_2023/ix/niveditha_lp_cut.mp3','2023-10-14 06:05:23','2023-10-25 09:57:06',NULL,'Gowri SV'),(118,2023,'ix','group','Nivedhaya R Kumar & Party','Not get','prathibha_annual_2023/ix/not_get','2023-10-14 06:06:44','2023-10-14 06:06:44',NULL,'Nivedya, Jeena, Julia, Akhila, Karthika, Devika, Gowri, Sapna'),(119,2023,'ix','group','Jeevan J Lal & Party','suresh gopi thenkasi','prathibha_annual_2023/ix/9th boys fusion dance.mp3','2023-10-14 06:08:22','2023-10-25 10:29:25',NULL,'Jeevan, Mainak, Abhishek RR, Rudraksh, Arjun Krishna, Abhijith, Akshay JS, Nandhu, Ajay'),(120,2023,'x','solo','Sree lekshmi D','Not get','prathibha_annual_2023/x/not_get','2023-10-14 06:09:03','2023-10-14 06:09:03',NULL,'Sree lekshmi D'),(121,2023,'+1','group','Anakha Krishna & party','Fusion Dance','prathibha_annual_2023/+1/Dance song  real mp.mp3','2023-10-24 03:47:28','2023-10-24 03:47:28',NULL,'Anakha, Jyothika, Ancitha, Saniya, Sneha vinod, Nandhana'),(122,2023,'+1','group','Jyothika & party','Rafthara','prathibha_annual_2023/+1/rafthara.mp3','2023-10-24 03:53:36','2023-10-24 03:53:36',NULL,'Jyothika, Ancitha, Anakha Krishna, Saniya, Sneha Vinod, Nandhana'),(123,2023,'+2','group','Aswathy & party','Theeye Theeye','prathibha_annual_2023/+2/theeye theeye.mp3','2023-10-24 04:04:24','2023-10-24 04:30:55',NULL,'Aswathy, Renjini, Deepika B, Varsha, Sandhya, Aparna, Nandhana'),(124,2023,'+2','group','Lincy & party','Hamma Hamma','prathibha_annual_2023/+2/lincy.mp3','2023-10-24 04:05:37','2023-10-24 06:16:55',NULL,'Lincy, Jeni, Anjana, Anakha,'),(125,2023,'+2','group','Abhiraj &  party','Thal se Tha - jailer','prathibha_annual_2023/+2/Fusion.mp3','2023-10-24 04:07:14','2023-10-24 04:32:21',NULL,'Abhiraj, Abhishek, Pranav, Akash, Nandhan'),(126,2023,'+2','group','Abhirami & team','Pooja Dance','prathibha_annual_2023/+2/poojadance.mp3','2023-10-24 04:08:32','2023-10-24 06:21:54',NULL,'Abhirami, Devika Suresh, Aswathy js, Aparna R'),(127,2023,'special','group','Devika Suresh & team','Droupathy','prathibha_annual_2023/special/not_get','2023-10-24 04:09:49','2023-10-24 05:35:12',NULL,'Devika Suresh, Aswathy Js, Aparna R, Deepika, Abhirami, Adithya, Anjana, Renjini, Sandya, Nandhana'),(128,2023,'+2','skit','Aparna & party','Comedy skit','prathibha_annual_2023/+2/VID-20231024-WA0000_320kbps.mp3','2023-10-24 04:11:09','2023-10-24 06:28:20',NULL,'Aparna, Aswathy js, Nandhana PR, Deepika Ponnu, Renjini, Sandhya S, Varsha A Anil'),(129,2023,'special','group','Deepika Ponnu & Party','OPPANA','prathibha_annual_2023/special/oppana.mp3','2023-10-24 04:12:44','2023-10-25 10:03:21',NULL,'Deepika Ponnu, Devika Suresh, Aparna R, Aswathy JS, Nandhana PR, Renjini, Sandhya, Varsha A Anil'),(130,2023,'+2','group','Adithya Lekshmi & Party','One two three four','prathibha_annual_2023/+2/not_get','2023-10-24 04:13:46','2023-10-24 04:13:46',NULL,'Adithya Lekshmi, Deepika Ponnu, Anjima'),(131,2023,'special','group','Jeni & team','Thiruvathira','prathibha_annual_2023/special/thiruvathira .mp3','2023-10-24 04:14:43','2023-10-28 21:02:14',NULL,'Jeni, Devika Suresh, Lincy, Anjana, Neha'),(132,2023,'+2','solo','Abhirami S chandran','pampa ganapathy','prathibha_annual_2023/+2/not_get','2023-10-24 04:15:44','2023-10-24 04:15:44',NULL,'Abhirami S chandran Semi classical'),(133,2023,'+2','solo','Abhirami S chandran','Not get','prathibha_annual_2023/+2/not_get','2023-10-24 04:16:22','2023-10-24 04:16:22',NULL,'Abhirami S chandran Sermi classical'),(134,2023,'+2','group','Varsha A Anil & party','salim kumar dialogue','prathibha_annual_2023/+2/varsha a anil.mp3','2023-10-24 04:17:31','2023-10-24 04:28:15',NULL,'Varsha A Anil, Nandhana, Sandhya, Renjini'),(135,2023,'special','mime','Abhishek AB & Party','Mime','prathibha_annual_2023/special/not_get','2023-10-24 04:23:07','2023-10-24 04:23:07',NULL,'Abhishek AB, Abhiraj, Pranav, Adharsh, Sooraj, Nandhan'),(136,2023,'+2','group','Plus two boys','kitchen music','prathibha_annual_2023/+2/not_get','2023-10-24 04:23:59','2023-10-24 04:23:59',NULL,'Plus two boys Kitchen music'),(137,2023,'+1','group','Bhadra & Party','How you like that','prathibha_annual_2023/+1/how_you.mp3','2023-10-24 04:37:06','2023-10-24 04:38:15',NULL,'Bhadra, Sanooja, Gouri, Sandra'),(138,2023,'+1','group','Sophiya & Party','Ramayya Osthara','prathibha_annual_2023/+1/plusone sophia&party.m4a','2023-10-24 04:39:28','2023-10-26 21:16:33',NULL,'Sophiya, Lekshmi, Sona, Moushmi'),(139,2023,'+1','group','Gouri & party','Boom diggy','prathibha_annual_2023/+1/not_get','2023-10-24 04:40:34','2023-10-24 04:40:34',NULL,'Gouri, Sanooja, Sandra, Bhadra, Lekshmi'),(140,2023,'x','group','Deepika & Party','Barsore Mekha','prathibha_annual_2023/x/kavya.mp3','2023-10-24 04:42:32','2023-10-24 04:42:32',NULL,'Deepika, Kavya, Diya, Ashitha S Raj, Saniya mol'),(141,2023,'vii','solo','Anusree','Kannile kannile','prathibha_annual_2023/vii/anusree7th class.mp3','2023-10-24 05:28:48','2023-10-28 21:00:37',NULL,'Anusree'),(142,2023,'ix','group','Karthika & party','En peru meenakumari','prathibha_annual_2023/ix/not_get','2023-10-24 05:31:52','2023-10-24 05:31:52',NULL,'Karthika BL, Devika SR, Julia B'),(143,2023,'special','skit','Kavya B & Party','comedy skit','prathibha_annual_2023/special/VID-20231024-WA0000_320kbps.mp3','2023-10-24 05:37:46','2023-10-24 06:27:52',NULL,'Kavya, Ashitha S Raj, Deepika, Nivedhya R Kumar, Diya, Julia, Akhila, Gouri, Karthika, Rincy, Lekshmi, Sophiya, Moushmi, Aswathy'),(144,2023,'x','classical','Sree lekshmi','Ra ra rakkamma','prathibha_annual_2023/x/not_get','2023-10-24 05:39:06','2023-10-24 05:39:20',NULL,'Sreeleshmi'),(145,2023,'x','solo','Kavya BK','Tharuni','prathibha_annual_2023/x/kavya single.mp3','2023-10-24 05:40:14','2023-10-26 21:15:18',NULL,'Kavya BK Semi Classical'),(146,2023,'x','classical','Nandhana','Dum Dum doora yetho','prathibha_annual_2023/x/not_get','2023-10-24 05:40:59','2023-10-24 05:50:20',NULL,'Nandhana'),(147,2023,'x','classical','Nandhana','Pampa Ganapathy','prathibha_annual_2023/x/not_get','2023-10-24 05:41:28','2023-10-24 05:41:28',NULL,'Nandhana'),(148,2023,'x','group','Kavya & party','Not get','prathibha_annual_2023/x/kavya bk group.mp3','2023-10-24 05:42:39','2023-10-26 21:15:38',NULL,'Kavya, Nivedhya R kumar, Rincy'),(149,2023,'x','group','Aravind & party','Not get','prathibha_annual_2023/x/10th boys.mp3','2023-10-24 05:43:50','2023-10-26 21:16:03',NULL,'Aravind, Mahesh, Abhijith SR, Arun, Abhijith, Nandhan, Ajith'),(150,2023,'x','group','Nandhana & Nandhitha','queen movie song','prathibha_annual_2023/x/not_get','2023-10-24 05:44:50','2023-10-24 05:44:50',NULL,'Nandhana(10) & Nandhitha(4)'),(151,2023,'x','duet','Diya C & Saniya mol','Not get','prathibha_annual_2023/x/not_get','2023-10-24 05:45:35','2023-10-24 05:45:35',NULL,'Diya C & Saniya mol fusion dance'),(152,2023,'special','karoke','Abhirami S chandran & Neethu S Raj','Not get','prathibha_annual_2023/special/not_get','2023-10-24 05:46:23','2023-10-24 05:46:23',NULL,'Abhirami S chandran & Neethu S Raj(Teacher)'),(153,2023,'special','karoke','Abhirami S chandran','choola madichu karangi','prathibha_annual_2023/special/not_get','2023-10-24 05:47:12','2023-10-24 05:47:12',NULL,'Abhirami S chandran +2'),(154,2023,'special','karoke','Anjima','moha munthiri','prathibha_annual_2023/special/not_get','2023-10-24 05:47:35','2023-10-24 05:47:35',NULL,'Anjima +2');
/*!40000 ALTER TABLE `anniversaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_amounts`
--

DROP TABLE IF EXISTS `bill_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_amounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `user_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_price` int DEFAULT NULL,
  `service_charge` int DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `amount_got` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_amounts`
--

LOCK TABLES `bill_amounts` WRITE;
/*!40000 ALTER TABLE `bill_amounts` DISABLE KEYS */;
INSERT INTO `bill_amounts` VALUES (1,'2022-07-20','jayan',140,60,200,200,'2022-07-20 11:32:25','2022-07-20 11:32:25'),(2,'2022-07-20','cilin',80,120,200,200,'2022-07-20 11:34:23','2022-07-20 11:34:23'),(11,'2022-08-05','bat',40,0,40,0,'2022-08-05 11:22:21','2022-08-05 11:22:21'),(12,'2022-08-09','Aneesh',147,253,400,400,'2022-08-09 04:34:24','2022-08-10 10:27:37'),(13,'2022-08-28','amma',40,0,40,0,'2022-08-28 09:10:12','2022-08-28 09:10:12'),(14,'2022-08-28','Aneesh',60,40,100,100,'2022-08-28 09:10:47','2022-08-28 09:10:47'),(15,'2022-09-06','Jayan',170,30,200,200,'2022-09-06 12:41:56','2022-10-02 09:19:25'),(16,'2022-09-24','Amma',70,0,70,0,'2022-09-24 10:53:28','2022-09-24 10:53:28'),(17,'2022-11-22','adharsh',100,75,175,175,'2022-11-24 10:50:32','2023-02-11 10:25:28'),(18,'2023-10-21','sreeraj',860,0,860,0,'2023-10-21 11:12:35','2023-10-21 11:12:35');
/*!40000 ALTER TABLE `bill_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_users`
--

DROP TABLE IF EXISTS `blog_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bloggerName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` blob,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_users`
--

LOCK TABLES `blog_users` WRITE;
/*!40000 ALTER TABLE `blog_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calculations`
--

DROP TABLE IF EXISTS `calculations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calculations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `calc_date` date DEFAULT NULL,
  `fin_id` bigint unsigned NOT NULL,
  `stock_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_avail` double(8,2) DEFAULT NULL,
  `buy_amount` double(8,2) DEFAULT NULL,
  `buy_count` int DEFAULT NULL,
  `total_buy_amount` double(8,2) DEFAULT NULL,
  `stop_loss` double(8,2) DEFAULT NULL,
  `target` double(8,2) DEFAULT NULL,
  `expected_profit` double(8,2) DEFAULT NULL,
  `expected_loss` double(8,2) DEFAULT NULL,
  `divident_amount` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `amount_accnt` double(8,2) DEFAULT NULL,
  `ratio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `calculations_fin_id_foreign` (`fin_id`),
  CONSTRAINT `calculations_fin_id_foreign` FOREIGN KEY (`fin_id`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculations`
--

LOCK TABLES `calculations` WRITE;
/*!40000 ALTER TABLE `calculations` DISABLE KEYS */;
INSERT INTO `calculations` VALUES (4,'2023-03-19',2,'AXITA',7441.70,58.60,50,2930.00,51.00,68.00,470.00,380.00,NULL,NULL,7441.70,'1 : 1.24','2023-03-19 03:30:08','2023-03-24 10:49:53',0),(5,'2023-03-19',2,'mangchever',4511.70,100.00,30,3000.00,92.00,116.00,480.00,240.00,NULL,NULL,6425.00,'1 : 2','2023-03-19 04:27:00','2023-04-03 20:46:43',0),(6,'2023-04-04',7,'nifty bees',6425.00,190.00,10,1900.00,0.00,0.00,-1900.00,1900.00,NULL,NULL,6500.00,'1 : -1','2023-04-03 20:50:00','2023-05-08 09:59:15',0),(7,'2023-04-05',7,'Axita',4600.00,61.50,50,3075.00,56.00,68.00,325.00,275.00,NULL,NULL,6500.00,'1 : 1.18','2023-04-04 20:33:39','2023-06-05 21:03:52',0),(8,'2023-04-07',7,'Precwire',1525.00,70.00,20,1400.00,64.00,80.00,200.00,120.00,NULL,NULL,29936.00,'1 : 1.67','2023-04-07 04:15:12','2023-10-10 09:57:38',0);
/*!40000 ALTER TABLE `calculations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_prices`
--

DROP TABLE IF EXISTS `component_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component_prices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comp_unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_prices`
--

LOCK TABLES `component_prices` WRITE;
/*!40000 ALTER TABLE `component_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_names`
--

DROP TABLE IF EXISTS `components_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `components_names` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_names`
--

LOCK TABLES `components_names` WRITE;
/*!40000 ALTER TABLE `components_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dividents`
--

DROP TABLE IF EXISTS `dividents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dividents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `fin_id` bigint unsigned NOT NULL,
  `stock_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divident_percentage` double(8,2) DEFAULT NULL,
  `stock_count` int DEFAULT NULL,
  `divident_amount` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dividents_fin_id_foreign` (`fin_id`),
  CONSTRAINT `dividents_fin_id_foreign` FOREIGN KEY (`fin_id`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dividents`
--

LOCK TABLES `dividents` WRITE;
/*!40000 ALTER TABLE `dividents` DISABLE KEYS */;
INSERT INTO `dividents` VALUES (3,'2023-03-04',2,'ONGC',2.59,3100,80,'2023-03-04','2023-03-08 21:21:35','2023-03-08 21:21:35'),(4,'2023-03-03',2,'ITC',2.50,960,24,'2023-03-03','2023-03-08 21:22:39','2023-03-08 21:22:39'),(5,'2023-08-14',7,'itc',1.00,1,38,'2023-08-14','2023-08-17 08:53:17','2023-08-17 08:53:17'),(6,'2023-08-10',7,'gigapip',1.00,1,68,'2023-08-10','2023-08-17 08:53:58','2023-08-17 08:53:58'),(7,'2023-10-13',7,'servotech',0.26,2839,6,'2023-10-13','2023-10-14 00:33:50','2023-10-14 00:33:50');
/*!40000 ALTER TABLE `dividents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_amounts`
--

DROP TABLE IF EXISTS `expense_amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_amounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_date` date DEFAULT NULL,
  `finyear` bigint unsigned NOT NULL,
  `expense_name` bigint unsigned NOT NULL,
  `expense_amount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` tinyint DEFAULT '0',
  `expense_item_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_amounts_finyear_foreign` (`finyear`),
  KEY `expense_amounts_expense_name_foreign` (`expense_name`),
  CONSTRAINT `expense_amounts_expense_name_foreign` FOREIGN KEY (`expense_name`) REFERENCES `expense_names` (`id`) ON DELETE CASCADE,
  CONSTRAINT `expense_amounts_finyear_foreign` FOREIGN KEY (`finyear`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=622 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_amounts`
--

LOCK TABLES `expense_amounts` WRITE;
/*!40000 ALTER TABLE `expense_amounts` DISABLE KEYS */;
INSERT INTO `expense_amounts` VALUES (12,'2022-05-02',2,15,11000,'2022-06-13 10:20:37','2022-06-13 10:20:37',1,NULL),(13,'2022-05-02',2,16,4000,'2022-06-13 10:21:06','2022-06-13 10:21:06',1,NULL),(14,'2022-06-01',2,15,25000,'2022-06-13 10:21:39','2022-06-13 10:21:39',1,NULL),(15,'2022-06-01',2,16,3500,'2022-06-13 10:22:01','2022-06-13 10:22:01',1,NULL),(16,'2022-06-06',2,17,1700,'2022-06-13 10:22:19','2022-06-13 10:22:19',1,NULL),(17,'2022-04-30',2,14,27477,'2022-06-13 10:25:09','2022-06-13 10:25:09',0,NULL),(18,'2022-05-31',2,14,11079,'2022-06-13 10:27:07','2022-06-13 10:27:07',0,NULL),(19,'2022-06-01',2,1,250,'2022-06-13 10:28:04','2022-06-13 10:28:04',0,NULL),(24,'2022-06-06',2,21,210,'2022-06-13 10:31:29','2022-06-13 10:31:29',0,NULL),(25,'2022-06-06',2,6,419,'2022-06-13 10:31:42','2022-06-13 10:31:42',0,NULL),(26,'2022-06-06',2,2,1000,'2022-06-13 10:32:03','2022-06-13 10:32:03',0,NULL),(27,'2022-06-06',2,4,2200,'2022-06-13 10:32:26','2022-06-13 10:32:26',0,NULL),(28,'2022-06-06',2,14,3250,'2022-06-13 10:32:45','2022-06-13 10:32:45',0,NULL),(29,'2022-06-06',2,14,100,'2022-06-13 10:33:06','2022-06-13 10:33:06',0,NULL),(30,'2022-06-06',2,23,148,'2022-06-13 10:33:45','2022-06-13 10:33:45',0,NULL),(31,'2022-06-06',2,14,387,'2022-06-13 10:34:11','2022-06-13 10:34:11',0,NULL),(32,'2022-06-10',2,1,600,'2022-06-13 10:34:27','2022-06-13 10:34:27',0,NULL),(34,'2022-06-15',2,14,40,'2022-06-15 10:20:06','2022-06-15 10:20:06',0,NULL),(35,'2022-06-18',2,14,60,'2022-06-18 10:22:52','2022-06-18 10:22:52',0,NULL),(37,'2022-06-19',2,1,650,'2022-06-20 10:37:48','2022-06-20 10:37:48',0,NULL),(38,'2022-06-21',2,14,680,'2022-06-21 11:03:06','2022-06-21 11:03:06',0,NULL),(39,'2022-06-21',2,24,300,'2022-06-21 11:04:00','2022-06-21 11:04:00',0,NULL),(40,'2022-06-25',2,1,600,'2022-06-27 10:06:34','2022-06-27 10:06:34',0,NULL),(41,'2022-06-24',2,21,200,'2022-06-27 10:07:03','2022-06-27 10:07:03',0,NULL),(42,'2022-06-26',2,24,200,'2022-06-27 10:07:22','2022-06-27 10:07:22',0,NULL),(43,'2022-07-02',2,15,25000,'2022-07-02 10:07:58','2022-07-02 10:07:58',1,NULL),(45,'2022-07-02',2,25,479,'2022-07-02 10:10:18','2022-07-02 10:10:18',0,NULL),(46,'2022-07-02',2,2,5000,'2022-07-02 10:10:38','2022-07-02 10:10:38',0,NULL),(47,'2022-07-02',2,26,100,'2022-07-02 10:12:00','2022-07-02 10:12:00',0,NULL),(49,'2022-07-04',2,17,2700,'2022-07-08 10:20:33','2022-07-08 10:20:33',1,NULL),(50,'2022-07-08',2,16,3500,'2022-07-08 10:21:11','2022-07-08 10:21:11',1,NULL),(52,'2022-07-08',2,4,120,'2022-07-08 10:23:16','2022-07-08 10:23:16',0,NULL),(53,'2022-07-09',2,4,150,'2022-07-09 22:43:29','2022-07-09 22:43:29',0,NULL),(55,'2022-07-09',2,28,150,'2022-07-09 22:45:49','2022-07-09 22:45:49',0,NULL),(56,'2022-07-09',2,29,2000,'2022-07-09 22:47:15','2022-07-09 22:47:15',0,NULL),(57,'2022-07-09',2,1,600,'2022-07-09 22:47:33','2022-07-09 22:47:33',0,NULL),(58,'2022-07-09',2,30,20,'2022-07-09 22:47:58','2022-07-09 22:47:58',0,NULL),(60,'2022-07-12',2,21,240,'2022-07-13 10:25:15','2022-07-13 10:25:15',0,NULL),(61,'2022-07-17',2,1,600,'2022-07-17 09:19:58','2022-07-17 09:19:58',0,NULL),(62,'2022-07-17',2,24,50,'2022-07-17 09:20:17','2022-07-17 09:20:17',0,NULL),(63,'2022-07-20',2,21,50,'2022-07-20 10:11:42','2022-07-20 10:11:42',0,NULL),(64,'2022-07-20',2,8,500,'2022-07-20 10:12:00','2022-07-20 10:12:00',0,NULL),(65,'2022-07-25',2,1,600,'2022-07-25 10:40:28','2022-07-25 10:40:28',0,NULL),(66,'2022-07-26',2,26,50,'2022-07-26 11:43:41','2022-07-26 11:43:41',0,NULL),(67,'2022-07-26',2,21,90,'2022-07-26 11:44:34','2022-07-26 11:44:34',0,NULL),(68,'2022-07-27',2,21,1295,'2022-07-28 10:43:22','2022-07-28 10:43:22',0,NULL),(69,'2022-07-28',2,21,2100,'2022-07-28 10:54:33','2022-07-28 10:54:33',0,NULL),(70,'2022-07-28',2,25,479,'2022-07-28 10:54:55','2022-07-28 10:54:55',0,NULL),(71,'2022-04-01',2,17,0,'2022-07-31 10:23:34','2022-07-31 10:23:34',1,NULL),(72,'2022-08-01',2,1,600,'2022-07-31 10:25:58','2022-07-31 10:25:58',0,NULL),(73,'2022-08-01',2,24,150,'2022-07-31 10:26:35','2022-07-31 10:26:35',0,NULL),(74,'2022-08-01',2,4,100,'2022-08-01 10:30:56','2022-08-01 10:30:56',0,NULL),(75,'2022-08-01',2,21,50,'2022-08-01 10:32:05','2022-08-01 10:32:05',0,NULL),(76,'2022-07-27',2,25,479,'2022-08-01 10:32:58','2022-08-01 10:32:58',0,NULL),(77,'2022-08-02',2,33,2000,'2022-08-02 10:30:53','2022-08-02 10:41:14',1,NULL),(78,'2022-08-02',2,34,0,'2022-08-02 10:31:06','2022-08-02 10:31:06',0,NULL),(79,'2022-08-04',2,2,5000,'2022-08-03 21:38:43','2022-08-03 21:38:43',0,NULL),(80,'2022-08-04',2,26,1000,'2022-08-03 21:38:58','2022-08-03 21:38:58',0,NULL),(81,'2022-08-04',2,15,30900,'2022-08-03 21:44:32','2022-08-03 21:44:32',1,NULL),(82,'2022-08-04',2,17,1700,'2022-08-04 10:38:39','2022-08-04 10:38:39',1,NULL),(83,'2022-08-04',2,25,479,'2022-08-04 10:42:38','2022-08-04 10:42:38',0,NULL),(84,'2022-08-05',2,35,255,'2022-08-05 11:08:01','2022-08-05 11:08:01',0,NULL),(85,'2022-08-05',2,4,43,'2022-08-05 11:08:17','2022-08-05 11:08:17',0,NULL),(86,'2022-08-06',2,30,1708,'2022-08-06 20:45:14','2022-08-06 20:45:14',0,NULL),(87,'2022-08-06',2,29,736,'2022-08-06 20:48:00','2022-08-06 20:48:00',0,NULL),(88,'2022-08-06',2,21,170,'2022-08-06 20:49:12','2022-08-06 20:49:12',0,NULL),(89,'2022-08-06',2,29,3390,'2022-08-06 20:52:15','2022-08-06 20:52:15',0,NULL),(90,'2022-08-06',2,21,580,'2022-08-06 20:53:04','2022-08-06 20:53:04',0,NULL),(91,'2022-08-06',2,21,41,'2022-08-06 20:53:36','2022-08-06 20:53:36',0,NULL),(92,'2022-08-06',2,29,1082,'2022-08-06 20:55:16','2022-08-06 20:55:16',0,NULL),(93,'2022-08-06',2,29,2330,'2022-08-06 20:56:11','2022-08-06 20:56:11',0,NULL),(94,'2022-08-06',2,21,1321,'2022-08-06 20:57:02','2022-08-06 20:57:02',0,NULL),(95,'2022-08-07',2,4,2700,'2022-08-09 04:28:37','2022-08-09 04:28:37',0,NULL),(96,'2022-08-08',2,16,3250,'2022-08-09 04:29:07','2022-08-09 04:29:07',1,NULL),(97,'2022-08-07',2,1,500,'2022-08-09 04:31:20','2022-08-09 04:31:20',0,NULL),(98,'2022-08-08',2,34,2000,'2022-08-09 05:31:00','2022-08-09 05:31:00',0,NULL),(99,'2022-08-08',2,24,500,'2022-08-09 05:31:20','2022-08-09 05:31:20',0,NULL),(100,'2022-08-10',2,21,90,'2022-08-10 10:29:23','2022-08-10 10:29:23',0,NULL),(101,'2022-08-11',2,24,500,'2022-08-11 10:49:11','2022-08-11 10:49:11',0,NULL),(102,'2022-08-27',2,1,1150,'2022-08-28 00:41:19','2022-08-28 00:41:19',0,NULL),(103,'2022-08-22',2,37,395,'2022-08-28 08:39:30','2022-08-28 08:39:30',0,NULL),(104,'2022-08-25',2,33,395,'2022-08-28 08:42:24','2022-08-28 08:42:24',1,NULL),(105,'2022-08-28',2,14,13500,'2022-08-28 08:44:33','2022-08-28 08:44:33',0,NULL),(106,'2022-08-31',2,1,200,'2022-09-01 10:52:02','2022-09-01 10:52:02',0,NULL),(107,'2022-09-04',2,33,350,'2022-09-04 09:23:09','2022-09-04 09:23:09',1,NULL),(108,'2022-09-04',2,1,100,'2022-09-04 09:23:37','2022-09-04 09:23:37',0,NULL),(109,'2022-09-04',2,1,250,'2022-09-04 09:24:12','2022-09-04 09:24:12',0,NULL),(110,'2022-09-04',2,8,450,'2022-09-04 09:24:42','2022-09-04 09:24:42',0,NULL),(111,'2022-09-04',2,14,150,'2022-09-04 09:25:10','2022-09-04 09:25:10',0,NULL),(112,'2022-09-05',2,15,29903,'2022-09-05 19:56:40','2022-09-05 19:56:40',1,NULL),(113,'2022-09-05',2,17,2700,'2022-09-05 19:57:06','2022-09-05 19:57:06',1,NULL),(114,'2022-09-05',2,35,160,'2022-09-05 19:57:35','2022-09-05 19:57:35',0,NULL),(115,'2022-09-06',2,4,2700,'2022-09-05 20:01:23','2022-09-05 20:01:23',0,NULL),(116,'2022-09-05',2,14,950,'2022-09-05 20:02:00','2022-09-05 20:02:00',0,NULL),(117,'2022-09-06',2,1,500,'2022-09-06 11:58:39','2022-09-06 11:58:39',0,NULL),(118,'2022-09-06',2,30,100,'2022-09-06 11:58:54','2022-09-06 11:58:54',0,NULL),(119,'2022-09-06',2,2,5000,'2022-09-06 12:00:01','2022-09-06 12:00:01',0,NULL),(120,'2022-09-06',2,4,2000,'2022-09-06 12:01:57','2022-09-06 12:01:57',0,NULL),(121,'2022-09-06',2,14,500,'2022-09-06 12:04:40','2022-09-06 12:04:40',0,NULL),(122,'2022-09-10',2,26,1500,'2022-09-06 12:06:47','2022-09-06 12:06:47',0,NULL),(123,'2022-09-06',2,34,745,'2022-09-06 12:07:59','2022-09-06 12:07:59',0,NULL),(124,'2022-09-10',2,26,200,'2022-09-06 12:09:36','2022-09-06 12:09:36',0,NULL),(125,'2022-09-07',2,14,90,'2022-09-07 10:41:28','2022-09-07 10:41:28',0,NULL),(126,'2022-09-07',2,8,300,'2022-09-07 10:42:44','2022-09-07 10:42:44',0,NULL),(127,'2022-09-07',2,24,247,'2022-09-07 10:43:04','2022-09-07 10:43:04',0,NULL),(128,'2022-09-07',2,16,3500,'2022-09-07 10:43:23','2022-09-07 10:43:23',1,NULL),(129,'2022-09-10',2,1,600,'2022-09-10 04:00:06','2022-09-10 04:00:06',0,NULL),(130,'2022-09-10',2,26,200,'2022-09-10 04:00:21','2022-09-10 04:00:21',0,NULL),(131,'2022-09-11',2,21,180,'2022-09-12 06:55:09','2022-09-12 06:55:09',0,NULL),(132,'2022-09-11',2,14,30,'2022-09-12 06:55:30','2022-09-12 06:55:30',0,NULL),(133,'2022-09-12',2,24,60,'2022-09-12 06:55:53','2022-09-12 06:55:53',0,NULL),(134,'2022-09-14',2,24,105,'2022-09-14 00:04:19','2022-09-14 00:04:19',0,NULL),(135,'2022-09-14',2,21,150,'2022-09-14 00:04:48','2022-09-14 00:04:48',0,NULL),(136,'2022-09-14',2,23,315,'2022-09-14 07:08:25','2022-09-14 07:08:25',0,NULL),(137,'2022-09-17',2,4,250,'2022-09-18 10:25:52','2022-09-18 10:25:52',0,NULL),(138,'2022-09-18',2,1,300,'2022-09-18 10:26:13','2022-09-18 10:26:13',0,NULL),(139,'2022-09-19',2,35,30,'2022-09-19 10:14:16','2022-09-19 10:14:16',0,NULL),(140,'2022-09-19',2,33,1000,'2022-09-19 10:14:38','2022-09-19 10:14:38',1,NULL),(141,'2022-09-20',2,30,20,'2022-09-20 10:41:15','2022-09-20 10:41:15',0,NULL),(142,'2022-09-20',2,21,130,'2022-09-20 10:41:44','2022-09-20 10:41:44',0,NULL),(143,'2022-09-20',2,3,8350,'2022-09-20 10:42:03','2022-09-20 10:42:03',0,NULL),(144,'2022-09-21',2,21,275,'2022-09-21 05:13:39','2022-09-21 05:13:39',0,NULL),(145,'2022-09-21',2,30,1943,'2022-09-21 05:13:59','2022-09-21 05:13:59',0,NULL),(146,'2022-09-21',2,14,650,'2022-09-21 05:14:48','2022-09-21 05:14:48',0,NULL),(147,'2022-09-21',2,33,1000,'2022-09-21 05:16:00','2022-09-21 05:16:00',1,NULL),(148,'2022-09-22',2,25,219,'2022-09-22 10:16:07','2022-09-22 10:16:07',0,NULL),(149,'2022-09-22',2,1,600,'2022-09-22 10:16:21','2022-09-22 10:16:21',0,NULL),(150,'2022-09-23',2,25,19,'2022-09-23 05:32:00','2022-09-23 05:32:00',0,NULL),(151,'2022-09-24',2,33,2000,'2022-09-23 20:15:20','2022-09-23 20:15:20',1,NULL),(152,'2022-09-24',2,14,1926,'2022-09-23 20:17:04','2022-09-23 20:17:04',0,NULL),(153,'2022-09-26',2,33,50000,'2022-09-26 10:39:09','2022-09-26 10:39:09',1,NULL),(154,'2022-09-26',2,30,320,'2022-09-26 10:39:40','2022-09-26 10:39:40',0,NULL),(155,'2022-09-27',2,21,90,'2022-09-27 09:34:46','2022-09-27 09:34:46',0,NULL),(156,'2022-09-29',2,35,45,'2022-09-30 11:14:37','2022-09-30 11:14:37',0,NULL),(157,'2022-09-29',2,14,10,'2022-09-30 11:14:51','2022-09-30 11:14:51',0,NULL),(158,'2022-09-30',2,33,1000,'2022-09-30 11:15:17','2022-09-30 11:15:17',1,NULL),(159,'2022-09-30',2,14,1694,'2022-09-30 11:16:36','2022-09-30 11:16:36',0,NULL),(160,'2022-10-01',2,1,600,'2022-10-01 11:04:17','2022-10-01 11:04:17',0,NULL),(161,'2022-10-02',2,30,20,'2022-10-02 09:18:21','2022-10-02 09:18:21',0,NULL),(162,'2022-10-02',2,35,210,'2022-10-02 09:18:37','2022-10-02 09:18:37',0,NULL),(163,'2022-10-02',2,21,630,'2022-10-02 09:18:56','2022-10-02 09:18:56',0,NULL),(164,'2022-10-05',2,17,1700,'2022-10-05 10:24:01','2022-10-05 10:24:01',1,NULL),(165,'2022-10-05',2,21,60,'2022-10-05 10:24:28','2022-10-05 10:24:28',0,NULL),(166,'2022-10-05',2,21,340,'2022-10-05 10:24:44','2022-10-05 10:24:44',0,NULL),(167,'2022-10-07',2,33,750,'2022-10-07 09:59:15','2022-10-07 09:59:15',1,NULL),(168,'2022-10-06',2,16,3500,'2022-10-07 09:59:35','2022-10-07 09:59:35',1,NULL),(169,'2022-10-07',2,1,600,'2022-10-07 09:59:53','2022-10-07 09:59:53',0,NULL),(170,'2022-10-07',2,37,500,'2022-10-07 10:00:15','2022-10-07 10:00:15',0,NULL),(171,'2022-10-07',2,17,1000,'2022-10-07 10:01:16','2022-10-07 10:01:16',1,NULL),(172,'2022-10-07',2,4,2700,'2022-10-07 10:01:33','2022-10-07 10:01:33',0,NULL),(173,'2022-10-11',2,4,30,'2022-10-10 19:47:36','2022-10-10 19:47:36',0,NULL),(174,'2022-10-17',2,21,320,'2022-10-17 09:59:36','2022-10-17 09:59:36',0,NULL),(175,'2022-10-17',2,1,500,'2022-10-17 10:00:07','2022-10-17 10:00:07',0,NULL),(176,'2022-10-17',2,25,60,'2022-10-17 10:00:43','2022-10-17 10:00:43',0,NULL),(177,'2022-10-17',2,33,20,'2022-10-17 10:01:06','2022-10-17 10:01:06',1,NULL),(178,'2022-10-20',2,25,550,'2022-10-20 09:29:47','2022-10-20 09:29:47',0,NULL),(179,'2022-10-20',2,4,180,'2022-10-20 09:30:01','2022-10-20 09:30:01',0,NULL),(180,'2022-10-21',2,21,50,'2022-10-21 11:28:52','2022-10-21 11:28:52',0,NULL),(181,'2022-10-21',2,14,600,'2022-10-21 11:29:07','2022-10-21 11:29:07',0,NULL),(182,'2022-10-21',2,14,50,'2022-10-21 11:29:31','2022-10-21 11:29:31',0,NULL),(183,'2022-10-21',2,33,1000,'2022-10-21 11:29:49','2022-10-21 11:29:49',1,NULL),(184,'2022-10-23',2,21,140,'2022-10-22 20:50:18','2022-10-22 20:50:18',0,NULL),(185,'2022-10-23',2,38,240000,'2022-10-22 20:51:09','2022-10-22 20:51:09',1,NULL),(186,'2022-10-23',2,2,40000,'2022-10-22 20:51:30','2022-10-22 20:51:30',0,NULL),(187,'2022-10-26',2,1,600,'2022-10-26 09:29:17','2022-10-26 09:29:17',0,NULL),(188,'2022-10-28',2,21,140,'2022-10-28 11:14:28','2022-10-28 11:14:28',0,NULL),(189,'2022-10-28',2,23,236,'2022-10-28 11:29:54','2022-10-28 11:29:54',0,NULL),(190,'2022-10-28',2,23,500,'2022-10-28 11:30:29','2022-10-28 11:30:29',0,NULL),(191,'2022-10-31',2,1,600,'2022-11-01 12:00:19','2022-11-01 12:00:19',0,NULL),(192,'2022-11-01',2,30,20,'2022-11-01 12:00:31','2022-11-01 12:00:31',0,NULL),(193,'2022-11-01',2,21,400,'2022-11-01 12:00:44','2022-11-01 12:00:44',0,NULL),(194,'2022-11-01',2,26,30,'2022-11-01 12:00:59','2022-11-01 12:00:59',0,NULL),(195,'2022-11-01',2,33,2000,'2022-11-01 12:01:23','2022-11-01 12:01:23',1,NULL),(196,'2022-11-02',2,14,140,'2022-11-03 11:22:24','2022-11-03 11:22:24',0,NULL),(197,'2022-11-03',2,21,140,'2022-11-03 11:22:36','2022-11-03 11:22:36',0,NULL),(198,'2022-11-05',2,21,40,'2022-11-05 10:14:04','2022-11-05 10:14:04',0,NULL),(199,'2022-11-05',2,17,2700,'2022-11-05 10:14:34','2022-11-05 10:14:34',1,NULL),(200,'2022-11-06',2,21,140,'2022-11-06 11:53:21','2022-11-06 11:53:21',0,NULL),(201,'2022-11-06',2,37,20,'2022-11-06 11:53:37','2022-11-06 11:53:37',0,NULL),(202,'2022-11-05',2,21,40,'2022-11-06 11:53:50','2022-11-06 11:53:50',0,NULL),(203,'2022-11-06',2,4,1500,'2022-11-06 11:55:05','2022-11-06 11:55:05',0,NULL),(204,'2022-11-07',2,23,401,'2022-11-07 10:24:36','2022-11-07 10:24:36',0,NULL),(205,'2022-11-10',2,1,700,'2022-11-11 21:00:51','2022-11-11 21:00:51',0,NULL),(206,'2022-11-12',2,37,40000,'2022-11-11 21:01:30','2022-11-11 21:01:30',0,NULL),(207,'2022-11-12',2,14,600,'2022-11-11 21:01:59','2022-11-11 21:01:59',0,NULL),(208,'2022-10-12',2,3,8333,'2022-11-11 21:05:29','2022-11-11 21:05:29',0,NULL),(209,'2022-11-12',2,21,320,'2022-11-12 11:20:45','2022-11-12 11:20:45',0,NULL),(210,'2022-11-15',2,26,52,'2022-11-15 11:05:33','2022-11-15 11:05:33',0,NULL),(211,'2022-11-15',2,21,90,'2022-11-15 11:05:52','2022-11-15 11:05:52',0,NULL),(212,'2022-11-17',2,15,27810,'2022-11-17 12:22:13','2022-11-17 12:22:13',1,NULL),(213,'2022-11-17',2,34,1100,'2022-11-17 12:22:46','2022-11-17 12:22:46',0,NULL),(214,'2022-11-17',2,34,3000,'2022-11-17 12:23:00','2022-11-17 12:23:00',0,NULL),(215,'2022-11-17',2,25,19,'2022-11-17 12:23:11','2022-11-17 12:23:11',0,NULL),(216,'2022-11-17',2,4,1000,'2022-11-17 12:23:40','2022-11-17 12:23:40',0,NULL),(217,'2022-11-18',2,30,20,'2022-11-19 10:10:33','2022-11-19 10:10:33',0,NULL),(218,'2022-11-19',2,35,28,'2022-11-19 10:10:44','2022-11-19 10:10:44',0,NULL),(219,'2022-11-18',2,34,500,'2022-11-19 10:11:29','2022-11-19 10:11:29',0,NULL),(220,'2022-11-19',2,3,8333,'2022-11-19 10:11:56','2022-11-19 10:11:56',0,NULL),(221,'2022-11-19',2,3,8333,'2022-11-19 10:12:14','2022-11-19 10:12:14',0,NULL),(222,'2022-11-19',2,1,700,'2022-11-19 10:12:58','2022-11-19 10:12:58',0,NULL),(223,'2022-11-19',2,5,5000,'2022-11-19 10:13:38','2022-11-19 10:13:38',0,NULL),(224,'2022-11-19',2,5,5000,'2022-11-19 10:14:09','2022-11-19 10:14:09',0,NULL),(225,'2022-11-19',2,5,950,'2022-11-19 10:19:44','2022-11-19 10:19:44',0,NULL),(226,'2022-11-19',2,14,190,'2022-11-19 10:21:34','2022-11-19 10:21:34',0,NULL),(227,'2022-11-19',2,33,210,'2022-11-19 10:21:58','2022-11-19 10:21:58',1,NULL),(228,'2022-11-21',2,21,280,'2022-11-21 10:47:06','2022-11-21 10:47:06',0,NULL),(229,'2022-11-21',2,4,130,'2022-11-21 10:47:25','2022-11-21 10:47:25',0,NULL),(230,'2022-11-21',2,33,230,'2022-11-21 10:47:52','2022-11-21 10:47:52',1,NULL),(231,'2022-11-23',2,35,60,'2022-11-23 10:12:25','2022-11-23 10:12:25',0,NULL),(232,'2022-11-23',2,21,180,'2022-11-23 10:12:56','2022-11-23 10:12:56',0,NULL),(233,'2022-11-27',2,4,1000,'2022-11-26 16:19:49','2022-11-26 16:19:49',0,NULL),(234,'2022-11-27',2,14,202,'2022-11-26 16:32:04','2022-11-26 16:32:04',0,NULL),(235,'2022-11-28',2,1,600,'2022-11-28 10:17:48','2022-11-28 10:17:48',0,NULL),(236,'2022-11-28',2,35,45,'2022-11-28 10:18:08','2022-11-28 10:18:08',0,NULL),(237,'2022-11-28',2,21,90,'2022-11-28 10:18:28','2022-11-28 10:18:28',0,NULL),(238,'2022-11-28',2,4,500,'2022-11-28 10:18:44','2022-11-28 10:18:44',0,NULL),(239,'2022-11-28',2,14,100,'2022-11-28 10:18:59','2022-11-28 10:18:59',0,NULL),(240,'2022-11-29',2,15,30900,'2022-11-29 11:15:02','2022-11-29 11:15:02',1,NULL),(241,'2022-11-29',2,25,19,'2022-11-29 11:15:22','2022-11-29 11:15:22',0,NULL),(242,'2022-11-29',2,34,5500,'2022-11-29 11:53:43','2022-11-29 11:53:43',0,NULL),(243,'2022-11-30',2,25,395,'2022-11-30 10:16:54','2022-11-30 10:16:54',0,NULL),(244,'2022-12-03',2,37,10000,'2022-12-03 10:06:04','2022-12-03 10:06:04',0,NULL),(245,'2022-12-03',2,5,5500,'2022-12-03 10:06:19','2022-12-03 10:06:19',0,NULL),(246,'2022-12-03',2,17,1000,'2022-12-03 10:06:40','2022-12-03 10:06:40',1,NULL),(247,'2022-12-05',2,21,320,'2022-12-06 11:09:21','2022-12-06 11:09:21',0,NULL),(248,'2022-12-06',2,16,5000,'2022-12-06 11:09:52','2022-12-06 11:09:52',1,NULL),(249,'2022-12-07',2,1,500,'2022-12-07 10:10:15','2022-12-07 10:10:15',0,NULL),(250,'2022-12-07',2,14,303,'2022-12-07 10:10:30','2022-12-07 10:10:30',0,NULL),(251,'2022-12-07',2,34,750,'2022-12-07 10:10:48','2022-12-07 10:10:48',0,NULL),(252,'2022-12-07',2,15,30900,'2022-12-07 10:11:42','2022-12-07 10:11:42',1,NULL),(253,'2022-12-09',2,34,200,'2022-12-11 07:02:06','2022-12-11 07:02:06',0,NULL),(254,'2022-12-10',2,29,3449,'2022-12-11 07:04:26','2022-12-11 07:04:26',0,NULL),(255,'2022-12-11',2,14,690,'2022-12-11 07:05:26','2022-12-11 07:05:26',0,NULL),(256,'2022-12-10',2,21,835,'2022-12-11 07:06:09','2022-12-11 07:06:09',0,NULL),(257,'2022-12-11',2,35,208,'2022-12-11 07:07:57','2022-12-11 07:07:57',0,NULL),(258,'2022-12-10',2,30,1360,'2022-12-11 07:08:13','2022-12-11 07:08:13',0,NULL),(259,'2022-12-12',2,21,60,'2022-12-12 10:50:54','2022-12-12 10:50:54',0,NULL),(260,'2022-12-12',2,1,600,'2022-12-12 10:51:11','2022-12-12 10:51:11',0,NULL),(261,'2022-12-12',2,21,215,'2022-12-12 10:51:33','2022-12-12 10:51:33',0,NULL),(262,'2022-12-13',2,35,100,'2022-12-13 11:20:31','2022-12-13 11:20:31',0,NULL),(263,'2022-12-14',2,24,520,'2022-12-14 10:23:11','2022-12-14 10:23:11',0,NULL),(264,'2022-12-15',2,35,54,'2022-12-15 10:58:24','2022-12-15 10:58:24',0,NULL),(265,'2022-12-18',2,35,125,'2022-12-18 09:52:59','2022-12-18 09:52:59',0,NULL),(266,'2022-12-18',2,21,310,'2022-12-18 09:53:22','2022-12-18 09:53:22',0,NULL),(267,'2022-12-18',2,1,600,'2022-12-18 09:53:38','2022-12-18 09:53:38',0,NULL),(268,'2022-12-22',2,24,210,'2022-12-22 09:54:45','2022-12-22 09:54:45',0,NULL),(269,'2022-12-22',2,35,235,'2022-12-22 09:55:18','2022-12-22 09:55:18',0,NULL),(270,'2022-12-22',2,21,260,'2022-12-22 09:56:12','2022-12-22 09:56:12',0,NULL),(271,'2022-12-22',2,14,110,'2022-12-22 09:56:28','2022-12-22 09:56:28',0,NULL),(272,'2022-12-22',2,14,110,'2022-12-22 09:56:41','2022-12-22 09:56:41',0,NULL),(273,'2022-12-22',2,37,275,'2022-12-22 10:04:47','2022-12-22 10:04:47',0,NULL),(274,'2022-12-23',2,21,210,'2022-12-23 10:24:35','2022-12-23 10:24:35',0,NULL),(275,'2022-12-23',2,35,1585,'2022-12-23 10:30:35','2022-12-23 10:30:35',0,NULL),(276,'2022-12-24',2,35,100,'2022-12-25 20:04:33','2022-12-25 20:04:33',0,NULL),(277,'2022-12-27',2,1,500,'2022-12-27 08:37:07','2022-12-27 08:37:07',0,NULL),(278,'2022-12-29',2,25,479,'2022-12-29 11:02:59','2022-12-29 11:02:59',0,NULL),(279,'2022-12-31',2,21,210,'2023-01-01 09:29:52','2023-01-01 09:29:52',0,NULL),(280,'2023-01-02',2,21,570,'2023-01-02 10:54:05','2023-01-02 10:54:05',0,NULL),(281,'2023-01-02',2,35,350,'2023-01-02 10:54:41','2023-01-02 10:54:41',0,NULL),(282,'2023-01-05',2,17,2700,'2023-01-05 09:39:38','2023-01-05 09:39:38',1,NULL),(283,'2023-01-05',2,1,500,'2023-01-05 09:40:07','2023-01-05 09:40:07',0,NULL),(284,'2023-01-05',2,2,5000,'2023-01-05 09:40:27','2023-01-05 09:40:27',0,NULL),(285,'2023-01-05',2,5,5400,'2023-01-05 09:41:20','2023-01-05 09:41:20',0,NULL),(286,'2023-01-05',2,5,5500,'2023-01-05 09:41:39','2023-01-05 09:41:39',0,NULL),(287,'2023-01-05',2,4,1500,'2023-01-05 09:42:07','2023-01-05 09:42:07',0,NULL),(288,'2023-01-06',2,21,210,'2023-01-07 10:12:55','2023-01-07 10:12:55',0,NULL),(289,'2023-01-06',2,21,60,'2023-01-07 10:13:11','2023-01-07 10:13:11',0,NULL),(290,'2023-01-07',2,21,170,'2023-01-07 10:13:33','2023-01-07 10:13:33',0,NULL),(291,'2023-01-10',2,21,100,'2023-01-10 11:18:58','2023-01-10 11:18:58',0,NULL),(292,'2023-01-09',2,1,600,'2023-01-10 11:19:55','2023-01-10 11:19:55',0,NULL),(293,'2023-01-09',2,4,100,'2023-01-10 11:20:25','2023-01-10 11:20:25',0,NULL),(294,'2023-01-11',2,4,1250,'2023-01-11 10:09:17','2023-01-11 10:09:17',0,NULL),(295,'2023-01-11',2,23,335,'2023-01-11 10:13:44','2023-01-11 10:13:44',0,NULL),(296,'2023-01-11',2,33,3500,'2023-01-11 10:14:05','2023-01-11 10:14:05',1,NULL),(297,'2023-01-12',2,16,5000,'2023-01-12 09:54:54','2023-01-12 09:54:54',1,NULL),(298,'2023-01-12',2,6,3500,'2023-01-12 09:55:28','2023-01-12 09:55:28',0,NULL),(299,'2023-01-16',2,6,5800,'2023-01-17 10:30:59','2023-01-17 10:30:59',0,NULL),(300,'2023-01-17',2,21,110,'2023-01-17 10:31:12','2023-01-17 10:31:12',0,NULL),(301,'2023-01-17',2,28,110,'2023-01-17 10:31:25','2023-01-17 10:31:25',0,NULL),(302,'2023-01-18',2,1,600,'2023-01-18 09:54:58','2023-01-18 09:54:58',0,NULL),(303,'2023-01-15',2,6,500,'2023-01-18 10:15:35','2023-01-18 10:15:35',0,NULL),(304,'2023-01-20',2,15,30900,'2023-01-21 20:29:55','2023-01-21 20:29:55',1,NULL),(305,'2023-01-21',2,37,1000,'2023-01-21 20:30:20','2023-01-21 20:30:20',0,NULL),(306,'2023-01-21',2,34,3500,'2023-01-21 20:30:33','2023-01-21 20:30:33',0,NULL),(307,'2023-01-21',2,34,2000,'2023-01-21 20:30:47','2023-01-21 20:30:47',0,NULL),(308,'2023-01-20',2,33,2000,'2023-01-21 20:31:10','2023-01-21 20:31:10',1,NULL),(309,'2023-01-20',2,14,73,'2023-01-21 20:36:00','2023-01-21 20:36:00',0,NULL),(310,'2023-01-20',2,30,1150,'2023-01-24 10:59:27','2023-01-24 10:59:27',0,NULL),(311,'2023-01-24',2,21,310,'2023-01-24 11:00:01','2023-01-24 11:00:01',0,NULL),(312,'2023-01-27',2,1,600,'2023-01-27 21:04:15','2023-01-27 21:04:15',0,NULL),(313,'2023-01-29',2,8,500,'2023-01-30 10:42:30','2023-01-30 10:42:30',0,NULL),(314,'2023-01-30',2,14,190,'2023-01-30 10:42:52','2023-01-30 10:42:52',0,NULL),(315,'2023-01-31',2,14,120,'2023-02-04 20:58:38','2023-02-04 20:58:38',0,NULL),(316,'2023-01-31',2,35,48,'2023-02-04 20:59:00','2023-02-04 20:59:00',0,NULL),(317,'2023-01-31',2,21,90,'2023-02-04 21:00:44','2023-02-04 21:00:44',0,NULL),(318,'2023-02-03',2,2,5000,'2023-02-04 21:01:08','2023-02-04 21:01:08',0,NULL),(319,'2023-02-03',2,5,5350,'2023-02-04 21:01:23','2023-02-04 21:01:23',0,NULL),(320,'2023-02-04',2,5,5500,'2023-02-04 21:01:35','2023-02-04 21:01:35',0,NULL),(321,'2023-02-04',2,8,200,'2023-02-04 21:02:08','2023-02-04 21:02:08',0,NULL),(322,'2023-02-04',2,21,265,'2023-02-04 21:03:42','2023-02-04 21:03:42',0,NULL),(323,'2023-02-04',2,14,180,'2023-02-04 21:04:02','2023-02-04 21:04:02',0,NULL),(324,'2023-02-01',2,1,600,'2023-02-04 21:04:36','2023-02-04 21:04:36',0,NULL),(325,'2023-02-05',2,17,2700,'2023-02-04 21:07:13','2023-02-04 21:07:13',1,NULL),(326,'2023-02-05',2,15,30900,'2023-02-04 21:08:26','2023-02-04 21:08:26',1,NULL),(327,'2023-02-06',2,37,1300,'2023-02-06 11:54:21','2023-02-06 11:54:21',0,NULL),(328,'2023-02-06',2,4,1500,'2023-02-06 11:56:15','2023-02-06 11:56:15',0,NULL),(329,'2023-02-07',2,4,1200,'2023-02-07 10:17:15','2023-02-07 10:17:15',0,NULL),(330,'2023-02-07',2,21,90,'2023-02-07 10:17:47','2023-02-07 10:17:47',0,NULL),(331,'2023-02-09',2,1,600,'2023-02-09 09:58:10','2023-02-09 09:58:10',0,NULL),(332,'2023-02-09',2,6,980,'2023-02-09 09:58:28','2023-02-09 09:58:28',0,NULL),(333,'2023-02-09',2,21,30,'2023-02-09 09:58:50','2023-02-09 09:58:50',0,NULL),(334,'2023-02-09',2,37,195,'2023-02-09 10:21:26','2023-02-09 10:21:26',0,NULL),(335,'2023-02-10',2,21,90,'2023-02-10 10:23:46','2023-02-10 10:23:46',0,NULL),(336,'2023-02-11',2,21,460,'2023-02-11 10:22:40','2023-02-11 10:22:40',0,NULL),(337,'2023-02-11',2,14,260,'2023-02-11 10:23:37','2023-02-11 10:23:37',0,NULL),(341,'2023-02-13',2,21,50,'2023-02-13 11:31:58','2023-02-13 11:31:58',0,'sharja'),(342,'2023-02-13',2,35,100,'2023-02-13 11:32:19','2023-02-13 11:32:19',0,'Prathibha'),(343,'2023-02-13',2,21,100,'2023-02-13 11:32:44','2023-02-13 11:32:44',0,'bakery'),(344,'2023-02-12',2,16,4000,'2023-02-13 11:33:16','2023-02-13 11:33:16',1,NULL),(345,'2023-02-12',2,28,2000,'2023-02-13 11:33:41','2023-02-13 11:33:41',0,'Prathibha'),(346,'2023-02-14',2,35,30,'2023-02-14 10:36:27','2023-02-14 10:36:27',0,'tea'),(347,'2023-02-14',2,21,90,'2023-02-14 10:36:47','2023-02-14 10:36:47',0,'diary milk'),(348,'2023-02-15',2,14,650,'2023-02-15 10:28:49','2023-02-15 10:28:49',0,'footwear - sandal, shoe'),(349,'2023-02-15',2,39,180,'2023-02-15 10:31:18','2023-02-15 10:31:18',0,'soumya - throat pain'),(350,'2023-02-15',2,4,60,'2023-02-15 10:32:22','2023-02-15 10:32:22',0,'bank account renewal'),(351,'2023-02-15',2,21,200,'2023-02-15 10:32:45','2023-02-15 10:32:45',0,'madeena '),(352,'2023-02-15',2,21,165,'2023-02-15 10:33:41','2023-02-15 10:33:41',0,'sharja - mukkola'),(353,'2023-02-16',2,35,28,'2023-02-16 09:47:23','2023-02-16 09:47:23',0,'tea'),(354,'2023-02-18',2,26,50,'2023-02-18 08:48:10','2023-02-18 08:48:10',0,'sivarathri'),(355,'2023-02-17',2,1,600,'2023-02-18 08:48:39','2023-02-18 08:48:39',0,'hp'),(356,'2023-02-01',2,37,2000,'2023-02-19 19:47:02','2023-02-19 19:47:02',0,'amma'),(357,'2023-02-19',2,21,50,'2023-02-19 19:47:22','2023-02-19 19:47:22',0,'mixture'),(358,'2023-02-22',2,25,118,'2023-02-22 10:32:59','2023-02-22 10:32:59',0,'vi'),(359,'2023-02-21',2,30,20,'2023-02-22 10:33:20','2023-02-22 10:33:20',0,'air'),(360,'2023-02-21',2,21,220,'2023-02-22 10:33:51','2023-02-22 10:33:51',0,'choco+whi'),(361,'2023-02-25',2,1,200,'2023-02-25 20:59:07','2023-02-25 20:59:07',0,'hp'),(362,'2023-02-25',2,14,70,'2023-02-25 20:59:38','2023-02-25 20:59:38',0,'service day auto charge'),(363,'2023-02-26',2,25,179,'2023-02-25 21:00:02','2023-02-25 21:00:02',0,'wife'),(364,'2023-02-26',2,30,3174,'2023-02-25 21:01:52','2023-02-25 21:01:52',0,'Fifth service'),(365,'2023-02-27',2,14,45,'2023-02-27 02:30:36','2023-02-27 02:30:36',0,'photostat'),(366,'2023-02-27',2,29,370,'2023-02-27 02:31:09','2023-02-27 02:31:09',0,'palasa and towel'),(367,'2023-02-27',2,33,1000,'2023-02-27 02:36:59','2023-02-27 02:36:59',1,NULL),(368,'2023-02-27',2,14,2451,'2023-02-27 03:18:48','2023-02-27 03:18:48',0,'other'),(369,'2023-03-05',2,15,30900,'2023-03-07 08:53:59','2023-03-07 08:53:59',1,NULL),(370,'2023-03-07',2,17,2700,'2023-03-07 08:54:16','2023-03-07 08:54:16',1,NULL),(371,'2023-03-07',2,5,5300,'2023-03-07 08:55:07','2023-03-07 08:55:07',0,'Amma'),(372,'2023-03-07',2,5,5500,'2023-03-07 08:55:25','2023-03-07 08:55:25',0,'amma'),(373,'2023-03-07',2,26,1000,'2023-03-07 08:56:00','2023-03-07 08:56:00',0,'pushpabhishekam'),(374,'2023-03-07',2,1,3500,'2023-03-07 08:56:43','2023-03-07 08:56:43',0,'hp'),(375,'2023-03-07',2,2,2800,'2023-03-07 08:58:12','2023-03-07 08:58:12',0,'advance '),(376,'2023-03-07',2,24,1500,'2023-03-07 08:59:03','2023-03-07 08:59:03',0,'From Sreeraj and gym'),(377,'2023-03-07',2,2,5000,'2023-03-07 09:00:36','2023-03-07 09:00:36',0,'Amma'),(378,'2023-03-11',2,21,370,'2023-03-11 08:30:16','2023-03-11 08:30:16',0,'Krishna'),(379,'2023-03-11',2,24,100,'2023-03-11 08:30:44','2023-03-11 08:30:44',0,'dry fruits'),(380,'2023-03-11',2,21,30,'2023-03-11 08:30:58','2023-03-11 08:30:58',0,'lemon'),(381,'2023-03-14',2,21,120,'2023-03-14 10:10:09','2023-03-14 10:10:09',0,'wife'),(382,'2023-03-14',2,35,90,'2023-03-14 10:10:34','2023-03-14 10:10:34',0,'Tea'),(383,'2023-03-16',2,21,50,'2023-03-16 08:19:49','2023-03-16 08:19:49',0,'Sharja'),(384,'2023-03-16',2,14,100,'2023-03-16 08:21:16','2023-03-16 08:21:16',0,'book'),(385,'2023-03-17',2,30,100,'2023-03-17 08:51:36','2023-03-17 08:51:36',0,'polution'),(386,'2023-03-18',2,26,30,'2023-03-19 02:50:05','2023-03-19 02:50:05',0,'pvc'),(387,'2023-03-19',2,14,513,'2023-03-19 02:50:57','2023-03-19 02:50:57',0,'Kannu mrg day full expense'),(388,'2023-03-25',2,33,500,'2023-03-25 10:44:24','2023-03-25 10:44:24',1,NULL),(389,'2023-03-25',2,21,370,'2023-03-25 10:45:23','2023-03-25 10:45:23',0,'melon+ration+snacks'),(390,'2023-03-26',2,14,120,'2023-03-26 08:50:34','2023-03-26 08:50:34',0,'sabarimala shopping - sharja'),(391,'2023-03-26',2,14,350,'2023-03-26 08:54:48','2023-03-26 08:54:48',0,'krishna statue'),(392,'2023-03-26',2,14,1360,'2023-03-26 08:55:36','2023-03-26 08:55:36',0,'sabarimala shopping - dress '),(393,'2023-03-26',2,14,90,'2023-03-26 08:56:21','2023-03-26 08:56:21',0,'sabarimala shopping - mala'),(394,'2023-03-26',2,14,110,'2023-03-26 08:57:15','2023-03-26 08:57:15',0,'sabarimala shopping avil shake'),(395,'2023-03-26',2,14,140,'2023-03-26 08:57:52','2023-03-26 08:57:52',0,'pattu for pvc'),(396,'2023-03-26',2,14,350,'2023-03-26 08:58:20','2023-03-26 08:58:20',0,'nila vilakku'),(397,'2023-03-28',2,21,50,'2023-03-28 10:07:01','2023-03-28 10:07:01',0,'tea @ nic'),(398,'2023-04-03',7,14,3260,'2023-04-03 20:15:51','2023-04-03 20:15:51',0,'sabarimala '),(399,'2023-04-04',7,14,150,'2023-04-03 20:16:13','2023-04-03 20:16:13',0,'hair cut'),(400,'2023-04-04',7,1,300,'2023-04-03 20:16:42','2023-04-03 20:16:42',0,'hp at price 110'),(401,'2023-04-04',7,15,30900,'2023-04-04 20:24:54','2023-04-04 20:24:54',1,NULL),(402,'2023-04-05',7,4,6000,'2023-04-04 20:25:36','2023-04-04 20:25:36',0,'2 month amount'),(403,'2023-04-05',7,5,5500,'2023-04-04 20:26:26','2023-04-04 20:26:26',0,'Amma'),(404,'2023-04-05',7,5,5250,'2023-04-04 20:26:43','2023-04-04 20:26:43',0,'amma'),(405,'2023-04-09',7,26,250,'2023-04-09 20:48:20','2023-04-09 20:48:20',0,'Pilgrim'),(406,'2023-04-09',7,1,400,'2023-04-09 20:49:03','2023-04-09 20:49:03',0,'hp'),(407,'2023-04-09',7,21,50,'2023-04-09 20:50:15','2023-04-09 20:50:15',0,'tea'),(408,'2023-04-10',7,35,650,'2023-04-09 20:51:24','2023-04-09 20:51:24',0,'Rahath - with family'),(409,'2023-04-09',7,21,140,'2023-04-09 20:54:40','2023-04-09 20:54:40',0,'Rahath - her family'),(410,'2023-04-10',7,37,2000,'2023-04-09 20:55:43','2023-04-09 20:55:43',0,'Pappa'),(411,'2023-04-11',7,21,45,'2023-04-13 19:48:49','2023-04-13 19:48:49',0,'sharja'),(412,'2023-04-12',7,1,400,'2023-04-13 19:49:06','2023-04-13 19:49:06',0,'hp'),(413,'2023-04-13',7,14,1555,'2023-04-13 19:50:03','2023-04-13 19:50:03',0,'wedding aniversary - churidar'),(414,'2023-04-14',7,14,650,'2023-04-13 19:51:44','2023-04-13 19:51:44',0,'wedding anniversary - Cake'),(415,'2023-04-10',7,16,4500,'2023-04-13 19:53:03','2023-04-13 19:53:03',1,NULL),(416,'2023-04-14',7,26,200,'2023-04-17 11:23:11','2023-04-17 11:23:11',0,'first wedding'),(417,'2023-04-14',7,21,500,'2023-04-17 11:23:48','2023-04-17 11:23:48',0,'vishu fruits'),(418,'2023-04-14',7,35,650,'2023-04-17 11:24:08','2023-04-17 11:24:08',0,'first wedding cake'),(419,'2023-04-14',7,35,190,'2023-04-17 11:24:27','2023-04-17 11:24:27',0,'first wedding - sharja'),(420,'2023-04-14',7,14,750,'2023-04-17 11:24:54','2023-04-17 11:24:54',0,'first wedding - photo'),(421,'2023-04-15',7,30,1200,'2023-04-17 11:25:21','2023-04-17 11:25:21',0,'6th service'),(422,'2023-04-16',7,1,400,'2023-04-17 11:26:21','2023-04-17 11:26:21',0,'hp'),(423,'2023-04-14',7,35,1550,'2023-04-17 11:27:33','2023-04-17 11:27:33',0,'first wedding - wife dress'),(424,'2023-04-16',7,14,1400,'2023-04-17 11:32:27','2023-04-17 11:32:27',0,'chitty - 1400'),(425,'2023-04-16',7,14,1000,'2023-04-17 11:35:18','2023-04-17 11:35:18',0,'small expenses'),(426,'2023-04-24',7,1,300,'2023-04-25 11:06:46','2023-04-25 11:06:46',0,'hp'),(427,'2023-04-26',7,14,660,'2023-04-29 10:42:18','2023-04-29 10:42:18',0,'expenses'),(428,'2023-04-29',7,1,550,'2023-04-29 10:42:41','2023-04-29 10:42:41',0,'hp'),(429,'2023-04-29',7,33,550,'2023-04-29 10:43:07','2023-04-29 10:43:07',1,NULL),(430,'2023-05-02',7,15,33430,'2023-05-03 09:25:49','2023-05-03 09:25:49',1,NULL),(431,'2023-05-03',7,5,5500,'2023-05-03 09:26:45','2023-05-03 09:26:45',0,'amma'),(432,'2023-05-03',7,5,5200,'2023-05-03 09:27:05','2023-05-03 09:27:05',0,'amma'),(433,'2023-05-03',7,2,5000,'2023-05-03 09:27:34','2023-05-03 09:27:34',0,'my home'),(434,'2023-05-03',7,4,3000,'2023-05-03 09:28:00','2023-05-03 09:28:00',0,'expense'),(435,'2023-05-03',7,1,3500,'2023-05-03 09:28:18','2023-05-03 09:28:18',0,'hp'),(436,'2023-05-03',7,14,1000,'2023-05-03 09:28:52','2023-05-03 09:28:52',0,'my expense'),(437,'2023-05-03',7,24,1000,'2023-05-03 09:29:39','2023-05-03 09:29:39',0,'gym and nuts egg'),(438,'2023-05-03',7,14,8000,'2023-05-03 09:34:39','2023-05-03 09:34:39',0,'saved for future loan'),(439,'2023-05-05',7,21,60,'2023-05-05 10:13:48','2023-05-05 10:13:48',0,'chips'),(440,'2023-05-08',7,21,280,'2023-05-08 09:52:25','2023-05-08 09:52:25',0,'afzal'),(441,'2023-05-08',7,35,80,'2023-05-08 09:52:50','2023-05-08 09:52:50',0,'office'),(442,'2023-05-10',7,8,250,'2023-05-10 10:40:29','2023-05-10 10:40:29',0,'for riya operation'),(443,'2023-05-10',7,24,190,'2023-05-10 10:40:50','2023-05-10 10:40:50',0,'moov'),(444,'2023-05-10',7,21,50,'2023-05-10 10:41:08','2023-05-10 10:41:08',0,'cake'),(445,'2023-05-10',7,14,200,'2023-05-10 10:41:31','2023-05-10 10:41:31',0,'Test'),(446,'2023-05-13',7,21,280,'2023-05-13 08:57:08','2023-05-13 08:57:08',0,'Afzal'),(447,'2023-05-13',7,1,120,'2023-05-13 08:58:17','2023-05-13 08:58:17',0,'hp'),(448,'2023-05-13',7,21,70,'2023-05-13 08:58:58','2023-05-13 08:58:58',0,'Mall of travancore'),(449,'2023-05-13',7,14,100,'2023-05-13 08:59:19','2023-05-13 08:59:19',0,'LED bulb'),(450,'2023-05-13',7,16,5500,'2023-05-13 09:02:40','2023-05-13 09:02:40',1,NULL),(451,'2023-05-13',7,14,5500,'2023-05-13 09:03:28','2023-05-13 09:03:28',0,'loan reserved'),(452,'2023-05-21',7,26,1000,'2023-05-21 02:27:00','2023-05-21 02:27:00',0,'payattuvila '),(453,'2023-05-21',7,24,63,'2023-05-21 02:28:01','2023-05-21 02:28:01',0,'chia'),(454,'2023-05-21',7,24,17,'2023-05-21 02:28:36','2023-05-21 02:28:36',0,'flax'),(455,'2023-05-21',7,24,41,'2023-05-21 02:29:25','2023-05-21 02:29:25',0,'black raisin'),(456,'2023-05-21',7,24,87,'2023-05-21 02:30:06','2023-05-21 02:30:06',0,'broccoli - 470g'),(457,'2023-05-21',7,14,200,'2023-05-21 02:31:33','2023-05-21 02:31:33',0,'wife leggings'),(458,'2023-05-21',7,14,120,'2023-05-21 02:32:06','2023-05-21 02:32:06',0,'shake and halwa'),(459,'2023-05-21',7,37,5000,'2023-05-21 02:33:05','2023-05-21 02:33:05',0,'pappa'),(460,'2023-05-27',7,21,305,'2023-05-27 09:07:52','2023-05-27 09:07:52',0,'afzal'),(461,'2023-05-27',7,21,40,'2023-05-27 09:08:12','2023-05-27 09:08:12',0,'lemon'),(462,'2023-05-27',7,14,60,'2023-05-27 09:08:42','2023-05-27 09:08:42',0,'cap batter'),(463,'2023-06-01',7,1,650,'2023-05-27 09:09:34','2023-05-27 09:09:34',0,'hp'),(464,'2023-06-02',7,15,33430,'2023-06-02 09:39:27','2023-06-02 09:39:27',1,NULL),(465,'2023-06-02',7,1,4000,'2023-06-02 09:42:11','2023-06-02 09:42:11',0,'hp'),(466,'2023-06-02',7,3,5500,'2023-06-02 10:10:40','2023-06-02 10:10:40',0,'amma'),(467,'2023-06-02',7,5,5150,'2023-06-02 10:12:22','2023-06-02 10:12:22',0,'amma'),(468,'2023-06-02',7,2,5000,'2023-06-02 10:13:23','2023-06-02 10:13:23',0,'expense'),(470,'2023-06-02',7,24,500,'2023-06-02 10:15:23','2023-06-02 10:15:23',0,'gym'),(471,'2023-06-02',7,14,600,'2023-06-02 10:17:35','2023-06-02 10:17:35',0,'sreeraj'),(472,'2023-06-02',7,4,3000,'2023-06-02 10:18:25','2023-06-02 10:18:25',0,'expense'),(473,'2023-06-02',7,33,5000,'2023-06-02 10:19:06','2023-06-02 10:19:06',1,NULL),(474,'2023-06-06',7,14,5000,'2023-06-05 21:05:35','2023-06-05 21:05:35',0,'fxtm'),(475,'2023-06-11',7,5,5500,'2023-06-10 20:38:40','2023-06-10 20:38:40',0,'preserve for next month'),(476,'2023-06-11',7,21,500,'2023-06-12 21:17:15','2023-06-12 21:17:15',0,'afzal+rahath'),(477,'2023-06-28',7,30,510,'2023-06-28 09:27:15','2023-06-28 09:27:15',0,'yamalube and oil filter'),(478,'2023-06-28',7,30,998,'2023-06-28 09:28:11','2023-06-28 09:28:11',0,'break pad and nut'),(479,'2023-06-28',7,30,207,'2023-06-28 09:29:42','2023-06-28 09:29:42',0,'spark plug'),(480,'2023-06-28',7,30,245,'2023-06-28 09:30:05','2023-06-28 09:30:05',0,'Air filter'),(481,'2023-06-28',7,30,567,'2023-06-28 09:38:38','2023-06-28 09:38:38',0,'paid service charge '),(482,'2023-06-28',7,30,225,'2023-06-28 09:39:22','2023-06-28 09:39:22',0,'charge - chain clean and lube'),(483,'2023-06-28',7,30,177,'2023-06-28 09:39:58','2023-06-28 09:39:58',0,'break pad replace charge'),(484,'2023-06-28',7,30,48,'2023-06-28 09:40:23','2023-06-28 09:40:23',0,'nut tighting charges'),(485,'2023-06-28',7,29,285,'2023-06-28 23:19:49','2023-06-28 23:19:49',0,'park avenue neo'),(486,'2023-06-28',7,24,48,'2023-06-28 23:22:10','2023-06-28 23:22:10',0,'kiwi'),(487,'2023-06-28',7,24,45,'2023-06-28 23:22:38','2023-06-28 23:22:38',0,'chia - 100g'),(488,'2023-06-28',7,24,76,'2023-06-28 23:23:10','2023-06-28 23:23:10',0,'pumpkin seed 100g'),(489,'2023-06-29',7,24,28,'2023-06-28 23:23:48','2023-06-28 23:23:48',0,'yello kismis 100g'),(490,'2023-06-28',7,24,207,'2023-06-28 23:24:23','2023-06-28 23:24:23',0,'dates 1 kg '),(491,'2023-06-28',7,21,500,'2023-06-28 23:25:25','2023-06-28 23:25:25',0,'aiswarya'),(492,'2023-06-28',7,14,60,'2023-06-28 23:25:48','2023-06-28 23:25:48',0,'travel'),(493,'2023-06-28',7,14,105,'2023-06-28 23:26:52','2023-06-28 23:26:52',0,'kammal, flower, hall tiket'),(494,'2023-06-29',7,40,3000,'2023-06-28 23:28:09','2023-06-28 23:28:09',0,'wood cutting '),(495,'2023-06-29',7,40,400,'2023-06-28 23:28:32','2023-06-28 23:28:32',0,'wood travel '),(496,'2023-07-03',7,15,33430,'2023-07-03 10:12:13','2023-07-03 10:12:13',1,NULL),(497,'2023-07-03',7,4,3000,'2023-07-03 10:14:49','2023-07-03 10:14:49',0,'fees, travel'),(498,'2023-07-03',7,37,1000,'2023-07-03 10:16:53','2023-07-03 10:16:53',0,'pappa current bill'),(499,'2023-07-03',7,24,500,'2023-07-03 10:18:36','2023-07-03 10:18:36',0,'gym '),(500,'2023-07-03',7,14,1000,'2023-07-03 10:19:30','2023-07-03 10:19:30',0,'my expense'),(501,'2023-07-03',7,14,1500,'2023-07-03 10:21:54','2023-07-03 10:21:54',0,'ring'),(502,'2023-07-03',7,30,500,'2023-07-03 10:24:42','2023-07-03 10:24:42',0,'service'),(503,'2023-07-03',7,2,5000,'2023-07-03 10:26:33','2023-07-03 10:26:33',0,'expense'),(504,'2023-07-03',7,1,1000,'2023-07-03 10:35:04','2023-07-03 10:35:04',0,'hp'),(505,'2023-07-03',7,1,3000,'2023-07-03 10:37:56','2023-07-03 10:37:56',0,'hp'),(506,'2023-07-03',7,5,5100,'2023-07-03 10:39:15','2023-07-03 10:39:15',0,'amma'),(507,'2023-07-03',7,5,5500,'2023-07-03 10:39:28','2023-07-03 10:39:28',0,'amma'),(508,'2023-07-18',7,40,3600,'2023-07-19 15:53:53','2023-07-19 15:53:53',0,'vanam vettu - 1200x3'),(509,'2023-07-19',7,40,2400,'2023-07-19 15:54:23','2023-07-19 15:54:23',0,'vanam vettu - 1200 x 2'),(510,'2023-07-19',7,40,34000,'2023-07-19 10:40:01','2023-07-19 10:40:01',0,'à´•à´°à´¿à´™àµà´•à´²àµà´²àµ  8500 x 4'),(511,'2023-07-05',7,40,1000,'2023-07-19 10:44:20','2023-07-19 10:44:20',0,'à´ªàµà´²à´¾à´µà´¿à´¨àµà´±àµ† à´¤à´Ÿà´¿ à´µà´¾à´™àµà´™à´¿à´¯à´¤àµ '),(512,'2023-07-19',7,40,200,'2023-07-19 10:50:38','2023-07-19 10:50:38',0,'à´ªà´²à´¹à´¾à´°à´‚ '),(513,'2023-07-20',7,40,2600,'2023-07-20 21:14:15','2023-07-20 21:14:15',0,'à´µà´¾à´¨à´‚ à´µàµ†à´Ÿàµà´Ÿàµ extra time'),(514,'2023-07-20',7,40,8500,'2023-07-20 21:14:58','2023-07-20 21:14:58',0,'à´•à´°à´¿à´™àµà´•à´²àµà´²àµ '),(515,'2023-07-20',7,40,4200,'2023-07-20 21:15:50','2023-07-20 21:15:50',0,'à´®àµ‡à´¸àµà´¤à´¿à´°à´¿ à´ªà´£à´¿ 4 à´ªàµ‡à´°àµ '),(516,'2023-07-20',7,40,160,'2023-07-20 21:16:28','2023-07-20 21:16:28',0,'à´•à´Ÿà´¿ '),(517,'2023-07-21',7,40,5200,'2023-07-20 21:18:16','2023-07-20 21:18:16',0,'à´®àµ‡à´¸àµà´¤à´¿à´°à´¿ à´ªà´£à´¿ 5 à´ªàµ‡à´°àµ '),(518,'2023-07-22',7,40,6000,'2023-07-24 09:32:24','2023-07-24 09:32:24',0,'à´®àµ‡à´¸àµà´¤à´¿à´°à´¿ à´ªà´£à´¿ 6 à´ªàµ‡à´°àµ '),(519,'2023-07-22',7,40,144,'2023-07-24 09:55:46','2023-07-24 09:55:46',0,'à´ªà´²à´¹à´¾à´°à´‚ + à´ªà´¾àµ½'),(520,'2023-07-21',7,40,130,'2023-07-24 09:58:25','2023-07-24 09:58:25',0,'à´ªà´²à´¹à´¾à´°à´‚'),(521,'2023-07-19',7,40,100,'2023-07-24 10:00:37','2023-07-24 10:00:37',0,'à´ªà´²à´¹à´¾à´°à´‚ '),(522,'2023-07-24',7,41,50000,'2023-07-24 10:04:13','2023-07-24 10:04:13',1,NULL),(523,'2023-07-24',7,42,90000,'2023-07-24 10:08:49','2023-07-24 10:08:49',1,NULL),(524,'2023-07-24',7,14,400,'2023-07-24 10:09:59','2023-07-24 10:09:59',0,'edwin sir sent off'),(525,'2023-07-21',7,21,360,'2023-07-24 10:10:40','2023-07-24 10:10:40',0,'afzal'),(526,'2023-07-21',7,14,500,'2023-07-24 10:11:07','2023-07-24 10:11:07',0,'appuppan'),(527,'2023-07-25',7,40,12750,'2023-07-25 08:22:54','2023-07-25 08:22:54',0,'hollow bricks 4\" 34'),(528,'2023-07-25',7,40,6750,'2023-07-25 08:23:32','2023-07-25 08:23:32',0,'hollow bricks 6\" 45'),(529,'2023-07-26',7,40,5100,'2023-07-26 07:54:21','2023-07-26 07:54:21',0,'à´¤à´¾à´¬àµ‚à´•àµ à´•àµ†à´Ÿàµà´Ÿàµ 5 à´ªàµ‡à´°àµ '),(530,'2023-07-26',7,40,5700,'2023-07-26 07:55:13','2023-07-26 07:55:13',0,'à´ªà´¾à´±à´ªàµà´ªàµŠà´Ÿà´¿ 1 à´²àµ‹à´¡àµ '),(531,'2023-07-26',7,40,2160,'2023-07-26 07:56:54','2023-07-26 07:56:54',0,'à´¸à´¿à´®à´¨àµà´±àµ 6 à´ªà´¾à´•àµà´•à´±àµà´±àµ  -360 x 6'),(532,'2023-07-26',7,40,100,'2023-07-26 07:57:28','2023-07-26 07:57:28',0,'à´¸à´¿à´®à´¨àµà´±àµ à´“à´Ÿàµà´Ÿàµ‹ à´šà´¾àµ¼à´œàµ '),(533,'2023-07-26',7,40,190,'2023-07-26 07:58:37','2023-07-26 07:58:37',0,'à´ªà´²à´¹à´¾à´°à´‚ + à´ªà´¾àµ½'),(534,'2023-07-27',7,40,5100,'2023-07-27 10:04:22','2023-07-27 10:04:22',0,'à´®àµ‡à´¸àµà´¤à´¿à´°à´¿ à´ªà´£à´¿ 5 à´ªàµ‡à´°àµ '),(535,'2023-07-27',7,40,5250,'2023-07-27 10:07:42','2023-07-27 10:07:42',0,'à´¤à´¾à´¬àµ‚à´•àµ 4 \" 150x35'),(536,'2023-07-27',7,40,250,'2023-07-27 10:09:20','2023-07-27 10:09:20',0,'à´µà´£àµà´Ÿà´¿ à´šà´¾àµ¼à´œàµ '),(537,'2023-07-27',7,40,80,'2023-07-27 10:10:26','2023-07-27 10:10:26',0,'à´ªà´¾àµ½ + à´ªà´²à´¹à´¾à´°à´‚ '),(538,'2023-07-29',7,40,-26336,'2023-07-29 09:36:20','2023-07-29 09:36:20',0,'à´¬à´¾à´•àµà´•à´¿ à´•à´¿à´Ÿàµà´Ÿà´¿à´¯à´¤àµ '),(539,'2023-08-01',7,15,31273,'2023-08-01 08:58:13','2023-08-01 08:58:13',1,NULL),(540,'2023-08-01',7,4,3200,'2023-08-01 08:59:05','2023-08-01 08:59:05',0,'with ayalkkoottam'),(541,'2023-08-01',7,24,53,'2023-08-01 09:00:12','2023-08-01 09:00:12',0,'pumpkin seed 100g'),(542,'2023-08-01',7,24,89,'2023-08-01 09:00:56','2023-08-01 09:00:56',0,'almond 100g'),(543,'2023-08-01',7,24,57,'2023-08-01 09:01:32','2023-08-01 09:01:32',0,'white raisin 200g'),(544,'2023-08-01',7,24,82,'2023-08-01 09:02:07','2023-08-01 09:02:07',0,'cashew 100g'),(545,'2023-08-10',7,5,11000,'2023-08-10 10:39:19','2023-08-10 10:39:19',0,'amma closed'),(546,'2023-08-10',7,5,5050,'2023-08-10 10:39:40','2023-08-10 10:39:40',0,'amma'),(547,'2023-08-10',7,24,500,'2023-08-10 10:39:58','2023-08-10 10:39:58',0,'gym'),(548,'2023-08-10',7,1,4000,'2023-08-10 10:40:34','2023-08-10 10:40:34',0,'hp '),(549,'2023-08-10',7,14,850,'2023-08-10 10:42:17','2023-08-10 10:42:17',0,'forex'),(550,'2023-08-11',7,16,6000,'2023-08-11 09:10:27','2023-08-11 09:10:27',1,NULL),(551,'2022-11-01',7,41,100000,'2023-08-11 09:13:06','2023-08-11 09:13:06',1,NULL),(552,'2023-08-12',7,29,1011,'2023-08-12 09:29:31','2023-08-12 09:29:31',0,'Onam - MR '),(553,'2023-08-12',7,29,535,'2023-08-12 09:30:22','2023-08-12 09:30:22',0,'Ameer - devu'),(554,'2023-08-12',7,14,6300,'2023-08-12 09:32:13','2023-08-12 09:32:13',0,'ring 0.99gx5465+other charges'),(555,'2023-08-12',7,14,670,'2023-08-12 09:34:10','2023-08-12 09:34:10',0,'sandal + footwear'),(556,'2023-08-12',7,29,430,'2023-08-12 09:35:03','2023-08-12 09:35:03',0,'Onam - night and ammamma'),(557,'2023-08-12',7,21,335,'2023-08-12 09:35:31','2023-08-12 09:35:31',0,'afsal'),(558,'2023-08-12',7,29,350,'2023-08-12 09:36:02','2023-08-12 09:36:02',0,'Meenakshi - devu'),(559,'2023-08-12',7,14,2000,'2023-08-12 09:36:23','2023-08-12 09:36:23',0,'Onam achan amma'),(560,'2023-08-12',7,14,2000,'2023-08-12 09:36:50','2023-08-12 09:36:50',0,'Onam pappa amma'),(561,'2023-08-12',7,29,1500,'2023-08-12 09:41:34','2023-08-12 09:41:34',0,'Onam jeans and shirt'),(562,'2023-08-08',7,43,68,'2023-08-17 08:51:22','2023-08-17 08:51:22',1,NULL),(563,'2023-08-14',7,43,38,'2023-08-17 08:52:23','2023-08-17 08:52:23',1,NULL),(564,'2023-08-19',7,14,150,'2023-08-19 11:12:07','2023-08-19 11:12:07',0,'mobile screen guard'),(565,'2023-09-03',7,15,33430,'2023-09-03 11:09:43','2023-09-03 11:09:43',1,NULL),(566,'2023-09-03',7,4,3500,'2023-09-03 11:10:30','2023-09-03 11:10:30',0,'include fees and sangam'),(567,'2023-09-03',7,24,722,'2023-09-03 11:11:05','2023-09-03 11:11:05',0,'fig, walnut etc'),(568,'2023-09-03',7,39,195,'2023-09-03 11:11:47','2023-09-03 11:11:47',0,'tablet and pankajakasthuri'),(569,'2023-09-03',7,14,850,'2023-09-03 11:12:26','2023-09-03 11:12:26',0,'Forex trading'),(570,'2023-09-03',7,24,500,'2023-09-03 11:12:52','2023-09-03 11:12:52',0,'gym'),(571,'2023-09-03',7,1,4000,'2023-09-03 11:14:09','2023-09-03 11:14:09',0,'hp'),(572,'2023-09-03',7,2,5000,'2023-09-03 11:14:41','2023-09-03 11:14:41',0,'amma'),(573,'2023-09-03',7,14,1000,'2023-09-03 11:15:15','2023-09-03 11:15:15',0,'my expense'),(574,'2023-09-03',7,39,1000,'2023-09-03 11:22:04','2023-09-03 11:22:04',0,'attukal'),(575,'2023-09-03',7,14,3000,'2023-09-03 11:40:54','2023-09-03 11:40:54',0,'sangam'),(576,'2023-09-09',7,14,2000,'2023-09-11 10:59:04','2023-09-11 10:59:04',0,'pappa'),(577,'2023-09-11',7,21,220,'2023-09-11 10:59:26','2023-09-11 10:59:26',0,'ajwa'),(578,'2023-09-22',7,39,150,'2023-09-22 20:57:39','2023-09-22 20:57:39',0,'Attukal devi - semen test'),(579,'2023-09-22',7,39,120,'2023-09-22 20:58:16','2023-09-22 20:58:16',0,'Attukal devi - admission'),(580,'2023-09-22',7,39,400,'2023-09-22 21:00:16','2023-09-22 21:00:16',0,'Attukal devi - AFC scaning'),(581,'2023-09-22',7,39,270,'2023-09-22 21:01:57','2023-09-22 21:01:57',0,'Attukal devi - sr Blood test'),(582,'2023-09-22',7,39,770,'2023-09-22 21:02:37','2023-09-22 21:02:37',0,'Attukal devi - sou blood test'),(583,'2023-09-22',7,39,210,'2023-09-22 21:04:14','2023-09-22 21:04:14',0,'Attukal devi - medicine'),(584,'2023-09-22',7,39,420,'2023-09-22 21:09:53','2023-09-22 21:09:53',0,'food saranya mess 380'),(585,'2023-09-23',7,39,435,'2023-09-23 08:04:11','2023-09-23 08:04:11',0,'atukal devi - medicine'),(586,'2023-09-23',7,21,63,'2023-09-23 08:04:39','2023-09-23 08:04:39',0,'rahath lemon'),(587,'2023-09-23',7,21,320,'2023-09-23 08:05:12','2023-09-23 08:05:12',0,'Afzal'),(588,'2023-09-03',7,5,5500,'2023-09-23 08:06:50','2023-09-23 08:06:50',0,'sangam'),(589,'2023-09-23',7,14,3250,'2023-09-23 08:07:40','2023-09-23 08:07:40',0,'include small payments'),(590,'2023-09-29',7,40,18500,'2023-09-29 09:10:52','2023-09-29 09:10:52',0,'à´à´Ÿà´µà´¾à´Ÿàµ'),(591,'2023-09-29',7,14,260,'2023-09-29 09:11:21','2023-09-29 09:11:21',0,'à´à´Ÿà´µà´¾à´Ÿàµ - auto charge'),(592,'2023-09-29',7,14,100,'2023-09-29 09:16:55','2023-09-29 09:16:55',0,'à´à´Ÿà´µà´¾à´Ÿàµ - photo'),(593,'2023-09-29',7,14,150,'2023-09-29 09:24:58','2023-09-29 09:24:58',0,'ration'),(594,'2023-09-29',7,26,100,'2023-09-29 09:26:05','2023-09-29 09:26:05',0,'attukal'),(595,'2023-09-29',7,14,80,'2023-09-29 09:26:46','2023-09-29 09:26:46',0,'snacks'),(596,'2023-09-29',7,41,200000,'2023-10-01 08:20:33','2023-10-01 08:20:33',1,NULL),(597,'2023-10-01',7,39,214,'2023-10-01 08:23:31','2023-10-01 08:23:31',0,'Pregnancy'),(598,'2023-10-01',7,24,300,'2023-10-01 08:32:26','2023-10-01 08:32:26',0,'seed, cashew, plum rama'),(599,'2023-10-01',7,21,470,'2023-10-01 08:33:14','2023-10-01 08:33:14',0,'rahath'),(600,'2023-10-01',7,21,45,'2023-10-01 08:45:21','2023-10-01 08:45:21',0,'milma ice cream'),(601,'2023-10-01',7,4,2500,'2023-10-01 08:49:24','2023-10-01 08:49:24',0,'all expense'),(602,'2023-09-25',7,43,36,'2023-10-01 08:50:10','2023-10-01 08:50:10',1,NULL),(603,'2023-09-26',7,43,15,'2023-10-01 08:50:22','2023-10-01 08:50:22',1,NULL),(604,'2023-10-03',7,15,32130,'2023-10-03 11:52:06','2023-10-03 11:52:06',1,NULL),(605,'2023-10-04',7,1,4000,'2023-10-04 08:53:37','2023-10-04 08:53:37',0,'hp'),(606,'2023-10-04',7,5,5500,'2023-10-04 08:54:00','2023-10-04 08:54:00',0,'sangam'),(607,'2023-10-04',7,2,5000,'2023-10-04 08:54:37','2023-10-04 08:54:37',0,'my'),(608,'2023-10-04',7,14,5000,'2023-10-04 08:55:09','2023-10-04 08:55:09',0,'one card'),(609,'2023-10-05',7,30,610,'2023-10-05 09:20:20','2023-10-05 09:20:20',0,'service - 20000'),(610,'2023-10-05',7,39,820,'2023-10-05 09:22:04','2023-10-05 09:22:04',0,'attukal'),(611,'2023-10-05',7,21,240,'2023-10-05 09:23:08','2023-10-05 09:23:08',0,'ajwa'),(612,'2023-10-05',7,40,700,'2023-10-05 09:23:29','2023-10-05 09:23:29',0,'tarpolin'),(613,'2023-10-05',7,14,30,'2023-10-05 09:25:17','2023-10-05 09:25:17',0,'tea'),(614,'2023-10-14',7,43,6,'2023-10-14 00:31:06','2023-10-14 00:31:06',1,NULL),(615,'2023-10-16',7,14,200,'2023-10-16 09:21:45','2023-10-16 09:21:45',0,'appuppan'),(616,'2023-10-19',7,39,660,'2023-10-19 08:46:01','2023-10-19 08:46:01',0,'Attukal- adm, scan, tab'),(617,'2023-10-19',7,6,348,'2023-10-19 08:46:20','2023-10-19 08:46:20',0,'leo'),(618,'2023-10-19',7,21,477,'2023-10-19 08:46:48','2023-10-19 08:46:48',0,'Imperial Kitchen'),(619,'2023-10-19',7,21,70,'2023-10-19 08:47:18','2023-10-19 08:47:18',0,'evenign coffee snack'),(620,'2023-10-19',7,14,360,'2023-10-19 08:47:44','2023-10-19 08:47:44',0,'jj mart'),(621,'2023-10-21',7,30,170,'2023-10-21 11:13:13','2023-10-21 11:13:13',0,'paint');
/*!40000 ALTER TABLE `expense_amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense_names`
--

DROP TABLE IF EXISTS `expense_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense_names` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense_names`
--

LOCK TABLES `expense_names` WRITE;
/*!40000 ALTER TABLE `expense_names` DISABLE KEYS */;
INSERT INTO `expense_names` VALUES (1,'petrol','2022-05-30 18:30:00','2022-05-30 18:30:00',0),(2,'home',NULL,NULL,0),(3,'Chitty','2022-06-07 10:45:14','2022-06-07 10:45:14',0),(4,'wife','2022-06-07 10:47:46','2022-06-07 10:47:46',0),(5,'Loan','2022-06-07 10:48:57','2022-06-07 10:48:57',0),(6,'Entertainment','2022-06-07 10:50:00','2022-06-07 10:50:00',0),(7,'Education','2022-06-07 10:50:11','2022-06-07 10:50:11',0),(8,'Donation','2022-06-07 10:54:19','2022-06-07 10:54:19',0),(14,'Other','2022-06-11 04:24:03','2022-06-11 04:24:03',0),(15,'NIC','2022-06-11 10:53:46','2022-06-11 10:53:46',1),(16,'Prathibha','2022-06-11 10:54:31','2022-06-11 10:54:31',1),(17,'Tuition','2022-06-11 10:58:28','2022-06-11 10:58:28',1),(21,'Food','2022-06-13 10:30:20','2022-06-13 10:30:20',0),(23,'Charges','2022-06-13 10:33:29','2022-06-13 10:33:29',0),(24,'health','2022-06-21 11:03:45','2022-06-21 11:03:45',0),(25,'recharge','2022-07-02 10:10:05','2022-07-02 10:10:05',0),(26,'Devotional','2022-07-02 10:11:48','2022-07-02 10:11:48',0),(28,'Trip','2022-07-09 22:44:49','2022-07-09 22:44:49',0),(29,'Dress','2022-07-09 22:46:57','2022-07-09 22:46:57',0),(30,'Bike','2022-07-09 22:47:44','2022-07-09 22:47:44',0),(33,'Debt Earns','2022-08-02 10:29:56','2022-08-02 10:29:56',1),(34,'Debt Paid','2022-08-02 10:30:12','2022-08-02 10:30:12',0),(35,'Treat','2022-08-05 11:07:35','2022-08-05 11:07:35',0),(36,'Debt get','2022-08-28 08:38:30','2022-08-28 08:38:30',1),(37,'Debt given','2022-08-28 08:38:45','2022-08-28 08:38:45',0),(38,'Chitty Earns','2022-10-22 20:50:44','2022-10-22 20:50:44',1),(39,'Hospital','2023-02-15 10:30:36','2023-02-15 10:30:36',0),(40,'home Construction','2023-06-28 23:27:38','2023-06-28 23:27:38',0),(41,'Loan Taken','2023-07-24 10:03:47','2023-07-24 10:03:47',1),(42,'stock sell','2023-07-24 10:08:27','2023-07-24 10:08:27',1),(43,'Divident','2023-08-17 08:45:40','2023-08-17 08:45:40',1);
/*!40000 ALTER TABLE `expense_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `expense_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `expense_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_years`
--

DROP TABLE IF EXISTS `financial_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial_years` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_years`
--

LOCK TABLES `financial_years` WRITE;
/*!40000 ALTER TABLE `financial_years` DISABLE KEYS */;
INSERT INTO `financial_years` VALUES (1,'2021-04-01','2022-03-31','2022-06-10 18:30:00','2022-06-10 18:30:00',NULL),(2,'2022-04-01','2023-03-31','2022-06-10 18:30:00','2022-06-10 18:30:00','2022-23'),(7,'2023-04-01','2024-03-31','2023-04-03 20:12:59','2023-04-03 20:12:59','2023-24');
/*!40000 ALTER TABLE `financial_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forex_orders`
--

DROP TABLE IF EXISTS `forex_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forex_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci,
  `profit` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forex_orders`
--

LOCK TABLES `forex_orders` WRITE;
/*!40000 ALTER TABLE `forex_orders` DISABLE KEYS */;
INSERT INTO `forex_orders` VALUES (2,'2023-08-17','1 .27576 à´¯à´¿àµ½ .1 à´µà´šàµà´šàµ à´°à´£àµà´Ÿàµ à´àµ»à´Ÿàµà´°à´¿ à´à´Ÿàµà´¤àµà´¤àµ. buy à´¸àµˆà´¡àµ à´ªàµ‹à´•àµà´‚ à´à´¨àµà´¨à´¾à´£àµ à´ªàµà´°à´¤àµ€à´•àµà´·.\r\n30/08/23 1.26344 à´‡àµ½ à´±àµ†à´¸à´¿à´¸àµà´±àµà´±àµ»à´¸àµ à´†à´¯à´¤àµ à´•àµŠà´£àµà´Ÿàµ à´¸àµ†àµ½ à´“àµ¼à´¡àµ¼ à´à´Ÿàµà´¤àµà´¤àµ. à´ªà´•àµà´·àµ† à´‰à´ªà´¸àµˆà´¡àµ à´à´•àµà´·àµà´ªàµ†à´•àµà´Ÿàµ à´šàµ†à´¯àµà´¤à´¤àµ à´•àµŠà´£àµà´Ÿàµ 1.26555 à´‡àµ½ à´¸àµà´±àµà´±àµ‹à´ªàµà´ªàµ à´²àµ‹à´¸àµ à´¸àµ†à´±àµà´±àµ à´šàµ†à´¯àµà´¤àµ. à´ªà´´à´¯ à´…à´¨à´²àµˆà´¸àµ à´ªàµ‹à´²àµ† à´‰à´ªà´¸àµˆà´¡àµ à´ªàµ‹à´•àµà´•à´¯àµà´‚ à´ˆ à´Ÿàµà´°àµ‡à´¡àµ à´‡àµ½ 21.1 à´¨à´·àµà´Ÿà´‚ à´‰à´£àµà´Ÿà´¾à´¯à´¿.',0.00,'2023-08-17 11:12:10','2023-08-30 23:32:09');
/*!40000 ALTER TABLE `forex_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forex_trades`
--

DROP TABLE IF EXISTS `forex_trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forex_trades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `entry` double DEFAULT NULL,
  `lot` double(8,2) DEFAULT NULL,
  `type` double(8,2) DEFAULT NULL,
  `exit` double DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forex_trades_order_id_foreign` (`order_id`),
  CONSTRAINT `forex_trades_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `forex_orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forex_trades`
--

LOCK TABLES `forex_trades` WRITE;
/*!40000 ALTER TABLE `forex_trades` DISABLE KEYS */;
INSERT INTO `forex_trades` VALUES (2,2,1.25633,0.10,0.00,0,0.00,'2023-08-17 11:12:10','2023-08-31 00:02:02'),(3,2,1.26344,0.10,1.00,1.26555,-21.10,'2023-08-18 10:29:19','2023-08-31 00:01:39'),(4,2,1.27576,0.10,0.00,NULL,NULL,'2023-08-30 23:50:16','2023-08-31 00:19:20'),(5,2,1.27604,0.10,0.00,NULL,NULL,'2023-08-31 00:02:32','2023-08-31 00:19:28');
/*!40000 ALTER TABLE `forex_trades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_05_18_104433_create_sessions_table',1),(7,'2022_05_23_162053_create_stock_names_table',2),(8,'2022_05_24_160023_create_expense_names_table',2),(9,'2022_05_27_164153_create_expenses_table',3),(10,'2022_06_11_080634_create_financial_years_table',4),(11,'2022_06_11_084814_create_expense_amounts_table',5),(12,'2022_06_11_160535_state_added',6),(13,'2022_06_11_164159_state_added_amounts',7),(14,'2022_06_18_160733_create_stocks_table',8),(15,'2022_06_18_162425_create_stock_sells_table',9),(16,'2022_06_27_154156_create_months_table',10),(17,'2022_07_17_145713_create_components_names_table',11),(18,'2022_07_20_162847_create_bill_amounts_table',12),(19,'2022_07_23_162916_create_component_prices_table',13),(20,'2022_07_31_045855_financial_years',14),(21,'2022_08_07_052247_user_cahnge',15),(22,'2022_08_11_162838_profit_column',16),(23,'2022_09_14_124012_create_blog-users_table',17),(24,'2022_09_14_124921_create_blog_users_table',18),(25,'2022_09_14_131008_create_blog_users_table',19),(26,'2022_09_19_162706_create_stock_analys_table',20),(27,'2022_09_24_164021_stock_code',21),(28,'2022_09_24_164516_stock_buy_code',22),(29,'2022_09_24_165018_stock_buy_status',23),(30,'2022_09_25_033042_stock_name_code',24),(31,'2022_09_27_021743_create_priorities_table',25),(32,'2022_09_27_162608_create_plan_items_table',26),(33,'2022_09_28_165159_create_product_expiries_table',27),(34,'2022_10_23_021231_create_anniversaries_table',28),(35,'2016_06_01_000001_create_oauth_auth_codes_table',29),(36,'2016_06_01_000002_create_oauth_access_tokens_table',29),(37,'2016_06_01_000003_create_oauth_refresh_tokens_table',29),(38,'2016_06_01_000004_create_oauth_clients_table',29),(39,'2016_06_01_000005_create_oauth_personal_access_clients_table',29),(40,'2022_10_31_075946_blog_user_table_updation',29),(41,'2023_02_12_144005_expense_name',29),(42,'2023_02_18_084434_create_settings_table',30),(43,'2023_02_18_094010_logo_and_favicon',31),(44,'2023_02_19_022947_sidenav_icon',32),(45,'2023_02_19_145308_create_tradings_table',33),(46,'2023_03_09_021207_create_dividents_table',34),(47,'2023_03_16_143738_create_calculations_table',35),(48,'2023_03_24_142438_trading_sell_data',36),(49,'2023_03_24_145427_calculation_active',37),(50,'2023_08_09_155853_create_quizzes_table',38),(51,'2023_08_14_153752_create_todos_table',39),(52,'2023_08_17_154417_create_forex_orders_table',40),(53,'2023_08_17_154451_create_forex_trades_table',40),(54,'2023_08_17_163922_description',41),(55,'2023_08_18_163017_create_stock_orders_table',42),(56,'2023_08_31_052553_alter_table_add_entry_column',43),(57,'2023_09_21_151300_alter_anniversary',44),(58,'2023_10_11_150418_alter_programinsertion',45);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `months`
--

DROP TABLE IF EXISTS `months`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `months` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `months`
--

LOCK TABLES `months` WRITE;
/*!40000 ALTER TABLE `months` DISABLE KEYS */;
/*!40000 ALTER TABLE `months` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('sreerajs728@gmail.com','$2y$10$LvybwueyZaJKMwfC4/WNzOxCUohtTliKvVe9/DUcIdfUnh7yZMuki','2023-02-16 11:24:47');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_items`
--

DROP TABLE IF EXISTS `plan_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_amount` int DEFAULT NULL,
  `priority` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plan_items_priority_foreign` (`priority`),
  CONSTRAINT `plan_items_priority_foreign` FOREIGN KEY (`priority`) REFERENCES `priorities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_items`
--

LOCK TABLES `plan_items` WRITE;
/*!40000 ALTER TABLE `plan_items` DISABLE KEYS */;
INSERT INTO `plan_items` VALUES (1,'Wife Accessories',300,1,'2022-09-27 11:20:35','2022-09-27 11:20:35'),(2,'Kollin glass cleaner',65,4,'2022-10-03 08:53:35','2022-10-03 08:53:35');
/*!40000 ALTER TABLE `plan_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priorities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `priority_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_code` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorities`
--

LOCK TABLES `priorities` WRITE;
/*!40000 ALTER TABLE `priorities` DISABLE KEYS */;
INSERT INTO `priorities` VALUES (1,'Extreme High Priority',100,'2022-09-26 20:57:48','2022-09-26 20:57:48'),(2,'Very High Priority',101,'2022-09-27 11:19:20','2022-09-27 11:19:20'),(3,'High Priority',102,'2022-09-27 11:19:38','2022-09-27 11:19:38'),(4,'Medium Priority',103,'2022-09-27 11:19:57','2022-09-27 11:19:57');
/*!40000 ALTER TABLE `priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_expiries`
--

DROP TABLE IF EXISTS `product_expiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_expiries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_expiries`
--

LOCK TABLES `product_expiries` WRITE;
/*!40000 ALTER TABLE `product_expiries` DISABLE KEYS */;
INSERT INTO `product_expiries` VALUES (1,'Sreeraj Mobile Validity','2022-09-19','2022-10-19','2022-09-28 11:33:03','2022-09-28 11:33:03'),(4,'AWS','2022-09-01','2023-09-01','2022-10-05 10:26:27','2022-10-05 10:26:27'),(5,'sreeraj mobile validity','2022-10-20','2022-12-28','2022-10-20 09:35:48','2022-10-20 09:35:48'),(6,'KSEB EXAM','2022-11-25','2023-02-10','2022-11-25 10:50:11','2022-11-25 10:50:11'),(7,'wife mobile','2022-11-30','2023-02-26','2022-11-30 10:18:29','2022-11-30 10:18:29'),(8,'Sreeraj mobile validity','2022-12-29','2023-02-13','2022-12-29 11:05:33','2022-12-29 11:05:33');
/*!40000 ALTER TABLE `product_expiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `std` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audioName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (2,2023,'lp','2023/quiz/lp/1697819183.webp','2023/quiz/lp/1697905121.mp3','2023/quiz/lp/1697906188.mp4','2023-08-09 10:57:12','2023-08-09 10:57:12'),(3,2023,'up','2023/quiz/up/1697818894.webp','2023/quiz/up/1697905252.mp3','2023/quiz/up/1697905302.mp4',NULL,NULL),(4,2023,'hs','2023/quiz/hs/1697819333.webp','2023/quiz/hs/1697905363.mp3','2023/quiz/hs/1697905384.mp4',NULL,NULL),(5,2023,'hss','2023/quiz/hss/1697812174.jpeg','2023/quiz/hss/1697905433.mp3','2023/quiz/hss/1697905450.mp4',NULL,NULL);
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('05gCdyCuSe4re6vpVPPhAvo2ubA5bK0mE4LK1RgM',NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMldPZDc5eVlsUENUQVRNazVrY3NJUWMyWlJUQzhQTXlMVkhYYjlIOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcmF0aGliaGFfMjAyMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1698546734),('feeq3kJbVX0F3vGvgIGKHxISr8jFQmHPDOhKySwc',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY3JJUG5yVzA3MzFEb2t0Z2NYanJuaXZYQ1NJR0RjSnNuNWhNNEFMRiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRiekRrMlBDQWZIWVpJQjVKNlBEYnIuRWg4M1NmMmh4eHZwWGw0S1h3b0JEQkZ5MFg2TnFUbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90cmFkaW5nX2xpc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1698546960),('taOmysHGiuX9HZPO2k5pRopJYhsSEu9M5NVyAVuz',1,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoicUJwZFNueHFXMFdFUG80V2J6U3B4Tk8weXZmUk1PRFUyNEhHamxpZyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRiekRrMlBDQWZIWVpJQjVKNlBEYnIuRWg4M1NmMmh4eHZwWGw0S1h3b0JEQkZ5MFg2TnFUbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90cmFkaW5nX2xpc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1698593096),('ugksQuKsczevaUD5cdkBJlaiKHNQqKEnxuEgOnCR',NULL,'::1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmdMS0ZyNzVWQ1NvVjQ4UHZYdDRMV09VRU1IWk94VVZBWWlFYjVSbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcmF0aGliaGFfMjAyMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1698593167);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_phone` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` longblob,
  `favicon` longblob,
  `side_icon` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'Daily ME','Your Best Companion','fantasticfour14311@gmail.com',7403291258,'2023-02-18 08:51:38','2023-02-19 09:02:08',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0›\0\0\Ó\0\0\0hq\Óø\0\0\0	pHYs\0\0	\Ù\0\0	\Ù\ç[I\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0 \0IDATxœ\ì\İy|\ÜU½ÿ\ñ\×ù\ÎdOÚ¦[š¶i\Ó,µˆKl³4¬€\nŠ\"k]PÁw~(WQQ®‚Ê¾]/«\Å\ršfi\éÅ‹¥Yº·\é¾eOf\æüş˜\ğ\n\í¤\Í7g¾3\ï\ç_~%™\ïû\É\ä\Ì\ç|\Ï\çc>{\ÙY„~\ò³\ë \"\"\"\"’z<\×DDDD$ui±)\"\"\"\"¾\ÑbSDDDD|£Å¦ˆˆˆˆøF‹M\ñ›\"\"\"\"\â-6EDDD\Ä7ZlŠˆˆˆˆo´\Ø\ßh±)\"\"\"\"¾\ÑbSDDDD|£Å¦ˆˆˆˆøF‹M\ñ›\"\"\"\"\â-6EDDD\Ä7a?_ÜœxRıy~\ŞC\Ê\Ú]¶¹¹\Óu9:fşü\\rr¦¹\Î!r\Ô\n\n¶\ÚG\íw#Q¦®n&‘H¦\ë’&\ò\÷\Ã\×\Å&‘›!\ô~_\ï!Ádh2\Æ,²\Ö\Æ\\G‘£“ÿ_ÀY®cˆ¥¿±s\ç|\×!eª\ê\æc\ìŸ!\ä\ï\ßp‘az\Ş<{¤\ß\î\÷ªÈŠF	Y\ë\ó­$(úB!b\ÆTSU{1p“\ë<rdL\Í\âÓ€³‰¸#2\"ƒÇ \ç\ÄÀû”]½z\Ğu¦D˜y\ó2)œ|\Ö\ßV\ñ[o8Œ0\æ¨~\Ğü]l\Z<,œ½®;¶ûz+	\Æi\Å\ÜW1\à\ZS]ıˆmj\Ú\ä:“ŒL|û<ÿg\0§l\Ş\Ä\é×»$’°ˆ\çq\õ›\ŞJGn.Xn´\ÍËŸq)a…S¾\ö¸q\\\õÜ³\äéƒø\èŠù\'°;;û¨›ş²\ñ\×\÷\ô\ÉK^¡z{¯Û¿ \0B·¸\Î#G ;ÿj`\ÎÔ¾^Nİ¼\Ñu\Z‘y´dV|¡	\äd\\\é:O¢Lm\íq`¿pn{«šş.6Mü\õ¯7‘ 1Àùm-dF£\0§˜šº\óG’0Õ‹\Ç\ğ€s\ÛZÉˆ\é±[	9¹<>£$~aÌ§\íOp›(1¦®.Œ5w™\ów\ï\â\Í{v»$’°1©l\ZU6\åÿ˜\Ü\×\Ç{_ªˆ\Ù\ëÍ‰\'9\r$	1g‚Ø@ø;wW¨EÁwW\Î%V\óa\ÛXÿÇ‘‰]\åmy‘A>\Ü\Ş\æ:¤I\âmtU6\åNÚº…Ò®N°L\"#r½\ë<’€ŸŞš\ä\Ì\õ\í®ÓˆŒHÓ´b\ÚÆ8H\Ø|\ÎuD™\ê\ê¹`¾pv{\ã\\G’41Z¥B¿+›TÙ”W\çY\Ë\ÒÖµÃ§)\Ï65ug¸\Î$¯\ÍTW\ÏsÀY\ë\Ú)\Ä\á]\0ff\ò\ëÒ²¡+û\r[_¿\Åi c<\İ\ä·woßµ\Óu$‘\óy‚UeSiFw7\ï\Ş2t\İÚ›Luu¡\ÛD\ò\ÚB7\0ùs\ìç„;\\‡‘\Ë*\è	‡şBqQp&V\Õ^TgG£œ\×\Ş\ê:¤›\á\\RŸF\Çh±)‡uê¦L\ï\é(†\Ğ5®\óÈ¿35ug\ï\r\Çbœ\ßÖª\ßi	”5…Y=y\n@„˜¹\È.[u)f\á;g\ßø\Ğúv\nû3\àH\ä_ŒMeS\Û\èrakY\Ú\Ú2\Ü\"ë“¦º\î$×™\äe\æ\ä“\Çc\í\0Ş³i#E½=®#‰$lÀ\óx ¼2~a¸Ö®¬ÿ_·‰cŒ1„¢·ù\Ç\Ø\Ï\Â\í®#I:‹x\É_\Ù\ôù&’\æt¤®c€{›Y²$\Ïu&\Ò7x-0}zO7\ïÚº\Ùu\Z‘ù\í\ì9\ñ¦Ô–\r\äd}\×u„U/ºË»2c1.hm\Ñn‚8aG\é\'\Ï\ïu I\Â\ÎØ°)}½\0s\è\í»\ÊqLÕ¢j\àÃ½Q5\ZO‚dK^>Ë§\Ï¾ü”}ü\ñn—yeªª¦c\í>\ğ\òû¢H`ù½\ØTQS–‹q~\Û\Ğ\'xk¾h.z‡\ëL\é\ÌÌ›—‰\áÀ\Ôvl£ü\àA×‘D3†»+\ç3\àÛ¼\â	×™f\Â7…e©\ïøˆ¸\å%\õ!«”‘9vÿ~Ş±c;€‡Ç­fŞ¼L×™\ÒVá¤¯¯?0 \Ù\ç8Ë§\Ï`c~\öü’\ë<‰2Uµ\çg„c1–¶®\Õ\ßOq*}6QSw¹³Ö·3a \à8&Nşš\ë<\éh¨‰\ô\×\0\Îio%W3˜%@\öfe\ñ»Y¥ñ‹˜½Ü®\\ˆæ”¦®n2\Æü\à}›6PÜ£\Ãx’\Z\Æf±©Of29‘\çµ\r\õ“³\\aª¿Ám¢\ôbŒ1\Ø\Ğ\Í@\ö¼}{5ƒY\ç\òJúC!À6°²\ñn\×y±7SKº»8ik z\ÎKºH\êq•\Ã„|¾‰¤7\î\İ\Ã[v\ï\È\ÄD\ïŒ\Ï\ä–1±°\æ\ãgG£œ\ß\Ö\â:Èˆ¬<…¿Mœ\ĞOÔ»\Ø\Ú`T;L\õ¢\÷gy\Ö\ò‘—\'«‰¤¿\ÇUj]\Ø9\ë\ÚÈ‹D\0s\Ûv}\Æut0´w\rÀ×«‰´Jo8Ì²²Š¡+û»ªşE§dN>y<p3À©›7Q\Ò\Õ\å8‘\È\è\òw±i´.Gn\ÜÀ\0\\\ß¿0\ö»f\á;\Ë\İ&JûS`riW§NÁJ\àüª´Œ™™\0/°oÏµ®\ó$¬?\ò`FqO§\ïI6\ã*UÙ”£³`\ÇvŞ°o/@.^\ôvcŒ~œ|bj/\Î\ñ¬\åü¶‚•@YW0\æi\Å\01Œw‘]³fÀu¦D˜š\Å\ï\ÄÚ¥µ|´\åEÂ±˜\ëH\"£N„$\é\×\ÖJV4\nPGU\Í\Ç\\\çIEfşü\\l\ì&€“·n\Ñ6J\Ä\î®<f¸MË­¶qùJ·‰c–,\É\Ã\Æn\Ì\É[·P\Ú\Õ\é:’ˆ/Æ¦Ï¦\Ï7‘\Ô6©¿\ï}ÍÍ‚w\Î8\ä7\È\Èe\ç_”M\ê\ï\ã´\Í]§‘\ÇJfÑ‘›°°ù†\ë<	\ë\é¿˜S\Ô\Û\Ë{7mpF\äUm&&\÷l\ôá”ªl\Ê\ÑY¼m+\0Œ\'½\ÙuTbjjŞˆ\á\ó\0ç´·\rW‘EagNÍœ¿0\Şe¶¾~¿\ÛD‰15‹k‹\rpA\ÛZ2´}.)lŒ¶\Ñ}¾‹¤<,mm~C~¯©©û \ãH)Á\ãwqÂ®·w\ëH\"	³À}\å•zµ\Ë\å:S\"†[¹0‹:¶Ry\à€\ëH\"‡–\Ô„\Ì\ğ6ºV›r\ôŠz{8e\ó\ĞIMko2uu“\İ&JU5ŸÁ\ò¼H„­ksFdDVM\ã\Å	…\0İ„Ì¥®\ó$,\'ÿ;@\å¤ş>\ÎØ Q°’¼‚1®Òª²)£\ë”-/\õ ›Â \rNk“$djkKÀ|\à\Ì\õ\íº$’°®Œ.-º²W\Øúú\r.\ó$\Ê\ÔÔ¼ø\Ä?f\ë±Ic\Ô\Ô]«Mÿ2]\Ã\ğÑ¡v=r$¢ü(¨<p€;¶»N#2\"–UĞ•‘°š\â¢\\\çI„™7/\ë\İ	„¾\Ü\ÖM$i½´z\ó’y\\¥Ñ¸J}%\İ]¼sxn°\İjªª\n\Ü&\nSS\÷AŒ9=‹q^{‹~G%P^(œ\È_¦Lˆ`b\ÙeË‚Q,œt%0oü+Vˆ¤’@:}\Ó¦\õ\ö\0\ÌÆ„¯v\'HÌ‰\'\Ã\Ú\ë!>\Z¯¸§\Çu$‘„\rz”¤´\\gŸs›(1¦¦\æ`¾\npN{+¹‘ˆ\ëH\"cfŒ&iµ)£+‹q^[\ëpE\î2S]W\å6Q€dd_\Ì(\ê\ía\É\ÖÍ®ÓˆŒ\È\ïg•²+;`#\æÛ®\ó$\Â\ÔÕ…±\Ş]@\Æ\Ûv\í\ä\Í{v»$’˜@«\ÔZS|0\÷À~ª·w\0x`\ï0uuÙ®3%;S½ø\à¢\áVR\Z\'A²5/\'g\Ìº2—\Ùúú`ŒºŠÚ¯\0o\Í\ä\Ã\êú iH•M	´3×·S\Ø\ßp‘\Ø®\ó$3SW†Ø­€W½½c¸I¾H X\àŞŠ¹DxÀ6\Õ?\â8RBL\Õ\âc°\\	\ñ\ísu}t4&„nÈ‘\ÈkËF9¿­e\è\Ê|\Í\ÔÔ¼\Åi d‰}8~\ÜÀ\0\ïß°\Îu\Z‘©Ÿ>ƒu\ã\0`#_r\'\Æ»\È~\ã\Ş=\Ìß½\Ëu$‘±\Ãû\èƒ\É=®r\è\õµ\Úÿ\ÌÛ·—·\í\Ú	\Æzwšù\ó3\\gJ6¦¶¶\Ì\0^×¦\Ã	(û33ùİ¬\Òø…µ—\Û\æ\æmN%j\á¢\ÏU9‘çµµºN#âŒÙ””p\öº¶\á\í©7‘›ÿ\×y’N\Ì\Ü\ä\ÌÛ·W\Õ	œû\Ë+\é\r‡Á\Ò\È\ÊÆ»\\\çI„©«+\Å\Ø\ï\0œµ¾	ı‰¸3&‹M«¿\å¾<n\Ñ\òmS[û:·‰’‡©ªıpRf,\Æ9\íª®H°üu\ÒdŸ4`€½\ØZ›\ôPŒ1†ˆ½\r\È?vÿ~Ş¡¡	t^N£û|€v\í\äøxK‘,b\ÜlŒIû=s\ÂI“0\æZ€\Ó7®gr_Ÿ\ëH\"	\ë…x°l¨§&\ö{¶¡\áŸN%jaÍ§€“3£Q.h[«¿’\ö\Æä€Iş¢’\"\Îmo%\'L-]\ä:s™‘\ë€)3»»X¼m«\ë4\"#\ò\ë\Ò2\öee´\ö~\à:O\"LU\ÕtŒ¹\à\Ì\r\ë\ôO\í¥Õ›TeSdØ„>°a}ü\Â\Ø˜\Ú\Ú·‰\Ü1\Õu‹€\ó=kY\ÚÚ‚§} \n\nhœV`\ñ\ì%¶¾> «¶\ĞMÀ„²Îƒ\Ôv\ã“ˆ\ßt@HRN\õ\öm»À8¬¹\ÅuÌ‚9{;`o\Û\Ê\ì®N×‘D3†{+\æ‹?	s‡mhX\î:S\"L\õ¢0\æ\ôp,\Æ\ÒVmŸ‹SSwI98¯½•ŒX,§šª\Ú\ó\\g\Zs\á\Ì+±TL\ì\ï\ç}›6¸N#2\"\Ï,as^>Àˆ~\ÕuD˜šš)À\0Nß¸\âÇ‰Dş\Ä\ä Ï¦*›2Ö¦\ö\ö\ò\Ş\áE–g~b.œ\ê4\Ğ2\ë\æaù\Ä\'–dE£®#‰$lgv(™¿°\ös¶©iŸ\ÛD	Š™›)¥œ´m‹\ë4\"Iel©²)œ¼uK|û\Ø2	/\ãz\×yÆ‚1\ÆÃ³·\ów\ï\â{\÷¸$2\"\÷WT2\èy\0\Ù\æ†]\çI„©ª}Æœ²–´®\Õ\ó\Ñ\"ÿ‡IÊŠŒYK(ş\Æ©©;\Ãu&\ßU\Õ\\,È‰D^\î;*OO-\âŸ\nz z©\ë<‰0LÄ˜\Û\0Nİ¼‘\é=İ®#‰Œ¢\0«T\ë#qefw7K¶lŠ_X{“©«›\à6‘LMM1˜«!\Şre\ÂÀ€\ëH\"	\ëg\ğ\Ë9\åCW\ö›¶©i\Ó@‰\ne^\Í\ì\î\æİ›7¹N#’”|[l\Zc^zmU6Å¥\Ó6o\Z®6\á\Z\×y|c½j¹Rµ½\Ãu\Z‘YVVNgFÀ\ß\è\íş©\ë<‰0U‹N.\ŞE	«°\")f´~¢ı«l.Z\ô\Òk\ëùq)Ş†d¸Ï¤ı”©®;\Éu¦\ÑfjŸ¼?4\ôGO\ğ$HZ\ÆO\à™©E\01¬¹È®^=\è:\Ó\á˜O‡\áV€wmİ¬\öb’\ÚL²n£wv¾\ô\÷NøÄµ9Yo°lÀ\Şf–,\Ési´˜ªªl\ì€S6oR\Ë	”ˆ\çqoEe¼‚bù‰m®\Úu¦„dd_”\õ\ö\ğM]§Ijş-6§N\õûyP‘yÿË£\ã\æ\Ğ\İÿ-\×yFOø»ÀÌ¢\Ş^Ş½EÏŒI°<R2›9¹\0›\È0\ßt\'CÓ¹>i€¥­-\ñ¾\"©\ÌH\Ò\Ê\æşı\ÚF—¤’‹qA\Û\Ú\á~\\_4½\Íu¦£e.z†O\à\ÜvıÑ“`Ù–›ÇŸfM”µ\ö3¶¾¾\Ëm¢\Ã3\ó\ç\ç¾r:W\ÅÁ®#‰$=ÿ›: $I\ç\ØıûyÇ\í\0!<\î4\ó\æeº\Ît¤L]]xè™±Ğ‚\Û9vÿ~×‘Df{+*‰\ÆGR>d›~\ç8Rbró¾‹¥bR_§o\\\ï:H ø·\Ø\ì\î~y±©Ê¦$‘³Ö·3a \à8&L\Ä(¼W‰]\á\Íùƒƒ|`C0ºÄˆk(Nû¸\ñ\0‰†¾\à:O\"L\õ\â°\æ38¿­EÓ¹$å½´zK\Úq•‘ˆIRÊ‰Dø\ğº\öø…\áÿ™ª\Åop›h\äL]])˜+>¼®üÁ¤?¼+ò’ƒ™™üf\öœø…µ_±«\Ú\ê6\Ñ\á™SOÍ‚Ø@¨j{¯\ßŒ)š\"\ÉÀ¿\ÅfN*›’´Ş²{oŞ³ ½ÓœuV\Èu¦‰\Än\0\òŞ°o/oßµ\Óu\Z‘y ¬‚\Şp°Ï°²\ñv\×y\Ò\Õ\ó-\à\r´“ iÃš\Ñ)ú·\Ø\ì\ï\×3›’\Ô\Îmo%7\Ì	t\ì¸\ÌuD™šº\óÁœ–‹qN»FRJ°¬)œ\Ès“§\0`CZk“şT›©^|<–/Á+\ß7D\ÒH\Òn£gei.º$µq|pı\Ğv:\æ{f\á;\Ëù\rIÀ,X0k\ğ\ŞM˜\Ò\×\ë:’H\ÂúC!\î/¯Œ_~`›—¿\à6\Ñá™ºº0\Ä\î2NØ¹ƒ\ã\ã;\"\"2ş-64]’\Ş\ÂÛ‡Ÿ½\Ê\ÅDo3f”\öü\ÊüO`\êŒ\înNÚº\Åu\Z‘ù\Í\ì9\ì\É\Îh%d¾\ç:OB\í×·\ä\ò¡—>œŠ\ÈHø·ØŒ\æµ3In\ç·*5,¦ª\ö£®\ó¼S³¸ø\è\ğIØ>\ÈI€l\È/`E\ñt\0‹\ñ.±\õ\õ}®3YPw,†o@|û¼@\ñ$]\r$\ë6z¦*›“úû8}\ã†\á\Ë\ëÌ‚w\Îp\çU™SO\Í\Â\ÆnLİ¶­”utI$a1c¸·b.±ø\ÆÁ\Ïm\ã\ò§\\g:cŒG(vıÆ½{x\ë\î]®#‰–‹\ÍXL•M	Œ\ÅÛ¶/\à\Æ\ãE~\â:Ï¿\é\ê¹x]a¿\ZIK\à<9}&›\ó\óv1ş²\ë<	©ªı<˜…y‘´µ¸N#ha\ß^9#\Ã#bSz±3†½YY®cV^$BNOR|\Æ\ñZ®~\Ó[‰xŞ™¦ª\ö¶¹\áa×¹\0LM\Í\ë±\ŞW\ÎY\×F¶\ZIH_(DWF†\ëi\í…\Â\Â\áÿy}\æ\É=.³$\Â,¨« \Äw şAtÀ\ó\Ø\ÖT$­Œ\ÖŞ´‹\ÍHÄƒPJo£\ï\Ë\Ê\âŠù\'¸qX¥|\õoÕŒú\Ã(\î\é\á”-›øı¬R0\æFS]]o›šœvn6\ÆxT\Õ\Ş\nd¾y\Ïn„!\Ü\ğú\ãh?\Şu0f¯\ë‡cŒ1T\Õ\Ş\äü~Viü=A$yGµ€\ğo±§|e\ó,¬ƒ©\ó7d4O§n[\Ò\ép\î”Í›xn\Ò¶\æ\åMƒĞ€;\r´°\æ“@UN$\Â\Ù\í­N£QC\ñ\ô\á…f\ètG¬\íwá°ª‡µ\Ç\Z$2,>ª~¸¾W6Ó¤š\Öi›VLt\âÕ˜šºO`\í\í¿™=‡7\í\ÙMa\ò¿×»²–µ¾\È\÷1c>fj?h—?\î\"‹©«›†1\ß8c\ãz&¸ˆX{²²ùui\Ù\ğå¥¶i\Åm.\óH0\Ø\Æú{{]\çI%>¶>\n«©{2hZq\'–\å}¡\÷\r7S–C*\é\ê\â¤mC=,m\ìVSW—\ï$H\Äş(,\íì¤¶c›“Av_E%}¡À\nš‚1QD$ù·\ØE\Ôú(	Xk-&z	\Ğ\÷\÷‰“ø\ë¤É®#\Âû6n`j|:\Ïl\"\\=\Ö\÷7U‹N>\äY\Ëùm-ú\Ğ6B+‹¦\ñB\áD€¢\æ“\Ö\êHD\ÄU6Ó€mjj{\rÀ\å•\ô„ı{z\"Ud\Äb\\\Ğ:¼È³Ÿ1\ÕuUcuo3~.†–l\ÙLIw\×X\İ:%\È\Ì\ä—s†\'\Úo\ØU\õ\Z /\"\â‹ÍŒ¡>›*($‡}{¾ü\ã@f&¿=\Çuš@˜{`?U\Û;\0<°w˜ºº±\é}’50gj_/§m\Ş8&·L%¯ø@\õ4\ÅE7¸\Î#\"’\î|¬l†T\ÙL\"vÍš,¶¡x:\í\ãÆ¹\\\ß>|¨\ê¢\ö~\ß\ÏT/>\Ãg\0\Îmk%#vT\0\ÓÎ³S¦?*Ò‰]h—-SSR\Ç||f3:´\ØTe3Y\Ø\æMÀ¸·b.Q£‡“r\Şp\Ë!\Ë\×Mm\í›ıº—9\ë¬\Ä\î\Â\ïØ¹ƒ\×\íWç•‘\è\Ê\È\àÁ²Šø…\å?lc\ã?\Ü&\ğu\\\åPeSk\Íä’\ñe`Û¶\Ü<ş4£\Äuš@8n\ïŞ¶k\'@˜˜¹\ËÌŸ\ï\Ï8šŸŞš\ä\Ì\õ\í¾\Ü\"•ı¢¬‚\Îø¤ \ç\é\ëúO\×yDD$Î¿Å¦¯lzªl&û\Ä0\ær€Gf\ÍfGN®\ëHp\öº6\n\ŞDnş\çGû\õMu\õ,0Wœµ®}ø^’ ¿MœÄ³S¦D0±\ÛÕ«\õ/PD$I¨²™†lcı/€\ßG<{+*\õq ùƒƒ|h¸\ÚhùS[;\ÊMKC7\0ùs\ìç„;F\÷¥S\\o8\Ìı\Ã=d\rß·Ï¹M$\"\"¯\ä\ßb\ÓZ=˜Ô¢—]-\ã\'\ğ\Ì\Ô\"\×aá„;8~\ï€b\Ün\Ì\è<\ôjªj?¼7‹q~[«ÕĞ²9\å\ì\Ë\Êx‘ù\ë<\"\"ò¯´¦lS\Ó&°W,++~\ÖM\ãÜ¶r\"ÀÔ²°\æSGûz\æ\ä“\ÇcÌŞ³y#E½=G1¼8a.šÃ³\Úúú>×™DD\ä_i=]<\×\Î\àW/5Á–C™00À\×\Ç/Œù¡©­=ºSV}ƒ\×Ó§\÷t\ó®-›>`\Z\é…¸§\â˜ø\ÇYcl\ZV¹\Î$\"\"ÿ\Î\Ç\ÖG1µ>Jr\ñ„\ŞÇÈŸ§\ñ\Ï	…®#Bm\Ç6*\0‡5·\éë˜ªE\ÕÀ\'p~[+!\r@‘‡K\ËØ\r°œ\ì«\Ç‘\×\àce\ÓSe3\0l\Ó\ò\ç1\ö€û+*\ôüû‘H¸ mm¼\áº\åTS½\èœ¿Æ¼y™nLm\Ç6\Êı )l]Á8\ZŠ§\Ä0\Ş\Ç\ì\ãw»\Î$\"\"¯\Î\÷Bªl@O\÷Àú\Ù9<Z2\Ûuš@(\ê\í\å=›^\Z%ùS³p\á\Ô½@á¤¯¯?0À\é\Ã\Ûò’ˆ\çqw\å1\Ã\ï,·\Ø\Æ\å\rn‰ˆÈ¡øx@H•Í °«W\÷`¹à±™%l\É\Ëw)Şµu3³»:&\Êüq¢\ßgª«\ç‚ù\ZÀ9\í­\äF\"~ELI¿]JGn.À&l\äk®\óˆˆÈ¡ù¸®g6ƒ\Ä6¯ø#\ğP\Ì\õ\ŞLg-K[\×ÆŸµ´\ö<S³ø\ô\Ã}1\Æ`C7\Ù\ó\ö\í\å\Í{vA\ÒÔ±¡ €\'§\Ïº2\Ù\æ\æN§DD\ä°TÙ”—…\Íg}\ë\Æ\ÑNcf\÷+N‘\Û\ØM¦®n\Â!¿aa\Í\Ç1,ÎF9¿­e¦ˆ1üw\å1\Ä\â\íMÿ\Ë6\Õ?\æ:“ˆˆ\ï•M\õ\Ù[_¿k¾\ñ“¾û3³\\G\n„\÷l\ŞHqOÀt\"\ö5›Š›ºº\És\rÀ\é\×S\Ø\ß?VS\ÂKf³-7 ¢—»\Î#\"\"‰\Ñ!ùW+W\Ü4\÷…B<X¦Ş›‰\Çb,m];<ù\çbS³ø¯ú…ûS`riW\'‹:¶]À°%/?–\Ì\Z¾¼\Ô65\ís™GDD§mtù\Ö\Ú\Öû\Ğÿ\Ü\ä)<?i²\ëHP\ÖyE[6v³Y° \ç•ÿ\Ü\Ô,^œ\ãY\Ëùm-xê©™°˜1\Ü]y\Ñø\öù/lÓŠ_»\Î$\"\"‰ó±²©m\ô ²\Í\Ë×‚½\àş\òJz\Ãa×‘\áı\Ö3¹¯ ’PÖ·†ÿ3~.6vÀ\É[·P\Ò\Õ\å*b =>£„ù`\ØCl\ğs®\óˆˆ\È\Èø·\Ø4ªlZA\Ş\ÕÀ?\÷gf\òûY¥®\ÓBV4\Êm-C\Û\é\örSU7€\ìü«€²Iı}œ¶y\ãk¿€ü›9¹üa\ÖP\ïW\Ëg\ìÊ•;\İ&‘‘ò½²©\ÖGÁd}´\ã]\Ø\å\Óg°®`œ\ëHp\ìş}œ°s@c\ï4Õ‹ßŠ\á\ó\0ç´·‘º\r ¸»r\î\ĞT+ûÛ´\â×™DDd\ä||f344AH‚jh2\Ë\Ï-\ñQ–C-g\ä0\ÎZ\×Î¸Á€7B¬\Èxû®·w\ãdÁR?}m\ã\Æ\ì\'\Z¾\Èu92>\Â\ZW©ƒÁ6ş2°ss^>OÎ˜y\Ø/È‹\ò\á\ö¶\áË‚¼H„³Öµ\ê[\äÿØÍ¯gÏ‰_Xû%»ê©­n‰ˆÈ‘\ò½Ï¦›}\æ\É=XûE€\ß\Ï*ewv¶\ëH0\÷.\Ş44\è\Ì\õ\í:N¸§b.¡À“¬l¼\Ëq$9\n>2!@-^R€mn¸ÃŸ<û\Ë+]\Ç	Œs\Û[9~\Ïn\ì\Ø\î:J 4O+\æ\Å	…\0\İ½\ÈZ½‰ˆˆ™\ïM\İ\õ”_Š°\ÑK€\n\'\ò—)S]§	„\ñ\\\ò\Ï\ô;0û3³øUiYü\Â\ğu\ÛÔ´\Îm\"9Z¾7uWe35\Äÿ\è\Ûo<XVAWF†\ëH …\æ\È\Ü_^\ï\ëjø3M\r7º\Î#\"\"G\Ï\÷\ÖG’B\ÂŞ°üµ+#ƒ‡‡«O\"£ä™©E\Ã«ú1\öBkm\Ìu&9zş7u\÷\í2\Öl}}\ËE@tU\Ñ4^œ0Áu$I]<4§<~a¸\Ò64ü\Óm\"-ş«\Ô6zJ±+W<‹\å&\Ü_>\Üp[\ä\è\ÜW^IgFXşJO\×\õ®\óˆˆ\È\èQeS@\ä\n`Ëœ›9\Ëu	¸\ç\'N\â¹\ÉS\0Ù\ØÕ«\Õ\'JD$…ø?®R•Í”c››;1\Ş\Å\0,™EGn®\ëHP=\á0\÷W·Ó²ß³\r\rw\ZHDDF‹M\Ôú(…\Ù\Æ\å\0~5†{+æ¢r$,«`fÀ\ßÙ·\çû®\óˆˆ\È\è\ó±\õ‘Qe3Õ™Ø¥Àş¶q\ãiV\ì:ÌšÂ‰<=µ BŒ\íš5®3‰ˆ\È\è\óq\\¥\Õ3›)\Î66v`Í•\0¿*-cf¦\ëH}¡\÷U\Ìº2?²+W<\ë4ˆˆø\ÆÿÊ¦o7¤°r\ÅMÀª\Şp˜‡\Ê*\\§‘€øÕœr\öfe´\íÿ\×yDD\Ä?~«\Ô6z\Z°\Ö\Æ\ğ\ì\ÅÀ\à\ê\ÉSø\Û\ÄI®#I’k?¦øc1,Ÿ°«V\õº\Î$\"\"ş\ñq±\é\é€PšˆŸ ¶?x ¼’şP\Èu$IR\Ç=•/(»Á6¯hr›HDDü\æcŸMU6\ÓJt\ğ\Û\Ú\öfe\ñûY¥®\ÓH’ú\í\ì9\ì\Ì\Î\ØH\Ø\Ê\ï\Â>\0\0 \0IDAT\\\á:ˆˆø\Ï\ÇÊ¦\ÙL\'vÕª^¬ù$`Ÿš>ƒù®#I’Y_0\å\Óg\0Xb\öS¶¾¾\Ëu&\ñŸ\ï•M«L¶©~po\Ìî®œK\Ìè£†\ÄE<\ï\åŸ	ËveÃŸ\\g‘±¡Ê¦Œ®\ğ€][\ò\ò‡«X\"<R2›m¹y\0˜\èW\\\ç‘±\ãc\ë#«uf\Z²\Ï<¹c¾\ñ\ç\óvgg»$m\É\Ë\çO3K\â\Æ|\Ú65\ís›HDDÆ’ï­´~lcıÏ\'<\Ê+\÷\å’Â†©ˆ\Z\Æ\Üg\ë\ã:“ˆˆŒ-m£‹?<ûi wM\áDVO\â:8\ò\Ø\ÌYÃ‡\Åvø¢\ë<\"\"2\ö\ÔúH|a\ZZÁ~\àÁ²\nz\Âa×‘dŒm\Ï\É\åÑ’Y\ñk/µ+W\ît›HDD\\PeSü\ö~\0<03“_—–¹N#c\ÈwW\Îe\Ğ\ó\0~o›–9$\"\"øx@ˆ¡	Bªl¦+[_\ï\" \Ö4­˜¶q\ã]G’1\òäŒ™´\Çÿ{ \Zº\Äuq\ÇÿÊ¦Öši\Í6-¸u¸\Ò\ñüû‘“\ä°;;›\ß\rO‘²\ösv\ÕS[§ü<®Ê¦\Ä\r\ö}\rØº#\'—\Çg”¸N#>²À½s…\0û+\ïvIDD\Ü\ZƒB¾\İA\Â>ı\ôAŒù<À£%³\è\È\ÍuI|\ÒX<N(8±[«‚\"\"\é\Î\÷mtO•Mlcı/±\ö·\Ï\ã¾\ò¹ú©HAû3³ø\õ\ì9\ñk¾j›š6¹M$\"\"\É@•M;!>t¶Ïª¢i®\Ó\È(»»r.½\á0`X¹\âV\×yDD$9ø\Øü\Ğ3¨~%¯`\Z6›\ê\Ú+Á\\ÿ«9\å¼q\ï\n]Ç’Q\ğ\ç©E¼P8 ‡¨\÷	mŸK\"LM\íµX3\ÛuIP\Ì\ŞaW6üi¤\ß\æ\ßb\ÓZ£B\ò\İÀ\ö\çu‡\Ão[VVÁ…kÿ\é:‘¥ƒ™™<TV1te¿iW­hs\ZHÁT/º\0Ì—\\\ç‘\ğ\Ì\n ‰›\Æx`µ.ÿ\Â.[5\ë>…gŸıË”©\áw\î\à\rû\öº%G\áş\òJº\ã\Û\ç\ÏP\\t½\ë<’üÌ‰\'‘\ÉuX¨\Ù\ŞÁ¬®N×‘D\äš§³!>zøˆ¨²)cÎ®¬ÿ_Sµ\è:_¾¿¼’o=\÷,™±˜\ëXrşg\òş:i2@?6t¡]¶,\ê:“@F\ä,“J;;9§½OO]ˆ$µµ\ã\'\Õb\Ó\ÇBC§\Ñ\õ\"¯¦¯\ë*`ı\î\ìln\0.\Ò\Î\à\òÊ¡+sµm^ş‚\Ó@¦f\ñ™ÀC\Ö\ò‘ÖµZhŠ¤?›º\ÍF\×‰ü;»zuÆ»\à‰3ÙœŸ\ï:’Œ\Ğ/\Ê+\è\Ì\È\0x\Ş\Î¸\Î#\ÉÏœp\Ò$l\ìF€\Ó6mdzO·\ëH\"2|œŸ $\òZl\ã\òÇb\Æpo\Å\\bF?2A\ñ\÷‰“øË”©\0\ğ.´«W«­€^F\äz hfw7K¶¨\r«Hºğ¿©»\n›r(a\óY`\÷†üVOwF\Ğ\nq\ß\Ë\Û\ç?°M\Ëÿ\Çi 	SU{*†\ó=kYÚº–°¶\ÏEÒ†ÿMİµ.‡`\ë\ëwc\Ì\×~;{û²²\\G’\ÃxhNù\ğ§µ„¹\ÚuI~\æ\Ä\Ça\Ì-\0K¶nf¶NŸ‹¤\ß+›j}$‡Õ´\âN,\ËûB!î­˜\ë:\Â\Ú\ñX9­ \æ¶¾¾\Ïu&	€Œ\ìk’¢\ŞNÛ´\Ñu\Zc>.6QeSb­µ˜\è%@ßšÂ‰Ã­t$\Éx\÷TÍµ·ü\Ä6\Õ7»\Î$\É\ÏT\×->i€¥­-d¨Í™H\Ú\ñ³\õ‘Ğ‘I„mjj{\rÀ\å•\ô„}œ¤*G\ä\á\Ò2ve\ç€eæ›®\óH\ò3\ó\ç\çb\ì\í€Y¼m+¸$\"ø·\Ød\è™M=.‰Ú·\çûÀ?df\ò\Û\Ùs\\§‘WXW0†ø.|\Ê\Ö\×w9$AS\ğ=,“úú8}\ãz\×iD\Äß›º«²)‰²k\Ö`¹°\r\Å\Ói7\Îu$\"\Çİ•\Çµ¦2·\Ù\æO¸\Î$\É\ÏTÕ\ö2\\\Ğ\ÖBVTÃ¥DÒ•ÿM\İUÙ”°\Í+š€;,po\Å\\¢\ê½\é\Ü\ïf•Ò‘›°0_sG’Ÿ9\õ\Ô,Œ½Um\ï\àuû\÷¹$\"ù?®Ò·H\Ê\Ê\Îø2°m[nšQ\â:MZÛœ—Ï“3f\Æ/¬½\Ä\Ö\×\ïw›H¡«\ç[À\ë\'\ğ\r\ë\\§\Çü¬l\ÆKR*l\Ê\Ù\'8€1—<2k6;rr]GJK1cø\ï\Êc†«\Ëw\Û\æ†ß¹\Î$\É\ÏT/>Ë—\0\Îmo%7qID\ó³\ğ¨\ÖGr\Älcı/€\ßG<{+*\õS\äÀ£%³†g\Ö\ï\ÂÄ¾\ä:$?SW†\Ø]@\Æ	;wpüİ®#‰H\ğ}±©q•rä¢—]-\ã\'\ğ\Ì\Ô\"\×a\ÒJGn.œ9+~a¼Klc\ã.·‰$\í×·\ä\ò¡\õ\í®ÓˆH’PeS’–mjÚ„5ÿ°¬¬œÎŒ×‘Ò‚\î©8†ˆ\çü\Ò6.ÿ•\ãH\0fAİ±¾p^{+ƒƒ®#‰H’ƒÅ¦\ÈQ˜>\å:\à¹\îp¿šS\î:MZxbfI¼\í”aƒ\á\Ë\\\ç‘\ägŒ\ñ\Ù;\ì\ã\÷\î\á-»U‘—ù¹ØŒOR\ë#9\nvÙ²(x\"Z\Ä?\'º”\Òv\ä\ä\ğ»Y¥CW\æ\ó\ö\é\'w¸\Ì#±p\Ñ9‘ç¶µºN#\"I\Æÿ>›¾\İ@Ò…mZş<\Æ\Ş\0pE%ƒ\Zjùaxû|\è\ß\ïmcı½#I\0˜\Ú\Ú9{À\Ù\ëÚ˜0\Ğ\ï8‘ˆ$ÿ\'©²)£¡§û\n`ı\Î\ì-™\í:MJZQ<ƒ\Ö\ñ\ã\âÙ‹\\\ç‘\ägŒ\ñˆ\ñ_@Ş¼}{9q§\n\á\"\ò\ïüŸ\î\ß\r$\ØÕ«{°\\\n\ğ\Ø\Ì¶\äå»”R\öde\ó›Ò—\æ\Ñ\Ù64lv™G¢ª\öb0µ\Ù\Ñ(çµµ¸N#\"I\Ê\ÇÅ¦*›2ºl\óŠ?ÅŒQ\ï\ÍQv_E%}¡À\nšnwG’Ÿ©®\\p\æúv&\ökû\\D^ÿ„|¼¤¡°ù,°o}Á8\Z‹§»N“VM\ã…Â‰\0=D\Í\'­\Õ\'DID\èV `\îıTo\ïpFD’˜\Ïlª\õ‘Œ>[_¿k¾\ğpiû3³\\G\n´™™ür¸¥”5W\ØU\õmnI˜\êEŞ‹qAk‹\Ş\çE\ä|<¶\Ñ\Å+W\Ü4\÷…B<X¦Ş›G\ã\òJz\ÂaÀ>\Ã\ô)?sG’Ÿ©«›ü\à\ô\ë™\Ú\×\ë8‘ˆ$;\ß›jR#£\ÍZ\ÃzŸ\0úŸ›<…\ç\'Mv)2•¿\Æÿ\İ\õcC\Æ{šŠF\Ä\Ş\Î\é<\È\âm[]§‘\0\ğs];+\âÛ¼|-\Øk(«>\Ü\"	\ê\Ê\È\àÁ²Šø…\áÛ¶yùnI˜ªÚ³€„c1>ÒºO;W\"’\0ÿ[\é\ÍHü\ö¾´\ì\Ë\Êâ·³\ç\ö\Ë\åe¿(«ˆÏš·ü•ù¡\ë<’üL]\İdŒùÀi›7R\Ü\Ó\ã:’ˆ„ï­´.~±\õ\õ}X.\ìŠ\â\él\È/p)Ÿ8‰g§LÄš\Ûúúˆ\ëL\0û`jIWK¶¨\r«ˆ$N•M	4Û¼¢\ËÇŒ\á\Êcˆ\Z=½q(½\á0”W\Æ/\×Ø•\õÿ\ë6‘©Y|\Zp®g-´µ\ÒûºˆŒ€ÿ\ã*}»È\ØÀ\åÀ\Î-yy<5c¦\ë4I\í¡9\å\ì\Ë\Êx‘ù\ë<’ü\Ì\É\'\Ç\Ænx\÷–M\Ì\î\êtID\Æ\Ç\Ó\èªl\ÊØ°«V\íÅ˜\Ë~?«”\İ\ÙÙ®#%¥\'L`U\Ñ4€\Æû„­¯\ïsI /\ò#`\æ´\ŞNİ¼\Éu\Z	 U6%%\Ø\Æú{1üiÀ\ó¸x›X^\Ò\nqO\Å1C#>\Íu¶qùJÇ‘$\0Lm\íb°7À\Ò\Ö2b1×‘D$€ü\ì³W©Ê¦Œ•¹\è~¡p\â\ğ\òpi\Ùp\Åw=¹™\ßrG’ŸY²$˜¹\r0\ïÜº…\òƒ\\G‘€\ò\ó°¸*›2¦l}ı0WC¼µOWF†\ãD\Éa]Á8\Z\âs\ä-\Æû¤}ü\ñn×™$\0zû®\Ê\'\÷\õ\ñ¾M\\§‘\0ƒÅ¦*›2†\Âü\'–¿ved\ğpi™\ë4\ÎE<»+‡·Ï¹\Ù6.\Êm\"	³p\Ñ;°\æ\Ó8¿­…¬¨†K‰È‘\ó}±\éi­)c\È\Ö\×G°\\DWM\ã\Å	\\Grê·³J\é\È\ÍØ„|\ÍuI~\æ\ÔS³\ğ¸\ğj:¶\ñºıû\\G‘€SeSR]¹\âYŒ½\Ù\÷—\Ïe\ĞK\Ï\Ñ›\ó\óy\ò¥VP\æ\"\ÛÜ¬5rx{¾¼n\Â@?gl\\\ï:ˆ¤\0?ÿ\n\Ç\×\ÔZS\\ˆE¿lÙ‘“\Ãc3g¹N3\æ\"\Æ\ğ_•\Ç3,?·M\õ¹\Î$\É\Ï\ÔÖ¾\Ã\ç.hm!7¢\áR\"r\ôü\ßF\÷\ñ\"¯\Å67wb¼‹şX2kx+9mü±d6[\ó\ò\0¶5½9$SW&j\î2Ş±s\ó\ö\íuIDR„ÿ\Û\èj}$\Ø\Æ\å\0~5†û*\æ¦M‘}K^,ª\æZ{©]µJ«9¼ÿÃ›\Ç\r\ğ¡um®ÓˆH\nQ\ë#Im&\öi`\ë¸\ñ4O+v\Æw1c¸{xF¼1\Úæ†‡]g’\ägjkûu€s\Û[\É\Ó\ö¹ˆŒ\"U6%¥\Ù\Æ\Æ¬¹\àW¥e\ì\Ï\Ìt\ÉWšQ\Â\Æü0\ìa \ô9\×y$ù™ºº0\Ö\Ü	d\Îß½‹7\ï\Ù\í:’ˆ¤\ß©²)Î­\\q°ª7\æ—s\Ê]§\ñÍœ\\™5;~a\íg\í\ÓO\îp›H!»\Ë\Û\ò\"ƒ|¸]\Û\ç\"2úüW©\ÖG’¬µ1<{10øì”©üm\â$×‘F\î®n\ódÿ`›\Z\îwI’Ÿ©®\æ[\0noc\Ü\à€\ëH\"’‚ü[lš\ámt\ß\î ’0\Û\Ğ\ğw°?x ¼’şP\Èu¤Qµ|ú\ÚÆ8@8~\n_\äPŒ1„\î\0r\æ\í\Û\Ë	»vº$\")JM\İ%}D¿\r´\ï\Í\Ê\â\÷³J]§5{²³ù\í\ì9\ñk/·\õ\õ[\Ü&’@¨ª½¨ÎF9¿­\Åu\ZIa\ZW)iÃ®ZÕ‹å“€}júŒøAš€³À½s\ã•Z\ËrV6\Ş\å:“$?³ğ³\ï|h};…ıı‰H*\ó‚H±\Í+\ê±\Üo47>a\'Àš§\ó	…\0=\ØĞ§¬Uû94cŒ!½\r\È?\æÀ~n\ïpIDRœ¶\Ñ%ı†?\ìÚ’—O}\ñ\×i\Øş\ÌL.-‹_¾fW>\Õ\î6‘B\õ¢±¼+3\ã‚\ÖUD\Äw\ÚF—´cŸyr\ğU€ß”\Îawv¶\ãDG\æş\òJz\Âa0ü™¦†]\ç‘\ägªª¦c\íŞ¿aSúz]G‘4\àÿitU6%57ü\ìS\Çå•®ÓŒ\Ø3S‹x~\Òd€~ˆ}\ÂZsIÀ„o\n\Ë:²¨c›\ë4\"’&üï³©µ¦$!k­\Å\ã oM\áDşg\ò×‘Ö•‘ÁC\Ã\Í\é\rß´ÿp›H‚ÀTÕœ\ÅXÚºO\÷Š\Èƒ	BzC“\äd\ZZÁ|\àe\ñ-\é\0¸¿¼’ÎŒ°ü•®\ë\\\ç‘\äg\ê\ê&cÌŞ·i\Å==®#‰H\ZƒB\"Ilß®/\Ì\Ì\ä×¥s\\§9¬¿Mœ4\\…²\ÚÕ«]g’\0ˆ\Ø©%\İ]œ´UmXEdlù¿\Ø\ÔV$1»f\Í\0Æ»ˆ5M›N{|\nOR\ê	‡¹·b\îĞ•ù®mhø«\Ó@¦¦\îà¬µ|´\åEBzO‘16\Û\è\"\É\Í6._‰±·Y\àŠ¹D’´\÷æ²²\ndf¬aß®\ï¹\Î#\É\ÏTWb\íM\0§l\Ş\Ä\Ì\în×‘D$\rù¹\Ø*›ı_¶v\ä\æò§™³\\§ù7ÿœP\È\ÓS‹\0¢\Äø¸]³fÀu&	\0¾(.\î\é\á”-›\\§‘4\å\ç‰U6%0\ì\ÓO4Õ‹¾\0,{´doİ½“¢\Ş\ä\èA\Ø\nqw\å1\ñ£v–Û•+uI’Ÿ©Y¼k?3†^?\Ïu$	¨­yyG\õı~.6\ÕúH\Å6­x\ÈT/zd\Ğ\ó\Şs_\Å\\¾\ğ\÷\ç“\â\Ã\ÒÃ¥e\ì\Í\Êh!6\ğ-\×y$ù™ªªLø6€qƒ\ì\È\ÉaGN\ëX\"’¦ü_lª\õ‘J\ôR-Z;~BşŸ‹¦±`\Çv§iZ\ÆO ±x:@\Ë\'\ìªU\ÉQn•\äf\Â\×\0³¦\ö\ö²`\çv~3{`ÀhÒ”ˆ¹X\è¹#ù6m£‹¼‚mj\Údª\ê®\Ä\Ø\ë~9§Œ\ã\ö\î¡`\ĞMw¡\Ï\ãÊ¹\ñk\Æ\Şd›\Zšœ‘@15‹kK°´u-\n†ş·Á6\Ö?\ä2›ˆ¤\'µ>ù¿¦Où°º;üŠI=üv\övf\ç€e!\ï\ëÎ‚H`˜ù\ós!v`j;¶Qy\ğ€\ëH\"\"ş,61/½®Ÿ«Y?\ØeË¢˜Ø…À\à3S‹øÇ„\Â1Ï°¾`Ë§\Ï\0°x\ŞÅ¶¾¾k\ÌCH\ğ\ä\äKÅ¤ş>Ş¿a\ë4\"\"€_kÁE‹^z]U6%ˆlc\ã\ßÀü\àŞŠ¹\ô‡Bcv\ïˆ\çqw\å\\b\Æ\0\æ.Û¸ü\ñ1»¹–©^|\ğ9€\ó\ÚZÉF\'‰\óg±¹k\×Ë‹M_n 2z;¿	¬Û“Í£%c\×{\ó%³Ù–›\Ğ‘/Ù%°Ì¼y™»-Ü±7\ì\Û\ë:’ˆ\ÈKüYlN™¢Ê¦]½ºÌ¥\0šQ\Â\æü|\ß\ï¹%/Ÿ\Çg–\Ä/Œù´mj\Ú\çûM%ø\n\']	¼aüÀ\0\\\ß\î:ˆÈ¿\ğg±\ÙÙ©Ê¦¤\ÛTÿ\ğ‹˜1\Ü[1¼µí˜1\Ü]9—hü\÷\Û\Æú\ßøv3I¦¦\æ`¾\npN{+¹‘ˆ\ëH\"\"ÿÂŸ\Å\æ¤I/ıEVeSo0üy`ß†ü\Z¦M\÷\í6\Í,ac~Ànbƒ_\ğ\íF’2L]]\ë\İd¼m\×NŞ¼g·\ëH\"\"ÿÆŸ\Åfw·*›’2\ì\ÓO\îÀ\ğU€ß”\Îa_|šÏ¨Ú“Ë£%³‡nh/³+W\î\õ›H\ê‰Ú¯\0o\Í\ä\Ã\ë\Ú\\§yUş,6sr´Ø”\Ô\Ò\Ôp–\å}¡\÷•W\êK[\à\îÊ¹zÀ#¶¹\áÁQ½¤$Sµø,WB|û\Ü\Õ\ğ‘\Ã\ñg±\Ù×§B’R¬µ½\èûû\ÄIüu\Ò\äQ{\í§fÌ¤}\Üx€DC\ÚK\Ê2\Æx˜\Ø@\ö\÷\îaş\î]®#‰ˆ¼&›YCs\ÑUÙ”\Ôa›šZÀü\0\à\òJz\ÂG?\íuwv6¿›U\Z¿0\æ\óv\ÕS[úE%\õU\×~¨Ê‰D8¯­\Õu\Z‘C\òg±™\Õ\ZSRÓ¾]\ßşq 3“\ß\Í.=ª—²¼²a¼}Š¦ÿ=\n	%Å™\Ú\Ú9X¾\rp\Öúv&\ô»$\"rH>U64]R’]³f\0\ËÅ€]Q<ƒ\öq\ãøµš¦M\çŸ\ñQ˜\İû”µú…‘C3\Æb\æ6 ÿ\ØıûyÇ\í®#‰ˆ–?‹\Í\ÌLÏ¿q\Ë6¯hs—\î+©/\æˆ\ì\Ï\Ì\â\á\Ò9Ã—_±MM\Zd-‡·p\ÑEÀI™\Ñ(´­\ÕcJ\"ş¬UÙ”Ô–¾Ø¶5/\'f”Œø\Ûï¯¨¤7ş\Ì\ç*šn\íx’zLU\ÕtŒı>À™\Ö1¹¯\Ïu$‘„ø³\Ø\Ì\Èxé€H*²O<q\0øÀ#³f³3;\'\á\ïı\ó\Ô\"Ÿ8	 \Ï~\ÔZ\ó\'¥¤/|30¡ü\àAj;¶¹N#\"’0›±˜U6%µÙ¦\0z\÷T\Î%‘Ÿ\öƒ™™<TV1ü\nWÚ†%–\Ã2ÕµK±¼/‹iû\\DÇŸ\Åf$¬Ê¦¤‡X\è2 «eü™Zt\Ø/ ¬‚\îø\öù_(.º\Ş\ïx|¦¦f\n˜ÿ8}\ãŠ{z\\G›áˆÙ”´`W>µoC³¬¬œÎŒŒ\×ü\Úÿ™<…\ç&O f.´Ë–E\Ç(¦Y\Ì\ÜL)\í\ì\ä¤m[\\§1U6EV\È\\<\×\Î\à\áÒ²Wı’\îp¿(\Ú>·\\mWÖ¯»€T¦zÑ‡0\æÌµ|¤u->À‹H\0ù[\ÙL\è)6‘`³\õ\õ¬¹ˆ®*š6\Ü;\ó_<X^ÁÁŒL€¿\Ñ\×u\ÍXg”\à1\'œ4	øÀi›62½§\Ûq\"‘#\ã\Ïb3\ZŠ\÷\Ù\ÔZSÒ„m®_\r\æ€û\Ë+\ô^ş\ÕZS8‘g¦Lˆ`Í…v\õ\êAG1%H2\"\×E3»»Y²e“\ë4\"\"GÌ§\Ó\èV;\è’~r3¯\0\Ö\ï\Ì\É\áÑ’\Ù\0\ô…B\Ü[17ş\Ï\r\×\Æ¥\"‡fªjO\Åp¾g-K[\×\Ö\ö¹ˆ˜O\Û\èQ’´c¼Ë¥\0\Í,aK^>\Í)g_VÀZB\æ\ÛnJ˜O‡1·\0,Ùº™\Ù]®#‰ˆŸ*›\áxŸM_^\\$y\Ù\æ~3†[^\÷zVN+ˆ\áÙ\Ûúz|‘\Ã\ËÈ¾(™\Ö\Û\Ãi›6ºN#\"r\ÔüYl†¢: $\é\Ë\Ä>Ø•3\ô`~f\ZV¹\r%A`jkŸ4À\Ò\Ö2b\Z.%\"Á\çSe34´\îË«‹$5\Û\ØØ5_º\\7\ô,§\È!™%K\òˆ™\ÛS·m+\å¸$\"2*üYlz\ñÊ¦§Ê¦¤«•+nš±\\l\\=k\ä\ğz¾”M\ê\ëãŒ\ë]§5ªlŠøÀZ#;\ã=¶y\Å®³H\ò3µµÀ~\Æ\0K\ÛZÈŠj¸”ˆ¤Ÿ›1=³)i\Ï>\ñ„\öA\å°Ì©§f\rmŸ{U\Û;8vÿ>×‘DDF•O\Û\è*›\"\"‰\è\ì¾\nxı„>°a\ë4\"\"£N•MG\ÌÂº7¹\à\Ü\öVr#×‘DDFOMİ­úlŠˆ‚©«\ã\Ù;Œv\î\àø=»]G\ñ…O•Mm£‹ˆR\Ô~xKş\à Z\ß\î:ˆˆo|zfS\Û\è\"\"¯\Å,¨;\Ë\×\Îko¥`p\Ğu$\ßøZ\Ù\ô´\Öù\Æ½\È>~\ïŞ²{—\ëH\"\"¾ReSDd,-\\\ôE`AN$Â¹m­®ÓˆˆøÎŸÅ¦\r\Å\Ïi­)\"\òS[;c¯8{]ú\'ñŸ¯­4®RD$\Î\ã5?\ò\æ\í\ÛË‰;w¸$\"2&üm\ê\îË‹‹ˆPU\Í%j²£Q\ÎkkqFDd\Ìø\Û\Ôİª²)\"bª«gù>À™\ëÛ™Ø¯\ísIªlŠˆø.t+P0\÷À~ª·w¸#\"2¦|: 44AH…MIs¦z\ÑÇ€wg\Æb\\\ĞÚ¢\á\"’v|Zlª\õ‘ˆˆ©©)~pÆ†\õL\í\ëuœHDd\ìù»®µ¦ˆ¤3\ë\İ\Î\é<H]\ÇV\×iDDœ\ğ\÷€*›\"’¦LM\İ\ÙÀûÃ±K[[\ğt`RDÒ”¯•M«‘tdN8i\Öş\à=›72½§\Ûu$g|­lj„ˆ¤¥\Ì\ÈÏ€©3»»x×–Í®Óˆˆ8\å\Ïbs¨\ë‘N]ŠHº15‹O\Î\ñ¬eik!mŸ‹Hš\óg±i\Ì\Ğ6º\ŞdE$}˜“O\İ\ğ\î-›˜\İ\Õ\é:’ˆˆs~\õ\ÙTSwI?}ƒ?fN\ë\í\á\ÔÍ›\\§I\n¾V65®RDÒ…©­]|\Ì\0K[[Èˆ\Å\\GI\nªlŠˆ%³dI1s;`NÚº…\òƒ\\GI\Z~µ>\Ò!I½}\×\0e“ûúx\ï¦\r®Óˆˆ$•°/¯:4m£‹HŠ3\ÕuU`>m€´®%+\Zu\é\ÕY›eª«]\Ç‘\0Ú·¯Û®Y3p¤\ß\î\×b\Ó\Ã\ßú*‰ˆ$³`A¡\Ì;¯zû6\æ\Ø\ï:Ò¡œ\r¡³]‡‘\0*œ¼¸\çH¿İ§mt‘4Ê¼\n˜;±¿Ÿ3×¯sFD$)ùSÙŒ\Å+›zfSDR•©ª›\á‹\0çµµ¤\Û\çµ\ÛX°c»\ë\"@·ûzş1\áèŸ¾\ñg±\é«B\"’šÌ¼y™N¾¿c\ç\æ\í\Û\ë:\ÒkÊˆ\ÅÔ†IDHh”\Ş;üm}¤mtIE…S¾7n`€­ksFD$©ù;®Ò—q\Ç\Ô\Ö\ö\ë\0ç¶·’‰¸$\"’\ÔT\ÙI©«cÍ@\æüİ»x\óİ®#‰ˆ$=\ÇUú\ò\â\"\"Db—cy[^d·kû\\D$>U6\ã\ëLU6E$U˜\ê\ê¹`¾pv{\ã¸¿±ˆHZ\ñi±©Ê¦ˆ¤cŒ¡;€œ\ã\ö\î\á\í»vº$\">5u\×3›\"’Bªj/ª³£Q\ÎkouFD$PT\Ù9³ğ³\ï|h};…ıı‰ˆ‹O„†*›¨²)\"ÁeŒ1„¢·ù\Ç\Ø\Ï\Â\í®#‰ˆ_­†ù\ò\ê\"\"c£zÑ…XŞ•‹qAk‹vkDD€¶\ÑED^…©©)\Æ\Ú¼\Ã:¦\ô\õº$\"Hşn£ë€ˆ•\õn\n\Ë:²¨c›\ë4\"\"\å\ÓDI\Ïøø\â\"\"¾2Õµ\çg„c1–¶®\Å\Óg‘#¦Ê¦ˆ\È+˜ºº\É`®xß¦\r\÷\ô¸$\"h¾>³)\"8{#0µ¤»‹“¶nqFD$\ğ|­lzj}$\"bª½8Ë³–´®%¤\İ‘£¦\ÖG\"\"€9ù\ä\ñÀ\Í\0§n\ŞDIW—\ãD\"\"©Á§\ín£¦\î\",½ƒ\×3Š{z8e\Ë&\×iDDR†\Ï„|yu‘Qej¿\ÃGpA\ÛZÂ±˜\ëH\"\")CM\İE$­™%K\ò°±\Û\0s\ò–Í”<\è:’ˆHJ\ÑltIo=ı\×eE½½¼o\Ó\×iDDRO•MO„D$\é™\Ú\ÚÀE\Ã\Û\ç\Ú>u~FWeSD’šY° ‡˜ù9\à-\ê\ØJ\å‰ˆ¤&Ÿ¶Ñ‰Hre}¨œ\Ô\ß\ÇÖ»N#\"’²|j}¤Ê¦ˆ$;»\à\Ã\ímdG£®Ãˆˆ¤,ûlj­)\"\É\Ê\Ä\ßÿ4û\\D\Ä_~U6\ã„üyq‘£gQ‹6‘1\à\Ó!´.\"\ÉN\ïS\"\"cÀ§Bh]Dş?{o&\ÇY\İûNu\÷\ì’F²%k\ó*0xg1»\rcÀ0\ÆÁl	I\Èı]\'Ø\Ñ6#“C°µ\Ø	_Hp\È\å&ù\İpK\Ìjv\Ìn³{A¶e\Ë\òªe¤\Ñ\ì\İu\îú­¸s\0\0 \0IDAToUwM\Ï\Ö\Õ]=\İ#\Ï\ó\Ì3\İÓµ¼3S\õ\Öy\Ï\ò=\õ\ÍS†as@U=›yÃ¨_l2Ã˜Ì³i\ÆÑŠ5Ÿ0Ã˜ªT \æ\Ü\Û,nF\İb9›†as@UEİ«e\É\Z†a$€U£†a\Ì\ÕmW©\æ10£n±y\Ê0c¨n»Êª\Ü0#l2Ã˜Ì³i\ÆÑŠ\ÍS†as@U„\Ìc`F=\"\"ù\é\É\æ)\Ã0Œ\êR-c\Ó\ÂS†a\Ô/o{~\î\óÌ³i†QUªkl\Ú$nF=\ò\ĞC&–a†1GTWÔ½*7Ã¨e\Ë\òsŸ\ÍS†aÕ¥º\í*Í³iF=\Ò\ßoat\Ã0Œ9¢ªM\Ã0ŒºdÁ\ól\Z†a\Ì\Õ\òl=‡\Íc`F26V¨F·y\Ê0£ªT\É©Ö®\Ò0Œúex\Ø<›†asD•\ìA±jt\Ã0\ê—\ææ‚±i\ó”aFU©ªg\Ó<†a\Ô%££\æ\Ù4Ã˜#ª\ëÙ¬\ÎÁ\r\Ã0*£±\Ñ\æ(\Ã0Œ9¢º\í*-<eF=26f©>†asDUu6\Ík`F]’kv\âZ\Ã0\ã( º„\Ìk`F=\Ò`M\Ã0Œ¹¢º½Ñ«tp\Ã0ŒŠ\Èfl2Ã˜#\Ì\Ø4\ã\è#“µ–º†asDµ¤¬@\È0Œú\Å\÷m-l†1GT)gÓ¤Ã¨c</6G†a\Ì\éª5¨F·•au‰\ï¤\ğE¸ûØ¥µaF]r°¡1‘\ãT\Ç\Ø4‡a\õL.\í‘R\Æ<z\î\éµa\ÆMµŒ\Í ŒnM\Ã0\êorßª\õ(\Ã0\æ\òD%{W\Õ\ØüÔ©§‘\ñı*¢\öøb\\Ã˜è¿½¸¨\Ö\ã0\Ã8\Z¨ª±y°¡¡J‡7\Ã0\Ã0\æ\Õ16\Åšn®Ê±\ë_sµ‚a†aF=RcS\ğƒ\ßWã¸†a†a\Æü¢Z„\Ã0\Ã0ÃŒM\Ã0\Ã0£z˜±i†a†aT\r36\r\Ã0\Ã0ŒªaÆ¦a†a†Q5\Ì\Ø4\Ã0\Ã0ª†›†a†aF\Õ0c\Ó0\Ã0Ã¨\Zfl\Z†a†aUÃŒM\Ã0\Ã0£j˜±i†a†aT\r36\r\Ã0\Ã0ŒªaÆ¦a†a†Q5\Ì\Ø4\Ã0\Ã0ª†›†a†aF\Õ0c\Ó0\Ã0Ã¨\Zfl\Z†a†aU#]\ë\ó\é\êü.p\Î\Ô\Ê_\é\æ›>;·#2\Ã0£^0cÓ¨\é\î|pÁ´øú^ÀŒM\Ã0\Ã8J©\ÈØ”®u\çÿ\ßI\r¦\ê‡PrÀ\Ê„ıû(O \ò0¾>L*û°^\ó3µ\î¼À—w \ê^§~®\rk\áu²éª¥\ó\é\ï)\×~\Ñ\Ëk=\Ò\Ğ\Ût\Ë\ö?\ê\é\îø*\ç\Ï\õˆ\ÊB¼‹t\ówW\õ]\ßW\Ís$ƒÿ.İ²\ã¥n-\ë¯9›”\÷½*¨<TşL·\ŞT\ó\çƒtw¾\å3µ\Èot\ËM¯ª\õ(\â ]¿V\ÖtªÿS·nÿ\\\ôG\Ò\Õ\ñ¯ o®Õ\æ!£º¥oE-P™gSriT\'4–\ê£\Æ*ùŸE>W\÷s?tu\öwƒÜp)ı±~¤o\Ïv\à¿\ZŸ‚UÿQø\ñ\èr\Ø\ó.€4¹\ô;€\Õh€\å\Ğ\nÌ“\ëZZ§ıH¥ù\ò{Hv.¢,˜?•‰µ}:•Bµ/¿¡\Ö#\0@5\õ\ğœ\Ò\ó¥\ëštËGk=’R®µ\ç\0g\ÔzˆLq\É<š£\ë\é\íMkOO¶V\çOn‚o\Ø2\Ø\á\ÃOƒ†¿f*xŸu>o.½² ;~\ò5<ı:\îù¾\Şzk®ªc¯s\äÚ«\ÏDRg\Ğvÿ\ÄŸ„L?Œ·ƒ\ğæ—±\é\ğ\Æ!³¿Ö£˜š±%¥\\Ã\Ô(¤û«;r\ğ30¾d\îÏ›\Z™è…¯üŒ[ùq2À«ü8\å¢)K\à\÷¨™½\à\Í\ñ´­c\Ë\0M½¸ynP.\ê<‡4<5Ç§\ö`l\é\ì\ÛÉ¸³=Œ©\É5Cv¡{\İ\ß\ß\Ô\ìAœ±¹\ô«\Ğ8o\"¥\îb\ö› \×\ä¾g\Û ·\Æßq?‹\"r&p&*\ë9e\õc\Ò\Õù/\äRŸ\Ònx¸&¿C­\ñ½wº\n­\÷Oş¼\í^8\ğ2€—È†\rktÛ¶\çrx“\Ù«>]\ëQL\ÍWÀ\ğªÒ¶mz«y4s2£+`\Ï;\çş¼\ÍÃ²¯\Ïıygb¼vÿy\å\Ç9\ö[\ĞüX\å\Ç)—l<úÿ\Õ\îü³±ü6·kvÿŒ/\Ñydl\ò&ÀšÑ¨\Õ\\kG®œ}»¦§aÅ­\Õ\Ï|e\ğTx\ê\÷º!WSc\ó\è•>RCnU\Ô\ô8´=\0‹î„¥ß†åŸ‡>	\'\ŞË¿‹\Í{\0?z„\ÕÀI\åvJW\çeC\Ç<\ÈK•w\0\î\ï—><ù\ó¶û\ÂW‚—}Ïœ\Ë0£h\Ù¾:_6}\à˜Z¥dÃ†\åÀ‹\0hy¨¶ƒ1\ÊG¢QÔ‚šƒ£\Ù\Ø,…\Ô´<‹\êVO\'~ûŠK>\ã—\â\É/¤«\ós²\á\êg\×p\Äs†t_\ó\"\àYÀ\äzH¦ß…\Óï‹q†a\Ô­ù N\Zm¬ÿÂ–\Ôø	\íƒV36\ç-\Ñ\ÔFOÛ¦ß°ú$F9²\í\à9\ğ².w\Èr9c\Õ \×\ÙE\à7ºü5MM¿­7\êDwcK‰™+›\Z…\Ö\ÜW®	Ÿ‡\Î\ó\Î¸/\õF\é\êø\Í\í}µLÆ­:*Aü\Ów\éXp¯+‚\çH\÷5/\Ò\Í;îœ‹\á%‚\ß\ä\Â\ä\\ş¦7ø\îZJı\ÄEÓku×šz\î\Z\÷3@\Ê\å\â”J¶\Íı\Şù\ñ‹\Ş0¤‡(\ò\Ø\'O®üW/¢AÎ´\ß\àRUjAn\á\ÄÿkzÒ‡ª›s]¤\ê41å´›kI\æ<#«\İ\ßZ\Æ\İ|\çù©ÕšƒC4\r\Ù\õ¯	0t2¤‚{!\òœJ\r»¿Uµhz\Ò\Í\Ù6P}+\ğ/\Õ;Y¨\÷fP7\æ\Ì\ÓU<O²­Á3<\Ì™\Ò\ç·\\³»—e,˜\ÓF\Ò#\à\rºŸUe\Ü\äÿÏ”{VÌ†7\nh`‡Œ\æj>G¢ù\Û~\ê16\÷Í °\"\ã9{ m\'4=J^.§Ÿ\rı\ç\Â\Ø\ò‰\Õ\äqI\rº‰¸a¯“7?©)\ÂÁS\î;‹î…¿„Á\çÂ—º¼+h\Ù\Ê\ğÁ+¤»óº¹o\çl‡šoHo¯r\0-»\İD=­À\ŞW¨\÷`ş›\ã\í…|—©\ğF\Üu\İü¨“5=Q\ÙùF…¡Sa\è$gœ\Ä1(g<\îq\Óÿ¢nRn\Ø\ç¼ø­˜:%¢d<:Ÿ#+\İ\ïQj!\Ó\\1¼jr¾«\àæ–°\ğwWŒÀ¡sÜ‚t®k—#=™\Ô 4?\îs\ß+E‘“Üµ:|B\íq\ÙwÁ\ôŸy\ã:ÍC\ëNw_\'¶Shy\Ğ]\ğ:Y¿¾Uo¸a0¡ƒ\'Š\ô\ö6^@\óC\å–JQ`t•›†w‹¾\\ce\Ç[2\Ã­Î˜\ËpyÚ­;!SIa À¡3“id‰†S\ÃnÔ°\Zv\ÑÀ\Æ\'£\Ñ\Ó\ò\ñ\"h9R<›3¡7gC\ã.²œ	ıÀK\àÀË“W®\Õ}®t\ãwa¶\İm¿w†\ÄlˆºB˜¶û\á\à\ó\Ü\ØüÀQ~.]\×\Ä\ÒÌ›8¼\ÕÀÔ…AQRC\Ğ\ò¨{(Á;\äŠ+\Ö1Uü~Œ6Á\è2·øi}\0–}­¼\Õ\ô¾WÁ¡T¶x*ÈµÁpŸûÏƒc¿~ÿX¹x\ò2\÷\÷˜o(\Î\Ø=\Ö\İ\ÇË¾-»*;\æ¾WÀÁ%1º\ÊÉµ\Â\á\Ó\İW\ÓX\ö\Õ2§¹\ë}|˜¥\âgÀ?\Æı^‡\Î\nS_H\Î+Üš76›\ñ²¯>ŸÌf¸ÿ\ÕyIµ¶„Bèš†\'\ß\Ã\'%s¼’\çyÌ¶9\ã\öÀy°\ä\ÎIM¹¹møøä‡™kv_£Ë€çºŸÉ˜›\Úp\àrsŞ„hMMs6+36UB¼®‰?\ô\áK\ZX„h\Èj\\1\ÍI€\ó5®€½¯…\ã¾\ï|c\Ç@ÿK\ó\'Bù\Âo}ˆ\Ì\\e¥Ú‚Òˆh;H+\Ê\É§\0…N\Ç;\ïÀ—º•í’Ÿ¸IgV|X\ô7¡<sQxQ.\ï+\Ò\İù\İ\Ü\÷‰x¿l=„\Ğ%\çV‹³\Ñzohl.g\Í\êÛ«8¸$ø\"¿Ê¿\ó\ñ@!4 ´\"´ œˆ²\nwm;¸ÁS¡ÿ\0,şq¼³\rœ_ıIaª»\ï|Dt•Q„CHd\É\ëû3YûŸD\ä\öÈ¶M Íˆ´¡šAX\ê\îO]Mxh\Z\ö^\ä”%\Zb†Ïy]±¡9\ì\ö \ìÁg‘C \ÙI\÷k®qw¼“•\ò1<Y\ï“]€\Çr|NEx\Æo‚§\Ş\nË¾\\\Ú\õ=¹F·xpŒ\ß½e?\Şl\ÚD©{c\Ë\Ë=Ÿš8«fP\Ú–\0k€‹\0Y¿\ÓU§†J?O®~ƒ\ódNd¸x\äq„½nşobı\Õ\Â\Ï\ÜG*Wü\÷iGI‘N±*xV¸\Â\è\n\Ø{!\÷\Õd\Æ\Ñ\ô˜3\\s\à\É[©WcS\äM(\ÎPiJ\è¶\Ü~±¡9\n\ìCØ\Ï0¢‡QG\èG\"Ö•\È/\'O\õÿ\âywF\Ş7¢´\àÑŠO\Â1Àj\Ğ\ãAV\0‚z°ÿ7·5\ÅTl\Ø~±¡ù\à>\Ğ\İ\Ã\à\r”v *M¨,@´ep\Â\n¢\ö˜6¸\ç\É\à©\Î»\ğnX\ôb{Ú£SPSÏ¦\\\õ+\ô£ÿ\ë³I9Ê§?QooC¯¿\áe pü§J\ó†\ì;\ïÕº\å\ÆV<®\õ\ë[‘Ü¹x¼\nxp>01\î×º–ü\Ğy=KA^\rw\Ë(°I·\ôm©t¼µFz{\Ó|XJëƒ¥I\êh\Æ\ÉXøş\İ\Ü\÷Şªt\Ş\÷·1\Ò\ôzT·\0\Ï\"5\ê\n\É\âL\n{ş\Äy\Ô`/\ÈZ¤\á6İ¼¹Ä‹-dİºI\ç\Ş\ò Ã‚\ß\Ã\Òù\ñ\Å\ğØŸ¹+]ø>¾ü=ı‡ ·\ÜR‡\â»S#›>p~fH HVÿ‡“ÀŠK¡©\ëæ¾šj-Iooš‘ƒ¯A\éÜŠ½\íX\ö•\Ò0º¼4š[ªÀ—\ñ\äŒ{ß¯×p\\¤·7\ÍĞ¡W!ú\à¥°úÿL”K\Ê5Ã¾W\Ã\èrŸ\öŸx,ˆ±6x\æbx.ÀWo\÷‡ˆ;v\'\Ğ\ò ,\Ìïƒ§Â—ûd\ö8\ö{¥/T´v]\ê]ÿ\èfŒoi_\ßùW\É!\ì\\Å¸\\\è y\Ò\ï5š†]¦ı\nO®\Ğ\ëoš¡P¡Œ1^ye†\Åm§#şQy9p	°|\ÂFOÃ±\ßt\ßKE‡¯Á\åB\ÈZ\İrS_r£Çœ›ùnZw:¾\ïbt\Ç}\Ùåˆ•Êw»ü3\äº\å¦7Te|\ë\×/\Ã\óß\èû€³\nd\á\Ø\ïÃ‚_—~°Á\çÀÓ¯/.©lÒ­7mNv\Äs‹t]\óz\ğÜƒ\ó¸¯\ÎF)L²4.×[b¸T\ê\é^{9ª®¥\Ú\ñÿVº¢i\Ø\õ·@A7\ê–\íÛª7\ÊÙ‘®\ÎO\ï¤a?¬ş\×\Òw<|š\óz\äR§\Ìg\íY\é\îø¨|:c}†\Ø…\ìx\ô¸×ªo/n·W+\ÜC­\õÀ%N\âm¶<\õ±e\ğ\ÄE\ó\ë\î\"•ûs½î£¿­\îhk‡lØ°/\ë\Ü\ÚKoŸ˜V2¾vb[w\Âq·•~\àÁg\ÃSo\nN\ÂEº¹\ï[	\r9dC\Ç\ó\ğ\ÄÅ™—~Dş\ÅO¿Á\İ\çoY_œ@/\Ô\ÍÛ¿“\àKFº:ş\ä¯H\rÂ‰ÿTú\Ã\'\Âo27\ã—\Ş^á—ƒÿ7À\å€3\"$\Ç\Ş\îr¯Ke\×û\Ãf^=º¥\ï\ÃUnIÌ½\ôQ\ã‚ûı}Å¢\é³*\á£e$]”†\Şp\ÃÓº\õ¦º¥\ïl„·î¿ªix\æB7Q”Ú…­\õ~·‚\n«\ÍD¯“\î\ÎÿY‘\ÏA\İw\É\ã¥Òš_ı/`¸\õ-‰«\Öøş\ï\ó¯³1Rc²m¡	 \ñÂ§\ÕÁ!\î½9ÿGæ³¡	 ›·ÿ3\è?nq{\ğ\ìøI\rÕ§€\È\Û^E\è-·Œ\ãy\ë\Ü\Â\ô–\éow\Ú\Ğ\Ğ>F\ó¢WÉ†&@Ğ€\ÂE\òÏ):)Ò¡®Zv*o-w|U\Ãg	®`0D\ÅU\ò—C.2—x\Ôrs\çÎµF\æ\Ü_Tx\í7\ÌI«\ö\ôøº\å\Æê–¾w\à\çNÜ¢DS°\÷b8ø\Â\Ò–WÙ£KgS{z| û\ô\êT\çªTX\ö[\â)7\÷}\æEg!t\ârL\Ü\Êô‰·¹\Ğ@)4\ïr\ÅPn‚”®‹«4\äª\"W]\ÕÁ\ÙüPq\ò\ñÌ´<Z»¸\ö•Gš)$\Çøqn+‰¾¬‡šû=4\æ\Ô ùß£†½¤yl\àzXxYi\Ò&Q„h\Ô\æ\òz\Ò\ß\Õ\ëo¼pn©\ñ)MÁÓ—DTt‡n\îû\í\é92şÇ³ü3&š\İ`\"\ãn.t;_*\"sU,§\Ú\ğ”S0[ÿ\ñ#¿\âhª†s\\41\ÆüVø½u\ë\Ös3“C·}\ôº¥\ï\"\Ğ\0Y\ØÿJ8üœ\Ò>§µ¶\Õ\èµu\Ï\Æ?}ªP©\ëùs‚Õ¬n\îÛ¯/\Ü\Óct<~y\é²\rÍ»]\õ§Å¥@ş]º;ŸU¥!W–\ôp=\ã§rŸ–ˆ§\òzY·®\Îùb\âû±´8Ï	\÷@\íuY%\\\Æ|Œ\Ó#Bi@{>~QWT\â7Á\Ç?Hû\İ“VŠTº\'\É\ñUº$Da\ÛÿŠHÁ—ş[wtV\\u…»g[<®‰w\ÔB7¡\Õl\è¨¹‚|× s\'\Óe\ğ”\nùûe2µ›\Ä/œ;\Îbº\à­\éÜ¦[¶O.FQ¦*Èœ\Z/¿f:*M\÷O‹\ãÊ\n¶û\ÕT_\æ\ôÛ¶ÿi|	p\à\æŸ~S\é¿C\ëƒp\Ì\Âw‹Q>\ï\ô\Ì\æ.„\Z-O¦HŸ!\å_‘Ô \ê‚\ÔXd\"Š³j–\è\ëz0\Ô\Ü6®g³`œ\Ö\Ş`NŠ-;>ü€CÏ›N+…\ÌşB5»ê»¤{\í\ó“`%\Èb\÷m\ZYŸ‘Up(ª»\\ú¯Uu®…¹j‹”\è>%\Şı\Ò\òPA\Ê\Æ\Óú	¥K\ö\ò]ƒŠ2a\Ê\r¡\Ã\Äg\ä„Eù\\\ãE\Î]V\ô©\æ×¿^\ÓW\÷\ê”C^7ûµW£•\Æf™´­rË“iÎºy\óF\õ\"\àç€“\0‰£ù¹\è§\ß\é8‹¡ƒIzŒ\ÕBÖ¯o%±´\ì,Op¶\á\ÉBU\ç‘J×¦2\'²È¶’«½±™7x%\Ş\Ôz„y6œq\å­woRNa\".K~D\Ñ\ğPk’\ã+Y¿~°€\Ì\ÅA*®\Ú\ÚıÿGy\÷‘Rm\ÕÒŒ\Í\\“\ë\ÜT*©ah|<8G\åmJ¯™\Z˜\Ø5h|ae¡¢\Ïù–ş\Ú\Í~Ô³Yo\Ù¥£[úşt;\0£K\æ\íL\äû£\ëÑ•³?g³N\Ğ\í\Ûû\ãb×†\ã\à‹\ã­ú–~»P\Å\'tÈ†\ÎZ/\Õ©Ü›@\è7n=@p‚ù—Iwg±™:#=Ñ¾Œ3‘E·MÕWP+5šc Wszˆƒ\Ï	[¯–N\æ\0,ki\ä\"Ù¸\î¢DXŸ+¦\á©ÉŸœ\åb›t\óMU+È¬o¤t§\È`Ì¬¨‚~\ëi²i\İs\ã\íœ<ºµu\r\Z®À«	LœGV\Ön\ó(sn«Cš‡ş\Ô\å::wæ”¾Bš\ì\Ñ\ìÙœŸ«\í\ë\Ûş\Û	s\'\ö½¦\ôŠD\ÉÂ²o„]f<<şQ®¼²\ÎúùMIBr9¨ˆ\ñ,›‚\ò\î$Vhka\"“2=›^x6£‚\ñ±\nø‚k@ 0zˆ\'\İÀ¸»\×_ÿ\Å?-$é‹¿Õµ{­).B!\ã®Eg¿1\Z­\ÙC\óè¼–j«Rœ\"®`dpM¼H@´Y€\ï\×Ş»9z\è5„Î„I!\ô\n}\Ñ\çü\ï~W»9N¥¼œ\Í:\ÄI\ÊZ ¸\Äd\òÍ£\Ó\Øt·\åü´5\Ğ\Í;\îD\ÅŒ/„şyŞOAû\Ï\Ãwg°¤\õª\Ä˜ \Ò\Ñ\Ñ8Å¶?0AsP¥¸û\Í\Ìd¸\ß\ßq\ä„\ÒGF\nšX¹È‘ms^\Ís‚\n\ó\ò´\öyMI£\×\ß\ô\0\Â-€\ËeŠY’\Zt\İ\Å\Ïg¨ÿ]‰0\Ò\ÛÛ„\èe€3*Š\Óa>¯P}®ºQ{>^NO\Ë#\rÒµf¾Ÿ¿8yŸ±^\ï\ô!\×\É\ÆQ{c\Ó\÷]½¸kŸ\á|ŠÀ\ï\'\íW‘¿\ßg\Ôn~˜Ğ•¨f£H­\ÛÿpË¡\çM\ï\ğ\Ê/tNc\óÈ e\á\Çpm«\\\ŞD}\Å\ö;]*\0\å\ïd\Ó\ê·\Ñpƒ\\8?}±ˆû\Èj\è>\ñ¼›ùB¡\çJ\÷º‚a†Q#$ûaÀİ°ûÎ\ïi¿\Ë\å\êˆü½“«#ı¸¹¦ø^\ö£\Ç{Ø¶\ã?\ærh\ó¹\Ğ\Z7”^¨J±|°sU’£Šƒˆ\Z\äk6=Z\ĞW—7b$fi£š¨ª¢\ê\"¹¦é¯¿°\Z]\ÍØœ·hOO•«İ›tL¡\Õ,\óı\ğ\İBü\Æ\r‰0)$¡@\Ó\ã?;ü\È-€‘•¥¯\í~\ò\ŞQ\õ\ï¦qÄ¢\×\ßü\à\ÚÍ/†CgÍ¼C12\æ\Âé“i\ÎüU’\ã+iW\\‘B\Å	ºg¹Ü¼(‡W\ĞTı\ğQW}^¢{;€JŒMaœK“V,\Ö_s‚kü]|M\ò5\ğø>F}\Ñ?\ô%À…\nÎœz›‚x\ÏQY tÄ [oú.ˆk\"=pF\éÚ›\à´\Ì\ZC}z}¿\\{\ÍqÉ°2‚\Ê\Õ\×\0®—r4Jªl©³\à\ò>[\ò¡šw\ÊW¤f\Ú\Ü0\ê‚1>Š\â.\Üş—–\Ş\Ø!dÁo\"jz­tu\Å\ÔRª5«®\0Üº\ğ&¦\Ã4D½š¿bÛ/\Í\é\Ø\æ7_\Ü\"dlI\é{5\î^µ¥KÃ‹u\r\ó\Æ\æ7Q=Z\Äü\ç\rz\Ë-\ã(ÿ¸t‡\\\ë\ä\n\Æfƒ\ô\öÆœ´’ÃŒ\Í$u\Í\íı†\éWÓ±\ä\Ç\á«Vr\ŞWx¹?\\¥¸\n}ø„B~\×\à©\ñB‹…\ö•+8ù„\×T:LÃ¨6\Ú\×7z-\0¹8S[r\ÑûıXdtc¢œ\éÔ½½*n\ì©!gøF9xÅy5\ã’\õ¾H¸\nŠ\ë\İ\Å\Ó\å\é\î^œ\è¸J%”<j,\î\Z´¬\ĞjR\ô+5™Q\nªAº‹L]\Ìmœt\ğ`\ÍB\éfl&Á–\í\ßD\Õ\é›\Ä\ì£\ÜühÄ»É•\Ò\Ù\Ù<\Ó\æs„\Ğ3ı\Ñ\Â\Ç`Ä›™kv\Æg©´\í,\äyJ7\æ	-\íÿ8) ƒ/ˆ\ßC¾\åş\Â}¤r\õœ\å\ê\r\õ¿\r8€\ö_Ll5«\é‚WS\õ·l\Û\ñ…9\Ó‚\Şx\ã#„…\Z±%\òz2\è\Ø%I«&v\r*\n¡Ÿ\\\æ«s9.£tt\Û\ö_\æ¥§\êf½\×|36\ç3ªªŸ\0`¼İ­\ãĞ¯T]J¦~\ä€\äƒkGqJ\Ö\Å\Åšš|aÆ‹“\ñÂª^y[\İÙ†1\Ú\Ó\ã£½§\ã5u\0WG·\ä\ğ]\ã\ò¡‡7\õ)E‘\àÀ‚_M\Ü\à\ĞY\ÎS\àq½y5\ËÂ…\ÒÇs9\ì¥\Ò\ô¸\ó4PƒPz´k\Ğ$c3¡\ËİºmÛ“s:.#*ÿ\rÀ\ğ\ñ“«\Ò%šı\à\Õ,o³DqHcVü\Ì\áe?\n¤|64<=\ë.yZwBz ¬fÿs\àWg1\É\é„Ñ¤úI®z\Õ\ñ°š\Ãk\à\Ø\ô\ÄjÆ™Xpo\è]@£¼øl£6Œª¢[oú¶l\ìü*\Â8\İukxf\öCšwC\ó.w‰ş¹lZ·]¯¿±LY™\Ø\Ø\ñ\à \ğjF>šŠv ùî¹µj\ã8²ù\ğ\÷.\Ïq\r,üe‰»©\ónº‚³7Hgg³K×˜#\Â|\Í\ÔÀ\Äk8\×£a	Zz‚È¦ƒ6\\>\ãF[¶2Ö¢\Ï\ã\ëøü\rš†‘\å\ĞüX\á³TÄ³\é™gsŞ£Û¶=‰\ğC\0Ÿ\ZsoüÎ½^.İ1c1UBƒz\Ã^h\Ø7\ñ³|ı ªAE~C¼nJÍ\ä`T-”n\Ì„\r@\ÄI!\Å\å˜¤ù¥\ğı\ë“\Ü$ş€\Ô\èd#h\àŒB^²Yo½µ\ö\æ!º¥\ïwÀ@%¡\ôV22g¦\\\× ^\ë\Î\\\Ô5h\èd\ò?\ğ\Í\ØL”lÃ™(·\Ìø\õ¡\ÅSmÿ!a³œI­S#‹\Ë\\ÊŒ\Í#Ÿ\Ï.”Yh\Úvoxo~\í\r¯À\àu.b¯¦¦ù<\Â\éº\rp\Ö\è\á8¡tZß½¡®µF\r#B`\\|\n€\á—2\r\ÏD\õf/•®u\ç%8¼<²i\í§É¶\ğ\ğFª¯¦\ğıƒÿ·\Zc8zJ^U*…¦G\Şæ¹¬Jv\rš6_S\ç†Gi»\Ò*á‘¸\êŒ\ö\Ü|\ÄıŸFŠ\ÒÀ£MQ36RŞ·ò¯‡‹W³é‡† PH\ä²GU¡WSˆ\Z„¡S@ƒ›ªŸ\Õ[nu†\ö\ĞI\ñ$a\ä¸ü\Æ+*²a\Ì))\í\\ù\î¾\ó\ã·\ß]ü“HÊ‰¿5Ñ±…øê¼š2\ÈE8ü\\\Å*[\İ}l”VySjL‡\ä 9/9\ô\æ9“‚Ë©¡{\ãÃ®šŠ{\ÊW,‡7i´`lûXú-\÷U\\\ß%ƒ,Ÿ\Ø:U¢·µ\Ô,gÓŒ\Í\Ñ\ëo¼pc\ñ\ê¢\Ú\ò\"¿\çHwg…\ri+&¡?YĞ‚)hj\î\åÀ3°…\Ï\0\Î\ëy8F©\ñ‰\È\ñıº)2Œ\Ù\Ğ\ë¶?È\0Œ‡Ow€\Ì!X˜/\Öy¹tw&ºÈ”\î\Î\×/`\Ñ/!5RøPú_¾{’1ı—$\Ï}T²­\ïg¸ü\õø-M¡\ôcY³ªŒ¼Œx¸¢1œ\äQ\ó#\ó\ìGV;?\0µ®A‰#gS\Æ\İı¿\à7\î«\é‰Yvœ\r´²í…ŸGs´Í³yD\áVq=›\Ñ\\ü@û¬HW\çY„2)\Å!t¿Áy/_\È{Cš\Ú\0\ì\âU¥O8‡¼BÖ¯‘\ôi5¦i\äF\Âæ—»^i@\Ò\Û\0\0 \0IDAT\Òqhÿ¹«P®—\Ş\Ş$‹6]ºŒG{³;†Nu\"\ä\0Â¶9-J9Bq@½\r€¡\ã]\Ñ>\õ*\Õ¥wu>p©¨;D\ó\îG\ğ½oW},G*N®&=8Ë†1Iû™‰±¥…ŸKÂ¶\ğj\Ææ‘ƒ\ÆfvQ¼¼€\Ì\÷ ZK¡s\ç\ÕDƒ®A†\Ö¤T\ò\Õ\ã\Ú\Óãƒº\÷C\Ç\Ä\ŞK¡»&x\æ\İ4\æ\Ú\ó\ñ\Ã =€\Ó\Ü,t\á)\Ô´\ß¾{.Ã‡ş\"‰qIw\Ç(\ÎC¶\è×…B<p!¶y¯\æ3dSÿ”\Ä9\r@S.”®\éxy¼2\æT\n\0„·ŠHÌœŒ˜ø~\à\Ì\Ğ\éM\å{z\Ã\r	[D\àz;§\'{Ô†%\÷n\å:ºt\âg¡ü‘xfl1(‘\ÕE\õ.Mù6¯¬EG7\É\é;\0h\Ş©¢b0_iÿ$\ïş\ŞÄÕ…\Ò\ñ\âU\äg„®¥\ö\ÅQ†‹‡v\npr\Ï-hV–Ê¢_:\é\0´GÖ¯Ÿ¢\ç\\LTşp^EwMülxû»\í¶›A‘ ı\ßœ\Ç N\Ş&8	<\0\åD\Ö_\óüD\ÇUŒx._sR× %®À@¬\n½J¸‚½\ôDª==Y\Ây¨X\ë;\Ì\ÛT\ßr6²Á?\nzZ\ò‰Ú‹Ys|\ÌvD	°¡\ãE n–œBor\á!\0\ás\Å2)ºyÇ€›1c\ôJh»/|ušl\èˆ\é2Œ\Ú\á\îu­\'ı8\ğ²x,,ùIøn©\\G%\ã	*\Û_\rÀ\Â_GD\Ã¼$|\ÕO\Ëø\Ç+9—1‘ ­Èµv>%^ß–‡\ÈWv¤¼ª…\Ò\åÚ N† u:!w@°•	#\İ\'Ë\Ês4§>ƒsv{6\Ã.B*\æ\Ù<RĞ¾¾ı„9\\\åx6\÷DÆ‹§ß°JHB\÷¡\å?\\\ã*Ô›Z€]\ä\Ó\0Œ®\nE\êK£\íşB^‰‡y7y…n\Ùş\à;\0:\Óyˆ\â\Ğ\ö{\È\ì\rß­—MW-i\ó™\ñƒ\n\ô,,º{\âGC\'FÄº¹\ÙI¦‰¢\êB\é¹F9¾\ôıRƒD«(\äs	¡\Ğ^±\ä\Ñ\ğ)\áù«›·\ïª\ÚZ¼üJ¦*4e\n#«¹¶‰©lyi-\Ì\Ø<²ú¤\Ç|\à€\Ë\ã\È\çr\è“\Ó\ìHo¯8ù¡\æG\'\æyA¡\n]\ÙM\ó‚O}	ªÒ‰\ç\İL\r:½9\Ç;k‘B`\á\ëzÀ\ö\Ç,(\r„\ŞXˆŸù\Ûr† ›®y	\ğ:À5Š(\Î\ë\Ï?\ë\ğ\Æn.\ç\Æ,ø\éo\0n\òŒJo\É+’œUµ\æ\ZŸ¦ \í\Z\Ô\Ã.±*\ôê ¯\\ƒ…\Ìş*^i|¾vı•û\n=V~„¡\â\Ê\Ê\ãx\ö¢Z]Î©±\É\ğ\ó\0§\ÙTB\Ï5»¾«\0¢ÿ\é\n‚&´\İsü@\ÌPú‚0”.+9ùø\â\ílµE·mÿÂ¿N‹vR\'Yhy8¢w¨WÊ†\r1-À\÷¯f\ß9\ñ³\á\ÕI6\åzıÇŠÚ‚I\äÀ\ŞH1j}Z#Š$U\ğnJgg3\Óu\r\Z>‰‚I\àY=a\äŠ+R(®Me\ã&Ša&Ä¸ş*`mp©o~ùÿ«š\Î\æ†¸\'F¶­¼\ë©1olx\ç	„Ü³\'=\nƒ\ò\ì\Ì=\Ì\ÃPúØ²x\Şİ–½7\ñÿ¸\ô\r£NPÿƒ„^­}¯Œÿ/¹#4\0\Z\ğ²‰³«t¯{!\ğFÀ…\å\óEG¯\æ0iÿ¦˜#3\â\n¼g\Û`ty\éûeú\éÕ@j\ĞB× \æi\ó5\÷\ñĞ£?ÁH–“W]\n\Æf±3\'!tû\ö~”M\ó\Õ?\Ã\îUÅŒÍª \Î\Ø\Ô4ø1+S¡ \Í\ÄHú)§\ï\'@Ë®‰m\í Z…şÛ¶¹LŠ\ñ?Kø˜=Ã»\éEŒ\\y[°\n7Œyƒn\Ù\ñ(\ğQÀ\åF\Æi\ß\n\Ğø$´\ä\å\Æ\Ş%\\?\âG\å”£Ë£]aşY¯\Û\ñT¼±H}™°Wu\Ü^\émÁ(¼L6lˆa©–@BŸ\Ô5H\nÆ¦\È×‹‹?\Êp\"ú^\àtu[wÎ²Gù\èÖ¾\ótKßši¾\ŞVµÏ‚›UA\nwq¶Œ‰LD!E\r¡\n>p!\à;Š\Ûfe\Û\\¿_\0\Ñ\Ï\ÎÖ¾,H,w+\ã8\Æ&@k¾*}!µ¶7Œ\òi\Ø8\÷Tÿ+\nº´¥²\äG >€ ¥µ±”\õ×œ\rz)\àtk3\'nP\ğj¡\ã\Û\â\rÈˆK¢\ğ ¾±Y\È\Û\ôHeß’Ô˜&v\rztb× Ñ•]h5É£\Ä\Ù\Ğ\ñ>\Ğ°\èWÿ\öG	flV…\\e\ÆfC\Ä\Ø\ôüøy[e†\Ğ\Ç\'\Ëa>›|r\ÏtU\è\Å(.”>¾8Zı:;-»\"…IJ7\æºe\ËA\Ğ0¾=/\Ş2ı°\ğ7\á»¥»\ó\r³\î“\ò¯¦º®DQF—ºRÇ¿\êÖ›Ã¨>a(}¼=2I\ÃÓ®•©;Fr¡\ô	]ƒŠÒ¤\n!\ô,\Òø\Ä\Îi ›Ö°p2d\Å\nG	flVƒ”_(3\ó\ã\ï/c…0¶RF“\õ˜§»\êªF×—¹\å¡É«®‚w\ò>\İrÓ¯(…´ÿŸ@®hÿ\ãº©¼A:;\Ë(\é7Œ\Zs`\è€\Ó\ëqünb\í?1³e¦\ÜmÙ´\ît\nZ\ïs\Æj”ş‡I-Y„-\ñb”MF¾Dø—Š\á\İ¢\Æ\àk¤\÷ª…‰ŒG\õ\ÍÁ‹\É]ƒ\Ã:?\ÒÍ›“U?Š‘\×<ß¿É¡c¿79E\í(ÁŒ\Íj°o´0\Ûk\Æ&D;\÷T\İØ¤9u1°˜œ¸<¾\ÆV¸\×2KaP—¦Nw\ğ\ğ©Ä«\ÈÌ‡\Òh·—¾£a\Ôz\Ë-ã¨º­\\#xi¼¤† =\ï9‡¡ş\éµg}ÿZÀ…\ÅE^Í±%Ad>­›ûš´¿Q\ô#7\íq\í›\â†\Ò9}§ß˜Ìˆ‚´¤Æ§&\nı/„ñ°£”…Ğ“@DD6v¼\ñ~Fø_\ô«\É)jGflV ‹„»›\Ë\ñlBDOV&2¨™q!toÄ…±£Z¨¨\õı’M\04¨J\Ï-€‘¿F\ãã…œ3k_i\ÌSt\ë\öÏ£ü€Cg\Ú\0–Jû]£À“¿—\Ş\ŞI\îQÙ´\öTÀµ—m}`²v\ßÁ,\ô|Ä»>\Ş\0Œ\Ê\Ñ/2Ge\ãB:QHºMrt\rR\ë\ZT	\ÒÛ›–occ\Çù¿„Nœ\÷Á’\ï\Övp5&f\æºQ:\Ú\ÒR¶±™\n\Ã\èšLe\Z¤\÷ımH£¯´>\è\ôù¢B\à¿Ò­\Û\ïu\ğ1ı\ò@#Ï…¦=³\î\â…\ón\ö¿”\ódİº\õ\Æ‰unÃ¨d\èÑ”°ÿp\\Œg¹Œ»pú¾×¸~\Ù#\ßL”,\òıkAR °\äg\÷oj\İş—^\ã}s‹\ê¹\Åin.º§´ıDQ8pˆ\\,W]Õ¨7\ß\\~ü5\Ú5hR‹\Ê0ŸWŒ=\Ç]ˆtw/ —k$\í·Cn1>K\ïLT_\\ˆÈ¢\Â\n\í?ƒ\Å?¥*ºš\ó\ólV\rq®9¿¡\Ìİƒ|-/\ĞD«#\roœ>Ó¤z;Œ.s¯g\ÓÖœİ¾½\äk\0=;^Ÿ\àB¯t!¥\ï{nÃ¨t\ëM?>¸(Á\èŠxXø›B¦²I::\ò\îQ\'ú.\î\Şh}2E\Z\í\Ï%˜\â\äº\ò~£\ã\ÍMfq\ò6!š·¹¶Ì…\Å9\Ò\Ğ\é\Z\ägœ\Ø?€ˆy5gf!:ºİ—}ß¿_~\òeT·\0o#\ôd‚s®¬ü,ş	G»¡	flV‰+{\é(eu\ÆÂ…\ĞSC\Ñv‘B»IES·–wx\rB\é\Í¿h\Ø_··Pº1Ÿ\ñ\Ó\İÀ\n\ì)\ô.¾“Br,¡Aº\òŸy\Ùn \0‹‹¼š¹0pzø\î\Ë%\ö\ÕÀ…\ÒGVM\ìW=-8=L\0¿üPºtv6£R\è\Zeø„\Â3\Ê\÷,_³RRC®M\ì\Ê\Ï\Â\Ê[n®˜±YM\Ü,Ç›%\ôl¢U36¥»{1*¯ \õ\Î\åe ”ø”»tÛ¶\"­Œiü2\àZ™\Æ¸.x7Ï\r1\õc£>p\÷ş\à\ô‡\ï\0-Z\ÂU²\ñªÕ²nİ‰À{\×	¦\Ğ\â\Öq\à\\\ĞT0\0bu\"2&”@R‰JPÍd¡yWø\î-ew“s]ƒ\Üsdú|\Í†\Ç~P\Ö\ñt\Ò.i\ô«\å!×¥k\Ñ=\Îs¹\ì\ëpü¿Á‰ÿKo‡¦\Çk=\êºÃŒ\Íj¡A\÷ˆrM/”’\êy6ıÑ·.©tAQ:\×ø1…\nEøL¹§Ğ[†ùo\0\×\Ä\ó\ô¶\İW0€=Ï¼›\ÆüEš>¸\ê}\çÁ’\ö\É\Û\ÍHúÃ¤ü. ù`r-0pfø\îv\İ\ÚWT¢n\Ì)Û¶ß‰²ˆJ/´\r>\Ñş—•u~\'/\ã\Ğ\í\ZDA\òn¯(\'\ôHfÁ½°\â¿&~-ÿ,û\ó=wÿµ\İ¤±X¸|:\ÌØ¬R¡g3ŸPÅœMQWÅš€†¢•\Ø\áH=\ÍVt\õ](\İoˆŠ\ÏNjšv‡y\×\Ü\ö‰7Œ\ä\ĞÍ›\ä5.³‹`\à¬xh\Ú\ÕF|/\Âû\0§\ÑX\Ôy²ÿ…‘Eo¹š5FU5¿\à:4Sú\Î-‡İ¤ h!\Ç \è\Zä¤“Z™¨¡<¶rA\Ó«B7ªŒ=¼«†&F\'#W^cv*\ñ\ğ\ë\×/y5\àDÔ‹e0‡!tı‘Ó‹«€C·®z!n¯\èB(}#ıT4Ã¨%M‹ş°pº›q•*¹#\ô\ô§\0WyX\ì\Õ\ô›\à\Ğ9\îµp‡n\Ùa¡\Ñz JO\Ç[p{#…·”‘·¹şš\ç“\ï\Z4]:>šşZ\ìcF\ÌØ¬\ZÁR\ÊüG½\ñ+W\ÆPD/‘T\ö\í„\ÒW\ÅB³£\Ë\\›I(«\n½§;ªAE\îI\ñ²mˆKY(İ˜¿hO\Ïp-\à\nE¼(\Ş2û\\XH\ó£\Ğø\Ä\Äm¾ \ê9³\\\Íz¡e\á\÷	\Ó(cv \ÎW¥\Ë\Z\é\êŒ\ç\÷!\÷©ºŒŞ»t\Û6«d™\Ñ\ã\\$¢ø\ë\ğsa\ğT\×4atE¼â¯£36«F\ÇR¿\Ìı#ÿš}h|ú\í\Ê\ÆU¡gú\'‡\á\nU\è94ı¹D\Î&AŞ§¦\ãM¶2© \ÔË§¶6Œy\Ã\Ö\íŸ\\W™CÏ‡\ì‚xû/ùIa\ñ5É«\Ù\é\Ã.w\ê\æ¾\Û+\Z«‘\ÚÓ“… ;\Ï\Ğ\É\ñrv\ÛŒF\â†Ò\äQq× \\«3¢BŸ‰¡“\á™\×Nşzúbx\êx\êM°\ç\ğ\È_\Âî¿€g^^™y\Åş\ZUCœ±)\å\Z›ù\Éh\\U\Í:–®=\ä\åÀdmM%B\çû‰­x›\Ú\08U\÷¸U\é…\ö•‹\êS\"\ã1Œ\Z\à\ò\÷t½{“†ı¯ˆw€\Ô\0,ú%4?6¹IÂ¡s\\kL°\n\ôz$¥û0r|\éû¥CC~\Z.9”.7®^LB?‰¼\ë[‹\Ê\Ä_\è$Çx+\ìş38|º\Õ˜±Y5‚XV¹Æ¦_06N”¬ÿ\Âÿ}±±9º²A\Ó\"¡\âzˆ\ö\ôø \îxCÇ»Š\ÙRi\Ù\år—\0\ÄB\é\ÆüF7oÿp\àBqa\ã„Ri¿–üp\â\ÏüŒ¡¿f[\ßm\ÔH––¡\Û	\Û\Ç\r¥z¥?_º;N*i\Éºµ)\×º=\Î\r;Jlkt\Ô3Œpe\ÑW\'*›@>|8œ\ßz|<ızx\ê2±c\í*«ˆ„J¹\å\í\î\ç\ó®’\ÍDÄ…\Ğ\÷N\î:2˜\÷j#cÿ•\ìi\õ3¨t‚‡Ÿ\r‹JÔ™–œ\ëû<p6 Kw\÷bİ¼ù@¢c3Œ¹Du#\"ƒ¤\ÙÿJX#[\Å™œ«9pvá¦\\—t4Ä¨\í¹eHº:¿\\\Æ\à\Z8\ö;”\ì\öj}\öŸ\ç^û\Ş[%œÑ…\Ğ3‡\Ü\\Ÿÿq*\Ò`C¾b\×JÉŒ\é\æ¾ši\é\íM3r\ğ5øú>D\Şx_+?\çVRÌ³Y=*\ôl\æSûM€l¸ú\Ù\äC+\÷\Z\r¡K¯ÿX‘%ZºyÇ€[¢\òBK£ \Ú£oOr\\†1\×\è\Ö\í\÷¢ü3\0\Ã\ÇÇ«Pt°´“;r\ÜG\ó¢d\ò¬\äQu¡\ô\\k¼Ö¥™ı\îÀ›½*]:;›\×â²¹¨0hdu¡²Š…\ĞD{z²º¹\ïvİºı /@ø5\0\ãK\à‰\Ë\Ê\ï(x`\Æf\õpÖ¢\ä\Ê\Û[\óÛ‰\Z›ˆç¼š,(26‡WEu\×¡O<¿8\Í\Í\ÑU\ñŠ#\Z\÷@ú{­b¡tcş“\ö?D¹\Ø¾\ë0S‡\Îp\Æ\0²Ù¥¬u‰\×\ôe\ÂÔ¨Á˜\ïmA(]9O6]µt\Æm\Ór!a× \â•……\Í¾\÷\íxƒ0JE·\Ü\ô+Fy)\È7\0[\nû^Y\ãQ\Õ36«…\â½±\ò\ö\Ï5…\ÇI6\\,\â„\Ütm¸¢B\è£H\Ã=o\áüAU:Q\áø\ö#¢¹©\çI\×51\Z­Fı¡\×\íx\n\ØÀ\Ø1pøÌ™w˜\ò :7|\÷0\Íÿ#©\ñ\É¤ÿ|¨@‰šz\óŒ\Ûz¾+¤”\ñHcŒ€‚±ù]½á†£7®;h_\ß0czY\Ş\Ã9p6Œ;\Ë^G&flVÁ¹\í\Ê66\Û\Â\ã<1\ó†¥h´L.\Âsza¯\ë–-E–h2\è\õ7şpÉšqŒMˆ†\Ò=\ğŞ\ä¸£&4\öª4\ìY¼\î2\0‡Os°\0\ÈV\'±c\Ô5aUúx;Œ\Å0<\Zt•\é\0*Ó†\ÒED \Ğ\×lydbtml‰;¯;ˆI\Í\Ú\×7Œ\ò\Ç@\èy­‡T\Ş‚*\"\"\ÂÆÊŒ\Ílhl\Êc3oBG]× (Ã‘\nq\ád\é\ê¼5Á\ó\ãb~c\Ë\\.K˜‹4™}\Ğ\ğ´\ÛO\õ=´ÿ3ŒyŠ\ö\Ü2$\İ‡\Êÿ&\×\nı\ç\ÂâŸ”~€±c\ÂWıÿK†h$M†/‘\åc€0ø,h\Ø;\ë.€‹\î´>vˆºHz\ßß¦=?<i;\×5h0…\äQ$78›²|\Í9B·\ôıFº:ÿø†Nq)d\é*\Ôş\Ö1flVƒıu+ÃP¦”alú…n4c30€±Ù¼§°B)r6pvç•\ÃÏ‰\÷p]p\ì[\"gJ\×\Úst\ËM%–´F\ò\àe\Í\ê«Q\Î\æ\à¡ı\ç\ñs½•½ù\æ\Ñ\ê\ĞHıH\ß\é\êü9\ğ†5Yœ&Zw†\Æf#M¯&+†H \ä>U× \á@\òH\õ·zã”1|£|>\nü*N\ò¬ı\ÎZgN1c³\Z¥\Ú\ó¼2\æÿ\ì¢\è»Gl\èx\àfš\â\ö”š‚¡˜\É\êI\×\Øl»\öH\è\İ4cÓˆ…t­}/\èL\ÍzuK\ß\ï\æj<z\ë­9\éZû	\ĞÀÏ¸û±\Ü\ÂBc~ \òT_\Â\èR§Ç˜)1k©\é1\'}\å\ÔJ.cJc3¡7=9±k\ß\Ã+\ÃmÌ«9\Ç\Ş\Í_\0/`p›FxŞŠ¼|Z\ôf/•°/9@6Uœ\\Y„\ĞÅ‡\Ö?}¨°ª–uB\Ézs©\ÃĞ¼\Û\é\Ä	\ï’\Ş\Ş.«¾5\â¡W\0—Lû±¯sŸ¡:F™\Å\è\Æ<\Ä\Ï}\ñ\Üu6´ı¢´ıÄ‡Ö‡a\à4P½D®¼2£·Ü’oü!7®D¦\ë\Zt\"ù2\rÏº\Õ\ÕÿF\äŒ.m(/\òY\"²±\ó¯.˜vƒ4ú‘¾=\Ó~0flV\õV\æ_§\'§\Ô\Ì\ÊØ’\ğ\Õ0mm‡:¤·\×®\0 \éQH\rm\àO®L¯g\Ú\îE‰W3\ÒÿJ\à{µ1\Ï8g\ÆO5m\rŒª¢[w\Ü/]¿Ng\èY¥›\0-;±	\í´/¸\0øfş³h× \æi\ó5\÷±sOŒØ½‘\ßw~‘\åĞœL\àrJ„\÷jjO\Åx\æš\ê|2V^\r„‚Zoºe‰B\Òÿ‰x\íO˜0>©\n}Òº$(ºUù\ã\ÚÆ˜OÈºu\Ç«—+wÂ§\ÜW´ıc6kÆ¦Q}$xY¯}o\ó#…ùOr—Müpº®A56¿¦·\Şjy\Zµ i\ì.Àı\í\Çb¶©\ô\ö6gÍ¸\Ñøøœ\ÎsflVqMs:gq=.8L \ÍU\ñp\Âz\ÖU3\Îw¼\Ñhˆ\è\ò\à\Æ2Œ\ÙIiÁ«Ù¼\Ûy\ô\Ó£¾r\ì\Ø1\ÜüÆ¼\Å§e¬\éU^Ş¸38—:©£Yº®Œv¥3É£\Z\á\Ôt\0c‹gŞ¸†=pU\ÆK¿YXT·\ßn1ª}}\Ã\Ó\í^\r\ÌØ¬\êŸ@¦Œz®²n\Ï\Ï+Š\ô\ö¦ş€–]\å,\Õ#\Í\Ív†ú\ßXË¡\ó	B\èd)ü\Ü/t\ì²^\ÑÆœ°mûİ„ q»	\å²’\î«_L\ì\Z\ÔR\äT(x5³Œ\ê\×\Ë®‘*.¼8^EcSü\å_·<\\XTj#\æ<zc9›UAœZy9©_#Ë£\ï*669øZÀ)W¡<ú¾\â\ê\÷Ú9«ÿ7%I4\ï‚Ôˆ\ë´$\ò\ÇÀ\ç«8:\ãˆÁ?R‡ Yx¼>B7\æUU\éZû%Ğ¿aø\'wWª.s\ëƒ\ğŒx\ó.~†!t‡\æ\"Å¼ÁÀ\Ø~¤Û·\'\ÛÙˆ‹[`\ÄIˆHERù\n‹\ê9Ÿ\çÌ³Yœ±\ÙP\Æÿstuøj„\ál²>A}|r\Ü\Ñe\õah‚\ë‚2ºª\ô\í%­yaú7Jww—‰Æ‘ƒ8\Ïf\ã3œ\rM1cÓ˜;\ÂnBš‚\á“g\Ù8‚7\â\ô’„·Šˆ \ÂBq× \ìB:©U¡\×Áû¹\æj\Åy6Ÿœø\Ó\\`l*s¾\à0\Ïf\ÂÈµ\×\ëVjgœ(CÇ‡¯~\\©H³\ô\ö6¡¸¶f­’\Ê\ó\çÊ·§\Ì¿¬\ä\\r6a\ğ9\ĞC‰¡\õ>8t6@#Œ\\üsu†g	Hoop\Z\à:QEÉ¯øÕŒMc\îhYx\Ã\÷\Ç0¸f\ê\èÓ´û>\è:¿Ás\Ø\Øù\ĞÙ»y\Ö5¨\æˆ\ô£\n\ÚH,Ù¿R\ß\Ñ\ÑN£¸.-ME\Æf\r#8fl&/g\ä_gbş?s\Í0¶Ô½VùV\Åc9x1\à\\—SU¡ºİ¡[ú^]\ñù\ÊDº:¿\\\Ê\áSa\É\÷¢\Å\Z3Ó´Ç…\ß\Ç‚\Ê{0cÓ˜‰Áş\Ó\ñ\Ä%\Í{6\ÃIX\Í\Ø4\æ\í\é\ÉJW\Çm \Æ\à\É\ñı[w\Âş[Eo8¹kP¾øH\Ô\ëo¼£\ÆsŒŠ{v\å\Óy2Çš\ä\\4HHk(66ƒEµ7\÷£\'\ï½\0\Ñ\Ò{Ş†ŸL!iQ¿]\ñX4¡{#\Ñ\êE\Ç\è±0\Şnø¹Š\ÏU	\"Ÿœ±=rbŒıpš›W\Ê\×?\Ã\Ö\Æ\ÑN*\Èc‚‰\ÅA\ñlZ\İ	Z/~ı\è6•?C\ÕB\é\r0rB\éû¥¢z\'a\ÒX\Ü5(\Ãaj–u\rª¢!\ì\İ\ïƒ]\å¾\ö—\Ô\ñ\İ<\'\nMOMü¬†36“F\ôe\0d\ö–\ìr8k\ë\ã´,º«¢a\ô¾¿\rpm\ËZwN^-å½š>\Ú\ğ…J\ÎU1M‡o\0\×36­yc\Ó#\ë¿+\ÉaG\Z\òJÀ5Z\ÈšøQ\è\Ù\ôÌ³i\ä\É\0“\Í\è{_3Ÿe\\¿	¸*Á5\ñ\öm\İY\ô¾(„>rh\à1S\Ï$\ê©v¾d0\Ï5\ì›,½˜\à\Ì}Î¦›	\è9c³\ñ‰x;kC\Ø\ğ¾P±˜ûp\ã[e0¦\n¡\æ\r\Û\ëÖ­Wt®\nÑ[†œ\æ\Ü\á5n5^*\rû !\ğR‰¼§\n\Ã3|u“pq¥®RHœ7Ï¦\"±\ÉM­\Ü\Ø\ô\Ñ\à\Z^-•bcsú|\ÍZ|¿\Ü1\Z	\â\ën\à[3~}\èCe%r\ÊUW5‚@\Ó\î\âOk\ZÁ±œ\Í$\é^{\Z¾\ï\Êşšc\Z›‡Ÿ]XŠŸDXÛ…\ĞSC“/º\ñc\"-1¥¶!\ô\ÕOƒü	š\áS\â%\Ê/¸\ö-\ål\é\ê<K·\ôı¦z5\æ#\Ò\İy\n‚K³h*26i °\î6Ï¦ š™Ù³\éQ¹gÓ\ëˆ\\N®\Åuj.±P2³2ı.%*}hb\ê–56¿©==\Õk\Äm”Œn\İ~/pÑŒm\é+\ïà­©—¡“©©¨¦\ßPX\È\Ô 7\İ<›I¢¡\Î®;I\ÎÁn\ÜsG%\Ãd€^@\Û.w#J>\\’–úĞ§lnÿ&\à\Ê	¥¿£b\ŞMc2ª\ç_›\Ùh*ÏŒM#@‚0zqÁNÔ³\é%cl\ñÀ\Å<‡b†\Ò[\ïfq}ld\Û\Ük\Å\ò5^¸Qq§ ±	…\Ñ\ç7ªo \ó4¤J\ßoü·š\ğ\ä_*\î[ë¾°U\ÕT!\ô‚\ä\Ñ\Ï\ô#7Å´Š«ƒ\ö\ôdn`øÄ¨D\Ã\ì¤n,\á]\Ò\Ûk×µQ„\ôŒîŸ¬„\ñ\Í\Ø4B\ÜZ,M\ãE„üD¢ƒ\Ğúw\ò»	5‡\Ğ\ó-0}\ÒşW+Ÿ1OPqR‡MO®™\ğL5\Ï\æ¼EÖ¯_¼˜¼Âœşç‡¯|²\Şÿ©|0A==\0\rE\é˜\ã‹]%ºÛ®>B\è!\ZT¥k**\ËT\Z…ª\ô<x~¢\ã2\æ5®XN/\0&\ç´A\Ñ$lM#Opa¯ı#\ï}‰±*	Ş³‹\nx¥\Ğ\ô„[D{²\n!\ô»\ôºO\ïfY\ÈÆ\Óu„[vN\Ş YT\ë\Ü\Ïsfl&E:\÷\'„\Ïâ¾´3‘k…Ã§‡ï¾¢7\Ü\ğ\ğL›Ï†•\Çif¶\Ş?¹ı\ã`$„şW%\çJœ­}?\Ü\ï·*½\å\Ñz\ÏB\éF„¡†\Ë\07\ÓNilF&\áq)£ƒq¤!7. ¼f\Ò\ÃE\æ\nU¾´NO¿D£\å\İT8\ö;\Ãı¹V=.øØºˆ\\\î¾3¹pŠ\"8936\ç#\"\"(	8É£Æ§g\Ù#\ÂÁ:O€§[+LNşpœ±\n»u\ó\ö]Ÿ/ATU\ç\İY	¹¥\ïœ\ZŠÿ‘«\Ê3@\ä\Ï\0—n1©8ˆ‰\Íc\æ\Ù4À/¸½\áÉŸ§-K!†rf\ôº\íO ü€¡˜¡\ôbå¡“\È{\Z“<:\Â	”pşpB\î\é)\Òø¢\ó\\³o9›ó’®‹\07;,úu\éû\åÀA×ª\á½~û*‹\È\ÛV)6z\Çº~\èn»ú\n¡‡¤rú3§\0\03IDAT\Î\ØD`\à9\ñ\ö-„\ÒÓš~c’\Ã2\æ\'²~ı\ÉÀ\0´\Ş;¹X¢\á¥,ú_1’­#\ñFdj\nc\Óq\ß}M\Ì\Øt\Ç\rB\é£Çºpz¹\ò5\÷pÃ{*—Q\ßt]\ójBdÁ\ï§Ş¦\Æ\óœ›I r-\àr\Ü[ú~û_^;Bÿ®\ÒaÈ†\r\ËQ\\¾b\ë“7ˆv§ùR¥\ç«z\İG‹\à,\öÁ¸¡\ô‡«J7\0Ò¹kç¹…¿›z›ÂŠ¿?\ğ®G;\ÙT\Ä\Øšü¹z6%¹0:@.\÷\Åüë¸…B!šŠh6\óU»¦Tş\Zp©dm\Ót$­\ñ<g\Æf…È†µo‚@,zÁoAJ”2Y§\áËºyû\÷*Œ7~9\áÿt*cs(?=V\ß=r\å?\0]\ê*\õK\Ş-m\ß]\"\í3mn\ÙÈºuÇ¢ü\0Z™\\…R\Èe²º\áHù\Ë\ó¯§£\ç¶|\ò‡\å£\Û>úTÀ\á2Í‘\ÕNS@­Eå‘tu\\¸\Ô9ot\ê\r5?\Ï\Íy\ÌØ¬¹\ò\Ên\Ü?¸ı\ç¥\í¨)x\æµ95Y\ÄÛ˜ĞˆşB\è\ÏLşx$\è‘+T\Şw½šh\îÓ„z#qC\é…\ö•M4	\Ó\Æ\ÑI:\×M\ØEk¦{³°\â7c\Óp¨\ç&oR#“?O_=Kz{“m\â½\ÒGW@®%şş…*\ô|¯¾\çz£rTÿ\ğ…\ö;§\ß.¯\'\\›.iµ26\İy\ç»sq\ÛG€3\0h¿k\êÜ©\è1Œ\ç£/7\ê\õ7N“dQ:²¡\ãÀK\0h›\"”\ïg\\…\"€\ÊO*=_5\Ñ-;Eø!\àª\Ò\ã\\\'\Í{\n\É\Ñ2‡¡\ô¦¦B\İÿTy\Ó\Ù6\å\Ç\èSW%Tj?†k¯>\ä*Ài\ÎMU\â\×vÀ‹\ö(ŒqıHş»9’\å,\02Óˆ4\ä\Ş\È\è@™.\Èi\ÈùA(]\â¼C\Ô\Øü®\Şp\Ã`R\Ã\Â\÷Êœ\"\×\ó\ï~W»ùEË¼\Ç\êÙ¸\öÕˆ\\@\Ë\ÓGo Á©M—´ZMP®Zº¸\r\Ø<B6®»t\àşÁ‹~QÚÃ«¡ÿ%\á»\ãÃ‰\ÈW\r\ï\ÂùÅ„†¦Û¤\Ä^h5$\Ô\Ü\Ì.‚±qvŒz7_%\\{|\ÒC›Œx7b\\\×\î©ƒ\ö±~y¿G!W^™!—ú$…c¾7\ó¹\ÚNÂ\Èÿ>\Öb%ÿ?J%9š£¹\âŠ¨\ÓLNY¤!\ò\óœÿŠDpÃ{\\yyÜ¼Í±%®u%$\ß5Hre\Îq‘\ëyù\òZ\Îq‘s\ÏcS:;›ı H–üx\æ\Â0z\rZUB\íŒ\Í\àŸ>Of\×^}&\â\Z\ğ,ûZA\ãq&r-\ğ\Ì\Åa\Ò,¾OûúJt‡\Î0W­şp\İ$Ò‡§8w\Ä\Ø}²\ÒsV¬ü\'aû¶¸\í+\äM\ñ\à\ïRm$U±\İ\Ö\×\Ú\êE\Æ0?\ïO·\Ş@\Ø`a\áo q=\ë¼g³†Æ¦Fş\÷q\áb\Æf\âœrüK\0W\n^,”’\é/Ì³\Âk“<½ª*ª.”>||‘>\â,ŸRx\ó’•<\ò£sCY\"8f´v\×i\ô›¯s[”Fn\\\÷“\öŸ»kr&rÁ<\'GW\Îf\à\Ù,wu!5É¦µ§’K}p•+K~4û\Ã\\\Õù“—Fz\Õ\Ê\ß%\"u ™^ €…Ó¨\\D\á”Ö½¥\Şx\ã^\àvÀi\ÎÅ¹T\Z\ö<¢\ïM|pS‘Í•7‘i´\Ïrª\öƒA\Ñ\É\r\æ²q\í5ÀÕ€›|—üp\öruFz65Îƒ0cÔWüˆ\áİ€+8lš¡›oA\Û\òÍ®KU‚ø\âBéš‚\á“Jß¯Bÿ\Şx\ã#3m\Z)3\ê]<\rµ\×p‹\Üc\Şü66¥«sŠ«\ÑhxÆ¥\ñ\ÍF~\Ñrt\ål–\áÙœ°mM&VÙ¸\ö\Õøza\â\Â_ÁÂ»g\ßQz#Œ\æ¿F\Ë\Â\Ê\Ü\Ù\Øy.¨smy\Ø\å,NE´¢Ò—“8w\ÕQ\\‡£lŒoß‚\Õse\ã\ÚW\':®©\ğ¢\Í×µµ¢\ë Œ.\á\ê?\îdœ·Lk2‹‹ˆHW\ç\İ€7\Ëÿ{ú\Ê\Ì%R¥Y\Ó0za\Ë\È7\Ïf’Èºu\Ç\æ\Ó]S…šf´2\Ü\ğ×‰d\×c?\\•g©¡t¿	†W†\ï’r\÷\"\Í8\ÆZÔ©\äyµ›ã¼ˆg3–\òOm\ç¶(\"\"\Ò\İ\ñ\à:À]Ÿ\Ëo›\Ø=j:\îœ\Í8\á\Æ\\$^\Ë(\Ñ+¹\òÊŒl\\Û\è7§Š\Ş\ö{8\ö»%<<:½…_Óœ}§\ö\ôT|\áJW\×\"„\Ï)D\á˜;¦\ß83PĞ‹™‚\ç©\ì—	\ÇYİƒ¶\r½¹¢W\':®©\Èe\Ê\ÑD¶\õü\Ú~h\ğÆŒ:h~*)!Ÿ$Yd\ÓUK\Ù\Øq\ğ\÷\îY8\î+\Ù7û\Î\Ú¦µ€P\ÃV•~™©EùÿS\í¯#´¿p^Ê…¿œy\Û\æG#×˜l’u\ë[\Äë­·\æ@n\\7 -ÁF:‘ü#İ«J‹\Ê2s#\×\ôøx}x6\ã8j8·E‘k¯9·\åu½%Ë¾UF˜?S\èT(rt„\Ñ\å\Ê+3\ä\'\Æ8«£H°\Êbº¹\ÊG6­}#‹[\è\õ„\ã^t,½Yo8MÁ\Ó\Ã\á¼|\Ïcø\ÙK´\ç\æCk\ã\Æ0\ö_€K\Òi¿s–‡«:­A\0\Õw\Ú\\u^\ó3€›\ñ\Çb\èm‚“,)tRx‹l\êxY’c›Df´9ÿº¼œ;PjŸ\Ş\àc(e¥¥ |½\ÚXTé½²Eº:»\ğ\Ó\÷—\0G\óK\Ğü\ğ\Ì;‡LÈ‡«a=ÿ¿il<L\rA\Ë:£LdcGa\î{\ÓcÎ˜œe,\"\í\ß&›®J®£t\ò¢\Z\É\ÓS\È\×\Ü\Ë\Î=?Ml!\Ñù)\Îüu*¥R\r	(\áøb\İg\é|Aÿ1‰§K”€\ô^\Ù\"İ\ë\Éy¿#œ\çdV|šgH\óˆR\ó\Ü\Ü{6—4?\Ğ˜)Á\"’m49\'\Ñ1!½W-”\îÎ¿”®Î»\ğ\õ+€«P\ñ\Æa\ÙW]u\ël^\Ù\\3<q9>5ü\Écxr¡n½y\r–\Çw\í\Õg\"\ã?\0. i,.A\Íh\Ñ\İ\á¸\ÓÀWec\Çi•¥šHoo\Z\Ä8KY\Ù³\è\îpR|ù¤tuU\Ğÿm²\Ş\ó\ó¯KYi†¤G\r\Î$:¦rPucH\Ç\\5\äu][X³\ê\ÏSFZ\÷B\éZ{3Ã­»\ÍÀb\02{a\å§K0\"Dû\×2Œ.^\ğw;\'\æ»\Îe\ØtU\İ/ \ë\é\î<Eº:¿ˆÈ‡\0—z±\ì¥\íÜº3Ú±\å,ü\ô=\Ò\İyY\"†\ë\Âo®\ni6	$<)|\÷u\çMw}yc\ÇO)L˜Kr5¼Fƒ¹-5/ªš\Ù¾\òiü«Ä‡5\r²¡\ã\ÒÕ±\á\Ö](\Û\ëD\Z\ö\Â\êÏ¸\ç~©\ÔÁ<7gù\Òu\Í	º<\'$~i…5Qš\÷À\Ø2P^/İ¯\Õ\Í}\ßJdl\í4s\Z9\ï\Ä5¤\Ï#,¸	i\İ	Kî˜½\â\\ÿ\ñ§\Ş\ímû(~ú5ºeÛƒe±·7\ÍĞ¡W!úH½—\Ğ\ËÚ¸×…KY©5<\ãBCŸp\"\÷HW\ç\'@şn¹\éW\å-iäª«\ZiI¿ø;D\ÎœVb\\2ıN’ªÿE\0gÀ\Ø\Ò\İq\r\îù~R“±|°sY}\"@j0\Ş\"Jr\Ğ\ğ”p†\é\î\Ü\Ã(ŸÓ¾¾9éŠˆ\Ğu\õ¹h\êO7\Ğ\ó\ïİ²\ËU\çf\Û@\å¥«\ó\Å\àı=ú“Jş\Örm\Ç\n|9_\ÎD\ôel\ì¸\0\õ—M\Ü(\ë\n\ã–ü´4Uˆ(¹ÈŠ_½9„ED\Ø\Ğ\ñBD\Şz)ÿ\ï\Ş\ğ„{pª@.u«twÜˆ\Ç\×\ôº\íOTa\ÈG²\á\êg“J¿ü\ËPy#\á³P\Æ\á¸/\Å[l-ı¦Sû>`\Ê\ç\Ù\Ø\ñ{\é\êü4\Èw\Z¿[o¾y–\ä\á\ÉhOÏˆtu~\rx;Ck@¿5½‘4º²`PH²]ƒ\ä\Úk\Ã\÷.®\Üs;)İ°\×İ—š\ño’®\Îkiü¶\ö\Ü2E\Ğ\äù\í\İYl\\\ÕÀ\ñÿ¹3c—8\Îfg1†4IYª\"¤¤\nTDTU\÷> !Ú‡Jm%„”Di\ÈC•·4I´j¥\n!Ôª\ğÒ–.P	**%-¨¢\ê\ÄMš&ds\ìg\ìÙ¿>|w|g\ì\Ï\ÜY<\ã\äûI#\Ù\ã™\ñ¹w\î9\÷;»ûî›\ğ¼ûÀ\éº\Ë\İ!\óX\Ï)]\Ş0³\n„n\ïÎ“w?\ã\â¥\×\å±\Ç2\r§\Ï9Ç®]£D³\×A\äcş²[·ã¹…\å\ÜÊ¿i\ÃR#\åK[\Î¸¸G~\ô\ã_\ÖUÓ™Ù²«\äI„8¸œ\Ä6W\ñ’\×\rüÖ†ŒSk\á\Ô}5\ÈCø\ç\ÉS[fv\Ä\Ğ19ıhMa…\Z\Ã\Â\×B\÷IXı\Æ\â‹B¿a\ê“0\ñ©`|ü‰}Iu…»½;¿B»\ñ\\\"\Û\Ğ\ÖÕ’\õœ€\á\çªO‚(&NÇ]û“8\ŞA8\\DJ\Æ‘ƒ>&ı\å\ÌS9=\äY\ç‘¸\â\ë%6	#O…\Ï` \Ü\é¯BrS\ñ³\ï\â8L#F\Î\ÛO,w\'ywsi\â‰œÿ~`¡°DJÁšWk_sµ ±\Î~±$\ÕÀY\à\àr\ï€Î½-y¬\ÜÇº‡v\íD¤\ô‹ËŸ8pC #À&(\î\"\Ë\ÂÈ“µU¬Jc+œû|0R¥c \'&À•Ä‹‚¬@Xc\0\Ç&„\õ%\éš\ÏKi«Òª#\ÚB\\\Ä6­¿Zü0D³\èBnÏ®A¶\Ş\çpÃ\ßn„\çı©\Åf.\ç\Ü]p\é†ù\Ï\Î\'€\ÓI\Ó ³H™&©\Ş\ì\îf\í\éDn\÷\î!¢¹\ï!n‘a›€a\Ê]W±0üb\é\Zšµ’(Œ\ß\Ó7–ı+šŸ\Ï\"œ\Âq\'O\É\÷¿R5ı{wÜ‹ø\Û\÷nøuå¥˜&n+Tª³¤d>¼h\æu{v|\ÜmÿÀ z\ç\ë6¢“a‡)\îşƒ6¾„qa;L•tH¦3z>\ÜYA(—‘Ÿƒ–l\æ\Ú\õ­¹^˜¹\'%®\Ç?¡²±‡\Ëk\ïG¥\õS+™…3_.¾¯ƒ.\Íwø0Ô°¤P¬A6j9¼HÃŸ—ÖZ”_Ö°\Å\÷˜|t«ª¿\á«^µlJ~#\Î\İ_ú\\\Ñ•ZªûŞ­¾\Ğr9\İ\ã\ZøM\ŞZø\ì\Í86#„œÁYEl\nú\Ş\×\Å\Ñk-øS`üH•\'ı=‰o\ÔWƒ“›q\îş²³\æ\"—t¬ĞŠz\"‡]4~&o+®\ñ¬B¸=x]É»ú†ƒM„[p\Ü_\áo\å¿Ã0\ôb}&ø“E\ñ»4Ã©\Õ8‚1œ\Åÿ7’œ¼·\'\÷†û?h·ı@\È@tm\ÔÕ¯û×µ+|\Úzÿ¨e¯qù\rP6\Øù\í¥OUüEyI~!| 	z\Zz.\Ü,\ñ]Àµ\à®]<úiq¥¿.I\êµ\Û{úß¯ÿº((\Ë$\İM¨\ñ\Ëgqe*T\Îû¼“I\êu6\ĞXûŠNtJ”tµ\ö\0\×E\çİ•¿†\ñ}P¦\"s9\ğ²k\÷\0,2\Ë?:ƒoiyv¬r\ËÂº—uŒ\É[ yMq¥+\È\Ï¸\òª›H\÷\óN]\Ìl©l&\æ–<z½Z ©¼O\ã\ä›\Õ_W’X\õfø@`\õk„Ù¹9T]À(Ñ’\ÌQş;z˜·ß¬Ü‰c\Şv\ÄU6riz)| 	zZÿŒoÍ‡°\Í\ÔƒTxS$©\İ\ä}\ïkY\ç5Ø€Z\\\Îe³—i7º—\Ò1±i½I\ô­\ïFV0xD/–©›´Û¢±|sD\Ó\ò\÷?­n\Ãt¡¤W\ë@‰’m\àvÈGo q¥\éŒNk\Úú\Æt}·†n²\ïhÁ˜Ø¦-R©!È®hNr\árzş\ã\'uq\öšZ”«ˆ¤`øYÕ™¸^wq\Ê\õ7¶‰„\Ë\éwızk¡k\à~=øın§o€\äFÈ¬\ô\÷En\ñ°\êH!^€ş1\èıv%Ö«\ï¨v©\Ïl\Ñ\óZ\çw?…Ì§‘Y\ğZ“ïº \î\óş\Ø\Ğ&\îşŒe\Êp\è\Ğ%6eE²\êŠ\Ï{\ß\ô5pŞ½Œ^\ß\é\Õ0³M—¿É®€\Ü\n\\b^J¯©\èE\è>£“&\Ã\çZLü\Ø\ğ{\íVŸ¹F{T\Òk\ôû\È\÷…_\ä\áÀ)·g\ç+8\î&±U{N\æ\Ëm,M\\\ò(¯ÿº¦ ~úVŞ¾³\Z—…\õ¿…ÔˆVŠ’WA¶¯¾½\ßkşŸi½¿\Ç& \×\Ïcaz\ç\ëù/ŒüB\×2Ù¬\÷\Ì\Ì*X\é\ğfü¡W\ÓZÑŒMh|\Ó5NsË¹¹`S8y2\äÀ\ğ\æh^°9ü¼f`/­7b/­X£-\å\ô\×\èÅšï®½P\õü4¹”\Ò\õ\ÔdHm‚©O@\â#Ì«ü\Ï}[\ö?\ò^ø.#2£\×_\ã^Œ\Ë\èNış¬m‰\éÄ¦\\\ów…Ÿ^/©3\éJKûFˆ\ça\õ\×h\ğ“\ë\Õ%!R\àü_×š0\×\rhÕŠt\Æ&J!\ç\ïüTX¼¡+X†\ãügtür-â§‚›”—\ò\Ç}\åü\ãhx\È\ÑB.«½}\ï\Ï\å\ãšOs\ñ\Ê\ï\ñ²~ú\êÌ—\õ\n\á‹\"¡\ß[\\\÷i]\Z­ p\Ş]^¯FúJº& \ëM,zN¢şµ\Ş\rxA99sµ¶¤_I\Ö?£•©¥IÀŠ\è£@\"pü;\áƒ\ß!\ÜMv@\óüünş`!w\ğ\"\á\Æk\Æ.\ê¤W(-\ã\\\Ö_a¢‰CŠ$ùŞ \\\Ëu¡\×i\\‡?U\Óu\Öù\Ã\ñ\æÊ¶¼¶¶\"¹œV¨‹[ws\İAùV­y\Óe5]‘´ø.Ñ¶™A¥ú\ÃM«ªyÁftB[–Zd¦xÙ•\ÖJ­…™Â¥\ë´\å©\ÔqDv\ËÁ\ÃO7\÷Ÿ\Ê\Ò\İx]¢™\àªhEf=f¶&Ô•†lĞ‚¯\0y\Ù\ö¦\ÓI\å1:‘\ßM$\Ùş\ó\í%\õv¶u«Áos»–¼Tû\Ï9şù•£\Ì`ù\×_\Ö\Úr\r¸œ?™+\äûr\Ñg\ñ²?<[›‰Â’G2&ûş\÷ü·/®\İe\\N[ø\n\÷Z[<#™\ö\ç³HJ,¨T·mÅ\ö\ïXÒ©\ÄAv5$‡´\É\æj\íz]\è=œü€D\î\Ézf\Zc\Ú(ß¢`Ó˜&‘C‡Î¸=;\ßÀq+—¶Àª?\Ì\Ç 9\âÿ\Ò\ÜY\è\æ2\Ò\åÜ•l\æºı\î\÷8\ä{´»2³R\ÙAH¯ÕŒ\\^\Zx‘Ÿ\Ó;øl3v2Æ´Aa‚œX°i:˜v¥\ßJf­¶J\æ=$Gƒ\ñ\Ğ6My¹Ë©e\óƒ{µsJ;HÑ–M\á]^\÷^\êi\Ùÿ“\Z\ö\Âk‚\\\ói‡VM.\È\õ¶\ï˜Êª0	\'5\Ôa\é,æ»™\ÙÜ¹\Ç\Ñn…\ó\Ø\ì­*“£~Î¯À\İ-\Ï~a\é†$U\"u–©¹\è\ï\ñ²p\òkÁqï¦‰¯|-\ô\çf\×t\æuZ\ëšø³:3ı&¸\îÚ²U%43Ø”®%\ëº\Şy\ä\ÏLÎ¾ÑŒ\\\Ãs•\Ç.[\Ëå˜¼e’\Î*\Ä¹£¥š¼…›\ó\Î#±úg·™:4\æ\ö\î|\á\Æ\n\Ç\ñ’\ìÛ—ÿÁn™_§—I½t–iË¦“Y\Ä-\Ñ\ô¾†\å ¤q$€)„8Æsˆ;†“1zVÉ¾}-œ]7	tÈ¹•:&+\Ã1t\Ê1U\àHù\Ç\Û\Ù\é,pT\ï\ÜiD–\Çq´›“\Z7S¯ú9g`Ù”‰*šlss_I,\Ëv\à\÷QG\åF\äIp•š\ñ\ÂMLu2\Îr)\ã\Ä-œ%\é8\Û\ñ\÷’\ÎÔ¶s\Ö\ĞB\ÆcŒ1\Æ,¦\Å+FcŒ1Æ˜+™›\ÆcŒ1¦e,\Ø4\ÆcŒ1-cÁ¦1\ÆcŒi61\ÆcL\ËX°iŒ1\ÆcZÆ‚McŒ1\Æ\Ó2l\ZcŒ1Æ˜–±`\ÓcŒ1Æ´Œ›\ÆcŒ1¦e,\Ø4\ÆcŒ1-cÁ¦1\ÆcŒi61\ÆcL\ËX°iŒ1\ÆcZÆ‚McŒ1\Æ\Ó2l\ZcŒ1Æ˜–±`\ÓcŒ1Æ´\ÌÿªY¼˜\ÖS˜‘\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\Ó\0\0\Ó\0\0\0|ş\ò­\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0 \0IDATxœ\í\İY\\Õµÿù\ï>™Y£j$À F3‰I’JCml<‚\r1Üˆ~\êˆG\Çÿ\í\ß\ñïˆ~\ë^\Û\× @\ÆøÚ—‹¯\ÍPhD#£0˜yÕ¬š‡Ì³û\ádV¶\æs2\÷\És~Ÿ§*\ò¬€\ÊZ¹\×\Ş{-c­EDDDÎŸ\ç:\0‘j§d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!)™Šˆˆ„¤d*\"\"’’©ˆˆHHJ¦\"\"\"!e£x³y\ë¯-Š×’\óaß¶{^ş­\ë(ª™\é\íû¯V¹C0…v\÷\î7<º·\ï\Äp©‹gKH†cvwÿc‹\ßZkÃ¿\æ\æmŸ\0«C¿œ¯Qš\Z.°\Ï=7\ç:jdz{/\Äd?2®c‘Š\Ë\ã/\\d\÷\í¨\ôƒ\ÍÆ\ídj¾j+ıl‰€µ¿·{wıª\ôm$+SÀ\0\Üıù§\Ô\n½¤œWºW\ñuCC\ãS?qOU\ò²¿Æ’¹bü7»F*à½–Vµµ¼\à\"‘­ù5–\ÚK\'&X;<\è$9w\ß\Ô7°\å?±¢J¦À_}ÉŠ……ˆ^R\ÎF]¡À+®cF\É\ôüX¶ü\è‹Ï¹A\É4\Şm]Ü•\Ú\á0ŒG\0\îú\òs\Ö)™V‹7\Û;‚djÌ·ÊºQ@2\0&|\ÅX\ÎQ\Ï\à\0Y\ßø±Yÿ½\×\ñT³±\ïJ §1Ÿ\ç\Ú\Ñ\×\áHL\är¼\Û\Ò\n0\Ë\Â\ì]\Ä`6\ö]‰eCC>Ïú\0—‘&SP6­´\Æ|\ëƒ$PC®pŸ\ëxªN†‡¡ø¡$‚\ó‡»º\ñcşhwD\Ö>\n˜¡\Å\ÃR\å¢]™F\ôbrn6·|Œ}\Äm$\Õ\È>pÛ ›m3©¼C]\İÁ¾\ï¤\ÄkŒ1X\Ø0p\ÜE\ò•yÅ‡‡h\Ì/\0l4[·^\å:ja6m»\rønû\ÜWŸpTÀ`]=Ÿ45Œ\Ò\Üø\'AlÙ²¸¼{v†\Ë\Ç\İ,Œ%zZ™&@\ÖZ\Ö\r\ßX\ó \Ûhªˆ\áA€uƒ\Ç\õ³›‡ººKË‰\ß9»JV0\0¬\Ğ\Ï]’D|\0I{N®¬_*=bŒ\Ñ{\ôŒ1†ûA%\Ş49\Ò\Õ|a<7%Ş¾¾:¿2Àúı\Ü%‰Ê¼	q\åø	:ggÁr%›¶­wO\ì\õn»¸\è‚\éi¾35\å:\Z©€\ÏV¬à«†F€¯\ØÓ¿\ÇIşÏ€\Ö+\ÇO\Ğ5;\ã$)•y\Â”+ƒot\éÌ‚ƒG\ëu\0$5—Y·Öº9Bk–J¼R\õ\Êp\0\É(\ÆÁ\íK{0˜5kj\ÜF_\æ\î»k{\rpÛJmi`Ã¥djÜ”x7m\ê\î\Êù>·ªIC\Õ:\Õff4\É\Ôj\Ï4ºgfX=1\ĞNk\Ç]\Ç[A\ë\Å\Ö\ËK¥qI¼\÷[Z­­x\×\î\ë\İI^\öA w\ã\È0\rù¼“¤|T\æM˜\Å{k\År’œ\Ôv€u:x”\Z‹wK1»‹\"xO\êni2\é\0R\Â\ô\r	*?1}}­®\ã‰³aC3\Æ\Ü\íY«R[J\ä\á\Õ\Î\Î\à\Ï\ÊEfË–\ë€[›J\Ë$a´2M˜eo\Ö:\nV\íÿQ®\î—@ıuc£4i(C*¼\İ\ŞÁT6pÀ\î\Ú\õ¾“ l\æQ®ae´–\ålt~Hba\ñ¤ \ô•oQ‰7eK¼\ÆÍ„cŒv;¨Ä›§¸Æ¯•i\İ42L}>†\Íf\ë\Ö\Ë\\\Ç¦¯o\ĞW\ãû\Ü<<\ä:©€\ÙL†7\Û;\0\n\Ìgw:	\"¸\Ó|\ñ\ÓÓ¬œp‚”Ÿ’i\å|ŸµA²0øÁJL€\027\rQ«!\ö©\ğzG\'\ó\Ø\ì-­¥€ %\Ô\Ò\×ü‹\Ó@\âÄ³*\ñ¦\Ì\Ò)^G%Ş»\îj\î1ÀúA%\Ó$SoŞ„º\ê\ÄÁÊ«Š\ÓQR\Ílº\ó\n,=\rù<\×\é4e*L\är¼\Ó\Ú0K]“!\à\Ì\Ì\ß4]=6JÛœ›¾úR&\Öj[\Z`]©»AwN½üÃ€\é\Z\Ô\ğ”8R\Z²\Ï?\ïhÆJ¼IS\ŞH\Ú3¥\ÅS½†LOO\Îm4®™ûaYÿbI¼¥S¼\æ	\Ï7½½b¹³\Æ\÷¹E\ŞO+\Ó[vz°‹†\æ¸\Ç³ù[\ë\Ú\æ\æ¸ò„†€§Ápm—†€¯¨ÿ³“ ¼\ìC@\æ–\á!\êt\à-\ñ\"K¦Ê¦\ñ´431Í“düÅƒGú9M‡ƒ\İ+Kå¸§\r·Á=oMˆI­Ln\İ\àq<kÁÚŸ§±½`pa_ƒN\ñ¦\É\á\Òp‹›\ïÖ­·\07¶\Ì\Ïs\íØ¨‹¤ü\Ês\0I\'y\ã©ia\ë‚7syÿ^\×\ñTÜ–-\ÛX>\é:\Z©€\Ï—\r¿°{·“ \nÅ¹¥¥³’9€$\ñ´\ì\Îiú\Úú^±Ä«R[Z,<²;\ìÎß¬4}}Y\Z>Ÿ2\Ú3M›‡‡‚\ö‚°\Í\ô\õ]\ê6š\Ê	¤\Û{\0z5!&\r,p´T\â\Å:)\ñ²`¿¬ºxj’\ïLM9	A*O\É4rKG\ó\rypOÅ´uşh¿|bœ\î\Ù\×\ÑH¼\ß\Ò\ÊpmÀ»v\÷\îWQ¼×­»¥\é]™Wû±¶~\ñ\ğ}\Ôi •\õ Àº<J‹\Å¯u\Ô>pÃ†f\àçµÜ¦oIW–H\Ú4¹e\íÌ®5[¶¬uO¹©ıDCÀÓ£°|x\Æ>\é$ˆ\\\í¯€†\ë\ÆFi™Ÿw‚¸:™\Z£\no50,»\Z\â{\É?ˆTS/P\í\Ø(\Íú¥–\Ç\ÚÚ‹CÀ\íAgCÀ1*\ñ¦T+Sµ¬·||ax\È\ô\õe\İFSn6(\ñªÔ–\Z‡—&Ä¸¹[º\é\Î\ÕÀ–ºB›\Ô>0u\Â\'\Óû\î\ÓÄ˜*qÁ\ô4w-»\É\ó=\×\ñ”‹Ù´©\Ë9\rO¹L†7JCÀ³\ŞSN‚†)xk‡©\ñ}\'!ˆ;\á“\é\à ¥Ud\é\Ş[‚\Ûz¹€\ìM#\Ãê‰š¯ut2ŸÉ€\áE\Û\ßÿ›(‚{\Ü*\ñ&›-\íl\Z\ñ¤‰	•y«ÈºÁRG–_˜\Ş\Ş&\×\ñ”Gq¸~©¥\ÆR‰\×Ñ„˜\Íw¬®iŸ›\ã»\'\Æ\\„ …O¦³³Ê£U¤e~k‚7{d\×^\Ğlº\ó\n0\ë\Z\òy®WO\ÔTø\Ö\ğ\Ú\ì\ÜDTz\Ö\×\Â\"¥\Â\'\ÓK.Ñi•Y,C™¶4…í€¹uh¬\ö­R\áhg… \ô\ö¬‹!\àÁ¬`ûkP‰7\Í\Â\'Ó™•y«\Ì\Í\ÃC\Ô{‰w˜¾¾ï¸\'RFb\Ò\æP\×\ÊÒ—N\Z5\Ğ\Ğ|7\Ğy\é\Ä«f¦„ \î…O¦ssÊ£U¦¶P(µ\ô(WH’ ØŒ\âú\Öùy®\×\ğ4®­\ã£\æf€q²\Æ\Íp¿ »¥i\äÛˆ \Í\ÏkeZ…O\õZş\Åm$Q2\Å\ö\Z{•‡º»‹=\İ\Ì\ïlÿl¥Ÿo6onÃ˜Ÿd¬¥gHÕ4ŸL;:ŠyT¿¼ªÉµc£´\Î\Ï\\o6\ßq“\ëx\Â2\ÆxX\ó\0À:ıRK\Å^¼\ï¦\Äk³¿j×ŒÓ´°\à$‰‡\èV¦Ê¥U\Å\0·•Æ’™B\õD\êİ¶øÎª™i.\Ô\ğ4øbiø×¬\\¹\ËI&8Å»A{\ô©>™.,¨\Ì[¥\÷x¬\Ùn\î¿?\ã6š°‚»¥\ë5!&5-k\èdøÆ¾+\Û\òyn®\ô\ã%f\Â\'\Ó|^y´J}gix\ñ…|5p‡\ëxÎ—Y³¦Ã½€\ö­R\ÂG:KCÀ=7%^\Ï>˜]\ÃJ•\Å\"¬‰z[S“\î™V±uƒ¥;§To{Á\ö\îa\é¸|bœ\î\rOƒZZ®«\Ãv\ÏKG+ı|cŒÁ\ğ\è¯¢\è€\äÊ¼\Õjı\Ò\É\×{M_\ß\n\×\ñœ\ëo4Œ9E–†€\ÛÇœ°ik/pE\×\ì—\ë\Z–E2-´gZ\ÅZ\ç\çK½D)\ğ\×\ñœ«b\áŸx\ÖÒ£!\à©P0†W;J%^\ßI/\ŞR%gƒ\ÚJQÉ´AWcª\Ü\ÒA$¿úN\õš\Ì=@Ãµc£4\Ïkx\Z¼\İ\Ö\Îd.†\ÃvÏ\÷*ı|\Ó\×W\ÜgĞ7Y>™6t5¦Ê­]l/h¾o6\Şy‘\ëx\ÎMĞ¨A%\Ş\ôX,\ñú\Æ\ÍÁ£¼ı)\Ğz\Åø	ºfµGŸ6\ö¤_FX\æ•\êU[(pSp´\ß#Søµ\ëxÎ–Ù²¥ø^\Î\÷¹YWRa.“\á\Í`¸\ïı\ÎQj(ÿD{¦,\Z^M§z½€\ì#\Ã\Ô\çó®ƒ‘\nx½½ƒ¹L\à%»ÿ\Å/+ıü\â¸f¬e\í\ĞP¥/1A2­/&S\Õy«\ÙuK{7›­[op\ÏY\nz\ñªÄ›\Z‡ºOˆ±Şƒ@\î\æ\á!\Z\ój(K\Â\'\Óúb™W¹´ªy\Ör[©\á\ï=\ä6š33›\î\\eC}>Ïš\Ñ\×\áHL.5†€«\Ä+\'§2¯,Zúa}{A\Ï\rO•#¥!\à\Öş‡\í\ï«\ô\ó\ÍÖ­\×=ù®\Ó81&\âH¾¯<š—LNr\á\ôÀE?¾\Õu<§gƒ	1*\ñ¦Æ²^¼nJ¼>¬ «o\ò\"H¦µ\Ú3Mu¥{sÛƒHfS\ß\ÍÀ\õ-\ó\ó\\¥\î3©0R[\ËG\Í-\0\ãønŒ\ñÀ¨} œRødZ\ë«Ì› \ë‹]¿4==\r®\ã9)LˆY78 !\à)q°ke\é\ãú\Óvÿş\Ê_\îÜ²ep\ñÊ™.œ¨ø\ã%ş¢+\ó\êwZ\"´\Ï\ÍqU\Ğ^°‰†¦Ÿ¹\çŒ\ßËš\ôK\â^,\ñ\Z7\í‹•šÛ\ã\ä\ñ‘%S­L“c\ÙA¤ø•z7\÷mV¯š™\æ\rO…¯\Zø²±8ü‚®şJ?\ß\ô\ô4`ø¥\Öi\Ä_\êYs\òlA2­QoŞ„¹uhœ\ïƒ\å¦¯o•\ëx¾\ÅZµL™¥»¥–\']§®\ñ \é\ê±1:fg+şx‰)\ßF|š·F+Ó¤©[j/˜%\ïÇ¦½ \é\é\Éa\ì¯@\É4-,p¸³4n\r§b\Ök[AN#º2¯¦‰²\Ô^0F§z\ë\Z„¥\ãÒ‰	Vjx*|\Ø\\²×‘J?\ß\ô\ö^\æ{9\ß\ç–aµ”S\Ó=S9©5£#4/\Ì\Üjz\ï¸\Şu<\0Sl¨BZ,\İ-5Y\ë\â\èvn;Y;<¤ş\ÏrZ‘\í™\êi²x\Ör\ë`iØ¶¿\İi0€¹\ë®Fà§†`OW’\Ï7†W;‹CÀ­£S¼&8„·^wK\å\Â\'S«•iR-\ê5<\\Zwhfş \ñš±QZ5<\Şnkg\"—8b\÷¾\ô\÷J?¿\Ø\ä\Æ\æ…y®­\ô\ã%\îL\Ô\óLs\Ú3MªK\'\'X53\rp	›û6;\r\Æ.5jtX\Ö>\ĞÍª\Ô+­J\ÕD\ÎL\÷L\å´Ö—\ÚZwwN—\×!t˜\÷<\Ş(\r/dª\ô\ó‹ƒµ”³A™7§{¦	¶~ \Ø^{ŸÙ¸±\ŞI\Ö\Ü\än\Ğ\ğ\Ôx½£³8\Ü\ö»\Î×ƒ\ß.¸pzŠ\ïL©9ˆœY+S«•i‚u\Ì\Íre\ĞL¾™L\ÍO\ÜDaT\âM™\Å\ö®\î–»mTû@ù§Z6F¶gª…ir-;\ÉX\ñR¯\Ùt\çj\à\öºBACÀSb*›\å\í¶v€yü…Š764¿0Àmƒ:9.§\ñ$«•i\Ò\õ”\ÚÂÌ†ï­¬\è\Ã3…‡(\Ïix*\é\ê†€Ã³vÿş\Ê‚\Ê\Õıh¸nt„\Öù¹Š?^ªSeŞ¬\î™&\\}>\Ï\r¥\ö‚\Ù\Â}}¸¥Ø¨A%Ş´X,\ñ\ZGwK‹<’s\Ù\ÊT’mC)™ÿ\áJ=\Ól\Ùr#°¦e~\ïc\á$\áFkkù 4<?\÷•~¾Ù¼ù`k\íRj‘³>™fu5&\rÖŒ³ba0\ëM\ïWW\ä¡6³‚¦\öº\ç—‡ººƒ\Z—\å\'CÀM\æaÀ»uh\ÚB\å\ÔHü•\ï\0Rieª\ßu‰–±–R?S(û\ê\ÔcÀ>\0š“&‹\Z¬uSâµš#§wª…c\ÉT{¦i±l’\ÌCA²+£M[{\Õ+gf¸tr¢¬’ø¨o¾˜›ªü\ğM\Ûn®i››\ã\ê1m+\ÈÉ*\ÓeC¿²o\r^¼Ë¼\\})75Wü¹½\ß|½´šK€\Ë&\Æé™a ¾ş2z·m\ö–\ía†\ÄâŠ«8^\ï¦F\\\åKŸÑ­|µ8·´\àş57Vü\ñRN\Ô\Ô¿úv\İ\ğ\É4\ëb\Ş\ëş‹\Æ¼\Ó\ÚV\ñ\ç\Î{™D%SCPşú\÷K.¥x©½,\É\Ô\ô\ô\ä¨_q$w\Ü\ÚHm-».¸P\õœ˜(ş\Ì=\00«a¼µ\æLE\ä[\Â\'Sk\r˜jitÿ_À;X\ö§ø¾‡\Ç_?jnnª«£sv¶ì¬”\õ<{É¥X¸\Ï\Ü}\÷ÿlŸ{.ú‹x\õMw\í\\=™\Ü!\à»W–\é\Ó\àıon£‰kme/75eÈ›U\ô™R\İ|\ó­F\á$Ó¬Ÿª8dy\ß\î}\éh%e6o{\Æ\Âÿp¸³›}\ñY%Y]³3\\>>Î‡\Í\ÍmŒOıx&ú§$BÌ\îb\ï\ËÿS©ŸI95\Û\ß?\èÿƒœ7u@*\ã\í€`’4‹\'‰¼½\à\ò!\à=	m\å\öIS\ßm¾\ä\Â\îİ®\ã‘\ğ”L\ËeO?\ğ\å\×\r\r|\Ñ\Ø\è:šH\õ\rZû\İmúú:#}\ñ©\Ù_\0+‚!\à\Él\å¶lUú»s§.3Š$@ødšQ£û“±\ÖúXvÂ²\öh	Ñ˜Ï—š\Î\×P°Ñ¶Lø)Ş‚1\î,ı<\Õ©~ºgZN\Å\ñQ‡ºV&\î¿\Îb\ßRKd\r\ÌÆ\í`¾ŸM\ğ\ğc\íL\ær`8l\÷¾\ô¶\ëxD$\Z\ê\Í[Fv\ßË‡¿,\õMŒF†i\Ì/\0l4›77’\Í\Ô<\0\Ô\Ü0:BCB‡€XªRü\Öe\"-í™–y’W\ê\ÍZË­C¥Õ£\÷`D/›\è	1\Ó\Ù,o¶w\0\ä™\Ï\îtˆD\'‚F\÷\Ådš´:fT\n<ÁŒ\Æ|™;\ğUÚ²\ö‚„m/XœÖ±©®P({Kœ#\İ\ä=\Ï\Ù/$³…HJE°2\Í‰*›Œ\İ\ßÿpd*›\åom\í®Ã‰\Ô\ã\'J\r)®`\ã\Ö\r\á^-»0k<|\ñ/F%^‘„Q™·; y¥\ŞR{A\0¼°‘’İ¨a°®š›N¸˜\Ó)\"\å¥H\á?	^\ï\èd.“qL¤6?^ú \õ€¹û\î\Ú\óy\r³e\ËuÀ\r\Í\ó\ó\\\Ğ!\à\Ûš\'\Ì\é‘²Š\à©V¦gbw\ïş\Z\ì\Ë\ó\ÇÁ”\Äè\áÒ‰q€v&gx^/bƒNJ·\r%s¸v«F%^‘$Šl\Ï\Ô$\ğ—`¤\ïœ&«\ÔA\ó{\0ü\Â9·4\Æ¬y\0`\İ@2K¼6·0XW–O\ØÓ¿\ßu<\"=•y+%?\÷;`\æ\í¶v&r9\×\ÑDj\İ\à\0kÁ˜Ÿš\õ\ß;·¥w\ï¶M.íšauB‡€/<2\æ7\Ö\êS§H\é\0R…\ØÆ?û\Æ\ğjg—\ëp\"Õ˜_\àúR{Ášü/\Ï\ío\Û!X\İ&\ñghÁ\ó8ºøÿ;¯\ö\"	Ù©œc[\ê]l/\ÈÙŸ\ê5}}Y\àW\ÜS¼o¶w0\ÍvŸİ³\ç=\×\ñˆHyhÏ´’2<Œ}\Ø\Ü\Âp]\ëh\"u\ã\È0\õAÀ^³y\ó\åg\õ—\n\æ. ;>]\Î\ğœY6!FDLe\Ş\n* şƒ…e“C’!\çû¬\ršÓ›b†³`\İ>p\"—\ã\í Q\Ç<¹§]\Ç#\"\å£H•V<Õ›´°¼\Ôk=S{A\Ó\ÓÓ€µ?O\ò\ğ\Ã]\İ‚ÿ²_HfD´2­¼}»^¾ú¢±‘/64üªc¥\ö‚W±y\óm§ı—\ë¬¸:CÀ­J¼\"	Á¤bo^í™k­\æw¼Õ©a\ÙPo\ß;\ÃA$“\è\ï\×\r\r|º¢	ÃŒ\rÿ§\ëxD¤¼´2uÁv\0L\ò\Ğp\Ã¦§\ç¤jƒ!\àü c-7\'tøÁÒª\Ôg‡=vl\Şm4\"RnJ¦\Øİ»\ï\Ô\Ö\òQÂ††¯š™.5_è¢¾é®“şK^\íı@Í#\Ã4&p¸t\é¯Hš„O¦\è\0\Òy±<	É¼sº4\çÔ¼½ I\ö„˜¿·¶2Z[\ğ\İ\÷\òa\×\ñˆHù…O¦î™—Œ\r††wv•N|&\Æb{Aø™\é\ëk]ş\Ï\ÌÖ­“\ğ!\àK«R\Ão\ÜF\"\"•¢«1\Ø]»\ŞN\ær¼\Ó\Ú\æ:œH5-,p\í\Ø(@yÿ\ŞoıCŸí€—\Ô!\à\óWji\ÉµI‰\ÈÊ¼Ê¨\ç\Ã\íK‡Ud\éÎ©ù‡R¯It‰\÷µNfƒ™µ/\ÛşşO‡#\"¢H.\Ù\Â@\áµ\ö\Ä\r\r¿yx¨\Ô^p«\é\ë»Àl\İz-pc\Ó\ÂBb‡€\\ú`¤ƒG\")Ù©œ;»w\ïWÀ\îùL†764<\çû\ÜRj/¸´\r¤`†`Uš\Ä!\à\'jjJ%û\êrÏ¸GD*\'º2o9V„	\ö\Õyªwp\ñ\Î\é#\Æƒ¡Ø¨\áø\éşZ\Õ:Øµ?8L\öûü\ó\'\\\Ç#\"•£H®ex\Z˜{»­É„\r\r¿zlŒ¶¹9€kÙ¼\õ.ëša\õD2‡€/•xJ¼\")£=S\Çlÿ\ğ\\Á^\íH\Ö\ĞpÃ²ƒF–ÿ’;ü‹\Æ|\ôZşš,/¸GD*+º{¦¡_(\Õ;4ü\öoJ_\Ö\ô%\óï¥U\é\ÛßŸ¼¶N\"rZ\Ñu@Ò\éù+\Ì?Œ\Ğ\Ò\ÂH\Ğ9\'1.˜\æ\â\ÉI\0.™œ\ä‚\é\ä\r\÷Y\öAH%^‘4R™7\ìşı3X±$o’À†â£¤<z§µ55\0o\Ú=/½\á:©<@Šk[\ê]70@\ÖZz†’9|in©V¥\"iA™­L£p\Ñ\Êo¾h\\ÁW\r\É\Z\ZŞ¼0\Ï\Ï>ı¸t²7Q\æ2^\îûø\Ş®\ã7\"8€\ä\éi\ìÎ`\'$suúƒ/>wBY\í\ìb>“\ì\óvÿ‹_ºGD\ÜP™7N¬)\ö\ê\íN\Ü\Ğ\ğ¤ş,•x\Õ>P$\Í\Ô\è>F\ì\ŞşÀûÃµu|\Ô\Ü\ì:9ƒ±šZ\Şki˜$\çı\Ñu<\"\âN+S\å\ÑH™`hxO\õ&\Í++W\ËÓ¶¿\Òu<\"\â\öL\ã&\ô\ê=\ÒÙ¸¡\áI³¸·±*ñŠ¤œ\î™ÆŒ\İ\ßÿ.–\×&84<I>Y\ÑT:uı%+W\îrˆ¸]$‰P°:U©7¾şµx[DR,²=Se\Ô(-\ì\0\n¯vt&nhxø\Æp´«8” |\ğ‘t‹lÏ”\Ä]\æp§84|\Ï|&\Ã[m\í®Ã‘\ğV[;\ã¹\Z€#v_ÿ1\×\ñˆˆ{\Ñ\í™*—F\Ë\r_œF\"q±4!FwKE$ {¦qeOs\Ç\ÚÚ™\Ê&khx5›\Éfy+h˜g!û”\ëxD$t\Ï4¦\ì=£XûŸcxµ³\Óu8Rt¸³‹\Ïø³=\ğB2\Ç\àˆ\È9‹î©\öL\Ë!±“dª•J¼\"r2ÿJ\ò‚u\'\Şoie¸¶\Îu4©7\\W\ÇG\Í-\0\'Š\İED\0]‰5\Û\ß?ü\Ñ\Â\ÒUqf\÷ª\ÒgÆ§\ìşı3n£‘8Q¤\Ø+N’\éT©×µ¥&\Z\Z.\"\ßA™W\÷L\Ë*\ËÀ\ñ\ÏW$ohx5ù°¹…\ã\õ\õ`ù„½/\ïsˆ\ÄKtÏ´œlcpX¥^g–\Úš\ßX«©\"\òmº\ZS\rŠ-\ëu­\Ôúß¼1]¼”Wû@ù\'j\ÚPì¾—_Á\ğÁP]7ihx¥½\Ù\ÑYlœa\÷\Ù={\Şsˆ\ÄO+S\İ3­k\İ9ua±\Äku·TDN.²=S\å\Ò2\óü\Çtu\ãkhx\ÅLes†\rÌ³{\Úu<\"OºgZ%\ì®]\ï\0¯khxe\ê\î¦`Xû\ï\ö\àÃ®\ã‘x\Òp\ğjb\Ô^°\ÒK¼^F%^9%\í™V“|\æqÀ½£“y/‚\ÏArZ\Ç\ë\ëùdE†ø³\ëxD$¾¢»g\Zú…\äL\ìş¿»g6“\á\Í`˜”\Ñ+İ«Š_\Ù\'\ì±c\óNƒ‘X‹î©¦•aƒR\ïa•z\ËÊ²¼œnU\â‘ÓŠ ™\Z´2­\ã\ï\æ\ßj\ï\Ğ\Ğ\ğ2z¯¥•\áº:€\÷\ì\îİ‡\\\Ç#\"\ña™WK\ÓJ°{\öŒ\Ñ\Ğ\ğ\òZj\Èo\ÜF\"\"\Õ ŠS,\ê\Í[i&h/¨Roy,x¯utXŒ}\Âu<\"‘`“\nšø0ù^K+£µµ®£Iœ\×::™\Éf^¶»v}\ì:‰¿\ÈF°©\Ì[9\öÈ‘i,ÿf#š$µ\Å/j(\"gG+\Ó\êµ8IF¢3«)u˜š¡.\÷Œ\ëxD¤:Dp\0I{¦N\ä\Ì\óÀ\ñ\ÏV¬\à\ë†\×\Ñ$\ÆÁ\î\Å\Ş\Ç°\Ï?\Âu<\"R\"[™jyZY¶¿?\æi€#:ˆ•¥¯Q‰WD\ÎZ\Öu\0‚\ç\ïÀ7ÿ\å`w7?ù\ì} 	\é‹\ÆF¾h\\\ğ\rY^p€\Ùt\çx¶\Õu\"§d\çß³{\÷NDL=\ô‹Q·\âv\ï~…Ş­\Ö\Õ_\öIS3—MŒ»¨ª\\:x´#Xù‹K\æşû3x…\İÀ…®c9%¯f°+|2µ\Ö`T\æuÁZkM\ï¶\'0ü\÷C]\İJ¦!ø\Æ,\æ\òUâ…/ß‰g.l\È\çéšqÈ·¯o`6“Yü>|25\Ö£H®d\ìcø\æ¿\î\êæ¾?Ä³úq>Ş³cn‰\0\0¬IDATimc¬¦\àm»¯ÿu\×\ñ\ñ\ÅZ~\ô\Ågü\à‹\Ï]G#\ò-ÿ\ç\õ7\ğv[û\â\÷š\ãU\åŠC\Ãß˜\È\åx·E[K\çk±\Äk\Íÿ\ç4À\ô\ö6a\í/<kY70\à:‘3RÓ†DZ\Ş\êÖ\Ó\ó1›É”\Ú`a‡\ëx s/\Ğx\õ‰1Z\ç\ç\\#rFá“©±š\Z\ãš\ÇÀ­£“\r\r?g¯vv‡­\Û\ìŞ½_¹G\0Ì£\0·wˆ\ÈY‰®’¦\Î\Ø]»>\ö\Íf2¼¥¡\á\ç\ì`\é\à‘UûÀ80\ï¼\ÃÖšB›‡‡\\‡#rVT\æM\nkŠ\í\ÕÀ\á\\Œ\Õ\Ô\ò^KÀ9ï®\ãÀ+<\ndn¢¶Pp\ÈYQ¤¤\ğ\çv\óo¶w0•U/³\õJ\÷Ê } \åw¶¿\Òu<¶lP‰WªHd½y\Å-»ÿ\ğ×‚1¼Ş¡¡\ág\ëPwq%Ÿ±*\ñÆ€\é\í\ëÖ´\Î\Ï\ñ\İc®\Ã9kÑ­LUå\â©^M’9+Ÿ®hâ«†F€/Y¹r—\ëx0\öV¥º3-\Õ$²=S@Š™©&ÿ\Ş\Ú\ÊX††Ÿ\ÉRS{û[»s§6\ç3}}Y\à\×\0\ëu·TªL\ÉT{¦qa™Æ˜?Z\àH—††Ÿo\Ì\Ò#\ß{\Üm4@\ŞşX¹zr‚§§\\G#rN\"(\ó¢d\Z+¦X\êÕ©\Ş\Ó9\Ö\Ö\Îx®\àˆ\İ\×\Ìu<À#\0\ëu\ğHªPt\Ï4V2\ö/ÀÀ§+š8^¯¡á§²T\â\Õ\İ\Ò80\ßÿ~\ğ\ÏZnt\È9‹`eª{¦qR\ö{\Ğ\ê\ôTf²Y\Şš[\äY\È>\å:f~\rÔ¯¡ya\Şu4\"\ç,²=S‰“ \ÃÁ\în}\Ä9‰#]¥¶‹ÿi¼ šb<¨\Ä+UM{¦I´\÷\å}X>¬«\ç\ÓM®£‰\Å¯\Õ\İ\Ò80}}—›\ê\nn\Zv\Èù‰l\ÏT\÷L\ã\ÃZk1\öIXÖ”@\0®«\ã\Ã\æ€øÿ\î:\òş¿\0\æ¶Ár¾\ï:\Z‘\óÙ©N ÅŒ	V]‡;»ƒvy\í‹?©;\íşı3n£‘€\Ù*\ñJu\Ó=Ó„²»wÿ\rxk¼¦†¿khø¢Cš+f\ëÖÀw;\æf¹rü„\ëpD\Î[d{¦C–\'\0\ëT/\067s¼¾,Ÿ°o\×^\×\ñ`ƒƒG·?®_$RÕ¢\Û3\rıB9Sx°G—N¯¦Ú²»¥ÿj­\Z¿ºfÖ¬©sÀºAµ”\ê\İ=SınŠ»g\Ïg`\÷kh8\ä\áhg©Å¢·\Ãi0h\ïş)–\Ë\'\ÆY93\í:\Z‘Pt\Ï4\ñ‚;§‡;\Óİ«\÷ÍN¦²90¼b\÷¾\ôw\×\ñ\à\'ÄˆT»(j*\ó\ÆY\Ö\ì\Şj\ï`:\ÅC\Ã,\í\ë\àQ˜\Û1\æ‡k\éQû@I€\ğ\É\Ôhe\Zg¶¿\Ã\ó—Ú¡\áS\Ù,Ç‚2\÷<sÙ®\ãÀ«\İ\Ô\Ş82Lc~Áu4\"¡i\Ï4\r|»\ÒÛ«\÷P\×J\nÁ]\Ûg\íÁ\Ôb\'–\rI\İ3MƒÆº&\ßmmK\å\Ğ\ğ\ÅS¼Æ¨\Äf\ëÖ«€\Û\Z\óyÖŒ¸G$‘\í™J|Ù¿üe\nøw\ËN´¦\Ã@}=Ÿ45Œ°¢şÏ®\ãÀ\÷\Ûf\Õ>PB\î\Ó#\Z²^½¯t¯*~e°\Ï=7\ç4ÁcÀn•x%Y\"8€Tlüª=\Óx›™üO`\è“MA °,\ß\'V‰7z·m.ë™\áÒ‰q\×ÑˆDF{¦)aYÀØ§!=\í\ßoie¨®\à}\ö\ör\0nPû@I\İ3M”z.µ\ÕK´¥\öF\ícÀ\ô\õ\Õ¿4ÀºA•x%Y\Ô\è>Mv\ïŞƒå“\r_\ğ<^\r\î\ÕZ<ÿq\×\ñ·\÷\0-W£sv\Öu4\"‘Š Ñ½\Ñ=\Ó*\rg\'$ÿ\Î\é\ë\Ìd³€\İmw\íú\Øu<€\î–JbE°2U¤\ê4y?Ü•\ì¡\á‹%^\Í-³iS7\ğıœ\ïs\Ë\ğ\ëpD\"§=Ó”±{^z8v¢¦†\÷ZZ\\‡S¹km˜%\çı\Şu<x¹‡\ì\Í\ÃC4\ä\ó®£‰œ†\\¦Q\ñ Ò¡®dD:Ø½²´\êş7\Û\ß?\æ:,¬\×\ÜRI(5mH#cŸ\0\ì«\ä84ü@\éC‚µ*\ñÆ€\ÙÔ·\Ã-\Í\ó\\¯\ö’P4m^CªG\ñ@\Î+3\Ù,oµµ»\'R_54\òùŠ\0ä¼¿ºG\0cX70€§\ß’P\êÍ›V\ÖK½\É:\Õû\Ê\ÒÁ£\Çm¿6\ç3\ÆxØ »¥’`:€”V^\á)ŠC\Ãg24Ü²¬»SF%\ŞXØ¸\å{Àw.˜\æ\â\ÉI\×Ñˆ”Md½y•L«‹İ½{xaÁ\óx-!C\Ã\ßimc´¶\àov×®\×\\\Ç#€1\Å\öß¸D¤¬¢»gª½j\ô$§W\ï\Ò\ÜR~\ã60w\İÕˆ\áAû@\â•dS™7\Í\ZjŸ¦\Şmie¼¦\Æu4¡\Ìe2¼¬°}2f‡\ëx˜šı°âš±Q\Ú\æ4ıN’MR\Ìş\å/S\ó¬o‡«|hø«\Ìe2\0/\Úşş/\\\Ç#€Qû@I\ÈÊ¼Ê¨U\Ê\÷\ÛV³¥	1jf\ã\ÙVS(¨} ¤Bt´gZf§şŒaø\ã¦fªthøXM-ïµ´L‘5p\0ÿ ³vxˆ\ÚBÁu4\"e§2o\Ê\Ù#G°ü\àpgu®N,µü½\í\ï\×ı‹X°J¼’:€$`‚I2‡º«3™\\ŒÛ¨\Äf\ó·kZ\æ\ç¹ú„Z#K:h›Àş\İÀ§\ß\Ô7\ğYĞŠ¯j|º¢‰¯\Z\Z¾ä‚®~\×\ñ€]<x¤\ö’\Z.Á\Ğp\r¯¶ƒH™\Ç\ìÎÚœs\Ì\ô\õeÁ>\0°^\í%E45FûÀÁ®•U34\Ü7†\Ã]\Å+=ÿ¸\Ûh€<?V^29\ÉESS®£©@\0Š\í\÷\Ş>QS\Ãû\Í\Õ14üX[;\ã¹\Z€£v×®·\\\Ç#°¼\Ä+’&$S\İ3M\ó$TO©w©Ä«¦\öq`6lh~\êY\ËmCj(\é\Ù=\Ó`f‡T·üÀ\í\ìŠı\Ğ\ğ\ÙL†7\Ú;\0\òd½§\\\Ç#@Mİ¯ú\ëGGhŸwHEE·gª\\Z\õ\ì=§³YŞù\Ğ\ğ\Ã]\İ,x`ÿbûû5’$¬\ÚJzé©|›!¸s\Z\óR\ïÁ¥!\à*\ñÆ€\Ùt\çj ·®Pà¦‘a\×\áˆT\\d{¦’ş“@ş\r®­\ãƒ\à\Ô8şÂŸ\\\Ç#@¦\ğ/€\é \çû®£©¸‡ƒ«Î›Á\Ğpû\â‚\ç•\ö$cç••+ƒŸ6\ËN»ÿŒ\ëx°lØ »¥’R‘\í™*—&J¬K½‹qetŠ7Ì¦m·Ww\Ì\Ír\å‰®\ÃqB{¦\ò\Ïl\áÀ\ô;­m¥{œ±\ñQS3\Ç\ë\0>e\÷\î=®\ãÀ[:x¤\ß’Vºg*ÿ\Ä\î\İ;<\ë\ÃÑ®x\r\r_œ[jøWk\Õ\Ã\Ò5³fM\rpÀú\İ-•\ôŠ Ì«{¦‰d\Ì¯Ro\Ş”’»\ï©}`´vü\è¼|bœ•3Ó®£q&‚HºgšH#ƒ\Ïaş(FC\Ã\ßj\ï`*›\Ã+v\ïKw\0\Æ<°^wK%\åÔ›WN\Ê;6\å€#1\Z¾X\âEwK\ãÀl\Ü\Øü(c-=Cƒ®\ÃqJ{¦rj–`’L††Oe³º2Í“1¿s\0™Üƒ@\í#Ã¬XXpˆS‘\í™\êi\íÛµø\â›ú>ot;4üpWw©_ğ³¶¿\Èi0R¢¯HQd{¦Ê¥\Éc­\õÁ<\î\"-\â5*\ñÆ€Ùº\õ*0\ë\Z\óynqˆsºg*§g\nA‡\î•\Î>/\r\Ô\×\óIS3À+\êÿ\ì(Y\Î\çQÀ\Ü68@V\íEÔ›WN\Ï\î\Şı*ğ·±š\Z\Şoiu\Ã+İ«Š‰\Ü<aŸ{n\ÎI²\ÈcÀ<*\ñŠ”DLµgšxg¥^û­\çª\Ä›û¶\0—u\Ï\Îp\ÙÄ¸\ëhDb!º{¦¡_Hb«yGC\Ã\ßoie¨®\à}\ö\öª\è\Ã\å\ä¬\r\ÚWû@‘5º—3²û^ü\ì¡\él–·[\Û*úì¥»¥F\ícÀ\ô\õÕı¥\ÖkBŒ\È\"\İ3•³d\"UÊ‚\çq´³À’å±Š=XNmÁÿ9\Ğz\åø	:gg]G#‘\í™jišpş\Â\â\Ğ\ğ\ÙL¦\"|½£³ø,»\Û\ö\÷R‘‡\Ê\éy\æQ&Äˆ\È\í™\ÊY±û\ö\r`xiÁ\óx½£³\"\Ï\\,\ñZµŒ³iS7–\ï\ç|Ÿµj(\ò-\ÙĞ¯`\Õ\è>5|»c~p¨«»\ì+“\ñ\\\r\ögg¨¯yº¬“³cj¶ƒ\Íu\ÎÎ–\Ê\ï\"©5R[\÷­\ï\Ã\'S-J\Ó#?\÷ruÿ\ï;­m\õ¹Me\ì\Çz¨»\ß0\æO\öù\çO”\íAr\öLpŠ\÷\ë†»ò»®£‰•È’©\î™&Ÿ=p`\Ül\Ş\ö¬o\Ì}G:»\éûúË²=\ë@\×\â)^•xcÀ\ô\Şq=†µ\Ëş\è3fŞŠ¤š)|Q•yµ6M“\'€ûw•/™~\Õ\Ğ\È\ç+V\00=ş×²<DÎ\ñ¸lbœƒÖ\Ú=ıÿ‹Û D\âC\ÃÁ\å\Ü45<Œ}\Ô\Ü\\j¦¹W›\Ú\Û\ö\È\Í\ör\Ì\ãNñŠœŠ\Z\İ\Ë9±\Ï=7‡\å\éo·ù‹o‡\ç§Z•x\ã w\ÛÀENOq\É\ä¤\ëhDb)²dª{¦)’±O\0êŠ¾Ã»-­Œ\Õ\Ôü­\Ød_œ³º[*rZ™Ê¹Û½ûe\àË¯\Zø\"\â¡\áKsKùM¤/,\ç\Å\ÜuW#p\Ö\r¸G$¶¢[™jaš\ZÁ\Ğ\ğ\è\'\É\Ìe2¥†>™ }¡86=ûK`\Å5c£´\ÍiúÈ©he*\çÇšb©·;²\ÏQ¯ut2´*|\Ñ\ö\÷\Ñ\ËJ(&˜£¯\ÈiE˜Lµ4M»·ÿ\ğ\÷\Ñ\ÚZ>hi‰\ä5—&Ä¨}`˜\Ş\Ş¾šB[†‡\\‡#k@’\ô±‹«Ó°\Æjjù{K+ÀY\ó‡\Ğ/(\á™\Ì#@f\í\ğµ…‚\ëhDbMe^9~\ö1À\í\ì&o\Âı,µ„\ß\Ûş~İ¿ˆ£»¥\"g)Šd\Z¼†ª¼©c\÷½ø!†#S\Ù,kk\õZ\Õ>0VÌ–-kZ\æ\ç¹úÄ˜\ëpDb/²•©§lšN~qhxˆR\ï§+šø²±\à+.\è\ê(2	e\é\à‘g\õ\Ş9“\È\Ú	JJ\åx(¼±t\÷œ\\:x\ô˜İ¹S›s™¾¾,\Ö<\0°~P%^‘³>™jiª\Ùşşo€şy\Ï\ã\õ\ösşû¾1.\Í\Æ\ô\ìc\ÑF\'\ç¥`\îV]<9\ÉESS®£©\nj\'(QJ½\İ\ç\Ş^\ğ\í¶v\Ækj\0^µ»v½q\\r^‚¹¥´*9k:\Í+\á-\Ìş˜ù[k¹\Ü9ı\ÕÅ»¥V\âÀl\ØĞŒµ?\ó¬Uû@‘s]™7\ôIµ²Œc\ís¾1-•l\Ï\Âl&\ÃAi8_\Ü{\×j\ê\ï\ê¯¥y~\Şu4\"U#ºHª\ò¦\İ9Ÿ\ê=\Ò\ÕÍ‚\ç\á¯Å½WqÍ·j(r\ÔNP¢\Ñ\ÜøÀ\ØG\Í-g=4ü€\î–ÆŠ\Ùt\çj›\ë\nnRû@‘s¢v‚	û\ÜssÀ38\Üy\æ\Õ\épm]©§\ï8\Ó*sxr6L\áQÀ\Ü:4Hï»F¤ª\è\0’D(˜$s\ğ,N\õ\è^Y¬e˜\ß\Ù#G¦\Ë—œƒ\ÚŠœ§è’©ª¼²\÷\å—(\r/v4:¥ƒ\İ\ÅÕ«Q‰7Lo\ß\àê¹Y®Rû@‘s¦{¦k­e\'œş \ÒGM\Í¯o\0ø”=ı{*œ	­8®*“\ÈyP™W¢e)e[yÊWKe`û[k­6\ç3k\Ö\Ô\0\÷¬\Ğ\İR‘\ó¡H)»\ï\å\ÃÀ{#µµ|\Øü\ÏC\Ã\ó\Æp¤tµ\à=^\Ù\è\ä¤\Ú:t^61Îªm_‹œ­L¥\Ì)‡†¿\Õ\ŞÁd.Øƒvÿ»•LNJwKEBŠ\ğ\0’\öL¥¨Àc4eøÇ¡\á\ËNú\ê\àQ˜Û»3\Ö\Ò34\è:‘ª¥2¯D\Î\î\ïÿ\0‚¡\á\ï,\Z>•\Í\òV\ğı<Y\ï)W\ñ\É2™š€\ÚF†Y±°\à:\Z‘ª¥2¯”‡ù\ç\ö‚‡»º\É{Às¶¿_-v\âA%^‘h8¸”‰ÿ$Px}\Ù\Ğ\ğ\Å¯µ*\ñÆ€\Ù\Øw%°¾1Ÿ\ç†\Ñ\×\áˆTµ‡ƒk\ÏT–\Øİ»¿û\ò¼\ç\ñF{u\õ|\Ü\Ô0Z\ì\ã+®e\í£€\é «\ö\"¡¨\Ì+\åS¼sz¸«›+\ï>Y\ì\ã+cV\íE¢E29¹œ\÷{`\ö\í¶v\ö­\\ü™¯S¼±°e\Ëf\à\ò\î™.›wHÕ‹\"™z •©ü3\Û\ß?<W0†±šZ0|Àş]\\\Ç%@Á,<\Ò{W$¼\è®\Æh\ÏTN\Æ\rŠ~k­~P\\3}}u~e€\õƒ*\ñŠDAe^)¯\Ï\'\0‹-<\æ:üŸ­WŸ sv\Öu4\"‰Y™WYYN\Æ\ö\÷\Ï\Ï\0{\í=¹G\0£»¥\"Q\ËF\ğ\Z\Úr‘Ó³<Ç¥®\Ã0›6u\ã\å~\ó}Öª} Hd¢H¦\"§wa\÷K|\õUƒ\ë0\ğ²¹›F†i\È\ç]G#’Q$\Ó\à4¯Î•\È)Ø;À„\ë8À<\n*\ñŠDMMDR\Âl\Ùr°¶ia\ë\Ô>P$Rš\Z#’6\ó(ÀºÁ2ª$‰D*’dªl*o\Æ\ìv€\õ*\ñŠDN+S‘4\è\İvp\ñ\ÓÓ¬\Ô\öµHÔ¢Y™ªd$s\ö€\Û¾qˆH\"ie*’pæ®»\Z{\rÁ~©ˆDO{¦\"I7=w/°âš±Q\Ú\æ4ıN¤”LE’O\íE\Ê,š2¯\öLEb\É\ô\ö^\ÜQS(p\ó\ğ\ëpD+’ş\ôZ™ŠÄ”—}È¬¢®PpHb…J¦Æ¨\Â+k–‡A%^‘r»2U+A‘˜2[¶¬nh™Ÿ\ç\êc®\ÃI´p\É\ô¾û‚dª=S‘2‹<½GE\Ê*\\2Ô¢T$†L__k\0X?¨¯H¹…K¦*\óŠ\ÄQÁ\Ü¬ºxr’‹¦¦\\G#’x\á’\é\ì¬\ò¨H,\í7hU*R\á’\é%—h\ÏT$fÌ†\r\ÍXûS\ÏZµ©p\ÉtfFe^‘¸\É\Ö\Ş4\\76J\óü¼\ëhDR!\\2›S‰£\ö\"•.™\Î\Ïke*#fÓ«Ál®+¸I\íE*&\\2\í\è(\æQí™ŠÄ‚\ç?x·\rR\ãû®£IhV¦Ê¥\"1a•xE*-\\2]XP™W$&Lo\ß\àš¹Y®Rû@‘Š\n—L\óy\åQ‘¸0Á\İ\Ò\õ\Ç\õW¤\Â\Â%Ó¦¦\â\ÊTu^—Ìš55Àı\0\ët·T¤Ò¢Y™*—Š¸\Õ\Öùc \ó²‰qV\ÍL»F$u\"I¦*)‰8§»¥\"…K¦…‚’©ˆcf\ã\Æv\àîŒµ\ô\rºG$•B&\Ó\İ3q-S\ó\0P{\Ã\È0+\\G#’J\á’iCA\÷LE\ÜS‰WÄ±HÊ¼\"\â†\Ù\Øw%°¾!Ÿ\ç†\Ñ\×áˆ¤–\öLEªY\Ö>\n˜\ÛÈª} ˆ3\ÙP»Po\ğ\òºg*\â€1\ÆĞ»\õa€\õ•¾Ál\Ş\öa¥*#o\Ø=/\ß[ú&\\2­/\ò\èü‘ˆ›¶\ö—u\Ï\Îpùøx¥Ÿ^\\^é‡ŠÄ‡ı\Ö\Ñù+Ó‚Oe^7…Ê¶¼xj’ÿ\õ\ÈÁ\n=M$~¾nh\äÿºn\Í?ıy¸d\êûn\ÛUDÎ\é\ë«\Ã\ğ+CeO\ñ\æ|Ÿ\Î\ÙÙŠ=O$nf3\'O›\á2¡_«Ş¼\".,ø?Z¯?¡\ä&\á’i­¯Ó¼\".˜ Ä«»¥\"\ñre\ê«Ñ½H…™M›ºÁü \çûÜª\ö\"±I2\Õ\ÊT¤‚L\Ív w\Ó\È0\rù¼\ëhD„\ĞÉ´F½yE*m\Ùp‰‡pÉ´F+S‘J2[¶\\¬mZX\àzµ‰hÊ¼Z˜ŠT†\Í<\n°np€Œ\ÕO$.¢9€$\"egŒ\ñÀn•xE\â&’=S\İ3©€\Şmw\0_0=\Í\ê\É	\×Ñˆ\È2á’©\Õ\ÊT¤r¬æ–Š\ÄT¸dšÓ©H%˜»\îj\î18™#\"g {¦\"\Õ`fş \é\ê±Q\Ú\æ\æ\\G#\"ÿ d™7§{¦\"¡¯Hœ…\\™Z­LE\Ê\Ì\ô\ö^ˆ\å\Î\Z\ß\ç–\á!\×\áˆ\ÈID²gª…©HyÙ‡€\Ì-Cƒ\Ô\n®£‘“Y\æ\Õ\ÊT¤\ì,ƒJ¼\"q²Ì›\Õ=S‘22[·\Ş\Ü\Ø2?\Ï5\'\Æ\\‡#\"§\É\ÊTDÊ¤`›\Ú{j([\á’iVWcD\Ê\Å\ô\õe1<º[*wÑ¬L\õY$z\öûÀª‹§&ù\ÎÔ”\ëhD\ä4B&Sí™Š”AwKEª„î™ŠÄÙ°¡ø¹g-·\r¸GD\Î ’=S‰X®\öW@\Ãuc£´\ÌÏ»FD\Î š{¦ª\òŠDÌ¨\Ä+RE\"\Ù3\Õ	$‘\è˜Mw®¶\Ô\nÜ¤\ö\"UAD\â\Æ\Ë?x·\rR\ãû®£‘³ d*;F\íEªL¸dšQ£{‘(™-[\Ö×´\Ï\Íq•\ÚŠT\r\İ3‰•¥\öªøˆT\õ\æ‰	\ÓÓ“Ãš@%^‘j£=S‘¸hh¾\è¼tb‚U3Ó®£‘s²iƒî™ŠD\Æú\Û6¨©½H\Õ	¹2\Íè©Hd\ìE\0—»DDÎ‘Ê¼\"qaŒ\à\éÃ©H\Õ\Ñ$‘¸°èª™H•\ny\ÏT+S‘\è\èı$R­\"\Ù35V¥E\Â3:ƒ R¥T\æ‰ƒV¦\"UJDâ¢¸gª«f\"\Õ\'’=S‰„\ŞO\"UJ{¦\"\ñ¡^\×\"UJe^‘¸°z+‰T+@‰£=S‘j¥•©H|\èı$R¥B@*\ö\æÕ©Ht\ÏT¤Jie*z?‰T)%S‘øPo^‘*.™¢H\"Ò‡S‘*.™zºg*!\İ3©Rº\Z#z?‰T©HÊ¼ú\r 	½ŸDª” ‰Ä‡ ‰T©H\öLE$\Ú3©RÑ”yu\0I$\nª\ôˆT)@‰£<*R­´g*\Z.Rµ¢¹g\ZI(\"©§Ş¼\"U*\ä\Ê\Ôş¾\öLE¢ §\"UJe^‘¸°J¦\"\Õ*\äi^½ùE\"ct\ÏT¤Z…\Ü3\õt5F$:ºg*R¥t5F$>\ô~©R\ê\Í+z?‰T©+S½\ïE\"¤{¦\"UJ{¦\"\ñ¡{¦\"UJWcD\âC\ï\'‘*É©ˆDB\ï\'‘*É©~ˆDB\ï\'‘*¶iƒˆˆH\ê…K¦\Æx H\"\ÑûI¤Je] \"‹À{-­\ä|\ßu,\"rCuu\'ı\ó\É\Ô\ZM4‰ˆ	:	ş\ß×­q‰ˆœ£p\É\Ô*“ŠDÆ²hr†ˆœÃ»Ë¿\r—L=\Ï`-c˜\ÎÆ·b\\0\Êøv\Ï\Ë\÷ºAD\ÎOe^Ø³\ê\ö¬º ŠxDDDªN\Ø2\ï$\ğQ4¡T€13®C‘\ä1V\Ç\ğEDDBQ\Ó‘”LEDDBR2	I\ÉTDD$$%S‘”LEDDBR2	I\ÉTDD$$%S‘”LEDDBR2	I\ÉTDD$$%S‘”LEDDBR2	I\ÉTDD$$%S‘ş\ëA&?0\æÕ¶\0\0\0\0IEND®B`‚',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0›\0\0\Ó\0\0\0hq\Óø\0\0\0	pHYs\0\0	\Ù\0\0	\Ù\ç[I\0\0\0tEXtSoftware\0www.inkscape.org›\î<\Z\0\0 \0IDATxœ\ì\İy|T\õ¹?\ğ\Ïsf&{HX\Â\";È’µ­\ô\ê²\Ô\ÚZQqA­Ukµ.\Åz«^\Û\ÛRzo+^+¶·\âV­[]Š¶\î[]B¤Z±\Ë5\öEv =3s\ßgB²\Ì$\ó\Í9“|Ş¯—}…&9\ód™“g¾\Ë\ç+7\İ8KADDDDd€\0~\ó\Û?ŠÛ…Q\Ïc¹]\0\õ\\l6‰ˆˆˆ\È6›DDDDd›M\"\"\"\"2†\Í&\Ãf“ˆˆˆˆŒa³IDDDDÆ°\Ù$\"\"\"\"c\Øl‘1l6‰ˆˆˆ\È6›DDDDd›M\"\"\"\"2†\Í&\Ãf“ˆˆˆˆŒa³IDDDD\ÆøM^\\N=}-\é&ƒTf\æV}\ó\Í·Ë ®‘³\ÎJF]\İP·\ë \ê²px».]\Ú\ävÑ’¢¢¨fº]\õ]ü›m´\ÙD \ô \à›i\ô1(1\Õ5¾(\"«ª\ív)\Ô9\"\"˜Z\ô\ÄwÛµu‰\à¯\È\Î,q»Œh\ÉÔ’|±¬¥\n°Ù¤î±¯\ñ\ß\0|\Ò\ÙO7\ÛlªZÁ	{v#\ÉfOA\Í\éØ•šz!\n‹ÿÀÜ®‡:©`\Ú\\@/\ÈinÂˆúz·«!ŠÉ†\Ì>Ø“œ\0[\ĞêŸ™(3-RR2–ı†B2\ó\÷\îAr8\ìvIÔƒm\Ê\ÈDMJ\n ¢]¹\ÙfS\Ä\0—­[ƒ¾-	\ñ<¦nP›”„ù\'}E\÷&\'\ß)…\Ó6j\Å\âGÜ®‰b#\Å\çCä§™ÁV½\å³I?>¿)¬\ë\Ó\òORZ\Ô\Æùú\Ñ{;İ®)\Z2eJ*|I/2\â\ô­[pÑ†un—D=\ÜS\ã& &ep—›M³„Ä¹¾h—j¤&»µ³«*%9V\0¥¸xº\Û5Q\ôdjÉ—xÚ§Š\ëV®`£I	eOr2Ì¤!Ë‚ª~G?\\\Ü\é©Á\î$\"|I\0p\ê	{vã‚\ë\İ.‰(jf›MU\0X\ì5\é\Ã\ë\ëq\í\Êb©úÅ–¥°p¼\Û5Ñ±9SxúšŠ¤}k\İ\Z·oŸ\Û%E-hYx(w\êI\è<]R\öG·kŠZa\Ñ\İ\0\ÎQ_ï­ª‚\ÅA\êN\ò\ğ\È&\Ä\ÙŸ\ôEù{\÷`\æ\Æ\rP /\à{[ŠŠrÜ®‰LJJRÒ—\0ûÚ–\Í(Ø±\İí’ˆ¢¦\0?›22\à\ÏXRşs—KŠš_\r•ÿ\Èjm\Õ\ïWUr&%\ÃÍ¦Z\0G6\éÈ¾¶u3Š·o€\ÑP\ëOr\ÖY\Én\×DG\Âı\0N´wfn\Ú\àv5D1ym\ä(,\0ÿDZ\òª‰14(E\ÓÏ„\È\Ã\É\á°Ş´ü3\áş\êN$^³	gƒG6\éh.^¿¹µ{ \õM»]}‘\ß\èÕƒ›\Zq\r§\ğ(Áü}@\Ş>¢\Ø	K\Ï\Ñw\Şip»¦hHQQ¨ıGK\ÕwÍª*\ÖÀ\ÔJL†\×l\"2²\É?Ltd>U\\_µ\Ç56\0ªWJÁ´;İ®‰\ÚIa\É\×ùEZ(¤³—W\"-r»$¢¨m\Î\ÈÀ\ã\ã&8;\Ï!\çiY\Ùf·kŠ†””†\Ê[\nd]¼~-NÜ³\Ûí’¨7um\Ú\ğntŒl]J8Œ\Ù+*‘*¿\Âi—º]R\\œY±®[¹B6\'\Ì+DØŸ”„…¹ù\Ú\ê\ó‰ª\Î\Ö%¥¹]S4dÊ”Tg}´q4\ÍYjD”°7›Â‘MŠÚ€\æf\ÜPµ\\ü¶\r—‚’Sİ®©7“)SúÁ–\×T¤\Ï%\ë\×\ÊDg©QBZÌ„½\É\É\Èİº¤\ì1·kŠ#È“,/¯\ÙT\ìF\'Š\Î\Øıûp\Õê•¢@²@_–©§t»¦\ŞH&OÀ—\ô\"€±Ó¶ok\Û\ÄE”0>~<\Ög\ö€·1$\ç\Çn\×µ‚iÿF‘G¨Ä§ƒ\ë\rB|²P&\×T\ã\ì\Ï7Aƒ`…ß”3\Î\Èr»¦^\'-ı”ŒÛ¿­_\ëv5D1y{\Ø|<p\0T!%p‰.Z”YARP|5 ·2\âˆ<\Ç\Û9›\Ü Ds\ö\çqÊ®\0‡\æ\à\óRRb\öhU:@\nJn„\Ê\õı››\õúª\å\ğ\óùK	¤²o?¼2rØ‹°œ£ï¾›\'0âˆ¼(^wÿni69N±\0—¯]±û\÷À\×\Ô.—\Ô+Ha\É\éıur8¬7®¨”Œ`\Ğí’ˆ¢¶=-\r¿›«¶HH-½P—–&Ä°<#\Èó¼³	Mê¬€mc\öŠJ\ä47)?‚’İ®©\'“\â\âÑ¢ú¼\0¾kVU\Éq	EH\0h\ğ°0/_›ı~\Ê´¬\ì·kŠ#¨70>²\É)t\êŠ\ôP³WTJj(¤€ı)œ6\Ã\íšz\")(\Ètv£ÿ\Ö\ñ%”°\Î\ÍCuJª@\ô~]Rú\Û5EƒG”0<³	X\ÜD]5¤±ß¯Z.>@xVŠŠNt»¦DD,ˆÿY\0“Nİµgl\İ\âvID1y~\ì8¬\Ê\Ê\åØ³ûV·\ë‰#($ÊšMN£S\\Œ\ßW‹\ËÖ®2 \ò–L9m¨\Û5\õS‹\à\ì1uûqù\Ú\ÕnWC“Š\òÁC\0\ÅF\ä­¬lu»¦¨0\âˆzÃ¡\î°,\å3ˆ\âc\ê\Î8}\ë\0r|\áWd\ò\ä4·kJtRP|%7gµ¶\êuU\Ë\á·m·K\"ŠZUv_¼0z¬\nPXgkii\Û5E£-\â(»µ…G\ämm9›\Ş ¤Ù¤øºp\Ã:œ´»\0NFJúS9¥Šb\'\Å\ÅS\0<°m½¢R²[c@ˆ\0jRR\Úv«B.\Õ%,w»¦htŒ8úÁ\òJFQ¯\Ğk6\ÙoR\Ü€kVUaT} r¦ÿ—\Û5%\"™z\ÚH\Øx	\"I\ßY½RF\Ö×¹]QÔš}>,\Ì\ËGC  \0nÓŠ\Ò\×İ®)\ZŒ8¢Ds`8\Ó\òx¨»·\å¥D$\Û\Æ\r+*‘\İÒ¢üH\n§]\ëvM‰D¦LI…ş g|¾“kª\İ.‰(j¶‹mi\é€È“Z±8!2xqD½™ù\rB\ì5É€\ì\ÖV\ÜXU)I\á°X(\Å\Å\Óİ®)ˆˆÀ—\ô€“¿¼»\ßü|“\Û%\Å\ä\Å\Ñc\ğY¿ş\0°©×¹]O4:FÁˆ#J Z8O¯\Ù\ä\È&4¼¾×®ªK\Õ/¶¼(……\ãİ®\É\ó\nŠ~`\Ö\ğúz\\µz%O\÷¢„\ò×ƒ\ğşq\Ã\0\è\çú\Ï\×7\ß\ôü‚\ÇH\Ä\Ñ3ˆDÏˆ#ê…º!\Ô\İ\ğ#P¯vÂİ˜¹i\èøŞ–¢¢·k\ò*)š~ ?\î\ÓÚª³¹–Ìº>Yø\Ã\ñ\ã@3\à;_?zo§\Û5EÅ‰8šÉˆ#JhA/‡º|u\'Ó¾¶e3Švl€\ÑP\ëOr\ÖY\Én\×\ä5R\\üeQûi¿mã†ª\å\ÜK	ewr\nÌ¤!\ËT¯ÔŠ>u»¦h0\âˆ\Èa:úˆ\Ó\è\Ô-.Y·¹µ{ ûâ¨º\î\"%%ƒ%,¯)ú­ukdL\İ~·K\"ŠZKd\çy]  €üT—”-r»¦h0\âˆzm\ËÙ´¼¼fS•„¨[øTq}\Õr\×\Ø\0¾#…%sÜ®\É¤¤$!ûe=s\ËfLİ¹\Ãí’ˆ¢¦\0\Z7[\Ó\Ó\Õ?a\É\â_¸]S4qDt0\Ã\Ó\è\âlR7I	‡1{E%2ƒA\ô—R8\íR·kr“ˆ\ÂxS&\íİƒ\ó6mp»$¢˜¼2r4–\r\Èÿ@s\Ãš\0\'\Ò1\âˆz$	zxd“„¨›\rhn\Æ\rU\Ë\Åo\Û\à\÷RPrª\Û5¹fj\ñ¨^6¸±‘(\áü}@\Ş\Z>¢Ø‰€œ£Ë–5º]Ó±8G\öËŒ8\":˜ù„8²I\İl\ìş}¸j\õJQ E /Ka\á·k\ênR0\íüWZ(¤³WT\"5r»$¢¨}‘ßŸ¨´(\ä<--\İ\âvM\Ç\Òq$§0\âˆzŠ\ö„¼¼½\ËKJ‰:grM5\Îş|T0\ğ½%gœ‘\åvM\İEŠ‹sú¼OÕº¾j¹lnr»$¢¨\íKJ\Â\Â\Ü|\rZ–¨\êÕº¤\ô#·kŠJA\ñ=`\Ä\Ñau\Ã4:Ÿpä³?ßˆSªw@šƒ\ÏKI‰\ß\íšL“SN\ï¯«HŸKÖ­•	ûj\İ.‰(jA\ËÂƒ¹“P›œ,Ü¥KÊq»¦hHQ\É5\0na\Ä\õ4\ñ\ê\à8N=–\0¸|\Í*Œİ¿\0¾\Ş\ërIF\É\ä\É$…^\0dLÉ¶­mÙ£D	¡m\çù†\Ì>\0\ğü‰\Ë%EEŠ¦Ÿ	Õ‡œˆ£\ÏqD=“WC\İE\Ä \Ü Dn\n\Ø6¾_U‰œ\æ&p“”\Ü\èvMÆ¤fş@In\í^\ÌÚ°\Î\íjˆb\ò\Ö\ğø[\Î@\0¨BJ\àR]´\È\óÃƒ_Œ8jp»$\"O27²9mš\0\Ù$·eƒ˜½¢RRC!…è¯¥p\Ú·kŠ7),şw@¯\ĞÜ¬\×p½%˜\õ€WG†@\÷À\ö\Í\Ğw\ß\İ\çvM\Ç\âDYo3\âˆz….šk6««f“\ó\È†46\âÚ•+\ÄRµxVŠŠNt»¦x‘‚ig\0roJ8¬³WTJF0\èvIDQÛ–†ßŸ¨\n„T\åBı\ğ}\ÏË·Gaø×¶nf\Ä\õXN\ê\"s\ÍfŸ>>\ç\Øm’7\ä\Õ\îÅ·×®2 \òšœzú ·k\ê*),/‚Eø®YU%\Ç5r\ZGƒ?€…yù\Ú\ì\ó	To\Ô%‹Kİ®\éX8š¹‘‡%P/`µztd3332²\Éf“¼c\ê\Î8}\ë\02\Ğ2yrš\Û5u–œzjÀ\÷’\ÙnX‡8G	$,‚‡r\óP’*€üF—”=\ìvMQ9qTÇˆ#¢(™k6\Z,³@\Ô9nX‡“v\×\0À\ÉH\Íx2²™-¡È¬Y>$¥< \ïÿ\í\Úi ‰\Çsc\ÇauV6\0¼?ş\Ã\íz¢\Ñ1\âh\öŠ\åŒ8¢\ŞÃ³¡î€\à\È&y\0¸fUF\Õ\×À…(˜\ös—KŠ\İ\ö\ê{¡8k\ìşıø\ö\Ú\ÕnWC“\÷†ŠÁC\0`\r¾XKK=\ÄÕ¡GÙ­Œ8¢\Ïû9›--\Î\È&{M\ò $\Û\Æ\r+*‘\İÒ¢€şXŠ¦}\Ïíš¢%E%\ß\ô\ßûµ4\ë\rU•\ğÛ¶\Û%E­*»/^=F¨ƒZ3µ¢b¯\Û5‹\å‰^Äˆ#\êµ<;²\é\÷;#›\Ü D•\İÚŠ\ÙU•’+Hq\ñt·k:)š>Ulû\á\ä\È\Î\óL\î<§²35\rO\ÌS[\ÄV±.\Õ%,w»¦c‘¢¢!P\ëm\éÃˆ#\êm¼?²Ùš\Ùd³I\Ş5¢¾×®ªK\Õ/¶¼(……\ãİ®\éHd\êi#E\í—T$\éŠ5«8ºB	¥\Ñ\ï\Çıyùh\òû\Ğ[µüƒ7Ü®\éXdÊ”T¨¼FQo\×\êÕ‘Í¤\ÖH¨;‘·°g7\ÎÛ´\n\ô¬·¤¤d€\Û5JJJ2`…_U \ç\ÜM0¹¦\Úí’ˆ¢f‹\à±	¹Ø•š\n(ĞŠ²ß¸]Ó±tŒ8:‘GD]b®\Ù}D	\ã\Ì-›Q°c;\0ƒ¾ ùùIn\×\ÔFD,\í?\08\ñ«Õ»\ğÍŸ»]QL>8n(*û\ö€\n\Ô\Ö\\\çv=Q‰Dª¯\Ã\÷V®\à,Qø]\Ù\×\ê|=zd³.Ào\'\àv\ÇT¸c;\nwlw»\ÏûÖº5¨IIÁ\Ê\ì¾\Ó\ĞwÀC\0¾\ëvM\0€©\ÅÿÁ¹#\ë\ëp\åšU=ú9eÂ»C‡\á\ç\Ìmr\ÉŞ¤\ä\È[\òK­¬luµ˜(HÑ´\0\Ü\0\r~?~u\â—\\®ˆ\È\Õ)©q¹¹f\Ó\ï·\Òıj0,‚M™n—qL›\ÇfhNs³L¬\õü¦OWùTq\İ\Ê¸û¤/cGj\ÚURX²Z+J\ç»Y“\"wfµ¶\ê\÷W,—\0w\ÇdÙ€¼8z¬\ÛeP\ñş\ÆRX\òu\0ÿ\Û\ö\ïxı±%Jh]<A\È\\³\Ùjù`…{t³y€\àM-_üM·\Ë8)š~¦\rû‡\'\æYwş\ë\ï2°©\É\í’<--\Â–†ù\'}E\ë_JQ\ÉF-/}ŞZ¤¨\è+\ëQŸmã†ª\å\Ì\õ‹\ÑÆŒL<1~¢\nĞª–N×²²¥n\×DŞ§¥o¸]QOb0ú(\Ä\rB \å¼Á~¿ÜŸ—F¿¹\×=Å€\æf\\_µ\\ü¶\rQ}\\\nJN\í\î\Z¤¨hˆ\ØÖ«\n¤^±f•Œ®\Û\ß\İ%$´š”\Ü?\é\rZT\õj6šDD\î1\×l­H\Î&¹M\Ë\ßÅ£;S\Ó\ğ\è„\\\ØÂŸÊ±¿®Z½RH\è\ËRX8¢»[JJR \Ö\Ë*úÍŸ\ã”\ê]\İ\õ\Ğ=B³Ï‡…yù¨‚ÿ\Ô%eÏ¸]Qofpd3ÌœM/©­™\rEù\ò¾ı\ğ\çQcÜ®&!L®©\Æ77o‚\n¾7\åŒ3²L?¦ˆBú€\Ëß»\ç|¾\Ñ\ôC\ö(a<˜;	\Û\ÒÒˆ\òÅ¿t»&\"¢\Ş\Î\\³\ö1ú\ÈC´²²!ÿ,\0[\Şz\à\\b:†›6¶,NBs\ğy))1»¡`Ú|kHc#®YU\Åk1zn\ì8¬\Ì\î(\Ê\Ñ\'\íz·\ë!\"\"“Í¦%œF\÷ıè½°e†¨6>7vœ®\Î\Êv»$\Ï\0—¯Y…1ÎšÉ¯#„_{¬¢’\ó\0—\n\ê\ì•H\r…L=T\ô\æ\ğ‘m/¢VA\Â\ç\é›orG‘l69\îEúa\é?¸<,‚‡&\æiMJŠ\Û%y^À¶1{E%rš›\Ğ—\Â\â\Ù\ñ~)*\ÊÕ§|ªr}\Õ\n\Éifj@,>ƒWF‚(v#,gkEs¾ˆˆ<\Â\\³iû¸İ£tIÙŸùyC  \æNB‹\Ï\çvI—b\öŠJI\r…\ßHa\É\Ùñº¶œrz¨\õº™—¬[#\ã\÷\Õ\Æ\ëÒ½\ÂÆŒL<\îDµ¨O\ÏÑ¥¥kİ®‰ˆˆÚ™k6%\ä8²\éYK\Ï\ğü–\ô<>~\"øS:¶!¸v\å\n±T->\'EE\'v\õš2yr\0I¡Œ>m\ÛVñ¤§˜0âˆˆ\Èûºad“mŒ©ª\"\Üú]>ùGÿx}\Ä(·KJyµ{\ñ\íµ«E¨¼&§>¨KLÍ¸À´\ÜÚ½¸pÃºø\ÙKD\"´.(~Ìˆ#\"\"o2\×lú\ìÈšMc@]¤K—6Á\'\Ğm¯\É\ó££4u\çœ¶m\0@\èu™<9­3×‘¢i7¸v`S“^»rgb\Ğ!\âH\0<®K\ß\åvMDDtx£\"»\Ñù\Ô\ÓtÉ’m\n\ß94?1n‚n\Ì\ôşY\ï^p\Ñúu8iw\r\0LFjÆ“\"\ÓsI¦\rŠ{R\Âa½¡j¹¤q\çyLŠ8\Ú[Ãˆ#\"\"3¸İ²\Ì>\0Å‹V|\ğ©×†,K\È\Í\×Ú¤d·K\ò<p\õ\ê•\ŞP\0¢ h^ÔŸ[0},Yd©ú¾·r…\×\Ø`¬Î¨C\Ä\ÑJHø<­¬lu»&\"\":2ƒ„\Â\ÙL Z±øi(\îÙ—”$\äMB«Å—	Ç’\ã\Æ\åŸ!»¥Eù±_q¬Ï‘\ÂÂ¾ûU\0YmX‡ü½{º¡Òãˆ£Œ8\"\"\ò>ƒ„\ÚF6\Ùl&Œ\Ë\æ\0xmSF&\à\õ¨d·¶bvU¥$…\Ã\0\ä1)˜Vr¤•Y³|€\ï\0\ã§\ìÜ\éÛ¶v_¡=\0#ˆˆ“ÁfÓWi\ì(\ÎTÕ††.Pù\é€üe\Øp·KJ#\ê\ëq\íª*±Tı\"ú¢;\ìn\Ûu€oŒİ¿—­[Ó½E&¸ƒ\" \ße\ÄQ\â08\îl\â\Èfb\Ñ%K\ê\à—Ô¼4jşÕ¯¿\Û%%„\ö\ì\Æy›6@!ı`\ãm))\Ğ\ñıR8\í*~Ğ¯¥Yo¨Z¿m»Uj\Âi\òû8ª({\Öíšˆˆ(z\Æ7qd3\ñhi\éFUœ¯@\ğ±	¹º5=\İ\í’Â™[6£h\Ç6\02Aı“\ä\ç\'€–\0x89\Ö\Ù+*%3t·\Ğ9V•GDD	\Ì\\³©6C\İ˜.Y\\\è\õ->Ÿ,\Ì\Í×º@À\í’\Â%\ë\Öbb\í^@P„¾’’’Q}I€ÀÕ«WÊ°\î<Åˆ#h#ˆˆ“Áitl&:­(û= w§¤\È#\ót,>U\\·r75ÀU\ë2œ»qC[.\'E\é\Í\á#\Ú\"ª\à·qDD” 8²IG\ç\Ç}uV6{ø}/t°´P7.¯Dz0¨P\ôÿ·\ê]øú–\Ï\İ.+¡|’3¯Œ\rªa\é7µ´´\Öíšˆˆ¨s\Ìob\ÎfB\Ó\Ò\Ò\ÂÁY\0\ÖT‚\Òã†º]RB\Èin\Â\÷«–\Ë\ØıûqùšU\à˜p\ô6fd\â\Éqœˆ#\çjY\Ù·k\"\"¢\Îc\ô“.]º–+ªû«U\Ù}\İ.)!¿ş\ã³\"‰;Ï£V’Šß¶E©^¡.ş«\Û5Q\×0úˆ¢¢eeUª¸\È±™˜§;SS\İ.)!pd?zN\Ä\Ñ$­o‹8ZR¶\Èíšˆˆ¨\ëŒ7›\Ù\ì9\ôÃ²¿\0zG£\ß/\ó\òµ\Ñ\ïw»$\ê!\Ú\"¶3âˆˆ¨\Ç1¾Aˆ#›=‹V”\İ\àw;S\Óä‘‰y°¹C\â€GDD=W7D±\Ù\ìqš\êgZV•\İ\Z5\Æ\íj(Á½1|d[\Ä\ÑJÀÉˆ#\"¢\Å\ä!Ÿ\Ù ·\è²eAø­lxoè°¶F(fŸ\ÈÁ«#GA»–ZQ±\×íšˆˆ(¾W)\Ù\ìÁ´´´°fBµ\ñ¹±\ãtuV¶\Û%Q‚Y\×\'¿?Ñ‰8R\ÌĞ¥¥kİ®‰ˆˆ\â\Ï\àÈ¦:k6\Ùk\öXZ\ñÁ¿ \ò\í°ˆ>”›§5))n—D	¢&%\æNÒeA¡\ße\ÄQ\Ïe~7:7\õhZ±ø%(~\Ö\à\Èıy\' \Ù\çs»$\ò¸¿ÿ;\é\ÔÈ´¢\ìY·k\"\"\"s\îFL£{\0\òŒ\ËşÀs\Û\Ó\Ò\ğøø‰|yAGÁ#\ó°35\r\0×Š\Òùn\×DDDf\Ùl›Fg\ë\ÑÓ©ª\"\Üz5€¿ı³ÿ\0¼:r´\Û%‘G==n#ˆˆzƒ\Í&\"¡\îl6{]º´	bŸ\'\Ğmo¿\åt»$\ò˜7†\Ä_€*F\õ§Ñ•\Óè½Œ–—oWø\Î \é\Éqtcf¦\Û%‘Gqt#ˆˆz\óg£sd³WÑŠ>U\àÊeaan¾\îMNv»$r#ˆˆz7n¢¸ÓŠ\Å/\0z\÷ş¤$y 7­£ı{+F7‘K\ÊÁ«Ÿgd\à	\îP\ï•qDDD€\ÑP\÷\È!c@^¦ª6|r€\Ï>ƒ·‡p»$\êFŒ8\"\"¢6\ÆG6¹½\÷\Ò\Ò\Òzø\åj^9\ZŸ\Èq»$\ê\nFQ;\ãk69Ş»ii\éF…\Ì|r\Üİ’\îvIdØ›Œ8\"\"¢Ìl\Z{\0JZQºÀu->Ÿ,\Ì\Ë×º@À\í’ÈeŒ8\"\"¢C0úˆº…V,~Š\ß\îIN‘s\'!\Ä\ê=Îº>YxœGDDt¿±+«X€rd“\Ú\ä„t\âº>Yg<;v®X³\Ê\íŠ(NªSR±Ğ‰8R\0—3âˆ¢!\Ó\n!\Èu»\"Š’\ØK´¼|E¬Ÿf°\ÙTÂ‘Mj§¥¥!),¼\ğ}ü\á Á\ã†6\Ô\ã´m[\İ.‹º¨Á\ï\Ço\'\å£\á@\ÄQ\én\×D\Ş\'EÓ§Š\à]x\òQ¢Pk6\05›Â‘Mú\"­¨\Ø+\Óg@\ì_=6kHc#\òj¹¬/Q…D\ğP\î¤HÄ‘<Æˆ#Š†L=m¬ˆıŠ\n’\Ïş|²[[\Ü.‰ˆbMŸ,|\ìlü\ìƒÍ¦\íƒ\n£\èt\É«¤hú\Å6\ì7™˜g\İù¯È ¦F·Ë¢µE­\Î\Ê€\÷\ĞTwƒ\Ë%Q)SúÁ—\ô†ı\ÏÛ¸\ß\Ø\ò¹\Û%Qº\Òlš>\â\Ù1tZşÁ;\Ü\Ö\ä\÷\Ëıyù\Ú\è7\÷º‡\ÌxsøH|t \â(<K—-º]y›L€/°À„);w°\Ñ$\ê%n	nÛn\î(±iù\âû\0<²+5U™˜[¸\è\"Q0\âˆ:%-\ów€œ6~_-.[»\Ú\íjˆ¨›l6y‚E¡©şF\0‹«²û\â\Å\Ñcİ®†¢Àˆ#\ê)˜\ö¨^9¸±7T-‡Ÿˆz\r“#›u§c\ÒeË‚h\õ_\èú\÷Š\òÁC\Ü.‰¢&%:GP\èwqDÑ\ÂiA0/=\Ô\Ù+*‘\n¹]u#ƒk6•¡\îıø½\İ!@\İ\óc\Ç\é*g\Ã	yLƒßÿt\ê\ôN­({\Ö\íš\Èû¤húT\0Oûm7®¨”\ÍMn—DD\İ\Ì\à	BˆŒl²Ù¤c\Ó\ò\ò*\Ö\åa}87O«SR\İ.‰:‹\à‘‰y‘ˆ#ü^+\Ê\îv»&\ò>).-j¿ ù\Ê5«dL\İ~·K\"\"?®R\ØkR”´üƒW\0ıiƒ? \÷\çå£‰;\Ô=A<5nVf\÷ e\Ø[Ãˆ#:&™2¥lyKœ™7\àßªw¹]¹\Ä\ä4:£(vK\Ê	\à\ÙiixtB.w¨{À#:F\Ù3µ²²\Õ\íš\È\Û8ú:#ˆz5“#›‘\İ\è\Æz UUø\åj@?®\ì\Û¯\åvI½Ú²9xm#(z\"\"Œ8\"¢¸Aˆ<GKK›!:S[\ß\Z6\çt»¤^i-#¨3¦ÿ\'#ˆ¨#ƒ\ÑG\Ü D§\å\å\ÛÕ²\Ï \é©qt}f·K\êUjRR\ğĞˆ#\\Åˆ#Š†\Ïb\Ä\Ê|³\É^“:I\Ë\Ëÿ®\"W„,\æNÒ½\É\Én—\Ô+|1\âh\ñsn\×D\Ş\'EÓ§B\ä)FÑ¡L6›\Î4:G6©´¼\ôE@~¹?)I\æ\æ£\Õ2ù+KN\Ä\Ñ$FQLqDDGc|7:G6©Ë–,ş	€E›32\ğøø‰|ùbH{\ÄQ6\0,f\ÄEƒGDt,\Æw£sd“ºª}‡:ş\ï\ïr\ğ\Ö\ğ‘n—\Ô#q\äF\Ñ11âˆˆ¢a\ò¡H¨;›M\ê:--­‡\í;@\õ+#GaÙ€·K\êQ¾qTZZ\ëvM\äm\"\"H\Íx”GDt,§\Ña™}\0\êm\ô\Ã\÷7A¬™¢\Úú\Äø‰º)#\Ó\í’zFQ§ÿÀŒ8\"¢c1¾Aˆ#›OZşÁ‡\n\\´,y(w’\î$¹]RBcI²,\ó\0\0 \0IDAT\Äu†Ï‚\âgŒ8\"¢hl6#\ÇU²×¤8\Ó%eOB\ô\×{’“\å¡\ÜIq‡z§q$˜Ãˆ#Š†–0âˆˆba\ğ¯´0Ô\Ì<\è?\0}g]Ÿ>xf\ì8·«I8!<”‰8R<ª\å‹ÿ\Ç\íš\ÈûdJ\É\ñ¢ú²\0\É\ß]½’GD\ã#›b\î¨\ÓE‹\Â\ğ[—\0X¹t\Ğ`¼7t˜\Û%%\ğ\ô¸	X•\r\0ï¡¹şû.—D	@¦L\éŸ¾®‚ş37®\Ç\É5\Õn—DD	\Â\ä\È&\×l’QZZZK\Ï \ö\ÅQc´²o?·KJ\"V %p¡.[t»&\ò6\É\ÏO‚/\ğg\0\nvlÇ™[6»]%\ã\ÇUZl6\É -+[£‹T\Ä~dbnKKw»$O;$\â\è\\}\÷\İ}n\×D\Ş&\"‚¾~H\ñø}µ¸t\İ\Z·K\"¢cr\Z\İgøˆ\0\0ZQú7·ø|²0/_\ë·K\ò¤GÍŒ8¢¨1âˆˆº\Èø	BœF§\î \å‹Ñ‡jRRä¡‰“®\îèˆ£\ï2âˆ¢Áˆ#\"Š\ã¡\îü“Oİ¦±\á&\0¥k²²\ğâ˜±nW\ãŒ8¢ÎÂ’\0O3âˆˆºŠ¡\î\Ôc\è²eA´ú/°®t\ÈP”\r9\Î\í’\\Á##GÀ\ïqDÑ\Â\Â1ı3D’¾³f#ˆ¨KŒnpd“º—~ü\ŞnX:CT\÷ÿq\Ì\ñº2;\Û\í’\\£\0\Z7‘\ïÁbì­¹Á\å’(È”)ı\0ß›\näœ¿q=¾Z½\Ëí’ˆ(Á\Ù\ä¨&¹A\ËÊªT¬‹\Ã\"\ö\Ã\'é®”T·KrE‡ˆ£*øe¦VV¶º]y›L€•\ô€	Sw\î`\ÄÅ…Ñ‘M\Æ‘[´¢\ôm@ş³\Ñï—…“\ò\Ñ\ä\÷»]R·:(\â\È\ö\Í\Ğ\Ò\ÒZ·k\"oAjÆ£L¿¯\ßZ»\Úí’ˆ¨‡0=\În“\\£¥\óü~Gj\Z~7!v/Ù¡~P\Ä\älı\ğıun\×D	€GDdˆÁ\è#N£“øe6€–\÷í‡—Gv»\Z\ãjRR\ğ`Çˆ£%¥¹]y#ˆ\È$£\ÑGt\'·iii3ü2S€-\ï\rv»$c\Zü~üfÒ‰¨w\"\î`\ÄEƒGDdš\Ñf“#›\äZZºC-=GTŸ;N\×g\öq»¤¸k‹8Ú•š\n@\Ó\ò\Å\÷¸]y#ˆ¨;F·˜|D¡eeÿP\ËwEÈ²\ğ@\Ş$İ›œ\ìvIq\óÅˆ£\ê\ï»\\%\0FQw1»Aˆ#›\ä!ZşÁŸ ø\ïº@’,\Ì\ËG‹\Ï\çvIq\ñúˆQmG+qD\Ñ`\Äu\'£9›7£“\×T”Í…\È7§g\à\ñ\ñş7tÙ€¼>bd[\Ä\Ñ9Œ8¢ca\Äu7\Ã#›¯N\Ô	ªªµ\\`\Ù?úÀ#Fº]R§1\âˆ:¥ \è§`\Äu#†ºS¯£K—6\á\0\İ\õÚˆQø$g \Û%\Åì ˆ#‘«qDÑ‚\âY€\ÌM\õFFQ71{\\¥Á‹u…VT|3¡\Úú\ä¸	º1#\Óí’¢\ö…ˆ£\ò\Ò\çİ®‰¼¯-\â(‰8\Êa\Äuƒ\ÑG\ê\ã\È&y™–•-…\à{AË’\ò\òµ6\Éû;\Ô\Ã\"x8—G›H\Ä\ÑKIº’GD\Ô\ÍF	3\İ\É\ó´¢\ì)@\îİ—”$\ç\æ!\ä\á£À“\ã&`UV6 øü¸\Ş\íš\Èû\"Go)0€GD\ä“#›\\³I‰aH\Î\0\ŞZŸ\ÙO?\Ş\íj\è\õ£\ğ±qT‰\äÀ,--\å‚;:*9\ë¬dXI/_¸c;#ˆ\È~cW±$\áƒe¨7\ĞE‹\Âr\Æ—¢9ø×\Ê\ÚØ€¯y\ì\ò\ÇµE\íT\õ­ï¾»\Ï\íš\È\ÛDDPPü;Š†7\ÔãŒ­[P“’\âvYD”€\ê.}¾¹f°,\öš” \ô\İw\÷É”’sÄ§{i\ä\è¾C\ZqÂ\İn—\0X“•…§\ïD)f\è‡\ïor»&J\0N\Ä\Ñ\å\Û\Æ\æ\ôü\ôä¯º]\õRF›MlR\"Ñ¥¥k¥húE\nûG\'\äZsş\õw\Ò\Ø\èjM»RS\Û\"ª\ß\Ö\Ë>qµ JRP|D\æf[\õ\ì\Ï7\Ésc\ÇÀ\0\Ìb%¢®\èÔ´Ÿ\Éf\ÓÇ‘MJ4ZşÁûR8\í¦fŸo\áÂ¼|½\óŸÿ\ôPĞ•Z\Züü6\ïm\ğ*·\ë’\Åv¥J(R0­À\ï\Û\"\ö’\"\ï\Ñg´¢\ì\'n\ÖFD½“‘\rB\"\"\0„g£S\"ÒŠ\Å@\ô¡\ê”Ty87a\éş\ÄØe\áÁ¼IØ•š*\0\Ñ%¥¿\ê\ö\"(\áHq\ñ8}YD’¾»z¥Œª«s»$\"\"C»Ñ§M\ó9g³I	ª±\á&(>X••gºy‡ºxúø\ñX\Ó\'€¾¿\Ì\î\Ö(!É”)ı`\Ë\ë\n\éwş\Æ\õøJMµ\Û%0\ÕlVW[\0À³\Ñ)Q\é²eAØ­X\÷\á ÁX<\ä¸n{\ì\×GŒ\ÂGN\Ä\Ñ\nø­KqD\Ç\"“\'`%½\0`üÔ;<—¦@D½›™f3\'\Çr.\În“—.]ºa9[T\÷ÿq\Ì\ñº2»¯\ñ\Ç\\6 \ç@\Äl\ßYZZZküA)¡‰ˆ 5\ã1¦\ßW‹o­]\ívIDD1\Ól&%ù\0€k6)\Ñ\é\ÒÒ•jùf\Ù\"\ö\Ã\ó\Ô9&ÒŒ5}²\ğøø‰N\Ä\ä<FQT\n¦\Ípù\ÆF\ÜPµ~\Şw‰\Èc\Ì4›\r\r–¹‹u/-ÿ\à\îl\ôûea^>\Zı\ñq¨IIÁC‘ˆ#U½L—”~\÷¡G\nŠ/\ô§Á \Î^Q‰´W\\‘\÷˜\éSS#k6ù\n›z-_|\îHMÃ£ra\Çq‡zƒ?€\ßL:\õ€@\å]RÆˆ#:&),)\0\ğTÀ¶1{E¥\ä47¹]\Ña™\Z\Ùtv£³×¤¤¶f6\å\Ëû\ö\ÃK£F\Ç\å’!<œ›gz^c\ÄEC\n\Ç\ô%ˆ$]¹f•Œ©\Û\ïvIDDGd¦\ÙLNvF6¹Aˆz­¬lE\È?À–¿%ƒ‡t\íz\07«²²\áD\áúx\ÔI=›L™\Ò\ğ½¥À€6®\ÇW«w¹]\ÑQ™i6[[#\Í&QÏ¢½·¶\Ì\Õ\ÆgÇ\Ó\ÕYÙ¾#(V2yr\0¾¤Áˆ#\"J fšMŸ/2Î‘M\êy\ô\Ã\Ò*pyXM\ÌÓš””˜¯\ñI\Î@FQLD%Œ8\"¢Db¦\Ù¸Aˆz4gü¼!‡r\'¡\Åy}•5}²\ğÄ¸	Œ8¢\Ø0âˆˆ”¡‘\ÍVŸ¹‹yÄ’\Å\ó\0<¿9=Ÿ\Õ\neFQg0âˆˆ™™~\Ğ\ï\ç\È&\õxªª·~‚Oş\Ñ\0^1\ê¨Ïˆ#\êFQ¢34\â!\êt\é\Ò&Ø¡\óº\í\õ#\ñI\ÎÀ\Ã~#¨3\Ú\"D$\é\êUUŒ8\"¢„d¦Ù´,n¢^C—,Ù¦\ğ#@\ó“\ã&\èÆŒÌƒ\ßFQ\ì:F¿a=¾¼»\Æí’ˆˆ:\ÅL³\öqd“z­ø\àS®\rZ–<—¯µI\É\ŞÇˆ#Š•\ä\ç\'q´•GD”¸m\ns\Í&\õ:Z±øi(\îÙ—”$\äMBĞ²qD1A\ß(É«İ‹o3âˆˆœÑ‘M\îF§^\çÃ²9\0^ß”‘‰û\ó\ò\Û\"šT1ƒG•H\Ä\Ñq\rz]\Õr.G\"¢„gh\Íf\Èpd“zUµl¾À\ò•\Ù}²,U\à2ıp\ñ\'n\×F\Ş\'E%\ß\ô§}Z[\õ\Æå•’»]Q—™i6E¸Aˆz-ı\è£ı\ğ\Ë\Ù\0ª½]+¿\ävM\ä}R0­¶ıXÀ¶qC\Õr\é\ß\Ò\ìvIDDqa¦\ÙT€„¨\÷\Ò\ÒÒ@øT­(»\×\íZ\Èû¤°p¼ˆ¾Ìˆ#\"\ê‰­\Ùd\ô‘VT¬w»\ò>9\å\ôş€\ï5…\ôc\Ä\õDF§\Ñ%ªüˆˆz\'\É\ÏOBR\è0âˆˆz0C\ÑG¶³½&\ÑauŒ8š´w#ˆ¨\Ç2\Ól\ÚV$Ô\İ&\ÑaM-ş€Ë‡46\âšUU\\vDD=–\á\İ\èF®ND”Ğ¤¨\ä~Ò§µU°ü3¤…x¨\õ\\~#WµmÂœM\"¢CIÁ´B@Ÿ¨2âˆˆzC¡\î\ÏF\'\":„L=m¬şÌˆ#\"\êME…}DDÔœrzX\á7pÁ†uŒ8\"¢^\Ã\ğ\È&›M\"¢C#\ÎØº\Åí’ˆˆºÙœM\öšD\Ô\Ë1âˆˆz;C\ÇUFr69²ID½#ˆ¨—34²™F\ç=•ˆz1F‹>\nû \Â5›D\Ôk1âˆˆ\ÈatƒCİ‰¨7b\ÄQ;C\ÇUÚ‘itv›DÔ»0âˆˆ\è`f«\ä4:\õ\"Œ8\"\"ú\"C»Ñ•\'Q¯Âˆ#\"¢\Ã35²Y³É‘M\"\ê%qDDtXu\'\"\ê\"F™™\è#µ-€\ÑGD\Ô\óI\Ñ\ôb¨>°mÜ¸¢\Ò\ÃG’\'…\Ó.r»\n\"J@¶\ïoú\áû›:û\éfšM±,¨r\Z‰ˆz4),/\ğ½ p\õª*Œ¬¯s»¤£9?\òQl¬\ğ\0\î\ì§\Z\Ù\ä!\"\êÙ¤¤d\0\à{S¾z8\âh`S\ÎÜ²\Ù\í2ˆ(m\Ê\È\Ä\Ê\ì\ì._\Ç\Ğ\È&|P\ælQ\Ï$g•Œ¾`lÑm8\Z\ÜÔˆ\ó7®w»\"J@\ï—f\ÓP¨{[\Î&Q\Ï\"\"‚º\Æ\ß(˜´w.]·\Öí’ˆˆ<\Í\Ğnt\å	BD\Ô3\Ï#ˆˆ¢f(Ô9›D\Ô\óHQ\É%Pü\'#ˆˆ¢ghÍ¦\ís¢ˆˆz)˜V(\Ğ\'ıªø~\ÕrGy‹\Ñ„8ND=L=m¬ş‘¤«WU\É\èºın—DD”0Œ\Î\rBD”\è\ä”\ÓûC\Âo+0À\ËGDD^eø¸JlQ\â’üü$$…^€\àø‚\Ûqº‡#ˆˆ¼\Ê\ì!#\'\"2OD\ÙP2i\ï\\¶n\Û%%$Cı Í‘M\"Jl…\Å\ó ø6#ˆˆº\ÆP³i‰Á‹\Õ1\â\è¦\åÿÇˆ#\"¢.0}„H\ôGˆ(Á\ZqÔ¯¥\Åí’ˆˆ\ZCİ‰ˆ\"d\êicx‰GDD\ñc\ö¸J#\'\"Š¿G‚şŒ8\"\"ŠS#›>€#›D”\"G/2âˆˆ(şÌ d\ä\âDD\ñ\Ó!\âh\Z#ˆˆ\â\Ï\è	B\Ü DDWP\ôó¶ˆ£\ï1âˆˆ(\îlÂ™Fo\ÚD\ä]RTr	 ?n‹8Je\ÄQÜ™‰>µ a¯IDÅˆ#\"¢\îa4úH8²ID^%zŠ$]Ãˆ#\"\"£\ò#‘\ã*\Í\\ˆ¨\ë$\0\0\'1âˆˆ\È(CÍ¦2Ôˆ¼\Î\'`j‘i¦/\ç!\"\ò:3ˆˆ\Ì3´f‘\è##W\'\"Š‹£šDDæ™Š>\â!\"\ò:—ú™g\ê¡\Èq•F®ND–(»M\"\"\ÓÌ Ä‘M\"\ò.N£u£g£sŠŠˆ<K\á³T\Ùofjd“9›D\äm\ËTµ3u¯uF69ND\Ş\Å\è#\"¢nÀ‘M\"\ê­,¾ &\"2\Ï\ìšM\ŞÈ‰È»,¾ &\"2\Ï\èq•¼‘‘‡ù˜˜ADd¡fSx\\%y\Å,`\"\"\óÌ \Ä\Å\÷D\ä]\Ü DD\Ô\rÌn\ä\âDDq\á\ã\ì‘y¦¢\"\ÇU\òFND¥\Ê\rBDD\İÀ\ì!3\'\"\ê:‹„ˆˆ\Ì3µAˆ\ÇU‘\×qƒQ70:\Î\Å\÷D\äaŒ>\"\"\êF«\ä4:yG6‰ˆº\Ùf“#›D\äA\"\"\0„#›DD\æù\r]\×:\ğ?DD^s\ÑE¶\ïÂ¾¤$üy\Ô·«!\"\ò¤M™q¹™fS\áƒpd“ˆ<jız©\ØH\Â;Ã†»]\rQf¦ÙŒœ \ô\Ì\ñ\ã\\\Ş+Z-\İ%¤O?\r£ x–\Ûe%\Û\÷·®|º\Ñi\ôŠÁC]ˆ¨\óT\Õ\ğ‚\Ûu\õ†F6\íK şT#\×\ö¢\îs»\"\"\"\"/2\Òljyù\n\×%\"\"\"¢\Ä\ÂE‡DDDDd›M\"\"\"\"2†\Í&\Ãf“ˆˆˆˆŒa³IDDDDÆ°\Ù$\"\"\"\"c\Øl‘1l6‰ˆˆˆ\È6›DDDDd›M\"\"\"\"2\Æ\Ì\Ù\è\Ô\ãÉn\ìM¾\æ°\ïT;Œ\Ô\ì:w®\İ\Íe‘Ç°Ù¤Î±—\0:ÿ\ğ\ï ¹\ö\ï\0>\èÖšˆˆˆ\Ès¢n6\å[Ï…\\“\ÅÄ\"\Ñú\öÿC\ö\Â\Æ¨½\êß‹Œ–\İ:\÷\÷»W` r)\äh W ›M™s\ólˆ•\ávQ\Û\ï\êÿ\Ü\÷\÷Ã½K\æ\Üú=úuwI²\î\×{\îi0ùr\ÇÍ¹°¬sL>F\Ü\Ø\ö:½û¾cùù\Ñ\ÍS¡V©’:\Í\Ö:½{Án—\ÑF\î¼\åf@’Ü®Š=:ÿ\Şß¹]F¬\ä\Î[f2\Ş\í: \á\çtş¯?\ïøÉœ[Î…\ÈD·JJXªtş‚E¦.ıÈ¦\è¥P\\bª¸\ÓCş!\0D\0„&?d\Î-\õP\İ‘\rl€\êjXø;’ÿ¥snt§\è\Ä w\Ş<\n\"S\0\0é«Œ5\í\ï\Ü\÷% y( 8_\æ]\÷ıü^şªÇ¹]D\Ô,\Ô8l³	\è­PL\è\Özº\")ø\0£\Í&,|	z¤yy@L\Í&\Â8¢?3RO\×l\à™fŠy€fº]\0[n¿ı5ıŸÿ\Ù\áv!\ÑÁ?¼€û\÷I‘\ÔlB\õR\0»ROB“r\0h6{ˆ\ä\Èw\ZSl\0M\éa¹\ã\æ*ˆü\"\ï \Ù~_ï»¯\Ö\İR=F\å[@d\\3{¼³\Ã;\Åi6L4¦\Í\ğL\÷HD”,øB\çx\È\íB¢vû\Í_…\ZMŠ3³/¾bo6ı\õ@ÿ2¥Ä™À\Í\ö\ádÀN\ìd œ„Ó€p\Ê\Ôw\ègúÚ›Pı’%$snş*D\Ï\ê‚{º\÷\ñ \ÕK!\ö\ÒhH[X-\Î\÷Z¬Ë‘¨\Íf\ê& O¥\ÛU\0ª¿ıÇ§l²şi®®hÔ\à\Îc\÷_ø\Í¤vÊ©@0»k\×\0ßˆK9]²ÿ i„\ÛUYú: c¥;]S\âü-R\\€Dj6-=\ZYC•\óÀ\nv\ï\ã·\ö\öş¿cœ¯Pn¾D\×6	x¬Ù”g\ê´\'P\0v\Ì‚ı–\Î­:6¡~@\n (@~%sny¢\è]\÷-v¯p\÷\Èm?<>+\0±\ê0\Ò\×\0uù\0\ôtù\ñ\ÍC\ô\÷m\ï\Ş*\ãÀ¿Ï»¿\çv\nP\Ã\Ç\ê¼ûµ„S€:—;m\ğ\à¤E\í\É\ñ¹~\æM#€&·‹8\nÿ^\÷¾OMÃı\'@±\ÜrK¿„È°q.@r5¹¼û\ß74\Êf³\Õ\Ï¯k\Ş\Öl\Zİ«Ğ»s6€¯\Şù\Éü?`À{À\Ğg\Ñ\÷\Ç-²>qF\î\Ú7\Â$¸*¥r\Ç-Kd\Î-3\\«\İ->\ße\Ş>Òˆ@fÕ†-\ß2^Q¢I_\Û\öV\0É’›\Ö\ä\Î[\ÆDfşœY,J|¾#\Ól6»Ÿ\í4 ı—8\Í\ç°Ç¾;K\Ú¦xU\æ\Ü\ò®\Ü~ûX\×J\íF\"\"€:›Ä’w:\Óè‡“¼D6û+.\ï¦\òˆˆG\ÊfÀ\×ì¼­z¾»\ÅD\É\î\Ğ³\Ù\ì¤µ\í­t™7\ÏXOû4z(\Ø\Z¬ 3u*Agı“¿\ğ\ïR·\0Vs|ªl4´\öÂ™€F\óıPÀj¬ \ÍN\ó\Øø\ö)\Õ¿Á\Ç¨ú.úşhÔ´j{\ï\é°BŸÉœ›	2u\â+L·\İ\\\0ÀY€u´uN £\n\Ø{\n\0œ$·ı\ğD½\ç\×ÿ\×\r\ÆO\ã8`k\Û\Ï\Øv\Ö%YA\0!\çE‡¿\Îù/¿\ç\0Ğ’´\æ8\ë‰C™\Î\ÚW;€Ø‘¤–¨~ÿ;~-£:<gC€„#Ï \ó5ø\ê-º\Õy<¨\0-C€`¿_KÀY  \ç\ã\Âi\ñy¼\Î\Ø1°\Â\Î\ÛV«\ós\r\ìR¶\0\É\Û\0Ñ£~,\Ô4š\Æ\0¡>\Î\ò#	\Æ!­J\Ñş3œŸ«\Õ\ì\Ü“jœF\'\ç\ô7µœŸy\óPgiR8£\ã}Ò›\ê\ó€\æ\á\Î\ÛŸl\ö9¿\ñzn´H[\Ô\åÀr\Ç™z\÷\İn-*‰\è¹\0œ\õI»\âı– ¹ÿ3\"\÷‹d\ç~b\';cG™X\ìĞ«t¼‡K\ğ5´\ß\ÃS¶´7ı]e§8\Ï\ó–A\Î\ó\ÜN‰¾\Ş6ŒÜŸ[_Sû=:P\ë<w%ŸZ\ÛXz!vg\00{³©ş\èn ¢@\òV§AK\İÒ‰\Ò\àüq\Ú}:P\ç\È,Q P\íüqM\Ù¤mŒ\ò¨Î‚\ò\ôu@\ãhg!k\0¤r7š\öSn¿ı\âDŠ±ˆ‰Ày\æŠ~½fG\í\Í&\à\ó]\à6³\Å\ÅY8\Õù\ïX\Ú~\ÏûıÕ¹iu†Z@\íWu®¡>»\ÆÑ„S\ŞÜ´‘\ó\\\è·\äÈ£\Ö\Ç|¬d`\ï aBt\ß?7ù}½\Î\÷¡}ª³\óB}€\í\çÁ¾]¿V,uŸN\İê¼ˆ\î\ì\ïm›ÖÀ¾“†±‘™	$œ\İ	\é\ë~\Î`J¼¤­mk6S`…\Î\ğ\Çø]<¾\ä–[ú!	N†k\Æz=g9\ês\î\õ“€`\ï\Ñ\ö*°#Ï…¿:3šb{ÿ\Íù:\Ô`È\Ø@`·So\êz§·\êj\ó)6x5¦z¢\Ùl\0\Ğ\ñ/P\æQ?_hl¿\0\ò*º!\ö\êv—­\Ñ\Ü\àH\ß\å48\ë+\\[\ëÀ\ÈM\ò\ËÎ«‡\ôU@f¥³\è9\Zi€´M\ÎMvÏ©‘_0-‚Z&?ú\áú\Ë_İ…ƒ\\w]\0}\Ó/™ş9\Æ.\ŞÀ^ y\Ğ2€ı-™5k.Z\ç—d&\È>\0»¤,m¹É\ß\óA¯8¿±ª93–T\0Z:<şQ^’\Ë~@Û³\à\è[œ\Õ4\ï|=\Ç={Ã©~`Ç…\ÎLDt\Z\0´O1¨\İ\rÇ›Z­¾\'€\ó³\ÍúÂ‡û;g\0YË€ş]{\È]g®Ñ´\ì;\ê\çiÇƒ)¢$h\ÂÁ\÷\é#ÿÜ›†\Í\ÙKeB±\ne\0Õ§M£\öQ-\0\Z=ú\×\Ú\İµ´\rUF\÷Ü¨4\ç,­:\Öı/Zi›œ?\ö\Z\0T/€‡›M$\ÉY:©xN¡\ï:Ë¹\ïD§	@û=O}_n«\á\çø\Ñ\ïá°œ\ÍZMC!¯\0©£­¥\İ\îB`\ßW\öû\à<\ç\çØ¿m\Ôr¸Zsœ]\äV‹³I+\ëŸÎ¦\ÖÎ°:\Î\ò¶Û‘.7\İ8K\ó\Û?vú5Š\Üyg_ƒ>XÁ¾€o0,	\è\0gp¾ûZ`\Ø±MKû[®hg_\È<ˆ.Å†\Íú\ğ\ÃQe-Èœ9Y…HF\Ø7\Z*£a\é8(ş€/88\÷H\à¼\Ò\ì·\Ôy\õu­\ÙÀ\Îo:Í«£Ğ‹tş}oEo“\Ûo=–¾À‰»ˆf\â¾/9/\0@p¦Şµ\à/K4FDs\ædC\Zü@ /\ì\ğ`À7\".¿\çMC\í³\Úş\Õ\àm¨”\Øµ·À\Ò\ZHjR\ö´\Ä# _\æ\Í\ó£¹9\áp2$\Ø\ğ\rƒ¥Cı2gÀI\ôzl\ß\÷e`\÷´¶\í†\àM\0K–-°°\Z\Ü\r+½))M:wn\×tÌ›–\Ô°\í/r \ç¢m\ì¦\ßR »“¯Ã©À¦\ë\Ûş\õDMş‡ÎŸß­Í—Ì›\çGpÿ„\í±P9\óı\êø¶3­†\ã\ê3œi\Ât \ï@µŠÏ şmz\Ï=\æZ\Íø\ÂsÃ’¡°1¾\Å\0NW±ø\ÎÁŸ¬>\'Å¤u \ó7\Ä\Ãü]\ßt\ZY ­¨xrÿ¾Ì¹e€‹ ­À¨‡\ÚG\Ô\Ô\ç,GHªL\óÆ°Ü i°}fÛ¿\Z\0¼ ÀF(¶\"lU#ØP¨µ+§‹}\á\Ò!°d8Ä•³\0|@\ç\îá­‘^\ÅQ\Ña[\ïÃ²×¡Ev\Æú\ó”\ÛnK‡H&|¡¨5\È0¨\æ\òe\0y\0Búüı!\àk9\ìu¨a°\ó\Ü\Èu¬\Éz×¯>\í\Ñ\ér³yÔ‹\ßy\ëÏ :\00\ì\Î/c´\ö\ì.jû×‰:Ágq­\í;2!­\0fr:fL‰™ŸıÊ£\ÏS?P}š\ó¤s\\¡\ó<Ïº\İ\"w\Üú,D/…„€‘8¯¨%œ\n|~m\Û\Z\Ã?\èü=r³\Üq\ó\\ˆü\00\ôÑÀ\î\â¶WÄ­°¬“\ô—¿r)\ôy\ó,4\íû3€s!a`\ÔıÎ´M´¶_4\r› I\'uwCOr\ç-_ƒ\â\0}\0†¼Ø¹\å@\áL`\Ó5\ÎÛŠ\ï\ê\İk¡] w\ŞzTŸ\0_0\âw\ÑM\ÉÕÔœ\Ö~J›j%€ù¨m\\\í@@¢‘y\óüh\Ú\÷\0%°‚À¨p\Ğ@UıD`\×7œ·s\ŞufÉ¢U?\Şi8\ç\éü¯Ä§\êø‘›nJFš¿\Z@&2Vœ\á\Ú4\ÒY&\0ıË¬z•\ê\Ó\Ûrv\ö\å\ë=\÷tbj¨\ë\ä\Î[ÕŸ\0\0†=\í4\Í\Ñ\Ú3\Å\Ù\Ç(DNÖ»\îı‡‘\"#\ä¶\Û\Ò\áŸ•³!:@û\Ú_ƒ\óB(uS\ôl\Z\æÜ»@´\ÄT¬£\Ù\İ\è\"\íVKÿ\Ø>·m*N±9Ş&\0\è\İw\×\éüû\Ş\Òù\÷]…Ô†ÁP|€Ê¥\â\äŸm½,ú\îr~\È}?jû\0–9·œ\ïÚ»›Ì›QgbÚ†\è\ZMÀyu\ß>­<S\æ\ÍNœ3\Çc\á\óµO}µ\Æø{<\ğ\ñÿt³\Ñ\0;\×F\Ûqe\ê‹=X¼\íkW};‘M\0Ğ»ü‚\0„j¾Ö¹µXV]‡\çK\äˆWĞ»\îı ÿÀya\ØEøz]~\ÇFSùÒ²OÖ»\ï{¦§6š\0\Ùøù\0g]\ê\Ñ\Ö\ßÖ‹\í\â\é:ŒztWzº¿m2©‡L¡7t!Œ¥}3\Ü\Çn5š\0\îU‚±\Ş\Ãs\ÚŞª4\İh€\ŞsOƒ\Î_\ğŠ\Ş}\ï\÷ a\0~À9]%œl?\ØR\ô\ì8 ¦bl\Z\İp³j_7¡1.Gúã¿€:\÷\áF½{Á“HÍš\Ñ\ï9ĞL˜\0\0 \0IDAT\ÓApn(\Û.\ês£¿Xß¿ıK\Û&\àü\0ş(w\ÜZb \ì\îÓ”r€t\0±Ÿ¶\Ñ>5—¦o\ŞH»*(\ía\Ì\Z\ã\ÎCû@\ã‘tq\íüs¶msˆ 1Â©A\ïZ\ğ€{\08;[k\'\Ç~\Ù/(z™\Ü~û\à¸©\Í\ÏÀ™…šQZ\ÓHg$\Êi4C\0.\Ñù\÷Ş¦s\ç\Æ\í‘À\Ôj_[u´P\ÍÃrÑ’ ³v\Óù\Ç¹\î:\ï\í²\Ò\È`ƒ\Ø@úÆƒ\ß\×8¦\ó\×mÿ>º{ÿ“pû}/\ÖMní›šâ°›06Î Ù‚\ß@’s¡‘C°€š\é\Î2¶ht\\³)jl@\Èl³\Ù\â\ï0\'\ãCx²j\ã\Ù]£s\ç†\ô®û…<€3•¡>g]~\ô\Êú\'\Ğ\ïÀ‘\É}1¡³8U/\à¬I\Û\Ûç¦­\ï\r¤W\õcU8\Üa‘RŒ+R\ÚbŒq\ÎU\é$\é8\Z\ë\êš\È\Çk¼³9\\”š5Àz\0\ÎN\Óp\'^ø·O+¦\Â\nz*•A\ç.¬\ÔY\÷q´]\Ù\á4\ç>\èüŒ\Ã\0®\ÔùuC‰¢£Gù{¦¾\Ø°´}J_\ôK\÷\Ô\à„“¯\É\×L\Ùzp\Ô[[L[§/~\àû\è\îı¯µC¯k´\\\Ûiƒ\"]^S\ßYz\×]{\õ\î\×Aq\r\Ú6]\î™4F\ÑvtÜDÙŒ\Ëa\í\ö©ı\åı»uş‚\ó\àO\Û\Î4\Ú\Î9¿\Ñ\Êú{\ÇMı`…^‘;\î0z\ö¨	\ò£›r 8€sCŒ5kN\Â@Æ#\ÃJä›†Åµ@/\È\nµSb½Qµ=\åˆ\É\n\İ,\Ê?¨‡ı\Ô\ÏYo4\Îq s\ç6C\àL5«\Ø=5\ö‹¤nrA\0\0\Èl¹\í¶£n\ß\î~\âüµ<Ò¦°\ë\ë\Î\0¨\Î\Óù\í\Ú<D:üU>\Ö\ó¼!Æ©\ô´\õ\í\ë£m\\cef\İ~\ó\É\0†ø\â.\ô†.Œj€} /p\÷ş×•^\åÀ‹l\Û\õ{¸Ş½\à1.†\nP}¦“\Zq4G6Utd3»µ„¼Zpm\Î_\ğ¨~@\n`\÷\ô¶3D£\Ów©³«\×1	V\ğ·q/\Ò4\Û7m;\ßbBo\Ó~|¥+p\Ù\Ñ>41µt¡A;pc\óFƒÖ±Q´cùZnºÒƒF6\è]^°\0Ğ‰\óŠQ¿\Û\ŞJ†/ü\Ë8•\Öe2o^\n\0\'p\Ô:Â¦Ù†<g\n\İQŠ´\ì_tGm\Ó\ñ¹q¬¿gM#c[†\âkv\"\å\0@p®Ìš\å;ú\'t#«Ã©A\é‡4›ÑŒœı\âmo¸{ÿ\ëÒ€A„\Ä\óˆÎ‹Ü¯n\à\ÌWŸ~\ôO°‚\íıµ\Ú	:²¹/¹\ó\Ó\èm®ş\0\õ\îû\ğm\0\nµœˆ£c½Rh#\0r\Ş’#+WÊœ[f\õs¼FÅ™B\÷×·\ßc•´Í‰”\0\0Õ·#}wW~\Ï|¼G\Z4_\ç\Zg=h4Às<‰\ÜÀ†¨)F\Ìw¥\ÔM\Ö\å\ábù\ÑO‰k}\ÕRûe´½²O:LÜ›\ìd:j¡oG6’\õB14›\êwşˆEûƒ0\æ¸N¡›95(¹\æ\à@ûPş?{o\'IYş¿?U}L\÷\ôœ{±°r«ˆŠˆ¢\ñL`¢\ñJ\òMø}£Y\Ù\ö\Ğd`˜E’|\ò\Í\õ\Ñ(QQOET\ä–sOØû\ê\îª\ç\÷\Ç\Ó\ÕU=\Ó3\Ó\Õ]=\Ó3<\ï×«_S=u}º»\ê©\Ï\ó9™¬³C”j\Ï\ÎhºJ3±k\ÏM(ş\Ğupg­cª\ğÂ¶k‘Z6\Ç\Æ7gCª+\Í\Å\òE\×\0Ú•t\ä\r\Õ\ïl\åa\Å7ƒ\îç¿—VÌ¶K³ \Û7®G\Ğ´­†«=Vv ‚V\Ñ\ËUg­~»\è8|¸\ö\ë¼\Ù,›–ˆ]\n\óY‚C\É\Òq£{³Lÿ\0¹50~Jøƒt\ß\å\İC‚+\×G)_\Í8øfD…\Æg¯\ğc9•\ìT»vœ\'Éš2\Äd´\êB\åš\Ö\Ç\ñg1VS$S\Ê\ö\ëQœLw¡O¼ ü¤k\Ú	<\ô¹Ü’\ĞU<”RŠ¸ü9 C¾‚Y\ÃJ®\ô\Åj\Ù\\³¦\ö \Ûf#\Õ\ñW º’\ï\Ä\ñ^\Ş\êH\ô\é\Öwšn\\{w\ä\ò5%\ïÁ»B§º\Ğ\ó]\á~\Ó\Ì\Ãşµn±¤¬›e‘BT\ŞÌ¾I\\Ï\å\Ë!a\İ\è\ÖÒ´|\Ù\ê£xƒwÿ…~b@µ$B\Æk† \Ê\öMoŸuûù@DØ‹\÷Mï•ï„¡b	\á×¤\Ûÿ\Ï<K\×\\XR\í}®\Ë\ßL¼ \\¹,{R%]ş\í:1gq-ß…>U\Ù\ô“ j\ï\ç\î?Cv\ÌX¶l\é\è*EÔ§nØ‡(º—[>»u\ÓZ\ì–\Í \ÛÔ…Ú¹\Ó%¦ş”\Ò\Ã\æ\Õ\ábr:~	-‡Šo\ä²cc¹IfÀ\ËBŠŸ\ã\ë«?V|’\Ş@*ï–6]Hù…n˜\õ\é=‡€]€.…4\ô\Ò\ğ\éú‰?°+v-d™Ù¶\åB@g=f›¾ÁÀù”Šµ&\rÀ\÷ù—p0~ül\ÛM\Ç\ÏJ?«6;Û¦\ó‚]\è\ö($\Ï\0ƒ\ñR]\ÖoM\Û/,ja\Ã\å\ÊXJCxN®\Ç\ëu><K)¤Eo\Ù\\b¨O\õ\0\õI@Ç«†\ñ+X\ö=Š8Á‘]\r12\ä\Ê+\Î@D\×{\Êüv\êZ=Æª\î\ç­\ñ…V‘‹`04	“Ü€B/œ?{¹ J\ÄFƒ¥N¦+ıÿÍ¶ycQ:‰\07`q-’\ï\Ò\ÉPz»\ï¨İ½wb¨‘o\à\õï®¾ç·¦\õ± ²³ ®tÙ¾½\Ğ»\é\'Ê•°‰\ãV[¹}¾e3T‡\ê\í\íGøw\0²\ëfnF\à\åa/\Úl\ô¥Hª\óF¼NC\Ãg…s“$@{±™\ğJ¹j\ó\ïE/`DX\Ö{J\ËS]\è\Ù5º\Ş\àØ‰z\ö^-\éGıvx\îL2,ytŸcµ]¿I\è˜Æ°tşL»L¿–C¶jªÙ¶ù\ÌR\âG\ëc\Ó]\èƒ/\÷]\Å\Êú\ëyo‘£F€\ï\0\Ú\Õ\Æ-\ñ-ˆ²°\Ê&*\÷fJ•Hf,y”\Ãv\ê·l\Z\Z‡W\ì]1s½\ğ’es±\Ö\Ù\\‚¨;\'¥»Š8iy\Ñ{L¡\ó^?Y\ÈR=‹	\"\"Ú…|V»ÑƒŒªÿªX¸Vev6Ø¾\òR\é\Ù\Ğ>\Û\æCS²û\Æ\Ï\÷º¯s\Ø\öv’‡\î{ï–“´¶G)^u¨€ @\ç}\å«\ò\İş=ÿ­v\İp†p(nÀm\Ñ…\Â\à»\ÒO–m›Bw=±&§T\"?\Ó^q“\ñ\Ñù\ÍP-\Åv\ßú&Ÿ\É\Ò.²©Œ²\ÙTŒ9Ÿt\ê\æ\Ğ\Ù\á2\òb£\Ğ\ñ+\ï\İÙ²}\ãk#–®~®\Üx! r¦Z5•cä¨±­<2yK)²\ö\ï\×*¢Á°P(¥–\Ú(”\èRHa\É<q¯9š\Ú [¶„\î«¹j\ãYÀ\Û\0H?\æ—f\ó<?`\Õ\ä\ã\ó%×’\"\Ï\íx\õd\Â\öJ\ÆÏª…\é•.==	\àM\0¤\ò=R\0¹U~0.\ôEÒ“Ÿ|\'L.Ÿ¾\Ú\ïn\Ü\èÍ„º\é¦Jş\Ğ1“!‹<wü\"\àN–\Í‹W?‚v¡‹š¯™=œ”ÿ~\â¸pqk\é§üvgJŒ+İ°(QW\ï¹ø \ã\×&B\ÖT\Ë~\è½k!\æ\Î_¡w\Ë\ÒVMtM1Zæ»¦X5{§˜=\rÕ z{û;\0]ø<L•Šø€?±da\\\éÙ¡\×\0\Ú\ó\ÔúDù:ß›¥ˆ›x\ÍEe}¥´\\\É\éw2–Í¦Cœ\Ï\â\Ù4Ã”A\Ù\×ZT\â„77Sû:¹ü\ò8‚.‡Ò²/[Vd¤\ô ÒŸ]I\ğ\áT\Å	h+)°Í§E\Ç`ˆ\ÇŞ†—\Òw¡‡\Ó\ôSºØ»\æİ²ıŠ†g\Ë\ö\Í/-‹\ÕLL±jœ°j\Ê\'\Z-\Ï\ÒFtVº“\×y St¥+Î«>\Ò4\Z	ú\ZÁ…Ô“\åkü’G¿TŸº¡\ÆN†ùD]}Ã£€\ÎĞ¨\ğ\È5–\Í\æE]{\ã3ÀO\0­l†-\Ü\Ğ\ñKoI°F\'Ytd\Ş\è ´i.\ô˜ßL\Ô\íÀ~\0FCf¥·\ÚW\Æ\Ü%Ø¾\Ò\ğ|@]wİ“(>Àd7\×^·\ì‡\ëº(å«ˆR¾U³{ªU³3p/Ë·L¬f\Ø\ÎW\ğ:ƒ…\í•\îw;6¯\ÖM\\. å µ\÷\Èwİ°Æª\Ù\0d\ë\Ö5²mSÿ¬¯\í›\ÂWs¾\èv»S›K1›\Ø\Òsy\È\Õa”\ÍzP\òE@gf‡u¥\'Ÿ\õ­\n\Â¤§§9~‹’½P>\àV4½\ìs%ŸCñŸ€¾xg*©P‰–CÁ¤#\ãJ7,^Ò…«\ç€b·d¸ıG ­Ç¬xµl\Ûti´ú;w\é\"İ™\Çt!\÷ ƒ\çx$«f¨O\ßø,\È\İ\0ŒŸ\Î ‘8l\ñ;¿®\ô+¯x)‚\Îjš\ÖıYe³!¨\Éc€®Y_*L‘\ï\"®\Òa\Ê\Öe‚ø–Mmoˆu³9œÅŠ#_--‡\Í8h+Ö¶S\Ï\Ä\ğ\Ë#’ªf¤\çCD\é‡QúI°r\åø\î\ò&¹¥>\ï¯i\İÌ”¬›§\É\ÖM\ç\Õ\"¯Á°Ğ¨7\rƒ\è\Ò@NJ\'×„¥û\ÇÁv¶+\ôn\ã[5;+X5Gu5¯½\á\ÇSw7Ô€—•^\È@nu¸}ı¬\ôs\åc›kxÀÔˆ%ş„gfe\ó\0»\÷üC\ôXø\r\ç\íQˆ\r\é—]gÒ¿¿¯S\ÓÔ°ß²	Ò˜\òGFÙ¬uı\õO: eb]ød\r\Ê]ø\Öu-otš\áTº\Û\è¤nS½½j\÷_¢”.:zZ¸™{°}¥\È{\ë\Ú`XX\Ø\÷OÀ€®½›Y6\Ó…\Î\ÒsûTº\Ò¥xP´j*Ñ®\Ñ\ÖGu\İ A«¦+ŸŒúü\Ï[\â\êV¼‘1lw?+]\È\Ï\ë\óA+›‰£Z\É\ñp“¾’¢¸])\Õ<]–J|7\éšÿ‚\ãşE¿ùZ}‡½úoû\0}QM®,_´lZ±l6)?\0Šf\é_§=\n‰\Ã\Å7\î\Â+›^{J;§“‚Œ\ìı…¥­›ù\Îp¡\ñaH\ğNü‡Ù¶\Ï`¨u\Ë-\ÂıÆ†şW…?H\Ç\ÏÀ/¾‘‘× µ\ä\ã”2\Ğ\ï-_—\ï€\ÑR	³\ï©İ½?\Ä	º\ë\\±\Æ\áxHe3qX—\Ê\Ş­d•)&l	L·jN¬\÷Ÿ¢¾>\ò</±\Ä\×cc³lXJ\éd‘\ÜTe3`\ÙlPaw£lÖü\0Ğ±Œ¹\áw/\ÅEÊ‰”u¨Ï¾c\Ã\n„\×\Ú}#S\Ú û.\ô#Œ·\ôG>O)+?lû\ÊR\Í\Ítf\ŞVfƒ¡YP\×\ô~\Å7=1\ë\é°&u\ßt\Í\n&b‘z—­›\Ît·²L«\æĞ¹.7®‰ÕŒ¥³\Ò\ó\áBÀ•®^)W^¹r¶\Í#!æ¼µ´œR\ò\Èw¡‘\êü^\Ãey¾¢”v£K¾Ü½–u? \Ã:‚%Ë”M\Ç(›M‰…ü4Yƒ²™~\Ú_¶bW\àİ‰]F©5\Ùº\Ó\ZˆIUÿ¥n¾¹ds×¡JÁJ¨Kª\õ1_©Ó¾Ò°\ØQ[\0}A\÷_Dy3\é*hÿM0i\ç#²\íŠ\ã\"\Ë\n\ÄjN³j¶\ÃÈ‹½w?P\×\ŞxW$\ç4ø¸\ñ[K\Ëa³\Ò}WºM\Ìy[d2Íˆhe3\ôºX0*ùÚ¹3;uOCDˆ\Ò%_\â#\Ñ[9¥28e®t	¸\Ñ\Å2n\ô¦d\ï¾Ç	\0&C¶­uh\ë\İQ\î\Å\Ñ	A— ²Ç¦´&C+‘¥¢\Ä\öç™Š\È\ç\0=S\Z\Çnå‚³\ç\ß[ˆ\ÑCT¨]{Fø@wY	\Ù]7X\è=…XŸªW&Ù¾\åe(~Ğ±š•2\Ğ=«¦4gû\ÜÅÚ½ûq@··™<\à‡W¨\Æx—m\Û:€‹\0H=Q>WšXNKQU_\ğ av”œ\r@üH\ô\Çv\â\÷—–ƒ®\ô e\ÓUF\ÙlF\Ô-·8€\öWj5\÷ E—«D¨!Ø«~dû\Æ\õÀ+\0\İ1H¦\Ä}û.\ôg\Øu\Ã\İ\Ó0ù%@_­¡\ÛW–²\Ò[h‘w…\Û\Ù`h2\òV k\Ö\ô¿Ü¡\È\é\'!Uœ\ì)ş¨X®¨v”\ÛR¡[P¡\rF_T|#w©k\öü ®sfFy\í—éš¬\Õ\"*0!W¯•\í\ÛCÔ˜‰\ä\Ş\è\Úv™©.\ôR\ß\×şF\Ãdx#[7¬tN2zeS]w\İs \å\ÊfĞ²ib6›Agd×¤l\ÉCŞ\Ö\ÈÖ­kfİ¶¸Ö»\ñ\æ±S]\èe‰?\ò…Jˆ\ê\ê¿\íC\Ôÿ\00z\Òô‚±³‘~*0s7®t\Ã\âF]ıQ(fs;:\'üA–\İE1\ÚÂ’\ëk•¥XR¬h\Õü-$ú\Ë7<\×OøP¦®fC‘b7!¨Ç•\Ç\Íş^d2ME]è’Ÿ\î\İ\òšy(\î\Õ\n‹¡!H\Ü¥K˜e\Ã:P¢]\é\Ù5:^{\è\\>3¸…Q6›¥´e\ÓIûE\ÏÃ|\Ö_–|\Ã[\ÖM\ÇÕ…\Ü\ã\å²\0Œ\ê—4r\İÿœùÅ¬t\÷¦j7\Ğ]^)\Û70\ë\öC³“jÿ[@gv£ƒ\ñÃx.h\ñ¿X¶mº¤FIv\Ú:65V³‘Ó‹oÔÔ®L\ÂGQ\×\ö>\è™|XWz\Ë>]!@¤!Y\é\ÒÓ“\0t’fú©\ò\Ñ|w œ—\é…\ŞP\ÄÕ¿¯59%f6\Ês •M§ú.Ô¯\ë½‰‘gJ‹µ$r%Ÿ£¤Ñ‰¼4\Z™ªC®¼\âD\ôS§¤\ô\ğ{¡?¬v\ïù\å\ô\rŠ\ä\Ô×€a½OÍ®tAajn\Z5j\ç\ÎI„«\ô›\\ş Ë¦z\ï\é	\á.\0\Ùq\Åùo\ô}Ÿj\Õ</`Õ´Us~\Ğ\Ö\ÍÉ•º\ÜTµˆ£c(5oE¯Œ¼\Z\ĞBµNq¡\æÿb\â5…\\y\åJ”¼	€\ô\ã\Ú\Ó”º\ö\rŒ½y±”\ïs(\Ô\ğ;Y“º\î$€ë†¬T\'–\õ\Ò\òTú\ä\nc \Ô,VMP½½·0q¼\î¦R-\Égƒ.¾\÷‰H\È4^ƒ¡¹P\×\ôŞ†p\'\0#§é„¡0\Ø#\Ğ\ñ\ï\İ\Éı¯Pû»–oÕœ\Ú-\È\É3\Ğ¬v]ÿp\Âj\ÂU¬\ô\ÖM¿upŠlK\ôe\â,·X\òÈ­\ä\ÑE­¡\Ø\Î_\â\ÅÌ¶=<û¶\õ`µ|‘w\ÍøR\ê\ß\Zq\ÚP³e\Ã¸j_)u/¬\Ë\Ì#>¨g»\"§Î½q4ˆˆ°u\ã\0Z\á\óû•k‚u3•û\æ\æ\óÀPŒ¿ª^˜Ö‡a\ò•\0\'±ıŠ—?™cƒ¡¹q\ÔX\òs‹£Ãš/„«†\ÔuŸV\nVP|Bz6|^·ÇœÙºù\åH\Ñ%\Úú\È\ôûz\à\Ü@\\µ©«9_¨\İ{~!\Û6=œÀ\Ø\ÉÁ®Qs“~Jwyq\ã^¯\ô/E+\\±k\ËA°U\Ü\ÈyiÆª\Ù(\ä£Wƒl\0tç¦–§\çØ£v\Ô5\×\õ\õSÆ²©®ƒ€\ÔfÙ„ ›\ë”y³\ì]¹\ñB`=0İª©€±S¼w\÷©İŸyŒ¹x|ÿ\÷\0\í4¶ÀûÃ”B	\\L¢aÑ£\ÃNÔ¿º/\öx\È\Ä\Éc-Wµ¯ª\ò\Ì3\Çj:­XM\îU\×\Şø­pB\êB½?“«µ…¹Z¤\0©§¼w¿+==-Q‰$Wm<\ï9PÉ…î•½S–\é\Z\Ô\0¤§Ç¢ ÿ\è®a\÷†.Ñ»0\Êf¨;ÀQ\0\n\é\Ù7	¿mš\íYcZ{H\íB5=^3·V|\Ö\ÛUc\Õ,–R_\Ôû¯Bˆ¸¤\Ø¤\ö{‚ılØ¬~gƒ¡IQ‰º\ç\\ß«‚-_«£ı\"ªdc±4ÊŒÈ¯@\Ğq_™\nV\ÍÁs|«¦%Æª9\ßxY\é\n]¹#~VzcÃ¿L\Å^\è cƒø.\ôAGMÁÿˆab¨·tÏ¦\Ö]¾– FÙŒ][Ï­QGŠº¨x\È^w\á‘\Ë/#\\³§\ô`+y\ó\Üø«>°*xW\èXµ0ø‰Bİ´\Æ\Şngƒ¡ùP»vvz\ò56ÿ¯¬\Ğ{\Z+6{¡wW>c5+X5‡\Ï(¾‘Ÿª«oøfHa\õ’j¿§T\ç0l	¤\ô“:YÀr£\ËJ—bÉ£DŸ\ç\òP¶¿\×üO°sœ¡~\ä\Ê+[Ù¶\ñ_\0º\àŠo/¬P\r\Ä(›Ñ¡M“ªVes\Ô_Vª\á\Ê&™7:ûgªbÌ¥\æ\Î\â³*Ô®ŞŸ\ÚL\ZÖ•l_©\äı\áv6š”\Ô\Ø\õ€6\Ûœ.ytÂ†\×øA\ñ¾¢\Ûs\Z²m\óÀ\0=Íªù2ßªéšºšÚ¹\ÓK»\Òsk\Ã]2	)¯\ğ‰\\¶BA\ÅC~ló±€µN±jf\r–\ò3%\"Bzz,Ù¾ù2\ìÂ¯P|@ÿsV\İ^®,1Œ²E\Ëf\ru6bË¢¨©«5Pr¡‚™š‰\ãüAPf\ÏBŸ]ss²»¼KÁ\\X“Y\Ô[dÇ‡k\èÿi04j\ç\Í\ã(µĞW„?HU…\ŞİÿVˆ\ÕL7ÿœ\ëzM˜…B¡³Ò•Ô•^r¥/#;\ôšºe)¸oÅ‹LÍ˜…G’ÿ]\÷¹\ÇHOO‹l\Ûr¡l\Û\ôI&†\ö¢\Ô- º ul\ÖÜª“³–0&=:´²\é\Ôh\Ùf\0*\Z\Ú#\\z>”A’\Úu’~R\÷(\â\×Öœ„–[	‹ûV\á\ã€0zZ±h•´=\ìeÁ\'p\0üŸ\Ğ\ç7š\İ7ş[7ı%¨s~	´ÿJ»-«%ù¬\ö@Œ¾\àu²c\ó[‚npÙ±\ñ• ¯ \í‘rw(”[5•|¢R\'0\Ã<\ñä¾»8a\İ`c\'\é¸\ÜjI?¸€\åe¥·>aŠ.t{ZE\Ä0ZR6T\Ì`6Ì†«^&[7]‹E\n¥:Aº:Q¬\0Nbª¾%@úQXş}°\'B\ây\ÅX6£C]ª\Z-›’\÷‹¸Jc•M\Æ—­À\ô\Ä ƒ\ñ\Òlû¿kd\Ô\îİÚ´2vªŸ\ÍX\r©güøQ1Yé†¥V\îd À‚¾‹\Â¤ûn?\Ì\ÄU»\å]\ïò³¼XM\Ü\n±š))Y5\ïgw¯q‰. \ê–[”|Ğ®\ê0\n{\"\Ğ\ÆP\Ş&==5?Ã¥gC;\ğ\Z ˜…˜\äWú\rJÄ¸Ğ«B\ät„­(6€¼¸Å«€\Ó(S4]m¡^\óX\õç…¢	FÙŒ5©ÿ\Ô\ñ•zFe5V\ÙD´\İ\Îi\Ëf\ñ‚¡\0Ue¡WD¡…\n= VŒ!}¹\\\õ‘Q\ôCs¢®½şGPt¡N¬×¯0\ÄF £\Ôü\ãÅœ¸\îOdÛ–\Ü\öpe«¦/\n¡ŒU³·˜•n\İ\ÕÕ‘.¹\ÒW“¬!&£H6şf¼\"\âS]\èÁ®AN\Ì\Ô×¬)h\ï^Ûƒ°\â\àøÿ«¾\ÉC-Ù¼b\Ü\èQ!’\÷Bªj?†×NEVCm\Ú)vlXÄ´»-½·¼.ÀhÉ…>Jj¬\öAÆµoÁv\ö\01FO¶WA\æaz™^¶c\ïşºf9†fB[>.’½}\í­’ÎŸ\ê:™N\n=\Ò\ó¡\ÏC\ò\ãz¥\÷•o\ï¤`¸”O\ô+v\ßøUv\í©ûc\ê$\Õù=&†N\ÆN\×1¦\õq\è»pypwM2(¥]\èV\ÒS\Æg_~¨\è©2\Ì\Ä1_wŠ*e\åuhœ•\ó+<\Ï1–Í¨p\Ñe!\ê±l–.J¯_ pb—úøS³Ğ$Œ¯/\Ê\"_U;o¯\õ4\êº\ët¼±“Kª yDwQ\0Pê½¦}¥a© ®\é}\ä3€n;ü’p°r\ĞUj®u\ã\É/¯*[5‡\Ï\ö‡‘O\Z«fs v\îœt‘\ô‰\ã\Ã\rù±Qh\ñ¬b\òZ\ÆG¹ü\ò8 \ËË¥.7:8˜,\æ¨*\ãBŸ“xŸ©¾\âıº”‘Q4Ke3:\ô\İ\Z¶hs/fSYS6)f¡\Ûcº¾f\ñ€R(ÅŒ\òzPJ»\Ò\İ$Œ¿ Ü¾~\Í\Í;Kû ³1^>©°ıı€¢\Â ª‚U³†JV\Íii¿­f™\rÑ£Š½\ÒU\ÆB~‘\õl\Û|v\èsw·¾\ZŠ¹•\n¹{S[}5\ô±\r†\ne3*,™,.\Ô~\å%…1Vlß¸\á@\'\É#‡\ïB\ï£o\ô;uŸĞ}¯{ŠÎ¢­¶G|ù,“(dX:¨]»Fz\0\í\æ:?\ä\\,$\óPe«¦-Ò£k<\Zš†¼|o|[)(W§\Üw\Ôp\öK\0=\ÆN\Û\÷\ã5°\÷À”ŒÁPFÙŒ\nUj [\ÇAJV\Ñ\Ætjp­w\ã\ÕT›\æBo…\ìqzY\ñ¥(ºE¨\ë®\ô\Ìx|=¸!BQ\íQh)\Å]e/`ƒaÁi\éø\'\àA@[Ã´v·\×R\ÌJ–\nu5\İ,u+z–\ö\ğ%\Ì\rE\õ\öN\0º|\Õø	\áB\âCÁ’r\á•M…\×l9X\r\í\Æa\ÂK\èT\ß\Ğ-ˆ\r³r\à\à©ÿ]şzú\Ï\á™?Ñ¯}€Cï€£¯…‘A>ä½¾D0\ÊfT(¼t\Ï:Qü9¤A\Ê&®v¡\Çt\\I\ÑSüE\â\ÖRÈ½2–×¾\Òß\Íw¥w’¾$2™†F\í\ÜY\0w³~c\ë¾\éaYv§:f‚\ØPùº¡—úe\ØD>i¬šMK1+=\ã\ÇÏ±\é|\ë\æi²cË‹ª\İM¶m>X@jŠ}\â¸@=V¯YnBO\î‚/§UO \ï\Öq¹\ÃgÂ‘7Â¾?\ïÖ‰~\õ\äx,2?Ÿ´\ñ\è;´®€\à¢eS1Y¿8\åÈ•Wœ\È\éÀ\ôÚš\à\÷BW\ì#\Õ\õ£\ÈNœlÿ6p\ğŠµWO\ë^]@)\ãJ7,)Ôµ7~ĞY\ÆN†‰µ\á|V+š\Ób5“Z\Ù\Ô<DKû—\ê•\Õ\Ğ Tü€\î\èQ{7!pC¸Ò•ûVÿS\ã5O\ô–²¤\'—n£\î\Æ0<\á¿\ÔA`\0/T\"H\î8\òz\Øÿ\È6¾;u3`”Í¨°\"°l–\Ê\'Hv\Ö\íjÁ²\ŞSZ\êB/t@nu\ñ\Ô\ò\Å(­ j\ç\Î\Âı0-´U¿³•¨o’VD%—Á\ĞX\Ö¼\ä\ÂşW\ãE¹T\Í\ò\ïj—j\á—\ê¤<Í§U³yQ»v\àU\í?!œ¥+Ñ¯_š\ê•M)v\rJ\ôO‰\ó•`\"\çj\ç\ß-\İFİ@ø²º¶\÷Dÿµg­º¶·[]Û›¡`­À\å\"”\ì\0\îÁS\òp\ğ\÷a\ğ\Ü}>0\Êft\Ôg\È\ï\Ê?\0\0 \0IDAT\ÙT€*> „ÁY·\r‰ˆÂ»bY†)MFO\õud7Bº‡[t¥#0Òº\é×Ÿ‹\ã\Ä\ß¥X\ÃB£®¾ş!„ ·*|\"\İ\Ô\ñ\Æ-³j>\Âû¿X·†\Æ\â\õJw[\ñ’U\âO\Æ_*\Û7\ÍY^¶nX\è\"\ÆS]\è¹cÀI{[\Zz„¨\ë¯?ªv\÷şP\íº\á\Zum\ï+€—\à5x@ ÿBxùBŠ\ØpŒ²®¤j5\"$mU´}hu\é ı3Õª	Á^\è¿U»\÷ü\"\Òs\ì\î½”\ÙFB*›-ût²€Wºa	\"…Cq‚\Ùÿ\Êp‰\"S:+ˆ\'Ÿ6	‹€<·\ã%…†k/\ËJWs[7%~	¥$\Ñ\n%ŠGBå²\Ù@Ôµ½ªk{x7 3´_cXre3*De\0\íú­…B \ÙÚÖ²‰kkŠ‚\ÖG\Ë\×\å–C~¹^V*z«&Å¾\Ğbéº“\Ë\õ«ZD\é2Hšsd\ëÆ¦ƒ¡¹QW\ßtÔ§\İ\Şu\ğœ\Z”\Ğ\å4\òÄ¾†\ÜÏ†hQ½½ıÀ€V6TˆPŠ\äs~…’¹•M¯k=\É\Ã\å\ëFK\Ê\æıj\×Mû«\ÂP+\ê\Ú\Ş/ ¼\Ğ¼>|\İ\İE‚Q6£B\Ñ€Ucn›\ö—•‰@\" \Ø)B¸\ĞV\ÂØ”0œ\ñSıe\Ûj\Ü\Ã\Éu>WZk\İl{\È_657\rK‘q\çoJ\Öÿ¡st—°¥¹Æª¹\Ø•\î¤!2QÌ³n\n\ç\Ë\Ç6Í¸³l\İÚ†p±\Ş\ç	\Ê\ò\n¾\ÑAŒ}>Q\×\ô~a+ \ë\î†­»»80½Ñ£BT;H\í\ÊfY\âŒİ¬²#\óFPË€\é.tEP\ñ{%m²}\Ë\Ë\";w+\Ê}8±\Ó`\Ù\İTL\ïƒ\Äs0¹”ü‘\ô\ô|\Ì$=–ê¦›r²}\óV”ú/Ü¸v§¯øV¸ƒŒ¼\Ø[\ÚKª½ş`†ù\Ãv¾‚cı`3v2¤B<Z\÷\Â\Ğ\Ë\0,\n\êmÀ\ßU\Ü\Î*¼	…6›M\ÍB„{:\î\×Âˆnˆ€\Ç\÷\ß\Ä	\ë\Şœ\Å\ğºn®•[h©\"\ÅX6£B¤>\ËfP\Ùt\í\è”Í’½P\ß[…v\ï\İ	(\÷g\r}Á	¥Ïš]\îsø‰B\Ç1>ü\ê\Z¿\rƒ¡iQ\×\Üp+\È]\0Œ¼P\'…:€W:M~ \ëx\Z\ê\Ó7>¢\ÛBŸ®¨IË¡€\ÇJ\Ş9\óIŠ.t)@\ê™\òu~¼\æ~®»\ñşg7D€º\å¥>©\ß\Ä\õı¿\Ä0–Í¨(¹\Ñkœø\Êæ„ºşú£Qˆ$=\Ê I=À¤Ÿ{Šlc§N\ßi¾y¡\ß¥\Z2¿-¾¶¼D¡;\Z%ša\é#\"2kOi\Çq\Ô\î=¿œG‘4\âlAY\÷ÀÄº\é\ÍKÅ­Q\È\èRt-‡ªŞ‘\Ö\Ça\èL€WÉ–-Ë§>C¤§\'¼€\Ô\ÓZ\á\ôp’~­G\Å×•R\õ´Á3\ÔJº\ókL\0\Ö2v2t\Ìÿ\ğ\ÓHŒ²\Úa\×X\"s²\Ë[\Ú;\Ûf¡O\\Š\Ğ\nT\ÎB—´=\Ù\éBa…ü\ì1H?£\Û^\Â;¥\ç\ò«77@2\Ã\óÍ›+Z\Û+c\É! ¤ù=Z&d¢u\ŞOkh\â\ÜFa\ì¤\Ê&~\ÌS6c\Ø\î¥À?—­~B70İ…>±Ş¯\ïi›xÍ…B\í\ÜY\í›nC\ña²ktU‰°\ÏÉÈ¶M/A¬ÄŒ´´\İUÈšQ6#@¶o\ïR€_¦\',…no\é\á\Ù6‡hº•ƒ\ô“\ÓWwÿ8ºS\Ímy\Êf;\Ù\ô¥€É¶5\ÔF\Ì=k-ú\çXo0DŠú\Ô\rûdÛ¦û€\ó;–ı°úSts\'ºÀ{¹²)\î[Atu©\Ïß…>J²ıû5\0C|ø0X=F{$„lÚ”\"Á\ÏQn|†M`fE4$&f3\nTÎ·€Ä¦w¦š{ÿä‹±“\"‘(›²c\Ã\n„\×Å¶K „+ı8H1&V‰\ÉJ7ÔH©\ò9m¿\Ñş¶´ˆ¼Ö­ÁPJg¥: ¦aš[\Ì0„\×É¶m\åë½®A‡tÙ£–7øÚ¹³±¦4\Ã\ìd\Õ=xÅº½®~¢E\rÌ¤hE™ˆk”\Í(P–¯lZ5X6\'WPjS§\ÔC³n[-N\ì2¼©’}1\"È”:f¼^®ºê˜…Ç°ˆQJ[6\ãÃ°\â;°\â»ú\å\'Ze\Ó0ÿ¸\ñ[K\Ëa¼ûİ„’0ù»\ŞÙ¶\é%xÉ™S¹O¬\õ›\0(Œ}Q{\ö\â…Ò…©G]\Ó\É\ä¼\Òr\æ!\Â]ja\Z\í„\Û(›‘\à®+-\Öb\Ù\Ìf0ı\ÓŠY\è\ö˜®¯¹T\ğknÆ°¦}¥¡6­l&¦”´\õ¼b\Ü\è†ùG\í\Şı8\ğ+\0\ÆN\n·s\ê\ß\ó~Vº*Z5A{‡‚ø.t\×şF¸\Z\Z‚(m\ò\ó8\Zƒ«tAO{B—Y\ó&Ü¥v\Ö\ÑN¸M\Ìf§\è¿.\ÄF\Â\ïŸ+\èU\×]W!¸2¤8\Û7®G\ä@gqË”\äÂ±S »²\Ş\ÓDC|\Ú]ı\ö-\ôw\\h\Åû€=\r“Í°$‘\íÛ»P\Å\ö­‰\ç\ÊW–¬<ÆnX ”º‘3\É/ƒ\ÉnHT9\ïG\Çc\ê*#o’\Ë\Ój\ç\Í\ã—Z‰ˆO¹¬}e\óu\İuSnÃ‚ ¬GA\éPŠF\"¢•\Í\ä\á’c\0\×\ë`\íh”\ÍH\Ó@AlH\ß\ğa\ñkN\Ş‰8®\õn¤\Ø\ó¬R!\÷şWù1¢ \õ·\Ó\Ë2Íˆ‚\Ì\Ã0xÀK\å£9]}ú3¿i „†¥†;yR^“\ç« UÆ²iX D¾|Ğ®\ôÄ½\Õ\ï›y\ÌS6ÓŒ§\ß$[·Şƒ(\İÿtjz~\ä;½wÆ…\Ş,GQ\è\\kH¾…\\y\åJl\ÖÓ«øa‘Æ	J·\á©v\Z$\ß\å\×\Ø\îŒFW»\Ğ\ãƒ\Ó\ë\ô\åV7¢	úf\Z›”	\äP\ì\÷G+a\Éc)?=h\ÙT\É@1m³iXÔµ½\ÚJÚ•ş”¯œX\Ö;\Â%xv«©\Ê\æx ke™®AMCÀ¢\è¦\Zs\n\Û\ñ{b&—¯+\õf7n\ô¦B.¿<NW\ë‰\0\ÄkP6\'\ó—\îw\ê–\ç\Ê+\ÎÀ¶N*\'ùA\ç\n\á@\r~ÿˆP|XÁ\èuFpµ$úµ[\Â{\ä]\ï\Únú@ªF©³@t¬R,\ĞW\ê+‰\Ù4,4_v0¹R»ScC\Õ\íe\åu¹œ±“@©\ßtŒ–=®3ÑƒŒzÊ¦z\\]}}4‰©†Ò¬·\ĞvC\Ñ\Å\ä 5]\Ù\ô,›–q£7\İmg”\êT\Åû\Â\ïï—8\Ì\õŸy€\ën¬O\ËzOi¹’}\ô\ï\İO\Ô5½·\Õw²úm›¿\0\ê/™X«­»a\â]\Û\ò\Úù­\åÇ½¨[Q7<OPœ0s¼¦\Ş\ÈX6\r\å8®`{\ÎÀ)q\ğÁ¸x\Ç\ê\ÅU·b\É\0FO‚ÎŸW¿o\ë^\Ï\"\Ú¼Ğ±œe2¦`²”˜j\\\èÍ„+ƒ¥\ßj\à¿[¤VNu>ˆ6»ª˜\ß\ö6bË¦q£×‹«^YZ\Ó\ñ@%`\âx½,|«\Ş6a\"\":C;ù\ì\ô`\ğ\Ü\ZpŠ.{%_ª\ç\\‘ \Ô\è	\ß¶\õ·:!ÀrM\ÍMCUÈ–-\Ëy10\óŒÀRÆ²i(\'\ók\Ê\Ô\òƒ\÷b\Õm\ÄQ»\÷ü\ĞÉ¢aK ¥˜;PÉ…®¼r{Æ…\Ş\\¸şƒ{üy‰~…\r©˜İº´X\ö¨e–1Ğ”>j6\\\õm\êSU\ÉØ‰ş,B©ú•¿+7^\Å,\Û\Ù]\è.\äÿ«\î\óÕ‰\Ú\Õ{\ğ(\0£§…\ÛÙ\Ğ\ñI\0Š·Ë•Wš†¹‰«W\ãÅ°¥\ö—¯+ea\ØÆ²i(\ÇU3+›Á\÷Á\í\êA¡¼O®\'Sı~v®¼Üt?\ô ~¼\æ\0ƒ£?ªKNC´¨XcÇ\Ü\à¹h«·®\î¤l´Œ²\ÙTˆh\ËfX«&\èDšAR\õ»¥X[S´>:me\é|ŠŸ¨]7My\Ò.Ÿtfd.d9¦¶R¢P«\ğH¥2,Q\Ôk\0mùi9X¾*³9)Æ²i(G•\ÈY,›Ah=\è¬\ôbøSH«V\ë^9ıtyF³ŠÁxÑ£¦\ä\Ô\Í7\ç\ë\Ô)CC\Ï \Ö9³¾H\Ö>ApxCiy\ê$¤´lº&f³Y(vf\Ğİ§\Îæ¢\ñx\ïnS;wNÎ¶ùœ²\èD¥Ë´,û\Ê@g¡¼Ù±\ÜRÏ¹\"Eø„\Ñ\Ó\ÊK\Ñ\ÌEú	=‹w’ ¼ølƒ¤4,T±…k\ò\ğ\ô’\"¾I\Ñ\Ö\ÒMaX\ò\Ø*^r=Ï‡e3\Õ~C€µŒ¿¬~\ß\ÖÇ¡\ïu\ÚUîµ±\ô˜Xˆ–k\â5›Œ¢\ò\"H7$\"ZÙŒ\÷M\×\Ê\Ü\èÆ²\Ù<(\õ¶\Ò\ò\Ôz.FN\÷cf,\õ\Ïu\ËÒ‘y#°¨\ìB\÷ƒ\\\â\ê\Ö\é,\êš\Ş\'€Ÿ\0Ú•®B\Ä\ÖK!`Á•\×\Ê\Ç6­\\@Ã’A¶^q*p* ­=S\ñ-›\Ãj\ç\Î\è‹\Û9’\ğ§¿(›*\ZeS\÷¥–¯\0[Nºú\í\ñ¢DM6ù.\ô<Yş;\nY\r‹ù\è«\0]\ö¨\ÒX\æFÖ²i”\ÍzÑıÓ“qfC\Ù:\àW\ó ºz\Ï\İ\õ\Ë\â¹\Ğ\Ş;m%£\'{‹w«O\õ†4\Ã6\ZÑ‰BN+d›c\Û)´–\\\é6\ï™mS\Ã\óËš¹mZ¯i˜¢º˜M;\"Ë¦>§6(\Ñ1şah}L‡w\Ù\ãÁ\ãÁx\é8?,\ö\â6<_p\ì·:Qdj\Ò”[6U\Ò(›Í€l\ßtp6PS\r£/\ô]ÚŠ¨[–e¥¤é§¦w\ã™X\ã˜G‘ˆ5V\î@‡Œ†\ÌJo9\0\ñb\r:İ¾\Ò`¨ŒB\Ç\õÆ‡ qtúz 5\ñš†\é(Uj·\èA®±\ï]:‰Š\'\÷\İ\Âg#§\÷NŸTM®<{Ä¸ĞŸw¸\ï\ô$YÁ\æä»v\rGyf£lÖŠ\â/(ufx,\Ä~ƒ\çzïû—ºeO\\\n\èl\ìŠY\èºÍ‚g¡OE]ı·}PtçŒnÃ€ü\Ì/‘«65\ËÖ†\ç)²u\ã—,ÿEü\ÖX6\r\ÓkEi96^¾.h=nW\'\ê–[”|€ì±\î.U…_—ÿ¯¬k2%G\è03¹\Ğ2©Pi1\àİ©·\ãTŒ²Y\Å2;h7\Å\Ô\âĞ³1ú\â`?\Ú\ÕÎ›\ÇgÛ¼*,ùCı7§‹\÷–!’G\ò#\õ\é=5¤\Í\Ï^\ÍM\ï.\Ê<\ä©ı`ë¦¡bıIi¹\íÁ\Ê\ÛJ­±l\Z¦£”.—!N\Ë\æ„?)7dY9°Š1\ö\Ê.W«aªœşş\ã\å\r\Ï\nü)^Rxk£4t\Âm”\ÍZ°„¢«¤-D† ŠCÿŞ»>Hü]½¢\È\ö\í]¨b)ƒ\ÖÇ§g\Ø\æV\êXHhNºGº\óë€\n\ëJZ±\É{t\ÑZƒA£\'‡êƒ€\ÎBO\Ì\Ğ\éKZe,›†\nˆh‹¥=QaV¶¸e€–\ïãa¼)d`r•\÷Î¸ĞŸGHOO\Åÿtzj†´B\ã\âÖ²Ùºµ\r\ä¯\0\İF*Â…>pn@\ñ“O¨k¯­²\á\íld\ß\è,\É\Ö\ßVXH¸±øfı\çkj\ç\Î,J´‹\â8ÿ{ª¿\æ\æ1d‡~\'R\á‹›˜\ó\çÀr\0\Ú=\óv^6º\é‹n¨ˆ**›38£¬‰\ò\í¢:«.‹\÷u@wœ«5ÿh\â¿Ë¦q¡?¿ú#„ch`\æ\íJ–\Íh[U‚Q6\ÃcMn\ô\ô°\ë\Ş\n%0f`r9\ã½{”ÁÑ¿D%º=¥•…\Ô3\Ó×{Ê¦z¼\é\İ&¥\ö•Œ\Zn\ß\Ìoı\ßÂ•\÷G+˜a±\"›6¥Pl 6R9¦Š==ƒ¸\é‹n¨ˆ\öAO­M\è\áÿ?¤¯»\n”\çJÁ\Ø\æ\ØxFKb=G²\ó\ŞH\ä24=\Ò\ÓCø\0v\Úg#‚@\Ìf\ôc\àü)›‘†š.²m\ÓKP¢\\‰ş\ÙgeXp\ä\r\÷\î†(º6ÈÍ§\0¯t’Ò´~½@\öıW\É\÷\ê=_\Ãi\íø! 5\æ°\í+­¬¯*\êR\é\Ù\Ğ­p\ÕRã…®\Â\'¢_’ê£€®¿\Ú\ñ³™\'‡N\ãŠ\×L­W„4áµ´È‘\Ë/:\Ó2>ƒ\á;QúÿE$\Ú\ß /\ß´6[Kl\×	Fšo\è\ZM„\Ô|µG\Ï\öÊ˜¼\ĞM\Ç/¦\Ç\ñ)Y6Ÿ²\é\Ç\ÎUR„Å¤ /ú\×è¾‹\é-\Ëf ÿ\óbeÔ¿©koüV$B¹\îÿ\Æ{$M\Í:p ŠuˆE*øØ›µs§‹(İ¾2·\n&»\Ã Sr¥§½3R\áf¡,F´R†ß¬¯!Uš‰,,¶\ë\Ëú³4²cË‹Pr% \ãz\Û3\ó\Æ*å» n\ôd \Ş8\ä\÷_\Zc›\äZZJt§Î‚b\ÍJe³@\Ç\Âi\ÚØ¾9¤kfvTo\ï^Å\ñVø*?\Ş\ßGE\ìB·\í€0!Ÿ\ó¥kVúš]2ºJù\Ø\æcA®t¬q\Çı³\ïP²l.67ú\ĞP\àZ¼? \ô\ôX\Ø\Î?:s¥\í7²¾g`\âRG\ê Ò²)™¶m\ë\0ù  {<WÊˆ\Æ=\nMV\È}\Äş\Òr\ØD¡\ô“~¾\Å\"”jvúúj¿Î­¢B!>\Ø‘\ÚM„\ô|(ƒ\ëŞ‚Ï¼üûÓ“\ç‚4°\'p(²­uŒ™\Ív--!T±d\ÌÜš8øW]\\y£:)º\Ò\ã~o\ój\ñ³Ğ³¸±\ïD*\×\äd`‚\Z\öš-n/<A\Z]2“l\é\é‰QPÿh/_\÷sX5\ãy\êb³l\Æ\ãuX|Š¨…5¯‹ˆ0>\ô\÷P\ìN“\èƒ\åwT·s¾{E\ãcWŞ£®¹&¢qr^FüL=s]¿»\ZÊ!Ğ¨¹PW_ÿ\ğ\0\ÆB\ZÄ¶bL\â\"Ù¾)úØ©J$“\õ[6Ë”¼¤ ‹~†/==1&’ÿ¼Ğ¥±RZ³Qe\ÓY@Ë¦Œùß¿U£•\Èm’kiIaı> \Äf¨u?\Z\ÈTW\Ñ{V\Ü\Ø7=›\åJ/\Æy*¾¯®»n,R¹\Ê,›a\Ç?oû¾f\ë±\Î6+Ù¡=Àk=şùI´•	¶ªT‹Í²iY˜\×Y°‹Pzzl\İx3ÂŸ\Új¶\ê³[H<\n8ü\ö@†«|L\í\î½3¹¶]qp ¸\ô£•7´%:”,\â\Ü\ó‚\ğ\0\ò™Ø™y\È?\n\êE*\×L\Ô5Pyƒm“¸>\í 5Ne\á‚=eÃ†$C_\Ş@\â¬¨\"\\9³\é\ÚgÙ”:®%\Õ$V¢%†\\µ\ñlP\Ú=\Õ:\ÃXÚ¦à¯¿¸Sj×®@[%\ÇO\0U\å\ã;»\Ú\ï«n5 \äQ\ğ9_«es¡Ãˆ¬\Ñ:\î»\æ	7m “m›¯C\ña@\'®­¬\"r¯,n}±Y6\óyÿªu–\î¹Á\æÙ²\åx&†\îşĞŠ\æ\ê[ƒq93ã¤µ¢™/\æ¨(ùO®\í\İ‰\\==1\Äúw¼\Ø\Ñe?œÙš\ócQ¯ˆ\âü\ó\Äm¥¥\ñÁ\ğ\Ég!©»»¡\äÏ¥\ç\òt„rU¦Š…ŸT•S£eS•y\ëN~«Ù¾q=©\Ø\÷ Ø–\Ò‡U·W79\ö¶í…³lœÚ•}«´}“\\K‹,®\Õ\ï´=4û~\Ã\0W]¹@^¯t·&c\ã\"¾]a7@ÙŒ\ê#Z\èk6Ÿª]W\ñ\Ô(Wd\Ü\"Û¶u°u\ã\çAm\Ñÿ(Àª¯\é2s\á66Irş,›a^\ì„\Ì©\é\éI\È\öM‰¹\÷\ç\Ú5²úË¬¢SP!‡.Ó¥4\ß#\İşÁ\ÈZ?M\íF\ñj\0RO\ê^\è3!¤\ö{o~_¶o\ïŠD†£®\é\İ\èQ\ÛË¦C\Ç/¼¥ed[ÿwTr\ÍH=•¿}sX£Djt‰9.N²Hj}HOOB¶nú0J~‰\ğJ@—9Zs‹v{Vƒ\ß0\Ï\î\İrb\Õc%o²ki)pÕ¦ ¯´\Õr¦Lt\ä³ÁxşwÊ¶\ÍÑ?yn‡\âd®\Úï¾²ù\õ©\Ş\èc\÷sVaD|Í–ya\Ã&\æ•*\\\Ì\ë¸W&‚ˆ\È\Ö\Ío…\É_º£ L\Â\ê\Û\ô5Y\ren\ô\è\ã\Öœ\÷5;nW__•4³![·¶\É\ÖM\Ê\Ä\àC(z­˜µ„uŸ«\î›\\\ßÌ¢¾‡T\áÅ¢¼\õ\É\×\Ó“m›ş\Ø€=Ri¼µ§±•û\çE\Ó]G‰N¯/t„ß·\õ·~\Í;\Å_\Ë\Ö\r\ë\"”l:¶»º´l…¼\Îı\íWÍ¶Ù¼¡\\ÿ\r\óY¬<\Ø\Şw®^±T‘^&[7o ;\ô(\Â\ß\0úbI>k¾\ñ\ã¥³yO\àP¸V\íc¦UfÑ¶K|\"6$e\Û\æ\ë\õ)@?–ÿ°º—ı\0JF.\õ·²m\Ó\Ç\ä]\ïŠD™R½½ı€N\Z?qnn¾S?—\0”jL× xŞ¿\ŞBŞ£1\ÚBø¡Q“µ{\à3–º ªß¹ZdÓ¦”l\ßül\İx¢¾\n\è\Â\Ú\ö¬ı´\ìŸı\0A‚–MKE\î\İi˜²)==-\Ø\âg^\'„;@¢¤Ü­—m›ÏŒL°\0²\ã\Ã\Ëdû¦·Ë¶ÿŠ\ä!üˆn\Ì-t\İ«¿¤¸¹?ş¡¯	w¢\âoP;oš!š¼JED¶mü]\Æ\ï\Çs\éKùz\å¶iSiûmPQ~;ƒw4\êûŒ\nÙºù­ˆú=`\æ`üY\àÀ²»¼w\íHì›²eK\È\ô\Í*O\ÕÓ“\0\÷Š\Ò?f*‹2\ñ\Ò\ög\È\Ö\Í\Ñg°†@·>•b|\òd\õVAß¢\ó»²}\óÇ¥§§e¶\ÍC\Ë\'\"\òÑœ.\Û6ş¥l\ßøU\Ü\ÄAD}E\ñ·u¡\ó>X\óm\ÙC¡q=«E6lH\"\ê#¥\ÄC^K\Ş+œ\'[7¿.BÑ7È\r+dë¦¿ {\ÈwE:°ê¿«{€.³µ\âÛ•\Ï>\É	\ë~-\Û7PW©WÈ¢+\İICv\í\ì\Û{©[Vcº)ë½¥\åj\ÂÌ‚”Z\Ç\Êy²cK\È\â\Ê\Ñ ==	l	Œ\á!uo\ÜSÏ‰\Çş?\Ù\ñ\áeŠ7\r¹\êªe\ë¦?–m›>K‚\Ã(\õ \Ô1†¶‡a\İg+W¨™ ²©’‘ƒ²\á\Ã\ïRŸù›/\Î\á*W^¹’˜“)û§£:‰©8\ÊjÃ•4¨\ã€uˆœ\n\ê\õxf\å\äaXûŸ\á$\Ë/ƒ}\ï£\è›;„R\ğ\Ä>ª4‰£\ÚI`Ñ’5\' Ô‰À™\èl\Õr…\Û\ò\îşÄªxØª\ô¿\n†\Ï\nZß¿Jj\ì=j\ç\Í3\ô5«Œlß¸\ÄB\Ôj”u2\Ê=\äÀ·\Ì\Ù\ãp\ÌWª7ƒ\İºL»øı³ıÔ·ù5\â<±”›-\Û\ï\Ú=OFaå‘n\\+©Š+­ˆZ’•À™(\õ{ˆœ^Z¿\ê\ëº`}X\ğÜ¥0V\ZlÇ€\Û@\îB\ñ–\âXƒ\Øıùò–£®¿şiÙ²\åx\ânù\ìT¬Z~Wu\"¬u\"§¡\Ô[\ğ¬\à\õ_\ç¨\ïƒüQûPBÉ³X–B¹“\ÓoZ\nGgš\Ğ\È\Ç6‹3¥·]Á\Í‹\Åq])~\ïk°\äXP/C\ñ;x±Àm¿®.±¦\ì³tÁş\÷k\0\0\ßE\ÉıX\ìE9\Ï\â0HÌª\ì¦\ö¾gWub©v\\\Öb\ÉJP\ëQ¼8Š®*U¼gÎš\ä\ğ;Šµù‰\Ú\Õ{Amñ‘«®:»0=^X‘B¬\â¨\îv¡d\r\Ê=‘oÆ³Î¶\Ğa\0aÈ­‚ƒ\ï	C‚ºe\íCØ‡¨Ã¸’Ç’a”›E˜>[\í\ÛEÃ‰fF¶lYN\Ì]°—U k\ôı\Ìy\è\çB ,&«\Í\ÔS\áO4z\n}ƒ.)\ã3	ü\ä\çˆz\Z%\Ï\"\îA\Ä>Lrr5\Æ	ù\è«p¬€Mû/g¯r\è\÷ul§b»\÷?\×x^\ñºub‚\í\ê\Ê\'â´ ¬cP\î\Z°N\õf¼‚\á\Éga\í\ç\ç¿œ\ì:8x™\÷.\Ü	ü‘ı\Ï\á¨\çfÿr*\Ö \õ?C%]%8†{\÷\ÖW^¼¯²K\ò¬ıB¸Ï b°ïƒ\Ï\×	»@\İ\ò\â\Ô1jn…B¬ŠVp»€¶ÀxŠ\Ó\Ğc`\å	K\Ë~\èúI t.$ıÀ\àù\0v\íID\í\á©Ş¥j;ŸAc<,·¨§–\Åj–\í,ÿnx\É\â}\Ğ\ö\0Œœ°\Z‘O\èC‡‰“€Hj\æp{BoûM`¶5\Ùup\äw\ôC\Ö?Ë§Iu\ìT;{\Ã\×OĞ®\ã6\í\ZQ0µ\êSúI]/0¬µ/>¨-´GŞ¤3\õ\É\Î\ÎE©bVcq?ş\ñ^©zp\ä³x*tot\ŞW›¢	ú«[\ñM(¼rk@+)\ï\õ^Cl¹ş\õsû€\åÄœ\ë((Ÿ[~\Ü\Òÿ“•¯œ¾\Î;\nƒ\ç\Ø\Åø°×—¾	œ¿Òµ;aø»Š\Ç.¨\ï\0\å\õ£lKOŠ\÷¾‹2™ û\Ç5|–8\æv8|‰§pv—!\ê2<#=\Ã\ç€@65ş\å?\Ûx\Ñ	™‡\ô5^~\Ìf43z;3J\ŞZq]\Ù¦Ê¯y\Ğ-\å–\×p-%Ÿ…Ÿ\êúr\n\È)¥±Y¡\Çix?•\îÖ“½\áO¾ˆˆ¹w/\ò‡\ØJ_„‚\Ìc°\ìN?<$,™Guœÿ\Ñ\×\èzËšp¨üg’\èkb\"\ö_Àe3Í—\ì\Ó7>+\Û6\ß\r\ê\"\ÆOuÇ´G ¯i\Ï\ò)\ê\ëU)V\áP\\:\å¢e7§¿tÇ°´\ì×­†u{\â$\ğ\à\rú¹\Ä\Ü\ã_R]ü`Š¼7¡\ä\Êş7Mo¨p0»\Æ1\\\npÌ­Z±×µ­S \Ş¼±\ôûV:UÎ¹\Æ@+«½—­CË¡\ğ²qJÔ¸ø½\Ø¤‡ÎŸ…wiy,ÿ>»\å\\=¤\öC\Ë>H\í£\ê>\çùN\è¿\ÆNş\÷\ğg\ê\ÚŞ¯F*¦tP\Çı\á\â/¦\Ôql#/„\á—Àäšš+\Û4¥‹®{\ëû¼ ¯5_‚¡³a\èe~ù(±Ç¡u¯n…\Ö\í\ì\Ñ}7$`\à\\]›u¡ˆja\ç\Ï\Â\Ç-y¤‚cÿ\Î×•¢ú\ÎEiOCâˆ¶ú¥ŸX_\å‡l-x\íBv²\Ç ³WO>ªu\ÙN¥ûG\Ú\Â>|:dkšŠZ‹Q:&ı8d©\Ü\r}\0\0 \0IDAT\İJ$>«¿“+t\Ş\ñ\ô=^\ïØ«¸\á\"\nÈ­®¬hd\×û\å‘D\Z\ãB—¤Ÿ†\Î{ªK ­ÄŠÿ\Ñû¿H{z\æ{\Ò\Åû.^c\Ô[¢û7|™şó‘Š\è±.6¤aÉƒzL®¡\Ü\Ô¸O¸§^Ù”\Éb´\Òq]V(€=©g€±Qmy«\×\Ò\0~\ì]\çOa|=:¡\Ğ\n\ÄÁ­\"\ÜT\0\Éù2\ÆÆŠEy‡\ô\ßjJ¢É­\Ò\Ó\Ø\ÉL\ñ¾ß\íş™ú\ô!|Û³<¬\ã.\âú‚\n+\çŒKw´=¤Mş¹U:k\ŞM\é\ğn\nİkPIN{B+\öA¬Iı»XYı»´¬.µZ\Ä\Õ\ÊS\Ç\Ï!»\n\ËtI*§E\æ\ÉU•†ø \óbçŠ³lG_\çÖ¸¾\Æc#Zù‰¢\ãD¦h¡\Ëw\ê‡Q!£g\ÉNÚŸh©D\Ñ\nb\ë\áj‰h\÷(J$¬¼~\ÅFÁ\Z\Õ\ÊnW\Ğ\Ç\\\ñ=\àû:9!\ß\r“Z¡s[¦º}¬|\ñ^,\'c×ŠW|0\Âû ¥\Zs3¶²z&\ğ¾¨\Ä[DÓ¿=É£D2lİ«_*®“(´¿{»øP±ü¦…v\È\ÕP\õa±“\è\×\Ş3{\â#\Ú\Ë`Õ\Ë9Ã¹@\÷\èş¡şr\ËÀi\ÓÏ³¡sÁ©e4#qn£À€0~rees´4FŒ2V¨²I‘\àuk\0\Ç_¶\Ç\ôuk\è\ó\Ö{_Š«\'\ë?+\Ë\ã_júøç¤µWq\Î\ãNú\ÕZ*\á\ñ\âh—I\í\Æ\îú‰\Î\İ\È-\×:‹“\Ö\÷œ“¬\â=Ê¤–\Ù\×c 5‰nc\ã\Ö\Ã+›±]\Ø|>±\'\æ®~\ß(\Üm\â9\Ís\Çy%Wª]7D;kl\Ù\í3tŠŠXqb\ĞúxùÿÏ\\ƒ’‰}\ó\íxˆ‚\Ô˜Úµ³\ï50\ô\Ò\éÛ·<S›K¥^\âƒsO\Ô\Üx*DE•\ÔX\ñ\ß\õ\ÉUEKQ\â\è©¡\Ô=j\Ëf|h¯ù|±\î\ìs\à\Ñ\Ó\à¹7ÏL\ÍD\âH°L\Úüae‹cQ‘±…V6Õ§n\Ø\'\Û6\İœ\Ï\èI\Ğ}×”\r,m\Ù\Ô|[\İtS8W\ÅB]·ÕŒÙµº\êËœ\ÇZ\0]\Å#6T]\ÎG3\áY6U³(›K…¶\öM¯_\Ùu\Ó]Q\ÂÓ¸\\\Ï\à\Ø\ÍK=˜\Ş`X\ò8‰€\õ$ú\ÎCCnEq>…˜\\Y}œ]\ë[\ÒD\ZS\òÈ°´h”w§\È\ó[\ÙtZ´¹;ß©\Û\"N®Ô®\å²JúAä§ n¤¥\ãµsg\í\Ùƒa\Ş(+ù}}9ƒ¡!8±/ctgºÑ“ ; lú%$¿@\æ=Ã¢Â³lZ™p‡W6İ”1iv”\ÓqbnJ+˜NÜ¶\êb(Pƒü\'–\õ9u\õ\õ4R\ä¹\Õ\÷WS+…¶\æ»v²3\ÔRŸ\\\Ù|²z¸!o\Û\Ée\ÍûYšBÀÇ¯\"n\Ó\æ´6ÿwŸ[\Øz\Ú\Ædwsü6…\ñšE\Ô\îİË¶M¿\Îb\ô…`œlcÅ¶\ìŠ{\Ô\Õ7…,‰KÚŒxm \ç\ÂY$ºJ³P²l6‹²é¤¡\ï\Âˆ\Ò4¹¥¾ƒÅ·\Õ5{\æ¿Hv\í\Ü\Åz#ù\Ås\í\äY:I¹\Ï_…\",V\Ä1›…\Ì\â¹\æŸoL®€¾E~_(\õeDÎ¢\Ğ^ù:³jt¡;K\àº]úºJƒ0n\ô(™\0O|?\ğ\0\âŞ¯>½§\ÎbUƒa\ÑÒ€ÀC\Ãù2\ğ‰×»ncJ–.ncÊ¿U¯l*ù_n„A\0:®\Òe×\Ärû\É\Çú¦vh\Z„€4\Ï\àÁ£I~rù$¶\ÜÉ±\Z…Rº\æ‰k]Mm~­…\áş\×W€´Í£,‹Ÿ\Ô\ØÓ‘G\Ø\r\ò‘k>i\É^h\Z»	±«\ô\Å\Î#\â†.,¬®\í}P¶ozG\Å\ç†\ë:j×pe\\,u\Êú\\X9)<8ıŸÖ¥–†\ğÄ¸§‡­º]¥Á`0ƒÁ–**£ƒÁ`0µa”MƒÁ`0C\Ã0Ê¦Á`0ƒ¡ae\Ó`0ƒÁ\Ğ0Œ²i0ƒÁ`hF\Ù4ƒÁ`04£l\ZƒÁ`0\Z†Q6\rƒÁ`0\r\Ã(›ƒÁ`0††a”MƒÁ`0C\Ã0Ê¦Á`0ƒ¡ae\Ó`0ƒÁ\Ğ0Œ²i0ƒÁ`hF\Ù4ƒÁ`04£l\ZƒÁ`0\Z†Q6\rƒÁ`0\r\Ã(›ƒÁ`0††a”MƒÁ`0C\Ã0Ê¦Á`0ƒ¡ae\Ó`0ƒÁ\Ğ0Œ²i0ƒÁ`hF\Ù4ƒÁ`04£l\ZƒÁ`0\Z†Q6\rƒÁ`0\r\ãy lJ\ì\èQi\Z’®§’–…–\Æ`0\Ì\"G\Ì \Òù’Xhi@:\ö\öK;ˆ\İ\è³\í\İ+\ÉA¤³i‰5ú|†™ù9?4\"Ë½—şM\á‘\Ø\Ş~i\Z’®½{%¹\Ğ\Ò4¡oì‡D×¡\ê\÷[½ZÏ´nÿ~I\Ù62\÷1˜\0¥ª=gß„¬µ²­»¢N©®x\\%°&m:29\éÈ¸¢8bY“wtv\æ\rÊ©\ö¸ \Æ\ÖVª€W¯¦\0jr¦\õ?G\âk¯\òXYP.H\âPˆß ¸oT>\Ì>\óÁ¡C’³½ÿÔ‚´:Ô˜	\Öt¹ÂŸk\õj&Aj—B\ä\Ğ!Rµ\ï?;ş}şú«–ƒ«É¿¬\æ\ëTb‡‡\ãg\Ç\ó\És±\ÔZQ±„\Ó\â‚\ÍjkBb…\Ë~3f\ç\î^×®ú+\Ã>tˆyy84\Ë=y\É0œ¼0\æ\Ä\Ît]º,º\Är“jŠIqÉ¸ˆ²\ì\ì\Ïû-üì¤“T®¾3Š50–8]\ò\ñ‹\Å1+º–	G’\Ø8\Å&)X­[\Écªeì®\õL\ÈcW}¬^*[\Ë\'œ/u\è\Ğ\ÜÏ°\âùr œ\Z!\óvœ8˜y…L¦/±$\á\0\ä\ó\ÃYºùx-ÇªVW\ó|¯\ö˜ƒZ·NM\0<\õ”´$“a\Ç\â™\õ–™èŸu*\×úZ±\ÔÉ¶\Ó_\á$À±YÑ•£o £D\ñ\\Q\ïx ¬\ŞQ\Ís2—\Ã]¿¾ú\ë¹\Úgo}c²O\èÆšÁ¶\÷J¢\å”j¶ub\Ã1`\ËL\ëSm\é\Æ\n­³\Ê\àØ£ñ‰Otu14\×ùFFdY\Şi},{\Ü\ê\ôÀK2\ñ\ìjp§_cN|¸#\Û\ñ\èº\õ\è¸e%n\ë\è˜üy5Ÿ »»\õC¶J¯¬vû¾¾Üe\Ëø›™ÖŸ0\Üş’\ö«-›Ur\ì\ñXÿ\Ä\ØgºS\ì\Èüi:‘:¾Z\0†ú\n¸V»€\ë(\áY+–ûug¦p\èra+J~2\î´W}!\ë‡_»W‰pT¬\Â#N,wÿ\ò´:8×¾ıƒ\é­\éDk\äÊ˜²³±£##ÿ¸¼GK\ç\êO_™N´¶†9\Î@_A°\Ú–SÀµ¸-¹Ÿ/K\åBmI¦’Ÿ´C|Ÿ\Õ\â\Ø\Ã\ñ½{s;N:‰\ÜÀp\æ\ÏÒ‰Ô±QŸÃ•‚uÂ°s\'\í|#Üb\r§ßŒ\ÓúÊ¶\Ó\Ò-\ã\ëvnY\ås\Ø\Ù\ö|úÀZ«\ë7¯\È:\É\É\ï.O\ç\é}\Çc‰§R©\÷‹“¨C\éŸW)\éœüÍ²N>\Û\È\ó\Ì\ÆÑ£\Òf\Ûmï¹\ËNH\÷‘‰¯µ,§\ò\ó\ÇIud[Ÿ>qY\×Ã—h{ÊµF¿½²C=\öœÏ%Ïˆ\å2—%GNlm9­\Å\ÎuL\ß\Èr\É\'Ÿ=?\Ûı›\÷§2\Ï%\ì±\Ïd\Ôs\Õÿ0]\étj‡]\È\Ìùû\õMtw\Ò\ö3\éjÙ™N´Í¹#¹øÀ\è\ğ¿veøMwwû_\Ø*¹ª\Úsè±»S \à*¥\Æ%&{\'­±Vex¨\ö‰we”“<£\óÀ[[½\ç\æØ²{\Ù“\î\Ê³\ÙY=ùc+‘zÁl\Û8±\ÑØ³£»We¨\ê\÷]=\Ğ\öA+\Ñr\Â\\\Û9\öXø+€¶\Î\ô–˜Óš©Jh oÇ\Í\Õnø°¬H´´¾\Ï\ÎwLz\à\ÌL<»j½\ã‘cû\Ù;f‘ørg\ç\äıÕ#™N~\Â.´\ÏzM\'\Ù!\àš(\éŠc½ \ò§t\ó¥j;¡•MUH&:Ÿ~{U¦\õ\ác\î\è£\ÂX\â_•m?øú5³cb\ÅO‡²msÿ&ıı\éD-»¤\ã\Ğk:fz\Ğx\ØùvZÓ’\ê?³eb\å½\ïp\Û\Î\é\ê\Zı\çj\êV¾\İ\í\ØIÕ®…Á\ã¾z`¶\õ’·\â\íŞœ±\ò³\ß¹\ßf\Ç\ÖŞ©\å/¤¬\ögªû\r*\á$‡:©ı\'\äz£$2\ö}!ÌŒ(Jc\ë\'\Ú¿º»–}\İøhG¾\å¹²í¾ºo¢u\ØJ¾Ò•\Éıf¦\íã¹•¹¶ıo¨z¯–|Û“\Î\Ğ\êï”Ÿ«°<×¶\ïM«k: \å\â\Äº³™§N\èx\ä\í\"­\÷tv\ß^Íƒ%9|j®\õ\È\Ë;k:\ï,Œ®ü\Ñ\0<€KI=\×\ßL¸\ñQ†\×~³*+¿\Ç\ÑqYmMfş,\ÕVwj\è´D¥A>ˆå´9\ÑJœ\Ø\î\Ú\ã\íü\Ñ@\Ço\ß	\íwwu\r]P\Òz\è\Ât||m]ŸeN,—¡ã¿¼`®ı¾\á\ôy¶\İ\ñ¶\ÌÁ‹:\â\Ù\ÕsZ\æ\ì\\­¹3\â­ıgÄ\Ô\Ñ3\Æ;8±_µe];ÿ\Ù\åm\ÙG\ç\Ú$\Ö\ß\ß\öÇ©\ìNi}\öå­–;‹\ñØµˆO¬&~`u\ÆIeFW}\Ó@>ı\õ®®\ñU\ó\ÙR§R}/\óúY\÷\íÁj7É±5™C¿3ç˜’O`\ôX=FÄœV·ı™\êŸ!A\\+\×\á´]M?sn_ş‰¬Eë»ºÆ¿•\Òi;©\î\à=\Ô2\ö‚¶T\ÛSg\ß}°|\Ú\î\Ø\÷¶Y?g®ûW£C+\ï­\Ê2`¹	»ã©¹Ç¡5\ß:@qŒe—OvxS\Õ\ß\÷\ğš;ú¨r=2zU\Ò^\ñ»\íû_\Ón\çºf\İV\ë\çyz\Ç\õ»\í\çtwük5zGl\ô¸‰\ö\ÃÏªØŒû\õ£\ÕI]ı1];\Ç\Ğ\ñ_5&\Ïx¾°;X€kg±œY\Â-\×G\Å&f=¾+ù˜k3\Ól\ZË¥@vNw\ÃÀ@û%\É\ìqµ>ûªÖ©\'u”B|E)¤‰gW\â\rt–§\õ\ğ…\éDû3/\à\î\ÍCC\ò™9•.Û±dRhù;°\\\\É¢\ã Îœ\ò\ç“Gµ\İIa¹å›»V§²üÿa9©£\Èdz\æ\ïn¶\ëÀ\ÎuÄ’ƒ/nÏµ>sZ\õ\ã“³©ÿ\Û\Ù2\ñt\èƒÕ‰\Ä\ÇbNr\0)¤f¿¦*`\å3$\óIœq\ílfl\åO>0X\È<\Ğ\Ù9\öùJ7°#Ù¸“@\òif}\ØE€+ù¸¾N2XN\Ès¹vn­¹e‰Ö¾—&&º¹¸\ßı\ÅV·üM\'j\Ö¤©ùû¬Z<°T29\Ë=0\ô$O³³+>\Ğq\è\õ\Ó&k–K>ùnbP¹±\\Á*¤\ã±\ñU\Øyÿ™c9iZû\ÎN¶\ö<\ö\öª¼5K¾¾¶w´d¿ \õ\Ü+\Ó\ÓÇ›ù–Ãu]\Ûq­\ÉL,>º¶\ì~±\'–\Ó6qq«“h^ûİ“€Y•Í½{%¹lE\ëGÚ¾b]|d}\Ù3Áµœ–\çpã£ „X¾{b9^:\ë cÿ¥\íc+~té ´/\ë\ìş\ê\\Ÿ\ÏM\ÛNrÉ·\ÌzŸ+\ÇJ\é˜\Ôp.MI \'\ÏşŒ³”=†“\ğÿ\']\Z¿UKE+\ØLXnk|-\ñ\ñµ-\ôŸ\ß2\Ñş\È\ëû\Ü_•M\Èß¯mS}µ}Í‘#rLzâœ²É\\.¶›8Z”Mq\ôsª\Ö\ãD…\Ïi¯nMdÿ\ö\Ş;H²\ã>üe\æ³\õ\ê™rm¦gzz\ÜÀf`‚\0½(‘’V)i¹q\Ú\Õ\êúC&\â6B\æb+\é¤\ĞJ¡\İ;¤¸‹\İ=İŠKI‘	Ğ€¢@¸x€™ÁL»²¯7™y4º§^U›²=3¿D`ª\ëef½—/\óËŸù~ú Á—ûj\0mw\ï	p’\\ H$!”´q­g\Í†­]w\æ\0\0\õº\ñ©\\°p‡V½s\ŞA;x‡øv72h\Ë\ï\ÍIú\é\ë›\è\á\ß(\Ğ\Ú.\Ô\0\0I}\ì“Q®\Ød\í´G¬ƒÛ´ù\ö½ bs\ó‹‡ÀÀd3ıÇ›û¿X˜¬+\Í\ëeÙ¾:\ó6\'ùs±;\ó=—s\ÔDmk\Õ­\ñ”}\à\ËW3V®} \Ön^›è˜=w¿\Ë\äV\ÌN7ª¶84\Ô\íüİŠ{\è}\Ú\ê\í\ÖY¯$~\ñ„€\Îr)y“q\ZbªLgGDV\ÓV\î\Ü8]‹\íy!\Ë\ó|\ö;¿€ş|»S\"—G\Ûs\ßtsÒœU8ûf\çDc¢Ã›û\îµ …8n¤\'·»X¦)xŒ\0sK[y·!»$\0\0gúû\í$\÷–\Ç1n\å-¤®…P\Ñ{´=\÷@Œ€)V\á\ì§2c\ğ¦\ócãµ˜10\â¸\â.h¢sw¾p²7\Å\Ó\ÓE{\ïı¿Ru\ĞªTø\òv\ã3x\"×Ÿn\Í~½Œ1×)¦y\ö“f\çø¼\âSAl½”\0`Ê€aÆ‘	Š{Hƒ¿S\ô¥h‘~\êx·Júß»ã€˜\â<ŞšıúaŒ™)„3º¾xO\Æ\î\î\Ì}»(«;\Æ\ê`\0¢Vo7\ä\öÁ-w2J\Z·\ç¾y\0³„°¬\ë‹\É\ôe\Ï}\Ãer=e\0\0cŒ1¼¬xûs¢;.\ä\îaP›G$\É\İ;k\Ã7~ıœşd=i$Q~\õ\éXız×\å\Ì\îù\éLÿ\ĞKµ7ûq³#c\ñƒyN\õ,¼Tvm\Ï}+\0`H{\ç_P|\Ò\ÌW\\À°“µ©\í\Ã9µz\ë\Î~\È.4›úuRZş\í\ÜG\Îù\Â0… øt\Z¯„Á«	‰N¥,\r$L\Ä\å›H’ŸÊ¯¾K\'\áTÆš‚ù\æc\r¦iû\Ú›\ÒN˜b½ş3J\'¡iøŠ\È\Û\ÔR!„Ó¨{\Î\í6\Úm\ó\Ó9\÷\ê\ãj\í\æL8	\Û\àO=\â&J\Õ\ã?	$8Ÿ$Àe*O¡Šx3\ñgum\õ6-{¸\í‡$!\\,ê¿–_üÀ¼\è\Ït˜*xa\î\\\È‰\Ñ¢@\0\Ôy\Î\Ø\á\\\óFUm^\'½ıe\ĞVŞ«y\ô±\÷\Ú(ï›¦ûÀV½\í5Ào\Òs\Ï\Äs\ç1K\ñ\ç5mé½›\Şs9Ü§W\Û\çT8\Õ\Ç\éÁŠ\']e9ûM\0€$·\ÈH8Y[#\óµ0(?\æ\0 &h&¯\0\0p\â<f\Ï<\à \Ä,À\Ü4\Î\È Á\Ô\Æ^Le\ì=_\ó‚\03À@pœÁ]PUç¸q°b\Ô\ÖQ\ò\ö\î±\÷~\ë\×mı¹i\ò¡Ù Gg\ö\Ô\Æ0`®Z\0\r’7\0@Q\ğ¨=\ó@\0„8p\Ë8·!³\Î!†S¨~Ó“€¾\ÖO\\`Ìƒ\ÇÓ¹\"\ÄX0²Œs1IX\Ä\0\0\öÂ—m†}\0µ)I6\'	²_°\ç¿\Z\æ:\âD1\Ïü„\Ù9¦`\ïıJ›\ËA¹Ã\ÂF\Ãü°\â¼S«İ–y:x\ÇN’\Óo\ğkE.§­\Üqw8B*ûü»¿V,¢¿Øw$j\ó©\ö\Ü\×+\0\Ü\Øl]\0\È5[^û$X\ğ\ßv\Z?\0\0ÕšOµ¤¯Oa\Ì\rš†y\î\ÇL\0\0ª¬\Ò\ö\ŞoÙœ¢\0np\õ\í\î\ß“Í²\é=\0O:…\är\ñù_+u¾`±z>\0\Óÿ\Ó\"\ğc,-İ»\0\î\0h${~S…›\0DùSq 4¿8cø\0·Xm[9$s\ÊM\ÌÀ™ş\'7Qª\ŞW6³pÕ‰|u*\åŒ\ó-®[:\Äp\Z\é\Õw\í«\ãG~»8ª‚\î?\0\04›Æ»©TûL\ç\Æ§œ€xÿ±\ß\ÃO¬/vµƒWGv\ì`À¤\æ™b\Ñû«\îkJ†\÷\0<\0P³µã‰²ü¯D\Ï\Æ\Ì\ã8\r¦ÿû‚\Êªù\ö,\Í-]*\'Ş“_~—.º6N~˜\É`ÿ¨i\ïû\êg\àOú\÷xÀyÑ„¿_ÿ—mkÇ©²\ò¯p\ço‘‚ P\ğ2¿¥Zµ§\Ù\Ô\ÊQ(¸3_½S}\óXvŒ¤›ü™\n\ğ\õ\ÎŞŠ†ûM\0ø&\0@³YüF¢;:­œs·h9°\ó¸j¯ı\Ü>¸eH±>\0\0\0\04kÅŸc$|o\ç\é#\Ô2\îu´Ill\Ï;ú\ÙcˆI\Ç\ò‹wbXŞ˜W$1À\\¼§‚\÷|û\Ó\0\ğ_6ï•§eş\Çú¿6›ŸEa¡\àş^¿Qtı~/¿<U\îşK\É\ğ€\Ç\0\0\ê\õ\Üm‰²ü‹\ó‘$N\÷O§§¹·S/­t\æ\×U€\È\æ\ò2ª\Èdú3ú¹™ƒ\Ò\â\ö\Ì7m.ú\÷–Œ\ä±M6\Ç\ïœwP)\İ\ó\íO+\í+\÷kµ\ã;\Æ\ÔF\ê\òùRÁ\İ4\æºY/ş\0\Ü\ÑùJ\Åk\Êı³Í¾oWK?\ÃDÿı8\Ü14›\ê{”\ö\Õ7w\Í\Èx-q‹OT‰\æş¿E…_\ğn\\ø\Ö\×jªrU’[ú9}\ñ®²\Ì\ô\Ü\Òl\ZŸÖ«·e‰¦è‚½\ï¾&HÁß—´\è¹Ş«n\Â3s\ç\î4—>¤¯?c­v›\ê\È\î=U¤œ®\ák›\÷\È\ÃBşn£ÿ´\òo5\Ìn†Á~(É¯Ü¹±\î‰\îœ\"r\Ç†#›b”¿E\ô\æ\0\0¯\òxdœûˆ\ny?¡\öFÍ²¼?ê¾®P¸°‡\0 \Ñ\õ^ü\İ|0U\ÙøN\0c\ôU\Ër~°şQP>•Gb\ë\ä=RûŠ’V»Eİ°ş&X\ç>V²\ç¾ú\Ë0\Âú¸t\Õf!h²7§Ÿoœ›+Â¹A\Ú+—½\0p\â\í\ÖI\Ûy\é\÷\Ä`¶\'\ßAk-Ü» ¸¶6\÷\ÛfµŠ\ò¡ş\êok\á\í•›@Q\ô½bÁ\íi£\\\ö\î]ÿÿUM\'\æk¿%7n\Ü \ÕT[L‘\Øş#~¶Ÿ\ßUs”+\åp\ï\İ¢‰Ø³\ßvR±\öX©\àİ»\ïh0ùˆ³°ú™ü™	}›wø3X«Ş¾¿-<\ö³F\Ç\Úİb\Şßˆ™l´s·\'\Ê\Ê/Š~6ü…$\àÀ<\Ò\0v^{;Û¬§…Ÿd¢{N\ò_iLÿ?\ìdmCg\æ>Ì£¹$ú\ë™\ÌD\Å9dĞš\õ¾A\ÚZZB9*¶Ë \ğrc\ÆNlwÍ‹€$Nµ_Ô–>Ù¨œ\é\ï;q~ùKÅ¢\óÅ­b!Jz\ô2`ûO\í½ß¨2rÁk.º¢\Ô\Şw}İ‘¯\îg\ÜTpj)	2\Zıt¯N?\×\÷‚sDX\0À0N\è\É;)\÷kLtw8r^\Î\ñÅ¢~³`ºÿŞz\ä¥ *3‘0U@q¯,\×jı%M\\\ök©\à\î¿\Ây¥Â—Fø\õBÁùı\öÔƒ¯E\Ú[™k\Ô\Ö\ÕI\ò·\í £\Ò\àÂ°aªœ\İ~¿«qa§wŸS\Ó\äoMÿ‹ahÿw\Ïo\Ñ\\5s\Ò%Q\á¨tpM’fgl6?ûO(vœTªL†tCpW$¹I²~\Å<ÿa«“h&Jƒ·f\ï_lÿIÑˆ\İ\Ê\n3§\óz©\àü©\ñúk\ïşf`8\ÎÓ#¶„¾A\Å\Ï\àA\ÍG³B\\ş˜Z»5C°£\Â¡W9\ñl©\äşoV\'\Ñ\ìBY_)Z\î\å\ÇûJ\ä\0XÛ”g\î\ÆÎƒ-\Ã´\æ\î¯{\Äş³Â¦D\0€³BÁûj¬\Ô>\ï\Ì~§\İùm\éıºk¿Ğ¿œu¬-In9¢\ò…û“<\àD\ï\÷\÷tƒPy\Z3¦Hµ\Ş\ñ \Ö\Çf\Í@É½\np·dÄ\n\Ş\æ+_\õfÌ¬?8Éb_;Us”«ø	ƒ\Å8\Îo\Z©(xóš†­\ãÃµ»N9I6½¢7G¦\Ü€\â#•\nw9Y\ó\"0!\éaq\Ú)\ÉzvS_Núz\ÏOB²i?¯­¼?cvf¿\×u\õ¥’\ó[\ñb1z‘#û?\Ú\óß¨1|aÍ“\İ\"i\Ï\İ\Ô\ïŞ›\ÊA•	ş¦}h[\n¶m~¼Ÿv:Aä´¶±¢h[a1’\ÌT!>/g\Ì\ö$,#\Â\å\ëiGU­ª‹\0\0‰²\ÊA\ğ\Ù)\ày¦a~J[¹³œq[¯Ç±¼ü\èÛ–—mQ(p›Ê­¿rf¿›‰o\Ğ\ê·\çI”ÿ™A\'ş\å\n\î\ßÄ•\'\Ï1’\õË\ë4‚\òºH<.Y\îÿ\éW]\ê|y\0\Ô\æ\r…fS¿mR=#’x€Çšº\ÙY\î\nÎŸ;\ÓÖºû\Ğ\êÇ‹n\İ3‘»À\Åd\âIc\ñ\ó\\\êÿl\Ör\ôkµ\Û+VbF\"\ğf¿½E\îŸ\n;{T\0\0B~˜(«\Û>@.ºÀ1«\ö=¸p¿\ÆDgDÙ a€‰\nÿR[º;\ã#¢úù\Ô+=\÷B\Ñrşkq‹<¥8]\ío\Ş#Œ#\ígµú™MÙ›ù® \èoú\ñüT,\ï\éT®>™¯n\Ü3\Ì\è\Õ\÷”¦¦ŒŸ\ìc\Ù„±z&³\èª\ë0„kP^:\0\0U—f\Âø‚\Ûv@\Ù\n¾«‹&ù³’*\Û×¨B¢}t˜6[!\ìı=:ÀÚ $2R\é\Ğ\Ğ\îr\óúR\Ó\Ñ\ß5\É>Æ’eü´^}O©“wùW\ãT^y\Ø4½m\rd\0\0–\Å[Šÿµ7\ó\İ\Ì:¥V\ï\Ğ1h?;*\ï a¡H¿v˜9=iŒH¨8\çr\ğr\çi\0@ql{{Éƒ@R\åF\ñmW_P~ºaYÎ–19\0\0\r@†˜X7dc€(øÅ§VK%\ç+ı¾¢\ñe&µ~H\õ\ó§\Ìh\õ\ã¥FÃ¼»\ßv.?pN$ûoƒ\âÉŒ\Õ\03$\İüt{\é‚\Ó ş\÷¨\òLæ·ˆ\î^Qù\ÖI\õ\Ê]¦¤o\ã\æ\à1üû¢\\6¾’D& *-L°\ã#@\ñÄ‰Q‚[\çR\Ñ\îKª©\ÙD&\ò­\Ûdg>c±\öf¿\ÛJ•\Öÿ5ˆ6‘\ã:\È\ö¶–[&<•ƒ±\Å0+\0-&Ø»N6ş®\\ıº\éÎ†#p¦^-š\Îÿ3H,B¼\Ú}H\İ¶m¾_«\Ëu‘R©ù\Ø\\\Ñ\ï\Û[(8\÷ù…gW¾À…‰?¹W¾¾\ÕB­U(\Î{‰¶˜yiEg¿\Ùt¥½9¤¡^\'y\r\0€P;\İ&L~s\Ğ6FA¡\à\Ü”Ndb1#€ƒRy˜\È7K\î¼\n\0Y§h\÷3\İ—\à>\ÃD\ÖkY¢\Ü9\rB\0\0 \0IDAT> ¢PùÀZlè¥‰VY8)_Kü\é\ï\ËÏ®\n\Î\×úm\'—\ó©\Ô|,\Ñ7&5f´\æ±r«5˜W8\Ò\Î&”d¶>P\ë7—šMı’3\Zl½\ã¦ı­°p2c”\í«r,Qûú±µZ\î¨Ü¼º\0ÀˆTr\Ş\ÚIû5?«ŞIŠŠ\ÏyT\ò¿4hs¡\à|Ã±Ì˜\ßEwA˜ü®w®u Ÿ\ç«in¥\Ç\í@\"Kt¿\ØØ£úo\Å\êR—¥Ns\'\ô$¹g™\Ü\ÒE\İJ†ÿdTx­\ç	,§\ïÊ¢Ì™=˜‹{pˆÔ˜\Ø\èK\ë•1\ã\Ç\ó+wd\ŞûDYa‰b?Y\Î\ñ¥Aúm-B#‘\ìm]E)qB\Çcs£[´©¼S\ÈË¸•»dûšLºiPy\Ê\áJ\ô·ƒ`¢¿H…Y¡D~·\Ü\á>\0\ğ\Ê\'ê¯—œ5T9\'¢ÿ…¨øL&%_½Õ¢\Ôú‰AZ\Â8ütä‚‰şœ€\Ò\ÜÀ.b\ÄsGI°F:˜\Òt0vY¯˜³â§¨RË¬A¢?—/\Û0¸n*X\Ï_ˆ\ó§\ì$.\ó\â‹ş~£\îH‡G\ñH^\å!\Şy€\0À \ÚW[-\íÆ±\ô1X?‘¯Şš\Ù£\â3ı/\Ê;^/9\÷y\Å™µ]nq*\İ9\ÈÚ\æ=\êD\Æ\Ú\'ú3%\Ú\ñK­\Z\×\Èd\Ê\ŞJ\ä\Õz§kS3\÷\ôs\Â\"L½[uK\0\0A\ñ¤#Ë¯n\"$Ñ¯\è\ó§e=|e\ğ_À\Ó{O\']/­Ü¼¶Tm\å.\á‰?:‰»\ãÖ„¨œ‹¥{y1Áp\ğb§¼\0€–r¶¶?)JVƒü+Ih¾Q\îÜ„ˆgG\í\îOq’“NŸ|•†\Ø\nß‘XŒÀ\ó\çQh¾±±u\Æ\é\ÓH\ó\n’d\ßû \òdmÙ´wX3zqø0€øÛ’M&´c\æ\í\\L¢p\ÆX:\öX¨\í°\êi×¯\æ\×ÁpI~\ñ\\A\ñ¬\Î\ò`•\Éî¶¿¡\éJ×Š\Í#™Lª48\ğ\Ùa*‘Fx*ÌŸ­w’D’ R\ã\à *\Ã\ñ\ËT½°N`*ŠÔ\õp	Ë•0#ÀH\\:\èŒ‚\Ğ~8\Ô_Ï¬R0-\áÄºv°–€¨¾\öbaœ$µ(w6\ë)r\öJ$\Î\İ2\â; œ¬\ç3\æSÙ¹J\á‰2TÀ\ä;¥\Ó\0„ù³\õ·“|\Â1\à	%\ásTid\Í#¥•¦t\İ m%\Ê\êj\÷>®6n*¶Zù\÷:®Ib,–;$úß‹\òYwŸÚ¸¦¸§•¿}»\ëªš‘Â½%`\03ˆ•s\õ\ÜŠ•¦tD¶¯\È\ì8‰²\ÂSˆŸvü\å²\óO‘\õB†©ˆ\îAQH\Ôw\Û\æ\å\0\Î\Ã×©”•\ä\ÂLDA\Z¨\òÍ¥€”8/§j=³	\nqYK0T¶ºfœ\ÉA-2^ÿ¢3ı\à\ç\ó¥\ÏV&\Ñ ´Ápv&T#B&Òœ\ÈÁ’³\çÛ¾½\ğ\åv¬¿>!AM\Î\Ó\Ü\ê\é?\ç”ÿ\\ª¶\ß\ì[º®½[mÍ&*¶\Ä\ö+G†f\çˆ\õšm\0¯\ò˜\ï\Ì\ßß\ÌWI¹ce\Û4W£\Îüım{\î~‡\ãt\âVN)Rï’+3\Ï.²^\ñc\ä\rha|»=\ZŒ4·\å\ô\÷¬Ë·­Ã·o¥¼\õ\íaú\0 <x4Ñ–3Á¢ª}•\Õj\å\ÊH\å\öÓ¡v&›\\t\0\Ô\÷š\ç8¨$\å<\0@’;ŸrÁ\ß1Vo°,Ş¢R6„$&&l[(¥5G>$»û\Ö\âO¥\ZG„>\Ç$7s\È\ÂT\Ärµ»x\"Ÿ\r\ó§2F*`\÷`\éb&©n…VK»Nm^•±j&¹eFI\ğ\è°mr\ŞzÀ·\Ïz…\İC’\Â\ô;i\'%\í{ƒ\òÓ™Ã\ì\Í8\Í\rd%4\Æbf5Mÿ\éV\ğ\Ê\'\ä\ö¡\rYÑ›#ˆÊ·À¶ºNŠ\ÌO¨\ëu\0€ *¦8\Øq1R˜~§\è.d²\Øx\İn\"û\ñ\í\ëm\îQyºpÁ¢‡B\õ\Ê\Ú\Éy”zÕ—.¸Ø€c‡Le”Æ²—İŒ`9•j¾‡/\Ì\rªŠù%Ç€\' C_MF\ê\0‰\0X‡G2UDUœ\\\r\ôu\Ì\äã—––\âÿuıß‡\ÃD¬r¥\ß\ñ ( \íhgŒ6\0@X|Á†B{G¹”­ÀH˜†\æK\0\0À	\0­ä¥‚Sûc\0\0M6¨{lg8\é*\0€}˜°\ë)Bt¨\Ô-d\ç\ßlL™ÁÀ¥&\0,€v3w£4lS5„I2?Y¶\è[v¹Ì‡T\é\0 \Ô}\"\ÔO}P\ô\ölx*ˆ;/r\ë©w@\ß:€S\Z_i{û\\\0\ØH\\R¼£\Ş~\óÚ’›tº\Ç\æÑœw@\0H\ô3v!¿\ÚµHï¸€p\Ò+s³\ö’4w‹\è\ÍK\0\0±~\Æq±ı¬V\Ê\ö\áN\"\rci	å†©¾~=\Ò_ù—!r\ë†\\¤¿ş	\0\ØT>\ìb\'ÊÄŸ\ÏL\ê0ª]¶\ÜŒ\\Ü±Wgm\0Ø˜Ó˜@‰6=H±\Âr’;¿\ÌpdtjşŠ\Í#¥º\ä\Ü\Òï¼4\Æ“\È½ST\ì$\×ooqymjY:w©(±\æ\×\ÅU“\ÂËr\Ù\ßa\Ñ@%\Út\÷\â™J\ö\á\"\ïq7‚\âW»d\çUmi™´/\'0)\àt2)Õ»ŒJ|Š£\ÌoÁ\\„4\Õ.ªˆ\ö¨1Š·\Ğ\ßp6;\Ëı\õÿ\ÆO¼úCµŠ\ò\Ø+\ö„v¤r\İ6`\ğš\Íëˆ¥\Õt¦üœ3ı\àç¨±z\0À\à\ñ¬\Îk³:¯\Ò\öV(¸½\Ş~?:¤£ ZUn‘[\×d\ÂH\ñ¡x„Jaœ1e\õK\Î\ôƒŸ\óJO|\Ê\ÍÌš\İt¥#²s8c¢¤\r \ÄC‘\ÛuLOs‰­¬µ-c\èŒ\ÍN‹\Z	f1µ›û½0\éZ\0\0%3	™˜~Á\ë1„ &t?p*Ï­«;$rÍ\Óyr­©v:3?%gÁ”´Ü€.ú­aYŞ³ùr£3<3¢·wú|\íW?£	„ê•j[J\Û\îG\Ïr;¤$\ì\âM\0²w\Øjº\Ò5ƒ´\æü¯DÅ“‹½\ê–„$·+\Ê%ı`l	0¡\ÔüFX|!s×”\Æ5†,6M\Ò4ınµv\Ó\ÛrG+œ\ï\é6³Vûdÿ@Vc3`(\Z9®JÈ·•\Å\ÌQ]tD!U·\r¸œ!I*g\ËÇ‘ˆ\n‡¶@\\<p†Í™„£±¹›—T®ù\è\æ·ÿ®\îù€\à)\Ò\ë\n}¢$L\á¢Ô²VV¶~Wmtp§\ïKR\î*\å\í\Ì\ßu0\ÃÁ@\"\Óİ¨üµŠ\Îª\èü¡¢\Ä_¥­KÖ®Ã¬58ÊŸ	±<2J»%ƒ?¶~ßº³Pœ¿Ut\÷g&,\Ë5\ÒTr_¥O\0\0.%«İ²<²sÈª»\Òƒ´“’\è$Uª{\rf•{Šl„0U-`˜\è\Ã\ÑÀq¯\ãE\Úcı\"°¯#…\Ä\æÛ’G8	j\0\0\å,E\ÚRfƒ9Œ\ã\\ß¤|gpÎ…\ğ»‘\Ñ‚×¼)¯\ñÒ§\Æ\×\ÏhX`¿\ì-d˜ xd¹+*´\Õ\å\ÌaEl\ï—pl$5£§C\í\Íj&\éŠa\ì«J\rW\ÛaŒl\Î\ê¼+K™B\r T;Ô›Õ¡\êQ1œ~[\î\è™F¡\à\ì\èBg¾y¥\à—3\ñGTt\0D6rMoKó‰ºœ9¥`F\0Sy\"	&——,Ì³y&)i†HJún¾t€0ã¨«²I\n³±‘29,~@­ı¬Z;úY>0®v·% Ïº$©\ØL\æt\è«ş\í ¨zh¦\Ş\Ô~§^\×~·^7&²\àsMZP\ì«>«®\Ü\òY))\î\ØGšJ×“ ’YCy•\â\õU\ñ\ãŸ+0SzJ\Ú%\ê²gš\á\È\ë\å–H¥B·=VV¼fo_º¸P\ì¿Ø“}\íÍŠ8,ƒ9\Ä\îs¡zº‹H•\ó\ç\Úh\Ç\Ä\ÈF\0sb°¦G™\äÎ‡‰\ØÚ:0&\ô–“\å¬oWHµ*^#{kª.±T\òŞ¶Ts\ÎP\Ö¼F\ÊÕ±\ÆÀ\n\Î#y2\ãAÀTM\ïYrPŸ€\ÉBl®‚J\æ\0E\Å&Pœœµ\í)\Î\Òüù\Ì\\\ÄL \ÒÀIº{\÷E\æ™\ĞÙ¾FE‘>°\Èû$0Vi.{E\ÚÙŒY_l.6½lvU\Ë\Ón[ä¸\Ø:»“\Ü\0\0b\â’d¹_*×’”4·(]6\Ğ\èS£X”\æµat\Ë.°X:Œº²ú©¶\â•spÙ‘\Ís\ç@&T\Î\Ìg†H\Äş+ı\ì„pQ«\Õú\r\"PØ•Àk\Ìd³\Û}C%\×\ï7g`$âŒ±z\ç\Â\Ù±Gd\ÊD\\Yb¤Îª\õ\ëD­qT*\ï-\Ğ\\¹3	\0€i+J\â·&1¾wNŸF\n‰xe.\Ş\Ä\æ\0`¦\ô\ôI%;5\Ì	\0€EÁY–«e\r4ˆJy\ö\Z¼‘¨Ìº º\Â\ò7\ìt-\ö­ã’·?\0\å\Î8S&ìª¾f7\Â=d\ãşs$¤#Ş´\0°¦Ê¢`\ÃŠÁ\ÉDªfUZ‚rş¼ƒ†O\ègH~H\õl8­v³™K\ÌKÃº\É\ñşnŒX®\Ç)±‡*s\Ú\ÕxBq\Ø\Ã}Hª\å\r)£Cıµz\÷Ai/TZ¡º0úXG\ÃX\ÉfQˆ¬3§\Ù=$¡(W\çg\ÌS?(:W\È\0krG±ÜŸt	f’\Ş}RO•ª—z0\ò©\0\0	½dS*ªÙ€z®\ïT*g¬˜\í\ö\å˜%À\ÄTÏ˜T˜Ô€c#Î„eÌ¯\Ì@§r—û\Øƒ\ÅI\õHX®‚­‘;2‘M\Ì\ñJû\Ï\ÛBL\ìI†J„fdY|\"\Ö\İwŒi(“ \Üs\ß8&\'zª›=}²Í’X†@¥µDj\ô( ªœ,\Ç¿Š+H }T¾\ãÒ¡\õ¤™Tr\í*\İMœdNaSHI\Ü•§\ÖrLi:•\n\ß \á‚\å>ë§»¤•\èJlm\ĞYœ2\í\ï9Ö³—4Nr€ƒ\òBú+\Í;I`{xUV=¿	cY‡I{yGXVjş\àJ*T\n¾\é¯f\Ş¹uaî“£Œq\ó\Î\ÉS&¹§;«`F@J\åj\å\0\\M\É\ñl3Sˆs\çk\÷U¥ƒ°^IN\Üh\\\Ùq\\ t%cqQUul’—\n\\MI\ñt\ÆT\è¯F©\äm©p)ƒPuA§2\ñ™©\ÜPc+7È©8qm\ËN\Ô\ë\ê1Ù¾\"c\Ê¦l\'¬5t\öN@—!‚\Ã\0#lv–›\ÜaDP¥\ç¾o*[\ô#l€\Åâ”X™›\Ì0 tbd\ÓaF\n§\òİŸ#e}^;§=Ï¤’:h.úOSu\å\Âb\Ï0`ª¶—ŠAN\Ö©\ÜDè«ƒ\ô9n<	HDLÎ¬y\\l!´¯8\Ò CˆŠk\ñš›\è…ZÀ[©\ÚÈ¸xIXD„Ic<<\â?(+™\Ãm®y¼€š…g_Ã€0¥\'îŸ‰~´°À\Ç¢EYo¥6s\à‹\ç”MÿÉ \Ë\à‡™²;7S\õ\Ğ\Ì(\ãc7\Ó$I\ëA\ñù\Ì•[\×E?\0@˜ŸPk7\Z\0\0‘\ñZŒ„`\ÛÒ”€p±Ç¬L›\õ»5\r1SE\êe\'r¾=Jı³r\íúS##!„…g—JFpQc†‰\Õ\ëHhe6ŠTjz\ã\ËøE˜€0!­\ÉMûSR?&ûû7¬µ4We¡|\î\åJ¥¿\Ã\Ùp Á\áÀ©\Øw\ÒÖŠE›=a,˜$?\"›\Û@Hµ}8\Ñ2\ï\'\0fµ­®ˆ\çLHÕ¬[3\0>¸ûV ›„\0 ª‘ju0\İY/\ÄZ\Öj\'{\ò5¶Ük|P\ö\ö\ë\0\0±vÚ£r\ó©Aú7\æ\Û\ò‚\ìÉœc\õ¼ŸJ\öK}5\à\\(¹¹•^(CA­;\éS\Õ\Z·~c\Ëi}#¨<•©¨C\"Hœ¿\ê\Ü94q™·­0£½¼ƒ\ó\ñyÿ [M	\0S!”‚wpBøı¤K\÷\\®5„°\ğ“#\rtDŒ½œQ¥Â—\íz¹\Õ\ãú:—\Ã2?w\ã\é:úvQŞ¿°.w\é/7,«¿ ÿÓ§A.±‡\ã1\Æ1\Æ} 4c\ÜD©\00±²‡»¤\Ô[ù_6VoŸ[G`\Ï}\İ%û¿\\,y›Ñ€0b{\ç:\ãú\0¤` «&\'I¾^\×~w\ÓÄœ¨µ®Ş•2\çÚ¨¨&ù_5–\ß_Yw\ßP±\r\ö\ôwk¥¢\ó¹I\ö™0²\Û\n#,Šj\î7\ëu­g.!\Z\éû}’PªˆİŸS\Äv¹\ì\ã\åQ\Ñ.ƒ°\é\äBQ\ï\Ñ×„\ç	\0\0£´w“§’@)¨\0ı\ğ—\ËÜ±W\öº\0°\ñNKÎ¾¼g¼|3\ä`SÁ{’\ænİ½2\0@¢­8\å\\”\ÊAë¨\ö\Ñ^ÈœıœSRûs\ï¢8w	§\Ğ\Úukz¡\İß¡¢ÿ$U¯\ÇŞ¾C„\è\î5ƒ³{\÷¨0¶˜\é…6›\æ\ËLi½w\r\Ô\Ú-E>\Ûş\0|i\\}\r‚•P\ó]¹\0\0\0˜Œl\nˆ{€\0¸pNCL\04\ï°,\÷\áVú\ì,\÷À\ôúg˜* „•½¶\n¦\ÉGÎ¢©\ÉI\ôH¢\ß+vLP%\\°h¡\ñ‹\ê\â€5¹#.O\õKn,\ÒR{‚¡aŒ!\îrt’¹\÷_]\âRÁ\é\Ó@ @¤ q\ö\àT»À¼\ŞX~Ÿ¾.M\Å6´gh!\İû›Y…O\Ì\ê1I\Ô\ë\æû\æUwsd¾\Ä\Äù\Î \í\è\ç?h\0°-È–\0İ‰:£€1@k\ÖÎŸ$\Ğb\æ\Å8ÿ.-­0V\î2\Öc\Ãe…;³ß­b\Üş‹Q5ıD¦)\õfş·ú{¾u|\äd8¹vL“k7n\ñ\Î`\è&$\Û#I½I\Ğ\Æ\í?G \ä\î\åA\n”Ñ‰Y„	AyH»-I\0±\ñ‘MŠ{UÉ„\Í\ñ‚*\Ã\É\Ş\õùH¢`*]°9\Ù\ÄL^; cŒxÍ‹y0o²px`>sÀ]`\Ä=\Ó\ï¸\Ímşo¥\Z:ş‹Š~\Ú½}V6ÉŸWsş‹·À\É&\0@Zh\ß\ë†O1?¸Ñ—–Oµ\0Ğ½0D©Ó‘Ç”\Ê&?Ÿ‘q\ã Ó£DEÀTµÊ‚SN\ÌÇ“\Ü\â\ÇE\ÏQ\Î\Õo¶u\õ“\0\ğ_G\òP˜Ù´,\÷‘vü\Âİ¢·o#ÀUn^¥Eúk×¬“œ øL\Ã\óœ*\ô),”J ª¼\÷¡SŞ«36<bz\Ü\èG»\è>bP\ÌJ…\ßlx&q–E\Å]PE\000\âCP:\ÄùSµH\ôş\ï…-¶q7\ÑT\Ø\ì]¢{hƒ$1L!.¼V¯X³v4*$jZÍ¦ù\ÇÀ\rt¤*hÁŒ¬¸\ó2	\Ö\òÑ¨lƒ_<\á\Å\ê\Ê\éRÁıo£\n\0¨«·j\êê­£6³-\Ö6°\ñ\ó¤\ò^²\É\ñ\È\æv\à‹=‡#Ä°Ş˜Ç±\õ\ÉQAÖš\Êqø\Ø!0\é%˜I\"K¯¨…\å\ğUoÀ\Şş%¤yc-ş3›øsú4R\Ê\âUk.g¥\ÊS=?\Ìø\Ç„YMÿ%£ú®l\Ì}ù„Ê­¾Ê./£ŠŞ”€m\õB\÷\î\å]ŸkCGu=’€¨²£>î ¨\0w[r\á\rJ\ÚEB/œùµ\Æ\Ñb[q\ï6øÆ¸û\Ü	¨Ê½\á{œw ”¸ $\0330&CkD\n\ío·’§n·ü=Œ$\à\È<T­¢|g\"\Øna\"d€\').c$¬¬\Çaª€~\öC\nÀ†\ÜÑ™½³;\Ë­#\nhtS±Ú±.	AC´w›Dü’©/\Údû\Z¥³X\'¨Z§\ôxB•\Õ\0ÿR\ÉHN\\®s€š\ö\àÀúŸ­\óww-ºOx‰\à~q\Ğ\öıM\Z‹­MI‚\äÖµÂ¸¬›\ê\Ê\íš\n›\×ˆ\òg (=1\Ém2\Ä?_\ÖÃ‹šˆ0(’\Ü2‹•¥-cªs…ˆ“>\×\Ñ€]´\nJ—/0\Ùr]œ\ØZ†€w-\Ñ€4>ƒ\0Kz\'£Á\÷2\Ë\ò_v¼3m\ÑÛ¿a\ò\İ}†mŸ\ŞovI\ZY–xµ¼º\ß\0\0ˆµÓˆ\Üg†ı€”z=ÿ\ËFı\öyœ\\\È\ÅJ”U\ä–^\É\÷g4PU\ó&©yp½¾{˜\èş–±ú‚EFÂ…\ÎXnB5\ãI@\â±1[]¡\õ±\ò\Ìamù½\á\r¢7G¼P¹\r\ô­\İ\Îş\Ç¼\Ù;3¶=“1\Z3H»x £\ä\Ô\ğ	\Ös‰R»K\Ë\ã\Ï7n)\Ğ=\Í€\Ï\ß\öp˜\Ù\0­\ñ\õ\È|\áJµql\Ã¼~Z‰\ÊÏ¶#µ?¹£u˜Ä˜Ä›UK›o“\'’»´\Ç\à~±A‚2hE¿\ğtL%ûÓ§““—v5š\åÌ…-´¼°ÀÃ¥%”4˜#<\÷^1\Ús¥¾x—¾{\n\0\ég\ÓD\óùaZ`½ºš¨g¾°\é¹h‰>¥Vo™¸‡\ì\ï@©\äŸ\Í#\Ü\n€Nk‘\r¬\çü\ĞzeW<†\\\õM\ö\æG2\ñ\Æ\Ú\é¶o<\÷ÿa\Ò;¯RUW~\Ú8ÿ¡¾\äÄ°\0>\Ãa\0\÷>b\ã{\ïß‰\à,\r \ÓÍŠ¹œ\÷\ê`\ñ€é“ŠÀùøÂ\Ø&¥B‡©3\Ï&\Í9\ĞQ›Zrç” hÈ’M\Ä\ôcÄ›\0\0R¹\æL<\îÄ…S\rd¬\é“\"±\æC™D\ò1\0ıc\õ}F§{”‘œ\é\ïU5\ç\óVŸQ\å<–¬—ÜŒ\ògœ)9\ÚR/”Jş\ã‘v\ö¸Ú¾r\ã\İsÁ}\ë0ä¡¿d¤>±\×\àfR<§’\Ğ\ê$·Z\ó\ÆbS|\ğİ…<8\Îşv‚)Ad\Ó*Mc[—\ò=±Î˜G£e»›Eûşv\ò\ÄMâ¹n\è¢â°ˆP¤9u\nÉ‡\ó]M²œ\Ù,ªüœmL5:\É&À\ÚM”¥Ú”\ÆWiRH\êu1F\Æ\ö8AyH³!kÅ€\Æ\à¾\ÜMD\æK¡_z.a8B‹TgRûPNl_)`F@\ô\çÀ\ô\ç´$·|L\ç\ßU«\è\Ï.†Y½\È\íı\'ş¯ªz›5›\Ê	.8%A²¯Ì‰A6q4\ÑÏ¦^ù\á³E\Ëù\ïCuF1/\éü\å­ş\ìwÀX\Èf0ı¨\ä\Îp„€r„\Ä&W\ÚWh²s\0\Ã ;‡\ì\ÊGÖ«\Ç\è‰é¢…şbbÜ‰R\n¥\Æ\ïmşW„m\öì¿“½ù}£\ö\Ã\"x­²…@;˜¹ ?\í\ÚÄP\ÆQÙ„M*§ü@< 	@§>#À9[ù\Ön`\Î\"À)@\Ç,EL\Z+\Ù\Üt“¢$†!›\0ûKŒ„\ó\ëÄ†PS\÷\÷|1‘§1“a\nŒDmGqH{\á½\É~W³i!`”\ö!M\ôp§w…\ì}\÷5)kıuÿ\ä!L\ç­\õ\ä\ÃT­\æ\Z\r\í\×zT«\0\0\0§ú™:É¦7\'’(w\ë¸\É&\0\0U›_\ÊOÏ«+\ï\ÚXkEw¿ˆ\ÊÏ¼\0=´›8›Bb¡¤—w¤\ã\ã) u­\0B£\òP©ø\n•\í;HG\ñ­y¬˜V\Ú€{Gk0LÎ²	\0)\ÄO$¹Å¹\ÎSX’[\â\\\ò¿?h[¦	¡g=£\î…#€B¾»5\Ç1Ä—\ÙLÔ†o\Û\ö¬ë€µ=©~Ÿû€\ñ\ÖG-’¬½Ã¢?ƒ­ÅOµ\ö\ÜÿoĞŸ_Š\ît\Ñß‹E\ï\æ«\à\Û`˜‚W~<ˆ\óo¾Q*¸3±\n)h|\ñn1±[Å¢ıGk\÷¡ªgOSµzgXxş¸~\î#ÆºEJn])aª\ì¯\Ó~ºT‚\áHt\ß\àP¥	\0#“\Ím{A4\0Ì [(y3 †=I€hŒ–…w\"\â\ÎZ²\ã…W10œŒ‚\õË×•‹€a0Y¢\í°™q?´¡\Éæ“‰vşf¹}hÃ´„\Í@\âzBJ!G×®•¨T\Ï3,úO;ş~€i\ô\å\÷«\0\ÛÇ¡&ú›Ô›z¤!\n\î_\ò¼\ï\â\0\æ´`\î\í‡\ÄÀ<\ó	\r\0ow\rb\ÙÛ©ˆ\åÖ\ì\å_jÅ¥e¹\Z,\óTûH±ÆŸ8Z.Ã®IN	:„¬\ö\î\'c\\0 \rhÖ²É…\Z\İ\0\Ä\Í{½\ğ\Ä\Õ\Æ\â…P3ÑŸÁ\Ón@\÷\ïf—‰–Cqû¡\Ğx\Õ\Ît\È)\ç²?D\é2pÁ\ïqÿq>XI§\í€0\ÊaŞ•Œ+\Ä\0\0#—Z\Ûm,,\\°/ÀE3|\0\n\öŸ\Ø{¿QÍˆ\îG&R›G\÷\Õ\ë\êd³F\ÆT®ƒW~,´ş}#)ŸúB©\àü\å$_Š\â‘2Á;1\ğ\ä\óŠÆ—‹¦ÿE®\Ûe\ï½\ß\î\Ô]yA‰æ®«ùh\"‹{\'¡mF&\ë]IQZïœƒ\Û\áø	\ñ79<ŒÏ²\ğNcI“‘0{x¤\"\0e~3r°”\n^\Æ €\Ä\ğØŠ!lf\\HQÄ–`8²¹Tˆ_M\òg3\ë»\ì.uW\Ú _¨©^¿®G\ë§\í0\ô\Çn\Í\ëŒøY/¥Í…/´\İ\Ê]´\Ü?\Ì@4\0pd¼ù·­\ÍHb\ìø_g¨\ÒF;¡eÀ\Ğ\Ó;@\ñ¿OfÈ–l_¡¤~x\"ım\n€Ç‰\ßF‡\ØøxFD\íIN\Å\0¤#\ó\"\ğ6—kg˜˜\å­j\ë¦b\İ6\ß;jûƒ`¢\ö\Â\Û\ç¯[@/\İÄ²„©,®\Õd`Jr=\å0…v\nrkb\åw\à¶#¢ÿ\ìLÿ\ğ·\Ì\Å{6¢{\Ô\ö•Rh¼p7\0<v‡·)¼©Gı0ÿzŠ9Æ˜+\0€¢#Bc`x1‘â‡¦´øù]	\'\Ô\ë\ß7,%8\Óä¿‹Š\Ï|V­]AQWo1buù\' =\ÉşyB\ë\\\ğº5\Z\ÇŒ\é\n|€d[ƒ5\0¬U±…y:²a\0r\ë\ÒQ“\Z\ç\åªøgc¥\ê‰ş\Ü\ÆM\ÆL\Ì\Ä>\õ?	\â:“\í\0<\È\ÔURqx \Ä\é\á\ŞjR²R\ì\ğ\Ø&³\0lÄµ\õºˆs7®\ëQ2©\íLW&\ë\é¢j\r\ì¹û|\Ä$ŠA\àÀ (\Æ¥\0l$F\ò\é\ã\0\Ü\êa\Æ\Ò\áu·j`½\Ø\ÚS\0\0 \0IDAT§R³¯E-,ˆÄ™\Û\àŠ·`\Ô\Ûo^W2Æ¿oXJpº™/\Ö\ä\Æ\ÑüF\Ø\0\Ã Ù‡\Ê5®\\U.‡¯Œ»\Ï\ÍÁ9%›œ¾	\0‘qx\Ñ\Ö\Ônºx‡ØŠ\ìŒE\Ç‹\ö?xÅ§\ê+\ï\İ\ğ¥‹Î¼@ŠO\İ	€¾·[IW—•u€‹IoÁú ’;\ßxef®\çFmQµç”–*U\ë\Ğw\ÅD	†µû:dR\Ñ`e\×…®\óz35Ÿ£J\ã=\ë\âÀ0(Á^\ÃqPI\×y}‡&vÓ°T\ğ~€\'§N!Y\0«L\ØÀcAé²½\ğyoŞ ±Y9»Q(D\Ï7hiIn\\wxİ„©$2g6“e\'¨¬2r2Á¬e’sV\ì=\ß(\Â;ÿÃÍÄ¦\ÜjiY\ğ£ú\è›`:U×­ù\Ğˆ‡@˜½Rz;nD*d\É&g\ãIJZ^†²[=*â¡¬š\ë`8z‹£\Ø\È\Û.â€p’¬\éQ2\Çş®¹c.\Şk\Ú?\0@\Â\ÒH³³Œ\ç`…N×¬´€Ä…“\çR\ÑşZ?Wr\ÙùÃ™»p_‚Y,\Ä\ÚQ˜‘‚\Ë\Ş\×\"\ó…_R›7l\ÌYÕ¾^ŒSŸ\0€]\"›\0\Å=û—•šÿ\Ú\Ô8„ıy¬\öœºS¥\áO™0P^\ËVX\Û\ó‹\ç	3\Õ\á\Ô\æuÅº\ô\È-“8,l†Ë‹l’p•‘\ğ\Ê\Î&\ÅeU¢\Ê€Q\É&Âˆ\êY©\ÒŠÀ·2gsŒYfÀŒ\à&€TÒ­\Ãh§yN\ÄjCiû>\ßzşz}ù½Y˜‡ ÿ\æ-\0AË¬O\ìv\ö\\7\nû~\0¸7úb²\÷µH\ãW\Ô	+Ñ›·\Ú\Ñ\ÒAC†\ôC’’\å\ö\Ì?-@\ÎO¢C\æ§@†\ß\ê\÷ûŒ\ĞE&úWu\Ê%	aI\ó¦\åi€‘\Í\ÍÁ9\Ås=$%\Ò-\Â<\á\Â^º­\Ği.\÷\" iX\ë\ã:T57/4§33\Ã@Œ\í­®\é©äŸˆ\ô³·©­«7b¨Hj\ê\0H]qA7ü\ãkA\Úù„\É[KM<…±…µ#ù€\ì\ï5\0\0¨T\ã@\à©\í’\";ÑŠ§š€\ÙÌº\÷3ˆª\åq­\Å|\ôb3(\×Uûº½}\Ê\ŞüTC\Ë\í+ªşXE\å·† \ÆHtwx{p8•Ã¡ºF&›H ìŠ*7ƒq\è*¯C–›ÿŸİ§UoÛ¨J$»%\ßz\ö\Ø%\æD­h\ãF\"y\ÏSe%c¶FQ0\Ö\ÚvÍ‡iO\õœú™°u|iJ!NQ’\æ]\Úm´!\é‚`OÄ‚W.s‡ÊµF\çg$(\0¢\â¶A\â?\Âî¡¬G¯%\ÆéŒ¼Š\äí‘˜«^?\Ñ~s|©T\ğş°T\òş Tjy’}\õ‹¹/Su5³\áb¿,`O¹\áb\ér\0Ã±\İ\ö!F•\Üù\ÌMªO$„6tY«å œ+´`\äxc\Ä\ä+IT\ÊXÜ©²\Êx/\ÒnÅˆ\ŞLroe\ã6\íÓ¶sG\Ä\Ø8*ù\ó:\0@”?\İ.\æ\ã\×F\é\ë¢\Ã\Ï\İ\"º\ó2\0@¬Ÿq\\l\÷U.\Z\0 \åÁ\ÉDªf)bPÒ—41Â‰¥\à[‘~*cdP›7æ±ŸûÔ¤ú\ìF*\Ç\Ï\'\ÊJfR“\ĞB˜\ËWŒ\Ú\öùÌ \ÒC6\nÇš\'’\Ë\ñ\Å(ÿ\Ö\n\ë,Z\Ã0(\ö•¥fSè²ËŠlr7~=\Ô\Ïdf\" *\rQ°>ª„p*\óĞ©R\ã\õÖ‹]‡ A„…$\ë.§²(ƒW³XB°°–?º\ôÁ\Ö\à$~‰Ês˜i\ï \Z\ğ—;8\ç8¨v’…5q\ï\Å\ÓÅS_\òof¬W„\Z@¨:R“\åZ¨:\èÎªƒ\îl\Ä\è\Èh£¼\ô@ÁŠj\ç3$]p\ök*5\ß5J»U]¿o\İIk\\H_\î&$B\\QT°F®8\ÃRaªÓ«\0ko´¡œ­e2\Ñ\ËÎ¯`†°D9†Aº†k\Û—=ûb”L\'x\"\ï[HÔš;7@Ø” ¸\Ï\Äú™ıW\ò\ê9f\ó07`šş“‘\õ|\Æ0‚©b4=»\ì¢\ÊV×‰ÿZ¬\í\â2\0—K[]\Ò/4œ?(u¹e•3=	\ï£\â\óN!;GH\õ»¯\ÍpY‘\Í\éi\î1¥\Õ\ã2R\Õ\\K\Z„\çn$Jû\0\0¡\ñª\r…\ö\Ã[]¦1”šÇ±%3_\Êr°¼e’Ö¬¢Bh\Ò[\Ê\í§c\ílf\â¡T\ÎM:f\ô†¥%”«;\èêºƒ®^j¡^}¾@%\ïª¬f6n”\ö\Æ¿3€\ğú}¬9\è\ÊÎ¿>\Ì#*6m\èª$„CË¬V\Ñ\ÎYF[@I*Ÿ0–\ïùŒ±|\Ïgˆ;µ+\în¢\Õ\òOFúkY•@`4’.\Ó?e,\ß\ó½z\ÇgHT\È*µO„FWŸQ€Š×\Ò\'\0Â˜ª=ù0©º\Ú*\0É¾\Ö|ü&/\ğ	\ÌDÀT­\à8g` ¤\r‚3#\÷sQ$”\èÀZø\Åş@\ñù–\Å[©\Úp:?#A8•&xP\ãœ	\á’ü\é\ÉWWo6Õ¤¸+\Ö\Ír™;,\×\è™c8U­Q\÷K\È7 (\ËYC\ãe›1û‘Q\Ú\İ¦¾\æß¨u\Z00# øeÊ¢±\î]›\á²#G]9\0\Ù[0\r\é\Ê-.\é!ªVºK¦¹Ú¶Y\Û\0—Šn\Ær@b¦\õ\àd]šÂ²\0À°Ç¸\è7vºfX”s°œ¨\Õ\ì)\'-\Ê\Õjb\Û?\Â\Z$M½^rş²Ôº\ö\ß(´\ğ\ó\ãl[0‚WSu1»¸3\ñy Xq¡,D3¿$µ®ı7$6ÿ§\î¿\'Hr\Ë¶©¸W\Z„o¥C\\V\å\öA\Û%d\×\ô\æv‡\ó(•›µnWº­6 ¡¼A\Õ*\Ê\Z\Ë\íƒ ú½r¬‡‹¼Í”®™aÀ‰Z\ZeŞ¶#ù \ì\î\Ï\È6Q¥Á™<\Z\åi=\ç\Ïf\âì…¨˜ı½:\0@lœ±OŒ£¯‹…OºJ\õt\0\0ª®0.úO\ÚEQ5\ãŠ8\Ö\nkqÀ“e¹y…g2!E˜\æ\0‡\ÅıO.‘±\ÂW©œÖ²;o\Öy„\Ğ3„	\ÕJİ¼ƒ©f¹Ì-.\Z\rØ¹?\Ò_Î„\çÉ4„øMé¯³\ëIw0~4\à›\'3I¢»OB\\ÿÀ\Ğ-ºÒµrû`\æ\ÔL•\ZO¸ÿ\Âv\×3\ìg¦\n0.G\Ø\í	\Ë\0 \ÍU]¢\Å#g\Øo\r\Î93–S\ì—5I\Êı³sÓ©û´\êŠ¾únU ù±f¨ÀI®¤DaIYqab1R\"He¥v£ª¯¾[%Q¥\'¬\\vX\'3\è\Ï`œ\ÊwKb&–™}©€\Ë\îw#\ãµÌ¼T7™i\Ãü©¡Ú“`Jˆ\ËÛŠ´S<\ä3\Ù9lµZ¹‡\é\0€;¹{D\÷`Æ‡š/µ\Û\Ú\ó4f-x+\Éev’{À”\Üy\0 ÉsL.kË¦\åo!\î`-ü€\ZÁÀD\nş	ª-ef¢¿Wo…0?®q\ö‚\ÓD\ïS¹\ê±‰­‰U\Ä\êZ\ß\Ïfy‡s@&qş\îaÛ¬¶´d\'\Ë;e…S>7l›;¡PˆN†…—\ëqÕ˜‰ 7n\è\Öú3.;²Y(p›\æ\êË§+\Ìd ¡5;¬À,Š\ó+2I=^\ñ\Ù&/·w®t$\Æ=®n\ÌUs˜“\æ\òşx\Z©\Z\0­¿Ë…¸\ŞyITBŒ\ÉWO²\Ïw\ZGœ\ô¨±Œ\r)D™ù%…Óš\æ½$+û„\Ô\Øf=\â1S\íS®N€µšÉ­Vş\ÎA»«Ê£ØœÜƒ»DP\Ğâ“‰ùb\Æ„“<ˆQy¡	\È\Üêº­€k¿Y\Òv\ßi4\ì\ï…g3^\Ñ= ±TrcF*J¬¹\Îl`†)D\ÊRİ²ø˜\Ô8c‚›1]‰\Ñ¬W[[û\Û\î\èN\n\äí’›\0\0©\Òt*0x˜V\Å\ò_Š´7³q›\î^ù\æ-c\Zæ¦¨\Ú\ßJ\Ïd\æ1IL\Ğj\Çv\åÀhš¼™È««Y´$6\ö,-¡¡/I\å»E\÷P\æ]\n\Ê\Ï5’¤ıĞˆ\Ã\İL\ô¿\å\ß\È@µ\Ú1µ³¤\å$pÙ‘M\0€˜º\÷\Åg3.\à|\ëX¡\Õ2>­/‡\ê‚\è\ì\í4eS\Ò.\×N\÷\ó2R«\İ\ÕP\ä\öÁBµ¥\rtŠ¯hN\ğg6‚78ıIV3^¢Jm£LÀT\Ù\îš!’:\É\×“ \ÚYÑ‡„Sˆ€¶+Ùƒ»	\Â”\ìTÜ¦\õn\å\ñ.¯\Æ\Ò\Üİ§O£ˆ#`Zˆ¶·Ğ½3À9\Â\ïÆ©\Ìæ’«\ŞR€¦1p\ØB°\í°)>Ì£Dt^gJ\ë\Â\Ú\Â\Èşü\Ô\êª2°rH³iü¤\Ú8–qû\æW\Üûmk;¤$~5¢\õ¶\Ü•\ëÀI¼kº“@µŠ\ò8.\è\0\0GÀI4¤†#©hg\È&I\0¦.Œ<\Èmpxœ\n\ÎÉ¤c¿\Úm$’w_T|&\Ã;\Ôú±¢¢Ç®®*‡d~:\Ã;\Ä60±ù\Æ\ô\ôd‹”Œ\à‰ \ğü\ÄB\ô¶\ÂeI6§¦\Â\×#ı\óŒ\\\ğ`\ã\ĞB$(_]\óÑş[BX\öÔŸW\Ç2I\Ş\Ü#\rV´¿\ĞWùæƒ‘y*\Ã6E\çLRùı»\÷Â¡ùµyC`Í…Ï”\í]ø\ã€/¯¦ê¹Œ\ëV±\n\Ã\']üs\á\Òd­c\Ä{\æV6\ÜV˜@©2;\É©‹L‰\Ş»\Ô\r\Ë\â-¦Ô£¹¬‰¶rg\Ù,\æi{\"‡\æ~!±&\ë7ºD`Y\îƒa\ñ\ée¥u\ÅÁf37UXd²\ÙSZo”J­/º\å‡3šZ?š\Å\Ü\Ï\r\öP\óÑ¬–¯\×PÀ\ZYŠ¯,—\ò\ÑX3vsrû©\î¤I\0€X?\ã¦R{\×\êqOXV¯U¼\0 \ÑÎ§\\v‡?ebt®\ÛÀr¡ü\äP,\Ú\÷\å\'v$­£b„¯ú›‹¼CŒŠH\Ë\×V=4€‘‰¨ŸV\ëY\Ş\áVn°b\ëKc\ğ–\àŒŠ\ÑC‰~vW\ã\Ô/K²	\0Ç­¿\ó¦q{h\Ëï±„\Ğú¥~­Í¶\ö³ù\ÚmS‹g’?›0\\ª\ßÇ‚\Â\Ï&ú[\ÙúïŒ€^¿½\Üh\è}m€¶ÿ¹úM³\ë²¾\ñ¢]O\Û\ö\Óÿ(\Øk\ğF¢\Ö2\Ö[Å¾\Î\ÄMã““\îû„&J6-+y%\ê’û’\íÃ…¦£\ì:¾”¸\Ü\×},\Úÿ\àL?˜Iz\Ã2RVnµ´_\ì—prJ\ö£\È\Úù‹\ïp…\às\Ş\ôƒ™y¤6å„¤\òcÕ–Ö·t\rO\å>­ÁÜ£Rû±\Äx}Ã¢Š™¹\êmÓµ¦\ö\é~Z8}\Z)8´şµ¶\òÌƒ\ò¦n3%ü\\¿c\î¹,\'\ÚJObF¢.»\÷]E\îR„kGI0‹\0\"\íL»¾4¼¥–\äüÇ“ü\ÙL\\µ\ì.\rw”$\İ~ÀƒD°{uv©\Üøœ7ıP–w¬\Üi‰‰\õ¯Ğ¶\á%\ë¨×Ï¨\ÕwMu®£ü›	W[OlS@f¬(™\ö\ë™]%\î&›H\0²‹?\"ˆ¥\ÒÈµrgfx•k\ïG\æK\Ç\ÌdĞ–\Ş?cšúo\Öjh\ÍH„›Mı\ç¤ú\Õ\ÇEw~ƒi2\âƒ;\õÈŠUr¿2\ÈXj?Ÿ¨Ë™”O\Ñ\İ+ª\õ£GšM\íi…ha³\ë|\Í6Zù_\ZW\ß&\ÛW)kcê««‡‹ıM:\È\æb\æ9v”\Ì\Ü”U†/¬bTDJ0{]½»µŸ\ëÇ‰4‘%\Ä\Ì|\ä·Æ¸Œv°¤\í„\åe(“¨°\ã\\f\ËÀ²?1\Ü\ç»\ÇC*53 Ü¾R\Æaş#\Ë\á\ö®+‚%	\é\"_­\Õ\ô–$Ì»û\óT\ê—\Ä\Äq\êÿ­7\÷\İ,qj_#Ë›6\Z\Úoœj ü\ñH\âTÜ³“%u\' ÀB\÷\Ô$€/I‹³io&\Ê\â‰Àx5\ãN\×\ÏÈüÊ§\ë-\ãS;Í‹z€\æ„\Ä\Ü)\Öa…‚sŸ[>±\Ä\Ä\çYÙ™\Ô\Ö\Õ77lıg·³pj \Ã,è¿¡/½¦3V3²NÅ±¼\òXI\õûªn…Ğ…g\Ä(\ì\ğÀ9g(heD\é1J‚7e†°¼»ù>-¸ˆg¿\ÇPJ\Æj%\äT-¯\Ïw.z\íQª±r\ôf’?—o\õ\öŠ8\Îß¶\İu\Ş^\ó˜\0\ÃC­\é¨\ÔşG¿tb\è\\E k½\â\"b\è\ë~Oi|%UjE\æ\Ë\÷S\ô¥\÷\Í4›úon/Å†p­™ÿyÅ½\ò&\ÙÛ·\ñû™\è‚[~|Ù²œ¯\ö3’H¦\0À@$\r³?\ò”ŠŞ“\İ\n“\Ä\Ø7\ñj\Í Ì”ƒ)±\Üuºs Cúˆ_Ab,¼Q.¡\àJ´\n,\ğMº†\Ñşf#}\ö*œš‡Eo\0\Ã)”_ü\àœ;\óO¿\İl+…(zlV\ç5€5MDI¯\',ÿa¥qSQm\Ù8‰0œ€³\ï\ë\rR°ÿz\Ğ@p«\ä|­\Í½Q<\ó\ÉLºÚ¾Z–¢\Ùı~ùÄ¯\Ö\å<Cˆûˆ£€s®p„rB2\Í\Úq’‹½\é‡lIjüıvıµZ\ÈJ	L!\Â\õ\÷o6\ó¢Hş\\¾aŸú\Ñ3Œ@‹·`y«8\n\Î\÷ı«ä²ˆ\Ú\Ê{\ßÿ\é\ËßD\ï;C3iCc±$\çÚ¨¨ (#B\õl\õ[b„NŠœ0g®ç‡‰gu]4KPN#¡ p\ãFœd\×†S¹\Ù\Î\÷eu\0EmAZ=¼\é¡\æmÁ\áŠ\Äc\ã8I²qn$,›\õ–üI\ñi =e\Â[[	F3\æŸL”\Õy1œ\ÚX$\õs*À\ŞoşJ#2N\Å\Äù¡€¡\ÕZ„º2\Úúı\ÄT¿K\ô+™…Uu\ç\ó\õÖ¹Ÿ	½\Üa\îg•:k\ó¨~\ñgº\Ö„Yû©f;ßŸ\06Í—\òÎ¡¾ÍŒSSÁµšş\r<ıÃk+wl$ª\Íkd!(B3\ßÿ\íF+ÿ\n\Å\ŞC\ö*œ½°±\"­\Ön%<Q»}\àhø¥%”#9˜\òˆ	¦\Ì\Ëİ„Gz±\ÑV>BY´œ ±\×\à\Í\õ×‰b\ÑıRŸ˜¨z¥\è\í[8\Ã`.}8X/¿¯ÉŸ: <B\å\è©r–\×\×ÁUıÿ\í\İy¬\×]\ğ\ï9³ß™¹s\ç¾\Åo\÷»nÜ’8\Îb\'iI¥„&	\"€BBbEQªŠTµA´H$ÿ\ñG…D“:‰QiR\n!kQCœ6M\ì\Ø\Î\ó³\ßr\÷m\î\íşx~\î\ó[\îb¿›¦\Ñ\ï\óß“\æÍ™{f\æ\Ìo\Îü\Î9»´Ô¾W\rw\İh•\ôl®^S\ì\ë\é\î\Î?”_œb—o¶¸0n/\Ë7F\\ÿ\÷¤Ÿœ™‘m€±¥&FÕqû\óow\î\Éj\ë\æ>N3Ë¢\åÿı‘|£Kg\0\ã•f¢6<5g\ÈÑ½k\çHGsÅ†ùL\Ã\ó\ÒB}\ÜÀ\Ò\Æ%Sı(Õ‹•K\÷Z¬/K¦´¶\\Ø”\"O¤\êk\éè¾\éj\âù•ºù SÂ…(A£\èa\ádt\î33>¦˜%\ÖA7¸\åŠkQ‰}(’İ¹\Ò`L\Ğ49š‡E@´¢\\¡À&TÕ¸E*\ÊMV\ó†\Ëe°\Ôr\Ë5\í>®&+\í•\É\Î\÷\óÌ»\Øf³¼H\Ôq-Õ¯ø±<5 „ùı•šûûRÀ:\ñ\Ûi\n!\\Œ\ó\õ}v\çfou[)Ã¡•†v§Æ’Z[Am\Ê\ÂB?mP²^3r\ç„øë—¯\íf©\É\ÆT	?‘\ÈZ\æ°\Ş\Ú}E›­µ§tUÚ¿Rª³c†¦ 6b\Ém_f|¿ş\\•½q€Ç¹ıZ0Á@	vq\ç\â§g›S\ßı«J\İ|Qe\á«\î¥	ó——™­eµŸC\è\ÜoøVı\ã\ë\â\éeU\íwZl\"•\Èk\n\\»\÷*	\0\ÔÖ¬\ï_/\ì2EMwQÌ¢¿\ö¦Tj|›ùÿ{k.x\ğ™İ„}\ö‘_“ÿ\Õo\ì\Ø\Ûx¹\ìıÖšÍ¨‰«©U6\Ïo\Z%D™%!”f”Ø‹©pV¾\ê›rş\êJdZ¥\æş‰sñ¹µ\0\à¡û\èdOµ„Q“\0&\ô\Æ>Ó¨\Ğ\×F}«½‰µ\é5\æ6ş)g¶\Ï]\ÍQ”Ë™cV\ëÀ\Ã\ÖÊ±mG\Ä,¤†­\òZ£¯Q\ö\ôú~ı™neU*\Ş\êÁ\Ü^¹†ŞR”\ö\æ…\â\Ì$V1NŒRœZ\Åÿ\Î\å*Oo½7Æª\åü£¹\÷ur-!~Mj\Ô\ĞqN…Â¬Ä‰Qú?ß¯ıK·\ãº\Z\å²ÿ\ÇZkzVM²ºŞšR”p\óo	3 2¥D •„\î|š\Ï\×ş\Z¯=_.{½šººÖœ\ãƒ\Í\Ô(a}>N/<u°~_c\ö\Äw|şK\0P­új\İ>\Ãh\î\ŞT¸@\èœC¢U¢\ÔZ}\áŸ\'¹Í²{Ì®/\Ïşev\á3›*\'¶–¹gÛ‰U©Qù7\Ä\Æ\Ñ\Ş\õù>„YK„ÚŠ#g>\õı\Úcƒ\Ôgµ\äÿ‘Ö™\Ù\Í#\×ØªŒ\ÕD\÷ş§‰\ã\ÒÀú®ú\ä…\ìÔ©\Çzı_¥\â= ¶&\ïqw\Ù¯\İ8³ˆ\È;ÕŠŒe!x\"9\0˜0›-­zP\Û$\Ög¿›\İu\ñ\ñ\î\åeY\íŒÿ<=E]kÎ±\õ\í°z\Ç\ÎY$j#†Öˆ\Â\Ì\Ò\Å|¾ò••\ğaj¹l\Ö.\ÛmÔ¯»¢<E\ì\çlFE&HÀ9oûÌ¬rŒ\æÜ•KE\Z5Ô§¿ıŒï—Ÿ\ëV\â…rf&“:\à]x wÅˆr%@;ûv”x\óÁ;\0\ç\à¡\Ë\Ìú\Ûh\\\Ç×Ÿ\Ó8sQ4\'¾w\Ñ\÷_B—5\Ö\ê,oGş\ç\ô\Öne\õ\Ş\Û\ó“st\éZ-JŒJ\"Œ\Â\ËŞ†¹\Å\ÍUnú3«pk\0Zc/\×\â\ìÉ¿\Ûj\Ô{¥\æ|Q¯\î\×y\ì\ZFsÛ¸º\Ñ\åkA«E©µ\"R{ùI\ß	\ß*72wh­‰‡y{TU#_3š{6ıÔ¨!\É\\‰D©^‘q¦ü\ìˆW}¡[=oT+\å?g–\Ìh­¶\è¯?.¡Õ¢s6\æZù\'{\ô2^©¸_\Ô+t5\õt­¹[}H­\"\ëB\Ò\ö\Ş>\É$o«±\Ã<\ò55\ò4£9‡µ©Bk\"v\æE¢4¢({.‰¢\Ú\çû\í\ÌXl°Q§\ö\ñ?u—\ï¾\Üø\Æ\Ö\"‚\é\çŸ\ô¼Ö¦\\\ÔR\É\Ô\ì\Ì\äx\ä\è\Û\Æ$V‘µ˜\n5ˆ\"\çt\êûÍ¿\èv?\Ó\'W\ã\Ù\õq‡\à)bûŒ\è\ä\Şi	£q9\îP\ëû,«vP[¥ƒ\Ú\ì³U\ØÁ\×}3\è\Zÿ\Ôj\Şßª\õ½‹\Ã&øú67\Î\\@b–¡7£\ĞX¸˜­|¹Û¾Ö«½\ß\È.\ßw—².\'º9ıeg\â½\Ï\÷»~\íxÏ¦\Z„\îÊ]—qR\ÂX\á`†\ñ;ÀY¹†e\ì{\ì\ñrúü#Vıú«td\õl\n£v€µ]—`Œ\ÍeÙœúnE˜\õ¯˜Û¿\Í\ô’\Ï¯”\áÎŠqy\Ì.µ6>ü\0\\º97¿	¢=şj\Û\ï¿\è\çºš\0 $\ì¥;º¾\ÖiÁ4´`ZZ Õ§Otù|$¥4œ§Z£¯ı–½r\ìŠ}*¡;¼\Å<5\êsO\r%ù[M3\Â]¹³\ë\ôF0\r\Ó*\0ŒU‘¿ºiÈ´8\ÚÅ£\Û\æ*\áH¯\ïl}S¢ld¯\İşw	£¾ \ÇÎ‚\ìn—l	#ûı0ûŞ½­=­=a¥\Ö\n\ê“\Ïs¥¯ú\Ü\rX­OÉª\ğ«O.4\Ù\íúS\â\ì\å)c†\É\÷kÏ•\ÕLµb<ıPv\ñ\Ó\Ù\õejÁ$´`\Ò\î5š\à1B\ïÇ‘P[iMÁ„¢Ø…£™M/\ëp¡À¨\ï‡h\0´x\æø‡lº™\ä\ó\ì\ñ2^û\í\È^¸\Ş^ş”½4p¡\ô\Õf«3vş\ë\í4ƒ^\ÛNçƒ…r;\óµ\ê\Ü7\Ï]ş\í\á\Ì\Ó\ì\Ê\Í:*7w\Íuk¾\Ùi{\'\Ï/\åZÿ\àw	4×˜\Íı©Uºi\ó©¿t\ÏĞ…\Ò\Ñ\Ó\Ïlº\İ\']Y¬·\çZ€\Ä*7¶›^IkM†v\ñ\è¶úºkA3Ğ´ÿ\0À•g\Ê7ZJ{ûé˜•Ğƒz\Ü\0\Ì\Ô(¡©g\à”7:±Ñ¸nSG\Ò\Úq\ĞŞ‰üş:Ş•`\"²+·t<ª´G`µGÔ}ZaŠTì•»2[¥<v`Tq0Ád52úoƒ&]Y¬$ùB\éxü­¨q6\ê\õ¼TÚ£°Ú£\n\0+U{¯¬t2:]`§“\Ï?bW?1m•›À¥ºm\àF£WÜ±(“\ß+›fı3¦\\\ìUk„\ö\Ê\Ñ-b¸\ô¬W¨\é\Ü\ñ\í\Øzşhıx=~ı“Ù‹\÷_\ó’ß½\ì|.œ\Ò\Ö\Ãì™¾·\Í\Â<\ße”Ï³¯”\ñ\ö}\÷½{2…#\Ñ\ÚË»¥¤¦F\rÁ\èk\Í\È,,$a\ó‰]şµ\"\Î\çÿZ\åV±’¹x¿S<\êjÁ\Û*\è\\³ú\ô~\ZŒ½Ş€\Z=\ë»A_\ŞoKÖ»§Î·›\'Ë‰û\ZRı˜]:ln®·\á=/©ƒ\\/‰^¹\ê W*®\ÍA%,ºü\ĞLY\ØwY©^\êùe!—k/¥¯\î\Ø~£¾o‹ûV¬\Ã\Ğ\ëS\0\Ê0\ëQj¾\í \ï/-3vº>û­\ßÕƒ¹¼Yº1³1ea38³ˆÀ{«™fJ\ä…\Ñ\\§¯¹\í¢\Ì<˜`L‹w¼½vR\ä\óx²X³$û¾\ñ°Yş¤cTj\ë{¿¶\"xŒ\Ø>+:#?l\n5(§<yj\Ô\í¼\ÛO‰y+8‹}¡\Â^ø\æ\çœ\â­\ÎV½\î\ëJC\è,\È`\ô\Õxø_ù\\p\"\ßgªGbµ^×§dÛ§,¦JP\n³g&Á\Ú\Åm·\Ó\Z\Æ\0\÷øÇ™‹H´ş¦¹”}n·QÂ¢mPlû¾ÿS­\Ñw›\Æ9 \Ä\Î \Ç+¼¸š6È¬|³µ\ë\ö\èÍ½™\Õc\Û~ĞTúo‹@jµ¾ÚŸ\Õ\ô\ö\å‚|\ë3\÷\Ô\İN\á6Gk\Í\öw¼\ÒLŒ\Ò|\Şo>\Ñ\÷%3\è\ë7–\Ø\Ş\ÈV¬û§;\ÙS·±K\ç)VZ\×<¦f+;ş½°[EŠÁ¶ƒ7\Æ\Ævjpf—k\ÎRÈ›\ô\Ä\çjk—\É\â¬Î \0JG&z1ˆ¬\å”)\ÑR\ÄZ\ß\Z\÷\ä?5+`*\ö/	\àj{TU£MMRgBi¯¦d\nQ¢Tc¦\ğ7\ò^\ó\ÙA\òqŠ\r\ö1‰ş—•\ä*\Îv\ËAYS¨\Øp¡\İm6\÷\èj”7†\È\\nGÎ¹˜CÛŠ¬q\0\0vIDAT\÷ış‚\áA”š\ìz!Ñµ\'|£1¯\\Mo1`GdºE\×\ò‘\õq[¾	\0\Õ;\ô=…”\æ\â­zMP\Í\Ôj\ÕşM™š×›=&=L\"ræ›‰±˜p>‘(¡>\ìú,6\ØA	Œ\rR\Æ $ \Æ]ùÒ ÿW.‡\0\íS\Ç\Õ\ö8\×;\ã¤8„Ò‘Bi†If)jCwX\ë…\é¼\ì{•®bÀ¦dŠ&\Ô\ç¥G\î\è=;‹©¥šy7“üSJjgx0®\é\ñˆ‰Tg€€P\ÃT¨µ0\É,&©†\Ğ\â—a‡/]Ë¨\Ùr›\Í ´–’O\ê­)EM}ƒG\0„$‘±\ÔN´‚\à\'K²\õL¿ƒ%\à\ôifx»\Ğ\×ãŠŠsyk\óù¿\â<wpzll\ë‘\è\å»#`­.\ğCÏ“•¥&S$\öû\0 9N\Ûr ¹1+-vC\"\Ğ\óCm¯\÷0\ÄX¡;û-[\n,\ê’8\Æ\æ5M·p5múbİ¬r\\şŠco¯\åI®W¨²\ÃPúo‹U@ú®\èYW(0GÑ™7\ò\ØW\ô`\Ò`±³UÜ±³\õtÎ”\ç\Ù©\Ín	zÁ)Cyût¬­.³¬§á†µ¿IŞ’¯²~\ìx°ùa²\Üd\ã<ÁSÕœ\"K²°–J¬Œe1\ß-\ïg\'6¥HŒ$‘\ê)Š\âH-¬\Ä)š‰À\â‡e\àÀ•˜¾\Ü\Ä\ÇXªN¨\0“<9?\â\âİŸ\õ\Õ3>J\n\æ@\ÃÉq…§qœ$g&rƒ5^mL­v0-$&“HuT¦¨	\ë2A\Ã`8¿s«\Î|´,.²Œ\î`.FTi¸‰L…%\r\ÉPu1?\è\0•\Ş_©a¢a„\Åj\0\"–Ô²*\ÎgV(ı\Ô&\ğ&\äj5›l<a˜J\äO\âD\Çr\ÑÀùCP\Ü\ña\ô‘6	!„B\ÈO\×\Ï\ì¤\î„B!\äÃ‚MB!„24lB!„¡¡`“B!„\r›„B!dh(\Ø$„B!CCÁ&!„B\Z\n6	!„B\È\ĞP°I!„B††‚MB!„24lB!„¡¡`“B!„\r›„B!dh(\Ø$„B!CCÁ&!„B\Z\n6	!„B\È\ĞP°I!„B††‚MB!„24lB!„¡¡`“B!„\r›„B!dh(\Ø$„B!C\óÿ\\!<Lf½KQ\0\0\0\0IEND®B`‚');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_analys`
--

DROP TABLE IF EXISTS `stock_analys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_analys` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `stock_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` double(7,3) DEFAULT NULL,
  `debt_equity` double(7,3) DEFAULT NULL,
  `promoter_holding` double(4,2) DEFAULT NULL,
  `roe` double(4,2) DEFAULT NULL,
  `roce` double(4,2) DEFAULT NULL,
  `profit_aft_tax` double(7,3) DEFAULT NULL,
  `divident` double(4,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_status` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_analys`
--

LOCK TABLES `stock_analys` WRITE;
/*!40000 ALTER TABLE `stock_analys` DISABLE KEYS */;
INSERT INTO `stock_analys` VALUES (1,'haldyn glass ltd',68.300,0.070,57.90,6.55,8.16,10.300,0.88,'2022-09-19 11:29:09','2022-09-19 11:29:09','srstock1',0),(4,'Ador fontech ltd',87.100,0.000,39.20,19.40,26.90,15.100,3.44,'2022-09-24 11:00:08','2022-09-25 00:42:12','srstock4',0),(5,'Gujarat pipavav port ltd',89.000,0.020,44.00,9.67,15.00,5.990,4.50,'2022-09-24 11:02:06','2022-09-24 11:02:06','srstock5',0),(6,'Federal bank',117.000,10.400,0.00,11.00,5.00,39.400,1.54,'2022-09-24 20:47:33','2022-09-24 20:47:33','srstock6',1),(7,'Vikas life care',4.750,0.030,13.30,21.00,25.40,309.000,0.00,'2022-09-24 20:54:59','2022-09-24 20:54:59','srstock7',1),(8,'Itc',346.000,0.000,0.00,24.80,33.60,17.400,3.32,'2022-09-24 20:56:05','2022-09-24 20:56:05','srstock8',1),(9,'Suraj ltd',73.600,0.380,74.70,3.31,7.50,168.000,0.00,'2022-09-24 20:57:24','2022-09-24 20:57:24','srstock9',1),(10,'Rubfila international',91.200,0.000,57.20,21.10,28.40,4.680,1.92,'2022-09-24 20:59:35','2022-09-24 20:59:35','srstock10',1),(13,'canara robocco',0.000,0.000,0.00,0.00,0.00,0.000,0.00,'2022-09-26 10:51:53','2023-10-10 10:27:21','srstock11',1),(14,'Axis Direct Growth',8334.000,0.000,0.00,0.00,0.00,21.000,0.00,'2022-10-28 11:21:40','2023-10-10 10:26:51','srstock14',1),(15,'Dignissimos aut eu s',478.000,12.000,12.00,2.00,12.00,2.000,2.00,'2022-10-28 20:35:48','2022-10-28 20:35:48','srstock15',0),(16,'metals & FerroalloysIMFA',235.000,0.240,58.70,33.80,34.30,22.000,4.25,'2022-10-28 20:45:20','2022-10-28 20:45:20','srstock16',0),(17,'Navi MF',1.000,0.000,0.00,0.00,0.00,0.000,0.00,'2023-02-09 10:03:57','2023-09-03 11:39:09','srstock17',1),(18,'gpipavav',102.000,0.040,44.00,9.67,15.00,55.200,3.94,'2023-02-10 10:28:55','2023-02-10 10:31:46','srstock18',1),(19,'PREMIERPOL',85.200,0.230,67.00,10.00,10.00,10.000,0.60,'2023-03-14 10:15:18','2023-03-14 10:16:01','srstock19',1),(20,'Nifty bees',191.000,0.000,0.00,0.00,0.00,0.000,0.00,'2023-04-05 09:01:41','2023-04-05 09:03:46','srstock20',1),(21,'RBA',115.000,1.410,40.00,23.70,6.97,26.500,0.00,'2023-06-23 10:14:12','2023-06-23 10:15:00','srstock21',1);
/*!40000 ALTER TABLE `stock_analys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_names`
--

DROP TABLE IF EXISTS `stock_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_names` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_names`
--

LOCK TABLES `stock_names` WRITE;
/*!40000 ALTER TABLE `stock_names` DISABLE KEYS */;
INSERT INTO `stock_names` VALUES (1,'Delta Corp','2022-06-15 10:44:57','2022-06-15 10:44:57',NULL),(4,'ITC','2022-06-15 10:48:15','2022-06-15 10:48:15',NULL),(5,'Vikas Life','2022-06-15 10:48:58','2022-06-15 10:48:58',NULL),(6,'Federal Bank','2022-06-15 10:49:16','2022-06-15 10:49:16',NULL),(7,'Franklin India','2022-08-28 00:40:24','2022-08-28 00:40:24',NULL),(8,'ICICI Divident','2022-09-05 19:54:34','2022-09-05 19:54:34',NULL),(9,'Rubfila','2022-09-07 10:49:32','2022-09-07 10:49:32',NULL),(10,'Surajltd','2022-09-07 10:49:53','2022-09-07 10:49:53',NULL),(12,'canara robocco','2022-09-26 10:51:53','2022-09-26 10:51:53','srstock11'),(13,'Axis Direct Growth','2022-10-28 11:21:40','2022-10-28 11:21:40','srstock14'),(14,'Dignissimos aut eu s','2022-10-28 20:35:48','2022-10-28 20:35:48','srstock15'),(15,'metals & FerroalloysIMFA','2022-10-28 20:45:20','2022-10-28 20:45:20','srstock16'),(16,'Navi MF','2023-02-09 10:03:57','2023-02-09 10:03:57','srstock17'),(17,'gpipavav','2023-02-10 10:28:55','2023-02-10 10:28:55','srstock18'),(18,'PREMIERPOL','2023-03-14 10:15:18','2023-03-14 10:15:18','srstock19'),(19,'Nifty bees','2023-04-05 09:01:41','2023-04-05 09:01:41','srstock20'),(20,'RBA','2023-06-23 10:14:12','2023-06-23 10:14:12','srstock21');
/*!40000 ALTER TABLE `stock_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_orders`
--

DROP TABLE IF EXISTS `stock_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_orders`
--

LOCK TABLES `stock_orders` WRITE;
/*!40000 ALTER TABLE `stock_orders` DISABLE KEYS */;
INSERT INTO `stock_orders` VALUES (1,'1. Servotech Power Systems Ltd\r\n\r\nProducts\r\nThe Coâ€™s product portfolio includes Medical Grade Oxygen Concentrator, UV-C, Solar Products, Solar Power, PV Port, Commercial LEDs- street light, flood light, Flam Proof, Hi-Bay Light, canopy light and tube light.\r\n\r\nClients\r\nSome of the clients of the co include Indian oil, Bharat petroleum, HP, Gail, AU Small Finance Bank, Hindware and a lot more\r\n\r\nPROS\r\nCompany is expected to give good quarter\r\nCompany has delivered good profit growth of 21.8% CAGR over last 5 years\r\nCompany\'s median sales growth is 29.9% of last 10 years\r\n\r\ndividend of 0.52 promoter holding of 60% also good fundamental data',1,'2023-08-18 11:07:26','2023-08-31 02:27:48'),(2,'2. Ashok Alco-Chem Ltd\r\nProducts and Application:\r\nThe company\'s products are under three divisions:\r\na) Chemical Division:[1]\r\nThis consists of three main products viz.,\r\nEthyl Acetate: It is used in a variety of coating formulations\r\nGlacial Acetic Acid: It is used in paint, varnish, lacquer and related products\r\nAcetaldehyde: It is used as an intermediate for the synthesis of other chemicals\r\n\r\nb) Ceramic Material Division:[2]\r\nThis consists of three main products viz.,\r\nBall Clays: It is used in many different industries, but in particular form a vital component in ceramic manufacturing\r\nQuartz: It is used as a gemstone and in electronic applications\r\nFeldspar: It is used in making the body composition of several types of porcelain, china and earthenware and also in the preparation of glazes and enamel. It is also used as an ingredient in glass sand batch and as a bonding agent in the manufacture of bonded abrasives\r\n\r\nGlobal Trading Division:[3]\r\nThe company also commenced trading in some mineral products mainly for exports like:\r\nCore Minerals: Bauxite, Bentonite and Kaolin\r\nOther Minerals: Gypsum, Bleaching Earth and Iron Ore.\r\n\r\nCompany also gives 0.4% dividend and promoter holding is 55%\r\n\r\nPROS\r\n\r\nCompany has reduced debt.\r\nCompany is almost debt free.\r\nStock is trading at 1.16 times its book value\r\nCompany is expected to give good quarter\r\nMy view\r\n1. The products are the raw materials of paint and other materials. Quarts are used for electronics. So company \r\nmust have a good growth',1,'2023-08-19 10:41:39','2023-08-31 02:28:04'),(3,'3. Vikas Life Care - NOW I HAVE 200 STAKES THAT IS ENOUGH. Don\'t make more investment due to promoter holding is only 11.4%.\r\n\r\nUser Industries:[3]\r\nAutomotive Components, Footwear, Electricals, Hygiene & Healthcare, Agri Products, Chemical Components\r\n\r\nClientele:[4]\r\nHorizon Global Ltd, Relaxo, Zara, Bata, Polycab, Havells, KEI, Biotique, Escorts, Nimbark, Navratan, GAIl, Gujarat Gas, etc.\r\n\r\nBusiness Segments:[2]\r\nCompany deals in various business segments including Polymer & Rubber Commodity (bulk consumption) Compounds and Master-Batches, manufacturing Up-Cycled Compounds from industrial and post-consumer waste and scrap materials like EVA, PVC, PP, PE etc. Company is also a Del-Credere agent of ONGC Petro Additions Limited, a public sector undertaking producing a variety of base polymers and commodity plastic raw materials. In addition, the company has a division engaged in Agro Products Business, and is empanelled with NAFED â€“ The â€œNational Agricultural Co Operative Federation of Indiaâ€ and HOFED â€“ The â€œUttar Pradesh Horticultural Co Operative Marketing Federationâ€. At present, company has diversified itâ€™s business interests beyond raw materials (B2B businesses) and forayed into the B2C segment with a host of consumer products for FMCG, Agro, and Infrastructure Segments\r\n\r\nFuture Outlook[20]\r\nCo. plans to start various activities including Food and Crop Protection, Food and Crop Preservation and Storage, for developing and using modern techniques and facilities for cultivation like Green Houses, Glass Structures, Micro Irrigation, Hydroponics, etc.',1,'2023-08-31 02:21:27','2023-08-31 02:27:26'),(4,'4. RUBFILA\r\n\r\nMalaysia along with Kerala State Industrial Development Corporation (KSIDC) \r\nmanufacturing of both Talcum Coated and Silicon Coated Heat Resistant Rubber threads \r\n\r\nRevenue Breakup\r\nIndia - 79%\r\nAsia - 14%\r\nEurope - 1%\r\nAmerica - 6%\r\n\r\nLow debt good dividend and promoter holding is 57%\r\nThese company products is used for almost all fields like automobile, aircraft, health, mattresses etc',1,'2023-08-31 02:28:06','2023-08-31 02:44:08'),(5,'RBA Restuarant Brands Asia Study before do further investment\r\n\r\nhas established ~260 restaurants across major cities. The company is an Exclusive National Master Franchisee of Burger King in India and its subsidiaries are Exclusive National Master Franchisee of the brands Burger King and Popeyes in Indonesia\r\n\r\nProduct Offerings\r\nCompany provides variety across its food offerings, which include burgers, wraps, beverages, sides, snacks, shakes, desserts, etc.\r\n\r\ncompany gives good quarter but fundamentally week. because they developing their business',1,'2023-08-31 02:45:26','2023-08-31 02:48:45'),(6,'5. Suraj Ltd - study before invest\r\n\r\nSeamless Heat Exchanger Tubes, and Seamless Heat Exchanger. \'U\'-Tubes, Seamless Instrumentation Tubes, Welded & Seamless Mechanical Polished Tubes, Welded & Seamless Electropolished Tubes, Seamless Pipes, Seamless Buttweld Fittings, Flanges & Stub Ends, and Forged Rings.\r\n\r\nClientele\r\nThe companyâ€™s end users include Samsung, Maersk, NTPC, ONGC, TATA group, NMDC etc.\r\n\r\nExports\r\nSuraj Limited is a Govt. of India recognized Export House and is selling its premium products in India and abroad to more than 70 countries all over the world.\r\n\r\nCompany has high debt and not paying any dividend. Promoter holding is 75%',1,'2023-08-31 02:51:41','2023-08-31 02:54:00'),(7,'6. Premierpol study about business before do further investments\r\n\r\nProducts & Usage:[1]\r\nThe Company carries business of the manufacturing of Vinyl Flooring, Sheeting and Leather cloth etc. along with Flexible PVC Flooring, Film and Sheets. The company\'s range of products include PVC Flooring, PVC Sheeting, PVC Flexible Film, Calendared Leather cloth, PVC Geomembrane, High voltage Insulated Mats etc.\r\nThe products of the company are used for a variety of industrial and consumer applications e.g., PVC products, Transport Flooring with Silicon Carbide Flooring for Heavy Traffic application, Artificial Leather, 100% Shock proof insulating Mats for Buses and Cars, PVC Sheeting for Table Covers.\r\n\r\nThe company has a marketing network of 90-100 dealers spread across India and has established relationships with end users such as the railways and other customers. The company exports its products to over 25 countries across the globe\r\n\r\ncompany has low debt and good dividend and promoter holding is 67%',1,'2023-08-31 02:56:17','2023-08-31 02:58:14'),(8,'8. GPPL - invest more if you can\r\n\r\nGujarat Pipavav Port is India\'s first private sector port located on the south west coast of Gujarat near Bhavnagar. The port is strategically placed to on International Maritime Trade route which connects India with US, Europe, Africa, Middle East on one side and Far east on the other side.\r\n\r\npaying high dividend and low debt. Promoter holding is 44%',1,'2023-08-31 02:59:51','2023-08-31 03:03:23'),(9,'9 . Federal Bank',1,'2023-08-31 03:04:42','2023-08-31 03:05:13'),(10,'10. ITC',1,'2023-08-31 03:04:45','2023-08-31 03:05:31'),(11,'11. Nifty bees',1,'2023-08-31 03:04:46','2023-08-31 03:05:50');
/*!40000 ALTER TABLE `stock_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_sells`
--

DROP TABLE IF EXISTS `stock_sells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_sells` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `finyear` bigint unsigned NOT NULL,
  `stock_name` bigint unsigned NOT NULL,
  `sell_count` int DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `sell_amount_single` double(8,2) DEFAULT NULL,
  `total_sell_amount` double(8,2) DEFAULT NULL,
  `buy_charge` double(8,2) DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=true 0=false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profit` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_sells_finyear_foreign` (`finyear`),
  KEY `stock_sells_stock_name_foreign` (`stock_name`),
  CONSTRAINT `stock_sells_finyear_foreign` FOREIGN KEY (`finyear`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_sells_stock_name_foreign` FOREIGN KEY (`stock_name`) REFERENCES `stock_names` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_sells`
--

LOCK TABLES `stock_sells` WRITE;
/*!40000 ALTER TABLE `stock_sells` DISABLE KEYS */;
INSERT INTO `stock_sells` VALUES (6,2,1,5,'2022-08-11',192.00,960.00,17.00,1,'2022-08-11 11:48:19','2022-08-11 11:48:19',-221.00),(8,2,7,4074,'2023-02-08',1.74,7103.00,3.00,1,'2023-02-08 10:33:20','2023-02-08 10:33:20',179.95),(9,7,13,10,'2023-07-24',10.00,90000.00,0.00,1,'2023-07-24 10:02:25','2023-07-24 10:02:25',-118016.00),(10,7,16,1,'2023-08-12',1.00,6000.00,0.00,1,'2023-08-12 09:44:43','2023-08-12 09:44:43',-3001.38),(11,7,13,1,'2023-09-25',30000.00,30000.00,0.00,1,'2023-10-01 08:34:29','2023-10-01 08:34:29',-178016.00);
/*!40000 ALTER TABLE `stock_sells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `finyear` bigint unsigned NOT NULL,
  `stock_name` bigint unsigned NOT NULL,
  `buy_count` int DEFAULT NULL,
  `buy_date` date DEFAULT NULL,
  `buy_amount_single` double(8,2) DEFAULT NULL,
  `total_buy_amount` double(8,2) DEFAULT NULL,
  `buy_charge` double(8,2) DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=true 0=false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_finyear_foreign` (`finyear`),
  KEY `stocks_stock_name_foreign` (`stock_name`),
  CONSTRAINT `stocks_finyear_foreign` FOREIGN KEY (`finyear`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stocks_stock_name_foreign` FOREIGN KEY (`stock_name`) REFERENCES `stock_names` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (2,2,4,4,'2021-10-12',240.00,960.00,0.00,1,'2022-07-14 11:29:26','2022-07-14 11:29:26',NULL),(3,2,5,90,'2022-02-24',4.94,444.60,0.00,1,'2022-07-14 11:38:20','2022-07-14 11:38:20',NULL),(4,2,6,60,'2022-05-18',86.00,5160.00,0.00,1,'2022-07-14 11:39:34','2022-07-14 11:39:34',NULL),(5,2,1,5,'2022-05-20',232.80,1164.00,0.00,1,'2022-07-14 11:40:46','2022-07-14 11:40:46',NULL),(6,2,7,1,'2022-08-25',500.00,500.00,0.00,1,'2022-08-28 00:40:50','2022-08-28 00:40:50',NULL),(7,2,7,1,'2022-09-05',2000.00,2000.00,0.00,1,'2022-09-05 19:55:18','2022-09-05 19:55:18',NULL),(8,2,8,1,'2022-09-05',2000.00,2000.00,0.00,1,'2022-09-05 19:55:54','2022-09-05 19:55:54',NULL),(9,2,9,30,'2022-09-06',95.00,2850.00,0.00,1,'2022-09-07 10:51:17','2022-09-07 10:51:17',NULL),(10,2,10,13,'2022-09-07',70.00,910.00,9.00,1,'2022-09-07 10:53:31','2022-09-07 10:53:31',NULL),(11,2,5,32,'2022-09-09',5.15,164.80,0.00,1,'2022-09-10 04:04:00','2022-09-10 04:04:00',NULL),(15,2,12,1945,'2022-09-26',50000.00,50000.00,0.00,1,'2022-09-26 10:52:52','2022-09-26 10:52:52',NULL),(16,2,13,4730,'2022-10-28',21.00,199978.00,10.00,1,'2022-10-28 11:27:23','2022-10-28 11:27:23',NULL),(17,2,7,302,'2022-11-30',1000.00,1000.00,0.00,1,'2022-12-01 11:04:37','2022-12-01 11:04:37',NULL),(18,2,8,1,'2022-11-30',1500.00,1500.00,0.00,1,'2022-12-01 11:05:30','2022-12-01 11:05:30',NULL),(19,2,7,428,'2022-12-10',1419.00,1419.00,1.00,1,'2022-12-11 07:11:10','2022-12-11 07:11:10',NULL),(20,2,8,47,'2022-12-10',1499.00,1499.00,1.00,1,'2022-12-11 07:12:41','2022-12-11 07:12:41',NULL),(21,2,13,21,'2022-12-10',2000.00,2000.00,2.00,1,'2022-12-11 07:13:47','2022-12-11 07:13:47',NULL),(22,2,12,20,'2022-12-10',2000.00,2000.00,2.00,1,'2022-12-11 07:14:38','2022-12-11 07:14:38',NULL),(23,2,13,11,'2022-12-27',1025.00,1025.00,1.00,1,'2022-12-27 08:38:50','2022-12-27 08:38:50',NULL),(24,2,13,20,'2023-01-24',250.00,5000.00,0.00,1,'2023-01-24 11:01:10','2023-01-24 11:01:10',NULL),(25,2,7,3341,'2023-01-30',1000.00,1000.00,0.05,1,'2023-01-30 10:42:01','2023-01-30 10:42:01',NULL),(26,2,7,1,'2023-02-07',1000.00,1000.00,0.00,1,'2023-02-07 10:37:17','2023-02-07 10:37:17',NULL),(27,2,8,1,'2023-02-07',1000.00,1000.00,0.00,1,'2023-02-07 10:37:39','2023-02-07 10:37:39',NULL),(28,2,16,280,'2023-02-09',25.00,7000.00,0.36,1,'2023-02-09 10:06:17','2023-02-09 10:06:17',NULL),(29,2,17,20,'2023-02-10',100.00,2000.00,10.00,1,'2023-02-10 10:31:46','2023-02-10 10:31:46',NULL),(30,2,18,30,'2023-03-12',85.20,2556.00,3.75,1,'2023-03-14 10:16:01','2023-03-14 10:16:01',NULL),(31,2,12,58,'2023-03-22',1500.00,1500.00,0.00,1,'2023-03-22 10:09:17','2023-03-22 10:09:17',NULL),(32,2,16,20,'2023-03-28',25.00,500.00,0.02,1,'2023-03-28 10:08:48','2023-03-28 10:08:48',NULL),(33,7,19,10,'2023-04-05',191.15,1911.50,4.00,1,'2023-04-05 09:03:46','2023-04-05 09:03:46',NULL),(34,7,12,1,'2023-05-02',8000.00,8000.00,0.00,1,'2023-05-03 10:04:26','2023-05-03 10:04:26',NULL),(35,7,8,1,'2023-05-03',1000.00,1000.00,0.00,1,'2023-05-03 10:05:53','2023-05-03 10:05:53',NULL),(36,7,16,1,'2023-06-02',1500.00,1500.00,1.00,1,'2023-06-02 10:21:37','2023-06-02 10:21:37',NULL),(37,7,8,1,'2023-06-02',2000.00,2000.00,1.00,1,'2023-06-02 10:22:54','2023-06-02 10:22:54',NULL),(38,7,12,1,'2023-06-02',1000.00,1000.00,1.00,1,'2023-06-02 10:23:26','2023-06-02 10:23:26',NULL),(39,7,12,1,'2023-06-10',1000.00,1000.00,1.00,1,'2023-06-10 20:37:28','2023-06-10 20:37:28',NULL),(40,7,20,30,'2023-06-23',115.45,3463.50,5.00,1,'2023-06-23 10:15:00','2023-06-23 10:15:00',NULL),(41,7,16,1,'2023-09-03',3000.00,3000.00,0.00,1,'2023-09-03 11:39:09','2023-09-03 11:39:09',NULL),(42,7,12,1,'2023-09-03',5500.00,5500.00,0.00,1,'2023-09-03 11:39:30','2023-09-03 11:39:30',NULL),(43,7,8,1,'2023-09-03',1000.00,1000.00,0.00,1,'2023-09-03 11:39:50','2023-09-03 11:39:50',NULL),(44,7,12,1,'2023-10-01',5000.00,5000.00,1.00,1,'2023-10-01 08:34:59','2023-10-01 08:34:59',NULL),(45,7,12,1,'2023-10-01',9900.00,9900.00,1.00,1,'2023-10-01 08:35:21','2023-10-01 08:35:21',NULL),(46,7,12,1,'2023-10-01',500.00,500.00,1.00,1,'2023-10-01 08:36:23','2023-10-01 08:36:23',NULL),(47,7,4,29,'2023-10-10',444.00,12876.00,149.00,1,'2023-10-10 10:26:20','2023-10-10 10:26:20',NULL),(48,7,13,1,'2023-10-10',82000.00,82000.00,0.00,1,'2023-10-10 10:26:51','2023-10-10 10:26:51',NULL),(49,7,12,1,'2023-10-10',78610.00,78610.00,0.00,1,'2023-10-10 10:27:21','2023-10-10 10:27:21',NULL);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (1,'2023-08-14 21:25:00','test',1,'2023-08-14 10:25:22','2023-08-15 10:35:54'),(2,'2023-08-13 21:27:00','yesterdat',1,'2023-08-14 10:28:08','2023-08-15 10:35:54'),(3,'2023-08-15 21:28:00','tomorrow',1,'2023-08-14 10:28:51','2023-08-15 10:35:41'),(4,'2023-08-15 06:00:00','wake up and gym',1,'2023-08-14 11:52:36','2023-08-15 10:35:41'),(5,'2023-08-15 08:00:00','Clean the home',1,'2023-08-14 11:53:09','2023-08-15 10:35:41'),(6,'2023-08-15 11:00:00','analyse servotech',1,'2023-08-14 11:55:05','2023-08-15 10:35:41'),(7,'2023-08-15 12:00:00','complete the remaining modules',0,'2023-08-14 11:55:39','2023-08-14 11:55:39'),(8,'2023-08-16 16:36:00','Analyse gbp/usd',0,'2023-08-15 10:37:38','2023-08-15 10:37:38'),(9,'2023-08-16 21:37:00','complete the hosting in mobile',0,'2023-08-15 10:38:09','2023-08-15 10:38:09');
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tradings`
--

DROP TABLE IF EXISTS `tradings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `finyear` bigint unsigned NOT NULL,
  `stock_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_count` int DEFAULT NULL,
  `buy_date` date DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `single_stock_amount` double(8,2) DEFAULT NULL,
  `total_buy_amount` double(8,2) DEFAULT NULL,
  `total_sell_amount` double(8,2) DEFAULT NULL,
  `buy_brocker` double(8,2) DEFAULT '0.00',
  `sell_brocker` double(8,2) DEFAULT '0.00',
  `profit` double(8,2) DEFAULT '0.00',
  `buy_reason` text COLLATE utf8mb4_unicode_ci,
  `loss_reason` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=true 0=false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sell_amount` double(8,2) DEFAULT NULL,
  `sell_count` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tradings_finyear_foreign` (`finyear`),
  CONSTRAINT `tradings_finyear_foreign` FOREIGN KEY (`finyear`) REFERENCES `financial_years` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tradings`
--

LOCK TABLES `tradings` WRITE;
/*!40000 ALTER TABLE `tradings` DISABLE KEYS */;
INSERT INTO `tradings` VALUES (5,2,'ONGC',20,'2023-02-17','2023-03-24',155.00,3103.14,3000.00,3.14,NULL,0.00,'1. The stock is at good support and resistance level. 2. Also 155 is at trendline resistance so expects a  breakout.','The nifty is in downtrend',1,'2023-02-23 10:58:52','2023-03-24 09:15:34',150.00,20),(7,2,'EKC',30,'2023-03-23','2023-03-24',95.00,3115.50,2646.33,265.50,6.33,0.00,'this brockerage is due to maintanence charge',NULL,1,'2023-03-24 09:23:37','2023-04-03 20:45:53',88.00,30),(8,7,'AXITA',50,'2023-04-05','2023-04-17',60.35,3021.50,3422.50,4.00,0.00,0.00,'The stock makes a breakout.','Target hit',1,'2023-04-05 09:05:11','2023-04-17 10:34:30',68.45,50),(9,7,'dwarkesh',30,'2023-04-18','2023-05-03',94.00,2824.00,2726.00,4.00,-4.00,0.00,'breakout from double bottom (W)','stop loss hited ',1,'2023-04-19 10:22:30','2023-05-03 09:41:01',91.00,30),(10,7,'Texmopipes',10,'2023-04-21','2023-04-26',62.65,630.50,679.50,4.00,-4.00,0.00,'A large candle formed and make a breakout.','Target hit. But it tested many times',1,'2023-04-26 10:43:32','2023-04-26 10:43:32',68.35,10),(11,7,'Bank india',10,'2023-04-28','2023-05-08',81.70,821.00,808.00,4.00,-2.00,0.00,'breakout from a triangle pattern','stop loss hit. Large break down.',1,'2023-05-03 09:44:10','2023-05-08 09:58:47',81.00,10),(12,7,'precwire',20,'2023-04-07','2023-05-05',69.85,1401.00,1438.00,4.00,-2.00,0.00,'breakout expected','it makes a breakout but retested. In retested stoploss hit.',1,'2023-05-03 09:47:44','2023-05-05 10:17:37',72.00,20),(13,7,'MSUMI',60,'2023-05-10','2023-06-26',55.25,3319.00,3344.07,4.00,-15.93,0.00,'Break out ','sl hit',1,'2023-05-10 10:42:47','2023-06-26 10:06:42',56.00,60),(14,7,'Rico auto',40,'2023-05-22','2023-06-05',80.95,3242.00,3420.90,4.00,-19.10,0.00,'breakout from a resistance','Target hit',1,'2023-06-05 21:01:37','2023-06-10 20:33:28',86.00,40),(15,7,'Bom dyeing',40,'2023-06-08','2023-06-20',89.50,3585.10,4144.00,5.10,-16.00,0.00,'breakout from a resistance with large candle','Target hit. but it happens very fastly.',1,'2023-06-10 20:36:27','2023-06-20 10:23:32',104.00,40),(16,7,'sequent',40,'2023-06-28','2023-08-11',95.25,3825.00,3730.00,15.00,50.00,0.00,NULL,'sl hit',1,'2023-06-28 10:15:50','2023-08-11 09:06:54',92.00,40),(17,7,'kotharipet',30,'2023-10-11',NULL,145.00,4350.00,NULL,NULL,NULL,0.00,'breakout strategy',NULL,1,'2023-10-12 09:35:32','2023-10-12 09:35:32',NULL,NULL),(18,7,'dolatgo',50,'2023-10-11',NULL,60.00,3000.00,NULL,NULL,NULL,0.00,'breakout strategy',NULL,1,'2023-10-12 09:38:51','2023-10-12 09:38:51',NULL,NULL),(19,7,'omaxe',14,'2023-10-12',NULL,83.40,1167.60,NULL,NULL,NULL,0.00,'breakout',NULL,1,'2023-10-12 09:40:12','2023-10-12 09:40:12',NULL,NULL),(20,7,'asiantiles',20,'2023-10-12',NULL,75.85,1517.00,NULL,NULL,NULL,0.00,'breakout',NULL,1,'2023-10-12 09:41:31','2023-10-12 09:41:31',NULL,NULL),(21,7,'bgr energy',50,'2023-10-11',NULL,78.80,3940.00,NULL,NULL,NULL,0.00,'breakout',NULL,1,'2023-10-12 09:42:55','2023-10-12 09:42:55',NULL,NULL);
/*!40000 ALTER TABLE `tradings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sreeraj','sreerajs728@gmail.com',NULL,'$2y$10$bzDk2PCAfHYZIB5J6PDbr.Eh83Sf2hxxvpXl4KXwoBDBFy0X6NqTm',NULL,NULL,NULL,'SUlXeOLebWdE5eIJA494dZ9WPNW5ZPzwxwarF2vIejjBNEbYPFGSqHZGm8Ar',NULL,NULL,'2022-08-06 23:55:54','2022-08-06 23:55:54',1),(2,'sanju','sanjusanju20546@gmail.com',NULL,'$2y$10$dsMOGPtnsA.fU30yNQSFxOYIvl18skvAMy5g2dLHlCs/PywjNnadK',NULL,NULL,NULL,'x6RGglP2qiHoH9Dw74WhpZM8JLxo8E4UrSRpTM5eoOCyXMWAqPh0KUiWaZLh',NULL,NULL,'2022-08-10 10:39:44','2023-02-17 23:35:10',0),(6,'admin','admin@admin.com',NULL,'$2y$10$/flROpTaVN66UIBzcWykje3GK4QoINy1llBEWB6znhPkCi93zL/g6',NULL,NULL,NULL,'V7IFXrElZaRFFEzz8fFN4upRNvarK8DiIOmSG7n8vzerDinuyzsz3SIDikxC',NULL,NULL,'2023-02-16 11:11:01','2023-02-16 11:11:01',0),(7,'bullish','bullish@gmail.com',NULL,'$2y$10$63PrbhKkUULoD2UbP.QHO.nNt9.yv0KXK96Rt4IFyjL2KY8B1zFcG',NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-18 05:39:07','2023-02-18 05:39:07',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29 20:58:22
