-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: stories
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'EtwW3eESBR78C4LwDKPqxdT3W6oW6isW',1,'2025-09-01 20:11:59','2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Panel Ads','2030-09-02 00:00:00','panel-ads','KNYLO466ZWU1','banners/1.jpg','https://botble.com',0,1,'published','2025-09-01 20:12:01','2025-09-01 20:12:01',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Cyber Monday: Save big on the Creative Cloud All Apps plan for individuals through 2 Dec',0,NULL,NULL,0,1,'2025-09-02 03:12:01',NULL,1,'2025-09-01 20:12:01','2025-09-01 20:12:01'),(2,'Announcement 2','Students and teachers save a massive 71% on Creative Cloud All Apps',0,NULL,NULL,0,1,'2025-09-02 03:12:01',NULL,1,'2025-09-01 20:12:01','2025-09-01 20:12:01'),(3,'Announcement 3','Black Friday and Cyber Monday 2023 Deals for Motion Designers, grab it now!',0,NULL,NULL,0,1,'2025-09-02 03:12:01',NULL,1,'2025-09-01 20:12:01','2025-09-01 20:12:01');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Uncategorized',0,'Aspernatur ipsa a modi animi quidem. Dolores ut consequuntur quo ipsam voluptas harum et. Tempora est in magnam ex.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-09-01 20:12:00','2025-09-01 20:12:00'),(2,'Travel',0,'Doloribus cupiditate non ad. Error ut quo doloribus quos repellendus consectetur. Est ut totam id impedit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-01 20:12:00','2025-09-01 20:12:00'),(3,'Guides',2,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-09-01 20:12:00','2025-09-01 20:12:00'),(4,'Destination',0,'Id voluptatum omnis hic quia numquam eligendi illum. Alias enim placeat velit architecto natus corrupti. Molestias non maiores totam temporibus. Totam accusamus aut in sed sit in dolor sunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-01 20:12:00','2025-09-01 20:12:00'),(5,'Food',4,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-09-01 20:12:00','2025-09-01 20:12:00'),(6,'Hotels',0,'Voluptas et ut eos vel deserunt est corporis. Inventore exercitationem non omnis ullam totam rerum. Molestiae et distinctio necessitatibus omnis architecto similique. Libero eum est nesciunt sint.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-01 20:12:00','2025-09-01 20:12:00'),(7,'Review',6,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-09-01 20:12:00','2025-09-01 20:12:00'),(8,'Healthy',0,'Blanditiis odio beatae est id qui. Nobis quos expedita fugiat nobis similique.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-01 20:12:00','2025-09-01 20:12:00'),(9,'Lifestyle',0,'Provident natus consequatur sed similique itaque animi dicta quo. Qui eveniet sapiente quis dolorem quia qui hic. Accusamus cumque vel accusamus error ipsum. Et qui aspernatur tenetur animi soluta.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-01 20:12:00','2025-09-01 20:12:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Prof. Diego Funk','lloyd94@example.org','(305) 922-0351','50798 Irma Route Suite 475\nJeanport, TN 63408','Repudiandae qui voluptates et ipsum.','Ut corporis nobis atque sunt numquam illo molestias. Consectetur est optio dolorem laborum beatae. Nam reiciendis perferendis accusamus officia. Voluptatibus non hic est aut culpa architecto et. Vitae quasi corporis sunt iure facilis provident dicta. Aliquid quisquam voluptate harum sed sit facilis culpa. Necessitatibus at non fugiat autem vero consectetur dolor animi. Ab illo corrupti tempore autem id. Laudantium dicta libero numquam eos. Vel facilis pariatur at corporis eveniet et.',NULL,'unread','2025-09-01 20:11:59','2025-09-01 20:11:59'),(2,'Miss Rosina Wiza','javier62@example.org','+1.920.345.0417','25661 Treutel Stream Suite 204\nEast Ellsworthton, CT 75073-1531','Aut quis quod ut a iusto.','Explicabo et officia voluptate minus. Corporis provident ut amet ea iure voluptatum consequatur amet. Blanditiis dolores molestiae porro rerum nostrum fugit. Enim tenetur aut ut consequatur rem praesentium architecto non. Est quia eligendi omnis. Magni iure illo nobis at voluptas. Laudantium vitae quo eveniet qui ullam. Numquam sunt vel et.',NULL,'unread','2025-09-01 20:11:59','2025-09-01 20:11:59'),(3,'Prof. Fredy Dach','hbernhard@example.com','+1.510.481.0155','29341 Roob Meadows\nGeneville, MA 47685','Voluptate praesentium fugit et.','Vel recusandae quaerat rerum non ea dolorem. Cum rerum sit voluptatem atque sed. Modi et soluta magni ut voluptatem quae temporibus beatae. Eligendi aut beatae sed similique rerum non illo maxime. Consectetur et dolore eos error dolore. Sed corrupti laborum necessitatibus. Voluptatem sunt tempora quia nesciunt nesciunt. Delectus consequatur consequatur similique ut. Nesciunt reprehenderit veritatis ut nobis nemo molestias et.',NULL,'unread','2025-09-01 20:11:59','2025-09-01 20:11:59'),(4,'Miss Charlotte Hermiston Sr.','fahey.gregoria@example.net','+1-661-364-1183','3485 Greenfelder Islands Suite 399\nSouth Amari, UT 41507-3805','Aperiam dolores praesentium possimus et.','Aut explicabo labore velit. Voluptates occaecati eos est sapiente. Voluptatum aut rerum officia vel id expedita. Commodi molestias voluptatem rerum ipsa pariatur est. Enim cum incidunt impedit accusantium est. Excepturi fugit dolorem sint culpa. Aut illum pariatur maiores molestiae. Illo culpa non error error modi est quis veniam.',NULL,'unread','2025-09-01 20:11:59','2025-09-01 20:11:59'),(5,'Deonte Kunze','randall46@example.org','+1-970-753-9942','44901 Sanford Run Suite 218\nLake Magnus, IN 53681-9132','Commodi tenetur et rem provident consectetur.','Laboriosam dignissimos ea numquam et id. Culpa praesentium ex consequatur praesentium beatae. Eos qui labore fuga provident distinctio. Et eaque numquam sunt mollitia eveniet quos. Sed aut nesciunt qui totam deleniti. Unde voluptatibus dolore omnis veniam autem sit. Qui pariatur perferendis architecto vero nam officiis est. Qui facilis ut sed aperiam. Odit recusandae sed incidunt dolorum nam incidunt. Ratione at et accusantium ea occaecati tempore est est.',NULL,'read','2025-09-01 20:11:59','2025-09-01 20:11:59'),(6,'Halle Nienow','dpurdy@example.com','+1-480-753-9715','2031 Bartoletti Ports Suite 067\nLake Emilybury, NE 70541','Laudantium aut et aut dolor numquam unde magni.','Explicabo ipsa cumque eaque. Temporibus ea velit ut voluptate. Iure deserunt sed quos cupiditate pariatur. Dolorum voluptates culpa eos perferendis unde nulla. Cupiditate velit adipisci vel amet. In voluptate alias odit aut qui inventore voluptas voluptatum. Nisi et est velit velit numquam. Et repudiandae et natus dolore distinctio. Nihil est aut voluptas incidunt repellat omnis. Quas id aut atque neque perspiciatis. Eligendi ad animi porro incidunt vel itaque.',NULL,'read','2025-09-01 20:11:59','2025-09-01 20:11:59'),(7,'Ozella Ledner','grayce.harris@example.com','(253) 472-0022','354 Boyle Island Suite 224\nPort Zionfurt, MI 07315','Tempora quia consectetur officia nulla.','Alias voluptas aut modi at. Aut ea consequatur aliquam aut perspiciatis. Rerum iste et delectus et impedit laudantium. Ea aut non est dolor sequi ratione. Quis veritatis deleniti ut accusantium recusandae aperiam. Sint inventore porro est autem eum. Quia ad ut esse in. Iusto beatae et voluptate laboriosam aperiam. Facere aut deleniti quam repellendus eum qui. Aut reiciendis aut necessitatibus minus. Recusandae necessitatibus ab nihil ut repudiandae et earum id.',NULL,'read','2025-09-01 20:11:59','2025-09-01 20:11:59'),(8,'Dr. Tracy Blick','alexzander99@example.com','+1-870-725-9590','745 Schinner Run Apt. 900\nLindgrentown, CA 87723-0081','Vero et dolore eius et praesentium illum.','Illum consectetur inventore ipsam ipsum accusamus. Quo harum sed sit praesentium qui corporis deleniti. Nam dolor sed ut quibusdam iure est praesentium. Eum asperiores qui eaque nulla. Consequatur sapiente magnam ea eligendi. Error porro voluptates molestiae quis illo ipsa quia est. Recusandae delectus voluptatem ut qui quaerat. Aut mollitia sapiente vero id perspiciatis. Saepe dolores commodi non veniam. Ipsum aut placeat voluptatibus praesentium suscipit.',NULL,'read','2025-09-01 20:11:59','2025-09-01 20:11:59'),(9,'Alejandra Konopelski','raleigh.marvin@example.org','+1.989.896.2768','337 Noah Cape\nLake Alekport, RI 60083-2832','Qui aut beatae reiciendis libero quia aut.','Non labore repellat omnis natus non architecto ea. Rem provident et voluptas ducimus beatae. Voluptatem totam iste possimus ratione dolor natus minima. Voluptatem sint voluptas pariatur. Autem qui aut cum illo ipsum maiores totam. Exercitationem cupiditate non consequatur omnis. Sequi voluptatem dolores non qui dolorem error.',NULL,'unread','2025-09-01 20:11:59','2025-09-01 20:11:59'),(10,'Curt Kovacek','cpacocha@example.org','+1-419-901-2003','869 Lockman Port Apt. 459\nEast Kassandraburgh, WV 87171-2703','Quo accusamus repudiandae fugiat sint sit.','A qui nisi sunt quo et incidunt voluptates. Adipisci ipsa voluptas ut consequuntur ex. Quia assumenda repudiandae est nemo. Facere nisi repellendus qui sed deserunt quos quas. Quidem unde maiores praesentium veritatis voluptate. Deleniti nam repellat molestiae eligendi nobis fuga corrupti.',NULL,'read','2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `fob_comments`
--

DROP TABLE IF EXISTS `fob_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fob_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reply_to` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fob_comments_author_type_author_id_index` (`author_type`,`author_id`),
  KEY `fob_comments_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `fob_comments_reply_to_index` (`reply_to`),
  KEY `fob_comments_reference_url_index` (`reference_url`),
  KEY `fob_comments_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fob_comments`
--

LOCK TABLES `fob_comments` WRITE;
/*!40000 ALTER TABLE `fob_comments` DISABLE KEYS */;
INSERT INTO `fob_comments` VALUES (1,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://stories.test','Willa Mayert','tturner@kutch.com','https://friendsofbotble.com','This is really helpful, thank you!','approved','36.156.83.8','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_7_1) AppleWebKit/531.2 (KHTML, like Gecko) Chrome/96.0.4534.13 Safari/531.2 Edg/96.01087.49','2025-08-22 05:21:48','2025-09-01 20:12:01'),(2,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://stories.test','Nadia Spencer','gilda.kovacek@yahoo.com','https://friendsofbotble.com','I found this article to be quite informative.','approved','232.144.175.185','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_8_2 rv:4.0; sl-SI) AppleWebKit/532.24.6 (KHTML, like Gecko) Version/4.1 Safari/532.24.6','2025-08-09 04:48:37','2025-09-01 20:12:01'),(3,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://stories.test','Santina Reinger','darrel89@ortiz.com','https://friendsofbotble.com','Wow, I never knew about this before!','approved','141.240.63.173','Opera/8.76 (Windows NT 6.1; en-US) Presto/2.10.235 Version/10.00','2025-08-27 05:47:56','2025-09-01 20:12:01'),(4,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',5,'http://stories.test','Brandyn Schimmel PhD','marlee.schinner@satterfield.com','https://friendsofbotble.com','Great job on explaining such a complex topic.','approved','110.230.23.238','Opera/9.20 (X11; Linux i686; sl-SI) Presto/2.10.303 Version/12.00','2025-08-06 18:37:27','2025-09-01 20:12:01'),(5,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://stories.test','Gerda Ledner','kerluke.dino@hickle.com','https://friendsofbotble.com','I have a question about the third paragraph.','approved','11.164.129.142','Mozilla/5.0 (Windows; U; Windows NT 5.01) AppleWebKit/532.17.3 (KHTML, like Gecko) Version/4.0 Safari/532.17.3','2025-08-21 01:39:59','2025-09-01 20:12:01'),(6,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://stories.test','Mr. Ladarius Kiehn','twelch@gmail.com','https://friendsofbotble.com','This article changed my perspective entirely.','approved','10.134.219.29','Mozilla/5.0 (Windows 95) AppleWebKit/5330 (KHTML, like Gecko) Chrome/39.0.865.0 Mobile Safari/5330','2025-08-25 21:00:59','2025-09-01 20:12:01'),(7,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://stories.test','Lawrence Crona PhD','vnolan@yahoo.com','https://friendsofbotble.com','I appreciate the effort you put into this.','approved','107.229.16.149','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_5) AppleWebKit/5361 (KHTML, like Gecko) Chrome/40.0.851.0 Mobile Safari/5361','2025-08-18 16:52:45','2025-09-01 20:12:01'),(8,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',9,'http://stories.test','Prof. Lois Bergnaum','brenden.abshire@gmail.com','https://friendsofbotble.com','This is exactly what I was looking for, thank you!','approved','30.111.37.223','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_0 rv:4.0) Gecko/20191114 Firefox/35.0','2025-08-19 19:08:15','2025-09-01 20:12:01'),(9,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',5,'http://stories.test','Electa Hahn V','ebba88@gmail.com','https://friendsofbotble.com','I disagree with some points mentioned here, though.','approved','228.7.187.3','Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X; sl-SI) AppleWebKit/532.25.7 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6532.25.7','2025-08-23 11:56:56','2025-09-01 20:12:01'),(10,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://stories.test','Mrs. Hassie Rau','theron.doyle@schimmel.biz','https://friendsofbotble.com','Could you provide more examples to illustrate your point?','approved','62.120.49.47','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5331 (KHTML, like Gecko) Chrome/38.0.812.0 Mobile Safari/5331','2025-08-22 22:30:46','2025-09-01 20:12:01'),(11,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',15,'http://stories.test','Mr. Joe Quitzon DVM','aliya92@hotmail.com','https://friendsofbotble.com','I wish there were more articles like this out there.','approved','211.182.126.228','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_0) AppleWebKit/5360 (KHTML, like Gecko) Chrome/36.0.803.0 Mobile Safari/5360','2025-08-02 09:07:54','2025-09-01 20:12:01'),(12,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',15,'http://stories.test','Mrs. Eveline Mohr DDS','christiana15@hotmail.com','https://friendsofbotble.com','I\'m bookmarking this for future reference.','approved','206.17.29.23','Mozilla/5.0 (iPhone; CPU iPhone OS 13_0 like Mac OS X) AppleWebKit/537.1 (KHTML, like Gecko) Version/15.0 EdgiOS/79.01033.2 Mobile/15E148 Safari/537.1','2025-08-23 01:37:43','2025-09-01 20:12:01'),(13,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',5,'http://stories.test','Aliza Donnelly','francis76@yahoo.com','https://friendsofbotble.com','I\'ve shared this with my friends, they loved it!','approved','80.165.251.31','Mozilla/5.0 (iPhone; CPU iPhone OS 13_0 like Mac OS X) AppleWebKit/536.2 (KHTML, like Gecko) Version/15.0 EdgiOS/79.01041.1 Mobile/15E148 Safari/536.2','2025-08-11 12:27:48','2025-09-01 20:12:01'),(14,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',14,'http://stories.test','Annabel Hoppe','aufderhar.schuyler@johnston.biz','https://friendsofbotble.com','This article is a must-read for everyone interested in the topic.','approved','55.26.141.133','Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/535.2 (KHTML, like Gecko) Version/15.0 EdgiOS/91.01019.79 Mobile/15E148 Safari/535.2','2025-08-24 01:49:32','2025-09-01 20:12:01'),(15,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://stories.test','Abigayle Aufderhar','rsipes@kirlin.com','https://friendsofbotble.com','Thank you for shedding light on this important issue.','approved','66.130.209.107','Opera/9.41 (X11; Linux i686; sl-SI) Presto/2.10.193 Version/11.00','2025-08-21 18:57:38','2025-09-01 20:12:01'),(16,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',9,'http://stories.test','Leonie Tremblay','iheller@yahoo.com','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article.','approved','73.156.121.85','Opera/9.56 (Windows NT 6.2; en-US) Presto/2.11.326 Version/12.00','2025-08-23 00:10:10','2025-09-01 20:12:01'),(17,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',14,'http://stories.test','Clifton Ledner','roma.carter@jones.com','https://friendsofbotble.com','I\'m blown away by the insights shared in this article.','approved','106.201.166.30','Mozilla/5.0 (compatible; MSIE 6.0; Windows 98; Trident/4.1)','2025-08-18 14:26:26','2025-09-01 20:12:01'),(18,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',13,'http://stories.test','Jordan Rippin','vyundt@okuneva.com','https://friendsofbotble.com','This article tackles a complex topic with clarity.','approved','141.167.250.106','Mozilla/5.0 (compatible; MSIE 8.0; Windows CE; Trident/3.0)','2025-08-14 01:54:56','2025-09-01 20:12:01'),(19,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',14,'http://stories.test','Quinten Lubowitz','flatley.barney@hammes.com','https://friendsofbotble.com','I\'m going to reflect on the ideas presented in this article.','approved','121.219.12.149','Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_7_0) AppleWebKit/537.2 (KHTML, like Gecko) Chrome/95.0.4373.13 Safari/537.2 Edg/95.01036.30','2025-08-07 05:11:24','2025-09-01 20:12:01'),(20,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',6,'http://stories.test','Nikki Ankunding','khalil.steuber@hane.com','https://friendsofbotble.com','The author\'s passion for the subject shines through in this article.','approved','209.47.35.30','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_1 rv:4.0; en-US) AppleWebKit/534.46.5 (KHTML, like Gecko) Version/5.0.3 Safari/534.46.5','2025-08-02 19:00:47','2025-09-01 20:12:01'),(21,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',13,'http://stories.test','Jessyca Leannon Sr.','collins.herta@hotmail.com','https://friendsofbotble.com','This article challenged my preconceptions in a thought-provoking way.','approved','145.87.233.3','Mozilla/5.0 (Windows NT 4.0) AppleWebKit/532.2 (KHTML, like Gecko) Chrome/80.0.4634.15 Safari/532.2 Edg/80.01117.34','2025-08-04 10:49:50','2025-09-01 20:12:01'),(22,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://stories.test','Prof. Brody Rowe DDS','timothy.wisozk@yahoo.com','https://friendsofbotble.com','I\'ve added this article to my reading list, it\'s worth revisiting.','approved','69.252.157.48','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_9 rv:4.0) Gecko/20210713 Firefox/35.0','2025-08-05 02:40:46','2025-09-01 20:12:01'),(23,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://stories.test','Prof. Beverly Homenick I','moen.sister@gmail.com','https://friendsofbotble.com','This article offers practical advice that I can apply in real life.','approved','252.1.10.181','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5320 (KHTML, like Gecko) Chrome/37.0.892.0 Mobile Safari/5320','2025-08-25 21:07:07','2025-09-01 20:12:02'),(24,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://stories.test','Prince Leuschke','august79@hotmail.com','https://friendsofbotble.com','I\'m going to recommend this article to my study group.','approved','238.143.216.253','Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.2; Trident/3.0)','2025-08-01 20:54:10','2025-09-01 20:12:02'),(25,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://stories.test','Prof. Darrin Schmidt IV','padberg.maxie@yahoo.com','https://friendsofbotble.com','The examples provided really helped me understand the concept better.','approved','96.209.224.190','Mozilla/5.0 (Windows NT 5.1) AppleWebKit/5341 (KHTML, like Gecko) Chrome/37.0.809.0 Mobile Safari/5341','2025-08-08 06:14:12','2025-09-01 20:12:02'),(26,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',12,'http://stories.test','Colby Kling DDS','shaina.hauck@hotmail.com','https://friendsofbotble.com','I resonate with the ideas presented here.','approved','163.68.59.114','Mozilla/5.0 (Windows 95) AppleWebKit/5331 (KHTML, like Gecko) Chrome/38.0.835.0 Mobile Safari/5331','2025-08-09 02:45:48','2025-09-01 20:12:02'),(27,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',9,'http://stories.test','Audie Hodkiewicz','fwilderman@reichert.biz','https://friendsofbotble.com','This article made me think critically about the topic.','approved','197.227.32.157','Opera/9.76 (Windows NT 6.2; en-US) Presto/2.9.197 Version/12.00','2025-08-04 23:58:36','2025-09-01 20:12:02'),(28,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',9,'http://stories.test','Brittany Mante','dejah.rosenbaum@hotmail.com','https://friendsofbotble.com','I\'ll definitely come back to this article for reference.','approved','153.29.124.16','Opera/8.31 (Windows NT 6.0; nl-NL) Presto/2.9.217 Version/10.00','2025-08-15 20:06:27','2025-09-01 20:12:02'),(29,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',16,'http://stories.test','Daisha Ullrich','ratke.marcelino@king.com','https://friendsofbotble.com','I\'ve shared this on social media, it\'s too good not to share.','approved','249.64.233.115','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5321 (KHTML, like Gecko) Chrome/39.0.854.0 Mobile Safari/5321','2025-09-01 18:46:45','2025-09-01 20:12:02'),(30,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',12,'http://stories.test','Jedidiah Armstrong','heloise.west@hotmail.com','https://friendsofbotble.com','This article presents a balanced view on a controversial topic.','approved','45.23.217.234','Mozilla/5.0 (compatible; MSIE 7.0; Windows NT 5.0; Trident/4.0)','2025-08-27 03:21:38','2025-09-01 20:12:02'),(31,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://stories.test','Winston Stanton','gloria.boehm@gmail.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s a gem.','approved','122.62.68.8','Mozilla/5.0 (compatible; MSIE 5.0; Windows NT 5.01; Trident/3.0)','2025-08-24 20:42:53','2025-09-01 20:12:02'),(32,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',14,'http://stories.test','Mr. Dale Green Jr.','raynor.elena@romaguera.com','https://friendsofbotble.com','I\'ve been struggling with this, your article helped a lot.','approved','121.90.200.46','Opera/9.99 (X11; Linux i686; sl-SI) Presto/2.12.199 Version/12.00','2025-08-15 14:26:37','2025-09-01 20:12:02'),(33,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',16,'http://stories.test','Daniella Hirthe','keyon.will@gmail.com','https://friendsofbotble.com','I\'ve learned something new today, thanks to this article.','approved','128.183.84.229','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_6_5 rv:5.0) Gecko/20190103 Firefox/35.0','2025-08-05 13:02:16','2025-09-01 20:12:02'),(34,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://stories.test','Tiara Predovic','schulist.valentina@steuber.com','https://friendsofbotble.com','Kudos to the author for a well-researched piece.','approved','49.100.25.200','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_8_1 rv:6.0) Gecko/20221104 Firefox/37.0','2025-08-27 14:45:22','2025-09-01 20:12:02'),(35,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',3,'http://stories.test','Bailee Gulgowski','schultz.carter@yahoo.com','https://friendsofbotble.com','I\'m impressed by the depth of knowledge demonstrated here.','approved','53.88.182.71','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_5_2 rv:2.0; en-US) AppleWebKit/531.15.6 (KHTML, like Gecko) Version/5.0 Safari/531.15.6','2025-09-01 17:27:42','2025-09-01 20:12:02'),(36,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',12,'http://stories.test','Prof. Johnathan Kerluke I','corbin80@yahoo.com','https://friendsofbotble.com','This article challenged my assumptions in a good way.','approved','149.53.212.169','Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_4 rv:2.0; sl-SI) AppleWebKit/532.47.3 (KHTML, like Gecko) Version/5.0.1 Safari/532.47.3','2025-08-29 03:03:52','2025-09-01 20:12:02'),(37,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://stories.test','Dr. Cecilia Padberg','dmarvin@gmail.com','https://friendsofbotble.com','I\'ve shared this with my colleagues, it\'s worth discussing.','approved','86.139.73.1','Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20230305 Firefox/36.0','2025-08-17 12:42:21','2025-09-01 20:12:02'),(38,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',9,'http://stories.test','Prof. Jammie McCullough Sr.','hattie.daniel@hotmail.com','https://friendsofbotble.com','The information presented here is very valuable.','approved','201.153.69.135','Mozilla/5.0 (Windows 95) AppleWebKit/534.0 (KHTML, like Gecko) Chrome/95.0.4630.69 Safari/534.0 Edg/95.01123.52','2025-08-09 19:57:41','2025-09-01 20:12:02'),(39,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',5,'http://stories.test','Elmore Friesen','ardella45@gaylord.org','https://friendsofbotble.com','You have a talent for explaining complex topics clearly.','approved','108.74.236.30','Opera/8.24 (X11; Linux i686; sl-SI) Presto/2.10.240 Version/12.00','2025-08-24 17:51:33','2025-09-01 20:12:02'),(40,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',2,'http://stories.test','Alyson Nienow','pfannerstill.schuyler@hotmail.com','https://friendsofbotble.com','I\'m inspired to learn more about this after reading your article.','approved','60.173.250.152','Mozilla/5.0 (Macintosh; PPC Mac OS X 10_8_7 rv:6.0; sl-SI) AppleWebKit/535.48.4 (KHTML, like Gecko) Version/4.0.5 Safari/535.48.4','2025-08-11 06:20:13','2025-09-01 20:12:02'),(41,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',8,'http://stories.test','Prof. Dorcas Wehner DVM','romaguera.domenic@adams.com','https://friendsofbotble.com','This article deserves wider recognition.','approved','28.192.239.129','Mozilla/5.0 (X11; Linux x86_64; rv:6.0) Gecko/20180621 Firefox/36.0','2025-08-06 12:55:59','2025-09-01 20:12:02'),(42,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',15,'http://stories.test','Mr. Mathias Doyle Sr.','sierra.armstrong@hotmail.com','https://friendsofbotble.com','I\'m grateful for the insights shared in this piece.','approved','113.70.22.102','Mozilla/5.0 (iPhone; CPU iPhone OS 13_1 like Mac OS X) AppleWebKit/536.0 (KHTML, like Gecko) Version/15.0 EdgiOS/81.01072.68 Mobile/15E148 Safari/536.0','2025-09-01 13:11:07','2025-09-01 20:12:02'),(43,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',4,'http://stories.test','Virginie Price','idella.goldner@gmail.com','https://friendsofbotble.com','The author presents a balanced view on a controversial topic.','approved','226.96.118.103','Mozilla/5.0 (X11; Linux i686) AppleWebKit/5310 (KHTML, like Gecko) Chrome/37.0.808.0 Mobile Safari/5310','2025-08-25 19:07:31','2025-09-01 20:12:02'),(44,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',16,'http://stories.test','Lorena Balistreri','pschneider@yahoo.com','https://friendsofbotble.com','I\'m glad I stumbled upon this article, it\'s','approved','70.46.13.174','Mozilla/5.0 (iPad; CPU OS 8_2_1 like Mac OS X; en-US) AppleWebKit/531.42.7 (KHTML, like Gecko) Version/3.0.5 Mobile/8B117 Safari/6531.42.7','2025-08-10 04:55:16','2025-09-01 20:12:02'),(45,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',10,'http://stories.test','Juliet Waelchi','dferry@white.org','https://friendsofbotble.com','I\'ve been searching for information on this topic, glad I found this article. It\'s incredibly insightful and provides a comprehensive overview of the subject matter. I appreciate the effort put into researching and writing this piece. It\'s truly eye-opening and has given me a new perspective. Thank you for sharing your knowledge with us!','approved','141.174.74.22','Mozilla/5.0 (compatible; MSIE 10.0; Windows 95; Trident/4.0)','2025-08-06 05:57:28','2025-09-01 20:12:02'),(46,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',7,'http://stories.test','Dr. Buster Gutkowski DVM','stuart43@crona.com','https://friendsofbotble.com','This article is a masterpiece! It dives deep into the topic and offers valuable insights that are both thought-provoking and enlightening. The author\'s expertise is evident throughout, making it a compelling read from start to finish. I\'ll definitely be coming back to this for reference in the future.','approved','189.113.181.115','Mozilla/5.0 (iPad; CPU OS 7_1_1 like Mac OS X; nl-NL) AppleWebKit/532.41.6 (KHTML, like Gecko) Version/4.0.5 Mobile/8B116 Safari/6532.41.6','2025-08-22 16:16:56','2025-09-01 20:12:02'),(47,NULL,NULL,NULL,'Botble\\Blog\\Models\\Post',1,'http://stories.test','Dagmar Kozey','angeline61@hotmail.com','https://friendsofbotble.com','I\'m amazed by the depth of analysis in this article. It covers a wide range of aspects related to the topic, providing a comprehensive understanding. The clarity of explanation is commendable, making complex concepts easy to grasp. This article has enriched my understanding and sparked further curiosity. Kudos to the author!','approved','14.200.77.124','Opera/9.81 (X11; Linux x86_64; nl-NL) Presto/2.8.194 Version/11.00','2025-08-26 01:07:33','2025-09-01 20:12:02');
/*!40000 ALTER TABLE `fob_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Perferendis non ab accusantium et. Rerum eum aut itaque occaecati. Similique quasi et beatae unde inventore.',1,0,'galleries/1.jpg',1,'published','2025-09-01 20:12:01','2025-09-01 20:12:01'),(2,'New Day','Rerum eos ex aperiam aspernatur. Nihil fuga est totam deleniti quo maxime qui est. Aperiam at suscipit corporis beatae enim reiciendis aut.',1,0,'galleries/2.jpg',1,'published','2025-09-01 20:12:01','2025-09-01 20:12:01'),(3,'Happy Day','Qui delectus consequatur magnam id non at consequatur aut. Ratione nemo reprehenderit ut ea perferendis repellendus est.',1,0,'galleries/3.jpg',1,'published','2025-09-01 20:12:01','2025-09-01 20:12:01'),(4,'Nature','Voluptas veritatis alias illum non. Odio nostrum magnam quos quia autem amet. Eligendi vel quas quo rerum quibusdam aut qui.',1,0,'galleries/4.jpg',1,'published','2025-09-01 20:12:01','2025-09-01 20:12:01'),(5,'Morning','Ab tempora vero voluptates in. Quae dolores quod quam vel quis placeat. Eos voluptatem omnis dolorem sed.',1,0,'galleries/5.jpg',1,'published','2025-09-01 20:12:01','2025-09-01 20:12:01'),(6,'Photography','Corrupti nemo in dolorum odio. Facilis ut itaque tenetur.',1,0,'galleries/6.jpg',1,'published','2025-09-01 20:12:01','2025-09-01 20:12:01');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos quidem ullam animi assumenda reprehenderit quo. Est aliquid incidunt voluptatem voluptas atque. Vel et a deserunt enim.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et accusamus consectetur numquam dolore omnis aut. Ex non odio ea quae eveniet provident est. Doloremque ut tenetur dignissimos blanditiis quis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem qui quaerat repellendus eum. Et suscipit animi et omnis dolorem optio sit. Vero quia architecto a earum et sapiente expedita.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Cupiditate doloremque aperiam illum praesentium beatae cupiditate. Aliquid ea vel voluptatem. Qui a ut qui animi aspernatur et qui.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Est ducimus quis iusto aspernatur eveniet. Ut molestiae laborum aliquid eaque nesciunt ducimus et. Dolorum cum reprehenderit et molestiae voluptatem.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Fugiat neque impedit natus dolorum. Dignissimos doloribus unde est. Officiis ipsa sit dolor maxime consequatur porro nesciunt velit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Debitis consequatur enim id culpa eligendi quia. Quia vitae quia porro neque assumenda repellat.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Tempore fugiat ut amet necessitatibus non. Recusandae sunt consequatur ea expedita aliquid id. Vitae provident harum voluptas qui aut.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"In dolores sint et libero voluptas nam corporis. Optio fugit ab unde illum. Possimus facere cupiditate dignissimos sint cum non.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2025-09-01 20:12:01','2025-09-01 20:12:01'),(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos quidem ullam animi assumenda reprehenderit quo. Est aliquid incidunt voluptatem voluptas atque. Vel et a deserunt enim.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et accusamus consectetur numquam dolore omnis aut. Ex non odio ea quae eveniet provident est. Doloremque ut tenetur dignissimos blanditiis quis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem qui quaerat repellendus eum. Et suscipit animi et omnis dolorem optio sit. Vero quia architecto a earum et sapiente expedita.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Cupiditate doloremque aperiam illum praesentium beatae cupiditate. Aliquid ea vel voluptatem. Qui a ut qui animi aspernatur et qui.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Est ducimus quis iusto aspernatur eveniet. Ut molestiae laborum aliquid eaque nesciunt ducimus et. Dolorum cum reprehenderit et molestiae voluptatem.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Fugiat neque impedit natus dolorum. Dignissimos doloribus unde est. Officiis ipsa sit dolor maxime consequatur porro nesciunt velit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Debitis consequatur enim id culpa eligendi quia. Quia vitae quia porro neque assumenda repellat.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Tempore fugiat ut amet necessitatibus non. Recusandae sunt consequatur ea expedita aliquid id. Vitae provident harum voluptas qui aut.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"In dolores sint et libero voluptas nam corporis. Optio fugit ab unde illum. Possimus facere cupiditate dignissimos sint cum non.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2025-09-01 20:12:01','2025-09-01 20:12:01'),(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos quidem ullam animi assumenda reprehenderit quo. Est aliquid incidunt voluptatem voluptas atque. Vel et a deserunt enim.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et accusamus consectetur numquam dolore omnis aut. Ex non odio ea quae eveniet provident est. Doloremque ut tenetur dignissimos blanditiis quis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem qui quaerat repellendus eum. Et suscipit animi et omnis dolorem optio sit. Vero quia architecto a earum et sapiente expedita.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Cupiditate doloremque aperiam illum praesentium beatae cupiditate. Aliquid ea vel voluptatem. Qui a ut qui animi aspernatur et qui.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Est ducimus quis iusto aspernatur eveniet. Ut molestiae laborum aliquid eaque nesciunt ducimus et. Dolorum cum reprehenderit et molestiae voluptatem.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Fugiat neque impedit natus dolorum. Dignissimos doloribus unde est. Officiis ipsa sit dolor maxime consequatur porro nesciunt velit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Debitis consequatur enim id culpa eligendi quia. Quia vitae quia porro neque assumenda repellat.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Tempore fugiat ut amet necessitatibus non. Recusandae sunt consequatur ea expedita aliquid id. Vitae provident harum voluptas qui aut.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"In dolores sint et libero voluptas nam corporis. Optio fugit ab unde illum. Possimus facere cupiditate dignissimos sint cum non.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2025-09-01 20:12:01','2025-09-01 20:12:01'),(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos quidem ullam animi assumenda reprehenderit quo. Est aliquid incidunt voluptatem voluptas atque. Vel et a deserunt enim.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et accusamus consectetur numquam dolore omnis aut. Ex non odio ea quae eveniet provident est. Doloremque ut tenetur dignissimos blanditiis quis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem qui quaerat repellendus eum. Et suscipit animi et omnis dolorem optio sit. Vero quia architecto a earum et sapiente expedita.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Cupiditate doloremque aperiam illum praesentium beatae cupiditate. Aliquid ea vel voluptatem. Qui a ut qui animi aspernatur et qui.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Est ducimus quis iusto aspernatur eveniet. Ut molestiae laborum aliquid eaque nesciunt ducimus et. Dolorum cum reprehenderit et molestiae voluptatem.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Fugiat neque impedit natus dolorum. Dignissimos doloribus unde est. Officiis ipsa sit dolor maxime consequatur porro nesciunt velit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Debitis consequatur enim id culpa eligendi quia. Quia vitae quia porro neque assumenda repellat.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Tempore fugiat ut amet necessitatibus non. Recusandae sunt consequatur ea expedita aliquid id. Vitae provident harum voluptas qui aut.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"In dolores sint et libero voluptas nam corporis. Optio fugit ab unde illum. Possimus facere cupiditate dignissimos sint cum non.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2025-09-01 20:12:01','2025-09-01 20:12:01'),(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos quidem ullam animi assumenda reprehenderit quo. Est aliquid incidunt voluptatem voluptas atque. Vel et a deserunt enim.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et accusamus consectetur numquam dolore omnis aut. Ex non odio ea quae eveniet provident est. Doloremque ut tenetur dignissimos blanditiis quis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem qui quaerat repellendus eum. Et suscipit animi et omnis dolorem optio sit. Vero quia architecto a earum et sapiente expedita.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Cupiditate doloremque aperiam illum praesentium beatae cupiditate. Aliquid ea vel voluptatem. Qui a ut qui animi aspernatur et qui.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Est ducimus quis iusto aspernatur eveniet. Ut molestiae laborum aliquid eaque nesciunt ducimus et. Dolorum cum reprehenderit et molestiae voluptatem.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Fugiat neque impedit natus dolorum. Dignissimos doloribus unde est. Officiis ipsa sit dolor maxime consequatur porro nesciunt velit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Debitis consequatur enim id culpa eligendi quia. Quia vitae quia porro neque assumenda repellat.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Tempore fugiat ut amet necessitatibus non. Recusandae sunt consequatur ea expedita aliquid id. Vitae provident harum voluptas qui aut.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"In dolores sint et libero voluptas nam corporis. Optio fugit ab unde illum. Possimus facere cupiditate dignissimos sint cum non.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2025-09-01 20:12:01','2025-09-01 20:12:01'),(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quos quidem ullam animi assumenda reprehenderit quo. Est aliquid incidunt voluptatem voluptas atque. Vel et a deserunt enim.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et accusamus consectetur numquam dolore omnis aut. Ex non odio ea quae eveniet provident est. Doloremque ut tenetur dignissimos blanditiis quis.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Voluptatem qui quaerat repellendus eum. Et suscipit animi et omnis dolorem optio sit. Vero quia architecto a earum et sapiente expedita.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Cupiditate doloremque aperiam illum praesentium beatae cupiditate. Aliquid ea vel voluptatem. Qui a ut qui animi aspernatur et qui.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Est ducimus quis iusto aspernatur eveniet. Ut molestiae laborum aliquid eaque nesciunt ducimus et. Dolorum cum reprehenderit et molestiae voluptatem.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Fugiat neque impedit natus dolorum. Dignissimos doloribus unde est. Officiis ipsa sit dolor maxime consequatur porro nesciunt velit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Debitis consequatur enim id culpa eligendi quia. Quia vitae quia porro neque assumenda repellat.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Tempore fugiat ut amet necessitatibus non. Recusandae sunt consequatur ea expedita aliquid id. Vitae provident harum voluptas qui aut.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"In dolores sint et libero voluptas nam corporis. Optio fugit ab unde illum. Possimus facere cupiditate dignissimos sint cum non.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2025-09-01 20:12:01','2025-09-01 20:12:01');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','7af8d0210293ef7bbef151105ef262c8',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','7030730371c10966cb2b72b578874b9a',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','4587cb04ffb326ff8d3a0e584daaaf5c',2,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (2,0,'default','default',2,'image/jpeg',2100,'users/default.jpg','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(3,0,'author','author',3,'image/jpeg',17163,'general/author.jpg','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(4,0,'favicon','favicon',3,'image/png',734,'general/favicon.png','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(5,0,'featured','featured',3,'image/png',7905,'general/featured.png','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(6,0,'logo-white','logo-white',3,'image/png',1620,'general/logo-white.png','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(7,0,'logo','logo',3,'image/png',1732,'general/logo.png','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(8,0,'1','1',4,'image/jpeg',9803,'news/1.jpg','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(9,0,'10','10',4,'image/jpeg',9803,'news/10.jpg','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(10,0,'11','11',4,'image/jpeg',9803,'news/11.jpg','[]','2025-09-01 20:11:59','2025-09-01 20:11:59',NULL,'public'),(11,0,'12','12',4,'image/jpeg',9803,'news/12.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(12,0,'13','13',4,'image/jpeg',9803,'news/13.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(13,0,'14','14',4,'image/jpeg',9803,'news/14.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(14,0,'15','15',4,'image/jpeg',9803,'news/15.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(15,0,'16','16',4,'image/jpeg',9803,'news/16.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(16,0,'17','17',4,'image/jpeg',9803,'news/17.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(17,0,'18','18',4,'image/jpeg',9803,'news/18.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(18,0,'19','19',4,'image/jpeg',9803,'news/19.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(19,0,'2','2',4,'image/jpeg',9803,'news/2.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(20,0,'3','3',4,'image/jpeg',9803,'news/3.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(21,0,'4','4',4,'image/jpeg',9803,'news/4.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(22,0,'5','5',4,'image/jpeg',9803,'news/5.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(23,0,'6','6',4,'image/jpeg',9803,'news/6.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(24,0,'7','7',4,'image/jpeg',9803,'news/7.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(25,0,'8','8',4,'image/jpeg',9803,'news/8.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(26,0,'9','9',4,'image/jpeg',9803,'news/9.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(27,0,'1','1',5,'image/jpeg',9803,'categories/1.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(28,0,'2','2',5,'image/jpeg',9803,'categories/2.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(29,0,'3','3',5,'image/jpeg',9803,'categories/3.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(30,0,'4','4',5,'image/jpeg',9803,'categories/4.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(31,0,'5','5',5,'image/jpeg',9803,'categories/5.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(32,0,'6','6',5,'image/jpeg',9803,'categories/6.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(33,0,'7','7',5,'image/jpeg',9803,'categories/7.jpg','[]','2025-09-01 20:12:00','2025-09-01 20:12:00',NULL,'public'),(34,0,'1','1',6,'image/jpeg',9803,'galleries/1.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(35,0,'10','10',6,'image/jpeg',9803,'galleries/10.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(36,0,'2','2',6,'image/jpeg',9803,'galleries/2.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(37,0,'3','3',6,'image/jpeg',9803,'galleries/3.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(38,0,'4','4',6,'image/jpeg',9803,'galleries/4.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(39,0,'5','5',6,'image/jpeg',9803,'galleries/5.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(40,0,'6','6',6,'image/jpeg',9803,'galleries/6.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(41,0,'7','7',6,'image/jpeg',9803,'galleries/7.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(42,0,'8','8',6,'image/jpeg',9803,'galleries/8.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(43,0,'9','9',6,'image/jpeg',9803,'galleries/9.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(44,0,'1','1',7,'image/jpeg',9963,'banners/1.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(45,0,'2','2',7,'image/jpeg',9963,'banners/2.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public'),(46,0,'3','3',7,'image/jpeg',9963,'banners/3.jpg','[]','2025-09-01 20:12:01','2025-09-01 20:12:01',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (2,0,'users',NULL,'users',0,'2025-09-01 20:11:59','2025-09-01 20:11:59',NULL),(3,0,'general',NULL,'general',0,'2025-09-01 20:11:59','2025-09-01 20:11:59',NULL),(4,0,'news',NULL,'news',0,'2025-09-01 20:11:59','2025-09-01 20:11:59',NULL),(5,0,'categories',NULL,'categories',0,'2025-09-01 20:12:00','2025-09-01 20:12:00',NULL),(6,0,'galleries',NULL,'galleries',0,'2025-09-01 20:12:01','2025-09-01 20:12:01',NULL),(7,0,'banners',NULL,'banners',0,'2025-09-01 20:12:01','2025-09-01 20:12:01',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','elegant-icon icon_house_alt mr-5',0,'Home',NULL,'_self',1,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(2,1,1,NULL,NULL,'/',NULL,0,'Home default',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(3,1,1,2,'Botble\\Page\\Models\\Page','/home-2',NULL,1,'Home 2',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(4,1,1,3,'Botble\\Page\\Models\\Page','/home-3',NULL,2,'Home 3',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(5,1,0,2,'Botble\\Blog\\Models\\Category',NULL,NULL,1,'Travel',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(6,1,0,4,'Botble\\Blog\\Models\\Category',NULL,NULL,2,'Destination',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(7,1,0,6,'Botble\\Blog\\Models\\Category',NULL,NULL,3,'Hotels',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(8,1,0,9,'Botble\\Blog\\Models\\Category',NULL,NULL,4,'Lifestyle',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(9,1,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,5,'Blog',NULL,'_self',1,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(10,1,9,9,'Botble\\Page\\Models\\Page','/blog-grid-layout',NULL,0,'Grid layout',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(11,1,9,7,'Botble\\Page\\Models\\Page','/blog-list-layout',NULL,1,'List layout',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(12,1,9,8,'Botble\\Page\\Models\\Page','/blog-big-layout',NULL,2,'Big layout',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(13,1,0,NULL,NULL,'/galleries',NULL,6,'Galleries',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(14,1,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,7,'Contact',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(15,2,0,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(16,2,0,5,'Botble\\Page\\Models\\Page','/contact',NULL,1,'Contact',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(17,2,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,2,'Blog',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(18,2,0,2,'Botble\\Blog\\Models\\Category',NULL,NULL,3,'Travel',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59'),(19,2,0,NULL,NULL,'/galleries',NULL,4,'Galleries',NULL,'_self',0,'2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(2,'Quick links','quick-links','published','2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'bio','[\"Hi, I\\u2019m Gene Gleason, Your Blogging Journey Guide \\ud83d\\udd8b\\ufe0f. Writing, one blog post at a time, to inspire, inform, and ignite your curiosity. Join me as we explore the world through words and embark on a limitless adventure of knowledge and creativity. Let\\u2019s bring your thoughts to life on these digital pages. \\ud83c\\udf1f #BloggingAdventures\"]',1,'Botble\\ACL\\Models\\User','2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_09_01_000001_create_admin_notifications_tables',1),(22,'2022_10_14_024629_drop_column_is_featured',1),(23,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(24,'2022_12_02_093615_update_slug_index_columns',1),(25,'2023_01_30_024431_add_alt_to_media_table',1),(26,'2023_02_16_042611_drop_table_password_resets',1),(27,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(28,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(29,'2023_08_21_090810_make_page_content_nullable',1),(30,'2023_09_14_021936_update_index_for_slugs_table',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_04_030654_improve_social_links',1),(35,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(36,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(37,'2024_07_12_100000_change_random_hash_for_media',1),(38,'2024_09_30_024515_create_sessions_table',1),(39,'2024_12_19_000001_create_device_tokens_table',1),(40,'2024_12_19_000002_create_push_notifications_table',1),(41,'2024_12_19_000003_create_push_notification_recipients_table',1),(42,'2024_12_30_000001_create_user_settings_table',1),(43,'2025_07_06_030754_add_phone_to_users_table',1),(44,'2025_07_31_add_performance_indexes_to_slugs_table',1),(45,'2020_11_18_150916_ads_create_ads_table',2),(46,'2021_12_02_035301_add_ads_translations_table',2),(47,'2023_04_17_062645_add_open_in_new_tab',2),(48,'2023_11_07_023805_add_tablet_mobile_image',2),(49,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(50,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',2),(51,'2024_04_27_100730_improve_analytics_setting',3),(52,'2023_08_11_060908_create_announcements_table',4),(53,'2025_02_11_153025_add_action_label_to_announcement_translations',4),(54,'2015_06_29_025744_create_audit_history',5),(55,'2023_11_14_033417_change_request_column_in_table_audit_histories',5),(56,'2025_05_05_000001_add_user_type_to_audit_histories_table',5),(57,'2015_06_18_033822_create_blog_table',6),(58,'2021_02_16_092633_remove_default_value_for_author_type',6),(59,'2021_12_03_030600_create_blog_translations',6),(60,'2022_04_19_113923_add_index_to_table_posts',6),(61,'2023_08_29_074620_make_column_author_id_nullable',6),(62,'2024_07_30_091615_fix_order_column_in_categories_table',6),(63,'2025_01_06_033807_add_default_value_for_categories_author_type',6),(64,'2016_06_17_091537_create_contacts_table',7),(65,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',7),(66,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',7),(67,'2024_03_25_000001_update_captcha_settings_for_contact',7),(68,'2024_04_19_063914_create_custom_fields_table',7),(69,'2024_01_16_050056_create_comments_table',8),(70,'2016_10_13_150201_create_galleries_table',9),(71,'2021_12_03_082953_create_gallery_translations',9),(72,'2022_04_30_034048_create_gallery_meta_translations_table',9),(73,'2023_08_29_075308_make_column_user_id_nullable',9),(74,'2016_10_03_032336_create_languages_table',10),(75,'2023_09_14_022423_add_index_for_language_table',10),(76,'2021_10_25_021023_fix-priority-load-for-language-advanced',11),(77,'2021_12_03_075608_create_page_translations',11),(78,'2023_07_06_011444_create_slug_translations_table',11),(79,'2017_10_24_154832_create_newsletter_table',12),(80,'2024_03_25_000001_update_captcha_settings_for_newsletter',12),(81,'2016_10_07_193005_create_translations_table',13),(82,'2023_12_12_105220_drop_translations_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[about-banner title=\"Hello, I’m &lt;span&gt;Steven&lt;/span&gt;\" subtitle=\"Welcome to my blog\" text_muted=\"Travel Blogger., Content Writer., Food Guides\" image=\"general/featured.png\" newsletter_title=\"Don\'t miss out on the latest news about Travel tips, Hotels review, Food guide...\" image=\"general/featured.png\" show_newsletter_form=\"yes\"][/about-banner]</div><div>[featured-posts title=\"Featured posts\"][/featured-posts]</div><div>[blog-categories-posts category_id=\"2\"][/blog-categories-posts]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"][/categories-with-posts]</div><div>[featured-categories title=\"Categories\"][/featured-categories]</div>',1,NULL,'homepage',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(2,'Home 2','<div>[featured-posts-slider-full][/featured-posts-slider-full]</div><div>[blog-categories-posts category_id=\"2\"][/blog-categories-posts]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"][/categories-with-posts]</div><div>[featured-categories title=\"Categories\"][/featured-categories]</div>',1,NULL,'homepage',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(3,'Home 3','<div>[featured-posts-slider][/featured-posts-slider]</div><div>[blog-categories-posts category_id=\"2\"][/blog-categories-posts]</div><div>[categories-with-posts category_id_1=\"3\" category_id_2=\"4\" category_id_3=\"5\"][/categories-with-posts]</div><div>[featured-categories title=\"Categories\"][/featured-categories]</div>',1,NULL,'homepage',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(4,'Blog','---',1,NULL,'default',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(5,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(7,'Blog List layout','<div>[blog-list limit=\"12\"][/blog-list]</div>',1,NULL,'right-sidebar',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(8,'Blog Big layout','<div>[blog-big limit=\"12\"][/blog-big]</div>',1,NULL,'default',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59'),(9,'Blog Grid layout','<div>[blog-big limit=\"12\"][/blog-big]</div>',1,NULL,'right-sidebar',NULL,'published','2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(7,1),(7,2),(6,2),(1,3),(2,3),(2,4),(8,4),(3,5),(5,5),(6,6),(7,6),(1,7),(9,8),(4,8),(9,9),(8,9),(9,10),(6,11),(4,11),(7,12),(2,12),(4,13),(5,13),(8,14),(6,14),(6,15),(3,15),(1,16),(3,16);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(5,1),(4,1),(5,2),(1,2),(2,2),(3,3),(1,3),(4,4),(2,4),(1,4),(4,5),(5,5),(5,6),(4,6),(2,6),(2,7),(5,7),(1,7),(5,8),(3,8),(4,8),(3,9),(2,9),(4,10),(5,10),(5,11),(1,11),(3,11),(5,12),(4,12),(2,13),(3,13),(1,14),(5,14),(4,14),(2,15),(4,15),(3,15),(1,16);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'The Top 2020 Handbag Trends to Know','Delectus aut quia rerum quam optio corporis. Odit rerum qui reprehenderit qui distinctio debitis aut. Sunt quos et distinctio molestiae est unde.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/8.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/18.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/12.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1366,'video','2025-09-01 20:12:01','2025-09-01 20:12:01'),(2,'Top Search Engine Optimization Strategies!','Nulla et quas pariatur illum quod. Unde nisi voluptatem id tempore ut rerum. Qui accusantium quo necessitatibus praesentium.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/4.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/9.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/17.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/14.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2148,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(3,'Which Company Would You Choose?','Dolor autem nulla ea in eos eos. Nobis debitis eaque dolor eaque qui. Nostrum ut odit quisquam dolore officiis sint. Doloremque voluptatem tempore eum eligendi dolorem est.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/4.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/10.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/17.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',920,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(4,'Used Car Dealer Sales Tricks Exposed','Voluptas dolor consectetur mollitia incidunt magnam qui. Sed aspernatur ad doloribus sint eligendi. Enim totam cum nostrum necessitatibus molestiae. Repudiandae rerum ea saepe.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/3.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/6.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/15.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/14.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2218,'video','2025-09-01 20:12:01','2025-09-01 20:12:01'),(5,'20 Ways To Sell Your Product Faster','Rerum ad ipsa vel officiis illum eveniet. Dolorem enim rem voluptas est. Pariatur est ab nihil velit.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/4.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/9.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/17.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/11.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1288,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(6,'The Secrets Of Rich And Famous Writers','Nobis ipsam et id dolore sint explicabo. Minus soluta autem sunt sed accusantium ipsum eaque quae. Dolorum est consequatur mollitia expedita consequatur quaerat.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/3.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/6.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/16.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/17.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1218,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(7,'Imagine Losing 20 Pounds In 14 Days!','Voluptas esse qui molestias quasi tenetur magnam vitae non. Quia sint vel ducimus quod. Maiores repellat quae quidem praesentium maxime quisquam ullam.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/1.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/6.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/14.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/15.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1035,'video','2025-09-01 20:12:01','2025-09-01 20:12:01'),(8,'Are You Still Using That Slow, Old Typewriter?','Autem a nostrum doloribus quo. Aut consequatur repellendus laborum voluptatem aspernatur. Amet sit voluptas nihil nobis voluptas. Blanditiis dolores sequi porro impedit velit quia dicta.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/3.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/10.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/17.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/17.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',191,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(9,'A Skin Cream That’s Proven To Work','Sapiente qui quaerat ad. Consequuntur et ut eos sed ex praesentium. Vitae quod ducimus voluptatem ratione et et quidem voluptas. Sit rem esse eum voluptas fugiat error repellendus.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/1.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/12.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/13.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/13.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2163,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(10,'10 Reasons To Start Your Own, Profitable Website!','Quos id ipsam sit deleniti. Provident consectetur repellendus doloremque et ut quia. Repellendus voluptatum exercitationem rerum possimus occaecati harum et et.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/5.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/9.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/14.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/10.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',234,'video','2025-09-01 20:12:01','2025-09-01 20:12:01'),(11,'Simple Ways To Reduce Your Unwanted Wrinkles!','Quidem sint placeat laudantium voluptatibus. Rerum aperiam repellat sed aut. Eaque numquam voluptate possimus. Nulla ipsa quisquam praesentium vel quos doloremque.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/5.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/10.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/17.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/14.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',599,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(12,'Apple iMac with Retina 5K display review','Commodi alias quidem perspiciatis qui accusamus. Quo et excepturi et nulla ratione non minima. Velit earum distinctio qui sapiente et modi qui. Autem officiis est doloremque aut.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/4.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/11.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/13.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/18.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',2172,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(13,'10,000 Web Site Visitors In One Month:Guaranteed','Voluptatibus non beatae similique commodi. Expedita aut quis est et quaerat omnis ratione. Sit officia ullam ullam aliquid ut aut vero.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/4.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/8.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/13.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/13.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',226,'video','2025-09-01 20:12:01','2025-09-01 20:12:01'),(14,'Unlock The Secrets Of Selling High Ticket Items','Tempore fuga aspernatur fuga et perspiciatis accusantium. Numquam ut nam fuga placeat excepturi maiores omnis. Non accusantium labore vel. Aut non est officiis illum cupiditate quaerat natus.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/2.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/6.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/15.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/10.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1877,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(15,'4 Expert Tips On How To Choose The Right Men’s Wallet','Eligendi assumenda et est quaerat. Totam est minima veniam. Accusamus distinctio est nam enim dolores aliquam.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/4.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/11.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/15.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/10.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',1296,'default','2025-09-01 20:12:01','2025-09-01 20:12:01'),(16,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Beatae nobis ut et et quia. Aut praesentium ut sit. Ut quia enim quia corrupti ipsa tenetur fuga. Odit ipsa quis harum et doloribus velit quasi recusandae.','<p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until.</p><p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p>   <hr class=\"wp-block-separator is-style-dots\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness <a href=\"/\">nightingale</a> the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <figure class=\"wp-block-gallery columns-3 wp-block-image\">\n                        <ul>\n                            <li><a href=\"/\"><img src=\"/storage/news/5.jpg\" alt=\"image 1\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/8.jpg\" alt=\"image 2\"></a></li>\n                            <li><a href=\"/\"><img src=\"/storage/news/13.jpg\" alt=\"image 3\"></a></li>\n                        </ul>\n                        <figcaption> <i class=\"ti-credit-card mr-5\"></i>Image credit: Behance </figcaption>\n                    </figure>\n                    <hr class=\"section-divider\">\n                    <p>Yet more some certainly yet alas abandonedly whispered <a href=\"/\">intriguingly</a><sup><a href=\"/\">[2]</a></sup> well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less <a href=\"/\">however</a> hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                    <h2>The Guitar Legends</h2>\n                    <p>Furrowed this in the upset <a href=\"/\">some across</a><sup><a href=\"/\">[3]</a></sup> tiger oh loaded house gosh whispered <a href=\"/\">faltering alas</a><sup><a href=\"/\">[4]</a></sup> ouch cuckoo coward in scratched undid together bit fumblingly so besides salamander heron during the jeepers hello fitting jauntily much smoothly globefish darn blessedly far so along bluebird leopard and.</p>\n                    <blockquote>\n                        <p>Integer eu faucibus <a href=\"/\">dolor</a><sup><a href=\"/\">[5]</a></sup>. Ut venenatis tincidunt diam elementum imperdiet. Etiam accumsan semper nisl eu congue. Sed aliquam magna erat, ac eleifend lacus rhoncus in.</p>\n                    </blockquote>\n                    <p>Fretful human far recklessly while caterpillar well a well blubbered added one a some far whispered rampantly whispered while irksome far clung irrespective wailed more rosily and where saluted while black dear so yikes as considering recast to some crass until cow much less and rakishly overdrew consistent for by responsible oh one hypocritical less bastard hey oversaw zebra browbeat a well.</p>\n                    <h3>Getting Crypto Rich</h3>\n                    <hr class=\"wp-block-separator is-style-wide\">\n                    <div class=\"wp-block-image\">\n                        <figure class=\"alignleft is-resized\">\n                            <img class=\"border-radius-5\" src=\"/storage/news/15.jpg\" alt=\"image 4\">\n                            <figcaption> And far contrary smoked some contrary among stealthy </figcaption>\n                        </figure>\n                    </div>\n                    <p>And far contrary smoked some contrary among stealthy engagingly suspiciously a cockatoo far circa sank dully lewd slick cracked llama the much gecko yikes more squirrel sniffed this and the the much within uninhibited this abominable a blubbered overdid foresaw through alas the pessimistic.</p>\n                    <p>Gosh jaguar ostrich quail one excited dear hello and bound and the and bland moral misheard roadrunner flapped lynx far that and jeepers giggled far and far bald that roadrunner python inside held shrewdly the manatee.</p>\n                    <br>\n                    <hr class=\"section-divider\">\n                    <p>Thanks sniffed in hello after in foolhardy and some far purposefully much one at the much conjointly leapt skimpily that quail sheep some goodness nightingale the instead exited expedient up far ouch mellifluous altruistic and and lighted more instead much when ferret but the.</p>\n                    <p>Yet more some certainly yet alas abandonedly whispered intriguingly well extensive one howled talkative admonishingly below a rethought overlaid dear gosh activated less however hawk yet oh scratched ostrich some outside crud irrespective lightheartedly and much far amenably that the elephant since when.</p>\n                ','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',1419,'video','2025-09-01 20:12:01','2025-09-01 20:12:01');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"fob-comment.index\":true,\"fob-comment.comments.index\":true,\"fob-comment.comments.edit\":true,\"fob-comment.comments.destroy\":true,\"fob-comment.comments.reply\":true,\"fob-comment.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','462f32cb8042ad461a755a14b26069ac',NULL,'2025-09-01 20:12:01'),(2,'api_enabled','0',NULL,'2025-09-01 20:12:01'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"fob-comment\",\"gallery\",\"newsletter\",\"rss-feed\",\"translation\"]',NULL,'2025-09-01 20:12:01'),(4,'analytics_dashboard_widgets','0','2025-09-01 20:11:58','2025-09-01 20:11:58'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-09-01 20:11:58','2025-09-01 20:11:58'),(6,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-09-01 20:11:58','2025-09-01 20:11:58'),(7,'theme','stories',NULL,'2025-09-01 20:12:01'),(8,'show_admin_bar','1',NULL,'2025-09-01 20:12:01'),(9,'language_hide_default','1',NULL,'2025-09-01 20:12:01'),(10,'language_switcher_display','dropdown',NULL,'2025-09-01 20:12:01'),(11,'language_display','all',NULL,'2025-09-01 20:12:01'),(12,'language_hide_languages','[]',NULL,'2025-09-01 20:12:01'),(13,'theme-stories-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2025-09-01 20:12:01'),(14,'theme-stories-cookie_consent_learn_more_url','/cookie-policy',NULL,'2025-09-01 20:12:01'),(15,'theme-stories-cookie_consent_learn_more_text','Cookie Policy',NULL,'2025-09-01 20:12:01'),(16,'theme-stories-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#3b5999\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#000\"}],[{\"key\":\"name\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#0a66c2\"}]]',NULL,'2025-09-01 20:12:01'),(17,'theme-stories-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#3b5999\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#000\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#0a66c2\"}]]',NULL,'2025-09-01 20:12:01'),(18,'theme-stories-site_title','Stories - Laravel Personal Blog Script',NULL,'2025-09-01 20:12:01'),(19,'theme-stories-seo_description','Stories is a clean and minimal Laravel blog script perfect for writers who need to create a personal blog site with simple creative features and effects to make readers feel the pleasure of reading blog posts and articles.',NULL,'2025-09-01 20:12:01'),(20,'theme-stories-copyright','©%Y Stories - Laravel Personal Blog Script',NULL,'2025-09-01 20:12:01'),(21,'theme-stories-designed_by','Designed by AliThemes | All rights reserved.',NULL,'2025-09-01 20:12:01'),(22,'theme-stories-favicon','general/favicon.png',NULL,'2025-09-01 20:12:01'),(23,'theme-stories-site_description','Start writing, no matter what. The water does not flow until the faucet is turned on.',NULL,'2025-09-01 20:12:01'),(24,'theme-stories-address','123 Main Street New York, NY 100012',NULL,'2025-09-01 20:12:01'),(25,'theme-stories-facebook','https://facebook.com',NULL,'2025-09-01 20:12:01'),(26,'theme-stories-twitter','https://twitter.com',NULL,'2025-09-01 20:12:01'),(27,'theme-stories-youtube','https://youtube.com',NULL,'2025-09-01 20:12:01'),(28,'theme-stories-homepage_id','1',NULL,'2025-09-01 20:12:01'),(29,'theme-stories-blog_page_id','4',NULL,'2025-09-01 20:12:01'),(30,'theme-stories-logo','general/logo.png',NULL,'2025-09-01 20:12:01'),(31,'theme-stories-action_button_text','Buy Now',NULL,'2025-09-01 20:12:01'),(32,'theme-stories-action_button_url','https://botble.com/go/stories',NULL,'2025-09-01 20:12:01'),(33,'theme-stories-vi-primary_font','Roboto',NULL,'2025-09-01 20:12:01'),(34,'admin_favicon','general/favicon.png',NULL,'2025-09-01 20:12:01'),(35,'admin_logo','general/logo-white.png',NULL,'2025-09-01 20:12:01'),(36,'announcement_max_width','1110',NULL,NULL),(37,'announcement_text_color','#687385',NULL,NULL),(38,'announcement_background_color','#f8f8f8',NULL,NULL),(39,'announcement_text_alignment','start',NULL,NULL),(40,'announcement_dismissible','1',NULL,NULL),(41,'announcement_font_size','12',NULL,NULL),(42,'announcement_font_size_unit','px',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'home',1,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(2,'home-2',2,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(3,'home-3',3,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(4,'blog',4,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(5,'contact',5,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(6,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(7,'blog-list-layout',7,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(8,'blog-big-layout',8,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(9,'blog-grid-layout',9,'Botble\\Page\\Models\\Page','','2025-09-01 20:11:59','2025-09-01 20:11:59'),(10,'uncategorized',1,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(11,'travel',2,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(12,'guides',3,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(13,'destination',4,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(14,'food',5,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(15,'hotels',6,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(16,'review',7,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(17,'healthy',8,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(18,'lifestyle',9,'Botble\\Blog\\Models\\Category','','2025-09-01 20:12:00','2025-09-01 20:12:00'),(19,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-09-01 20:12:01','2025-09-01 20:12:01'),(20,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-09-01 20:12:01','2025-09-01 20:12:01'),(21,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-09-01 20:12:01','2025-09-01 20:12:01'),(22,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-09-01 20:12:01','2025-09-01 20:12:01'),(23,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-09-01 20:12:01','2025-09-01 20:12:01'),(24,'the-top-2020-handbag-trends-to-know',1,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(25,'top-search-engine-optimization-strategies',2,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(26,'which-company-would-you-choose',3,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(27,'used-car-dealer-sales-tricks-exposed',4,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(28,'20-ways-to-sell-your-product-faster',5,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(29,'the-secrets-of-rich-and-famous-writers',6,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(30,'imagine-losing-20-pounds-in-14-days',7,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(31,'are-you-still-using-that-slow-old-typewriter',8,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(32,'a-skin-cream-thats-proven-to-work',9,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(33,'10-reasons-to-start-your-own-profitable-website',10,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(34,'simple-ways-to-reduce-your-unwanted-wrinkles',11,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(35,'apple-imac-with-retina-5k-display-review',12,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(36,'10000-web-site-visitors-in-one-monthguaranteed',13,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(37,'unlock-the-secrets-of-selling-high-ticket-items',14,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(38,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',15,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(39,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',16,'Botble\\Blog\\Models\\Post','','2025-09-01 20:12:01','2025-09-01 20:12:01'),(40,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-01 20:12:01','2025-09-01 20:12:01'),(41,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-01 20:12:01','2025-09-01 20:12:01'),(42,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-01 20:12:01','2025-09-01 20:12:01'),(43,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-01 20:12:01','2025-09-01 20:12:01'),(44,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-01 20:12:01','2025-09-01 20:12:01'),(45,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-01 20:12:01','2025-09-01 20:12:01');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-01 20:12:00','2025-09-01 20:12:00'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-01 20:12:01','2025-09-01 20:12:01'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-01 20:12:01','2025-09-01 20:12:01'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-01 20:12:01','2025-09-01 20:12:01'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-01 20:12:01','2025-09-01 20:12:01');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kaela26@brekke.biz',NULL,NULL,'$2y$12$j5L37iEF4an5SdKpeqtULOSKl3BlJ3U1sbGmkKqTpGLyHsIPrYAqK',NULL,'2025-09-01 20:11:59','2025-09-01 20:11:59','Gene','Gleason','admin',2,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','stories',0,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2025-09-01 20:11:59','2025-09-01 20:11:59'),(2,'TagsWidget','footer_sidebar','stories',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2025-09-01 20:11:59','2025-09-01 20:11:59'),(3,'NewsletterWidget','footer_sidebar','stories',2,'{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\"}','2025-09-01 20:11:59','2025-09-01 20:11:59'),(4,'AboutWidget','primary_sidebar','stories',0,'{\"id\":\"AboutWidget\",\"name\":\"Hello, I\'m Steven\",\"description\":\"Hi, I\\u2019m Steven, a Florida native, who left my career in corporate wealth management six years ago to embark on a summer of soul searching that would change the course of my life forever.\",\"image\":\"general\\/author.jpg\"}','2025-09-01 20:11:59','2025-09-01 20:11:59'),(5,'PopularPostsWidget','primary_sidebar','stories',1,'{\"id\":\"PopularPostsWidget\",\"name\":\"Most popular\",\"number_display\":5}','2025-09-01 20:11:59','2025-09-01 20:11:59'),(6,'GalleriesWidget','primary_sidebar','stories',2,'{\"id\":\"GalleriesWidget\",\"name\":\"Galleries\",\"number_display\":6}','2025-09-01 20:11:59','2025-09-01 20:11:59');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 10:12:03
