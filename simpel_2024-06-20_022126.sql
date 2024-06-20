-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: asteriagrup.online    Database: simpel
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB-1:10.7.3+maria~focal

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
-- Table structure for table `ipak3_businesses`
--

DROP TABLE IF EXISTS `ipak3_businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipak3_businesses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `business_type` longtext DEFAULT NULL,
  `type_of_company` longtext DEFAULT NULL,
  `legal_status` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ipak3_businesses_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipak3_businesses`
--

/*!40000 ALTER TABLE `ipak3_businesses` DISABLE KEYS */;
INSERT INTO `ipak3_businesses` VALUES
(1,'2024-06-19 08:21:18.544','2024-06-19 08:21:18.544',NULL,'Pelayanan Publik','Pemerintah','Balai'),
(2,'2024-06-19 08:21:18.553','2024-06-19 08:21:18.553',NULL,'Penyedia jasa teknologi informasi','Swasta','PT'),
(3,'2024-06-19 08:21:18.560','2024-06-19 08:21:18.560',NULL,'Riksa Uji Alat Industri Swasta','Swasta','PT');
/*!40000 ALTER TABLE `ipak3_businesses` ENABLE KEYS */;

--
-- Table structure for table `ipak3_companies`
--

DROP TABLE IF EXISTS `ipak3_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipak3_companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `contact_id` bigint(20) unsigned DEFAULT NULL,
  `business_id` bigint(20) unsigned DEFAULT NULL,
  `registered_date` datetime(3) DEFAULT NULL,
  `registration_no` longtext DEFAULT NULL,
  `npwp` longtext DEFAULT NULL,
  `established_date` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ipak3_companies_deleted_at` (`deleted_at`),
  KEY `fk_ipak3_companies_contact` (`contact_id`),
  KEY `fk_ipak3_companies_business` (`business_id`),
  CONSTRAINT `fk_ipak3_companies_business` FOREIGN KEY (`business_id`) REFERENCES `ipak3_businesses` (`id`),
  CONSTRAINT `fk_ipak3_companies_contact` FOREIGN KEY (`contact_id`) REFERENCES `ipak3_contacts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipak3_companies`
--

/*!40000 ALTER TABLE `ipak3_companies` DISABLE KEYS */;
INSERT INTO `ipak3_companies` VALUES
(1,'2024-06-19 08:21:18.545','2024-06-19 08:21:18.545',NULL,'DINAS TENAGA KERJA DAN TRANSMIGRASI PROVINSI JAWA BARAT','Jl. Modar Mandir No. 22, Kota Bandung, Jawa Barat 40111, Indonesia',1,1,'2021-02-16 07:06:40.000','010000000000000','010000000000000','2021-02-16 07:06:40.000'),
(2,'2024-06-19 08:21:18.555','2024-06-19 08:21:18.555',NULL,'PT. ASTERIA RIKSA INDONESIA','Jl. Kaliurang No. 10, Kota Bandung, Jawa Barat 40111, Indonesia',2,2,'2021-02-16 07:06:40.000','010000000000000','010000000000000','2021-02-16 07:06:40.000'),
(3,'2024-06-19 08:21:18.561','2024-06-19 08:21:18.561',NULL,'PT. <NAME>','Jl. <NAME> No. 10, Kota Bandung, Jawa Barat 40111, Indonesia',3,3,'2021-02-16 07:06:40.000','010000000000000','010000000000000','2021-02-16 07:06:40.000');
/*!40000 ALTER TABLE `ipak3_companies` ENABLE KEYS */;

--
-- Table structure for table `ipak3_contacts`
--

DROP TABLE IF EXISTS `ipak3_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipak3_contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `fax` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ipak3_contacts_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipak3_contacts`
--

/*!40000 ALTER TABLE `ipak3_contacts` DISABLE KEYS */;
INSERT INTO `ipak3_contacts` VALUES
(1,'2024-06-19 08:21:18.543','2024-06-19 08:21:18.543',NULL,'balaik3@dinsnaker.jabarprov.go.id','021-12345678','021-12345678'),
(2,'2024-06-19 08:21:18.551','2024-06-19 08:21:18.551',NULL,'cs@asteria.com','022-12345678','022-12345678'),
(3,'2024-06-19 08:21:18.558','2024-06-19 08:21:18.558',NULL,'cs@company.com','022-12345678','022-12345678'),
(4,'2024-06-19 08:21:19.189','2024-06-19 08:21:19.189',NULL,'<EMAIL>','081234567890','081234567890'),
(5,'2024-06-19 08:21:19.193','2024-06-19 08:21:19.193',NULL,'<EMAIL>','081234567890','081234567890'),
(6,'2024-06-19 08:21:19.199','2024-06-19 08:21:19.199',NULL,'<EMAIL>','081234567890','081234567890'),
(7,'2024-06-19 08:21:19.202','2024-06-19 08:21:19.202',NULL,'<EMAIL>','081234567890','081234567890'),
(8,'2024-06-19 08:21:19.205','2024-06-19 08:21:19.205',NULL,'<EMAIL>','081234567890','081234567890'),
(9,'2024-06-19 08:21:19.206','2024-06-19 08:21:19.206',NULL,'<EMAIL>','081234567890','081234567890'),
(10,'2024-06-19 08:21:19.209','2024-06-19 08:21:19.209',NULL,'<EMAIL>','081234567890','081234567890'),
(11,'2024-06-19 08:21:19.212','2024-06-19 08:21:19.212',NULL,'<EMAIL>','081234567890','081234567890'),
(12,'2024-06-19 08:21:19.215','2024-06-19 08:21:19.215',NULL,'<EMAIL>','081234567890','081234567890'),
(13,'2024-06-19 08:21:19.216','2024-06-19 08:21:19.216',NULL,'<EMAIL>','081234567890','081234567890');
/*!40000 ALTER TABLE `ipak3_contacts` ENABLE KEYS */;

