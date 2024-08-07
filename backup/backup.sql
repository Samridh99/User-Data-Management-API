-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: user_management
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20240726212216','2024-08-07 07:53:47',108);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
INSERT INTO `messenger_messages` VALUES (1,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:22:\\\"jane.smith@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:26','2024-08-07 05:54:26',NULL),(2,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:21:\\\"michael.j@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:28','2024-08-07 05:54:28',NULL),(3,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:19:\\\"emily.d@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:30','2024-08-07 05:54:30',NULL),(4,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:19:\\\"hdkalra16@gmail.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:32','2024-08-07 05:54:32',NULL),(5,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:19:\\\"sarah.w@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:34','2024-08-07 05:54:34',NULL),(6,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:20:\\\"daniel.l@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:36','2024-08-07 05:54:36',NULL),(7,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:21:\\\"jessica.m@example.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:38','2024-08-07 05:54:38',NULL),(8,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:24:\\\"tushar10bhatia@gmail.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:40','2024-08-07 05:54:40',NULL),(9,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:22:\\\"geetakalra66@gmail.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:41','2024-08-07 05:54:41',NULL),(10,'O:36:\\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\\":2:{s:44:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\\";a:1:{s:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\";a:1:{i:0;O:46:\\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\\":1:{s:55:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\\";s:21:\\\"messenger.bus.default\\\";}}}s:45:\\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\\";O:29:\\\"App\\\\Message\\\\EmailNotification\\\":3:{s:36:\\\"\\0App\\\\Message\\\\EmailNotification\\0email\\\";s:23:\\\"codewithaisha@gmail.com\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0subject\\\";s:21:\\\"Welcome to the system\\\";s:38:\\\"\\0App\\\\Message\\\\EmailNotification\\0content\\\";s:34:\\\"You have been added to the system.\\\";}}','[]','email_notification','2024-08-07 05:54:43','2024-08-07 05:54:43',NULL);
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Jane Smith','jane.smith@example.com','janesmith','456 Elm St','USER'),(2,'Michael Johnson','michael.j@example.com','mjohnson','789 Pine St','USER'),(3,'Emily Davis','emily.d@example.com','emilydavis','101 Oak St','ADMIN'),(4,'holly drew','example@gmail.com','hdmange','26 H7','ADMIN'),(5,'Sarah Wilson','sarah.w@example.com','sarahwilson','303 Birch St','USER'),(6,'Daniel Lee','daniel.l@example.com','daniellee','404 Cedar St','ADMIN'),(7,'Jessica Martinez','jessica.m@example.com','jessicam','505 Walnut St','USER'),(8,'Neo Nikel','example@gmail.com','neonike','1849 St 19','ADMIN'),(9,'Paul Garcia','example@gmail.com','paulgarcia','606 Ash St','USER'),(10,'Laura Clark','example@gmail.com','lauraclark','707 Cherry St','ADMIN');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 11:25:01
