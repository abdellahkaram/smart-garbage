# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: smartgarbage
# Generation Time: 2018-05-06 11:19:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table areas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surface` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;

INSERT INTO `areas` (`id`, `name`, `surface`, `created_at`, `updated_at`)
VALUES
	(1,'El Oulfa',12015,'2018-05-05 14:37:58','2018-05-05 14:37:58');

/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,'',1),
	(2,1,'name','text','Name',1,1,1,1,1,1,'',2),
	(3,1,'email','text','Email',1,1,1,1,1,1,'',3),
	(4,1,'password','password','Password',1,0,0,1,1,0,'',4),
	(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),
	(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),
	(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),
	(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),
	(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),
	(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
	(11,1,'locale','text','Locale',0,1,1,1,1,0,'',12),
	(12,1,'settings','hidden','Settings',0,0,0,0,0,0,'',12),
	(13,2,'id','number','ID',1,0,0,0,0,0,'',1),
	(14,2,'name','text','Name',1,1,1,1,1,1,'',2),
	(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),
	(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),
	(17,3,'id','number','ID',1,0,0,0,0,0,'',1),
	(18,3,'name','text','Name',1,1,1,1,1,1,'',2),
	(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),
	(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),
	(21,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),
	(22,1,'role_id','text','Role',1,1,1,1,1,1,'',9),
	(42,6,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(43,6,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(44,6,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,5),
	(45,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),
	(50,7,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(51,7,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(52,7,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,3),
	(53,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(54,7,'team_id','text','Team Id',1,1,1,1,1,1,NULL,5),
	(55,7,'route_belongsto_team_relationship','relationship','teams',0,1,1,1,1,1,'{\"model\":\"App\\\\Team\",\"table\":\"teams\",\"type\":\"belongsTo\",\"column\":\"team_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),
	(56,8,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(57,8,'name','text','Name',0,1,1,1,1,1,NULL,2),
	(58,8,'surface','text','Surface',0,1,1,1,1,1,NULL,3),
	(60,9,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(61,9,'text','text','Text',0,1,1,1,1,1,NULL,2),
	(62,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),
	(63,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),
	(64,9,'user_id','text','User Id',1,1,1,1,1,1,NULL,3),
	(65,9,'notification_belongsto_user_relationship','relationship','users',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"admins\",\"pivot\":\"0\",\"taggable\":null}',6),
	(78,6,'team_belongsto_user_relationship','relationship','Supervisor',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"supervisor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
	(79,6,'team_belongsto_user_relationship_1','relationship','Leader',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"leader_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}',8),
	(80,12,'id','text','Id',1,0,0,0,0,0,NULL,1),
	(81,12,'volume','text','Volume',0,1,1,1,1,1,NULL,2),
	(82,12,'longitude','text','Longitude',0,1,1,1,1,1,NULL,3),
	(83,12,'latitude','text','Latitude',0,1,1,1,1,1,NULL,4),
	(84,6,'supervisor_id','text','Supervisor Id',1,1,1,1,1,1,NULL,5),
	(85,6,'leader_id','text','Leader Id',1,1,1,1,1,1,NULL,6),
	(86,7,'route_belongsto_area_relationship','relationship','areas',0,1,1,1,1,1,'{\"model\":\"App\\\\Area\",\"table\":\"areas\",\"type\":\"belongsTo\",\"column\":\"area_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"areas\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
	(87,8,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),
	(88,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),
	(89,7,'area_id','text','Area Id',1,1,1,1,1,1,NULL,6),
	(90,12,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,5),
	(91,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-05-05 12:01:05','2018-05-05 12:01:05'),
	(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-05-05 12:01:05','2018-05-05 12:01:05'),
	(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-05-05 12:01:05','2018-05-05 12:01:05'),
	(6,'teams','teams','Team','Teams','voyager-people','App\\Team',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-05 12:45:24','2018-05-06 09:58:35'),
	(7,'routes','routes','Route','Routes','voyager-location','App\\Route',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-05 13:07:04','2018-05-06 09:59:13'),
	(8,'areas','areas','Area','Areas','voyager-trees','App\\Area',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-05 13:09:52','2018-05-06 09:59:33'),
	(9,'notifications','notifications','Notification','Notifications',NULL,'App\\Notification',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-05 13:29:14','2018-05-05 13:29:14'),
	(12,'garbages','garbages','Garbage','Garbages','voyager-bag','App\\Garbage',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-05-05 13:53:07','2018-05-06 10:00:26');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table garbages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `garbages`;

CREATE TABLE `garbages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `volume` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `garbages` WRITE;
/*!40000 ALTER TABLE `garbages` DISABLE KEYS */;

INSERT INTO `garbages` (`id`, `volume`, `longitude`, `latitude`, `created_at`, `updated_at`)
VALUES
	(1,1000,33.555407,-7.678338,'2018-05-05 14:44:47','2018-05-05 14:45:17'),
	(2,200,33.552247,-7.679604,'2018-05-05 16:23:33','2018-05-05 16:23:33');

/*!40000 ALTER TABLE `garbages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-home','#000000',NULL,1,'2018-05-05 12:01:06','2018-05-05 14:13:17','voyager.dashboard','null'),
	(2,1,'Media','','_self','voyager-images',NULL,NULL,8,'2018-05-05 12:01:06','2018-05-05 14:14:03','voyager.media.index',NULL),
	(3,1,'Users','','_self','voyager-person',NULL,NULL,6,'2018-05-05 12:01:06','2018-05-06 09:55:39','voyager.users.index',NULL),
	(4,1,'Roles','','_self','voyager-lock',NULL,NULL,7,'2018-05-05 12:01:06','2018-05-06 09:55:39','voyager.roles.index',NULL),
	(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2018-05-05 12:01:06','2018-05-05 14:14:03',NULL,NULL),
	(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2018-05-05 12:01:06','2018-05-05 14:13:43','voyager.menus.index',NULL),
	(7,1,'Database','','_self','voyager-data',NULL,5,2,'2018-05-05 12:01:06','2018-05-05 14:13:43','voyager.database.index',NULL),
	(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2018-05-05 12:01:06','2018-05-05 14:13:43','voyager.compass.index',NULL),
	(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2018-05-05 12:01:06','2018-05-05 14:13:43','voyager.bread.index',NULL),
	(10,1,'Settings','','_self','voyager-settings',NULL,NULL,10,'2018-05-05 12:01:06','2018-05-05 14:14:03','voyager.settings.index',NULL),
	(11,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2018-05-05 12:01:06','2018-05-05 14:13:43','voyager.hooks',NULL),
	(13,1,'Teams','','_self','voyager-people','#000000',NULL,2,'2018-05-05 12:45:24','2018-05-05 14:13:47','voyager.teams.index','null'),
	(14,1,'Routes','','_self','voyager-location','#000000',NULL,3,'2018-05-05 13:07:04','2018-05-05 14:13:53','voyager.routes.index','null'),
	(15,1,'Areas','','_self','voyager-trees','#000000',NULL,4,'2018-05-05 13:09:52','2018-05-05 14:20:14','voyager.areas.index','null'),
	(19,1,'Garbages','','_self','voyager-bag','#000000',NULL,5,'2018-05-05 13:53:07','2018-05-06 09:55:36','voyager.garbages.index','null');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2018-05-05 12:01:06','2018-05-05 12:01:06');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2016_01_01_000000_add_voyager_user_fields',1),
	(4,'2016_01_01_000000_create_data_types_table',1),
	(5,'2016_05_19_173453_create_menu_table',1),
	(6,'2016_10_21_190000_create_roles_table',1),
	(7,'2016_10_21_190000_create_settings_table',1),
	(8,'2016_11_30_135954_create_permission_table',1),
	(9,'2016_11_30_141208_create_permission_role_table',1),
	(10,'2016_12_26_201236_data_types__add__server_side',1),
	(11,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(12,'2017_01_14_005015_create_translations_table',1),
	(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(14,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(15,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(17,'2017_08_05_000000_add_group_to_settings_table',1),
	(18,'2017_11_26_013050_add_user_role_relationship',1),
	(19,'2017_11_26_015000_create_user_roles_table',1),
	(20,'2018_03_11_000000_add_user_settings',1),
	(21,'2018_03_14_000000_add_details_to_data_types_table',1),
	(22,'2018_03_16_000000_make_settings_value_nullable',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(1,3),
	(1,4),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(16,3),
	(16,4),
	(17,1),
	(17,3),
	(17,4),
	(18,1),
	(18,3),
	(19,1),
	(19,3),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(37,1),
	(37,3),
	(37,4),
	(38,1),
	(38,3),
	(38,4),
	(39,1),
	(39,3),
	(40,1),
	(40,3),
	(41,1),
	(41,3),
	(42,1),
	(42,3),
	(42,4),
	(43,1),
	(43,3),
	(43,4),
	(44,1),
	(44,3),
	(45,1),
	(45,3),
	(46,1),
	(46,3),
	(47,1),
	(47,3),
	(47,4),
	(48,1),
	(48,3),
	(48,4),
	(49,1),
	(49,3),
	(50,1),
	(50,3),
	(51,1),
	(51,3),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(56,1),
	(67,1),
	(67,3),
	(67,4),
	(68,1),
	(68,3),
	(68,4),
	(69,1),
	(70,1),
	(71,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin',NULL,'2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(2,'browse_bread',NULL,'2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(3,'browse_database',NULL,'2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(4,'browse_media',NULL,'2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(5,'browse_compass',NULL,'2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(6,'browse_menus','menus','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(7,'read_menus','menus','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(8,'edit_menus','menus','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(9,'add_menus','menus','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(10,'delete_menus','menus','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(11,'browse_roles','roles','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(12,'read_roles','roles','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(13,'edit_roles','roles','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(14,'add_roles','roles','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(15,'delete_roles','roles','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(16,'browse_users','users','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(17,'read_users','users','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(18,'edit_users','users','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(19,'add_users','users','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(20,'delete_users','users','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(21,'browse_settings','settings','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(22,'read_settings','settings','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(23,'edit_settings','settings','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(24,'add_settings','settings','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(25,'delete_settings','settings','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(26,'browse_hooks',NULL,'2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(37,'browse_teams','teams','2018-05-05 12:45:24','2018-05-05 12:45:24'),
	(38,'read_teams','teams','2018-05-05 12:45:24','2018-05-05 12:45:24'),
	(39,'edit_teams','teams','2018-05-05 12:45:24','2018-05-05 12:45:24'),
	(40,'add_teams','teams','2018-05-05 12:45:24','2018-05-05 12:45:24'),
	(41,'delete_teams','teams','2018-05-05 12:45:24','2018-05-05 12:45:24'),
	(42,'browse_routes','routes','2018-05-05 13:07:04','2018-05-05 13:07:04'),
	(43,'read_routes','routes','2018-05-05 13:07:04','2018-05-05 13:07:04'),
	(44,'edit_routes','routes','2018-05-05 13:07:04','2018-05-05 13:07:04'),
	(45,'add_routes','routes','2018-05-05 13:07:04','2018-05-05 13:07:04'),
	(46,'delete_routes','routes','2018-05-05 13:07:04','2018-05-05 13:07:04'),
	(47,'browse_areas','areas','2018-05-05 13:09:52','2018-05-05 13:09:52'),
	(48,'read_areas','areas','2018-05-05 13:09:52','2018-05-05 13:09:52'),
	(49,'edit_areas','areas','2018-05-05 13:09:52','2018-05-05 13:09:52'),
	(50,'add_areas','areas','2018-05-05 13:09:52','2018-05-05 13:09:52'),
	(51,'delete_areas','areas','2018-05-05 13:09:52','2018-05-05 13:09:52'),
	(52,'browse_notifications','notifications','2018-05-05 13:29:14','2018-05-05 13:29:14'),
	(53,'read_notifications','notifications','2018-05-05 13:29:14','2018-05-05 13:29:14'),
	(54,'edit_notifications','notifications','2018-05-05 13:29:14','2018-05-05 13:29:14'),
	(55,'add_notifications','notifications','2018-05-05 13:29:14','2018-05-05 13:29:14'),
	(56,'delete_notifications','notifications','2018-05-05 13:29:14','2018-05-05 13:29:14'),
	(67,'browse_garbages','garbages','2018-05-05 13:53:07','2018-05-05 13:53:07'),
	(68,'read_garbages','garbages','2018-05-05 13:53:07','2018-05-05 13:53:07'),
	(69,'edit_garbages','garbages','2018-05-05 13:53:07','2018-05-05 13:53:07'),
	(70,'add_garbages','garbages','2018-05-05 13:53:07','2018-05-05 13:53:07'),
	(71,'delete_garbages','garbages','2018-05-05 13:53:07','2018-05-05 13:53:07');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(2,'user','Normal User','2018-05-05 12:01:06','2018-05-05 12:01:06'),
	(3,'supervisor','Supervisor','2018-05-05 13:56:12','2018-05-05 13:56:45'),
	(4,'leader','Leader','2018-05-05 13:57:51','2018-05-05 13:57:51');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `routes`;

CREATE TABLE `routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;

INSERT INTO `routes` (`id`, `name`, `created_at`, `updated_at`, `team_id`, `area_id`)
VALUES
	(1,'Route 1','2018-05-05 14:43:18','2018-05-05 14:43:18',1,1);

/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','Site Title','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
	(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table teams
# ------------------------------------------------------------

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supervisor_id` int(11) NOT NULL,
  `leader_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;

INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`, `supervisor_id`, `leader_id`)
VALUES
	(1,'Team1','2018-05-05 14:33:02','2018-05-05 14:33:02',2,2);

/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `first_name`, `last_name`)
VALUES
	(1,1,'admin','bioudiamine@gmail.com','users/May2018/XRPz3kN9eKoO2eTyHKX0.png','$2y$10$2Utj5VgVrjbA8/dsOKdHyOknhCKD8YVnBfD76lUOViFnUAoIKWCuu','6pRoScrcrvJO4fSREZmBO8hzVTY72OzO3rZhYEa3WvZAWy3TjIsivzcpI3GD','{\"locale\":\"en\"}','2018-05-05 12:03:29','2018-05-05 12:08:42',NULL,NULL),
	(2,3,'supervisor1','supervisor1@gmail.com','users/May2018/bogqlenfnDfr2AHOGLME.png','$2y$10$CyPXMSFzTHZmQnkRRCnKEuYEwiqL.9.UqKWfxLwUTmr1diOwq9m4C','JxTtHATqCl6ZiK3bRpxpFYLT6wA5xhXIkp5TPBb0p2yQYE1nnfBvY5W0ZLNk','{\"locale\":\"en\"}','2018-05-05 14:01:03','2018-05-05 14:01:03',NULL,NULL),
	(3,4,'leader1','leader1@gmail.com','users/May2018/EO7Y3il4BmWN3JUP0EwK.png','$2y$10$vqdFtiCUXIR/P0wbWSdTH.3BA2XEbztQfKtr30Ri2yr7cXDEArrse','A2s1SKwRsartJbJtI2JEvjfmFhTBx4Pefk6dOn0SATw8NE3trKyunSUTUVjz','{\"locale\":\"en\"}','2018-05-05 14:47:22','2018-05-05 14:47:22',NULL,NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