--
-- Table structure for table `ipak3_roles`
--

DROP TABLE IF EXISTS `ipak3_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipak3_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ipak3_roles_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipak3_roles`
--

/*!40000 ALTER TABLE `ipak3_roles` DISABLE KEYS */;
INSERT INTO `ipak3_roles` VALUES
(1,'2024-06-19 08:21:18.523','2024-06-19 08:21:18.525',NULL,'Super Admin'),
(2,'2024-06-19 08:21:18.527','2024-06-19 08:21:18.527',NULL,'Admin'),
(3,'2024-06-19 08:21:18.530','2024-06-19 08:21:18.531',NULL,'Pimpinan'),
(4,'2024-06-19 08:21:18.534','2024-06-19 08:21:18.535',NULL,'Staf TU'),
(5,'2024-06-19 08:21:18.537','2024-06-19 08:21:18.537',NULL,'Pemeriksa K3'),
(6,'2024-06-19 08:21:18.538','2024-06-19 08:21:18.539',NULL,'Staf Pemeriksa K3');
/*!40000 ALTER TABLE `ipak3_roles` ENABLE KEYS */;

--
-- Table structure for table `ipak3_users`
--

DROP TABLE IF EXISTS `ipak3_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipak3_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `full_name` longtext DEFAULT NULL,
  `employee_id` longtext DEFAULT NULL,
  `contact_id` bigint(20) unsigned DEFAULT NULL,
  `company_id` bigint(20) unsigned DEFAULT NULL,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ipak3_users_deleted_at` (`deleted_at`),
  KEY `fk_ipak3_users_contact` (`contact_id`),
  KEY `fk_ipak3_users_company` (`company_id`),
  KEY `fk_ipak3_users_role` (`role_id`),
  CONSTRAINT `fk_ipak3_users_company` FOREIGN KEY (`company_id`) REFERENCES `ipak3_companies` (`id`),
  CONSTRAINT `fk_ipak3_users_contact` FOREIGN KEY (`contact_id`) REFERENCES `ipak3_contacts` (`id`),
  CONSTRAINT `fk_ipak3_users_role` FOREIGN KEY (`role_id`) REFERENCES `ipak3_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipak3_users`
--

/*!40000 ALTER TABLE `ipak3_users` DISABLE KEYS */;
INSERT INTO `ipak3_users` VALUES
(1,'2024-06-19 08:21:19.187','2024-06-19 08:21:19.190',NULL,'superadmin','$2a$10$7y615w6CgLDWU7DgiXX/deqZHvpGoXtC2F2sFvfh8OibmcDR4Ok/u','Super Admin','1234567890',4,2,1),
(2,'2024-06-19 08:21:19.192','2024-06-19 08:21:19.194',NULL,'admin','$2a$10$sjQeYQKGekpfHhtjfzxHmuDVhVoDgP.P2vyVgwpWsZvuCrklMk1xa','Admin','1234567890',5,2,2),
(3,'2024-06-19 08:21:19.197','2024-06-19 08:21:19.200',NULL,'pimpinan01','$2a$10$4g7gYsQQIFItq4GdbPfjWuKts182z1IU.xP8REKTClB.smMFnEfD6','<NAME>','1234567890',6,1,3),
(4,'2024-06-19 08:21:19.201','2024-06-19 08:21:19.203',NULL,'staftu01','$2a$10$ZRjXqiQYeZhb5lm43Tkgre1kMwxUgS75G4VCBsORK.elnEgr3AY5u','<NAME>','1234567890',7,1,4),
(5,'2024-06-19 08:21:19.204','2024-06-19 08:21:19.205',NULL,'pemeriksa01','$2a$10$shiL4REtNDfGsVuORMKNSOde7Bq5O9njUMmQDhHSjLZUeNManqz3.','<NAME>','1234567890',8,1,5),
(6,'2024-06-19 08:21:19.206','2024-06-19 08:21:19.207',NULL,'stafpemeriksa01','$2a$10$Hy/1NuRyDIvs76E/AM3Eb.hygOiTtcB/mJO6r5TbwaBTv3ZUaKSbq','<NAME>','1234567890',9,1,6),
(7,'2024-06-19 08:21:19.209','2024-06-19 08:21:19.210',NULL,'pimpinan02','$2a$10$RVnKqNeCEQlqWZ16TqblX.imm/JOJKxc7V/2wA44UuFzSmnzlimG.','<NAME>','1234567890',10,2,3),
(8,'2024-06-19 08:21:19.211','2024-06-19 08:21:19.213',NULL,'staftu02','$2a$10$zJjsJLM7/xSu0CaQCFGbF.cxCoixbUvrx2QzJ26.BzyE/xMF5fKii','<NAME>','1234567890',11,3,4),
(9,'2024-06-19 08:21:19.214','2024-06-19 08:21:19.215',NULL,'pemeriksa02','$2a$10$JedNrXO8UHXRYcNPBAPOEO43QV1Wf4b4FCyGaz0ML63k/kWtFDQvC','<NAME>','1234567890',12,3,5),
(10,'2024-06-19 08:21:19.216','2024-06-19 08:21:19.217',NULL,'stafpemeriksa02','$2a$10$L2GBNSPUYNyHR/MEjW.vRewiPMeFfb7qXHIchKgoB/7685y1/WBTa','<NAME>','1234567890',13,3,6);
/*!40000 ALTER TABLE `ipak3_users` ENABLE KEYS */;

