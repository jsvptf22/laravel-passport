-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: passport_moduler
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `enviroment`
--

DROP TABLE IF EXISTS `enviroment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `enviroment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_user` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enviroment`
--

LOCK TABLES `enviroment` WRITE;
/*!40000 ALTER TABLE `enviroment` DISABLE KEYS */;
INSERT INTO `enviroment` VALUES (1,'2019-07-08 05:00:00',NULL,'front_actas',1,1);
/*!40000 ALTER TABLE `enviroment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(14,'2016_06_01_000005_create_oauth_personal_access_clients_table',2),(15,'2019_07_09_013432_create_modules_table',2),(16,'2019_07_09_015722_create_user_module_table',2),(17,'2019_07_09_021457_create_enviroment_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `module` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'2019-07-08 05:00:00',NULL,'ACTAS','1',1);
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `oauth_access_tokens` VALUES ('00083259121defe84c045d8f0311c07d63746bdd414dc5233d44d8aee60945a98a4a0be164c02baa',NULL,4,NULL,'[]',0,'2019-07-09 06:30:56','2019-07-09 06:30:56','2020-07-09 01:30:56'),('01d2be563ec49c91deb63577aced1a21e8cd3a4ae8893c70eb30bb8d85a1521e4f79509468709aaf',NULL,4,NULL,'[]',0,'2019-07-09 08:29:55','2019-07-09 08:29:55','2020-07-09 03:29:55'),('02f1aaec3b2828bc564dd47b6160a30bbb8cd869ea2072f7801ae1c96d5793cccbd34b9ef6607151',NULL,4,NULL,'[]',0,'2019-07-09 06:22:11','2019-07-09 06:22:11','2020-07-09 01:22:11'),('036c3528c6448b803ee12b483cfece0fb6cb26ba1576a84a1969fc0f908224dd457d1ff6e646f54c',NULL,4,NULL,'[]',0,'2019-07-08 23:34:45','2019-07-08 23:34:45','2020-07-08 18:34:45'),('04b06de0bb9bbf2a96974db540cbe3dd9d6d97bac1c0aa659080e110db728f392f73c0bccb0f5c22',NULL,4,NULL,'[]',0,'2019-07-09 06:50:20','2019-07-09 06:50:20','2020-07-09 01:50:20'),('0577b4518ec1c931d0af43ee55c3f89e008a053ac8661a22a381f9ab8be61081c87c71b51341ee47',NULL,4,NULL,'[]',0,'2019-07-09 08:36:50','2019-07-09 08:36:50','2020-07-09 03:36:50'),('0afd5ed8ebaef54685dbce4ee279959487ddf8d683083930de36311d358fe13ee119929730b5cfe9',NULL,4,NULL,'[]',0,'2019-07-09 08:29:47','2019-07-09 08:29:47','2020-07-09 03:29:47'),('0fcd828d3666ac8f8c2b4b0dfd61f9572033766833f9cd475b008e39427f77cd5ca1aa74606ce3fd',NULL,4,NULL,'[]',0,'2019-07-09 07:27:04','2019-07-09 07:27:04','2020-07-09 02:27:04'),('0ff944c8cda979568fdb909200ce1f1d3a94843e5bd7ec0e362c6353a50215679d4bbf027de8b732',NULL,4,NULL,'[]',0,'2019-07-09 06:42:41','2019-07-09 06:42:41','2020-07-09 01:42:41'),('1121c20d4b084d45156a4a1704b89e1feefd6f4ef32ba8dd76ab8933bbbe9146d0c8951ef6d6ee39',NULL,4,NULL,'[]',0,'2019-07-09 08:37:08','2019-07-09 08:37:08','2020-07-09 03:37:08'),('115d7c10e89f872b128a8e1151efa38b5d801f0175f207bc8f6416415bcccf4c337cb7e977464a5d',NULL,4,NULL,'[]',0,'2019-07-09 08:01:46','2019-07-09 08:01:46','2020-07-09 03:01:46'),('13448acab6e926330d37e82155469bf6ca921a589492125986a91579ba53ad5bc9a0289d36aff7e3',NULL,4,NULL,'[]',0,'2019-07-09 06:22:49','2019-07-09 06:22:49','2020-07-09 01:22:49'),('1c96113f18e25d68b5a205282e034407349655c057b7f052c3c2468cd1fffe5df7d33144b6142b95',NULL,4,NULL,'[]',0,'2019-07-09 06:54:00','2019-07-09 06:54:00','2020-07-09 01:54:00'),('262f033d317307e9e5cac4cc91009cfb94a4116489f39d455e3e2942fbc81d1c6e2f38ddfcaf3c6f',NULL,4,NULL,'[]',0,'2019-07-10 05:43:43','2019-07-10 05:43:43','2020-07-10 00:43:43'),('28875b9b159d463bcbf05fcfde5e9aa247794b59ad48062701c24937bd5b0573410343d8a5faf719',NULL,4,NULL,'[]',0,'2019-07-10 05:48:11','2019-07-10 05:48:11','2020-07-10 00:48:11'),('2d2d4676372a644d114d4c0e94d9e50579c97fee05deb50a22c22994314c5351986a7fadfc566323',NULL,4,NULL,'[]',0,'2019-07-10 05:43:51','2019-07-10 05:43:51','2020-07-10 00:43:51'),('2e654e1f249cd579680b192be3d7ff40ec0641c21765f71e85f157b6f63389b01570cdc42fdc7c86',NULL,4,NULL,'[]',0,'2019-07-08 23:34:30','2019-07-08 23:34:30','2020-07-08 18:34:30'),('3202cf04cca374c821ddcaaa6f13dde86af0c1af223d4f2dbd696020e4162bae0a95445909110ca3',NULL,4,NULL,'[]',0,'2019-07-09 06:21:20','2019-07-09 06:21:20','2020-07-09 01:21:20'),('348653633424883e6f3943782f1f1acfd0ff063a17da3a7544ef95ecc27981513db56dc23931a626',NULL,4,NULL,'[]',0,'2019-07-09 08:02:54','2019-07-09 08:02:54','2020-07-09 03:02:54'),('38fd98dd1a24cbe62d2d12f38b17812c973e4854f9bcf2d28520cc2087a7cb46c2b6e4c482bd6257',NULL,4,NULL,'[]',0,'2019-07-08 23:35:21','2019-07-08 23:35:21','2020-07-08 18:35:21'),('45852de4d12d31e1e51058d17b6adb7e5d5e779331e1908e2ea5720002028ca79a681c9d3d04578d',NULL,4,NULL,'[]',0,'2019-07-09 06:22:50','2019-07-09 06:22:50','2020-07-09 01:22:50'),('4d33354bd345f14bf0a7267977cc0f00bbcb8e36a18cbfc0edeff6732645c2bd4991eb72f3d2d857',NULL,4,NULL,'[]',0,'2019-07-08 23:23:50','2019-07-08 23:23:50','2020-07-08 18:23:50'),('51376e1a822a723a1399220049a84ea59b0cfa36c83d09261b241f32bd1bd53ed3bd267ab186516c',NULL,4,NULL,'[]',0,'2019-07-09 07:20:01','2019-07-09 07:20:01','2020-07-09 02:20:01'),('583c269ca6204a467733ce0d9168e3046e722a8a16cbc005e6b9eb593f61b590802a5df06af10e18',NULL,4,NULL,'[]',0,'2019-07-08 23:36:14','2019-07-08 23:36:14','2020-07-08 18:36:14'),('5a7daf09d69fcf4c739b067c67095f03e7c8527c189f6e36283c3c029f59ba4e3c752f8aa9983a38',NULL,4,NULL,'[]',0,'2019-07-08 23:29:57','2019-07-08 23:29:57','2020-07-08 18:29:57'),('5fcb4ee8e9ec833dea9eb1bb980fe5dbf2cb10af16196546a0c633216d82d72e67094109d3f4d318',NULL,4,NULL,'[]',0,'2019-07-09 06:43:37','2019-07-09 06:43:37','2020-07-09 01:43:37'),('62f972df08120f4711854a99b17521d8a0f27ad8edd267fbf3262c03158603bdeef6315bc33650e8',NULL,4,NULL,'[]',0,'2019-07-09 08:12:02','2019-07-09 08:12:02','2020-07-09 03:12:02'),('650df3b2024886cd892903d9e50351af0e3bffddc6be8d478cf96b94cdc8c04fec4a98a1612fd993',NULL,4,NULL,'[]',0,'2019-07-09 08:06:33','2019-07-09 08:06:33','2020-07-09 03:06:33'),('677d0fc505684f5f712f396b439c9da97e582be74d95a5ba97506a45f7f35f38029b87f874683a88',NULL,4,NULL,'[]',0,'2019-07-09 07:19:45','2019-07-09 07:19:45','2020-07-09 02:19:45'),('724c1aad9873d1d84b0d036f1b39dbd401d0b2829c245319ec32efe534bda32030dd0a308e06bcb7',NULL,4,NULL,'[]',0,'2019-07-10 05:59:00','2019-07-10 05:59:00','2020-07-10 00:59:00'),('72da4abf528a3a57e52dcc3fbd80d7dbd3a84a9358df8c545d325351047f546a46fee36da7e64ba9',NULL,4,NULL,'[]',0,'2019-07-09 08:05:31','2019-07-09 08:05:31','2020-07-09 03:05:31'),('777d76fabcc6ddf01694e21f9be149e5213a1871133cb640dba0fe9b3f0d4e64796ab231f0c41464',NULL,4,NULL,'[]',0,'2019-07-09 08:32:25','2019-07-09 08:32:25','2020-07-09 03:32:25'),('785600ca8098d1f894ed4a8228946c0b2aafe4bb3404d6dfd801d83797b403562129a43310afd19f',NULL,4,NULL,'[]',0,'2019-07-09 08:11:37','2019-07-09 08:11:37','2020-07-09 03:11:37'),('7b5f52a33e417bca3ff58284027cebd46ee76f7629902b1b1f35225f62aa00942085a468202a5acc',NULL,4,NULL,'[]',0,'2019-07-09 06:54:00','2019-07-09 06:54:00','2020-07-09 01:54:00'),('7bf29747de46cf047e728d5882c33e6cc9918833d17524a63cb4b7c9ef394090bb74bba774d32981',NULL,4,NULL,'[]',0,'2019-07-09 08:22:00','2019-07-09 08:22:00','2020-07-09 03:22:00'),('803ba6100dc33a9f128580e010190cff84bd4c57f697708481adf716ab78f5c3d2f3cf1ade74ff1e',NULL,4,NULL,'[]',0,'2019-07-09 06:21:16','2019-07-09 06:21:16','2020-07-09 01:21:16'),('842692ee1f7f6827a063198e0f1ef1120a107d78b33680fb68cd58cd5be81f24777144f2fe51fa57',NULL,4,NULL,'[]',0,'2019-07-09 06:20:59','2019-07-09 06:20:59','2020-07-09 01:20:59'),('867af06aea56c31070f662000b9a5bf03db255f70a62651ee23807cbd7b84eb818fd8ffd49686604',NULL,4,NULL,'[]',0,'2019-07-09 08:36:16','2019-07-09 08:36:16','2020-07-09 03:36:16'),('8c4d4dcf27bdbd1e2a8208079557d537a4a6a5b23470e3bc7c7d8334096a88973b63c5d65e8ce3f8',NULL,4,NULL,'[]',0,'2019-07-09 06:22:51','2019-07-09 06:22:51','2020-07-09 01:22:51'),('8f88388805cb85a03c602ed6a5dd1feeca4ba9da6ec29169b181bc24f3a626b5339778ff82eb7b0c',NULL,4,NULL,'[]',0,'2019-07-09 08:30:57','2019-07-09 08:30:57','2020-07-09 03:30:57'),('9131eae990e72423fef50c9c5ed0733a620331b2ac24a65264400e772d14d5421ace13f036644d46',NULL,4,NULL,'[]',0,'2019-07-09 06:21:29','2019-07-09 06:21:29','2020-07-09 01:21:29'),('914f0a5c73e401c6492e98e287472c72c0f2e394b65a4ee4f908fe180d191d092766c99f9cc656cd',NULL,4,NULL,'[]',0,'2019-07-08 23:24:24','2019-07-08 23:24:24','2020-07-08 18:24:24'),('92aa2fdf8862d163af8965b3babfcb5f9ec1b22286941d5a6ed96a47492b947a86bf661c89f3138e',NULL,4,NULL,'[]',0,'2019-07-09 08:29:34','2019-07-09 08:29:34','2020-07-09 03:29:34'),('99d17a30f9a556aa2edfc480b2efeb3c87076e930a448eeb43cb62005442e9066720c2f4e750539c',NULL,4,NULL,'[]',0,'2019-07-09 08:05:22','2019-07-09 08:05:22','2020-07-09 03:05:22'),('9eba15a8933f62e7d3b949f4152ae0d6e92d7773dfdb88ec40a482c1f6ab090e0390782960e3a804',NULL,4,NULL,'[]',0,'2019-07-10 05:20:22','2019-07-10 05:20:22','2020-07-10 00:20:22'),('9ef03bea9854190bfe739712932d60d3b39eb9b31dc6fe601db0e099e7fdb36e34646aac2fa2ace5',NULL,4,NULL,'[]',0,'2019-07-09 06:44:39','2019-07-09 06:44:39','2020-07-09 01:44:39'),('a14fe99a5237b926808ac1742c7add5833bde4428ae5daca28b8fc03b39359f90c6d87711e082340',NULL,4,NULL,'[]',0,'2019-07-10 05:47:57','2019-07-10 05:47:57','2020-07-10 00:47:57'),('a15f22e043e16ca1536783bfe5a139257ec84a5e56ef7e76c475d091fe465fad07e74115d73c216c',NULL,4,NULL,'[]',0,'2019-07-09 08:37:29','2019-07-09 08:37:29','2020-07-09 03:37:29'),('a1dea5b8e3eb6118aab27b0f678bb40e3b332dfff23717a736cb76f8af7792e101ff35aab2b89615',NULL,4,NULL,'[]',0,'2019-07-09 08:03:42','2019-07-09 08:03:42','2020-07-09 03:03:42'),('a281e011bba4e52aa7804378ebc39b5277c5316f0d5c1fc860915c5d8c430a2555c03332ce0950f2',NULL,4,NULL,'[]',0,'2019-07-09 06:52:37','2019-07-09 06:52:37','2020-07-09 01:52:37'),('a3c137db43b5b2907a7113de3ddc82dcb00806c6e1c4bd6e22a98cde54ceaaf85c9882c919490d03',NULL,4,NULL,'[]',0,'2019-07-10 05:47:40','2019-07-10 05:47:40','2020-07-10 00:47:40'),('a48ad5fbd7cce70b11731c0f3c493dac474b0deb00b78fdef1947fc8c2beedfb178f33a483e437f2',NULL,4,NULL,'[]',0,'2019-07-10 05:20:34','2019-07-10 05:20:34','2020-07-10 00:20:34'),('b11359e9202d9855e9b2b782687c1d84a9a254687d2d74073aec14a3da8b7e3d8727b203f00c8e34',NULL,4,NULL,'[]',0,'2019-07-09 08:21:23','2019-07-09 08:21:23','2020-07-09 03:21:23'),('b5610d574fc27f9b44d52dd52cc2f434648a88565c36d8fde5629d689771afc2abfe9c703dcd8e94',NULL,4,NULL,'[]',0,'2019-07-09 06:51:46','2019-07-09 06:51:46','2020-07-09 01:51:46'),('b86965be7f22353be335474b35b025fc24a94e5dc1edeac1e1e087d664de9dc677f3f67ff3e953a0',NULL,4,NULL,'[]',0,'2019-07-09 06:21:37','2019-07-09 06:21:37','2020-07-09 01:21:37'),('bf3a8d7215e5621fbc10be4b343f69f4543c277d2367ecd7f390a11e7d3c635ac530049577ae2fad',NULL,4,NULL,'[]',0,'2019-07-09 06:30:57','2019-07-09 06:30:57','2020-07-09 01:30:57'),('c79c563d3f40153e574e0fa2a50bc016f94363b4bb182264de5b62a3a7792e7ed91634599a7e738c',NULL,4,NULL,'[]',0,'2019-07-09 07:20:24','2019-07-09 07:20:24','2020-07-09 02:20:24'),('c841694de49df04806bfb0dc5e713899a60002e768c4d288d0997bb1aafc5657b03d1f3febeb70c5',NULL,4,NULL,'[]',0,'2019-07-09 06:44:52','2019-07-09 06:44:52','2020-07-09 01:44:52'),('c9110cbc0d459fa66a11c80ed12b3a400c873ea7d195aa42ce8a6672917c76b692ed2cad45e04603',NULL,4,NULL,'[]',0,'2019-07-10 05:47:33','2019-07-10 05:47:33','2020-07-10 00:47:33'),('ca5ee24b9d9d240cb46c4dc280c1115fca5d43bb675cebfa4c0867feb7585b181e704f5dc1afa74f',NULL,4,NULL,'[]',0,'2019-07-09 06:54:27','2019-07-09 06:54:27','2020-07-09 01:54:27'),('d0b551f1c380d7ef82873658e85200c0f9b40f17cddce49e93c6bac55df0f9f9f69cafe69e012ada',NULL,4,NULL,'[]',0,'2019-07-09 08:12:42','2019-07-09 08:12:42','2020-07-09 03:12:42'),('d2e9d7f6e10a68116d48e29a99bc162ca311f95bfadae51494d122ed38abe832614cf66303a76f99',NULL,4,NULL,'[]',0,'2019-07-09 06:20:36','2019-07-09 06:20:36','2020-07-09 01:20:36'),('d522f0d14c42ba588ed9c6c221f7cd024ab797453e26230d49d3536757f70d3fbc44abdb1b9e27bb',NULL,4,NULL,'[]',0,'2019-07-09 06:25:53','2019-07-09 06:25:53','2020-07-09 01:25:53'),('d606031aaa71cfe0966ea1192e0a285385163e4270481055169be50e25900ed3512d469b9e425bbf',NULL,4,NULL,'[]',0,'2019-07-09 08:06:06','2019-07-09 08:06:06','2020-07-09 03:06:06'),('d847322e2a485b07024fa6b839b8e1f5d48704fa1ce6de7bf9064808ea8706544d8898adc5e98590',NULL,4,NULL,'[]',0,'2019-07-09 08:21:11','2019-07-09 08:21:11','2020-07-09 03:21:11'),('d9e23ead063b0de3020048ce38828148a58e485efd55541bf0c69e514befb8d563cd191fb1214ebe',NULL,4,NULL,'[]',0,'2019-07-09 06:24:33','2019-07-09 06:24:33','2020-07-09 01:24:33'),('e3d1767e435cec7ca2d63a996ad110dff2a89178083dd478afe3734683a1afa0423b799c87f8fcbe',NULL,4,NULL,'[]',0,'2019-07-09 08:37:59','2019-07-09 08:37:59','2020-07-09 03:37:59'),('e73ed2222933d0efa18ae645dc15734e86149bc81f0c04b505c00c931423dba538bc95a89b037d6f',NULL,4,NULL,'[]',0,'2019-07-09 06:48:39','2019-07-09 06:48:39','2020-07-09 01:48:39'),('eb89977961d18223d30691d406ee1a2d9a7ae105953771cf009348d7aaf21a61213cb1e8083f9fef',NULL,4,NULL,'[]',0,'2019-07-10 05:59:22','2019-07-10 05:59:22','2020-07-10 00:59:22'),('ec606d1c6aac2a3df04f4332e209c2a2ec7dbf47028e69c3f3a51401957c313e6ca815898d734db6',NULL,4,NULL,'[]',0,'2019-07-09 06:54:09','2019-07-09 06:54:09','2020-07-09 01:54:09'),('ed34a8639dbab9e7d2915b1c350ff746437db782f4d3ef17e17e9956f7753366aba1bc3947893646',NULL,4,NULL,'[]',0,'2019-07-09 06:21:23','2019-07-09 06:21:23','2020-07-09 01:21:23'),('ed6631e7b6ac88ff9e99bf10311c68cbd48aceea66087e624db3316f76dae90855c681a79dc9b88e',NULL,4,NULL,'[]',0,'2019-07-09 08:37:01','2019-07-09 08:37:01','2020-07-09 03:37:01'),('edc6c4325408d36108e9db3fc163e558058052d0adbb7ea446651c99eca536de3a33cebbe0d87c06',NULL,4,NULL,'[]',0,'2019-07-09 06:54:00','2019-07-09 06:54:00','2020-07-09 01:54:00'),('efa757b3206c4ebe203485e0db60bb3594de2ec08e60ac4f2c39168081ea368ccb5e753c49a6d57d',NULL,4,NULL,'[]',0,'2019-07-09 08:06:47','2019-07-09 08:06:47','2020-07-09 03:06:47'),('f13a059a7ac560402ecd04dad614712cfaa3eba52323fdd863c5dd6ae46a9a56ce5a1b8999004d4e',NULL,4,NULL,'[]',0,'2019-07-09 06:51:57','2019-07-09 06:51:57','2020-07-09 01:51:57'),('f29b9a0c4b11e6111caaab264d2e8ae65319c4dc92f07e58a9948d90c0f6ae9245da939fd2127472',NULL,4,NULL,'[]',0,'2019-07-08 23:35:31','2019-07-08 23:35:31','2020-07-08 18:35:31'),('f34db9cbb546eed83cfd2f06c801c90971984fd300668cd185a8139a0981ffe892a38d025c6e8be0',NULL,4,NULL,'[]',0,'2019-07-09 07:19:39','2019-07-09 07:19:39','2020-07-09 02:19:39'),('f3fcc6d1f5aed6c436144e860c39a068667c9fa0214ebc1fbf0739addb2bd18fa1178d8b5aa486e5',NULL,4,NULL,'[]',0,'2019-07-10 05:48:02','2019-07-10 05:48:02','2020-07-10 00:48:02'),('f8c528e9828aadee3fa2344d79cede1310b4807d40c920f1abfcf4593dbd291890a8786879e5df7d',NULL,4,NULL,'[]',0,'2019-07-09 08:02:19','2019-07-09 08:02:19','2020-07-09 03:02:19'),('f9c62037ddc88e5becd0e2fe6619ad7c4b449d25933618f843f00a5ec91edb8df5b633c4922b4c42',NULL,4,NULL,'[]',0,'2019-07-09 08:36:55','2019-07-09 08:36:55','2020-07-09 03:36:55'),('fbce97ff4f00bc693a31d7349e11de671fc32b9359e801cf263c28ac9fd5f72aa8db667e8254db74',NULL,4,NULL,'[]',0,'2019-07-09 06:24:53','2019-07-09 06:24:53','2020-07-09 01:24:53'),('fd657aa54d7654ba23aea5a7678f4b3eadc7e6a7688201f1e7b5b65972b3687d23b2769ec1d1797c',NULL,4,NULL,'[]',0,'2019-07-09 06:42:32','2019-07-09 06:42:32','2020-07-09 01:42:32');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','oRpgJywyLuqNK16azfBF4lK3AKAPtoDthkzi2bCf','http://localhost',1,0,0,'2019-07-08 00:33:36','2019-07-08 00:33:36'),(2,NULL,'Laravel Password Grant Client','1GDolYD5LzX0IW790oGZynrNioem0qCdKSTklJIf','http://localhost',0,1,0,'2019-07-08 00:33:36','2019-07-08 00:33:36'),(4,NULL,'ACTAS','Tn1UQTgaKhB6psgvTO8Fg18oDnXmuJMLFmsYZRhl','',0,0,0,'2019-07-08 02:25:09','2019-07-08 02:25:09');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_module`
--

DROP TABLE IF EXISTS `user_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_module` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fk_module` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `access_type` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `fk_client` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_module`
--

LOCK TABLES `user_module` WRITE;
/*!40000 ALTER TABLE `user_module` DISABLE KEYS */;
INSERT INTO `user_module` VALUES (1,'2019-07-08 05:00:00',NULL,1,1,1,1,4);
/*!40000 ALTER TABLE `user_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'empresa corriente','gerencia@empresa.com',NULL,'$2y$10$4f5nUvxJlTItfWxCu0US.eyH3TKgBvjPq5dzYDbkfwc.aSEkLCfCm',NULL,'2019-07-08 00:49:22','2019-07-08 00:49:22');
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

-- Dump completed on 2019-07-20 12:01:26
