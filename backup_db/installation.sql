-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: postdb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Current Database: `postdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `postdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `postdb`;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `address_line` longtext,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` bigint DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses_customers__users_addresses`
--

DROP TABLE IF EXISTS `addresses_customers__users_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses_customers__users_addresses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `address_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses_customers__users_addresses`
--

LOCK TABLES `addresses_customers__users_addresses` WRITE;
/*!40000 ALTER TABLE `addresses_customers__users_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses_customers__users_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'vitesse','2021-08-21 21:02:06',1,1,'2021-08-21 21:01:25','2021-08-21 21:02:06','vitesse');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes_values`
--

DROP TABLE IF EXISTS `attributes_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product` int DEFAULT NULL,
  `attribute` int DEFAULT NULL,
  `additional_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes_values`
--

LOCK TABLES `attributes_values` WRITE;
/*!40000 ALTER TABLE `attributes_values` DISABLE KEYS */;
INSERT INTO `attributes_values` VALUES (1,'80 km/h','2021-08-21 21:02:00',1,1,'2021-08-21 21:01:52','2021-08-21 21:02:00',1,1,NULL);
/*!40000 ALTER TABLE `attributes_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundles`
--

DROP TABLE IF EXISTS `bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `discount` double DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bundles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundles`
--

LOCK TABLES `bundles` WRITE;
/*!40000 ALTER TABLE `bundles` DISABLE KEYS */;
INSERT INTO `bundles` VALUES (1,'CASQUE LED VISION BLANC','2021-08-21 21:13:40',1,1,'2021-08-21 21:12:40','2021-08-21 21:20:52',NULL,'Hyven-Led01','hyven-led01'),(2,'VSETT 10+ DOUBLE MOTEUR 60V','2021-08-21 21:14:24',1,1,'2021-08-21 21:14:22','2021-08-21 21:21:03',NULL,'VSETT10-31.2AHLITE','vsett-10-31-2-ahlite'),(3,'VSETT 10+ DOUBLE MOTEUR 60V + Casque LED','2021-08-21 21:15:48',1,1,'2021-08-21 21:14:47','2021-08-21 21:21:14',NULL,'VSLED','vsled');
/*!40000 ALTER TABLE `bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundles__products`
--

DROP TABLE IF EXISTS `bundles__products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundles__products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bundle_id` int DEFAULT NULL,
  `product-category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundles__products`
--

LOCK TABLES `bundles__products` WRITE;
/*!40000 ALTER TABLE `bundles__products` DISABLE KEYS */;
/*!40000 ALTER TABLE `bundles__products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundles_categories__categories_bundles`
--

DROP TABLE IF EXISTS `bundles_categories__categories_bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundles_categories__categories_bundles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bundle_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundles_categories__categories_bundles`
--

LOCK TABLES `bundles_categories__categories_bundles` WRITE;
/*!40000 ALTER TABLE `bundles_categories__categories_bundles` DISABLE KEYS */;
INSERT INTO `bundles_categories__categories_bundles` VALUES (1,1,3),(2,2,2),(3,3,2);
/*!40000 ALTER TABLE `bundles_categories__categories_bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundles_products__products_bundles`
--

DROP TABLE IF EXISTS `bundles_products__products_bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundles_products__products_bundles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bundle_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundles_products__products_bundles`
--

LOCK TABLES `bundles_products__products_bundles` WRITE;
/*!40000 ALTER TABLE `bundles_products__products_bundles` DISABLE KEYS */;
/*!40000 ALTER TABLE `bundles_products__products_bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundles_tags__tags_bundles`
--

DROP TABLE IF EXISTS `bundles_tags__tags_bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundles_tags__tags_bundles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int DEFAULT NULL,
  `bundle_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundles_tags__tags_bundles`
--