--
-- Table structure for table `p2ak3_businesses`
--

DROP TABLE IF EXISTS `p2ak3_businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2ak3_businesses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `business_type` longtext DEFAULT NULL,
  `type_of_company` longtext DEFAULT NULL,
  `legal_status` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_p2ak3_businesses_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p2ak3_businesses`
--

/*!40000 ALTER TABLE `p2ak3_businesses` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2ak3_businesses` ENABLE KEYS */;

--
-- Table structure for table `p2ak3_companies`
--

DROP TABLE IF EXISTS `p2ak3_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2ak3_companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `contact_id` bigint(20) unsigned DEFAULT NULL,
  `business_id` bigint(20) unsigned DEFAULT NULL,
  `registered_date` datetime(3) DEFAULT NULL,
  `registration_no` longtext DEFAULT NULL,
  `npwp` longtext DEFAULT NULL,
  `established_date` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_p2ak3_companies_deleted_at` (`deleted_at`),
  KEY `fk_p2ak3_companies_contact` (`contact_id`),
  KEY `fk_p2ak3_companies_business` (`business_id`),
  CONSTRAINT `fk_p2ak3_companies_business` FOREIGN KEY (`business_id`) REFERENCES `p2ak3_businesses` (`id`),
  CONSTRAINT `fk_p2ak3_companies_contact` FOREIGN KEY (`contact_id`) REFERENCES `p2ak3_contacts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p2ak3_companies`
--

/*!40000 ALTER TABLE `p2ak3_companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2ak3_companies` ENABLE KEYS */;

--
-- Table structure for table `p2ak3_contacts`
--

DROP TABLE IF EXISTS `p2ak3_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2ak3_contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `fax` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_p2ak3_contacts_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p2ak3_contacts`
--

/*!40000 ALTER TABLE `p2ak3_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2ak3_contacts` ENABLE KEYS */;

--
-- Table structure for table `p2ak3_roles`
--

DROP TABLE IF EXISTS `p2ak3_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2ak3_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_p2ak3_roles_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p2ak3_roles`
--

/*!40000 ALTER TABLE `p2ak3_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2ak3_roles` ENABLE KEYS */;

--
-- Table structure for table `p2ak3_users`
--

DROP TABLE IF EXISTS `p2ak3_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p2ak3_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `username` longtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `full_name` longtext DEFAULT NULL,
  `employee_id` longtext DEFAULT NULL,
  `contact_id` bigint(20) unsigned DEFAULT NULL,
  `company_id` bigint(20) unsigned DEFAULT NULL,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_p2ak3_users_deleted_at` (`deleted_at`),
  KEY `fk_p2ak3_users_contact` (`contact_id`),
  KEY `fk_p2ak3_users_company` (`company_id`),
  KEY `fk_p2ak3_users_role` (`role_id`),
  CONSTRAINT `fk_p2ak3_users_company` FOREIGN KEY (`company_id`) REFERENCES `p2ak3_companies` (`id`),
  CONSTRAINT `fk_p2ak3_users_contact` FOREIGN KEY (`contact_id`) REFERENCES `p2ak3_contacts` (`id`),
  CONSTRAINT `fk_p2ak3_users_role` FOREIGN KEY (`role_id`) REFERENCES `p2ak3_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p2ak3_users`
--

/*!40000 ALTER TABLE `p2ak3_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `p2ak3_users` ENABLE KEYS */;

--
-- Dumping routines for database 'simpel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20  2:21:32