LOCK TABLES `bundles_tags__tags_bundles` WRITE;
/*!40000 ALTER TABLE `bundles_tags__tags_bundles` DISABLE KEYS */;
INSERT INTO `bundles_tags__tags_bundles` VALUES (1,4,1),(2,1,2),(3,2,2),(4,3,2),(5,1,3),(6,3,3),(7,4,3),(8,2,3);
/*!40000 ALTER TABLE `bundles_tags__tags_bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `card_uid` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `code` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,' Trottinette électrique adulte','2021-08-21 20:09:46',1,1,'2021-08-21 20:09:43','2021-08-21 20:09:46','TEA01','adult-electric-scooter'),(2,'VSETT','2021-08-21 20:47:16',1,1,'2021-08-21 20:10:36','2021-08-21 21:19:09','VSETT','vsett'),(3,'Accessoires','2021-08-21 21:13:49',1,1,'2021-08-21 21:13:13','2021-08-21 21:13:49','ACC01','acc-01');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories__parent_id`
--

DROP TABLE IF EXISTS `categories__parent_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories__parent_id` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `related_category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories__parent_id`
--

LOCK TABLES `categories__parent_id` WRITE;
/*!40000 ALTER TABLE `categories__parent_id` DISABLE KEYS */;
INSERT INTO `categories__parent_id` VALUES (1,2,1);
/*!40000 ALTER TABLE `categories__parent_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `zipcode` bigint DEFAULT NULL,
  `country` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_zipcode_unique` (`zipcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `code` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `colors_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'white','2021-08-21 20:17:20',1,1,'2021-08-21 20:17:15','2021-08-21 20:17:20','#FFFFFF','white'),(2,'green','2021-08-21 20:19:48',1,1,'2021-08-21 20:18:01','2021-08-21 20:19:48','#00FF00','green'),(3,'noir','2021-08-21 21:03:37',1,1,'2021-08-21 21:03:35','2021-08-21 21:03:37','#000000','noir');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_store` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"orders\":{\"via\":\"user\",\"collection\":\"order\",\"isVirtual\":true},\"addresses\":{\"via\":\"customers\",\"collection\":\"address\",\"attribute\":\"address\",\"column\":\"id\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(10,'model_def_plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(11,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(12,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object','',''),(13,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(19,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"orders\":{\"edit\":{\"label\":\"Orders\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Orders\",\"searchable\":false,\"sortable\":false}},\"addresses\":{\"edit\":{\"label\":\"Addresses\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"city\"},\"list\":{\"label\":\"Addresses\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]],\"editRelations\":[\"role\",\"orders\",\"addresses\"]}}','object','',''),(20,'plugin_content_manager_configuration_content_types::plugins::i18n.locale','{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object','',''),(21,'plugin_i18n_default_locale','\"en\"','string','',''),(22,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(23,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(24,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object','',''),(25,'model_def_application::post.post','{\"uid\":\"application::post.post\",\"collectionName\":\"posts\",\"kind\":\"collectionType\",\"info\":{\"name\":\"post\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(28,'model_def_application::bundle.bundle','{\"uid\":\"application::bundle.bundle\",\"collectionName\":\"bundles\",\"kind\":\"collectionType\",\"info\":{\"name\":\"bundle\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"discount\":{\"type\":\"float\"},\"sku\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"sku\"},\"categories\":{\"collection\":\"category\",\"via\":\"bundles\",\"dominant\":true,\"attribute\":\"category\",\"column\":\"id\",\"isVirtual\":true},\"products\":{\"via\":\"bundle\",\"collection\":\"product-category\",\"isVirtual\":true},\"tags\":{\"via\":\"bundles\",\"collection\":\"tags\",\"attribute\":\"tag\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(30,'model_def_application::product.product','{\"uid\":\"application::product.product\",\"collectionName\":\"products\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"bundles\":{\"via\":\"product\",\"collection\":\"product-category\",\"isVirtual\":true},\"brand\":{\"type\":\"string\"},\"sku\":{\"type\":\"string\"},\"status\":{\"type\":\"boolean\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"sku\"},\"description\":{\"type\":\"richtext\"},\"product_attributes\":{\"via\":\"product\",\"collection\":\"attributes-values\",\"isVirtual\":true},\"colors\":{\"via\":\"product\",\"collection\":\"product-color\",\"isVirtual\":true},\"variations\":{\"via\":\"product\",\"collection\":\"product-variation\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(32,'model_def_application::category.category','{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"category\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"parent_id\":{\"collection\":\"category\",\"attribute\":\"related_category\",\"column\":\"id\",\"isVirtual\":true},\"code\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"code\"},\"bundles\":{\"via\":\"categories\",\"collection\":\"bundle\",\"attribute\":\"bundle\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(33,'plugin_content_manager_configuration_content_types::application::category.category','{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"parent_id\":{\"edit\":{\"label\":\"Parent_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Parent_id\",\"searchable\":false,\"sortable\":false}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"bundles\":{\"edit\":{\"label\":\"Bundles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Bundles\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"parent_id\",\"bundles\"]}}','object','',''),(34,'model_def_application::product-category.product-category','{\"uid\":\"application::product-category.product-category\",\"collectionName\":\"product_categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"bundle_product\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"unit_price\":{\"type\":\"float\"},\"bundle\":{\"model\":\"bundle\",\"via\":\"products\"},\"product\":{\"via\":\"bundles\",\"model\":\"product\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(35,'plugin_content_manager_configuration_content_types::application::product-category.product-category','{\"uid\":\"application::product-category.product-category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"unit_price\":{\"edit\":{\"label\":\"Unit_price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Unit_price\",\"searchable\":true,\"sortable\":true}},\"bundle\":{\"edit\":{\"label\":\"Bundle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Bundle\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"Product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Product\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\",\"unit_price\"],\"edit\":[[{\"name\":\"unit_price\",\"size\":4}]],\"editRelations\":[\"bundle\",\"product\"]}}','object','',''),(36,'plugin_content_manager_configuration_content_types::application::bundle.bundle','{\"uid\":\"application::bundle.bundle\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"discount\":{\"edit\":{\"label\":\"Discount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Discount\",\"searchable\":true,\"sortable\":true}},\"sku\":{\"edit\":{\"label\":\"Sku\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sku\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"categories\":{\"edit\":{\"label\":\"Categories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Categories\",\"searchable\":false,\"sortable\":false}},\"products\":{\"edit\":{\"label\":\"Products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Products\",\"searchable\":false,\"sortable\":false}},\"tags\":{\"edit\":{\"label\":\"Tags\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Tags\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"discount\",\"size\":4}],[{\"name\":\"sku\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"categories\",\"products\",\"tags\"]}}','object','',''),(37,'plugin_content_manager_configuration_content_types::application::product.product','{\"uid\":\"application::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"bundles\":{\"edit\":{\"label\":\"Bundles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Bundles\",\"searchable\":false,\"sortable\":false}},\"brand\":{\"edit\":{\"label\":\"Brand\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Brand\",\"searchable\":true,\"sortable\":true}},\"sku\":{\"edit\":{\"label\":\"Sku\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sku\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":false,\"sortable\":false}},\"product_attributes\":{\"edit\":{\"label\":\"Product_attributes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"value\"},\"list\":{\"label\":\"Product_attributes\",\"searchable\":false,\"sortable\":false}},\"colors\":{\"edit\":{\"label\":\"Colors\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"additional_price\"},\"list\":{\"label\":\"Colors\",\"searchable\":false,\"sortable\":false}},\"variations\":{\"edit\":{\"label\":\"Variations\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Variations\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"brand\",\"size\":6}],[{\"name\":\"sku\",\"size\":6}],[{\"name\":\"status\",\"size\":4},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"description\",\"size\":12}]],\"editRelations\":[\"bundles\",\"product_attributes\",\"colors\",\"variations\"]}}','object','',''),(38,'model_def_application::product-color.product-color','{\"uid\":\"application::product-color.product-color\",\"collectionName\":\"product_colors\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product_color\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"images\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false,\"pluginOptions\":{}},\"color\":{\"via\":\"products\",\"model\":\"color\"},\"product\":{\"via\":\"colors\",\"model\":\"product\"},\"additional_price\":{\"type\":\"float\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(39,'plugin_content_manager_configuration_content_types::application::product-color.product-color','{\"uid\":\"application::product-color.product-color\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"additional_price\",\"defaultSortBy\":\"additional_price\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"images\":{\"edit\":{\"label\":\"Images\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Images\",\"searchable\":false,\"sortable\":false}},\"color\":{\"edit\":{\"label\":\"Color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Color\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"Product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Product\",\"searchable\":true,\"sortable\":true}},\"additional_price\":{\"edit\":{\"label\":\"Additional_price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Additional_price\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"additional_price\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"images\",\"size\":6},{\"name\":\"additional_price\",\"size\":4}]],\"editRelations\":[\"color\",\"product\"]}}','object','',''),(40,'model_def_application::color.color','{\"uid\":\"application::color.color\",\"collectionName\":\"colors\",\"kind\":\"collectionType\",\"info\":{\"name\":\"color\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"code\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"products\":{\"via\":\"color\",\"collection\":\"product-color\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(41,'plugin_content_manager_configuration_content_types::application::color.color','{\"uid\":\"application::color.color\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"Products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"additional_price\"},\"list\":{\"label\":\"Products\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"products\"]}}','object','',''),(42,'model_def_application::size.size','{\"uid\":\"application::size.size\",\"collectionName\":\"variation\",\"kind\":\"collectionType\",\"info\":{\"name\":\"variation\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"value\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"value\"},\"products\":{\"via\":\"variation\",\"collection\":\"product-sizer\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(44,'model_def_application::product-sizer.product-sizer','{\"uid\":\"application::product-sizer.product-sizer\",\"collectionName\":\"product_variation\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product_variation\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"variation\":{\"via\":\"products\",\"model\":\"size\"},\"values\":{\"via\":\"product_variation\",\"collection\":\"product-variation-values\",\"isVirtual\":true},\"product\":{\"via\":\"variations\",\"model\":\"product\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(46,'model_def_application::attributes.attributes','{\"uid\":\"application::attributes.attributes\",\"collectionName\":\"attributes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"attributes\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"products\":{\"via\":\"attribute\",\"collection\":\"attributes-values\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(47,'plugin_content_manager_configuration_content_types::application::attributes.attributes','{\"uid\":\"application::attributes.attributes\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"Products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"value\"},\"list\":{\"label\":\"Products\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"products\"]}}','object','',''),(48,'model_def_application::attributes-values.attributes-values','{\"uid\":\"application::attributes-values.attributes-values\",\"collectionName\":\"attributes_values\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product_attributes\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"value\":{\"type\":\"string\"},\"product\":{\"via\":\"product_attributes\",\"model\":\"product\"},\"attribute\":{\"model\":\"attributes\",\"via\":\"products\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(49,'plugin_content_manager_configuration_content_types::application::attributes-values.attributes-values','{\"uid\":\"application::attributes-values.attributes-values\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"value\",\"defaultSortBy\":\"value\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"value\":{\"edit\":{\"label\":\"Value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"Product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Product\",\"searchable\":true,\"sortable\":true}},\"attribute\":{\"edit\":{\"label\":\"Attribute\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Attribute\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"value\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"value\",\"size\":6}]],\"editRelations\":[\"product\",\"attribute\"]}}','object','',''),(50,'model_def_application::tags.tags','{\"uid\":\"application::tags.tags\",\"collectionName\":\"tags\",\"kind\":\"collectionType\",\"info\":{\"name\":\"tags\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"bundles\":{\"collection\":\"bundle\",\"via\":\"tags\",\"dominant\":true,\"attribute\":\"bundle\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(51,'plugin_content_manager_configuration_content_types::application::tags.tags','{\"uid\":\"application::tags.tags\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"bundles\":{\"edit\":{\"label\":\"Bundles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Bundles\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"bundles\"]}}','object','',''),(52,'model_def_application::product-variation-values.product-variation-values','{\"uid\":\"application::product-variation-values.product-variation-values\",\"collectionName\":\"product_variation_values\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product_variation_values\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"additional_price\":{\"type\":\"float\"},\"status\":{\"type\":\"boolean\"},\"quantity\":{\"type\":\"integer\"},\"value\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"value\"},\"product_variation\":{\"model\":\"product-variation\",\"via\":\"values\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(53,'plugin_content_manager_configuration_content_types::application::product-variation-values.product-variation-values','{\"uid\":\"application::product-variation-values.product-variation-values\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"value\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"additional_price\":{\"edit\":{\"label\":\"Additional_price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Additional_price\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"quantity\":{\"edit\":{\"label\":\"Quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Quantity\",\"searchable\":true,\"sortable\":true}},\"value\":{\"edit\":{\"label\":\"Value\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Value\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"product_variation\":{\"edit\":{\"label\":\"Product_variation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Product_variation\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"additional_price\",\"product_variation\"],\"edit\":[[{\"name\":\"additional_price\",\"size\":4},{\"name\":\"status\",\"size\":4},{\"name\":\"quantity\",\"size\":4}],[{\"name\":\"value\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"product_variation\"]}}','object','',''),(54,'model_def_application::variation.size','{\"uid\":\"application::variation.size\",\"collectionName\":\"variation\",\"kind\":\"collectionType\",\"info\":{\"name\":\"variation\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"value\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"value\"},\"products\":{\"via\":\"variation\",\"collection\":\"product-sizer\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(56,'model_def_application::product-variation.product-sizer','{\"uid\":\"application::product-variation.product-sizer\",\"collectionName\":\"product_variation\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product_variation\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"values\":{\"via\":\"product_variation\",\"collection\":\"product-variation-values\",\"isVirtual\":true},\"product\":{\"via\":\"variations\",\"model\":\"product\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(58,'model_def_application::variation.variation','{\"uid\":\"application::variation.variation\",\"collectionName\":\"variations\",\"kind\":\"collectionType\",\"info\":{\"name\":\"variation\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\",\"targetField\":\"name\"},\"products\":{\"via\":\"variation\",\"collection\":\"product-variation\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(59,'plugin_content_manager_configuration_content_types::application::variation.variation','{\"uid\":\"application::variation.variation\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"Slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slug\",\"searchable\":true,\"sortable\":true}},\"products\":{\"edit\":{\"label\":\"Products\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Products\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"created_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[\"products\"]}}','object','',''),(60,'model_def_application::product-variation.product-variation','{\"uid\":\"application::product-variation.product-variation\",\"collectionName\":\"product_variations\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product_variation\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"product\":{\"via\":\"variations\",\"model\":\"product\"},\"variation\":{\"model\":\"variation\",\"via\":\"products\"},\"values\":{\"via\":\"product_variation\",\"collection\":\"product-variation-values\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(61,'plugin_content_manager_configuration_content_types::application::product-variation.product-variation','{\"uid\":\"application::product-variation.product-variation\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"product\":{\"edit\":{\"label\":\"Product\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"Product\",\"searchable\":true,\"sortable\":true}},\"variation\":{\"edit\":{\"label\":\"Variation\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Variation\",\"searchable\":true,\"sortable\":true}},\"values\":{\"edit\":{\"label\":\"Values\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"value\"},\"list\":{\"label\":\"Values\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"product\",\"variation\",\"created_at\"],\"edit\":[],\"editRelations\":[\"product\",\"variation\",\"values\"]}}','object','',''),(62,'model_def_application::product-item-cart.product-item-cart','{\"uid\":\"application::product-item-cart.product-item-cart\",\"collectionName\":\"product_item_carts\",\"kind\":\"collectionType\",\"info\":{\"name\":\"product_item_cart\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"product_item\":{\"type\":\"json\",\"required\":true},\"command_guid_id\":{\"type\":\"string\"},\"quantity\":{\"type\":\"integer\"},\"cart\":{\"model\":\"cart\",\"via\":\"product_items\"},\"order\":{\"via\":\"product_items\",\"model\":\"order\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(63,'plugin_content_manager_configuration_content_types::application::product-item-cart.product-item-cart','{\"uid\":\"application::product-item-cart.product-item-cart\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"command_guid_id\",\"defaultSortBy\":\"command_guid_id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"product_item\":{\"edit\":{\"label\":\"Product_item\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Product_item\",\"searchable\":false,\"sortable\":false}},\"command_guid_id\":{\"edit\":{\"label\":\"Command_guid_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Command_guid_id\",\"searchable\":true,\"sortable\":true}},\"quantity\":{\"edit\":{\"label\":\"Quantity\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Quantity\",\"searchable\":true,\"sortable\":true}},\"cart\":{\"edit\":{\"label\":\"Cart\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"card_uid\"},\"list\":{\"label\":\"Cart\",\"searchable\":true,\"sortable\":true}},\"order\":{\"edit\":{\"label\":\"Order\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Order\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"command_guid_id\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"product_item\",\"size\":12}],[{\"name\":\"command_guid_id\",\"size\":6},{\"name\":\"quantity\",\"size\":4}]],\"editRelations\":[\"cart\",\"order\"]}}','object','',''),(64,'model_def_application::cart.cart','{\"uid\":\"application::cart.cart\",\"collectionName\":\"carts\",\"kind\":\"collectionType\",\"info\":{\"name\":\"cart\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"card_uid\":{\"type\":\"string\"},\"product_items\":{\"via\":\"cart\",\"collection\":\"product-item-cart\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(65,'plugin_content_manager_configuration_content_types::application::cart.cart','{\"uid\":\"application::cart.cart\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"card_uid\",\"defaultSortBy\":\"card_uid\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"card_uid\":{\"edit\":{\"label\":\"Card_uid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Card_uid\",\"searchable\":true,\"sortable\":true}},\"product_items\":{\"edit\":{\"label\":\"Product_items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"command_guid_id\"},\"list\":{\"label\":\"Product_items\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"card_uid\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"card_uid\",\"size\":6}]],\"editRelations\":[\"product_items\"]}}','object','',''),(66,'model_def_application::order.order','{\"uid\":\"application::order.order\",\"collectionName\":\"orders\",\"kind\":\"collectionType\",\"info\":{\"name\":\"order\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"order_date\":{\"type\":\"date\"},\"product_items\":{\"via\":\"order\",\"collection\":\"product-item-cart\",\"isVirtual\":true},\"status\":{\"type\":\"enumeration\",\"enum\":[\"Passed\",\"Confirmed\",\"Returned\",\"Canceled\"],\"default\":\"Passed\"},\"user\":{\"plugin\":\"users-permissions\",\"model\":\"user\",\"via\":\"orders\"},\"address\":{\"model\":\"address\",\"via\":\"orders\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(67,'plugin_content_manager_configuration_content_types::application::order.order','{\"uid\":\"application::order.order\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"order_date\":{\"edit\":{\"label\":\"Order_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Order_date\",\"searchable\":true,\"sortable\":true}},\"product_items\":{\"edit\":{\"label\":\"Product_items\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"command_guid_id\"},\"list\":{\"label\":\"Product_items\",\"searchable\":false,\"sortable\":false}},\"status\":{\"edit\":{\"label\":\"Status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Status\",\"searchable\":true,\"sortable\":true}},\"user\":{\"edit\":{\"label\":\"User\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"User\",\"searchable\":true,\"sortable\":true}},\"address\":{\"edit\":{\"label\":\"Address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"city\"},\"list\":{\"label\":\"Address\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"order_date\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"order_date\",\"size\":4},{\"name\":\"status\",\"size\":6}]],\"editRelations\":[\"product_items\",\"user\",\"address\"]}}','object','',''),(68,'model_def_application::country.country','{\"uid\":\"application::country.country\",\"collectionName\":\"countries\",\"kind\":\"collectionType\",\"info\":{\"name\":\"country\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"cities\":{\"via\":\"country\",\"collection\":\"city\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(69,'plugin_content_manager_configuration_content_types::application::country.country','{\"uid\":\"application::country.country\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"cities\":{\"edit\":{\"label\":\"Cities\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Cities\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"cities\"]}}','object','',''),(70,'model_def_application::city.city','{\"uid\":\"application::city.city\",\"collectionName\":\"cities\",\"kind\":\"collectionType\",\"info\":{\"name\":\"city\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"zipcode\":{\"type\":\"biginteger\",\"required\":false,\"unique\":true},\"country\":{\"model\":\"country\",\"via\":\"cities\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(71,'plugin_content_manager_configuration_content_types::application::city.city','{\"uid\":\"application::city.city\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"zipcode\":{\"edit\":{\"label\":\"Zipcode\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Zipcode\",\"searchable\":true,\"sortable\":true}},\"country\":{\"edit\":{\"label\":\"Country\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Country\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"zipcode\",\"country\"],\"editRelations\":[\"country\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"zipcode\",\"size\":4}]]}}','object','',''),(72,'model_def_application::address.address','{\"uid\":\"application::address.address\",\"collectionName\":\"addresses\",\"kind\":\"collectionType\",\"info\":{\"name\":\"address\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"address_line\":{\"type\":\"text\"},\"city\":{\"type\":\"string\"},\"zipcode\":{\"type\":\"biginteger\"},\"country\":{\"type\":\"string\"},\"customers\":{\"plugin\":\"users-permissions\",\"collection\":\"user\",\"via\":\"addresses\",\"dominant\":true,\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"orders\":{\"via\":\"address\",\"collection\":\"order\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}','object',NULL,NULL),(73,'plugin_content_manager_configuration_content_types::application::address.address','{\"uid\":\"application::address.address\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"city\",\"defaultSortBy\":\"city\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"address_line\":{\"edit\":{\"label\":\"Address_line\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address_line\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"City\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"City\",\"searchable\":true,\"sortable\":true}},\"zipcode\":{\"edit\":{\"label\":\"Zipcode\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Zipcode\",\"searchable\":true,\"sortable\":true}},\"country\":{\"edit\":{\"label\":\"Country\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Country\",\"searchable\":true,\"sortable\":true}},\"customers\":{\"edit\":{\"label\":\"Customers\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Customers\",\"searchable\":false,\"sortable\":false}},\"orders\":{\"edit\":{\"label\":\"Orders\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Orders\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"address_line\",\"city\",\"zipcode\"],\"edit\":[[{\"name\":\"address_line\",\"size\":6},{\"name\":\"city\",\"size\":6}],[{\"name\":\"zipcode\",\"size\":4},{\"name\":\"country\",\"size\":6}]],\"editRelations\":[\"customers\",\"orders\"]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locales`
--

DROP TABLE IF EXISTS `i18n_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locales` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locales`
--

LOCK TABLES `i18n_locales` WRITE;
/*!40000 ALTER TABLE `i18n_locales` DISABLE KEYS */;
INSERT INTO `i18n_locales` VALUES (1,'English (en)','en',NULL,NULL,'2021-08-21 02:42:18','2021-08-21 02:42:18');
/*!40000 ALTER TABLE `i18n_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_date` date DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `user` int DEFAULT NULL,
  `address` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `author` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Analyse Biologique 12_11_2020','This is a demo post',NULL,'2021-08-21 03:51:50',1,1,'2021-08-21 03:51:44','2021-08-21 03:51:50');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `unitPrice` double DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `unit_price` double DEFAULT NULL,
  `bundle` int DEFAULT NULL,
  `product` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,NULL,'2021-08-21 21:08:40',1,1,'2021-08-21 21:08:29','2021-08-21 21:21:03',1990,2,1),(2,NULL,'2021-08-21 21:09:16',1,1,'2021-08-21 21:09:15','2021-08-21 21:14:59',35,NULL,2),(3,NULL,'2021-08-21 21:17:02',1,1,'2021-08-21 21:17:00','2021-08-21 21:21:14',1990,3,1),(4,NULL,'2021-08-21 21:17:19',1,1,'2021-08-21 21:17:16','2021-08-21 21:21:14',0,3,2),(5,NULL,'2021-08-21 21:17:33',1,1,'2021-08-21 21:17:31','2021-08-21 21:20:52',35,1,2);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_colors`
--

DROP TABLE IF EXISTS `product_colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_colors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `additional_price` double DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `color` int DEFAULT NULL,
  `product` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_colors`
--

LOCK TABLES `product_colors` WRITE;
/*!40000 ALTER TABLE `product_colors` DISABLE KEYS */;
INSERT INTO `product_colors` VALUES (1,0,'2021-08-21 21:07:18',1,1,'2021-08-21 21:05:46','2021-08-21 21:07:18',3,1),(2,NULL,'2021-08-21 21:07:13',1,1,'2021-08-21 21:07:10','2021-08-21 21:07:13',3,2);
/*!40000 ALTER TABLE `product_colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_item_carts`
--

DROP TABLE IF EXISTS `product_item_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_item_carts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_item` longtext,
  `command_guid_id` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int DEFAULT NULL,
  `cart` int DEFAULT NULL,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_item_carts`
--

LOCK TABLES `product_item_carts` WRITE;
/*!40000 ALTER TABLE `product_item_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_item_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sizers`
--

DROP TABLE IF EXISTS `product_sizers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sizers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `additional_price` double DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `product` int DEFAULT NULL,
  `size` int DEFAULT NULL,
  `variation` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sizers`
--

LOCK TABLES `product_sizers` WRITE;
/*!40000 ALTER TABLE `product_sizers` DISABLE KEYS */;
INSERT INTO `product_sizers` VALUES (1,NULL,'2021-08-21 20:53:07',1,1,'2021-08-21 20:47:44','2021-08-21 20:57:20',2,NULL,3),(2,NULL,'2021-08-21 20:57:54',1,1,'2021-08-21 20:57:51','2021-08-21 21:00:46',1,NULL,4);
/*!40000 ALTER TABLE `product_sizers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variation`
--

DROP TABLE IF EXISTS `product_variation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product` int DEFAULT NULL,
  `variation` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variation`
--

LOCK TABLES `product_variation` WRITE;
/*!40000 ALTER TABLE `product_variation` DISABLE KEYS */;
INSERT INTO `product_variation` VALUES (1,1,1,'2021-08-21 21:26:33',1,1,'2021-08-21 21:26:31','2021-08-21 21:26:33'),(2,2,1,'2021-08-21 21:26:58',1,1,'2021-08-21 21:26:54','2021-08-21 21:26:58');
/*!40000 ALTER TABLE `product_variation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variation_values`
--

DROP TABLE IF EXISTS `product_variation_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variation_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `additional_price` double DEFAULT NULL,
  `product_variation` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variation_values_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variation_values`
--

LOCK TABLES `product_variation_values` WRITE;
/*!40000 ALTER TABLE `product_variation_values` DISABLE KEYS */;
INSERT INTO `product_variation_values` VALUES (1,0,2,'2021-08-21 20:50:31',1,1,'2021-08-21 20:50:28','2021-08-21 21:47:32',1,10,'M (54-58cm)','m-54-58cm'),(2,0,2,'2021-08-21 20:51:24',1,1,'2021-08-21 20:51:18','2021-08-21 21:47:32',1,5,'L (57-61cm)','l-57-61cm'),(3,0,1,'2021-08-21 20:58:58',1,1,'2021-08-21 20:58:54','2021-08-21 21:47:14',1,3,'20,8Ah','20-8-ah'),(4,600,1,'2021-08-21 20:59:43',1,1,'2021-08-21 20:59:26','2021-08-21 21:47:14',1,2,'25,8Ah','25-8-ah'),(5,1000,1,'2021-08-21 21:07:54',1,1,'2021-08-21 21:00:07','2021-08-21 21:47:14',1,3,'28Ah','28-ah');
/*!40000 ALTER TABLE `product_variation_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variations`
--

DROP TABLE IF EXISTS `product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `product` int DEFAULT NULL,
  `variation` int DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations`
--

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
INSERT INTO `product_variations` VALUES (1,1,2,'2021-08-21 21:47:16',1,1,'2021-08-21 21:47:14','2021-08-21 21:47:16'),(2,2,1,'2021-08-21 21:47:33',1,1,'2021-08-21 21:47:32','2021-08-21 21:47:33');
/*!40000 ALTER TABLE `product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `brand` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'VSETT 10+ DOUBLE MOTEUR 60V','2021-08-21 20:12:50',1,1,'2021-08-21 20:12:47','2021-08-21 20:12:50','Vsett','VSETT10-31.2AHLITE',10,1,'vsett-10-31-2-ahlite','Voici une des trottinettes les plus performantes au monde.\nLa Vsett 10+ est dotée d\'un verrouilleur NFC, d\'un compteur à glissement, de diverses options de pneus ; c\'est un scooter électrique tout terrain. Possède un mode sport et un Dual mode.\nUne méthode de marquage sûre avec fonction d\'arrêt automatique pour assurer la sécurité du freinage pendant la conduite. Dispositif d\'absorption des chocs à haute résistance qui vous permet de rouler en douceur et facilement.\n3 choix de batterie :\n- 20,8Ah pour 130 km d\'autonomie\n- 25,6Ah pour 160 km d\'autonomie\n- 28,0Ah pour 185 km d\'autonomie'),(2,'CASQUE LED VISION BLANC','2021-08-21 20:17:28',1,1,'2021-08-21 20:15:54','2021-08-21 20:17:28','Hyven','Hyven-Led01',12,1,'hyven-led01','Le 1er casque à Led design et classe doté d\'une LED arrière avec 3 modes d\'élcairage. Pour trottinette et vélo.\n\n**+ Feu arrière LED rechargeable**\n\n**+ Plusieurs coloris : Snow White (Blanc) ou Road Grey (Gris)**\n\n**+ 2 tailles ajustables par molette**\n\n**+ Aux normes en vigueur EN 1078:2012 + A1:2012 et EU 2016/425.**\n\n\n');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `value` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sizes_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (3,NULL,'2021-08-21 20:45:29',1,1,'2021-08-21 20:45:27','2021-08-21 20:45:29','size','size'),(4,NULL,'2021-08-21 20:54:43',1,1,'2021-08-21 20:54:33','2021-08-21 20:54:43','battery','battery');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_administrator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'RIADH','ADOUANI',NULL,'adouani.riadh@outlook.com','$2a$10$9HTXSqFf1...EKgFj0o6IeHw1rqua7FrYhg08L0W1oMz07A1WeGM6',NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext,
  `conditions` longtext,
  `role` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,'{}','[]',2,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(2,'plugins::upload.assets.create',NULL,'{}','[]',2,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(3,'plugins::upload.assets.update',NULL,'{}','[]',2,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(4,'plugins::upload.assets.download',NULL,'{}','[]',2,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(5,'plugins::upload.assets.copy-link',NULL,'{}','[]',2,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(6,'plugins::upload.read',NULL,'{}','[\"admin::is-creator\"]',3,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(7,'plugins::upload.assets.create',NULL,'{}','[]',3,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(8,'plugins::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]',3,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(9,'plugins::upload.assets.download',NULL,'{}','[]',3,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(10,'plugins::upload.assets.copy-link',NULL,'{}','[]',3,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(15,'plugins::content-type-builder.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(16,'plugins::email.settings.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(17,'plugins::upload.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(18,'plugins::upload.assets.create',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(19,'plugins::upload.assets.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(20,'plugins::upload.assets.download',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(21,'plugins::upload.assets.copy-link',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(22,'plugins::upload.settings.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(23,'plugins::content-manager.single-types.configure-view',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(24,'plugins::content-manager.collection-types.configure-view',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(25,'plugins::content-manager.components.configure-layout',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(26,'plugins::i18n.locale.create',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(27,'plugins::i18n.locale.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(28,'plugins::i18n.locale.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(29,'plugins::i18n.locale.delete',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(30,'plugins::users-permissions.roles.create',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(31,'plugins::users-permissions.roles.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(32,'plugins::users-permissions.roles.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(33,'plugins::users-permissions.roles.delete',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(34,'plugins::users-permissions.providers.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(35,'plugins::users-permissions.providers.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(36,'plugins::users-permissions.email-templates.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(37,'plugins::users-permissions.advanced-settings.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(38,'plugins::users-permissions.advanced-settings.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(39,'plugins::users-permissions.email-templates.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(40,'admin::marketplace.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(41,'admin::marketplace.plugins.install',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(42,'admin::webhooks.create',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(43,'admin::webhooks.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(44,'admin::webhooks.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(45,'admin::marketplace.plugins.uninstall',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(46,'admin::webhooks.delete',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(47,'admin::users.create',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(48,'admin::users.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(49,'admin::users.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(50,'admin::users.delete',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(51,'admin::roles.create',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(52,'admin::roles.read',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(53,'admin::roles.update',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(54,'admin::roles.delete',NULL,'{}','[]',1,'2021-08-21 02:42:20','2021-08-21 02:42:20'),(532,'plugins::content-manager.explorer.create','application::category.category','{\"fields\":[\"name\",\"parent_id\",\"code\",\"slug\",\"bundles\"]}','[]',1,'2021-08-21 19:47:21','2021-08-21 19:47:21'),(534,'plugins::content-manager.explorer.read','application::category.category','{\"fields\":[\"name\",\"parent_id\",\"code\",\"slug\",\"bundles\"]}','[]',1,'2021-08-21 19:47:21','2021-08-21 19:47:21'),(536,'plugins::content-manager.explorer.update','application::category.category','{\"fields\":[\"name\",\"parent_id\",\"code\",\"slug\",\"bundles\"]}','[]',1,'2021-08-21 19:47:21','2021-08-21 19:47:21'),(665,'plugins::content-manager.explorer.create','application::product-category.product-category','{\"fields\":[\"unit_price\",\"bundle\",\"product\"]}','[]',1,'2021-08-21 19:52:08','2021-08-21 19:52:08'),(668,'plugins::content-manager.explorer.read','application::product-category.product-category','{\"fields\":[\"unit_price\",\"bundle\",\"product\"]}','[]',1,'2021-08-21 19:52:08','2021-08-21 19:52:08'),(671,'plugins::content-manager.explorer.update','application::product-category.product-category','{\"fields\":[\"unit_price\",\"bundle\",\"product\"]}','[]',1,'2021-08-21 19:52:08','2021-08-21 19:52:08'),(932,'plugins::content-manager.explorer.create','application::attributes.attributes','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-08-21 20:02:46','2021-08-21 20:02:46'),(933,'plugins::content-manager.explorer.read','application::attributes.attributes','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-08-21 20:02:46','2021-08-21 20:02:46'),(936,'plugins::content-manager.explorer.update','application::attributes.attributes','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-08-21 20:02:46','2021-08-21 20:02:46'),(988,'plugins::content-manager.explorer.create','application::color.color','{\"fields\":[\"name\",\"code\",\"slug\",\"products\"]}','[]',1,'2021-08-21 20:04:19','2021-08-21 20:04:20'),(989,'plugins::content-manager.explorer.create','application::product-color.product-color','{\"fields\":[\"additional_price\",\"images\",\"color\",\"product\"]}','[]',1,'2021-08-21 20:04:19','2021-08-21 20:04:20'),(991,'plugins::content-manager.explorer.read','application::color.color','{\"fields\":[\"name\",\"code\",\"slug\",\"products\"]}','[]',1,'2021-08-21 20:04:19','2021-08-21 20:04:20'),(992,'plugins::content-manager.explorer.read','application::product-color.product-color','{\"fields\":[\"additional_price\",\"images\",\"color\",\"product\"]}','[]',1,'2021-08-21 20:04:19','2021-08-21 20:04:20'),(994,'plugins::content-manager.explorer.update','application::color.color','{\"fields\":[\"name\",\"code\",\"slug\",\"products\"]}','[]',1,'2021-08-21 20:04:19','2021-08-21 20:04:20'),(995,'plugins::content-manager.explorer.update','application::product-color.product-color','{\"fields\":[\"additional_price\",\"images\",\"color\",\"product\"]}','[]',1,'2021-08-21 20:04:19','2021-08-21 20:04:20'),(1052,'plugins::content-manager.explorer.create','application::tags.tags','{\"fields\":[\"name\",\"slug\",\"bundles\"]}','[]',1,'2021-08-21 20:06:13','2021-08-21 20:06:13'),(1053,'plugins::content-manager.explorer.create','application::bundle.bundle','{\"fields\":[\"title\",\"discount\",\"sku\",\"slug\",\"categories\",\"products\",\"tags\"]}','[]',1,'2021-08-21 20:06:13','2021-08-21 20:06:13'),(1054,'plugins::content-manager.explorer.read','application::bundle.bundle','{\"fields\":[\"title\",\"discount\",\"sku\",\"slug\",\"categories\",\"products\",\"tags\"]}','[]',1,'2021-08-21 20:06:13','2021-08-21 20:06:13'),(1055,'plugins::content-manager.explorer.read','application::tags.tags','{\"fields\":[\"name\",\"slug\",\"bundles\"]}','[]',1,'2021-08-21 20:06:13','2021-08-21 20:06:13'),(1056,'plugins::content-manager.explorer.update','application::bundle.bundle','{\"fields\":[\"title\",\"discount\",\"sku\",\"slug\",\"categories\",\"products\",\"tags\"]}','[]',1,'2021-08-21 20:06:13','2021-08-21 20:06:13'),(1057,'plugins::content-manager.explorer.update','application::tags.tags','{\"fields\":[\"name\",\"slug\",\"bundles\"]}','[]',1,'2021-08-21 20:06:13','2021-08-21 20:06:13'),(1153,'plugins::content-manager.explorer.create','application::attributes-values.attributes-values','{\"fields\":[\"value\",\"product\",\"attribute\"]}','[]',1,'2021-08-21 20:25:17','2021-08-21 20:25:17'),(1154,'plugins::content-manager.explorer.read','application::attributes-values.attributes-values','{\"fields\":[\"value\",\"product\",\"attribute\"]}','[]',1,'2021-08-21 20:25:17','2021-08-21 20:25:17'),(1155,'plugins::content-manager.explorer.update','application::attributes-values.attributes-values','{\"fields\":[\"value\",\"product\",\"attribute\"]}','[]',1,'2021-08-21 20:25:17','2021-08-21 20:25:17'),(1671,'plugins::content-manager.explorer.create','application::variation.variation','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-08-21 21:45:31','2021-08-21 21:45:31'),(1674,'plugins::content-manager.explorer.read','application::variation.variation','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-08-21 21:45:31','2021-08-21 21:45:31'),(1676,'plugins::content-manager.explorer.update','application::variation.variation','{\"fields\":[\"name\",\"slug\",\"products\"]}','[]',1,'2021-08-21 21:45:31','2021-08-21 21:45:31'),(1703,'plugins::content-manager.explorer.read','application::product-variation.product-variation','{\"fields\":[\"product\",\"variation\",\"values\"]}','[]',1,'2021-08-21 21:46:00','2021-08-21 21:46:00'),(1704,'plugins::content-manager.explorer.read','application::product-variation-values.product-variation-values','{\"fields\":[\"additional_price\",\"status\",\"quantity\",\"value\",\"slug\",\"product_variation\"]}','[]',1,'2021-08-21 21:46:00','2021-08-21 21:46:00'),(1705,'plugins::content-manager.explorer.create','application::product-variation-values.product-variation-values','{\"fields\":[\"additional_price\",\"status\",\"quantity\",\"value\",\"slug\",\"product_variation\"]}','[]',1,'2021-08-21 21:46:00','2021-08-21 21:46:00'),(1706,'plugins::content-manager.explorer.update','application::product-variation-values.product-variation-values','{\"fields\":[\"additional_price\",\"status\",\"quantity\",\"value\",\"slug\",\"product_variation\"]}','[]',1,'2021-08-21 21:46:00','2021-08-21 21:46:00'),(1707,'plugins::content-manager.explorer.create','application::product-variation.product-variation','{\"fields\":[\"product\",\"variation\",\"values\"]}','[]',1,'2021-08-21 21:46:00','2021-08-21 21:46:00'),(1708,'plugins::content-manager.explorer.update','application::product-variation.product-variation','{\"fields\":[\"product\",\"variation\",\"values\"]}','[]',1,'2021-08-21 21:46:00','2021-08-21 21:46:00'),(1734,'plugins::content-manager.explorer.read','application::product.product','{\"fields\":[\"title\",\"bundles\",\"brand\",\"sku\",\"status\",\"slug\",\"description\",\"product_attributes\",\"colors\",\"variations\"]}','[]',1,'2021-08-21 21:48:15','2021-08-21 21:48:15'),(1735,'plugins::content-manager.explorer.create','application::product.product','{\"fields\":[\"title\",\"bundles\",\"brand\",\"sku\",\"status\",\"slug\",\"description\",\"product_attributes\",\"colors\",\"variations\"]}','[]',1,'2021-08-21 21:48:15','2021-08-21 21:48:15'),(1736,'plugins::content-manager.explorer.update','application::product.product','{\"fields\":[\"title\",\"bundles\",\"brand\",\"sku\",\"status\",\"slug\",\"description\",\"product_attributes\",\"colors\",\"variations\"]}','[]',1,'2021-08-21 21:48:15','2021-08-21 21:48:15'),(1856,'plugins::content-manager.explorer.create','application::cart.cart','{\"fields\":[\"card_uid\",\"product_items\"]}','[]',1,'2021-08-22 00:09:21','2021-08-22 00:09:21'),(1858,'plugins::content-manager.explorer.read','application::cart.cart','{\"fields\":[\"card_uid\",\"product_items\"]}','[]',1,'2021-08-22 00:09:21','2021-08-22 00:09:21'),(1860,'plugins::content-manager.explorer.update','application::cart.cart','{\"fields\":[\"card_uid\",\"product_items\"]}','[]',1,'2021-08-22 00:09:21','2021-08-22 00:09:21'),(1926,'plugins::content-manager.explorer.read','application::product-item-cart.product-item-cart','{\"fields\":[\"product_item\",\"command_guid_id\",\"quantity\",\"cart\",\"order\"]}','[]',1,'2021-08-22 00:11:56','2021-08-22 00:11:56'),(1928,'plugins::content-manager.explorer.create','application::product-item-cart.product-item-cart','{\"fields\":[\"product_item\",\"command_guid_id\",\"quantity\",\"cart\",\"order\"]}','[]',1,'2021-08-22 00:11:56','2021-08-22 00:11:56'),(1930,'plugins::content-manager.explorer.update','application::product-item-cart.product-item-cart','{\"fields\":[\"product_item\",\"command_guid_id\",\"quantity\",\"cart\",\"order\"]}','[]',1,'2021-08-22 00:11:56','2021-08-22 00:11:56'),(2069,'plugins::content-manager.explorer.create','application::city.city','{\"fields\":[\"name\",\"zipcode\",\"country\"]}','[]',1,'2021-08-22 00:41:53','2021-08-22 00:41:53'),(2070,'plugins::content-manager.explorer.create','application::country.country','{\"fields\":[\"name\",\"cities\"]}','[]',1,'2021-08-22 00:41:53','2021-08-22 00:41:53'),(2071,'plugins::content-manager.explorer.read','application::city.city','{\"fields\":[\"name\",\"zipcode\",\"country\"]}','[]',1,'2021-08-22 00:41:53','2021-08-22 00:41:53'),(2072,'plugins::content-manager.explorer.read','application::country.country','{\"fields\":[\"name\",\"cities\"]}','[]',1,'2021-08-22 00:41:53','2021-08-22 00:41:53'),(2073,'plugins::content-manager.explorer.update','application::city.city','{\"fields\":[\"name\",\"zipcode\",\"country\"]}','[]',1,'2021-08-22 00:41:53','2021-08-22 00:41:53'),(2074,'plugins::content-manager.explorer.update','application::country.country','{\"fields\":[\"name\",\"cities\"]}','[]',1,'2021-08-22 00:41:53','2021-08-22 00:41:53'),(2152,'plugins::content-manager.explorer.create','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"orders\",\"addresses\"]}','[]',1,'2021-08-22 00:47:27','2021-08-22 00:47:27'),(2153,'plugins::content-manager.explorer.read','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"orders\",\"addresses\"]}','[]',1,'2021-08-22 00:47:27','2021-08-22 00:47:27'),(2155,'plugins::content-manager.explorer.update','plugins::users-permissions.user','{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"orders\",\"addresses\"]}','[]',1,'2021-08-22 00:47:27','2021-08-22 00:47:27'),(2193,'plugins::content-manager.explorer.create','application::order.order','{\"fields\":[\"order_date\",\"product_items\",\"status\",\"user\",\"address\"]}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2194,'plugins::content-manager.explorer.create','application::address.address','{\"fields\":[\"address_line\",\"city\",\"zipcode\",\"country\",\"customers\",\"orders\"]}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2195,'plugins::content-manager.explorer.read','application::address.address','{\"fields\":[\"address_line\",\"city\",\"zipcode\",\"country\",\"customers\",\"orders\"]}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2196,'plugins::content-manager.explorer.read','application::order.order','{\"fields\":[\"order_date\",\"product_items\",\"status\",\"user\",\"address\"]}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2197,'plugins::content-manager.explorer.update','application::address.address','{\"fields\":[\"address_line\",\"city\",\"zipcode\",\"country\",\"customers\",\"orders\"]}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2198,'plugins::content-manager.explorer.update','application::order.order','{\"fields\":[\"order_date\",\"product_items\",\"status\",\"user\",\"address\"]}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2199,'plugins::content-manager.explorer.delete','application::address.address','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2200,'plugins::content-manager.explorer.delete','application::attributes-values.attributes-values','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2201,'plugins::content-manager.explorer.delete','application::bundle.bundle','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2202,'plugins::content-manager.explorer.delete','application::attributes.attributes','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2203,'plugins::content-manager.explorer.delete','application::cart.cart','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2204,'plugins::content-manager.explorer.delete','application::category.category','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2205,'plugins::content-manager.explorer.delete','application::city.city','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2206,'plugins::content-manager.explorer.delete','application::color.color','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2207,'plugins::content-manager.explorer.delete','application::country.country','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2208,'plugins::content-manager.explorer.delete','application::order.order','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2209,'plugins::content-manager.explorer.delete','application::product-category.product-category','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2210,'plugins::content-manager.explorer.delete','application::product-color.product-color','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2211,'plugins::content-manager.explorer.delete','application::product-item-cart.product-item-cart','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2212,'plugins::content-manager.explorer.delete','application::product-variation-values.product-variation-values','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2213,'plugins::content-manager.explorer.delete','application::product-variation.product-variation','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2214,'plugins::content-manager.explorer.delete','application::product.product','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2215,'plugins::content-manager.explorer.delete','application::tags.tags','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2216,'plugins::content-manager.explorer.delete','application::variation.variation','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2217,'plugins::content-manager.explorer.delete','plugins::users-permissions.user','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2218,'plugins::content-manager.explorer.publish','application::address.address','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2219,'plugins::content-manager.explorer.publish','application::attributes-values.attributes-values','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2220,'plugins::content-manager.explorer.publish','application::attributes.attributes','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2221,'plugins::content-manager.explorer.publish','application::bundle.bundle','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2222,'plugins::content-manager.explorer.publish','application::cart.cart','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2223,'plugins::content-manager.explorer.publish','application::category.category','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2224,'plugins::content-manager.explorer.publish','application::city.city','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2225,'plugins::content-manager.explorer.publish','application::color.color','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2226,'plugins::content-manager.explorer.publish','application::country.country','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2227,'plugins::content-manager.explorer.publish','application::order.order','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2228,'plugins::content-manager.explorer.publish','application::product-category.product-category','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2229,'plugins::content-manager.explorer.publish','application::product-color.product-color','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2230,'plugins::content-manager.explorer.publish','application::product-item-cart.product-item-cart','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2231,'plugins::content-manager.explorer.publish','application::product-variation-values.product-variation-values','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2232,'plugins::content-manager.explorer.publish','application::product-variation.product-variation','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2233,'plugins::content-manager.explorer.publish','application::product.product','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2234,'plugins::content-manager.explorer.publish','application::tags.tags','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47'),(2235,'plugins::content-manager.explorer.publish','application::variation.variation','{}','[]',1,'2021-08-22 00:48:47','2021-08-22 00:48:47');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-08-21 02:42:20','2021-08-21 02:42:20'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-08-21 02:42:20','2021-08-21 02:42:20'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-08-21 02:42:20','2021-08-21 02:42:20');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_users_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'trotinette','2021-08-21 21:20:07',1,1,'2021-08-21 21:20:05','2021-08-21 21:20:07','trotinette'),(2,'trotinette-electrique','2021-08-21 21:20:20',1,1,'2021-08-21 21:20:19','2021-08-21 21:20:20','trotinette-electrique'),(3,'escooter','2021-08-21 21:20:29',1,1,'2021-08-21 21:20:27','2021-08-21 21:20:29','escooter'),(4,'casque','2021-08-21 21:20:38',1,1,'2021-08-21 21:20:35','2021-08-21 21:20:38','casque');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (2,'vsett-10-48v-trottinette-electrique-double-moteur (2).jpg','','',1800,1200,'{\"thumbnail\":{\"name\":\"thumbnail_vsett-10-48v-trottinette-electrique-double-moteur (2).jpg\",\"hash\":\"thumbnail_vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":2.45,\"path\":null,\"url\":\"/uploads/thumbnail_vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450.jpg\"},\"large\":{\"name\":\"large_vsett-10-48v-trottinette-electrique-double-moteur (2).jpg\",\"hash\":\"large_vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":667,\"size\":18.35,\"path\":null,\"url\":\"/uploads/large_vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450.jpg\"},\"medium\":{\"name\":\"medium_vsett-10-48v-trottinette-electrique-double-moteur (2).jpg\",\"hash\":\"medium_vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":11.67,\"path\":null,\"url\":\"/uploads/medium_vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450.jpg\"},\"small\":{\"name\":\"small_vsett-10-48v-trottinette-electrique-double-moteur (2).jpg\",\"hash\":\"small_vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":6.58,\"path\":null,\"url\":\"/uploads/small_vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450.jpg\"}}','vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450','.jpg','image/jpeg',46.15,'/uploads/vsett_10_48v_trottinette_electrique_double_moteur_2_6b22d80450.jpg',NULL,'local',NULL,1,1,'2021-08-21 21:05:03','2021-08-21 21:05:03'),(3,'vsett-10-48v-trottinette-electrique-double-moteur.jpg','','',1800,1200,'{\"thumbnail\":{\"name\":\"thumbnail_vsett-10-48v-trottinette-electrique-double-moteur.jpg\",\"hash\":\"thumbnail_vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":1.56,\"path\":null,\"url\":\"/uploads/thumbnail_vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a.jpg\"},\"large\":{\"name\":\"large_vsett-10-48v-trottinette-electrique-double-moteur.jpg\",\"hash\":\"large_vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":667,\"size\":11.48,\"path\":null,\"url\":\"/uploads/large_vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a.jpg\"},\"medium\":{\"name\":\"medium_vsett-10-48v-trottinette-electrique-double-moteur.jpg\",\"hash\":\"medium_vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":7.65,\"path\":null,\"url\":\"/uploads/medium_vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a.jpg\"},\"small\":{\"name\":\"small_vsett-10-48v-trottinette-electrique-double-moteur.jpg\",\"hash\":\"small_vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":4.31,\"path\":null,\"url\":\"/uploads/small_vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a.jpg\"}}','vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a','.jpg','image/jpeg',29.97,'/uploads/vsett_10_48v_trottinette_electrique_double_moteur_099117ad9a.jpg',NULL,'local',NULL,1,1,'2021-08-21 21:05:03','2021-08-21 21:05:03'),(4,'vsett-10-48v-trottinette-electrique-double-moteur (3).jpg','','',1800,1200,'{\"thumbnail\":{\"name\":\"thumbnail_vsett-10-48v-trottinette-electrique-double-moteur (3).jpg\",\"hash\":\"thumbnail_vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":2.23,\"path\":null,\"url\":\"/uploads/thumbnail_vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e.jpg\"},\"large\":{\"name\":\"large_vsett-10-48v-trottinette-electrique-double-moteur (3).jpg\",\"hash\":\"large_vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":667,\"size\":16.96,\"path\":null,\"url\":\"/uploads/large_vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e.jpg\"},\"medium\":{\"name\":\"medium_vsett-10-48v-trottinette-electrique-double-moteur (3).jpg\",\"hash\":\"medium_vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":10.78,\"path\":null,\"url\":\"/uploads/medium_vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e.jpg\"},\"small\":{\"name\":\"small_vsett-10-48v-trottinette-electrique-double-moteur (3).jpg\",\"hash\":\"small_vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":5.82,\"path\":null,\"url\":\"/uploads/small_vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e.jpg\"}}','vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e','.jpg','image/jpeg',44.14,'/uploads/vsett_10_48v_trottinette_electrique_double_moteur_3_e14a97709e.jpg',NULL,'local',NULL,1,1,'2021-08-21 21:05:03','2021-08-21 21:05:03'),(5,'vsett-10-48v-trottinette-electrique-double-moteur (1).jpg','','',1800,1200,'{\"thumbnail\":{\"name\":\"thumbnail_vsett-10-48v-trottinette-electrique-double-moteur (1).jpg\",\"hash\":\"thumbnail_vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":2.62,\"path\":null,\"url\":\"/uploads/thumbnail_vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b.jpg\"},\"large\":{\"name\":\"large_vsett-10-48v-trottinette-electrique-double-moteur (1).jpg\",\"hash\":\"large_vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":1000,\"height\":667,\"size\":21.36,\"path\":null,\"url\":\"/uploads/large_vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b.jpg\"},\"medium\":{\"name\":\"medium_vsett-10-48v-trottinette-electrique-double-moteur (1).jpg\",\"hash\":\"medium_vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":500,\"size\":13.39,\"path\":null,\"url\":\"/uploads/medium_vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b.jpg\"},\"small\":{\"name\":\"small_vsett-10-48v-trottinette-electrique-double-moteur (1).jpg\",\"hash\":\"small_vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":333,\"size\":7.44,\"path\":null,\"url\":\"/uploads/small_vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b.jpg\"}}','vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b','.jpg','image/jpeg',53.70,'/uploads/vsett_10_48v_trottinette_electrique_double_moteur_1_c1538e9e1b.jpg',NULL,'local',NULL,1,1,'2021-08-21 21:05:03','2021-08-21 21:05:03'),(6,'casque-yeepme-pour-trottinette-electrique-et-velo.jpg','','',1100,1422,'{\"thumbnail\":{\"name\":\"thumbnail_casque-yeepme-pour-trottinette-electrique-et-velo.jpg\",\"hash\":\"thumbnail_casque_yeepme_pour_trottinette_electrique_et_velo_686261920c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":121,\"height\":156,\"size\":2.22,\"path\":null,\"url\":\"/uploads/thumbnail_casque_yeepme_pour_trottinette_electrique_et_velo_686261920c.jpg\"},\"large\":{\"name\":\"large_casque-yeepme-pour-trottinette-electrique-et-velo.jpg\",\"hash\":\"large_casque_yeepme_pour_trottinette_electrique_et_velo_686261920c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":774,\"height\":1000,\"size\":23.83,\"path\":null,\"url\":\"/uploads/large_casque_yeepme_pour_trottinette_electrique_et_velo_686261920c.jpg\"},\"medium\":{\"name\":\"medium_casque-yeepme-pour-trottinette-electrique-et-velo.jpg\",\"hash\":\"medium_casque_yeepme_pour_trottinette_electrique_et_velo_686261920c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":580,\"height\":750,\"size\":15.28,\"path\":null,\"url\":\"/uploads/medium_casque_yeepme_pour_trottinette_electrique_et_velo_686261920c.jpg\"},\"small\":{\"name\":\"small_casque-yeepme-pour-trottinette-electrique-et-velo.jpg\",\"hash\":\"small_casque_yeepme_pour_trottinette_electrique_et_velo_686261920c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":387,\"height\":500,\"size\":8.6,\"path\":null,\"url\":\"/uploads/small_casque_yeepme_pour_trottinette_electrique_et_velo_686261920c.jpg\"}}','casque_yeepme_pour_trottinette_electrique_et_velo_686261920c','.jpg','image/jpeg',41.88,'/uploads/casque_yeepme_pour_trottinette_electrique_et_velo_686261920c.jpg',NULL,'local',NULL,1,1,'2021-08-21 21:06:59','2021-08-21 21:06:59'),(7,'casque-yeepme-pour-trottinette-electrique-et-velo (1).jpg','','',1100,1422,'{\"thumbnail\":{\"name\":\"thumbnail_casque-yeepme-pour-trottinette-electrique-et-velo (1).jpg\",\"hash\":\"thumbnail_casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":121,\"height\":156,\"size\":2.08,\"path\":null,\"url\":\"/uploads/thumbnail_casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27.jpg\"},\"large\":{\"name\":\"large_casque-yeepme-pour-trottinette-electrique-et-velo (1).jpg\",\"hash\":\"large_casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":774,\"height\":1000,\"size\":21.9,\"path\":null,\"url\":\"/uploads/large_casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27.jpg\"},\"medium\":{\"name\":\"medium_casque-yeepme-pour-trottinette-electrique-et-velo (1).jpg\",\"hash\":\"medium_casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":580,\"height\":750,\"size\":14.49,\"path\":null,\"url\":\"/uploads/medium_casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27.jpg\"},\"small\":{\"name\":\"small_casque-yeepme-pour-trottinette-electrique-et-velo (1).jpg\",\"hash\":\"small_casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":387,\"height\":500,\"size\":8.1,\"path\":null,\"url\":\"/uploads/small_casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27.jpg\"}}','casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27','.jpg','image/jpeg',38.45,'/uploads/casque_yeepme_pour_trottinette_electrique_et_velo_1_a49de2aa27.jpg',NULL,'local',NULL,1,1,'2021-08-21 21:06:59','2021-08-21 21:06:59'),(8,'casque-yeepme-pour-trottinette-electrique-et-velo (2).jpg','','',1100,1422,'{\"thumbnail\":{\"name\":\"thumbnail_casque-yeepme-pour-trottinette-electrique-et-velo (2).jpg\",\"hash\":\"thumbnail_casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":121,\"height\":156,\"size\":4.3,\"path\":null,\"url\":\"/uploads/thumbnail_casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4.jpg\"},\"large\":{\"name\":\"large_casque-yeepme-pour-trottinette-electrique-et-velo (2).jpg\",\"hash\":\"large_casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":774,\"height\":1000,\"size\":77.24,\"path\":null,\"url\":\"/uploads/large_casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4.jpg\"},\"medium\":{\"name\":\"medium_casque-yeepme-pour-trottinette-electrique-et-velo (2).jpg\",\"hash\":\"medium_casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":580,\"height\":750,\"size\":48.82,\"path\":null,\"url\":\"/uploads/medium_casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4.jpg\"},\"small\":{\"name\":\"small_casque-yeepme-pour-trottinette-electrique-et-velo (2).jpg\",\"hash\":\"small_casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":387,\"height\":500,\"size\":25.7,\"path\":null,\"url\":\"/uploads/small_casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4.jpg\"}}','casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4','.jpg','image/jpeg',136.95,'/uploads/casque_yeepme_pour_trottinette_electrique_et_velo_2_7210f764c4.jpg',NULL,'local',NULL,1,1,'2021-08-21 21:06:59','2021-08-21 21:06:59');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_file_morph` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int DEFAULT NULL,
  `related_id` int DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (2,2,1,'product_colors','images',1),(3,3,1,'product_colors','images',2),(4,4,1,'product_colors','images',3),(5,5,1,'product_colors','images',4),(6,6,2,'product_colors','images',1),(7,7,2,'product_colors','images',2),(8,8,2,'product_colors','images',3);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_permission` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(2,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(3,'content-manager','collection-types','create',0,'',1,NULL,NULL),(4,'content-manager','collection-types','create',0,'',2,NULL,NULL),(5,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(6,'content-manager','collection-types','find',0,'',1,NULL,NULL),(7,'content-manager','collection-types','find',0,'',2,NULL,NULL),(8,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(9,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(10,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(14,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(15,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(16,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(17,'content-manager','collection-types','update',0,'',1,NULL,NULL),(18,'content-manager','collection-types','update',0,'',2,NULL,NULL),(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(25,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(27,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(28,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(29,'content-manager','content-types','findcontenttypessettings',0,'',1,NULL,NULL),(30,'content-manager','content-types','findcontenttypessettings',0,'',2,NULL,NULL),(31,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(32,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(33,'content-manager','relations','find',0,'',1,NULL,NULL),(34,'content-manager','relations','find',0,'',2,NULL,NULL),(35,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(36,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(37,'content-manager','single-types','delete',0,'',1,NULL,NULL),(38,'content-manager','single-types','delete',0,'',2,NULL,NULL),(39,'content-manager','single-types','find',0,'',1,NULL,NULL),(40,'content-manager','single-types','find',0,'',2,NULL,NULL),(41,'content-manager','single-types','publish',0,'',1,NULL,NULL),(42,'content-manager','single-types','publish',0,'',2,NULL,NULL),(43,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(44,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(45,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(46,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(47,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(48,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(49,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(50,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(51,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(52,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(53,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(54,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(55,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(56,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(57,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(58,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(59,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(60,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(61,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(62,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(63,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(64,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(65,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(66,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(67,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(68,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(69,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(70,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(71,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(72,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(73,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(74,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(75,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(76,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(77,'email','email','getsettings',0,'',1,NULL,NULL),(78,'email','email','getsettings',0,'',2,NULL,NULL),(79,'email','email','send',0,'',1,NULL,NULL),(80,'email','email','send',0,'',2,NULL,NULL),(81,'email','email','test',0,'',1,NULL,NULL),(82,'email','email','test',0,'',2,NULL,NULL),(83,'i18n','content-types','getnonlocalizedattributes',0,'',1,NULL,NULL),(84,'i18n','content-types','getnonlocalizedattributes',0,'',2,NULL,NULL),(85,'i18n','iso-locales','listisolocales',0,'',1,NULL,NULL),(86,'i18n','iso-locales','listisolocales',0,'',2,NULL,NULL),(87,'i18n','locales','createlocale',0,'',1,NULL,NULL),(88,'i18n','locales','createlocale',0,'',2,NULL,NULL),(89,'i18n','locales','deletelocale',0,'',1,NULL,NULL),(90,'i18n','locales','deletelocale',0,'',2,NULL,NULL),(91,'i18n','locales','listlocales',0,'',1,NULL,NULL),(92,'i18n','locales','listlocales',0,'',2,NULL,NULL),(93,'i18n','locales','updatelocale',0,'',1,NULL,NULL),(94,'i18n','locales','updatelocale',0,'',2,NULL,NULL),(95,'upload','upload','count',0,'',1,NULL,NULL),(96,'upload','upload','count',0,'',2,NULL,NULL),(97,'upload','upload','destroy',0,'',1,NULL,NULL),(98,'upload','upload','destroy',0,'',2,NULL,NULL),(99,'upload','upload','find',0,'',1,NULL,NULL),(100,'upload','upload','find',0,'',2,NULL,NULL),(101,'upload','upload','findone',0,'',1,NULL,NULL),(102,'upload','upload','findone',0,'',2,NULL,NULL),(103,'upload','upload','getsettings',0,'',1,NULL,NULL),(104,'upload','upload','getsettings',0,'',2,NULL,NULL),(105,'upload','upload','search',0,'',1,NULL,NULL),(106,'upload','upload','search',0,'',2,NULL,NULL),(107,'upload','upload','updatesettings',0,'',1,NULL,NULL),(108,'upload','upload','updatesettings',0,'',2,NULL,NULL),(109,'upload','upload','upload',0,'',1,NULL,NULL),(110,'upload','upload','upload',0,'',2,NULL,NULL),(111,'users-permissions','auth','callback',0,'',1,NULL,NULL),(112,'users-permissions','auth','callback',1,'',2,NULL,NULL),(113,'users-permissions','auth','connect',1,'',1,NULL,NULL),(114,'users-permissions','auth','connect',1,'',2,NULL,NULL),(115,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(116,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(117,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(118,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(119,'users-permissions','auth','register',0,'',1,NULL,NULL),(120,'users-permissions','auth','register',1,'',2,NULL,NULL),(121,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(122,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(123,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(124,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(125,'users-permissions','user','count',0,'',1,NULL,NULL),(126,'users-permissions','user','count',0,'',2,NULL,NULL),(127,'users-permissions','user','create',0,'',1,NULL,NULL),(128,'users-permissions','user','create',0,'',2,NULL,NULL),(129,'users-permissions','user','destroy',0,'',1,NULL,NULL),(130,'users-permissions','user','destroy',0,'',2,NULL,NULL),(131,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(132,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(133,'users-permissions','user','find',0,'',1,NULL,NULL),(134,'users-permissions','user','find',0,'',2,NULL,NULL),(135,'users-permissions','user','findone',0,'',1,NULL,NULL),(136,'users-permissions','user','findone',0,'',2,NULL,NULL),(137,'users-permissions','user','me',1,'',1,NULL,NULL),(138,'users-permissions','user','me',1,'',2,NULL,NULL),(139,'users-permissions','user','update',0,'',1,NULL,NULL),(140,'users-permissions','user','update',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(147,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(148,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(149,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(150,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(151,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(152,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(153,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(154,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(155,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(156,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(157,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(158,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(159,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(160,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(161,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(162,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(163,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(164,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(165,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(166,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(167,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(168,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(169,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(170,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(171,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(172,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(221,'application','category','count',0,'',1,NULL,NULL),(222,'application','category','create',0,'',1,NULL,NULL),(223,'application','category','create',0,'',2,NULL,NULL),(224,'application','category','delete',0,'',1,NULL,NULL),(225,'application','category','delete',0,'',2,NULL,NULL),(226,'application','category','find',0,'',1,NULL,NULL),(227,'application','category','count',0,'',2,NULL,NULL),(228,'application','category','find',1,'',2,NULL,NULL),(229,'application','category','findone',0,'',1,NULL,NULL),(230,'application','category','findone',1,'',2,NULL,NULL),(231,'application','category','update',0,'',1,NULL,NULL),(232,'application','category','update',0,'',2,NULL,NULL),(233,'application','product-category','count',0,'',1,NULL,NULL),(234,'application','product-category','create',0,'',2,NULL,NULL),(235,'application','product-category','delete',0,'',1,NULL,NULL),(236,'application','product-category','delete',0,'',2,NULL,NULL),(237,'application','product-category','find',0,'',1,NULL,NULL),(238,'application','product-category','find',1,'',2,NULL,NULL),(239,'application','product-category','findone',0,'',1,NULL,NULL),(240,'application','product-category','create',0,'',1,NULL,NULL),(241,'application','product-category','count',0,'',2,NULL,NULL),(242,'application','product-category','findone',1,'',2,NULL,NULL),(243,'application','product-category','update',0,'',1,NULL,NULL),(244,'application','product-category','update',0,'',2,NULL,NULL),(245,'application','bundle','count',0,'',1,NULL,NULL),(246,'application','bundle','count',0,'',2,NULL,NULL),(247,'application','bundle','create',0,'',1,NULL,NULL),(248,'application','bundle','delete',0,'',1,NULL,NULL),(249,'application','bundle','create',0,'',2,NULL,NULL),(250,'application','bundle','find',0,'',1,NULL,NULL),(251,'application','bundle','delete',0,'',2,NULL,NULL),(252,'application','bundle','find',1,'',2,NULL,NULL),(253,'application','bundle','findone',0,'',1,NULL,NULL),(254,'application','bundle','findone',1,'',2,NULL,NULL),(255,'application','bundle','update',0,'',1,NULL,NULL),(256,'application','bundle','update',0,'',2,NULL,NULL),(257,'application','product','count',0,'',1,NULL,NULL),(258,'application','product','count',0,'',2,NULL,NULL),(259,'application','product','create',0,'',1,NULL,NULL),(260,'application','product','create',0,'',2,NULL,NULL),(261,'application','product','delete',0,'',1,NULL,NULL),(262,'application','product','find',0,'',1,NULL,NULL),(263,'application','product','find',1,'',2,NULL,NULL),(264,'application','product','findone',0,'',1,NULL,NULL),(265,'application','product','delete',0,'',2,NULL,NULL),(266,'application','product','findone',1,'',2,NULL,NULL),(267,'application','product','update',0,'',1,NULL,NULL),(268,'application','product','update',0,'',2,NULL,NULL),(269,'application','product-color','count',0,'',1,NULL,NULL),(270,'application','product-color','count',0,'',2,NULL,NULL),(271,'application','product-color','create',0,'',1,NULL,NULL),(272,'application','product-color','create',0,'',2,NULL,NULL),(273,'application','product-color','delete',0,'',1,NULL,NULL),(274,'application','product-color','delete',0,'',2,NULL,NULL),(275,'application','product-color','find',0,'',1,NULL,NULL),(276,'application','product-color','find',1,'',2,NULL,NULL),(277,'application','product-color','findone',0,'',1,NULL,NULL),(278,'application','product-color','findone',1,'',2,NULL,NULL),(279,'application','product-color','update',0,'',1,NULL,NULL),(280,'application','product-color','update',0,'',2,NULL,NULL),(281,'application','color','count',0,'',1,NULL,NULL),(282,'application','color','count',0,'',2,NULL,NULL),(283,'application','color','create',0,'',1,NULL,NULL),(284,'application','color','create',0,'',2,NULL,NULL),(285,'application','color','delete',0,'',1,NULL,NULL),(286,'application','color','delete',0,'',2,NULL,NULL),(287,'application','color','find',0,'',1,NULL,NULL),(288,'application','color','find',1,'',2,NULL,NULL),(289,'application','color','findone',0,'',1,NULL,NULL),(290,'application','color','findone',1,'',2,NULL,NULL),(291,'application','color','update',0,'',1,NULL,NULL),(292,'application','color','update',0,'',2,NULL,NULL),(317,'application','attributes','count',0,'',1,NULL,NULL),(318,'application','attributes','count',0,'',2,NULL,NULL),(319,'application','attributes','create',0,'',1,NULL,NULL),(320,'application','attributes','create',0,'',2,NULL,NULL),(321,'application','attributes','delete',0,'',1,NULL,NULL),(322,'application','attributes','delete',0,'',2,NULL,NULL),(323,'application','attributes','find',0,'',1,NULL,NULL),(324,'application','attributes','find',1,'',2,NULL,NULL),(325,'application','attributes','findone',0,'',1,NULL,NULL),(326,'application','attributes','findone',1,'',2,NULL,NULL),(327,'application','attributes','update',0,'',1,NULL,NULL),(328,'application','attributes','update',0,'',2,NULL,NULL),(329,'application','attributes-values','count',0,'',1,NULL,NULL),(330,'application','attributes-values','count',0,'',2,NULL,NULL),(331,'application','attributes-values','create',0,'',1,NULL,NULL),(332,'application','attributes-values','create',0,'',2,NULL,NULL),(333,'application','attributes-values','delete',0,'',1,NULL,NULL),(334,'application','attributes-values','delete',0,'',2,NULL,NULL),(335,'application','attributes-values','find',0,'',1,NULL,NULL),(336,'application','attributes-values','find',1,'',2,NULL,NULL),(337,'application','attributes-values','findone',0,'',1,NULL,NULL),(338,'application','attributes-values','findone',1,'',2,NULL,NULL),(339,'application','attributes-values','update',0,'',1,NULL,NULL),(340,'application','attributes-values','update',0,'',2,NULL,NULL),(341,'application','tags','count',0,'',1,NULL,NULL),(342,'application','tags','count',0,'',2,NULL,NULL),(343,'application','tags','create',0,'',1,NULL,NULL),(344,'application','tags','create',0,'',2,NULL,NULL),(345,'application','tags','delete',0,'',1,NULL,NULL),(346,'application','tags','delete',0,'',2,NULL,NULL),(347,'application','tags','find',0,'',1,NULL,NULL),(348,'application','tags','find',1,'',2,NULL,NULL),(349,'application','tags','findone',0,'',1,NULL,NULL),(350,'application','tags','findone',1,'',2,NULL,NULL),(351,'application','tags','update',0,'',1,NULL,NULL),(352,'application','tags','update',0,'',2,NULL,NULL),(353,'application','product-variation-values','count',0,'',1,NULL,NULL),(354,'application','product-variation-values','count',0,'',2,NULL,NULL),(355,'application','product-variation-values','create',0,'',2,NULL,NULL),(356,'application','product-variation-values','delete',0,'',1,NULL,NULL),(357,'application','product-variation-values','delete',0,'',2,NULL,NULL),(358,'application','product-variation-values','find',0,'',1,NULL,NULL),(359,'application','product-variation-values','find',1,'',2,NULL,NULL),(360,'application','product-variation-values','create',0,'',1,NULL,NULL),(361,'application','product-variation-values','findone',0,'',1,NULL,NULL),(362,'application','product-variation-values','findone',1,'',2,NULL,NULL),(363,'application','product-variation-values','update',0,'',1,NULL,NULL),(364,'application','product-variation-values','update',0,'',2,NULL,NULL),(365,'application','variation','count',0,'',1,NULL,NULL),(366,'application','variation','count',0,'',2,NULL,NULL),(367,'application','variation','create',0,'',1,NULL,NULL),(368,'application','variation','create',0,'',2,NULL,NULL),(369,'application','variation','delete',0,'',1,NULL,NULL),(370,'application','variation','delete',0,'',2,NULL,NULL),(371,'application','variation','find',1,'',2,NULL,NULL),(372,'application','variation','findone',0,'',1,NULL,NULL),(373,'application','variation','findone',1,'',2,NULL,NULL),(374,'application','variation','find',0,'',1,NULL,NULL),(375,'application','variation','update',0,'',1,NULL,NULL),(376,'application','variation','update',0,'',2,NULL,NULL),(377,'application','product-variation','count',0,'',1,NULL,NULL),(378,'application','product-variation','count',0,'',2,NULL,NULL),(379,'application','product-variation','create',0,'',1,NULL,NULL),(380,'application','product-variation','create',0,'',2,NULL,NULL),(381,'application','product-variation','delete',0,'',1,NULL,NULL),(382,'application','product-variation','delete',0,'',2,NULL,NULL),(383,'application','product-variation','find',0,'',1,NULL,NULL),(384,'application','product-variation','findone',0,'',1,NULL,NULL),(385,'application','product-variation','find',1,'',2,NULL,NULL),(386,'application','product-variation','findone',1,'',2,NULL,NULL),(387,'application','product-variation','update',0,'',1,NULL,NULL),(388,'application','product-variation','update',0,'',2,NULL,NULL),(389,'application','product-item-cart','create',0,'',1,NULL,NULL),(390,'application','product-item-cart','count',0,'',2,NULL,NULL),(391,'application','product-item-cart','count',0,'',1,NULL,NULL),(392,'application','product-item-cart','create',0,'',2,NULL,NULL),(393,'application','product-item-cart','delete',0,'',1,NULL,NULL),(394,'application','product-item-cart','delete',0,'',2,NULL,NULL),(395,'application','product-item-cart','find',0,'',1,NULL,NULL),(396,'application','product-item-cart','findone',0,'',1,NULL,NULL),(397,'application','product-item-cart','find',0,'',2,NULL,NULL),(398,'application','product-item-cart','findone',0,'',2,NULL,NULL),(399,'application','product-item-cart','update',0,'',1,NULL,NULL),(400,'application','product-item-cart','update',0,'',2,NULL,NULL),(401,'application','cart','count',0,'',1,NULL,NULL),(402,'application','cart','count',0,'',2,NULL,NULL),(403,'application','cart','create',0,'',1,NULL,NULL),(404,'application','cart','create',0,'',2,NULL,NULL),(405,'application','cart','delete',0,'',1,NULL,NULL),(406,'application','cart','delete',0,'',2,NULL,NULL),(407,'application','cart','find',0,'',1,NULL,NULL),(408,'application','cart','find',0,'',2,NULL,NULL),(409,'application','cart','findone',0,'',1,NULL,NULL),(410,'application','cart','findone',0,'',2,NULL,NULL),(411,'application','cart','update',0,'',1,NULL,NULL),(412,'application','cart','update',0,'',2,NULL,NULL),(413,'application','order','count',0,'',1,NULL,NULL),(414,'application','order','create',0,'',1,NULL,NULL),(415,'application','order','count',0,'',2,NULL,NULL),(416,'application','order','create',0,'',2,NULL,NULL),(417,'application','order','delete',0,'',1,NULL,NULL),(418,'application','order','delete',0,'',2,NULL,NULL),(419,'application','order','find',0,'',2,NULL,NULL),(420,'application','order','findone',0,'',1,NULL,NULL),(421,'application','order','find',0,'',1,NULL,NULL),(422,'application','order','findone',0,'',2,NULL,NULL),(423,'application','order','update',0,'',1,NULL,NULL),(424,'application','order','update',0,'',2,NULL,NULL),(425,'application','country','count',0,'',2,NULL,NULL),(426,'application','country','count',0,'',1,NULL,NULL),(427,'application','country','create',0,'',1,NULL,NULL),(428,'application','country','create',0,'',2,NULL,NULL),(429,'application','country','delete',0,'',1,NULL,NULL),(430,'application','country','delete',0,'',2,NULL,NULL),(431,'application','country','find',0,'',1,NULL,NULL),(432,'application','country','findone',0,'',1,NULL,NULL),(433,'application','country','find',0,'',2,NULL,NULL),(434,'application','country','findone',0,'',2,NULL,NULL),(435,'application','country','update',0,'',1,NULL,NULL),(436,'application','country','update',0,'',2,NULL,NULL),(437,'application','city','count',0,'',1,NULL,NULL),(438,'application','city','count',0,'',2,NULL,NULL),(439,'application','city','create',0,'',1,NULL,NULL),(440,'application','city','create',0,'',2,NULL,NULL),(441,'application','city','delete',0,'',1,NULL,NULL),(442,'application','city','find',0,'',1,NULL,NULL),(443,'application','city','findone',0,'',1,NULL,NULL),(444,'application','city','delete',0,'',2,NULL,NULL),(445,'application','city','find',0,'',2,NULL,NULL),(446,'application','city','findone',0,'',2,NULL,NULL),(447,'application','city','update',0,'',1,NULL,NULL),(448,'application','city','update',0,'',2,NULL,NULL),(449,'application','address','count',0,'',1,NULL,NULL),(450,'application','address','count',0,'',2,NULL,NULL),(451,'application','address','create',0,'',1,NULL,NULL),(452,'application','address','create',0,'',2,NULL,NULL),(453,'application','address','delete',0,'',1,NULL,NULL),(454,'application','address','delete',0,'',2,NULL,NULL),(455,'application','address','find',0,'',1,NULL,NULL),(456,'application','address','find',0,'',2,NULL,NULL),(457,'application','address','findone',0,'',1,NULL,NULL),(458,'application','address','findone',0,'',2,NULL,NULL),(459,'application','address','update',0,'',1,NULL,NULL),(460,'application','address','update',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users-permissions_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation`
--

DROP TABLE IF EXISTS `variation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variation` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `variation_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation`
--

LOCK TABLES `variation` WRITE;
/*!40000 ALTER TABLE `variation` DISABLE KEYS */;
INSERT INTO `variation` VALUES (1,'size','size','2021-08-21 21:25:30',1,1,'2021-08-21 21:25:27','2021-08-21 21:25:30'),(2,'battery','battery','2021-08-21 21:25:41',1,1,'2021-08-21 21:25:38','2021-08-21 21:25:41');
/*!40000 ALTER TABLE `variation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variations`
--

DROP TABLE IF EXISTS `variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `variations_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variations`
--

LOCK TABLES `variations` WRITE;
/*!40000 ALTER TABLE `variations` DISABLE KEYS */;
INSERT INTO `variations` VALUES (1,'size','size','2021-08-21 21:46:19',1,1,'2021-08-21 21:46:15','2021-08-21 21:46:19'),(2,'battery','battery','2021-08-21 21:46:33',1,1,'2021-08-21 21:46:31','2021-08-21 21:46:33');
/*!40000 ALTER TABLE `variations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-22 10:53:55
