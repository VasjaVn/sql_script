-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: redmine_1_0
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(30) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` bigint(20) NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(40) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `disk_directory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,2,'Project','Analiza sklep Winkhaus 27 czerwca 2017 - 1.xlsx','171011032143_76ff35f2caaf23aeb4e23f9f91015c81.xlsx',143528,'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet','f65eff4f7c42e90d3cbf2ece0194da92',2,5,'2017-10-11 03:21:43','','2017/10'),(2,31,'Issue','Screen Shot 2017-10-11 at 1.18.41 PM.png','171011061926_3716478ef85b37d6b93444dd7139f11d.png',36113,'image/png','16cd3abaf1a859ba5b44f036289bd876',0,7,'2017-10-11 06:19:26','','2017/10'),(4,102,'Issue','pasek nad sliderem.jpg','171012095331_cd093691de87c76121f0bf08eda54566.jpg',1702563,'image/jpeg','6b696e206bf4aef6a7853dba1a20eb55',0,9,'2017-10-12 09:53:31','','2017/10'),(5,102,'Issue','pasek nad sliderem 2.jpg','171012101057_f59352e4c7d54ce9b20a2fa6187209c1.jpg',1361697,'image/jpeg','db58bbdefcc223fc4fbbc8d7932ff7f2',0,9,'2017-10-12 10:10:57','','2017/10'),(6,53,'Issue','podglad-koszyka.jpg','171016041419_podglad-koszyka.jpg',180326,'image/jpeg','6a14c283384e11d749b0a9b26435ee67',0,9,'2017-10-16 04:14:19','','2017/10'),(7,53,'Issue','podglad-koszyka.jpg','171016053016_podglad-koszyka.jpg',180326,'image/jpeg','6a14c283384e11d749b0a9b26435ee67',0,9,'2017-10-16 05:30:16','','2017/10'),(8,23,'Issue','podglad-koszyka-listing.jpg','171016132744_podglad-koszyka-listing.jpg',81889,'image/jpeg','235dbc2139ace9a9759e644f2e429e3b',0,9,'2017-10-16 13:27:44','','2017/10'),(9,104,'Issue','koszyk-podsumowanie.jpg','171016133543_koszyk-podsumowanie.jpg',140020,'image/jpeg','69f039c05216aa68b9fa75b95ee8e444',0,9,'2017-10-16 13:35:43','','2017/10'),(10,103,'Issue','produkty-w-sklepie.jpg','171030081231_produkty-w-sklepie.jpg',299864,'image/jpeg','168f2664b31576fb1f92438492b4ff35',0,9,'2017-10-30 08:12:31','','2017/10'),(11,73,'Issue','Instalacja Magento przewodnik _ Trusted Shops.pdf','171030100709_c7c9a9d10ae99045f7e19808fd359e83.pdf',226864,'application/pdf','77e495f93000a8ad7b81b4c93cea9f50',0,9,'2017-10-30 10:07:09','','2017/10'),(12,73,'Issue','Integracja Trustbadge® _ Trusted Shops.pdf','171030100715_b82ea723ba0a3dd66fec6b6abd42e30e.pdf',239729,'application/pdf','1b4eb2883a293363f37053acfa7a83f1',0,9,'2017-10-30 10:07:15','','2017/10'),(13,73,'Issue','Trusted Shops Pakiet Traffic.pdf','171030100718_1c2d489ddab46ecb30c86e3677d9eb2b.pdf',300691,'application/pdf','cfa39cab6f65b39f39d7347c38f1e294',0,9,'2017-10-30 10:07:18','','2017/10'),(14,50,'Issue','newsletter-dziekujemy.jpg','171030114819_newsletter-dziekujemy.jpg',233508,'image/jpeg','2d2cfd15866d4df46986239421cc5fdd',0,9,'2017-10-30 11:48:19','','2017/10'),(15,47,'Issue','grupa-klienta.jpg','171031041840_grupa-klienta.jpg',363718,'image/jpeg','096f672862b111e4f5214204d5322b7c',0,9,'2017-10-31 04:18:40','','2017/10'),(16,NULL,NULL,'BalanceAdjustment.erf','171117032608_BalanceAdjustment.erf',51941,'image/ERF','a44bc2029bece87c69c51a8bd79a4e40',0,15,'2017-11-17 03:26:08',NULL,'2017/11'),(17,NULL,NULL,'BalanceAdjustment.erf','171117032936_BalanceAdjustment.erf',51941,'image/ERF','a44bc2029bece87c69c51a8bd79a4e40',0,15,'2017-11-17 03:29:36',NULL,'2017/11'),(18,39,'Issue','ksiazka-adresowa.jpg','171122064533_ksiazka-adresowa.jpg',157146,'image/jpeg','42305a156edb61d82c3fe2c8e09b9ecb',0,9,'2017-11-22 06:45:33','','2017/11'),(19,123,'Issue','proforma.pdf','171125140608_proforma.pdf',129710,'application/pdf','e0f27042d28fd63d1fd7ea3e88fc8388',0,9,'2017-11-25 14:06:08','','2017/11'),(20,73,'Issue','dodales-produkt.jpg','171130092650_dodales-produkt.jpg',282061,'image/jpeg','c770de1211332f1b36b41322f94f3256',0,9,'2017-11-30 09:26:50','','2017/11'),(21,73,'Issue','kanalRSS.jpg','171130092700_kanalRSS.jpg',717084,'image/jpeg','4a79bda0575a18451fde0f47d09447b3',0,9,'2017-11-30 09:27:00','','2017/11'),(22,72,'Issue','NIP.jpg','171130100827_NIP.jpg',205078,'image/jpeg','a3486125b7ebd51cb1d2103b679972bf',0,9,'2017-11-30 10:08:27','','2017/11'),(23,133,'Issue','zapytaj-o-produkt.jpg','171206114923_zapytaj-o-produkt.jpg',109107,'image/jpeg','484101c6a44f743cb7ef854c2dc0d858',0,9,'2017-12-06 11:49:23','','2017/12'),(24,137,'Issue','platnosci.jpg','171206143346_platnosci.jpg',41302,'image/jpeg','bd1f736887e985f64f3b4136aea30660',0,9,'2017-12-06 14:33:46','','2017/12'),(25,139,'Issue','promocje-katalogowe.jpg','171208033932_promocje-katalogowe.jpg',238026,'image/jpeg','20200515bd2845441a12fd867372e1eb',0,9,'2017-12-08 03:39:32','','2017/12'),(26,140,'Issue','[BR027]+Promocje+koszykowe.doc','171208034831_85ea8e9f0ede14d03c4339fc04a54622.doc',319967,'application/msword','56df52a11fc596d4c374b057636062ba',0,9,'2017-12-08 03:48:31','','2017/12'),(27,141,'Issue','[BR028]+Zgody+i+regulaminy.doc','171208042922_d1442ac8f51b51da0cf21d47ff327024.doc',213953,'application/msword','a04a7cfe04398d94a394d5fce4c8f821',0,9,'2017-12-08 04:29:22','','2017/12'),(28,147,'Issue','[BR050]+Faktura+pro+forma.doc','171208065932_04bae007718a00d6047abd0a9d775379.doc',273528,'application/msword','6a2198e2df4e7890cc84436bdc088391',0,9,'2017-12-08 06:59:32','','2017/12'),(29,147,'Issue','proforma sklep winkhaus.pdf','171208070619_4a32244ae62d4dd7da3a2e7d625a80fc.pdf',162168,'application/pdf','d68eab20c9ba36b2dc05875aa133c5d0',0,9,'2017-12-08 07:06:19','','2017/12'),(30,148,'Issue','[BR051]+Powiadomienia+mailowe.doc','171208071432_4437a027cc002664937feee7f87a07cb.doc',290568,'application/msword','bf1d09a0fec79bfc815b640bd72fb98b',0,9,'2017-12-08 07:14:32','','2017/12'),(31,57,'Issue','podsumowanie-mini-koszyka.jpg','171213061220_podsumowanie-mini-koszyka.jpg',258509,'image/jpeg','4156acf61db044e3cfa2f6bb024a399c',0,9,'2017-12-13 06:12:20','','2017/12'),(32,73,'Issue','dodaj_produkt_koszyk.jpg','171213072331_dodaj_produkt_koszyk.jpg',301819,'image/jpeg','dce022f2575db78c7337b87a83fba7bb',0,9,'2017-12-13 07:23:31','','2017/12'),(33,73,'Issue','RSS-kanal.jpg','171213072503_RSS-kanal.jpg',220054,'image/jpeg','364fed81e81a80a71b668fd2bbf19297',0,9,'2017-12-13 07:25:03','','2017/12'),(34,51,'Issue','Screen Shot 2017-12-19 at 8.27.17 PM.png','171219133045_ce6e886a3126b666116def32765b009a.png',464255,'image/png','993d3ae473fa67c749b79a4e9eb35dc3',0,7,'2017-12-19 13:30:45','','2017/12'),(35,4,'Issue','pasek-informacyjny.jpg','171220052933_pasek-informacyjny.jpg',38405,'image/jpeg','0f46a9de0503701f453f8e1cd644dfe1',0,9,'2017-12-20 05:29:33','','2017/12'),(36,149,'Issue','Screen Shot 2017-12-26 at 12.38.24 PM.png','171226053843_b3d987162d59adfd4ffc561b7311383a.png',155322,'image/png','9ca85bad0095f99ac7fa7e0c786ba541',0,7,'2017-12-26 05:38:43','','2017/12'),(38,6,'Issue','Screen Shot 2017-12-28 at 4.15.59 PM.png','171228091616_cd14086cdd58404e9733ce8ce6c17af5.png',15473,'image/png','3fadee6e7c9272a87963acac42402b0b',0,7,'2017-12-28 09:16:16','','2017/12'),(39,54,'Issue','Screen Shot 2017-12-28 at 4.17.55 PM.png','171228091822_c148d7b18bbbb38393ffe91e5bb2285b.png',15327,'image/png','3c213c9ad6381cba6e5ce9321241fa20',0,7,'2017-12-28 09:18:22','','2017/12'),(40,89,'Issue','test_lang_pack.csv','171229042613_test_lang_pack.csv',608748,'text/csv','891d3378096b765b6a3c9fe4b0c3efb7',0,7,'2017-12-29 04:26:13','','2017/12'),(41,37,'Issue','kod-pocztowy.jpg','180103063507_kod-pocztowy.jpg',88452,'image/jpeg','f6efab2923abde6567f0779a987a5abc',0,9,'2018-01-03 06:35:07','','2018/01'),(42,37,'Issue','Screen Shot 2018-01-09 at 5.06.39 PM.png','180109100705_42ef0dc5bf38d9896d5b749566407d27.png',14024,'image/png','125df391e9cd987fe4c1e175ae4191ef',0,7,'2018-01-09 10:07:05','','2018/01'),(43,5,'Issue','how-to-create-grouped-product-in-magento-2-choose-grouped-product.jpg','180110042349_how-to-create-grouped-product-in-magento-2-choose-grouped-product.jpg',132524,'image/jpeg','293c701cc22e1314240e9021149041f2',0,7,'2018-01-10 04:23:49','','2018/01'),(44,5,'Issue','how-to-create-grouped-product-in-magento-2-add-product-to-group.jpg','180110042423_how-to-create-grouped-product-in-magento-2-add-product-to-group.jpg',75893,'image/jpeg','f3024bc80d3c9a4f298d4ca39e6d3bbd',0,7,'2018-01-10 04:24:23','','2018/01'),(46,88,'Issue','produktydookien.jpg','180111085629_produktydookien.jpg',120244,'image/jpeg','a89fb81d11222b89cd447ffff3c8817d',0,9,'2018-01-11 08:56:29','','2018/01'),(47,88,'Issue','klamki099.jpg','180111085631_klamki099.jpg',118502,'image/jpeg','d0ee56f57b425756e88c37e53237b40e',0,9,'2018-01-11 08:56:31','','2018/01'),(48,159,'Issue','Screen Shot 2018-01-15 at 12.55.37 AM.png','180114175557_9fcdb0e6231d5d5bdf6e77d8eaffbcc2.png',29039,'image/png','5a6007a9188054390989a75ea85091f2',0,7,'2018-01-14 17:55:57','','2018/01'),(49,159,'Issue','Screen Shot 2018-01-15 at 12.58.04 AM.png','180114175835_44254a44ba818af08cd386961479db3c.png',29583,'image/png','47bf9f8bcb0cfb98adca5416211b5e8d',0,7,'2018-01-14 17:58:35','','2018/01'),(50,159,'Issue','Screen Shot 2018-01-15 at 12.59.41 AM.png','180114180006_22ff73aed967e840eb43eec74a93655a.png',65686,'image/png','62460337ea530ce836698639d2d45f36',0,7,'2018-01-14 18:00:06','','2018/01'),(51,159,'Issue','Screen Shot 2018-01-15 at 1.02.54 AM.png','180114180410_9bb5be3847d57e1f96bdd637eabab243.png',72447,'image/png','4057e7815c242b2c3636f975937da898',0,7,'2018-01-14 18:04:10','','2018/01'),(52,159,'Issue','Screen Shot 2018-01-15 at 1.03.16 AM.png','180114180410_fd6975fbe61c7356a85a9657ecf7587c.png',73471,'image/png','ec012f4a28cddfa0f24f30a8eb62ece8',0,7,'2018-01-14 18:04:10','','2018/01'),(53,159,'Issue','Screen Shot 2018-01-15 at 1.04.32 AM.png','180114180446_d187ed09aac3c69b94531d05db1d613c.png',51981,'image/png','95fc8fa7f8ab2f78858a22da756a2ccf',0,7,'2018-01-14 18:04:46','','2018/01'),(54,159,'Issue','NIP-marzena-Jakimowicz.jpg','180115043405_NIP-marzena-Jakimowicz.jpg',405485,'image/jpeg','ee5ab4f96733aed5aafd8eeef548d1ea',0,9,'2018-01-15 04:34:05','','2018/01'),(55,159,'Issue','NIP-Alex.jpg','180115043405_NIP-Alex.jpg',466578,'image/jpeg','7685f234b48df1bdcc8e9461a7aaa5a1',0,9,'2018-01-15 04:34:05','','2018/01'),(57,161,'Issue','zamowienie sklep Jacek2.xml','180117071157_8f234db0c52456082c140eb171228dbd.xml',1212,'text/xml','c55a45e616232593e258ac8db51ed16f',0,9,'2018-01-17 07:11:57','','2018/01'),(60,65,'Issue','projekt-wiadomosc-zamowienie.jpg','180125074255_projekt-wiadomosc-zamowienie.jpg',1016288,'image/jpeg','2d5c182dba50bdb729e2d7ce505b97b6',0,9,'2018-01-25 07:42:55','','2018/01'),(61,65,'Issue','projekt wiadomosc zamowienie.psd','180125074424_ce767ff7152ff8a23e981935bf589ace.psd',4734822,'image/vnd.adobe.photoshop','088696b1b6605ca152a9ff54c19c7b6c',0,9,'2018-01-25 07:44:24','','2018/01');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` text,
  `timeout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sources`
--

LOCK TABLES `auth_sources` WRITE;
/*!40000 ALTER TABLE `auth_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changes`
--

LOCK TABLES `changes` WRITE;
/*!40000 ALTER TABLE `changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changeset_parents`
--

DROP TABLE IF EXISTS `changeset_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  KEY `changeset_parents_changeset_ids` (`changeset_id`),
  KEY `changeset_parents_parent_ids` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changeset_parents`
--

LOCK TABLES `changeset_parents` WRITE;
/*!40000 ALTER TABLE `changeset_parents` DISABLE KEYS */;
/*!40000 ALTER TABLE `changeset_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets`
--

DROP TABLE IF EXISTS `changesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` longtext,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets`
--

LOCK TABLES `changesets` WRITE;
/*!40000 ALTER TABLE `changesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets_issues`
--

LOCK TABLES `changesets_issues` WRITE;
/*!40000 ALTER TABLE `changesets_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_enumerations`
--

DROP TABLE IF EXISTS `custom_field_enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_enumerations`
--

LOCK TABLES `custom_field_enumerations` WRITE;
/*!40000 ALTER TABLE `custom_field_enumerations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  `format_store` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (2,'IssueCustomField','Task code','string',NULL,'',1,10,0,0,1,1,1,'',1,1,0,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n',''),(3,'IssueCustomField','Project stage (Magento)','list','---\n- Etap 1\n- Etap 2\n- Etap 3\n- Etap 4\n- Etap 5\n- Etap 6\n- Etap 7\n','',NULL,NULL,1,0,1,2,1,'Etap 2',1,1,0,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nurl_pattern: \'\'\nedit_tag_style: \'\'\n','WH Magento project stages'),(4,'IssueCustomField','Functionality','string',NULL,'',1,100,0,0,1,3,1,'',1,1,0,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n',''),(5,'IssueCustomField','Priority','string',NULL,'',1,20,0,0,1,4,1,'',1,1,0,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n',''),(6,'IssueCustomField','View','string',NULL,'',1,10,0,0,1,5,1,'',1,1,0,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n',''),(7,'IssueCustomField','Rule','string',NULL,'',1,10,0,0,1,6,1,'',1,1,0,'--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: \'\'\nurl_pattern: \'\'\n','');
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_projects`
--

LOCK TABLES `custom_fields_projects` WRITE;
/*!40000 ALTER TABLE `custom_fields_projects` DISABLE KEYS */;
INSERT INTO `custom_fields_projects` VALUES (2,2),(3,2),(4,2),(5,2),(6,2),(7,2);
/*!40000 ALTER TABLE `custom_fields_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_roles`
--

DROP TABLE IF EXISTS `custom_fields_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_roles` (
  `custom_field_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  UNIQUE KEY `custom_fields_roles_ids` (`custom_field_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_roles`
--

LOCK TABLES `custom_fields_roles` WRITE;
/*!40000 ALTER TABLE `custom_fields_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_trackers`
--

LOCK TABLES `custom_fields_trackers` WRITE;
/*!40000 ALTER TABLE `custom_fields_trackers` DISABLE KEYS */;
INSERT INTO `custom_fields_trackers` VALUES (2,2),(2,3),(3,2),(3,3),(4,2),(4,3),(5,2),(5,3),(6,2),(6,3),(7,2),(7,3);
/*!40000 ALTER TABLE `custom_fields_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=717 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_values`
--

LOCK TABLES `custom_values` WRITE;
/*!40000 ALTER TABLE `custom_values` DISABLE KEYS */;
INSERT INTO `custom_values` VALUES (3,'Issue',2,2,'BR_0001'),(4,'Issue',2,3,'Etap 3'),(5,'Issue',2,4,'Rejestracja'),(6,'Issue',2,5,'MUST'),(7,'Issue',2,6,'V001'),(8,'Issue',2,7,'BR001'),(9,'Issue',3,2,' BR_0002'),(10,'Issue',3,3,'Etap 3'),(11,'Issue',3,4,' Rejestracja'),(12,'Issue',3,5,' MUST'),(13,'Issue',3,6,'V002'),(14,'Issue',3,7,' BR002'),(15,'Issue',4,2,'BR_0013'),(16,'Issue',4,3,'Etap 2'),(17,'Issue',4,4,'Content Management System'),(18,'Issue',4,5,'MUST'),(19,'Issue',4,6,'V005'),(20,'Issue',4,7,'BR061'),(21,'Issue',5,2,'BR_0014'),(22,'Issue',5,3,'Etap 3'),(23,'Issue',5,4,'Content Management System'),(24,'Issue',5,5,'MUST'),(25,'Issue',5,6,'V006'),(26,'Issue',5,7,'BR061'),(27,'Issue',6,2,'BR_0015'),(28,'Issue',6,3,'Etap 2'),(29,'Issue',6,4,'Content Management System'),(30,'Issue',6,5,'MUST'),(31,'Issue',6,6,'V005'),(32,'Issue',6,7,'BR008'),(33,'Issue',7,2,'BR_0016'),(34,'Issue',7,3,'Etap 2'),(35,'Issue',7,4,'Content Management System'),(36,'Issue',7,5,'MUST'),(37,'Issue',7,6,'V005'),(38,'Issue',7,7,'BR061'),(39,'Issue',8,2,'BR_0289'),(40,'Issue',8,3,'Etap 2'),(41,'Issue',8,4,'Zarzadzanie uzytkownikami administracyjnymi'),(42,'Issue',8,5,'MUST'),(43,'Issue',8,6,'BACKEND'),(44,'Issue',8,7,'BR057'),(45,'Issue',9,2,'BR_0295'),(46,'Issue',9,3,'Etap 2'),(47,'Issue',9,4,'Content Management System'),(48,'Issue',9,5,'MUST'),(49,'Issue',9,6,'BACKEND'),(50,'Issue',9,7,'BR059'),(51,'Issue',10,2,'BR_0296'),(52,'Issue',10,3,'Etap 2'),(53,'Issue',10,4,'Content Management System'),(54,'Issue',10,5,'MUST'),(55,'Issue',10,6,'BACKEND'),(56,'Issue',10,7,'BR059'),(57,'Issue',11,2,'BR_0297'),(58,'Issue',11,3,'Etap 2'),(59,'Issue',11,4,'Content Management System'),(60,'Issue',11,5,'MUST'),(61,'Issue',11,6,'BACKEND'),(62,'Issue',11,7,'BR059'),(69,'Issue',13,2,'BR_0299'),(70,'Issue',13,3,'Etap 2'),(71,'Issue',13,4,'Content Management System'),(72,'Issue',13,5,'MUST'),(73,'Issue',13,6,'BACKEND'),(74,'Issue',13,7,'BR059'),(75,'Issue',14,2,'BR_0004'),(76,'Issue',14,3,'Etap 3'),(77,'Issue',14,4,'Rejestracja'),(78,'Issue',14,5,'COULD'),(79,'Issue',14,6,'V002'),(80,'Issue',14,7,'BR002'),(81,'Issue',15,2,'BR_0005'),(82,'Issue',15,3,'Etap 3'),(83,'Issue',15,4,'Rejestracja'),(84,'Issue',15,5,'MUST'),(85,'Issue',15,6,''),(86,'Issue',15,7,''),(87,'Issue',16,2,'BR_0006'),(88,'Issue',16,3,'Etap 3'),(89,'Issue',16,4,'Logowanie'),(90,'Issue',16,5,'MUST'),(91,'Issue',16,6,'V003'),(92,'Issue',16,7,'BR003'),(99,'Issue',18,2,'BR_0007'),(100,'Issue',18,3,'Etap 3'),(101,'Issue',18,4,'Reset hasla'),(102,'Issue',18,5,'MUST'),(103,'Issue',18,6,'V004'),(104,'Issue',18,7,'BR004'),(105,'Issue',19,2,'BR_0011'),(106,'Issue',19,3,'Etap 3'),(107,'Issue',19,4,'Kategorie produktowe'),(108,'Issue',19,5,'MUST'),(109,'Issue',19,6,'V006'),(110,'Issue',19,7,'BR006'),(111,'Issue',20,2,'BR_0012'),(112,'Issue',20,3,'Etap 3'),(113,'Issue',20,4,'Kategorie produktowe'),(114,'Issue',20,5,'MUST'),(115,'Issue',20,6,'V006'),(116,'Issue',20,7,'BR006'),(117,'Issue',21,2,'BR_0017'),(118,'Issue',21,3,'Etap 3'),(119,'Issue',21,4,'Content Management System'),(120,'Issue',21,5,'MUST'),(121,'Issue',21,6,'V005 V007'),(122,'Issue',21,7,'BR062'),(123,'Issue',22,2,'BR_0018'),(124,'Issue',22,3,'Etap 3'),(125,'Issue',22,4,'Kategorie produktowe'),(126,'Issue',22,5,'MUST'),(127,'Issue',22,6,'V006'),(128,'Issue',22,7,'BR009'),(129,'Issue',23,2,'BR_0026'),(130,'Issue',23,3,'Etap 3'),(131,'Issue',23,4,'Koszyk'),(132,'Issue',23,5,'MUST'),(133,'Issue',23,6,'V006'),(134,'Issue',23,7,'BR006'),(135,'Issue',24,2,'BR_0036'),(136,'Issue',24,3,'Etap 3'),(137,'Issue',24,4,'Newsletter'),(138,'Issue',24,5,'MUST'),(139,'Issue',24,6,'V005'),(140,'Issue',24,7,'BR010'),(141,'Issue',25,2,'BR_0037'),(142,'Issue',25,3,'Etap 3'),(143,'Issue',25,4,'Newsletter'),(144,'Issue',25,5,'SHOULD'),(145,'Issue',25,6,'V009'),(146,'Issue',25,7,'BR010'),(147,'Issue',26,2,'BR_0072'),(148,'Issue',26,3,'Etap 3'),(149,'Issue',26,4,'Stany magazynowe'),(150,'Issue',26,5,'MUST'),(151,'Issue',26,6,'V007'),(152,'Issue',26,7,'BR013BR018'),(153,'Issue',27,2,'BR_0077'),(154,'Issue',27,3,'Etap 3'),(155,'Issue',27,4,'Komunikaty'),(156,'Issue',27,5,'MUST'),(157,'Issue',27,6,''),(158,'Issue',27,7,''),(159,'Issue',28,2,'BR_0078'),(160,'Issue',28,3,'Etap 3'),(161,'Issue',28,4,'Komunikaty'),(162,'Issue',28,5,'MUST'),(163,'Issue',28,6,''),(164,'Issue',28,7,''),(165,'Issue',29,2,'BR_0081'),(166,'Issue',29,3,'Etap 3'),(167,'Issue',29,4,'Formularz kontaktowy'),(168,'Issue',29,5,'MUST'),(169,'Issue',29,6,'V012'),(170,'Issue',29,7,'BR020'),(171,'Issue',30,2,'BR_0087'),(172,'Issue',30,3,'Etap 3'),(173,'Issue',30,4,''),(174,'Issue',30,5,'COULD'),(175,'Issue',30,6,'V008'),(176,'Issue',30,7,'BR023'),(177,'Issue',31,2,'BR_0088'),(178,'Issue',31,3,'Etap 4'),(179,'Issue',31,4,'Ksiazka adresowa'),(180,'Issue',31,5,'MUST'),(181,'Issue',31,6,'V008'),(182,'Issue',31,7,'BR023'),(183,'Issue',32,2,'BR_0103'),(184,'Issue',32,3,'Etap 3'),(185,'Issue',32,4,'Dane klienta'),(186,'Issue',32,5,'MUST'),(187,'Issue',32,6,'V018'),(188,'Issue',32,7,'BR023'),(189,'Issue',33,2,'BR_0104'),(190,'Issue',33,3,'Etap 3'),(191,'Issue',33,4,'Zmiana hasla'),(192,'Issue',33,5,'MUST'),(193,'Issue',33,6,'V018'),(194,'Issue',33,7,'BR029'),(195,'Issue',34,2,'BR_0106'),(196,'Issue',34,3,'Etap 3'),(197,'Issue',34,4,'Kokpit klienta'),(198,'Issue',34,5,'MUST'),(199,'Issue',34,6,'V020'),(200,'Issue',34,7,'BR031'),(201,'Issue',35,2,'BR_0107'),(202,'Issue',35,3,'Etap 3'),(203,'Issue',35,4,'Historia zamowien'),(204,'Issue',35,5,'MUST'),(205,'Issue',35,6,'V021 V022'),(206,'Issue',35,7,'BR032'),(207,'Issue',36,2,'BR_0108'),(208,'Issue',36,3,'Etap 3'),(209,'Issue',36,4,'Historia zamowien'),(210,'Issue',36,5,'MUST'),(211,'Issue',36,6,'V022'),(212,'Issue',36,7,'BR032'),(213,'Issue',37,2,'BR_0109'),(214,'Issue',37,3,'Etap 3'),(215,'Issue',37,4,'Ksiazka adresowa'),(216,'Issue',37,5,'MUST'),(217,'Issue',37,6,'V023 V024'),(218,'Issue',37,7,'BR023'),(225,'Issue',39,2,'BR_0111'),(226,'Issue',39,3,'Etap 3'),(227,'Issue',39,4,'Ksiazka adresowa'),(228,'Issue',39,5,'MUST'),(229,'Issue',39,6,'V023 V024'),(230,'Issue',39,7,'BR023'),(231,'Issue',40,2,'BR_0112'),(232,'Issue',40,3,'Etap 3'),(233,'Issue',40,4,'Alerty produktowe'),(234,'Issue',40,5,'SHOULD'),(235,'Issue',40,6,'V007 V032'),(236,'Issue',40,7,'BR033'),(237,'Issue',41,2,'BR_0113'),(238,'Issue',41,3,'Etap 3'),(239,'Issue',41,4,'Alerty produktowe'),(240,'Issue',41,5,'COULD'),(241,'Issue',41,6,'V007'),(242,'Issue',41,7,'BR033'),(243,'Issue',42,2,'BR_0203'),(244,'Issue',42,3,'Etap 3'),(245,'Issue',42,4,'Dane klienta'),(246,'Issue',42,5,'MUST'),(247,'Issue',42,6,'BACKEND'),(248,'Issue',42,7,'BR052'),(249,'Issue',43,2,'BR_0204'),(250,'Issue',43,3,'Etap 3'),(251,'Issue',43,4,'Dane klienta'),(252,'Issue',43,5,'MUST'),(253,'Issue',43,6,'BACKEND'),(254,'Issue',43,7,'BR052'),(255,'Issue',44,2,'BR_0206'),(256,'Issue',44,3,'Etap 3'),(257,'Issue',44,4,'Przypomnienie hasla'),(258,'Issue',44,5,'MUST'),(259,'Issue',44,6,'BACKEND'),(260,'Issue',44,7,'BR052'),(261,'Issue',45,2,'BR_0207'),(262,'Issue',45,3,'Etap 3'),(263,'Issue',45,4,'Logowanie'),(264,'Issue',45,5,'WON\'T'),(265,'Issue',45,6,'BACKEND'),(266,'Issue',45,7,'BR052'),(267,'Issue',46,2,'BR_0208'),(268,'Issue',46,3,'Etap 3'),(269,'Issue',46,4,'Dane klienta'),(270,'Issue',46,5,'MUST'),(271,'Issue',46,6,'BACKEND'),(272,'Issue',46,7,'BR052'),(273,'Issue',47,2,'BR_0209'),(274,'Issue',47,3,'Etap 3'),(275,'Issue',47,4,'Grupy klienta'),(276,'Issue',47,5,'MUST'),(277,'Issue',47,6,'BACKEND'),(278,'Issue',47,7,'BR052'),(279,'Issue',48,2,'BR_0210'),(280,'Issue',48,3,'Etap 3'),(281,'Issue',48,4,'Ksiazka adresowa'),(282,'Issue',48,5,'MUST'),(283,'Issue',48,6,'BACKEND'),(284,'Issue',48,7,'BR052'),(285,'Issue',49,2,'BR_0211'),(286,'Issue',49,3,'Etap 3'),(287,'Issue',49,4,'Zarzadzanie zamowieniami'),(288,'Issue',49,5,'MUST'),(289,'Issue',49,6,'BACKEND'),(290,'Issue',49,7,'BR049BR052'),(291,'Issue',50,2,'BR_0212'),(292,'Issue',50,3,'Etap 3'),(293,'Issue',50,4,'Newsletter'),(294,'Issue',50,5,'MUST'),(295,'Issue',50,6,'BACKEND'),(296,'Issue',50,7,'BR052'),(297,'Issue',51,2,'BR_0213'),(298,'Issue',51,3,'Etap 3'),(299,'Issue',51,4,'Newsletter'),(300,'Issue',51,5,'WON\'T'),(301,'Issue',51,6,'BACKEND'),(302,'Issue',51,7,''),(303,'Issue',52,2,'BR_0214'),(304,'Issue',52,3,'Etap 3'),(305,'Issue',52,4,'Opinie produktow'),(306,'Issue',52,5,'MUST'),(307,'Issue',52,6,'BACKEND'),(308,'Issue',52,7,'BR015'),(309,'Issue',53,2,'BR_0215'),(310,'Issue',53,3,'Etap 3'),(311,'Issue',53,4,'Zarzadzanie zamowieniami'),(312,'Issue',53,5,'MUST'),(313,'Issue',53,6,'BACKEND'),(314,'Issue',53,7,''),(315,'Issue',54,2,'BR_0216'),(316,'Issue',54,3,'Etap 3'),(317,'Issue',54,4,'Lista zyczen'),(318,'Issue',54,5,'WON\'T'),(319,'Issue',54,6,'BACKEND'),(320,'Issue',54,7,''),(321,'Issue',55,2,'BR_0217'),(322,'Issue',55,3,'Etap 3'),(323,'Issue',55,4,'Grupy klienta'),(324,'Issue',55,5,'MUST'),(325,'Issue',55,6,'BACKEND'),(326,'Issue',55,7,'BR052'),(327,'Issue',56,2,'BR_0218'),(328,'Issue',56,3,'Etap 3'),(329,'Issue',56,4,'Grupy klienta'),(330,'Issue',56,5,'MUST'),(331,'Issue',56,6,'BACKEND'),(332,'Issue',56,7,'BR052'),(333,'Issue',57,2,'BR_0219'),(334,'Issue',57,3,'Etap 3'),(335,'Issue',57,4,'Grupy klienta'),(336,'Issue',57,5,'MUST'),(337,'Issue',57,6,'BACKEND'),(338,'Issue',57,7,'BR052'),(339,'Issue',58,2,'BR_0220'),(340,'Issue',58,3,'Etap 3'),(341,'Issue',58,4,'Grupy klienta'),(342,'Issue',58,5,'WON\'T'),(343,'Issue',58,6,'BACKEND'),(344,'Issue',58,7,''),(345,'Issue',59,2,'BR_0226'),(346,'Issue',59,3,'Etap 3'),(347,'Issue',59,4,'Konfiguracja podatku VAT'),(348,'Issue',59,5,'WON\'T'),(349,'Issue',59,6,'BACKEND'),(350,'Issue',59,7,''),(351,'Issue',60,2,'BR_0227'),(352,'Issue',60,3,'Etap 3'),(353,'Issue',60,4,''),(354,'Issue',60,5,'SHOULD'),(355,'Issue',60,6,'BACKEND'),(356,'Issue',60,7,'BR052'),(357,'Issue',61,2,'BR_0283'),(358,'Issue',61,3,'Etap 3'),(359,'Issue',61,4,'Konfiguracja podatku VAT'),(360,'Issue',61,5,'MUST'),(361,'Issue',61,6,'BACKEND'),(362,'Issue',61,7,'BR038'),(363,'Issue',62,2,'BR_0292'),(364,'Issue',62,3,'Etap 3'),(365,'Issue',62,4,'Rejestracja'),(366,'Issue',62,5,'MUST'),(367,'Issue',62,6,'BACKEND'),(368,'Issue',62,7,'BR052'),(369,'Issue',63,2,'BR_0300'),(370,'Issue',63,3,'Etap 3'),(371,'Issue',63,4,'Content Management System'),(372,'Issue',63,5,'MUST'),(373,'Issue',63,6,'BACKEND'),(374,'Issue',63,7,'BR035'),(375,'Issue',64,2,'BR_0301'),(376,'Issue',64,3,'Etap 3'),(377,'Issue',64,4,'Content Management System'),(378,'Issue',64,5,'MUST'),(379,'Issue',64,6,'BACKEND'),(380,'Issue',64,7,'BR036'),(381,'Issue',65,2,'BR_0302'),(382,'Issue',65,3,'Etap 3'),(383,'Issue',65,4,''),(384,'Issue',65,5,'MUST'),(385,'Issue',65,6,'BACKEND'),(386,'Issue',65,7,'BR029-038'),(387,'Issue',66,2,'BR_0303'),(388,'Issue',66,3,'Etap 3'),(389,'Issue',66,4,'Rejestracja'),(390,'Issue',66,5,'MUST'),(391,'Issue',66,6,'BACKEND'),(392,'Issue',66,7,'BR052'),(393,'Issue',67,2,'BR_0304'),(394,'Issue',67,3,'Etap 3'),(395,'Issue',67,4,'CAPTCHA'),(396,'Issue',67,5,'MUST'),(397,'Issue',67,6,'BACKEND'),(398,'Issue',67,7,'BR060'),(399,'Issue',68,2,'BR_0305'),(400,'Issue',68,3,'Etap 3'),(401,'Issue',68,4,'Logowanie'),(402,'Issue',68,5,'MUST'),(403,'Issue',68,6,'BACKEND'),(404,'Issue',68,7,'BR060'),(405,'Issue',69,2,'BR_0306'),(406,'Issue',69,3,'Etap 3'),(407,'Issue',69,4,'Rejestracja'),(408,'Issue',69,5,''),(409,'Issue',69,6,'BACKEND'),(410,'Issue',69,7,'BR060'),(411,'Issue',70,2,'BR_0307'),(412,'Issue',70,3,'Etap 3'),(413,'Issue',70,4,'Rejestracja'),(414,'Issue',70,5,'MUST'),(415,'Issue',70,6,'BACKEND'),(416,'Issue',70,7,'BR060'),(417,'Issue',71,2,'BR_0312'),(418,'Issue',71,3,'Etap 3'),(419,'Issue',71,4,'Formularz kontaktowy'),(420,'Issue',71,5,'MUST'),(421,'Issue',71,6,'BACKEND'),(422,'Issue',71,7,'BR060'),(423,'Issue',72,2,'BR_0003'),(424,'Issue',72,3,'Etap 3'),(425,'Issue',72,4,''),(426,'Issue',72,5,'MUST'),(427,'Issue',72,6,'V002'),(428,'Issue',72,7,'BR002'),(429,'Issue',73,2,''),(430,'Issue',73,3,'Etap 2'),(431,'Issue',73,4,'Sciezka zakupowa'),(432,'Issue',73,5,'MUST'),(433,'Issue',73,6,''),(434,'Issue',73,7,'BR039'),(435,'Issue',74,2,'BR_0008'),(436,'Issue',74,3,'Etap 4'),(437,'Issue',74,4,'Rekomendacje produktowe'),(438,'Issue',74,5,'SHOULD'),(439,'Issue',74,6,'V005'),(440,'Issue',74,7,'BR005'),(483,'Issue',88,2,'BR_0298'),(484,'Issue',88,3,'Etap 2'),(485,'Issue',88,4,'Content Management System'),(486,'Issue',88,5,'MUST'),(487,'Issue',88,6,'BACKEND'),(488,'Issue',88,7,'BR059'),(489,'Issue',89,2,''),(490,'Issue',89,3,'Etap 2'),(491,'Issue',89,4,''),(492,'Issue',89,5,''),(493,'Issue',89,6,''),(494,'Issue',89,7,''),(495,'Issue',102,2,''),(496,'Issue',102,3,'Etap 2'),(497,'Issue',102,4,''),(498,'Issue',102,5,''),(499,'Issue',102,6,''),(500,'Issue',102,7,''),(501,'Issue',103,2,''),(502,'Issue',103,3,'Etap 2'),(503,'Issue',103,4,''),(504,'Issue',103,5,''),(505,'Issue',103,6,''),(506,'Issue',103,7,''),(507,'Issue',104,2,''),(508,'Issue',104,3,'Etap 2'),(509,'Issue',104,4,''),(510,'Issue',104,5,''),(511,'Issue',104,6,''),(512,'Issue',104,7,''),(513,'Issue',123,2,''),(514,'Issue',123,3,'Etap 2'),(515,'Issue',123,4,''),(516,'Issue',123,5,'MUST'),(517,'Issue',123,6,''),(518,'Issue',123,7,''),(519,'Issue',129,2,''),(520,'Issue',129,3,'Etap 4'),(521,'Issue',129,4,''),(522,'Issue',129,5,'MUST'),(523,'Issue',129,6,''),(524,'Issue',129,7,'BP005'),(525,'Issue',130,2,''),(526,'Issue',130,3,'Etap 4'),(527,'Issue',130,4,''),(528,'Issue',130,5,'MUST'),(529,'Issue',130,6,''),(530,'Issue',130,7,'BR012'),(531,'Issue',131,2,''),(532,'Issue',131,3,'Etap 4'),(533,'Issue',131,4,''),(534,'Issue',131,5,'MUST'),(535,'Issue',131,6,''),(536,'Issue',131,7,'BR013'),(537,'Issue',132,2,''),(538,'Issue',132,3,'Etap 4'),(539,'Issue',132,4,''),(540,'Issue',132,5,''),(541,'Issue',132,6,''),(542,'Issue',132,7,'BR016'),(543,'Issue',133,2,''),(544,'Issue',133,3,'Etap 4'),(545,'Issue',133,4,''),(546,'Issue',133,5,'MUST'),(547,'Issue',133,6,''),(548,'Issue',133,7,'BR017'),(549,'Issue',134,2,''),(550,'Issue',134,3,'Etap 4'),(551,'Issue',134,4,''),(552,'Issue',134,5,'MUST'),(553,'Issue',134,6,''),(554,'Issue',134,7,'BR018'),(555,'Issue',135,2,''),(556,'Issue',135,3,'Etap 4'),(557,'Issue',135,4,''),(558,'Issue',135,5,'MUST'),(559,'Issue',135,6,''),(560,'Issue',135,7,'BR019'),(561,'Issue',136,2,''),(562,'Issue',136,3,'Etap 5'),(563,'Issue',136,4,''),(564,'Issue',136,5,'MUST'),(565,'Issue',136,6,''),(566,'Issue',136,7,'BR021'),(567,'Issue',137,2,''),(568,'Issue',137,3,'Etap 4'),(569,'Issue',137,4,''),(570,'Issue',137,5,'MUST'),(571,'Issue',137,6,''),(572,'Issue',137,7,'BR022'),(573,'Issue',138,2,''),(574,'Issue',138,3,'Etap 4'),(575,'Issue',138,4,''),(576,'Issue',138,5,'MUST'),(577,'Issue',138,6,''),(578,'Issue',138,7,'BR025'),(579,'Issue',139,2,''),(580,'Issue',139,3,'Etap 4'),(581,'Issue',139,4,''),(582,'Issue',139,5,'MUST'),(583,'Issue',139,6,''),(584,'Issue',139,7,'BR026'),(585,'Issue',140,2,''),(586,'Issue',140,3,'Etap 4'),(587,'Issue',140,4,''),(588,'Issue',140,5,'MUST'),(589,'Issue',140,6,''),(590,'Issue',140,7,'BR027'),(591,'Issue',141,2,''),(592,'Issue',141,3,'Etap 4'),(593,'Issue',141,4,''),(594,'Issue',141,5,'MUST'),(595,'Issue',141,6,''),(596,'Issue',141,7,'BR028'),(597,'Issue',142,2,''),(598,'Issue',142,3,'Etap 4'),(599,'Issue',142,4,''),(600,'Issue',142,5,'MUST'),(601,'Issue',142,6,''),(602,'Issue',142,7,'BR037'),(603,'Issue',143,2,''),(604,'Issue',143,3,'Etap 4'),(605,'Issue',143,4,''),(606,'Issue',143,5,'MUST'),(607,'Issue',143,6,''),(608,'Issue',143,7,'BR046'),(609,'Issue',144,2,''),(610,'Issue',144,3,'Etap 4'),(611,'Issue',144,4,''),(612,'Issue',144,5,'MUST'),(613,'Issue',144,6,''),(614,'Issue',144,7,'BR047'),(615,'Issue',145,2,''),(616,'Issue',145,3,'Etap 5'),(617,'Issue',145,4,''),(618,'Issue',145,5,''),(619,'Issue',145,6,''),(620,'Issue',145,7,'BR048'),(621,'Issue',146,2,''),(622,'Issue',146,3,'Etap 5'),(623,'Issue',146,4,''),(624,'Issue',146,5,'MUST'),(625,'Issue',146,6,''),(626,'Issue',146,7,'BR049'),(627,'Issue',147,2,''),(628,'Issue',147,3,'Etap 5'),(629,'Issue',147,4,''),(630,'Issue',147,5,'MUST'),(631,'Issue',147,6,''),(632,'Issue',147,7,'BR050'),(633,'Issue',148,2,''),(634,'Issue',148,3,'Etap 5'),(635,'Issue',148,4,''),(636,'Issue',148,5,'MUST'),(637,'Issue',148,6,''),(638,'Issue',148,7,'BR051'),(639,'Issue',149,2,''),(640,'Issue',149,3,'Etap 5'),(641,'Issue',149,4,''),(642,'Issue',149,5,'MUST'),(643,'Issue',149,6,''),(644,'Issue',149,7,'BR053'),(645,'Issue',150,2,''),(646,'Issue',150,3,'Etap 5'),(647,'Issue',150,4,''),(648,'Issue',150,5,'MUST'),(649,'Issue',150,6,''),(650,'Issue',150,7,'BR054'),(651,'Issue',151,2,''),(652,'Issue',151,3,'Etap 5'),(653,'Issue',151,4,''),(654,'Issue',151,5,'MUST'),(655,'Issue',151,6,''),(656,'Issue',151,7,'BR055'),(657,'Issue',152,2,''),(658,'Issue',152,3,'Etap 5'),(659,'Issue',152,4,''),(660,'Issue',152,5,'MUST'),(661,'Issue',152,6,''),(662,'Issue',152,7,'BR056'),(663,'Issue',153,2,''),(664,'Issue',153,3,'Etap 5'),(665,'Issue',153,4,''),(666,'Issue',153,5,'MUST'),(667,'Issue',153,6,''),(668,'Issue',153,7,'Integracje'),(669,'Issue',154,2,''),(670,'Issue',154,3,'Etap 5'),(671,'Issue',154,4,''),(672,'Issue',154,5,'MUST'),(673,'Issue',154,6,''),(674,'Issue',154,7,'Migracje'),(675,'Issue',158,2,''),(676,'Issue',158,3,'Etap 2'),(677,'Issue',158,4,''),(678,'Issue',158,5,''),(679,'Issue',158,6,''),(680,'Issue',158,7,''),(681,'Issue',159,2,''),(682,'Issue',159,3,'Etap 4'),(683,'Issue',159,4,''),(684,'Issue',159,5,''),(685,'Issue',159,6,''),(686,'Issue',159,7,''),(693,'Issue',161,2,''),(694,'Issue',161,3,'Etap 5'),(695,'Issue',161,4,''),(696,'Issue',161,5,''),(697,'Issue',161,6,''),(698,'Issue',161,7,''),(699,'Issue',162,2,''),(700,'Issue',162,3,'Etap 5'),(701,'Issue',162,4,''),(702,'Issue',162,5,''),(703,'Issue',162,6,''),(704,'Issue',162,7,''),(705,'Issue',163,2,''),(706,'Issue',163,3,'Etap 5'),(707,'Issue',163,4,''),(708,'Issue',163,5,''),(709,'Issue',163,6,''),(710,'Issue',163,7,''),(711,'Issue',164,2,''),(712,'Issue',164,3,'Etap 5'),(713,'Issue',164,4,''),(714,'Issue',164,5,''),(715,'Issue',164,6,''),(716,'Issue',164,7,'');
/*!40000 ALTER TABLE `custom_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_email_addresses_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES (1,1,'admin@example.net',1,1,'2017-09-20 15:34:02','2017-09-20 15:34:02'),(2,5,'axiomait23@gmail.com',1,1,'2017-10-04 02:21:51','2017-10-04 02:21:51'),(3,7,'eloner3@gmail.com',1,1,'2017-10-04 03:14:01','2017-10-04 03:14:01'),(4,8,'r.gnatishen@gmail.com',1,1,'2017-10-04 04:01:03','2017-10-04 04:01:03'),(5,9,'Marzena.Jakimowicz@winkhaus.pl',1,1,'2017-10-04 04:03:57','2017-10-04 04:03:57'),(6,10,'dmytry.didenko@gmail.com',1,1,'2017-10-09 03:37:13','2017-10-09 03:37:13'),(7,11,'mda@mda.pl',1,1,'2017-10-09 06:03:38','2017-10-09 06:03:38'),(8,12,'alina.didenko@drit.pl',1,1,'2017-10-10 02:50:29','2017-10-10 02:50:29'),(9,13,'w.pawlak@mtmg.gdynia.pl',1,1,'2017-10-11 05:41:02','2017-10-11 05:41:02'),(10,14,'poltoratsky.denis@gmail.com',1,1,'2017-10-25 03:39:16','2017-10-25 04:14:15'),(11,15,'boyko_y@ukr.net',1,1,'2017-10-27 06:45:51','2017-11-13 11:08:47'),(12,17,'maxgmn85@gmail.com',1,1,'2017-11-07 10:59:52','2017-11-07 10:59:52');
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enabled_modules`
--

LOCK TABLES `enabled_modules` WRITE;
/*!40000 ALTER TABLE `enabled_modules` DISABLE KEYS */;
INSERT INTO `enabled_modules` VALUES (1,1,'issue_tracking'),(2,1,'time_tracking'),(3,1,'news'),(4,1,'documents'),(5,1,'files'),(6,1,'wiki'),(7,1,'repository'),(8,1,'boards'),(9,1,'calendar'),(10,1,'gantt'),(11,2,'issue_tracking'),(12,2,'time_tracking'),(13,2,'news'),(14,2,'documents'),(15,2,'files'),(16,2,'boards'),(17,2,'calendar'),(18,2,'gantt'),(19,3,'issue_tracking'),(20,3,'time_tracking'),(21,3,'news'),(22,3,'documents'),(23,3,'files'),(24,3,'wiki'),(25,3,'repository'),(26,3,'boards'),(27,3,'calendar'),(28,3,'gantt'),(29,4,'issue_tracking'),(30,4,'time_tracking'),(31,4,'news'),(32,4,'documents'),(33,4,'files'),(34,4,'wiki'),(35,4,'repository'),(36,4,'boards'),(37,4,'calendar'),(38,4,'gantt'),(39,5,'issue_tracking'),(40,5,'time_tracking'),(41,5,'news'),(42,5,'documents'),(43,5,'files'),(44,5,'wiki'),(45,5,'repository'),(46,5,'boards'),(47,5,'calendar'),(48,5,'gantt'),(49,6,'issue_tracking'),(50,6,'time_tracking'),(51,6,'news'),(52,6,'documents'),(53,6,'files'),(54,6,'wiki'),(55,6,'repository'),(56,6,'boards'),(57,6,'calendar'),(58,6,'gantt'),(59,7,'issue_tracking'),(60,7,'time_tracking'),(61,7,'news'),(62,7,'documents'),(63,7,'files'),(64,7,'wiki'),(65,7,'repository'),(66,7,'boards'),(67,7,'calendar'),(68,7,'gantt');
/*!40000 ALTER TABLE `enabled_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enumerations`
--

LOCK TABLES `enumerations` WRITE;
/*!40000 ALTER TABLE `enumerations` DISABLE KEYS */;
INSERT INTO `enumerations` VALUES (1,'Normal',1,1,'IssuePriority',1,NULL,NULL,'default'),(2,'High',2,0,'IssuePriority',1,NULL,NULL,'high2'),(3,'Low',3,0,'IssuePriority',1,NULL,NULL,'highest'),(4,'Programowanie',1,0,'TimeEntryActivity',1,NULL,NULL,NULL),(5,'Testowanie',2,0,'TimeEntryActivity',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_users`
--

LOCK TABLES `groups_users` WRITE;
/*!40000 ALTER TABLE `groups_users` DISABLE KEYS */;
INSERT INTO `groups_users` VALUES (6,13);
/*!40000 ALTER TABLE `groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_items`
--

DROP TABLE IF EXISTS `import_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `obj_id` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_items`
--

LOCK TABLES `import_items` WRITE;
/*!40000 ALTER TABLE `import_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `settings` text,
  `total_items` int(11) DEFAULT NULL,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_categories`
--

LOCK TABLES `issue_categories` WRITE;
/*!40000 ALTER TABLE `issue_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_relations`
--

LOCK TABLES `issue_relations` WRITE;
/*!40000 ALTER TABLE `issue_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_statuses`
--

LOCK TABLES `issue_statuses` WRITE;
/*!40000 ALTER TABLE `issue_statuses` DISABLE KEYS */;
INSERT INTO `issue_statuses` VALUES (1,'Nowe',0,1,NULL),(2,'Na wykonaniu',0,2,NULL),(3,'Sprawdzenie',0,3,NULL),(4,'Wykonane',1,6,NULL),(5,'sprawdzone-do poprawy',0,4,NULL),(6,'sprawdzone-akceptacja',0,5,NULL);
/*!40000 ALTER TABLE `issue_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL,
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `closed_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (2,2,2,'Rejestracja uzytkownika B2C','- Brak mozliwosci zarejestrowania dwoch kont na ten sam adres e-mail\r\n- Walidacja blednie wprowadzonego adresu e-mail \r\n- Wyswietlenie komunikatu po wprowadzeniu adresu e-mail istniejacego w bazie\r\n\r\n\r\nWymagane dane: Imie, Nazwisko, Adres e-mail, Haslo',NULL,NULL,5,7,1,NULL,1,4,'2017-10-04 04:25:58','2017-10-09 09:25:40','2017-10-04',0,NULL,NULL,2,1,2,0,NULL),(3,2,2,'Rejestracja uzytkownika B2B',' Brak mozliwosci zarejestrowania dwoch kont na ten sam adres e-mail\r\n Walidacja blednie wprowadzonego adresu e-mail \r\n Wyswietlenie komunikatu po wprowadzeniu adresu e-mail istniejacego w bazie\r\n\r\nWymagane dane: Imie Nazwisko, Adres e-mail, Dane fakturowe (Kod pocztowy, Miasto, Adres, Wojewodztwo/Prowincja, Nazwa firmy, NIP)',NULL,NULL,2,7,1,NULL,5,2,'2017-10-04 05:02:26','2017-10-10 07:00:34','2017-10-04',60,NULL,NULL,3,1,2,0,NULL),(4,2,2,'Podglad baneru informacyjnego',' Wyswietlenie na kazdej podstronie baneru informacyjnego\r\nDarmowy modul',NULL,NULL,6,7,1,NULL,5,7,'2017-10-04 05:12:44','2017-12-20 05:44:26','2017-10-04',100,NULL,NULL,4,1,2,0,NULL),(5,2,2,'Podglad baneru na stronie kategorii produktowej','',NULL,NULL,6,7,1,NULL,5,7,'2017-10-04 05:14:59','2018-01-11 09:21:13','2017-10-04',100,NULL,NULL,5,1,2,0,NULL),(6,2,2,'Wyswietlenie linkow do portali spolecznosciowych','',NULL,NULL,6,7,1,NULL,5,12,'2017-10-04 05:20:10','2018-01-10 12:38:49','2017-10-04',100,NULL,NULL,6,1,2,0,NULL),(7,2,2,'Zarzadzalny rotator banerow na stronie glownej - szablon sklepu','Wyswietlenie rotatora banerow na stronie glownej\r\nModul z A17\r\n',NULL,NULL,6,7,1,NULL,5,5,'2017-10-04 05:24:18','2018-01-24 05:37:02','2017-10-04',100,NULL,NULL,7,1,2,0,NULL),(8,2,2,'Zarzadzane uprawnieniami uzytkownikow administracyjnych','Mozliwosc tworzenia nowych kont uzytkowniko administracyjnych\r\nMozliwosc tworzenia nowych rol administracyjnych\r\nMozliwosc przypisania jednej roli kazdemu uzytkownikowi administracyjnemu\r\n\r\nDo doszczegolowienia\r\n\r\n',NULL,NULL,6,7,1,NULL,5,4,'2017-10-04 05:35:24','2017-11-16 07:37:13','2017-10-04',100,NULL,NULL,8,1,2,0,NULL),(9,2,2,'Konfiguracja strony statycznej','Mozliwosc oddania nowej strony CMS\r\nMozliwosc edycji strony CMS\r\nMozliwosc usuniecia strony CMS',NULL,NULL,6,7,1,NULL,5,6,'2017-10-04 05:38:20','2018-01-24 11:00:58','2017-10-04',100,NULL,NULL,9,1,2,0,NULL),(10,2,2,'Konfiguracja widgetu','Mozliwosc oddania nowego widgetu\r\nMozliwosc edycji widgetu\r\nMozliwosc usuniecia widgetu\r\nMozliwosc wyboru bloku CMS wyswietlanego w ramach widgetu\r\nMozliwosc wyboru strony na ktorej widget bedzie wyswietlany\r\nMozliwosc wyboru miejsca na stronie w którym widget bedzie wyswietlany\r\n',NULL,NULL,6,7,1,NULL,5,6,'2017-10-04 05:42:23','2018-01-11 14:05:57','2017-10-04',100,NULL,NULL,10,1,2,0,NULL),(11,2,2,'Konfiguracja bloku statycznego','Mozliwosc oddania nowego bloku CMS\r\nMozliwosc edycji bloku CMS\r\nMozliwosc usuniecia bloku CMS\r\n',NULL,NULL,6,7,1,NULL,5,5,'2017-10-04 05:45:41','2018-01-24 11:01:31','2017-10-04',100,NULL,NULL,11,1,2,0,NULL),(13,2,2,'Dodawanie stron CMS do menu','Mozliwosc dodawania stron CMS do menu glownego\r\nModul TM MegaMenu 69$\r\n',NULL,NULL,6,7,1,NULL,5,4,'2017-10-04 05:49:18','2018-01-03 07:44:12','2017-10-04',0,NULL,NULL,13,1,2,0,NULL),(14,2,2,'Podanie numeru ulicy','',NULL,NULL,6,7,1,NULL,5,8,'2017-10-04 06:37:41','2018-01-03 06:41:55','2017-10-04',50,NULL,NULL,14,1,2,0,NULL),(15,2,2,'Potwierdzenie adresu e-mail przy rejestracji','Przeslanie przez system odnosnika aktywacyjnego na adres e-mail podany przy rejestracji\r\nOtworzenie przez uzytkownika odnosnika spowoduje aktywacje konta oraz wyswietlenie strony podziekowania za aktywacje\r\nPo poprawnej aktywacji konta, uzytkownik moze zalogowac sie na konto\r\n',NULL,NULL,6,7,1,NULL,5,5,'2017-10-04 06:42:48','2017-12-05 08:35:21','2017-10-04',100,NULL,NULL,15,1,2,0,NULL),(16,2,2,'Logowanie','Klient zostaje poprawnie zalogowany do systemu\r\nUzytkownik pozostaje na stronie z poziomu ktorej przeszedl do strony logowania\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 06:44:34','2017-10-09 10:42:01','2017-10-04',0,NULL,NULL,16,1,2,0,NULL),(18,2,2,'Reset hasla','Wyswietlenie odnosnika do formularza zmiany hasla\r\nWyswietlenie formularza zmiany hasla\r\nWyslanie wiadomosci z linkiem do zmiany hasla\r\nMozliwosc wprowadzenia dwukrotnie nowego hasla\r\nPo poprawnym potwierdzeniu nowego hasla, wyswietlenie komunikatu oraz przeniesienie do strony logowania\r\n',NULL,NULL,6,7,1,NULL,5,5,'2017-10-04 06:50:33','2017-12-11 10:17:58','2017-10-04',100,NULL,NULL,18,1,2,0,NULL),(19,2,2,'Zmiana ilosci wyswietlanych produktow na stronie kategorii produktowej','Wyswietlenie pola wyboru liczby produktów na stronie\r\nZmiana ilosci wyswietlonych produktow na stronie\r\nPoprawne przeliczenie ilosci stron produktow\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 06:52:30','2017-10-10 04:05:27','2017-10-04',0,NULL,NULL,19,1,2,0,NULL),(20,2,2,'Przejscie na kolejna strone w ramach wybranej kategorii produktowej','Wyswietlenie przycisku przejscia na wczesniejsza strone\r\nWyswietlenie przycisku przejscia na nastepna strone\r\nWyswietlenie przyciskow poszczegolnych stron\r\nWyswietlenie wlasciwej strony po nacisnieciu ktorego z przyciskow\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 06:55:50','2017-10-10 04:07:31','2017-10-04',0,NULL,NULL,20,1,2,0,NULL),(21,2,2,'Link do katalogu dokumentow','Wyswietlenie linku kierujacego do katalogu dokumentow\r\nw stopce\r\nna podgladzie produktu\r\n',NULL,NULL,6,7,1,NULL,5,3,'2017-10-04 06:57:57','2018-01-11 14:06:48','2017-10-04',0,NULL,NULL,21,1,2,0,NULL),(22,2,2,'Zmiana wyswietlanej kategorii produktowej','to co jest w ramach filtrow\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 06:59:09','2017-10-10 04:18:05','2017-10-04',0,NULL,NULL,22,1,2,0,NULL),(23,2,2,'Dodanie produktu do koszyka z poziomu strony kategorii produktowej','Dodanie produktu do koszyka we wlasciwej ilosci i konfiguracji\r\nWyswietlenie potwierdzenia dodania produktu do koszyka\r\n',NULL,NULL,6,7,1,NULL,5,4,'2017-10-04 07:01:09','2017-11-30 09:55:16','2017-10-04',80,NULL,NULL,23,1,2,0,NULL),(24,2,2,'Subskrypcja newslettera','Wyswietlenie w stopce pola na zapis do newslettera\r\nWyswietlenie na formularzu rejestracji pola zapisu do newslettera\r\nWyswietlenie widoku zapisu do newslettera w panelu klienta\r\nWyslanie maila z linkiem potwierdzenia zapisania sie do newslettera dla klienta niezarejestrowanego\r\nWyslanie maila z potwierdzeniem zapisu do newslettera dla klienta zarejestrowanego\r\n\r\nObecnie integracja z systemem SARE, ale wkrótce nastapi zmiana na system opracowany przez Winkahus. Termin???\r\n',NULL,NULL,6,7,1,NULL,5,10,'2017-10-04 07:03:42','2017-12-15 05:24:28','2017-10-04',100,NULL,NULL,24,1,2,0,NULL),(25,2,2,'Subskrypcja newslettera na sciezce zakupowej','Wyswietlenie na sciezce zakupowej pola zapisu do newslettera\r\nWyslanie maila z linkiem potwierdzenia zapisania sie do newslettera dla klienta niezarejestrowanego\r\nWyslanie maila z potwierdzeniem zapisu do newslettera dla klienta zarejestrowanego\r\n',NULL,NULL,6,7,1,NULL,5,10,'2017-10-04 07:06:08','2017-12-13 06:49:19','2017-10-04',100,NULL,NULL,25,1,2,0,NULL),(26,2,2,'Wyswietlenie infromacji o stanie magazynowym','Wyswietlenie informacji, ze stan magazynowy dotyczy magazynu glownego w Rydzynie przy uzyciu atrybutu\r\n',NULL,NULL,5,7,1,NULL,5,4,'2017-10-04 07:08:31','2017-11-15 12:38:02','2017-10-04',100,NULL,NULL,26,1,2,0,NULL),(27,2,2,'Podglad komunikatow walidacji poprawnosci pol','Prawidlowe wyswietlenie wszystkich komunikatow walidacji poprawnosci pol\r\n\r\n                                                                                                                                                                                                                                                                czy waliduje life czy po nacisnieciu przycisku\r\n                                                                                                                                                                                                                                                                lista pol linki do regul gdzie jest opisana walidacja\r\ndo ustalenia!\r\n',NULL,NULL,6,7,1,NULL,5,4,'2017-10-04 07:14:30','2018-01-03 06:43:59','2017-10-04',0,NULL,NULL,27,1,2,0,NULL),(28,2,2,'Podglad komunikatow bledow','Prawidlowe wyswietlenie wszystkich komunikatow bledow\r\n\r\npowinna byc taka lista wszystkich komunikatow\r\n',NULL,NULL,6,7,1,NULL,5,3,'2017-10-04 07:19:55','2018-01-03 06:45:16','2017-10-04',0,NULL,NULL,28,1,2,0,NULL),(29,2,2,'Kontakt ze sklepem poprzez formularz na stronie','Strona statyczna \"Kontakt\"\r\nPrawidlowo walidowany formularz kontaktu (w tym checkboxa warunkow)\r\nWyslanie formularza na ustawiony w konfiguracji adres e-mail\r\nWyswietlenie klientowi potwierdzenia wyslania formularza\"\r\n',NULL,NULL,6,7,1,NULL,5,9,'2017-10-04 07:27:39','2018-01-03 09:20:01','2017-10-04',100,NULL,NULL,29,1,2,0,NULL),(30,2,2,'Zamowienia spoza UE','Mozliwosc wybrania dowolnego kraju jako kraju dostawy\r\nWyswietlenie przycisku Wyslij e-mail z zapytaniem do dzialu handlowego po wybraniu kraju spoza UE\"\r\n',NULL,NULL,4,7,1,NULL,5,1,'2017-10-04 07:30:30','2017-11-15 10:38:14','2017-10-04',0,NULL,NULL,30,1,2,0,'2017-11-15 10:38:14'),(31,2,2,'Dodanie nowego adresu dostawy na  sciezce zakupowej','Udostepnienie formularza do dodania nowego adresu\r\nPrzypisanie adresu do listy adresow klienta\"\r\n',NULL,NULL,5,7,2,NULL,5,6,'2017-10-04 07:32:17','2017-10-12 07:38:00','2017-10-04',100,NULL,NULL,31,1,2,0,NULL),(32,2,2,'Zmiana danych konta','Dzialajacy przycisk \"\"edytuj\"\"\r\nPrawidlowe zapisanie danych po edycji\r\nUwzglednienie uprawnien w zaleznosci od grup klientow\r\n',NULL,NULL,3,7,1,NULL,5,3,'2017-10-04 07:36:14','2017-12-27 07:55:05','2017-10-04',0,NULL,NULL,32,1,2,0,NULL),(33,2,2,'Zmiana hasla','Wyswietlenie formularza do zmiany hasla\r\nPoprawna walidacja obecnego i nowego hasla\r\nPoprawny zapis do bazy\r\n',NULL,NULL,3,7,1,NULL,5,4,'2017-10-04 07:46:12','2017-11-14 10:07:27','2017-10-04',100,NULL,NULL,33,1,2,0,NULL),(34,2,2,'Podglad informacji o koncie na kokpicie klienta','Prawidlowe wyswietlenie informacji o koncie klienta\r\n',NULL,NULL,3,7,1,NULL,5,3,'2017-10-04 07:48:10','2017-11-14 13:15:09','2017-10-04',100,NULL,NULL,34,1,2,0,NULL),(35,2,2,'Podglad listy historycznych zamowien','Wyswietlenie historii zamowien klienta\r\n',NULL,NULL,6,7,1,NULL,5,3,'2017-10-04 07:49:50','2017-10-10 11:50:00','2017-10-04',0,NULL,NULL,35,1,2,0,NULL),(36,2,2,'Ponowne zamowienie produktow z zamowienia historycznego','Wyswietlenie przycisku ponow zamowienie\r\nDodanie produktow z zamowienia historycznego do koszyka\r\nPrawidlowa walidacja dostepnosci produktow i przypisanie aktualnych cen\"\r\n',NULL,NULL,3,7,1,NULL,5,6,'2017-10-04 07:51:57','2017-11-14 10:43:38','2017-10-04',70,NULL,NULL,36,1,2,0,NULL),(37,2,2,'Dodawanie adresow w ksiazce adresowej','Mozliwosc dodania adresu do ksiazki adresowej\r\nMozliwosc ustawienia domyslnego adresu dostawy\r\nMozliwosc ustawienia domyslnego adresu wysylki\r\nWalidacja kodow pocztowych dla krajow europejskich\"\r\n',NULL,NULL,3,7,1,NULL,5,11,'2017-10-04 07:54:06','2018-01-12 08:38:18','2017-10-04',0,NULL,NULL,37,1,2,0,NULL),(39,2,2,'Edycja adresow w ksiace adresowej','Mozliwosc edycji wprowadzonych przez klienta adresow\r\nMozliwosc ustawienia domyslnego adresu dostawy\r\nMozliwosc ustawienia domyslnego adresu wysylki\r\nPoprawne zapisanie zmienionych danych\r\nWalidacja kodow pocztowych dla krajow europejskich\r\n',NULL,NULL,3,7,1,NULL,5,6,'2017-10-04 08:00:32','2017-12-27 07:55:19','2017-10-04',0,NULL,NULL,39,1,2,0,NULL),(40,2,2,'Powiadomienie e-mail o dostepnosci produktu','Wyswietlenie na podgladzie produktu przycisku pozwalajacego na zapisanie sie do newslettera produktu\r\nWyslanie wiadomosci po zmianie statusu produktu z Na zamowienie na Dostepny\r\n',NULL,NULL,5,7,1,NULL,5,5,'2017-10-04 08:02:57','2017-11-22 07:22:50','2017-10-04',0,NULL,NULL,40,1,2,0,NULL),(41,2,2,'Powiadomienie e-mail o zmienie ceny','Wyswietlenie na podgladzie produktu przycisku pozwalajacego na zapisanie sie do newslettera produktu\r\nWyslanie wiadomosci po zmianie ceny produktu\r\n',NULL,NULL,5,7,1,NULL,5,4,'2017-10-04 08:04:44','2017-11-22 07:02:52','2017-10-04',0,NULL,NULL,41,1,2,0,NULL),(42,2,2,'Podglad listy klientow online','Wyswietlenie listy klietnow online\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 08:07:12','2017-10-31 04:44:23','2017-10-04',0,NULL,NULL,42,1,2,0,NULL),(43,2,2,'Usuniecie konta klienta','Poprawne usiniecie konta klienta\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 08:08:25','2017-11-25 12:40:13','2017-10-04',0,NULL,NULL,43,1,2,0,NULL),(44,2,2,'Reset hasla konta klienta','Wyslanie wiadomosci zawierajacej odnosnik do zmiany hasla z poziomu edycji konta klienta w panelu administracyjnym\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 08:10:37','2017-11-25 12:39:13','2017-10-04',0,NULL,NULL,44,1,2,0,NULL),(45,2,2,'Wylogowanie klienta z konta','Wylogowanie klienta ze sklepu z poziomu edycji konta w panelu adminsitracyjnym\r\n',NULL,NULL,2,7,1,NULL,5,2,'2017-10-04 08:11:47','2017-10-31 10:19:28','2017-10-04',0,NULL,NULL,45,1,2,0,NULL),(46,2,2,'Zmiana danych konta klienta','Mozliwosc edycji danych konta klienta\r\nPoprawne zapisanie zmienionych danych\r\n',NULL,NULL,3,7,1,NULL,5,3,'2017-10-04 08:12:52','2017-12-27 07:55:30','2017-10-04',0,NULL,NULL,46,1,2,0,NULL),(47,2,2,'Zmiana przypisanej do konta grupy klienta','Mozliwosc edycji grupy klienta\r\nPoprawne zapisanie zmienionych danych\r\n',NULL,NULL,6,7,1,NULL,5,4,'2017-10-04 08:14:37','2017-12-13 07:10:58','2017-10-04',0,NULL,NULL,47,1,2,0,NULL),(48,2,2,'Edycja adreswo w ksiazce adresowej','Mozliwosc edycji wprowadzonych przez klienta adresow\r\nPoprawne zapisanie zmienionych danych\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 08:15:50','2017-10-11 05:40:03','2017-10-04',0,NULL,NULL,48,1,2,0,NULL),(49,2,2,'Podglad zamowien klienta','Wyswietlenie listy wszystkich zamowien klienta\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 08:17:56','2017-10-10 12:10:01','2017-10-04',0,NULL,NULL,49,1,2,0,NULL),(50,2,2,'Zapisanie/Wypisanie konta klienta na subskrypcje newslettera','Mozliwosc zapisania/wypisania klienta z newslettera\r\n',NULL,NULL,6,7,1,NULL,5,4,'2017-10-04 08:19:02','2017-12-13 07:25:48','2017-10-04',0,NULL,NULL,50,1,2,0,NULL),(51,2,2,'Podglad wyslanych wiadomosci w ramach newslettera','Wyswietlenie listy wyslanych newsletterow\r\n',NULL,NULL,6,7,1,NULL,5,6,'2017-10-04 08:20:17','2017-12-20 05:56:31','2017-10-04',0,NULL,NULL,51,1,2,0,NULL),(52,2,2,'Podglad listy opinii wystawionych z konta klienta','- Wyswietlenie listy opnii w widoku podgladu klienta\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 08:21:30','2017-10-11 05:39:09','2017-10-04',0,NULL,NULL,52,1,2,0,NULL),(53,2,2,'Dodanie produktow znajdujacych sie aktualnie w koszyku klienta do nowego zamowienia','Wyswietlenie listy produkoów znajdujacych sie w koszyku klienta\r\nMozliwosc dodania ich do tworzonego zamowienia\"\r\n\r\nZachowanie produktow w koszyku \r\n',NULL,NULL,5,7,2,NULL,5,7,'2017-10-04 08:23:51','2017-11-25 13:54:51','2017-10-04',0,NULL,NULL,53,1,2,0,NULL),(54,2,2,'Podglad produktow znajdujacych sie na liscie zyczen klienta z poziomu strony edycji konta klienta','Wyswietlenie listy produktow znajdujacych sie na liscie zyczen klienta\r\n',NULL,NULL,6,7,1,NULL,5,4,'2017-10-04 08:25:42','2018-01-03 09:07:19','2017-10-04',0,NULL,NULL,54,1,2,0,NULL),(55,2,2,'Dodanie nowej grupy klientow','Mozliwosc dodania nowej grupy klientow\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 08:27:03','2017-11-25 12:36:22','2017-10-04',0,NULL,NULL,55,1,2,0,NULL),(56,2,2,'Usuniecie grupy klientow','Mozliwosc usuniecia jednej z grup klientow\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 08:28:16','2017-11-25 12:34:02','2017-10-04',0,NULL,NULL,56,1,2,0,NULL),(57,2,2,'Automatyczne przypisanie klienta po rejestracji konta do grupy klientow','Mozliwosc wybrania konkretnej grupy do ktorej zostanie przypisany kazdy uzytkownik po rejestracji (mozliwosc okreslenia innych grup rejestracji z poszczegolnych widokow sklepu)\r\n\r\nMozliwosc wybrania konkretnej grupy do ktorej zostanie przypisany kazdy uzytkownik po rejestracji (mozliwosc okreslenia innych grup rejestracji z poszczegolnych widokow sklepu)\r\nMozliwosc przypisania klienta do grupy wedlug adresu wysylki lub rozliczeniowego lub numeru VAT (opcja zalezna od konfiguracji opcji podatku VAT)\"\r\n',NULL,NULL,5,7,1,NULL,5,6,'2017-10-04 08:31:47','2018-01-04 08:42:32','2017-10-04',0,NULL,NULL,57,1,2,0,NULL),(58,2,2,'Walidacja grupy klienta po kazdej transakcji','Walidacja na podstawie adresu rozliczeniowego lub adresu wysylki lub numeru VAT (opcja zalezna od konfiguracji opcji podatku VAT)\r\n',NULL,NULL,6,7,1,NULL,5,3,'2017-10-04 08:32:55','2018-01-11 04:29:46','2017-10-04',0,NULL,NULL,58,1,2,0,NULL),(59,2,2,'Przypisanie klasy podatku dla grupy klientow','Mozliwosc przypisanie klasy podaktu do grupy klientow\r\n',NULL,NULL,6,7,1,NULL,5,6,'2017-10-04 08:34:58','2017-12-05 08:34:08','2017-10-04',0,NULL,NULL,59,1,2,0,NULL),(60,2,2,'Logowanie sie na front sklepu jako klient','Mozliwosc zalogowania sie na front sklepu z uprawnieniami i cennikami klienta\r\n\"\r\nModul MageFan Login As Customer darmowy\"\r\n',NULL,NULL,4,7,1,NULL,5,2,'2017-10-04 08:36:09','2017-10-25 06:13:47','2017-10-04',100,NULL,NULL,60,1,2,0,'2017-10-25 06:13:47'),(61,2,2,'Konfiguracja regu poldatkowych','Mozliwosc tworzenia nowych regul podatkowych\r\nMozliwosc edycji regul podatkowych\r\nMozliwosc usuwania regul podatkowych\r\n',NULL,NULL,6,7,1,NULL,5,5,'2017-10-04 08:38:36','2017-11-25 12:33:15','2017-10-04',80,NULL,NULL,61,1,2,0,NULL),(62,2,2,'Utworzenie nowego konta klienta ','Mozliwosc utworzenia nowego konta klienta\r\n',NULL,NULL,5,7,1,NULL,5,5,'2017-10-04 08:39:57','2017-11-22 08:29:07','2017-10-04',50,NULL,NULL,62,1,2,0,NULL),(63,2,2,'Baza firm serwisowo montazowych','Mozliwosc wyswietlenia listy firm montazowych\r\nMozliwosc dodania nowej firmy montazowej\r\nMozliwosc edycji danych firmy montazowej\r\nMozliwosc usuniecia firmy montazowej\r\n\r\nModul Store Locator A129\r\n',NULL,NULL,5,7,1,NULL,5,2,'2017-10-04 08:42:49','2017-12-20 05:44:03','2017-10-04',0,NULL,NULL,63,1,2,0,NULL),(64,2,2,'Baza dystrybutorw osystemow zabezpieczen','Mozliwosc wyswietlenia listy dystrybutorow\r\nMozliwosc dodania nowego dystrybutora\r\nMozliwosc edycji danych dystrybutora\r\nMozliwosc usuniecia dystrybutora\r\n\r\nNIE WDRAZAMY W SKLEPIE!!! MAPKA przeniesiona na blog firmowy - Modul Store Locator A129\r\n\r\n',NULL,NULL,6,7,1,NULL,5,3,'2017-10-04 08:45:04','2017-12-20 04:37:09','2017-10-04',0,NULL,NULL,64,1,2,0,NULL),(65,2,2,'Konfiguracja wiadomosci e-mail wychodzacych z systemu','Mozliwosc stworzenia nowego szablonu wiadomosci\r\nMozliwosc edycji szablonu wiadomosci\r\nMozliwosc usuniecia szablonu wiadomosci\r\n',NULL,NULL,5,7,1,NULL,5,3,'2017-10-04 09:14:32','2018-01-25 07:44:53','2017-10-04',0,NULL,NULL,65,1,2,0,NULL),(66,2,2,'Mozliwosc konfiguracji wymaganego formatu hasla konta klienta koncowego','Mozliwosc ustawienia wymaganych grup znakow\r\nMozliwosc ustawienia wymaganej dlugosci znaku\r\n\r\nStores -> Configuration -> Customers -> Password Options\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 09:16:34','2017-11-25 12:31:22','2017-10-04',0,NULL,NULL,66,1,2,0,NULL),(67,2,2,'Mozliwosc wlaczenia i konfiguracji kodu CAPTCHA na formularzach','Mozliwosc wyboru ustawien dla wygenerowanej CAPTCHy\r\nMozliwosc wyswietlenia CAPTCHy na formularzu rejestracji\r\nMozliwosc wyswietlenia CAPTCHy na formularzu logowania\r\nMozliwosc wyswietlenia CAPTCHy na formularzu zapomnialem haslo\r\nMozliwosc wyswietlenia CAPTCHy na sciezce zakupowej dla goscia\r\nMozliwosc wyswietlenia CAPTCHy na formularzu rejestracji na sciezce zakupowej\r\nMozliwosc wyswietlenia CAPTCHy na formularzu kontaktowym\r\nMozliwosc wyswietlenia CAPTCHy na formularzu zmiany hasla\r\n\r\nStores -> Configuration -> Customers -> Password Options\r\nStandardowo na formularzach: Rejestracja, Logowanie, Przypomnienie hasla, Finalizacja sciezki zakupowej dla gosci, Rejestracja na sciezce zakupowej, Formularz kontaktowy, Zmiana hasla\"\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 09:24:47','2017-11-25 12:31:48','2017-10-04',0,NULL,NULL,67,1,2,0,NULL),(68,2,2,'Mozliwosc przekierowania uzytkownika na kokpit po zalogowaniu ','- Mozliwosc ustawienia czy klient po zalogowaniu ma byc przekierwany do panelu klienta\r\nStores -> Configuration -> Customers -> Login Options\r\n',NULL,NULL,6,7,1,NULL,5,2,'2017-10-04 09:26:45','2018-01-11 14:02:32','2017-10-04',0,NULL,NULL,68,1,2,0,NULL),(69,2,2,'Mozliwosc konfiguracji pol formularza rejestracyjnego','- Mozliwosc  dodania pol do formularza rejestracji sposrod: drugie imie, przedrostek, przyrostek, data uroczenia, NIP, plec\r\n- Mozliwosc  usuniecia pol z formularza rejestracji\r\n\r\n\"Stores -> Configuration -> Customers -> Name and Address Options\r\nW zakresie:\r\n- Data urodzenia (Nie, Opcjonalne, Wmagane)\r\n- Plec (Nie, Opcjonalne, Wymagane)\r\n- Numer platnika VAT (Nie, Opcjonalne, Wymagane)\r\n- Przedrostek imienia i nazwiska (Nie, Opcjonalnie, Wymagane)\"\r\n',NULL,NULL,3,7,1,NULL,5,1,'2017-10-04 09:29:36','2017-10-06 05:38:02','2017-10-04',0,NULL,NULL,69,1,2,0,NULL),(70,2,2,'Mozliwosc okreslenia czy konta klientow koncowych po rejestracji beda dostepne dla wszystkich witryn, czy wylacznie na witrynie, z ktorej nastapila rejestracja','- Mozliwosc okreslenia czy konta klientow koncowych po rejestracji beda dostepne dla wszystkich witryn, czy wylacznie na witrynie, z ktorej nastapila rejestracja\r\n\r\n\r\nStores -> Configuration -> Customers -> Account Sharing Options\r\n',NULL,NULL,6,7,1,NULL,5,5,'2017-10-04 09:32:03','2018-01-11 13:52:39','2017-10-04',100,NULL,NULL,70,1,2,0,NULL),(71,2,2,'Mozliwosc wlaczenia/wylaczenia formularza kontaktowego (konfiguracja dla widoku sklepu)','- Mozliwosc wlaczenia/wylaczenia formularza kontaktowego w poszczegolnych widokach sklepu\r\n\r\nStores -> Configuration -> General -> Contacts -> Contact Us\r\n',NULL,NULL,6,7,1,NULL,5,11,'2017-10-04 09:33:33','2018-01-10 12:40:08','2017-10-04',0,NULL,NULL,71,1,2,0,NULL),(72,2,2,'Walidacja wartosci NIP dla danego kraju','- Walidacja wartosci NIP dla danego kraju\r\nZalozenie: istniejace wzory dla kazdego kraju UE\r\n',NULL,NULL,3,7,1,NULL,5,4,'2017-10-04 09:40:46','2017-12-27 07:55:41','2017-10-04',0,NULL,NULL,72,1,2,0,NULL),(73,2,2,'Certyfikat TrustedShops','Modul Trusted Shops darmowy\r\n',NULL,NULL,6,7,1,NULL,5,10,'2017-10-04 09:44:27','2018-01-11 04:21:28','2017-10-04',0,NULL,NULL,73,1,2,0,NULL),(74,2,2,'Podglad najchetniej kupowanych produktow w sklepie','Widget na stronie glownej w standardzie\r\nBrak widgetu w M2.1 ale mozna to zrobic np. poprzez kategorie\r\n',NULL,NULL,5,7,1,NULL,5,4,'2017-10-06 06:06:52','2017-11-22 08:26:07','2017-10-06',0,NULL,NULL,74,1,2,0,NULL),(82,2,6,'Ордери (Wydanie zewnętrzne sprzedaży)','Завантаження до системи документів Wydanie zewnętrzne sprzedaży із наданих файлів. ',NULL,NULL,4,NULL,1,NULL,12,1,'2017-10-10 02:52:34','2017-10-25 03:39:30','2017-10-10',0,NULL,NULL,82,1,2,0,'2017-10-25 03:39:30'),(83,2,6,'Клієнт-банк','Завантаження через обробку Клієнт-банк документів Przelew wchodzący, Przelew wychodzący.',NULL,NULL,4,NULL,1,NULL,12,1,'2017-10-10 02:53:49','2017-12-04 09:40:24','2017-10-10',0,NULL,NULL,83,1,2,0,'2017-12-04 09:40:24'),(84,2,6,'Друковані форми для Faktura sprzedaży','Для документу Faktura sprzedaży розробити друковані форми згідно наданих макетів. ',NULL,NULL,4,NULL,1,NULL,12,2,'2017-10-10 02:54:49','2017-11-22 09:33:22','2017-10-10',0,NULL,NULL,84,1,2,0,'2017-11-22 09:33:22'),(85,2,6,'Оновлення системи','Оновлення системи до останнього реліз (в частині Банк/каса, основні засоби, бухгалтерські документи та звіти). Оновлює Килимник. ',NULL,NULL,4,NULL,1,NULL,12,2,'2017-10-10 02:55:57','2017-11-29 04:28:48','2017-10-10',0,NULL,NULL,85,1,2,0,'2017-11-29 04:28:48'),(86,2,6,'Механізм розрахунку собівартості','Доробка механізму розрахунку собівартості із розподілом транспортних витрат. - Килимник',NULL,NULL,1,NULL,1,NULL,12,0,'2017-10-10 02:58:12','2017-10-10 02:58:12','2017-10-10',0,NULL,NULL,86,1,2,0,NULL),(87,2,6,'Клієнт-банк вигрузка','Доробка механізму вивантаження даних до клієнт банку в розрізі документів Faktura zakupu, Faktura sprzedaży. Принцип наступний: користувач на формі обробки бачить, які фактури не оплачені, вибирає, які оплатити, і генерує файл вигрузки до банку. ',NULL,NULL,4,NULL,1,NULL,12,3,'2017-10-10 03:03:49','2018-01-31 03:06:54','2017-10-10',0,NULL,NULL,87,1,2,0,'2018-01-31 03:06:54'),(88,2,2,'Zarządzanie rotatorem banerów','- Możliwość dodawania banerów do rotatora\r\n\r\nModuł z A17\r\n',NULL,NULL,6,7,1,NULL,5,4,'2017-10-10 07:47:44','2018-01-12 09:17:05','2017-10-10',0,NULL,NULL,88,1,2,0,NULL),(89,2,2,'Magento jest w języku polskim ','W ostatnim mailu z dnia 20 września, plik: uwagi do raportu 19092017 prosiłam o zainstalowanie polskiej wersji Magento. \r\nWersja angielska stwarza trudności i ciężko odnieść się do tego, jak dana strona - układ, opisy będą wyglądały po polsku, jak zareaguje na nie klient..\r\nSprawdzanie wersji angielskiej będzie wymagało ponownego sprawdzania tego samego wersji polskiej. \r\n\r\nDlatego prośba, by w pierwszej kolejności zainstalować wersję polską. \r\n\r\nNa forum Magento znalazłam wątek z instrukcjami jak wgrać język polski - może będzie pomocny\r\nhttps://community.magento.com/t5/Polish/T%C5%82umaczenia-Magento-2-x-pl-PL/td-p/25955\r\n\r\n ',NULL,NULL,5,NULL,1,NULL,9,11,'2017-10-10 09:49:49','2018-01-11 13:50:09','2017-10-10',100,NULL,NULL,89,1,2,0,NULL),(90,2,4,'Dodać zmianę wagi','Domać możliwość zmiany wagi w grupowych zmianach pól dyspozycji',NULL,NULL,4,10,1,NULL,10,1,'2017-10-11 05:27:10','2017-10-14 10:24:09','2017-10-11',0,NULL,NULL,90,1,2,0,'2017-10-14 10:24:09'),(91,2,4,'W formularze wyboru dyspozycji dodać magazyn do podglądu','W formularze wyboru dyspozycji dodać magazyn do podglądu',NULL,NULL,4,10,1,NULL,10,1,'2017-10-11 05:28:31','2017-10-14 10:25:46','2017-10-11',0,NULL,NULL,91,1,2,0,'2017-10-14 10:25:46'),(92,2,4,'Drukowana forma dyspozycji','Zwiększyć rozmiar zlecenia i podnieść wyżęj',NULL,NULL,4,10,1,NULL,10,4,'2017-10-11 05:30:07','2017-10-14 08:58:04','2017-10-11',0,NULL,NULL,92,1,2,0,'2017-10-14 08:58:04'),(93,2,4,'\"Towar czysty\"','Zrobić napis \"Towar czysty\" na wszystkich wydrukach',NULL,NULL,4,10,1,NULL,10,3,'2017-10-11 05:31:19','2017-10-14 09:21:30','2017-10-11',0,NULL,NULL,93,1,2,0,'2017-10-14 09:21:30'),(94,2,4,'Dodać spedytora i statek do wymiany z impulsem','Dodać spedytora i statek do wymiany z impulsem',NULL,NULL,1,10,1,NULL,10,0,'2017-10-11 05:33:00','2017-10-11 05:33:00','2017-10-11',0,NULL,NULL,94,1,2,0,NULL),(95,2,4,'Dorobić wydruk R27','Dorobić wydruk R27',NULL,NULL,1,15,1,NULL,10,1,'2017-10-11 05:33:52','2017-10-27 07:51:49','2017-10-11',0,NULL,NULL,95,1,2,0,NULL),(96,2,4,'Przerobić rejestracje ważeń na magazyn na podstawie przyjęcia ze statku','Przerobić rejestracje ważeń na magazyn na podstawie przyjęcia ze statku',NULL,NULL,4,10,1,NULL,10,1,'2017-10-11 05:34:43','2017-10-14 11:03:12','2017-10-11',0,NULL,NULL,96,1,2,0,'2017-10-14 11:03:12'),(97,2,4,'Poprawić aktualizacje widoku na wadze kolejowej','Poprawić aktualizacje widoku na wadze kolejowej',NULL,NULL,1,10,1,NULL,10,0,'2017-10-11 05:35:49','2017-10-11 05:35:49','2017-10-11',0,NULL,NULL,97,1,2,0,NULL),(98,2,4,'Sprawdić wybór dyspozycji na załadowni 2','Sprawdić wybór dyspozycji na załadowni 2',NULL,NULL,1,10,1,NULL,10,0,'2017-10-11 05:36:57','2017-10-11 05:36:57','2017-10-11',0,NULL,NULL,98,1,2,0,NULL),(99,2,4,'Nie zamykają sie dyspozycji z 0 tarą w kwicie','Nie zamykają sie dyspozycji z 0 tarą w kwicie',NULL,NULL,4,10,1,NULL,10,1,'2017-10-11 05:45:45','2017-10-14 10:43:42','2017-10-11',0,NULL,NULL,99,1,2,0,'2017-10-14 10:43:42'),(100,2,4,'Uruchomić przyjęcie wagonów bez ważenia','Uruchomić przyjęcie wagonów bez ważenia',NULL,NULL,1,10,1,NULL,10,0,'2017-10-11 05:52:54','2017-10-11 05:52:54','2017-10-11',0,NULL,NULL,100,1,2,0,NULL),(101,2,6,'Клієнти','Перезаписати довідник Клієнти, для того щоб потрапили записи до регістру відомостей Historia atrybutów kontrahentów. \r\nНаписати обробку для завантаження адрес клієнтів. ',NULL,NULL,4,NULL,1,NULL,12,3,'2017-10-12 09:03:54','2017-11-29 04:28:26','2017-10-12',0,NULL,NULL,101,1,2,0,'2017-11-29 04:28:26'),(102,2,2,'Dodanie paska informacyjnego nad sliderem','Mam instrukcję, jak dodać na każdej stronie pasek z powiadomieniami. \r\nNiestety instrukcja dot. Magento 1..., ale może będzie to jakaś wskazówka ;-)\r\n',NULL,NULL,6,NULL,1,NULL,9,3,'2017-10-12 10:12:06','2017-12-20 05:44:41','2017-10-12',0,NULL,NULL,102,1,2,0,NULL),(103,2,2,'Prezentacja produktów w sklepie (na listingu i w opisie produktu)','Prezentacja produktu na listingu (szczegółowy opis zadania Winkhaus: [BR006] Listing produktów)\r\n\r\nzdjęcie\r\nnazwa produktu\r\ncena zł ( dodajemy: *z VAT*) (na listingu nie prezentujemy ceny bez Vat - za mało miejsca)\r\ncena promocyjna zł (jeśli produkt jest w promocji. Cena promocyjna na czerwono, a cena bazowa przekreślona) \r\nNowość/Bestseller (oznaczenie graficzne na zdjęciu produktu - jeśli produkt jest ma przypisane Nowość lub Bestseller)\r\n\r\ndostępne działania:\r\ndo koszyka\r\nlista życzeń (dla zalogowanych)\r\nporównaj \r\npokaż stronę produktu\r\n\r\n\r\nPrezentacja produktu (szczegółowy opis zadania Winkhaus: [BR013] Podgląd produktu)\r\nNazwa produktu\r\nSKU\r\nkolor\r\njednosta: szt\r\nocena produktu\r\nopinie produktu\r\nzałączniki: Karty katalogowe (możeby być ich kilka), certyfikat \r\ncena zł bez VAT\r\ncena zł z VAT + cena promocyjna\r\ndostępność w magazynie - prezentacja stanów magazynowych (informacja o stanie magazynowym: dotyczy magazynu głównego w Rydzynie)\r\nplanowana wysyłka\r\n- przed godzina 12: Wysyłka w dniu dzisiejszym\r\n- po godzinie 12: Wysyłka jutro\r\nZapytaj o produkt (mozliwość wysłania maila do sklepu - pytanie do wybranego produktu. W mailu powinna być informacja, do jakiego produktu jest zapytanie)\r\nKoszt wysyłki - Wyświetlenie informacji o stałym koszcie przesyłki na terenie Polski: \"Koszt przesyłki za pobraniem XYZ pln. Koszt przesyłki przedpłaconej XYZ pln.\"\r\nWyświetlenie informacji o wysyłce towarów, \"Towar dostępny na magazynie wysyłany jest w dni robocze w ciągu 24 godzin\"\r\nWyświetlenie informacji o wydłużonym czasie czasie wysyłki dla produktów o statusie \"Na zamówienie\"\r\n\r\nMedia społecznościowe\r\nproduktuy powiązane\r\nprodukty podobne\r\n\r\n\r\n\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,1,'2017-10-16 03:10:46','2017-10-30 08:13:00','2017-10-16',0,NULL,NULL,103,1,2,0,NULL),(104,2,2,'Koszyk - prezentacja cen w koszyku ','Informacja na zdjęciu: Koszyk-podsumowanie.jpg\r\n\r\nUsuwamy pióro (zmień parametry). \r\nCzy można zrobić automatyczne odświeżanie koszyka? Po zmianie ilości produktów lub wpisaniu kodu rabatowego? (obecnie trzeba kliknąć PRZELICZ)\r\n\r\nZ podsumowania są usunięte sumy częściowe. \r\nDostawa już od (podajemy najniższy koszt dostawy) - na tym etapie nie wiemy, gdzie będzie dostawa? i jaka będzie forma płatności. \r\nOstateczny koszt dostawy pojawi się na koniec - na podsumowaniu zamówienia.',NULL,NULL,1,NULL,1,NULL,9,0,'2017-10-16 13:36:36','2017-10-16 13:36:36','2017-10-16',0,NULL,NULL,104,1,2,0,NULL),(105,2,6,'Документ Faktura Pro Forma','Написати новий документ Faktura Pro Forma (Рахунок на оплату). Управлінська форма. Відкрити доступ для ролі Role_Sales та Role_Purchase. За основу взяти документ Faktura sprzedaży. Механізми всі такі самі, як і в документі Faktura sprzedaży. У документі має бути вибір виду операції, чи то для Клієнта (Dla klienta), чи то Для постачальника (Od dostawcy) (можна змінити типові). Відповідно в реквізиті контрагент відкривати або довідник Klienci, або Dostawcy. Якщо вид операції Для постачальника, на формі реквізит Odbiorca: приховувати. У табличній частині Wiersze pozycji має бути право або вказати позицію, або прописом написати, за що має платити контрагент. Документ записи по РН не формує. Реквізити розділу Incoterms  можна приховати. Групу реквізитів в шапці GroupHeaderRightAdditional теж приховати. Можливо відв\'язати механізм створення на основі документа Wydanie zewnętrzne sprzedaży.  Документ додати в розділи: Sales - Main; Purchase - Main. Має бути друкована форма. Друкована форму уже існує, але до іншого документу. В конфігурації друк форма PrintoutSalesOrderBill. вона друкується з документу SalesOrder. Скопіювати її для вказаного документу, або написати процедуру, яка дозволить друкувати одну друк форму з двох документів. ',NULL,NULL,4,14,1,NULL,12,2,'2017-10-25 04:09:34','2017-11-14 03:10:51','2017-10-25',0,NULL,NULL,105,1,2,0,'2017-11-14 03:10:51'),(106,2,6,'Довідник Items.','На упр форму довідника Items додати додатковий реквізит Opis dla wydruku (Опис для друку). Тип \"Строка\" (має бути можливість написати у дві строки). На формі розмістити під реквізитом Gł. kod kresk.. ',NULL,NULL,4,NULL,1,NULL,12,3,'2017-10-25 04:35:58','2017-10-26 06:15:57','2017-10-25',0,NULL,NULL,106,1,2,0,'2017-10-26 06:15:57'),(107,2,6,'Звіт по звільненню від акцизу','Написати новий звіт по документам Faktura sprzedaży. Назва звіту: Zestawienie wystawionych dokumentów dostawy. Тільки проведені документи, додати фільтр по префіксу документа. У звіт будуть потрапляти документи тільки з вказаним префіксом. Відбір по періоду. Звіт по макету. В заголовок виводити період відбору. Сортування у звіті по номеру документа фактури. Колонки: \r\nL.P. - номер по порядку. \r\nData wystawienia - Дата документу.\r\nNr faktury - номер документу. \r\nDane odbiercy - Назва контрагента (реквізит Nabywca в документі), його адреса Adres siedziby. адреса або з карточки контрагента, або із регістру відомостей Dane kontaktowe.\r\nNazwa wyrobu, kod CN (об\'єднати дві колонки)- опис позиції для видруку (реквізит). Необхідно із ТЧ документа витягти позицію і подивитись її опис. \r\nIlość w kg - кількість товару. Товар обліковується в тонах, необхідно перерахувати в кілограми. Перерахунок по типовому механізму. В одиниці виміру позиції налаштоване значення Waga netto. В константі Jednostka wagi вказана одиниця виміру кг. \r\nPrzeznaczenie..... - значення з реквізиту Informacja dodatkowa (do wydruku przed stopką z podpisami) з документу.. \r\nMiejsce odbioru - значення реквізиту Adres dostawy з документу. \r\nДодати можливість у звіті відкривати документ Faktura sprzedaży та додавати реквізити, які є в документі у Звіт. Звіт як форма списку документа. ',NULL,NULL,4,14,1,NULL,12,4,'2017-10-25 05:06:28','2018-01-31 03:03:44','2017-10-25',0,NULL,NULL,107,1,2,0,'2018-01-31 03:03:44'),(108,2,6,'Виробництво (для того, хто знає конфігурацію).','Додати нову константу Wyprodukowanie wiele pozycji (Випуск декількох позицій). Із ввімкненою константою змінюється форма документу Kompletacja. Має бути декілька ТЧ: Продукція, Матеріали, Одпади. \r\nНа закладці продукція можна вказати декілька видів продукції та їх специфікації. \r\nНа закладці Матеріали має заповнитись список матеріалів згідно специфікацій позицій. Матеріали також можна додати вручну. \r\nЯк варіант, можна додати ще одну закладку Розподіл матеріалів. Для того, щоб можна було зв\'язати продукцію із матеріалом (потрібно для регістрів). \r\nЗмінити записи по РН Koszty firmy, Koszty produkcji, Koszty towarów, Obrót kosztu towarów, Produkcja. ',NULL,NULL,4,14,1,NULL,12,2,'2017-10-25 05:16:47','2018-01-31 03:04:02','2017-10-25',0,NULL,NULL,108,1,2,0,'2018-01-31 03:04:02'),(109,2,6,'Документ Przelew wychodzący','В документі Przelew wychodzący не можливо змінити Data dokumentu źródłowego (дата документа). Дозволити змінювати дату. ',NULL,NULL,4,NULL,1,NULL,12,1,'2017-10-25 06:43:53','2018-01-31 03:06:18','2017-10-25',0,NULL,NULL,109,1,2,0,'2018-01-31 03:06:18'),(110,2,6,'Додатковий опис на друкованих формах. ','Необхідно додати загальне налаштування на всі друковані форми (можливо потрібно індивідуально, із цим розібратись). Налаштування здійснюється в регістрі відомостей Ustawienia wydruków. Нове налаштування: параметр -  Opis dla wydruku, Значення - Nie drukuj (по замовчуванню) та Drukuj. \r\nЯкщо новий параметр ввімкнений, після назви позиції, в новій стрічці (але виділяється окремо), виводиться опис позиції (із тими переносами, які написані в описі). Список друкованих форм: PrintoutSalesInvoice, PrintoutSalesCreditNote, PrintoutSalesPrepaymentCreditNote, PrintoutSalesPrepaymentInvoice, PrintoutSalesDelivery, PrintoutSalesRetailCheck, PrintoutSalesOrderBill (новая). ',NULL,NULL,4,14,1,NULL,12,3,'2017-10-25 07:13:26','2017-11-14 03:11:39','2017-10-25',0,NULL,NULL,110,1,2,0,'2017-11-14 03:11:39'),(111,2,6,'Документ Faktura korygująca ceny sprzedaży','В документ Faktura korygująca ceny sprzedaży додати новий вид операції Korekta rabatowa. При виборі виду операції, документ Faktura sprzedaży, який на формі, робити не обов\'язковим для заповнення та приховувати з форми. \r\nВ документ додати механізм префіксації (наш дописаний). Принцип роботи можна подивитись в документі Faktura sprzedaży. ',NULL,NULL,4,14,1,NULL,12,1,'2017-10-26 05:47:05','2017-11-14 03:11:22','2017-10-26',0,NULL,NULL,111,1,2,0,'2017-11-14 03:11:22'),(112,2,6,'Обробка для продажу','Скопіювати регістр відомостей SalesPricesQuantities. Синонім Ceny sprzedaży (wg ilości a klientów). Додати вимір Клієнт (довідник Customers). Помістити РС в підсистему Sales. Відкрити доступ для тих же ролей, для яких відкритий типовий РС. \r\nНаписати нову обробку (Miesięczne rabaty поки така назва), яка буде аналізувати РН \"Faktury sprzedaży\" в розрізі контрагентів, позицій, характеристик та серій (якщо останні ввімкнені), порівнювати кількість з тією, що вказана в РС, та генерувати документ Faktura korygująca ceny sprzedaży. \r\nВідбори на формі обробки: період (від - до), клієнт (довідник Klienci), позиція (довідник Pozycje), організація (довідник фірми). Організацію по замовчування із налаштувань користувача. \r\nЗначення для заповнення: Префікс для фактури коректи (Prefiks dla faktury korekty) – довідник Definicja dokumentów, фільтр по документу Faktura korygująca ceny sprzedaży.\r\nГрупування: Клієнт (поряд із клієнтом Валюта із карточки клієнта), позиція, реєстратор (можуть бути документи Faktura sprzedaży, Faktura korygująca ceny sprzedaży, Faktura korygująca zwrotu sprzedaży, Sprzedaż detaliczna тощо). По документам коректи можна виводити різницю. Якщо аналізувати записи документу Faktura korygująca ceny sprzedaży, то по РН буде два записи, старий відсторнований, новий вірний. Необхідна різниця. \r\nКолонки: кількість/Ilość (із аналогічного ресурсу), ціна/Cena із аналогічного ресурсу), Сума/Kwota (із ресурсу Kwota netto), Nowa cena (із РС, ресурс Cena), Rabat n/t (різниця між старою та новою ціною). Нову ціну та рабат виводити лише на рівні групування позиція). Ціну на рівні групувань рахувати середньозважену. \r\nПри виведенні даних на форму обробки, необхідно проаналізувати дані в новому РС по контрагенту, номенклатурі (позиції) та кількості. Якщо кількість по продажам перевищує кількість, яка вказана в РС, дані по вказаній позиції потрапляють у обробку (в тому числі нова ціна). Додатково можна писати службове повідомлення, які позиції по вказаному контрагенту не досягли ліміту продажу. \r\nПриклад: є Контрагент 1, товар 1, кількість 1000 т, нова ціна 150 зл. Продажів у місяці Жовтень було на кількість 1200 т по середній ціні 170 зл. Відповідно вказана позиція підпадає під наш ліміт. Заповнюємо дані в обробку. Відображаємо нову ціну 150 зл, рахуємо рабат 170-150=20. \r\nДалі при натисканні кнопки (додати кнопку) генеруємо документ Faktura korygująca ceny sprzedaży. Один документ на одного контрагента. Вид операції: Коректа рабатова (новий). Дата документу – поточна, префікс – із форми обробки, клієнт – із форми обробки, Waluta, Typ kwot, Typ ceny, Sposób płatności, Termin płatności, Data płatności – із карточки клієнта по типовому механізму заповнення, Odbiorca = Клієнт. Таблична частина товарів: товар,одиниця виміру із карточки товару, Ilość , Cena, Kwota –із форми обробки, %ВАТ із реквізиту Grupa księgowa позиції по типовому механізму заповнення (залежить від виду клієнту),  Ват та Квота брутто – розрахунок по типовому механізму.  Нова ціна теж із обробки, решта сум – розраховуються. \r\nУ реквізит Informacja dodatkowa (do wydruku przed stopką z podpisami) заповнювати список реєстраторів, які  відображались на формі обробки для вказаної позиції. Відображати номер  та дату. Заповнювати в колонки. Вигляд:  \r\nFK-1710/0001, 19.10.2017. \r\nFK-1710/0002, 19.10.2017.\r\nДокументи записувати, не проводити. Відкривати для перегляду та зміни користувачем.  Додати в інтерфейс  Sales. Поки відкрити для повних прав та для ролі  Role_Sales.',NULL,NULL,4,14,1,NULL,12,1,'2017-10-26 15:08:43','2017-11-14 03:11:05','2017-10-26',0,NULL,NULL,112,1,2,0,'2017-11-14 03:11:05'),(113,2,4,'Raport stanów magazynowych','Zrobić raport stanów magazynowych za zmianę',NULL,NULL,1,15,1,NULL,10,0,'2017-10-27 07:54:46','2017-10-27 07:54:46','2017-10-27',0,NULL,NULL,113,1,2,0,NULL),(114,2,4,'Dodać komorę w wagony','Dodać pole \"Komora\" przy dodawaniu wagonów dla przyjęcia bez ważenia. ','2017-11-24',NULL,3,15,1,NULL,10,5,'2017-10-27 08:05:16','2017-11-27 07:24:16','2017-10-27',100,NULL,NULL,114,1,2,0,NULL),(115,2,4,'Zmianowy raport po przyjęciu wagonów','Dodać zmianowy raport po przyjęciu wagonów',NULL,NULL,1,15,1,NULL,10,0,'2017-10-27 08:13:42','2017-10-27 08:13:42','2017-10-27',0,NULL,NULL,115,1,2,0,NULL),(116,2,6,'Друковані форми продажу','В друкований формах PrintoutSalesInvoice, PrintoutSalesCreditNote, PrintoutSalesPrepaymentCreditNote, PrintoutSalesPrepaymentInvoice, PrintoutSalesDelivery,PrintoutProformaInvoice, в шапці, після Валюти, додати параметр Курс валюти. Відображати тоді, коли валюта не дорівнює злотому (код валюти PLN). Курс із документа. ',NULL,NULL,4,14,1,NULL,12,1,'2017-10-30 15:30:46','2017-11-14 03:11:53','2017-10-30',0,NULL,NULL,116,1,2,0,'2017-11-14 03:11:53'),(117,2,6,'Мейл','В звіти додати можливість відправку через мейл (в новому релізі 1С це уже є).  ',NULL,NULL,1,10,1,NULL,12,0,'2017-11-06 08:19:59','2017-11-06 08:19:59','2017-11-06',0,NULL,NULL,117,1,2,0,NULL),(118,2,6,'Мейл','Підпис до мейла. В довіднику Користувачі налаштовується мейл і підпис до мейла. Після додавання картинки, вона не читається при відправці мейлу. 							',NULL,NULL,1,NULL,1,NULL,12,0,'2017-11-06 08:42:49','2017-11-06 08:42:49','2017-11-06',0,NULL,NULL,118,1,2,0,NULL),(119,2,6,'Документ Rozliczenie rozrachunków z kontrahentami','В документі Rozliczenie rozrachunków z kontrahentami відсутня кнопка заповнення по залишкам. Не заповнюється автоматично валюта. Упр форма. Доробити по принципу звичайної форми. 							',NULL,NULL,1,NULL,1,NULL,12,0,'2017-11-07 08:19:11','2017-11-07 08:19:11','2017-11-07',0,NULL,NULL,119,1,2,0,NULL),(120,2,6,'звіт Uzgodnienie sald rozrachunków','Звіт BalanceAdjustment (Uzgodnienie sald rozrachunków) переглянути та внести коригування згідно нової версії. Для Nadawcа та Adresatа додати NIP. Змінити опис тексту (устава і т.д). Розібратись, звідки система отримує Konto, яке вказано в ТЧ із документами.  ',NULL,NULL,4,15,1,NULL,12,1,'2017-11-14 04:03:35','2018-01-31 06:31:09','2017-11-14',0,NULL,NULL,120,1,2,0,'2018-01-31 06:31:09'),(121,2,6,'Друк форми каси','В друковані форми PrintoutCashOutgoing та PrintoutCashIncoming в параметр Za co необхідно виводити дані із документів із реквізиту OperationDescription. Параметр не друк формі не виділяти ніяким кольором.  ',NULL,NULL,4,NULL,1,NULL,12,1,'2017-11-14 09:45:47','2017-11-14 14:51:45','2017-11-14',0,NULL,NULL,121,1,2,0,'2017-11-14 14:51:45'),(122,2,6,'Друковані форми продажу','Дозволити у налаштуваннях вказувати на який товар виводити друк. ',NULL,NULL,4,14,1,NULL,12,1,'2017-11-22 09:34:03','2017-12-04 09:39:56','2017-11-22',0,NULL,NULL,122,1,2,0,'2017-12-04 09:39:56'),(123,2,2,'Podsumowanie zamówienia w sklepie','Panowie zobaczcie proszę naszą proformę z załącznika. \r\nA pytanie naszego administratora SAP jest takie:\r\nCzy możemy zmienić w sklepie sposób naliczania VAT w podsumowaniu zamówienia?\r\nCzyli w podsumowaniu zamówienia ceny produktów są PLN netto (Tylko w podsumowaniu zamówienia. W sklepie, przy produktach widzimy 2 ceny: netto i brutto).\r\nNastępnie mamy podsumowanie netto. \r\nKwota VAT \r\nStawka VAT\r\nRazem: brutto',NULL,NULL,1,NULL,1,NULL,9,0,'2017-11-25 14:07:01','2017-11-25 14:07:01','2017-11-25',0,NULL,NULL,123,1,2,0,NULL),(124,2,6,'Звіт Plan rozliczeń międzyokresowych','Звіт Plan rozliczeń międzyokresowych. При формуванні помилка:\r\n{CommonModule.TemplateReports.Module(860)}: Błąd przy wywołaniu metody kontekstu (Next)\r\n                ResultItem = CompositionProcessor.Next();\r\nprzyczyna:\r\nBłąd komponowania danych\r\nprzyczyna:\r\nBłąd pobierania danych\r\nprzyczyna:\r\nWspólne grupowanie wg okresów z innymi wyrażeniami jest zabronione',NULL,NULL,1,NULL,1,NULL,12,0,'2017-12-04 09:37:43','2017-12-04 09:37:43','2017-12-04',0,NULL,NULL,124,1,2,0,NULL),(125,2,6,'Звіт Wiekowanie przeterminowanych płatności.','Звіт Wiekowanie przeterminowanych płatności. Помилка при формуванні:\r\n{CommonModule.TemplateReports.Module(808)}: Błąd przy wywołaniu metody kontekstu (Execute)\r\n                CompositionTemplate = TemplateComposer.Execute(Schema, ReportObject.SettingsComposer.Settings, DetailsData);\r\nprzyczyna:\r\nBłąd komponowania szablonu\r\nprzyczyna:\r\nNie określono wartości parametru \"Okresy należności i zobowiązań\"',NULL,NULL,1,NULL,1,NULL,12,0,'2017-12-04 09:38:00','2017-12-04 09:38:00','2017-12-04',0,NULL,NULL,125,1,2,0,NULL),(126,2,6,'Faktura zaliczkowa','В документах Faktura zaliczkowa zakupu та Faktura zaliczkowa sprzedaży додати можливість заповнення документу (ТЧ) на основі банківського чи касового документу. Зараз працює заповнення тільки тоді, коли на основі банківського чи касового документу генерувати документ zaliczkowу.',NULL,NULL,1,NULL,1,NULL,12,0,'2017-12-04 09:38:28','2017-12-04 09:38:28','2017-12-04',0,NULL,NULL,126,1,2,0,NULL),(127,2,6,'Faktura korygująca ceny sprzedaży ','В документі Faktura korygująca ceny sprzedaży передбачити можливість коректи реквізитів Sposób płatności, Termin płatności, Data płatności. Додати ці ж зміни на друковану форму. При зміні реквізиту Termin płatności на упр формі не здійснюється перерахунок Data płatności.',NULL,NULL,1,NULL,1,NULL,12,0,'2017-12-04 09:39:05','2017-12-04 09:39:05','2017-12-04',0,NULL,NULL,127,1,2,0,NULL),(128,2,6,'Документ Faktura sprzedaży','Документ Faktura sprzedaży. Коли підбираю документ розліченя/банківський на закладці Rozrachunki через кнопку Wybierz, змінювати суму згідно суми фактури. При виборі документа додати нову колонку Opis operacji. Виводити із відповідного реквізиту банківських документів.',NULL,NULL,4,14,1,NULL,12,2,'2017-12-04 09:39:26','2018-01-31 03:03:28','2017-12-04',0,NULL,NULL,128,1,2,0,'2018-01-31 03:03:28'),(129,2,2,'Ścieżka zakupowa','Ścieżka zakupowa\r\nPodproces uwzględnia wszystkie akcje wykonywane na ścieżce zakupowej:\r\n- wybór adresu dostawy\r\n- wybór metodę dostawy\r\n- wybór adresu fakturowego\r\n- wybór metody płatności\r\n- wykorzystanie kodu rabatowego\r\n- dodanie załącznika do zamówienia\r\n- notatka do zamówienia\r\n\r\nStrony podziękowania\r\n[BR037] Strona podziękowania\r\n\r\nWygenerowanie faktury proforma (załącznik pdf do każdego zamówienia). Numer proformy = numer zamówienia\r\n[BR050] Faktura pro forma\r\n\r\nTrustedShops\r\nProces realizowany przez TrustedShops poza systemem e-commerce. Więcej informacji [BR039] TrustedShops\r\n\r\nKomunikacja z klientem\r\nPłatność w Przelewy24 jest możliwa w ciągu 15 minut od inicjalizacji proccesu. Jeżeli klient w tym czasie nie dokona płątności to:\r\n- klient może poprosić o wystawienie nowego linku do płatności - odbywa się to w systemie Przelewy24\r\n- w przypadku dłuższego okresu oczekiwania (zamówienie oczekuje na płatność), administrator może skontaktować się z klientem i przypomnieć mu o zamówieniu i dokonaniu płatności, klient może poprosić o wystawienie nowego linku do płatności, dokonać płatności przelewem tradycyjnym lub zmianić płatność na za pobraniem (ze zmianą kosztów wysyłki)\r\n- zamówienie może być również na tym etapie anulowane\r\n\r\nOznaczenie zamówienia jako opłacone (dotyczy zamówień płatnych zwykłym przelewem, poza systemem Przelewy24.pl)\r\nW oparciu o informację pochodzącą z systemu SAP, należy:\r\n- oznaczyć że dane zamówienie zostało opłacone (bez sprawdzenia czy kwoty wpłat pokrywają się wartością zamówienia, administrator będzie decydował o przesłaniu zamówień do SAP)\r\n- zarejestrować kwotę dokonanych wpłat\r\n- wysłać powiadomienie na adres email klienta, że zamówienie zostało opłacone\r\n- wysłać powiadomienie na adres sklepu, że zamówienie zostało opłacone \r\n(numer zamówienia, wartość zamówienia, kwota wpłacona, data wpłaty)\r\n\r\nFaktura VAT\r\nZ systemu SAP zostanie wysłana faktura VAT \r\n- emailem do klienta\r\n- załacznik pdf oraz sam numer do systemu sklepu\r\n\r\nEmaile\r\n\r\nEmail do klienta z fakturą proforma\r\nPodstawowy szablon wiadomości: New Order lub New Order for Guest\r\n\r\nZałożenia\r\n1. W trakcie obsługi zamówienia po stronie Magento musi być wygenerowana faktura proforma, która będzie wysłana w mailu potwierdzającym przyjęcie zamówienia.\r\n2. w e-commerce każde zamówienie musi posiadać możliwość pobrania zamówienia w xml (plik bedzie importowany do SAP)\r\n3. System SAP całkowicie przejmuje obsługę zamówienia po przekazaniu przez system e-commerce: \r\n4. generuje końcową fakturę VAT\r\n5. wysyła informacje o przesyłce (numer listu przewozowego) z linkiem do systemu trackingowego\r\n6. System SAP przekazuje aktualny status do systemu e-commerce i emailem do klienta\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-06 11:21:04','2017-12-06 11:21:04','2017-12-06',0,NULL,NULL,129,1,2,0,NULL),(130,2,2,'Etykiety produktowe','Wyświetlane etykiety\r\n- Nowość\r\n- Promocja\r\n- Wyprzedaż\r\n\r\nDodatkowe wymagania:\r\n- możliwość jednoczesnego wyświetlenia etykiet Nowość i Promocja\r\n- możliwość jednoczesnego wyświetlenia etykiet Nowość i Wyprzedaż\r\n\r\nMiejsca wyświetlania etykiet:\r\n- bloczek produktowy wyświetlany na: \r\n	a. listingu produktów\r\n	b. wynikach wyszukiwania\r\n	c. rekomendacjach produktowych\r\n- strona produktu\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-06 11:26:10','2017-12-06 11:26:10','2017-12-06',0,NULL,NULL,130,1,2,0,NULL),(131,2,2,'Podgląd produktu','Podgląd produktu\r\n• Galeria obrazów \r\n	-Podgląd aktualnie wybranego obrazka\r\n        -Możliwość wyświetlenia obrazka w powiększeniu (zoom)\r\n	-Wyświetlenie osadzonego video z YouTube lub Vimeo\r\n• Dane o produkcie \r\n	-Nazwa\r\n	-Ocena produktu (wyliczona na podstawie opinii o produkcie) lub link Oceń produkt jako pierwszy\r\n	-Cena\r\n	-Cena promocyjna - ustawiona albo bezpośrednio na produkcie albo wyliczona w oparciu o promocję katalogową\r\n	-Dostępność produktu\r\n	-SKU\r\n	-Pole ilości - pozwala dodać do koszyka więcej niż jedną sztukę produktu\r\n	-Przyciski\r\n• Sekcja zakładek: \r\n	-Opis produktu - wartość zapisana w polu opis\r\n	-Szczegóły produktu - lista atrybutów niepustych (mają ustawioną wartość), które a panelu administratora ustawione są jako widoczne na froncie sklepu. Jeżeli nie ma atrybutów spełniających warunki zakładka nie zostanie wyświetlona.\r\n	-Opinie: \r\n	    -Podgląd wszystkich zaakceptowanych opinii\r\n	    -Formularz pozwalający na dodanie opinii\r\n• Sekcja rekomendacji - [BR005] Rekomendacje produktowe \r\n	-Produkty powiązane\r\n	-Produkty up-sell\r\n\r\nOpcje dedykowane\r\n• Załączniki - [BR016] Załączniki do produktów\r\n• Wyświetlenie przycisku \"Zapytaj o produkt\" - [BR017] Zapytanie o produkt\r\n• Wyświetlenie informacji o terminie wysyłki: \r\n	przed godzina 12: Wysyłka w dniu dzisiejszym\r\n	po godzinie 12: Wysyłka jutro\r\n• Wyświetlenie informacji o stałym koszcie przesyłki na terenie Polski: \"Koszt przesyłki za pobraniem XYZ pln. Koszt przesyłki przedpłaconej XYZ pln.\"\r\n• Wyświetlenie informacji o małej ilości sztuk [BR018] Prezentacja stanów magazynowych\r\n• Wyświetlenie informacji, że informacja o stanie magazynowym dotyczy magazynu głównego w Rydzynie [BR018] Prezentacja stanów magazynowych\r\n• Wyświetlenie informacji o wysyłce towarów, \"Towar dostępny na magazynie wysyłany jest w dni robocze w ciągu 24 godzin\"\r\n• Wyświetlenie informacji o wydłużonym czasie czasie wysyłki dla produktów o statusie \"Na zamówienie\"\r\n\r\nAkcje dostępne na podglądzie produktu\r\n• Dodaj do koszyka - dodaje produkt do koszyka i odświeża mini koszyk\r\n• Dodaj do listy życzeń - dodaje produkt do listy życzeń na koncie klienta. Użytkownik musi być zalogowany w przeciwnym przypadku zostanie przekierowany na stronę logowania\r\n• Dodaj do porównania - dodaje produkt do porównania. W celu porównania produktów klient musi wyświetlić stronę porównywarki\r\n• Email - przekierowuje do formularza pozwalającego na wysłanie linku do produktu pod wskazany adres email\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-06 11:31:21','2017-12-06 11:31:21','2017-12-06',0,NULL,NULL,131,1,2,0,NULL),(132,2,2,'Załączniki do produktów','Do produktu dołączane będą następujące załączniki:\r\n- Karta produktu - dokument PDF\r\nprzykład http://www.sklep.winkhaus.pl/katalogi/katalog_2010/PL_ZO_keyTec_N-tra_DB_2016.pdf\r\n- Certyfikat - dokument PDF\r\nprzykład http://www.sklep.winkhaus.pl/bloki/blok_1/img/KRAJOWA_DEKLARACJA_WLASCIWOSCI_UZYTKOWYCH_Nr_WH_10_WKL(Ntra)_2017.pdf\r\n\r\nWymagania:\r\n- obydwa dokumenty będą dostarczone przez PIM - Hurtownia\r\n- klient sklepu będzie miał możliwość pobrać obydwa dokumenty na podglądzie produktu \r\n- możliwość przypisania w e-commerce karty katalogowej:\r\n> produkt\r\n> grupa produktów\r\n- możliwość przypisania w e-commerce certyfikatu:\r\n> produkt\r\n> grupa produktów\r\n- możliwość przypisania w e-commerce video:\r\n> produkt\r\n> grupa produktów\r\n- możliwość przypisania w e-commerce komentarza (opisu):\r\n> produkt\r\n> grupa produktów\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-06 11:39:08','2017-12-06 11:39:08','2017-12-06',0,NULL,NULL,132,1,2,0,NULL),(133,2,2,'Zapytanie o produkt','Formularz kontaktowy\r\nFormularz kontaktowy wysyłany w kontekście danego produktu (w załączniku)\r\n\r\nZałożenia\r\n- Na podglądzie produktu wyświetlony zostanie przycisk \"Zapytaj o produkt\"\r\n- Formularz kontaktowy będzie wysyłany na wskazany adres email\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-06 11:49:47','2017-12-06 11:49:47','2017-12-06',0,NULL,NULL,133,1,2,0,NULL),(134,2,2,'Stany magazynowe','Na podglądzie produktu stany magazynowe magazynowe będą prezentowane :\r\n-dostępne\r\n-mała ilość - jeżeli ilość produktów na magazynie spadnie do 5 lub mniej wyżwietlony zostanie komunikat \"Mała ilość\"\r\n-na zamówienie - dla tych produktów musi pojawić się informacja o wydłużonym czasie wysyłki [BR013] Podgląd produktu\r\n\r\nNa podglądzie produktu wyświetlone zostaną następujące komunikaty dotyczące stanów magazynowych:\r\n- Stany magazynowe dotyczą magazynu głównego w Rydzynie\r\n\r\nWymagania\r\n-system musi pozwolić na dodawanie do koszyka i składanie zamówień na produkty z zerowym stanem magazynowym (status \"na zamówienie\")\r\n-system musi pozwolić na dodawanie do koszyka i składanie zamówień na produkty z przekroczeniem stanu magazynowego\r\n\r\nPowyższe zamówienia będą obsługiwane indywidualnie w systemie SAP przez dział handlowy.\r\nZamówienia z produktami kupowanych zgodnie z powyższymi wymaganiami, muszą być przedpłacone. \r\nMożliwe metody płatności:\r\n-Przelewy24\r\n-Przelew tradycyjny\r\nBEZ MOŻLIWOŚĆ WYSYLKI ZA POBRANIEM I PŁATNOŚCI GOTÓWKĄ\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-06 11:53:59','2017-12-06 11:53:59','2017-12-06',0,NULL,NULL,134,1,2,0,NULL),(135,2,2,'Porównywanie produktów','Pola dostępne do porównywania\r\n-Nazwa\r\n-SKU\r\n-Opis\r\n-Kolor\r\n-Cena\r\n-Karta katalogowa\r\n-Certyfikat\r\n\r\nAkcje dostępne na stronie porównywania\r\n-Wydruk strony porównania\r\n-Usunięcie produktu z porównywania\r\n-Dodaj do koszyka - dodaje produkt do koszyka i odświeża mini koszyk\r\n-Dodaj do listy życzeń - dodaje produkt do listy życzeń na koncie klienta. Użytkownik musi być zalogowany w przeciwnym przypadku zostanie przekierowany na stronę logowania\r\n-Odnośnik do dodania opinii produktu - przekierowuje do formularza dodawania opinie na stronie produktu\r\n\r\nKonfiguracja Magento\r\nKonfiguracja Magento pozwala na dodanie do porównania pól następującego rodzaju:\r\n-pole tekstowe\r\n-data\r\n-pole logiczne (tak/nie)\r\n-lista wielokrotnego wyboru\r\n-lista jednokrotnego wyboru\r\n-cena\r\n-graficzny wybór opcji produktu - dla produktów konfigurowalnych\r\n-tekstowy wybór opcji produktu - dla produktów konfigurowalnych\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-06 14:23:12','2017-12-06 14:23:12','2017-12-06',0,NULL,NULL,135,1,2,0,NULL),(136,2,2,'Metody dostawy, koszty dostawy, termin dostawy','W systemie dostępne będą następujące metody dostawy:\r\n-kurier DPD - zamówienia wysyłane będą tylko w dni robocze w ciągu 24 godzin \r\n      *dla zamówień przedpłaconych od zaksięgowania wpłaty\r\n      *dla zamówień za pobraniem od złożenia zamówienia\r\n-odbiór osobisty - możliwy tylko w punkcie sprzedaży (w tej chwili działają 3 punkty sprzedaży) \r\nAdres wybranego punktu powinien pokazac się podczas składania zamówienia (żeby klient widział od razu gdzie bedzie musiał pojechać) oraz w potwierdzeniu zamówieniu\r\n      *w przypadku odbioru osobistego jeddyną możliwą metodą płatności będzie gotówka\r\n      *możliwość wyboru jednego z dostępnych punktów odbioru\r\n      *wyświetlenie mapki po wybraniu danego miasta\r\n\r\nDostępność metod dostawy\r\nZe względu na kraj dostępność metod dostawy będzie następująca:\r\n-Polska: kurier DPD i odbiór osobisty\r\n-UE: kurier DPD\r\n',NULL,NULL,1,NULL,1,NULL,9,1,'2017-12-06 14:28:34','2018-01-16 08:07:16','2017-12-06',0,NULL,NULL,136,1,2,0,NULL),(137,2,2,'Metody płatności - w tym Przelewy24.pl','W systemie dostępne będą następujące metody płatności:\r\n-Przelewy24 z informacją że bramka pozwala dokonać płatności kartą kredytową\r\n-Przelew tradycyjny\r\n-Za pobraniem\r\n-Gotówka\r\n\r\nDostępność metod płatności:\r\nW zależności od metody wysyłki i kraju dostępne będą następujące metody płatności: \r\nKraj - Metoda wysyłki -	Metody płatności (dla lepszego obrazu załączam foto)\r\nPolska - kurier DPD - Przelewy24, Przelew tradycyjny, Za pobraniem\r\nPolska - odbiór osobisty - Gotówka\r\nUE - kurier DPD	- Przelewy24, Przelew tradycyjny\r\n\r\nWymagania\r\n-Możliwość ręcznego wyłączenia i ponownego włączenia danej metody płatności\r\n-Zablokowanie metody płatności \"Za pobraniem\" jeżeli klient kupuje produkty aktualnie niedostępne lub z przekroczeniem stanu magazynowego [BR018] Stany magazynowe\r\n',NULL,NULL,5,NULL,1,NULL,9,3,'2017-12-06 14:35:01','2018-01-11 06:33:31','2017-12-06',0,NULL,NULL,137,1,2,0,NULL),(138,2,2,'Ścieżka zakupowa','Ścieżka zakupowa składa się z dwóch kroków:\r\nI.Dostawa \r\n1.Wybór adresu dostawy - [BR023] Książka adresowa\r\n2.Wybór metody dostawy - [BR021] Metody dostawy\r\n3.Podsumowanie zamówienia \r\n-	Lista zamawianych produktów\r\n4.	Komentarz do zamówienia\r\n\r\nII.Podsumowanie i płatność \r\n1.Wybór adresu fakturowego - [BR023] Książka adresowa\r\n2.Wybór metody płatności - [BR022] Metody płatności\r\n3.Komentarz do zamówienia\r\n4.Załącznik do zamówienia\r\n5.Kupon rabatowy - BR027\r\n6.Podsumowanie zamówienia \r\n-Lista zamawianych produktów\r\n-Wartość koszyka\r\n-Koszt dostawy\r\n-adres dostawy\r\n-Metoda dostawy\r\n\r\nDedykowane funkcjonalności\r\nKomentarz do zamówienia\r\nTekst na przycisku potwierdzenia zamówienia: \"*Zamawiam i płacę*\"\r\nMożliwość dodania załącznika do zamówienia\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-06 14:45:51','2017-12-06 14:45:51','2017-12-06',0,NULL,NULL,138,1,2,0,NULL),(139,2,2,'Promocje katalogowe','Promocje i akcje - schemat w załączniku: ,,promocje katalogowe\"\r\n\r\nWarunki\r\nKażdy warunek składa się z:\r\n-Parametrów kombinacji warunków (Parameters for conditions combination): jeżeli WSZYSTKIE/ŻADEN z poniższych warunków jest PRAWDZIWY/FAŁSZYWY (If ALL/ANY of these conditions are TRUE/FALSE)\r\n-Parametru warunku (Condition parameter): Zestaw atrybutów, Kategoria, SKU lub inny atrybut z ustawioną wartość Użyj w regułach promocyjnych (Use for Promo Rule Conditions)\r\n-Operator warunku (condition operator): jest (Is), nie jest (Is not), zawiera (Contains), nie zawiera (Does not contain), jeden z (Is one of), oprócz (Is not one of)\r\n-Wartość warunku (Condition value): pojedyncza wartość lub lista wartości. Dla parametrów systemowych możliwość wybrania wartości.\r\n\r\nZastosowanie reguł promocyjnych:\r\nPo zapisaniu reguły należy ręcznie wymusić aktualizację reguł promocyjnych.\r\n\r\nCeny promocyjne z reguł katalogowych są prezentowane:\r\n-na bloczku produktowym na listingu produktów\r\n-na podglądzie produktu\r\n-w widoku koszyka koszyku\r\n-w podglądzie minikoszyka\r\n-w podsumowaniu zamówienia\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 03:41:15','2017-12-08 03:41:15','2017-12-08',0,NULL,NULL,139,1,2,0,NULL),(140,2,2,'Promocje koszykowe','Opis w załączniku: promocje koszykowe',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 03:49:32','2017-12-08 03:49:32','2017-12-08',0,NULL,NULL,140,1,2,0,NULL),(141,2,2,'Zgody i regulaminy','Zgody na ścieżce zakupowej:\r\nPrzed potwierdzeniem zamówienia klient musi zaakceptować następujące regulaminy oraz poprzedzone poniższym tekstem:\r\n*Informacja do zamówienia nie będąca informacją w rozumieniu Art 5561 §1 pkt 3 KC.*\r\n\r\nMuszą być też wyświetlone punkty obowiązkowe i opcjonalne - do zaznaczenia przez Klienta:\r\n\r\n1. Zapoznałem się i akceptuję regulamin sklepu sklep.winkhaus.pl - czytaj regulamin (link) (pole obowiązkowe)\r\n\r\n2. Oświadczam, że zostałem poinformowany o prawie do odstąpienia od umowy zawartej na odległość w okresie 14 dni od wydania przedmiotu umowy. (pole obowiązkowe) \r\nW przypadku sprzedaży jednego towaru, termin do odstąpienia od umowy wygasa po upływie 14 dni od dnia w którym weszli Państwo w posiadanie rzeczy lub w którym osoba trzecia inna niż przewoźnik i wskazana przez Państwa weszła w posiadanie rzeczy. W przypadku zakupu towarów, które są dostarczane partiami lub w częściach, termin do odstąpienia od umowy wygasa po upływie 14 dni od dnia, w którym weszli Państwo w posiadanie ostatniej partii lub części lub w którym osoba trzecia inna niż przewoźnik i wskazana przez Państwa weszła w posiadanie ostatniej partii lub części. \r\nwzór odstąpienia od umowy (link)\r\n\r\n3. Wyrażam zgodę na wykorzystanie i przetwarzanie moich danych osobowych w celu realizacji zamówienia (zgodnie z przepisami ustawy o ochronie danych osobowych z dnia 29.08.1997). (pole obowiązkowe)\r\n\r\n4. Chcę otrzymywać Newsletter Winkhaus. (opcjonalne)\r\n\r\nKonfiguracja Magento - w załączniku Zgody i regulaminy\r\n\r\n\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 04:29:30','2017-12-08 04:29:30','2017-12-08',0,NULL,NULL,141,1,2,0,NULL),(142,2,2,'Strona podziękowania','Po potwierdzeniu zamówienia, użytkownik zobaczy jedną z następujących stron podziękowania:\r\n-dla płatności przelew tradycyjny\r\n-dla płatności z bramki internetowej i za pobraniem\r\n-dla płatności gotówką i metody dostawy odbiór osobisty\r\n\r\nBramka internetowa i Za pobraniem\r\nStrona wyświetlana po przekierowaniu z bramki internetowej lub PayPala.\r\n-Numer zamówienia \r\n	*dla użytkownika niezalogowanego jako tekst\r\n        *dla użytkownika zalogowanego jako link do zamówienia w panelu klienta\r\n-Wartość zamówienia\r\n-Tekst informacyjny o przesłaniu emaila z potwierdzeniem przyjęcia zamówienia i maila do sytemu trackingowego kuriera.\r\n-Zabezpiecz zakup z TrustedShops BR039\r\n\r\nPrzelew tradycyjny\r\nStrona wyświetlana po potwierdzeniu zamówienia na ścieżce zakupowej jeżeli metoda płatności była Przelew tradycyjny.\r\n-Numer zamówienia\r\n-Dane do przelewu: \r\n*Adresat\r\n*Numer konta - początek konta wyznaczony jest przez bank, ostatnie 12 znaków przeznaczone będą na zapisanie numeru zamówienia z wyliczeniem sumy kontrolnej\r\n*Kwota zamówienia\r\n*Tytuł: nr zamówienia\r\n\r\nNumer konta!!!!\r\nStruktura ostatnich 12 znaków:\r\n-\"1\"\r\n-odpowiednia do uzupełnienia pełnego numeru konta liczba \"0\"\r\n-numer zamówienia\r\n\r\nPłatność gotówką i odbiór osobisty\r\n-Numer zamówienia\r\n-Kwota zamówienia\r\n-Dane punktu sprzedaży: \r\n*adres wybranego punktu\r\n*telefon\r\n*e-mail\r\n*godziny otwarcia\r\n\r\nDo przemyślenia\r\n1. Czy może być jedna strona podziękowania dla bramki internetowej, PayPala oraz Za pobraniem czy będą prezentowane na nich różne informacje. (RÓŻNE)\r\n2. Czy prezentować oddzielną stronę podziękowania dla metody dostawy odbiór osobisty z adresem punktu sprzedaży. Metoda płatności w tej sytuacji zawsze będzie za pobraniem lub potrzebna będzie oddzielna metoda płatności - gotówka. Klient w punkcie sprzedaży płaci gotówką. (RÓŻNE STRONY PODZIĘKOWANIA, ŻEBY DANE NA STRONIE PODZIĘKOWANIA ZGADZAŁY SIĘ Z ZAMÓWIENIEM)\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 04:54:02','2017-12-08 04:54:02','2017-12-08',0,NULL,NULL,142,1,2,0,NULL),(143,2,2,'Galeria zdjęć','Panel administratora:\r\nMagento pozwala na zarządzanie mediami (obrazki i video) w widoku produktu.\r\n\r\nRole obrazków:\r\nDla każdego produktu należy ustawić obrazki: Base image, Small Image, Thumbnail. Obrazki mogą być w wyższej rozdzielczości, na potrzeby konkretnych zastosowań zostaną odpowiednio przeskalowane.\r\n\r\nDla linków z portalu YouTube administrator musi podać klucz API. Opcja ta jest dostępna w Stores -> Configuration -> Catalog -> Catalog -> Product Video.\r\n\r\nMożliwość przypisania jednego zdjęcia lub video do wybranej grupy produktów. \r\n\r\nszczegóły w załączniku: galeria zdjęć',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 04:58:39','2017-12-08 04:58:39','2017-12-08',0,NULL,NULL,143,1,2,0,NULL),(144,2,2,'Zarządzanie produktami','Szczegółowy opis w załączniku: zarządzanie produktami. \r\n\r\nWażna funkcja: \r\nMożliwość dodania nowego produktu na poziomie e-commerce (produkt nie jest dostępny w SAP i nie będzie go na liście importowej). \r\nObecnie w sklepie mamy 7 takich produktów (może będzie ich więcej)\r\nWażne, żeby po każdej aktualizacji sklepu produkty nadal były dostępne - żeby aktualizacja z SAP nie kasowała ręcznie wprowadzonych produktów.\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 05:59:57','2017-12-08 05:59:57','2017-12-08',0,NULL,NULL,144,1,2,0,NULL),(145,2,2,'Zarządzanie kategoriami','szczegóły w załączniku: Zarządzanie kategoriami\r\n\r\nKategorie produktów wraz z opisami produktów będą pobrane z naszej hurtowni - struktura w xml\r\n\r\nWażne w tym punkcie jest SEO - dostosowanie do pozycjonowania. \r\nWspółpracujemy z agencją, która dba o odpowiedni dobór słów kluczowych i kampanie reklamowe. \r\nPo zakończeniu prac nad nowym sklepem - agencja przeprowadzi audyt sklepu i wskaże ewentualne uwagi. \r\nTrzeba będzie je uwzględnić i nanieść poprawki. \r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 06:07:27','2017-12-08 06:07:27','2017-12-08',0,NULL,NULL,145,1,2,0,NULL),(146,2,2,'Zarządzanie zamówieniami','szczegóły w załączniku: Zarządzanie zamówieniami\r\n\r\nFaktury do zamówień są wystawiane w SAP. \r\n\r\nW magento - w zamówieniach powinno znaleźć się pole: \r\nnumer faktury\r\nfaktura w pdf (zaimportowana z SAP)\r\nkod transakcji przelewu online\r\nnumer listu przewozowego\r\nstatusy zamówienia wg dat/godzin zmiany\r\nwiadomości wysłane do klienta z e-commerce\r\nwartość zamówienia\r\notrzymana wpłata (dotyczy wpłat zwykłym przelewem: pole wypełnia nasza księgowość - automatyczne księgowanie wpłat z SAP. \r\n\r\nWyszukiwanie zamówień w e-commerce: \r\nnumer zamówienia\r\nnazwa firmy\r\nnazwisko\r\nNIP\r\nemail\r\nnumer faktury SAP\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 06:47:24','2017-12-08 06:47:24','2017-12-08',0,NULL,NULL,146,1,2,0,NULL),(147,2,2,'Faktura pro forma','szczegóły w załączniku: Faktura pro forma\r\nWzór proformy w załączniku: proforma sklep winkhaus\r\n\r\nNumer zamówienia jest jednocześnie numerem faktury pro forma.\r\n\r\n\r\nNa proformie widoczne musi być informacja:\r\nPaństwa znak zamówienia\r\nES:0812201711359\r\n\r\nwyjaśnienie\r\nES: - stała\r\n0812201711359 - numer zamówienia/proformy\r\n\r\nNumer zlecenia - 0812201711359 (to też numer zamówienia)\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 07:07:13','2017-12-08 07:07:13','2017-12-08',0,NULL,NULL,147,1,2,0,NULL),(148,2,2,'Powiadomienia mailowe','szczegóły w załączniku: Powiadomienia mailowe',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 07:14:59','2017-12-08 07:14:59','2017-12-08',0,NULL,NULL,148,1,2,0,NULL),(149,2,2,'SEO','Dla każdego:\r\n-produktu\r\n-kategorii\r\n-strony CMS\r\n\r\nMagento pozwala na ustawienie danych meta:\r\n-tytuł\r\n-słowa kluczowe\r\n-opis\r\n\r\nFunkcjonalność dedykowana\r\n-Dla kategorii oprócz standardowych atrybutów SEO powinna być również możliwość edycji nagłówka H1.\r\n-W standardzie Magento nagłówek ten jest generowany domyślnie w oparciu o nazwę kategorii.\r\n-W przypadku gdy nagłówek H1 nie będzie miał wartości powinien być wygenerowany w sposób standardowy.\r\n\r\n',NULL,NULL,6,NULL,1,NULL,9,3,'2017-12-08 07:17:25','2018-01-03 05:54:12','2017-12-08',0,NULL,NULL,149,1,2,0,NULL),(150,2,2,'Raporty','Lista standardowych raportów Magento\r\n\r\nMarketing\r\n-Products in cart - wszystkie produkty, które aktualnie są w koszykach klientów\r\n-Search terms - hasła wpisywane w wyszukiwarce sklepu\r\n-Abandoned carts - wszystkie produkty w koszykach  all products currently in shopping carts where user are not currently logged and cart is not expired.\r\n-Newsletter Problem Reports - lista kolejek newslettera, których wysłanie skończyło się niepowodzeniem\r\n\r\nRecenzje (Reviews)\r\n-By Customers - liczba recenzji dodanych przez zarejesrtowanych klientów\r\n-By Products - liczba recenzji dla poszczególnych produktów z uwzględnia recenzje dodane zarówno przez zarejestrowanych jak i niezarejestrowanych klientów\r\n\r\nSprzedaż (Sales)\r\n-Orders - lista wszystkich zamówień złożonych w sklepie z możliwością filtrowania wg przedziału czasowego czy statusu\r\n-Tax - raport uwzględnia reguły podatkowe, stawki podatku liczbę zamówień oraz wartość naliczonego podatku\r\n-Invoiced - wartość wystawionych, opłaconych i nieopłaconych faktur\r\n-Shipping - liczba i wartość wysłanych zamówień z podziałem na metody dostawy\r\n-Refunds - liczba i wartość zwrotów zamówień\r\n-Coupons - liczba użycia z kodów rabatowych z wartościami zamówień i naliczonych rabatów\r\n-Paypal Settlement, Braintree Settlement - lista wydarzeń powiązanych z transakcjami\r\n\r\nKlienci (Customers)\r\n-Order Total - pokazuje liczbę zamówień dokonanych przez danego klienta, średnią wartość zamówienia oraz całkowitą wartość zamówień\r\n-Order Count - pokazuje liczbę zamówień w zadanych okresach\r\n-New - pokazuje liczbę nowych kont klientów w zadanym okresie\r\n\r\nProdukty (Products)\r\n-Views - pokazuje liczbę wyświetleń produktów w zadanym okresie\r\n-Bestsellers - pokazuje pięć najlepiej sprzedających się produktów w zadanym okresie\r\n-Low stock - pokazuje wszystkie produkty ze stanami magazynowymi poniżej zadanych wartości\r\n-Ordered - pokazuje nazwę i ilość zamówionych produktów w zadanym okresie\r\n-Downloads - lista wszystkich ściągnięć produktów w zadanym okresie\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 07:20:21','2017-12-08 07:20:21','2017-12-08',0,NULL,NULL,150,1,2,0,NULL),(151,2,2,'Waluty','Założenia\r\n\r\nWszystkie kwoty\r\n-ceny produktów\r\n-koszty wysyłki\r\nbędą prezentowane w 3 walutach PLN, EUR i CZK (wersja językowa/walutowa do wyboru klienta)\r\nCenniki przychodzące z systemu SAP są w EUR.\r\nDla sklepu w PLN przeliczenie na PLN odbywa się w e-commerce na podstawie ręcznie wpisanego kursu EUR\r\n\r\nTabele kosztów dostawy wyrażone są w PLN, EUR i CZK.\r\n\r\nKonfiguracja Magento\r\nWaluty\r\nW opcjach konfiguracyjnych\r\nStores -> Configuration -> General -> Currency Setup -> Currency Options\r\n\r\nMagento pozwala na ustawienie\r\n-waluty podstawowej (Base currency) - wykorzystywanej we wszystkich płatnościach online\r\n-podstawowej waluty wyświetlanych cen (DEfault Display Currency)\r\n-walut dostępnych w sklepie\r\n-możliwość ustawienia harmonogramu aktualizacji kursów walut przy pomocy jednej z usług \r\n-Yahoo Finance Exchange\r\n-Fixer.io\r\n-Webservicex\r\n\r\nSymbole walut\r\nDla każdej włączonej waluty administrator może ustawić symbol waluty.\r\nStores -> Currency Symbols\r\n\r\nRęczna aktualizacja kursu EUR dla wyświetlania cen w wersji PL!!!!\r\n\r\nAdministrator Magento ma możliwość ręcznie wykonać następujące akcje\r\n-wymusić pobranie aktualnych kursów walut z wymienionych powyżej usług\r\n-ustalić kurs waluty w stosunku do waluty bazowej (waluty cennika)\r\n',NULL,NULL,1,NULL,1,NULL,9,1,'2017-12-08 07:27:26','2018-01-16 07:15:32','2017-12-08',0,NULL,NULL,151,1,2,0,NULL),(152,2,2,'Import/eksport danych','Eksport dedykowany:\r\n-Ceneo - wyeksportowanie danych o produktach w formacie XML możliwym do zaimportowania w Ceneo \r\n-Google Merchant Manager - wyeksportowanie danych o produktach w formacie XML możliwym do zaimportowania w Google Merchant Manager\r\n-baza firm serwisowo-montażowych \r\n-baza firm dystrybutorów zabezpieczeń\r\n\r\nEksport bez możliwości dostosowania\r\nAdministrator Magento może wyeksportować następujące pliki bez możliwości ingerencji w strukturę plików przed eksportem.\r\n•	Zamówienia (Orders) - export orders.csv\r\n•	Faktury (Invoices) - export invoices.csv\r\n•	Wysyłki (Shipments) - export shipments.csv\r\n•	Noty kredytowe (Credit memos) - export credit memos.csv\r\n•	Klienci (Customers) - export customers.csv\r\n•	Subskrybenci newslettera (Subscribers) - subscribers.csv\r\n•	Synonimy (Synonyms) - export synonyms.csv\r\n•	Stawki podatkowe (Tax rates) - tax_rates.csv\r\n\r\nEksport z możliwością dostosowania\r\nAdministrator Magento może wyeksportować poniższe pliki z możliwością ingerencji w strukturę plików. \r\nAdministrator może wybrać jakie pola zostaną wykluczone z pliku. \r\nAdministrator nie ma możliwości zapisu szablonu eksportu dla tych plików, więc dostosowaniu musi zostać powtórzone przed każdym eksportem.\r\n•	Poziomy cenowe (Advanced pricing) - advanced_pricing_20170130_144925.csv\r\n•	Produkty (Products) - catalog_product_20170130_143914.csv\r\n•	Podstawowe dane klientów (Customers main file) - customer_20170130_144200.csv\r\n•	Dane adresowe klientów (Customer address file) - customer_address_20170130_144432.csv\r\n\r\nImport\r\n•	Advanced pricing\r\n•	Produkty (Products)\r\n•	Podstawowe dane klientów i dane adresowe (Customers and Addresses (single file) \r\n•	Podstawowe dane klientów (Customers main file)\r\n•	Dane adresowe klientów (Customer address file)\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 07:31:23','2017-12-08 07:31:23','2017-12-08',0,NULL,NULL,152,1,2,0,NULL),(153,2,2,'Integracje','ERP\r\n\r\nSystem SAP\r\n1. Cenniki \r\n-cennik detaliczny\r\n-cennik hurtowy\r\n-dedykowane cenniki klientów z SAP\r\n\r\n2. Stany magazynowe - per produkt, bez rozróżnienia na grupy klientów\r\n\r\n3. Dane klientów \r\n-z SAP do e-commerce  - przesyłane są tylko konta klientów założonych w SAP (łącznie z loginem i hasłem)\r\n-z e-commerce do SAP - nie będą przesyłane żadne dane\r\n\r\n4.Zamówienia \r\n-z e-commerce do SAP - zamówienia będa wysyłane do systemu SAP na żądanie administratora (po zweryfikowaniu czy zamówienie zostało opłacone odpowiednia kwotą). Po przekazaniu do systemu SAP reszta obsługi zamówienia będzie prowadzona w tym systemie.\r\n-z SAP do e-commerce - przekazywane będa następujące informacje: \r\n-aktualny status zamówienia i zmiana statusu w Magento\r\n-zaksiegowanie wpłaty - zwykły przelew\r\n-plik pdf z fakturą VAT + numer faktury\r\n-numer listu przewozowego\r\n-w przypadku zwrotów/reklamacji informacja o wystawieniu faktury korygującej do zamówienia/faktury\r\n\r\nZałożenia\r\nDane klientów zarejestrowanych w e-commerce nie będą wysylane do systemu SAP.\r\n\r\nOpis bieżącego rozwiązania\r\nAktualnie system SAP wysyła dane do pośredniczącego systemu bazodanowego (tabele MySQL). Eksport danych z SAP do systemu pośredniczącego odbywa się 3 razy dziennie (o godzinie 8, 11 i 14). Do sklepu e-commerce dane są importowane na żądanie.\r\n\r\nPIM\r\nRole PIM pełni oprogramowanie Hurtownia.\r\n\r\nDane pochodzące z tego systemu to:\r\n-Numer SAP\r\n-Nazwa SAP\r\n-Kategorie\r\n-Kolor\r\n-Opis\r\n-Strona katalogowa - plik PDF\r\n-Link do certyfikatu\r\n-Kategoria CENEO\r\n-Eksport CENEO\r\n-Kategoria Google Merchant Center\r\n-Eksport Google Merchant Center\r\n-blokada dla wysyłek zagranicznych (dla produktów dłuższych niż 1,85 m)\r\n-informacja czy produkt ma być wyświetlony sklepie/czy jest to tylko produkt dla WH OKNA\r\n\r\nPłatności\r\nIntegracja z bramką płatności Przelewy24.pl\r\n\r\n\r\nAnalityka:\r\n\r\nSkrypty analityczne\r\nIntegracja z Google Analytics będzie polegała na umieszczeniu kodu do GA.\r\nNa stronach e-commerce powinny zostać umieszczone kody do:\r\n-Google Analytics\r\n-Google Search Console\r\n-Google Tag Manager\r\n-Google AdWords\r\n-Google Merchant Center\r\n\r\nInne\r\nTrustedShops\r\nWymagania opisane w [BR039] TrustedShops\r\n\r\nWH Okna\r\nSystem e-commerce świadczy usługę na rzecz aplikacji WH Okna. Polega ona na tym, że aplikacja WH Okna wywołuje link pod którym wyświetlony jest odpowiednio dostosowany podgląd produktu z następującymi danymi:\r\n-Nazwa produktu\r\n-SKU\r\n-Kolor\r\n-Jednostka\r\n-W opakowaniu\r\n-Link do karty katalogowej\r\n-Link do pliku certyfikatu\r\n-Opis produktu\r\n-Zdjęcie główne\r\n-Plik video\r\n\r\nZałożenia dla WH Okna\r\n1.W sklepie e-commerce powinny znaleźć się produkty, które nie będą widoczne w katalogu produktów. Będą one dostępne tylko do prezentacji w aplikacji WH Okna.\r\n2.Początkowo w aplikacji WH Okna prezentowane będą tylko dane w języku polski.\r\n3.Docelowo w aplikacji WH Okna prezentowane będą dane również w językach: angielskim, czeskim, niemieckim, rosyjskim, słowackim i ukraińskim.\r\n4.Strona produktu dla WH Okna powinna uwzględniać RWD.\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2017-12-08 07:43:43','2017-12-08 07:43:43','2017-12-08',0,NULL,NULL,153,1,2,0,NULL),(154,2,2,'Migracje','Dane klientów\r\nZ bieżącego systemu e-commerce muszą zostać zmigrowane:\r\n1. dane podstawowe: \r\n-imię\r\n-nazwisko\r\n-login - jeżeli jest jednoznaczny z adresem email, w przeciwnym przypadku login zostanie adres email\r\n-hasło\r\n2. dane adresowe - wszystkie adresy z książki adresowej\r\n\r\nZamówienia\r\nZamówienia z bieżącego systemu e-commerce nie będą migrowane do Magento.\r\n\r\nDane produktów\r\nDane produktów zostaną zaimportowane z systemu Hurtownia w ramach integracji.\r\nZdjęcia produktów zostaną zmigrowane z bieżącego serwera. \r\nNazwy obrazków produktów złożone są z numeru SKU. \r\nJeżeli dla danego produktu jest więcej niż jedno zdjęcie, to zdjęcia będą miały nazwy \"SKU_1\", \"SKU_2\" itd.\r\n\r\nCenniki\r\nCenniki zostaną zaimportowane z systemu SAP w ramach integracji.\r\n\r\nStany magazynowe\r\nStany magazynowe zostaną zaimportowane z systemu SAP w ramach integracji.\r\n\r\nCMS\r\nZ bieżącego sklepu e-commerce do Magento muszą zostać przeniesione następujące strony CMS:\r\n-Baza firm serwisowo-montażowych - [BR035] Baza firm serwisowo-montażowych\r\n-Baza dystrybutorów - [BR036] Baza dystrybutorów systemów zabezpieczeń\r\n-Poradniki z zakładki ABC porady i informacje http://sklep.winkhaus.pl/pl/abc_porady_i_informacje.html\r\n-Strona wkładki identycznie kodowane http://sklep.winkhaus.pl/pl/informacje/master_key/wkladki_identycznie_kodowane_jeden_klucz.html\r\n-Strona o systemach Master Key http://sklep.winkhaus.pl/pl/shop/produkty_do_drzwi/systemy_klucza_master_key.html\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,1,'2017-12-08 07:46:18','2017-12-19 04:47:17','2017-12-08',0,NULL,NULL,154,1,2,0,NULL),(155,2,6,'Друкована форма WZ','В друкованій формі PrintoutSalesDelivery додати опис позиції та код позиції інтрастат. Принцип той же, що і в документі PrintoutSalesInvoice. ',NULL,NULL,4,14,1,NULL,12,1,'2017-12-13 07:02:45','2017-12-13 16:21:07','2017-12-13',0,NULL,NULL,155,1,2,0,'2017-12-13 16:21:07'),(156,2,6,'FADD','довідник Predefined elements. додати новий предопред елемент Prefiks dla detalu  (додати нову папку Dla Faktura sprzedaży). Пристворенні документу Faktura sprzedaży на основі документу  Sprzedaż detaliczna, в перший документ по замовчуванню підставляти префікс із нового предопред. елементу. Ігнорувати доробку, де префікс підставляється із налаштувань користувача. ',NULL,NULL,4,14,1,NULL,12,1,'2017-12-13 10:03:27','2018-01-31 03:03:11','2017-12-13',0,NULL,NULL,156,1,2,0,'2018-01-31 03:03:11'),(157,2,6,'Документ Faktura korygująca ceny sprzedaży','В документі Faktura korygująca ceny sprzedaży в упр формі додати закладку Wiersze VAT (по прикладу звичайної форми). Реквізити такі ж і заповнення теж. ',NULL,NULL,4,NULL,1,NULL,12,1,'2017-12-13 16:48:23','2018-01-31 03:05:37','2017-12-13',0,NULL,NULL,157,1,2,0,'2018-01-31 03:05:37'),(158,2,2,'ukryte ceny na blueCompact - nie wdrażamy','na spotkaniu rozmawialiśmy o funkcji ukrywania cen na produkty blueCompact:\r\nhttps://sklep.winkhaus.pl/pl/shop/produkty_do_drzwi/systemy_klucza_master_key/wkladki_elektroniczne_bluecompact_bo_master_key/dwustronne_bluecompact_typ_bo_01_do_drzwi_wewnetrznych_master_key.html\r\n\r\nWłaśnie mam nową decyzję w tej sprawie - rezygnujemy z tej funkcji, nie będziemy jej wdrażać w nowym sklepie! Wszystkie ceny mają być widoczne!\r\nPrzekazuję jeszcze ,,gorącą\"  informację, żeby mógł Pan szybko zareagować i wstrzymać prace nad tym zadaniem. ',NULL,NULL,6,NULL,1,NULL,9,2,'2017-12-19 04:59:48','2017-12-20 04:37:55','2017-12-19',0,NULL,NULL,158,1,2,0,NULL),(159,2,2,'Magento Admin - wyszukiwanie klientów ','Nie działa wyszukiwanie klientów w panelu administracyjnym - szukałam po adresie  email i NIP - nie działa\r\n\r\nWyszukiwanie klientów powinno działać na:\r\n- adres email\r\n- imie i nazwisko\r\n- nazwa firmy (może byc niepelna)\r\n- NIP\r\n- telefon\r\n',NULL,NULL,5,NULL,1,NULL,9,7,'2018-01-11 09:38:28','2018-01-15 04:39:52','2018-01-11',0,NULL,NULL,159,1,2,0,NULL),(161,2,2,'plik XML zamówienie','W załączeniu plik xml z zamówieniem - plik poprawiony i przygotowany przez naszego specjalistę od SAP p. Jacka Nawrockiego.\r\nProszę o sprawdzenie czy wszystko się zgadza, czy coś trzeba poprawić, zmienić, dodać... \r\n\r\n<SapID> </SapID>\r\nDotyczy numerów klienta: \r\n2000714 - zamówienia w PLN - klienci detaliczni \r\n2000755 - zamówienia w PLN - klienci hurtowni (rejestracja hurtowni)\r\n2000713 - zamówienia w CZK \r\n2000780 - zamówienia w EUR\r\nxxxxxxx - klienci SAP - indywidualne numery\r\n \r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2018-01-17 07:15:18','2018-01-17 07:15:18','2018-01-17',0,NULL,NULL,161,1,2,0,NULL),(162,2,2,'BLOG','1. Czy jest to jedyny dostępny szablon? Może jest też układ w 2 kolumnach - Większe zdjęcia?\r\n2. Komentarze poprzez FB i rejestrację. \r\n3. Data publikacji - nie można ustawić i opublikować\r\n4. Gdzie edytuje się media społecznościowe - widoczne przy postach?',NULL,NULL,1,NULL,1,NULL,9,0,'2018-01-17 12:30:03','2018-01-17 12:30:03','2018-01-17',0,NULL,NULL,162,1,2,0,NULL),(163,2,2,'Numery kont bankowych  na fakturze proforma','1. Numery kont bankowych powinny być edytowalne w Magento-admin. \r\n2. Odpowiednie numery kont powinny być na fakturach proforma.\r\n\r\nWaluta PLN dla:\r\n\r\nkonto klienta 2000714 (klienci detaliczni)\r\n\r\nOddział Korporacyjny Poznań\r\nmBank S.A.\r\nul. Półwiejska 42\r\n61-888 Poznań\r\nPolska\r\nSWIFT: BREXPLPWPOZ \r\nIBAN: PL43 1140 1124 3458 0000 0200 0714\r\n\r\n\r\nkonto klienta 2000755 (klienci hurtowi)\r\n\r\nOddział Korporacyjny Poznań\r\nmBank S.A.\r\nul. Półwiejska 42\r\n61-888 Poznań\r\nPolska\r\nSWIFT: BREXPLPWPOZ \r\nIBAN: PL43 1140 1124 3458 0000 0200 0755 \r\n\r\n\r\n\r\nWaluta EUR dla klientów zagranicznych \r\n\r\nkonto dla klientów: 2000780 (klienci detaliczni i hurtowi)\r\n\r\nBank Handlowy SA o/Poznań\r\npl. Wolności 4\r\n61-738 Poznań\r\nPolska\r\nSWIFT: CITIPLPX\r\nIBAN: PL51 1030 1986 5068 9003 1200 0780\r\n\r\n\r\nWaluta CZK dla klientów zagranicznych \r\n\r\nkonto dla klientów: 2000713 (klienci detaliczni i hurtowi)\r\n\r\nCommerzbank Praga\r\nJugoslávská 934/1\r\n120 00 Prague 2\r\nCzech Republic\r\nAccount Number domestic payments: CZK 10654083\r\nBank Code domestic payments CZK: 6200\r\nBIC: COBACZPXXXX / COBACZPX\r\nIBAN CZK: CZ96 6200 0062 1800 1065 4083\r\n\r\n\r\n',NULL,NULL,1,NULL,1,NULL,9,1,'2018-01-23 10:33:18','2018-01-24 04:47:26','2018-01-23',0,NULL,NULL,163,1,2,0,NULL),(164,2,2,'Projekt graficzny sklepu','Mamy nowy projekt graficzny sklepu - zaakceptowany przez marketing w Polsce i Niemczech. \r\nMożemy go wdrażać i szykować pod RWD.\r\n\r\ntutaj: https://ibb.co/hror6w\r\n',NULL,NULL,1,NULL,1,NULL,9,0,'2018-01-24 05:39:35','2018-01-24 05:39:35','2018-01-24',0,NULL,NULL,164,1,2,0,NULL),(165,2,6,'Документ Faktura sprzedaży.','Документ Faktura sprzedaży. Закладка Rozrachunki. Додати можливість вибору документу Faktura korygująca ceny sprzedaży. Механізм такий же, як і вибір банківських/касових документів (кнопка Wybierz). Також можна документ додати через кнопку Dodaj (розділ Rozliczenie zapłaty). Коли вказаний документ розрахунку - система генерує записи по РН Rozrachunki z kontrahentami. Необхідно також генерувати запис до РН (по прикладу банківских документів), єдине що вид Typ rozrachunków має бути змінений на Rozrachunki z nabywcami. І змінений документ на Faktura korygująca ceny sprzedaży (відповідний реквізит).',NULL,NULL,1,NULL,2,NULL,12,0,'2018-01-31 03:07:34','2018-01-31 03:07:34','2018-01-31',0,NULL,NULL,165,1,2,0,NULL),(166,2,6,'докyмент Dowód księgowy','При зміні дати в документі підстави, нумерація докyменту Dowód księgowy має змінюватись автоматично. ',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 03:08:13','2018-01-31 03:08:13','2018-01-31',0,NULL,NULL,166,1,2,0,NULL),(167,2,6,'документи Faktura zaliczkowa zakupu та Faktura zaliczkowa sprzedaży','В документах Faktura zaliczkowa zakupu та Faktura zaliczkowa sprzedaży додати можливість заповнення документу (ТЧ) на основі банківського чи касового документу. Зараз працює заповнення тільки тоді, коли на основі банківського чи касового документу генерувати документ zaliczkowу.							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:16:18','2018-01-31 06:16:18','2018-01-31',0,NULL,NULL,167,1,2,0,NULL),(168,2,6,'Документ Kompletacja','Документ Kompletacja. Реквізит Jednostka okienna. Відкривати видимість, якщо ввімкнена константа Używaj WH. 							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:17:18','2018-01-31 06:17:18','2018-01-31',0,NULL,NULL,168,1,2,0,NULL),(169,2,6,'Запис по РН Transakcje zapasów.','Документ Przyjęcie zewnętrzne zakupu. Запис по РН Transakcje zapasów. Ввімкнена константа Użyj kilka magazynów. Якщо склад вказаний лише в шапці, і не вказаний і ТЧ - не записується склад до РН. Поправити. Якщо є в ТЧ склад - тоді з ТЧ. Якщо немає - тоді з шапки. 							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:23:26','2018-01-31 06:23:26','2018-01-31',0,NULL,NULL,169,1,2,0,NULL),(170,2,6,'Документ Przyjęcie zewnętrzne zakupu.','Документ Przyjęcie zewnętrzne zakupu. Вид операції без Bez podstawy. Курс для розрахунку колонок в валюті крайовій брати із документу. 							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:23:46','2018-01-31 06:23:46','2018-01-31',0,NULL,NULL,170,1,2,0,NULL),(171,2,6,'документ Faktura sprzedaży','Коли створюємо на основі документу Sprzedaż detaliczna документ Faktura sprzedaży, в останньому необхідно заповнювати реквізит Data sprzedaży, який знаходиться на закладці Ogólne. Data sprzedaży  - то дата документу Sprzedaż detaliczna (без годин),							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:24:08','2018-01-31 06:24:08','2018-01-31',0,NULL,NULL,171,1,2,0,NULL),(172,2,6,'Звіт Zestawienie sald i obrotów na kontach.','Звіт Zestawienie sald i obrotów na koncie. Додати ще один такий же звіт, тільки щоб він формувався без відбору по рахунку. Назвати звіт Zestawienie sald i obrotów na kontach. Відкрити для ролі Role_Bookkeeper та Role_Bookkeeper_ReadOnly. Додати в інтерфейс Księga główna в два інтерфейси. Звіт також має формуватись в 2 інтерфейсах. 							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:24:35','2018-01-31 06:24:35','2018-01-31',0,NULL,NULL,172,1,2,0,NULL),(173,2,6,'Plan kont \"Księgowość\"','\"Plan kont \"\"Księgowość\"\", кнопка Analiza użycia konto в счете. \r\n{DataProcessor.AnalyzesUsingAccount.ObjectModule(228)}: Błąd przy wywołaniu metody kontekstu (ExecuteBatch)\r\n        Results = Query.ExecuteBatch();\r\nprzyczyna:\r\n{(224, 14)}: Pole nie zostało znalezione \"\"Departments.IsFolder\"\"\r\nDepartments.<<?>>IsFolder = FALSE\"							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:25:00','2018-01-31 06:25:00','2018-01-31',0,NULL,NULL,173,1,2,0,NULL),(174,2,6,'Емпол/ЛС','В Plan kont \"Księgowość\" до рахунку додати можливість формування звіту Salda i obroty kont із фільтром по рахунку. Групування: Konto, Analityka 1, Recorder. 							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:25:43','2018-01-31 06:25:43','2018-01-31',0,NULL,NULL,174,1,2,0,NULL),(175,2,6,'справочник sposobу płatności','\"справочник sposobу płatności\r\n{Catalog.PaymentMethods.Form.ItemForm.Form(149)}: Błąd przy wywołaniu metody kontekstu (Write)\r\n   Record.Write(True);\r\nprzyczyna:\r\nNie udało się zapisać: \"\"Szczegóły sposobu płatności\"\"!\r\nсоздает элемент, но выдает ошибку\"							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:28:59','2018-01-31 06:28:59','2018-01-31',0,NULL,NULL,175,1,2,0,NULL),(176,2,6,'Catalog.Currencies','\"{Catalog.Currencies.Form.ItemForm.Form(80)}: Błąd przy określaniu wartości atrybutu kontekstu (FormatStringPLIntegerGender)\r\n   FormatStringPLIntegerGender = Items.FormatStringPLIntegerGender.ChoiceList[0];\r\nprzyczyna:\r\nTyp \"\"ValueListItem\"\" nie może być używany w danych formularza\r\nCatalog.Currencies . добавила новую валюту. Открыть новый элемент не могу.\"							',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:29:14','2018-01-31 06:29:14','2018-01-31',0,NULL,NULL,176,1,2,0,NULL),(177,2,6,'ВАТ в національній валюті','\"В документі Ustawienie polityki rachunkowości (і відповідному регістрі) додати ознаку \"\"ВАТ в національній валюті\"\" (VAT w walucie krajowej), Тип Булево. При ввімкненому налаштуванні необхідно змінити записи по РН Rozrachunki z kontrahentami в документі Faktura sprzedaży. Яка суть: якщо валюта, не злотий, формувати 2 записи по РН. Один запис - сума в валюті, другий - сума ВАТ в злотих. Крім того, в формі підбору документів розрахунку (закладка Rozrachunki), при ввімкненому налаштуванні, прибрати контроль по валюті. Аналогічні зміни по контролю валюти необхідно зробити в документі Przelew wchodzący. \r\nАналогічні зміни мають бути в документі Faktura zakupu,  Faktura korygująca ceny sprzedaży, Faktura korygująca zakupu та Przelew wychodzący. \r\n\"							',NULL,NULL,1,NULL,2,NULL,12,0,'2018-01-31 06:30:45','2018-01-31 06:30:45','2018-01-31',0,NULL,NULL,177,1,2,0,NULL),(178,2,7,'Обмін з ВХ','Підключити ще одну систему ВХ по дерев\'яним вікнам. Налаштувати автоматичний обмін з двома системами ВХокна, та з однією системою ВХнет. ',NULL,NULL,1,NULL,1,NULL,12,0,'2018-01-31 06:40:54','2018-01-31 06:40:54','2018-01-31',0,NULL,NULL,178,1,2,0,NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(30) NOT NULL DEFAULT '',
  `old_value` mediumtext,
  `value` mediumtext,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_details`
--

LOCK TABLES `journal_details` WRITE;
/*!40000 ALTER TABLE `journal_details` DISABLE KEYS */;
INSERT INTO `journal_details` VALUES (1,1,'cf','2','',' BR_0002'),(2,1,'cf','4','',' Rejestracja'),(3,1,'cf','5','',' MUST'),(4,1,'cf','6','','V002'),(5,1,'cf','7','',' BR002'),(6,2,'attr','assigned_to_id',NULL,'7'),(7,2,'cf','5','','MUST'),(8,2,'cf','6','','V006'),(9,2,'cf','7','','BR061'),(10,3,'cf','6','V006','V005'),(11,4,'cf','3','Etap 2','Etap 3'),(12,5,'cf','3','Etap 2','Etap 3'),(13,6,'cf','4','R','Rejestracja'),(14,6,'cf','5','MUST','COULD'),(15,7,'cf','3','Etap 3','Etap 4'),(16,8,'cf','7','BR031','BR032'),(21,11,'attr','done_ratio','0','100'),(22,12,'attr','done_ratio','0','100'),(23,13,'attr','done_ratio','100','90'),(24,14,'attr','done_ratio','90','100'),(25,15,'attr','done_ratio','0','100'),(26,16,'attr','status_id','1','3'),(27,16,'attr','done_ratio','100','0'),(28,17,'attr','status_id','1','3'),(29,18,'attr','status_id','1','3'),(30,19,'attr','status_id','1','3'),(31,20,'attr','status_id','1','3'),(32,21,'attr','status_id','1','3'),(33,22,'attr','status_id','1','3'),(34,23,'attr','status_id','1','3'),(35,24,'attr','status_id','1','3'),(36,25,'attr','status_id','1','3'),(37,26,'attr','status_id','1','3'),(38,27,'attr','status_id','1','3'),(39,28,'attr','status_id','1','3'),(40,29,'attr','status_id','1','3'),(41,30,'attr','status_id','1','3'),(43,32,'attr','status_id','1','3'),(44,33,'attr','status_id','1','3'),(45,34,'attr','status_id','1','3'),(46,35,'attr','status_id','1','3'),(47,36,'attr','status_id','1','3'),(48,37,'attr','status_id','1','3'),(49,38,'attr','status_id','1','3'),(50,39,'attr','status_id','1','3'),(51,40,'attr','status_id','1','3'),(52,41,'attr','status_id','1','3'),(53,42,'attr','status_id','1','3'),(54,43,'attr','status_id','1','3'),(55,44,'attr','status_id','1','3'),(56,45,'attr','status_id','1','3'),(57,46,'attr','status_id','1','3'),(58,47,'attr','status_id','1','3'),(59,48,'attr','status_id','1','3'),(60,49,'attr','status_id','1','3'),(61,50,'attr','status_id','1','3'),(62,51,'attr','status_id','1','3'),(63,52,'attr','status_id','1','3'),(64,53,'attr','status_id','1','3'),(65,54,'attr','status_id','1','3'),(66,55,'attr','status_id','1','3'),(67,56,'attr','status_id','1','3'),(68,57,'attr','status_id','1','3'),(69,58,'attr','status_id','1','3'),(70,59,'attr','status_id','1','3'),(80,75,'attr','status_id','3','5'),(81,76,'attr','status_id','3','5'),(82,77,'attr','status_id','3','5'),(83,78,'attr','status_id','3','5'),(84,79,'attr','status_id','3','5'),(85,80,'attr','status_id','3','6'),(86,81,'attr','status_id','3','5'),(87,82,'attr','status_id','3','6'),(88,83,'attr','status_id','3','6'),(89,84,'attr','status_id','3','6'),(90,85,'attr','status_id','3','5'),(91,86,'attr','done_ratio','0','100'),(92,87,'attr','done_ratio','0','100'),(93,88,'attr','done_ratio','0','100'),(94,89,'attr','done_ratio','0','100'),(95,90,'attr','done_ratio','0','100'),(96,92,'attr','done_ratio','0','100'),(97,93,'attr','done_ratio','0','100'),(98,95,'attr','status_id','1','2'),(99,96,'attr','status_id','1','2'),(100,96,'attr','done_ratio','0','80'),(101,97,'attr','status_id','1','3'),(102,98,'attr','status_id','1','2'),(103,99,'attr','status_id','1','2'),(104,100,'attr','status_id','1','2'),(105,100,'attr','done_ratio','0','60'),(106,101,'attr','status_id','1','2'),(107,102,'attr','status_id','1','2'),(108,102,'attr','done_ratio','0','90'),(109,103,'attr','status_id','1','2'),(110,104,'attr','status_id','1','2'),(111,104,'attr','done_ratio','0','80'),(112,105,'attr','status_id','1','2'),(113,106,'attr','status_id','1','2'),(114,108,'attr','status_id','1','2'),(115,109,'attr','status_id','1','2'),(116,110,'attr','status_id','1','3'),(117,111,'attr','status_id','1','3'),(118,112,'attr','status_id','1','3'),(119,113,'attr','status_id','1','3'),(120,114,'attr','status_id','1','3'),(121,115,'attr','status_id','1','3'),(122,116,'attr','status_id','1','3'),(123,117,'attr','status_id','1','2'),(124,118,'attr','status_id','3','5'),(125,118,'attr','priority_id','1','2'),(126,119,'attr','status_id','1','2'),(127,120,'attr','status_id','3','5'),(128,121,'attr','status_id','3','5'),(129,122,'attr','status_id','3','5'),(130,123,'attr','status_id','3','5'),(131,124,'attr','status_id','3','5'),(132,125,'attr','status_id','3','5'),(133,126,'attr','status_id','3','5'),(134,127,'attr','status_id','3','5'),(135,128,'attr','status_id','3','5'),(136,129,'attr','status_id','3','6'),(137,130,'attr','status_id','3','5'),(138,131,'attr','status_id','3','5'),(139,132,'attr','status_id','3','6'),(140,133,'attr','status_id','2','3'),(141,133,'attr','done_ratio','0','100'),(142,134,'attr','status_id','3','5'),(143,135,'attr','status_id','3','5'),(144,136,'attr','status_id','3','6'),(145,137,'attr','status_id','3','6'),(146,139,'attr','status_id','3','5'),(147,140,'attr','status_id','3','5'),(148,141,'attachment','2',NULL,'Screen Shot 2017-10-11 at 1.18.41 PM.png'),(149,142,'attr','status_id','3','5'),(150,143,'attr','status_id','3','5'),(151,144,'attr','done_ratio','0','50'),(152,145,'attr','status_id','5','3'),(153,146,'attr','done_ratio','0','80'),(154,147,'attr','done_ratio','0','100'),(155,148,'attr','done_ratio','0','50'),(156,151,'attr','done_ratio','0','100'),(157,152,'attr','done_ratio','0','100'),(158,153,'attr','done_ratio','0','100'),(159,154,'attr','done_ratio','0','100'),(160,156,'attr','status_id','1','2'),(161,157,'attr','status_id','2','3'),(162,158,'attr','status_id','3','6'),(163,159,'attr','status_id','6','4'),(164,160,'attr','status_id','1','2'),(165,161,'attr','status_id','2','6'),(166,162,'attr','status_id','6','4'),(167,163,'attr','status_id','1','4'),(168,164,'attr','status_id','1','4'),(169,165,'attr','status_id','1','4'),(170,166,'attr','status_id','1','4'),(171,168,'attachment','6',NULL,'podglad-koszyka.jpg'),(172,168,'attachment','7',NULL,'podglad-koszyka.jpg'),(173,168,'attr','status_id','3','5'),(174,169,'attachment','8',NULL,'podglad-koszyka-listing.jpg'),(175,170,'attr','status_id','1','2'),(176,171,'attr','status_id','1','2'),(177,172,'attr','status_id','1','4'),(178,173,'attr','assigned_to_id',NULL,'14'),(179,175,'attr','status_id','1','4'),(180,175,'attr','done_ratio','0','100'),(181,176,'attr','status_id','1','2'),(182,177,'attr','status_id','2','6'),(183,178,'attr','status_id','6','4'),(184,180,'attr','assigned_to_id','10','15'),(185,182,'attr','assigned_to_id',NULL,'14'),(186,183,'attachment','10',NULL,'produkty-w-sklepie.jpg'),(187,184,'attachment','11',NULL,'Instalacja Magento przewodnik _ Trusted Shops.pdf'),(188,184,'attachment','12',NULL,'Integracja Trustbadge® _ Trusted Shops.pdf'),(189,184,'attachment','13',NULL,'Trusted Shops Pakiet Traffic.pdf'),(190,185,'attachment','14',NULL,'newsletter-dziekujemy.jpg'),(191,185,'attr','status_id','3','5'),(192,186,'attr','assigned_to_id',NULL,'14'),(193,187,'attachment','15',NULL,'grupa-klienta.jpg'),(194,187,'attr','status_id','3','5'),(195,188,'attr','status_id','3','5'),(196,189,'attr','status_id','3','6'),(197,190,'attr','status_id','3','5'),(198,191,'attr','status_id','3','5'),(199,192,'attr','status_id','3','5'),(200,193,'attr','status_id','3','5'),(201,195,'attr','assigned_to_id',NULL,'14'),(202,201,'attr','done_ratio','90','100'),(203,202,'attr','done_ratio','0','100'),(204,203,'attr','done_ratio','80','100'),(205,204,'attr','done_ratio','0','70'),(206,205,'attr','status_id','1','4'),(207,206,'attr','status_id','1','4'),(208,207,'attr','status_id','1','4'),(209,208,'attr','status_id','1','4'),(210,209,'attr','status_id','1','4'),(211,211,'attr','status_id','2','3'),(212,211,'attr','done_ratio','0','100'),(213,212,'attr','status_id','5','3'),(214,213,'attr','status_id','5','3'),(215,214,'attr','status_id','5','3'),(216,215,'attr','status_id','5','3'),(217,216,'attr','status_id','2','3'),(218,217,'attr','status_id','1','4'),(219,218,'attr','status_id','1','4'),(220,219,'attr','status_id','3','5'),(221,220,'attr','status_id','3','5'),(222,221,'attr','status_id','3','5'),(223,222,'attr','status_id','3','5'),(224,223,'attr','status_id','5','6'),(225,224,'attr','status_id','5','3'),(226,225,'attr','status_id','5','3'),(227,226,'attr','status_id','5','3'),(228,227,'attr','status_id','5','3'),(229,228,'attr','status_id','5','3'),(230,229,'attr','status_id','5','3'),(231,230,'attr','status_id','5','3'),(232,231,'attr','status_id','1','3'),(233,232,'attachment','18',NULL,'ksiazka-adresowa.jpg'),(234,232,'attr','status_id','3','5'),(235,233,'attr','status_id','3','5'),(236,234,'attr','status_id','3','5'),(237,236,'attr','status_id','3','6'),(238,237,'attr','status_id','3','5'),(239,238,'attr','status_id','3','5'),(240,239,'attr','status_id','1','4'),(241,240,'attr','status_id','3','5'),(242,243,'attr','status_id','3','6'),(243,244,'attr','status_id','3','6'),(244,245,'attr','status_id','3','6'),(245,246,'attr','status_id','3','6'),(246,247,'attr','status_id','3','6'),(247,248,'attr','status_id','3','6'),(248,249,'attr','status_id','3','6'),(249,250,'attr','status_id','6','5'),(250,252,'attr','priority_id','1','2'),(251,252,'cf','5','WON\'T','MUST'),(252,253,'attr','status_id','1','3'),(253,254,'attr','due_date',NULL,'2017-11-24'),(254,254,'attr','done_ratio','0','100'),(255,256,'attr','status_id','2','6'),(256,257,'attr','status_id','6','4'),(257,258,'attr','status_id','2','6'),(258,259,'attr','status_id','6','4'),(259,260,'attr','status_id','2','3'),(260,261,'attr','status_id','2','3'),(261,262,'attr','status_id','2','3'),(262,263,'attr','status_id','2','3'),(263,264,'attr','status_id','3','5'),(264,265,'attachment','20',NULL,'dodales-produkt.jpg'),(265,265,'attachment','21',NULL,'kanalRSS.jpg'),(266,265,'attr','status_id','3','5'),(267,266,'attr','status_id','3','6'),(268,267,'attachment','22',NULL,'NIP.jpg'),(269,267,'attr','status_id','3','5'),(270,269,'attr','status_id','5','3'),(271,270,'attr','status_id','1','4'),(272,271,'attr','status_id','1','4'),(273,272,'attr','status_id','5','3'),(274,273,'attr','status_id','3','6'),(275,274,'attr','status_id','3','6'),(276,275,'attr','status_id','5','3'),(277,276,'attr','status_id','5','3'),(278,277,'attr','status_id','5','3'),(279,278,'attr','status_id','5','3'),(280,279,'attr','status_id','5','3'),(281,280,'attr','status_id','2','3'),(282,281,'attr','status_id','5','3'),(283,282,'attr','status_id','5','3'),(284,283,'attr','status_id','5','3'),(285,284,'attr','status_id','5','3'),(286,285,'attr','status_id','5','3'),(287,286,'attr','status_id','5','3'),(288,287,'attr','status_id','3','6'),(289,288,'attr','status_id','3','5'),(290,289,'attr','status_id','5','3'),(291,290,'attr','status_id','3','5'),(292,291,'attr','status_id','3','5'),(293,292,'attr','status_id','3','5'),(294,293,'attachment','31',NULL,'podsumowanie-mini-koszyka.jpg'),(295,293,'attr','status_id','3','5'),(296,294,'attr','assigned_to_id',NULL,'14'),(297,295,'attr','status_id','3','6'),(298,296,'attr','status_id','3','6'),(299,297,'attr','status_id','3','5'),(300,298,'attachment','32',NULL,'dodaj_produkt_koszyk.jpg'),(301,298,'attachment','33',NULL,'RSS-kanal.jpg'),(302,298,'attr','status_id','3','5'),(303,299,'attr','status_id','3','6'),(304,300,'attr','status_id','3','5'),(305,301,'attr','status_id','3','5'),(306,302,'attr','status_id','1','4'),(307,304,'attr','status_id','5','3'),(308,305,'attr','status_id','5','6'),(309,308,'attr','status_id','1','3'),(310,309,'attr','status_id','2','3'),(311,310,'attr','status_id','1','3'),(312,311,'attr','status_id','5','3'),(313,313,'attr','status_id','1','3'),(314,314,'attr','status_id','1','3'),(315,315,'attachment','34',NULL,'Screen Shot 2017-12-19 at 8.27.17 PM.png'),(316,316,'attr','status_id','3','5'),(317,317,'attr','status_id','3','6'),(318,318,'attr','status_id','3','6'),(319,319,'attachment','35',NULL,'pasek-informacyjny.jpg'),(320,319,'attr','status_id','3','5'),(321,320,'attr','status_id','3','5'),(322,321,'attr','status_id','3','5'),(323,322,'attr','status_id','5','6'),(324,323,'attr','status_id','5','6'),(325,324,'attr','status_id','5','6'),(326,325,'attachment','36',NULL,'Screen Shot 2017-12-26 at 12.38.24 PM.png'),(327,325,'attr','status_id','1','3'),(328,326,'attachment','37',NULL,'Screen Shot 2017-12-26 at 12.38.24 PM.png'),(329,327,'attachment','37','Screen Shot 2017-12-26 at 12.38.24 PM.png',NULL),(330,328,'attr','status_id','5','3'),(331,329,'attr','status_id','5','3'),(332,330,'attr','status_id','2','3'),(333,331,'attr','status_id','2','3'),(334,332,'attr','status_id','5','3'),(335,333,'attr','status_id','5','3'),(336,334,'attr','status_id','5','3'),(337,335,'attr','status_id','5','3'),(338,336,'attr','status_id','2','3'),(339,337,'attr','status_id','5','3'),(340,338,'attr','status_id','5','3'),(341,339,'attr','status_id','5','3'),(342,340,'attr','status_id','5','3'),(343,341,'attr','status_id','5','3'),(344,342,'attr','status_id','5','3'),(345,343,'attachment','38',NULL,'Screen Shot 2017-12-28 at 4.15.59 PM.png'),(346,344,'attr','status_id','5','3'),(347,345,'attachment','39',NULL,'Screen Shot 2017-12-28 at 4.17.55 PM.png'),(348,345,'attr','status_id','5','3'),(349,347,'attr','status_id','5','3'),(350,348,'attachment','40',NULL,'test_lang_pack.csv'),(351,349,'attr','status_id','5','3'),(352,350,'attr','subject','Metody płatności','Metody płatności - w tym Przelewy24.pl'),(353,351,'attr','status_id','3','6'),(354,352,'attachment','41',NULL,'kod-pocztowy.jpg'),(355,352,'attr','status_id','3','5'),(356,353,'attr','status_id','3','6'),(357,355,'attr','status_id','3','6'),(358,356,'attr','status_id','3','6'),(359,357,'attr','status_id','3','6'),(360,358,'attr','status_id','3','5'),(361,359,'attr','status_id','3','5'),(362,360,'attr','status_id','3','5'),(363,361,'attr','status_id','3','6'),(364,362,'attr','status_id','3','6'),(365,364,'attr','status_id','5','3'),(366,365,'attr','status_id','3','5'),(367,366,'attr','status_id','3','5'),(368,368,'attr','status_id','5','3'),(369,369,'attr','status_id','5','3'),(370,370,'attachment','42',NULL,'Screen Shot 2018-01-09 at 5.06.39 PM.png'),(371,370,'attr','status_id','5','3'),(372,372,'attachment','43',NULL,'how-to-create-grouped-product-in-magento-2-choose-grouped-product.jpg'),(373,372,'attachment','44',NULL,'how-to-create-grouped-product-in-magento-2-add-product-to-group.jpg'),(374,372,'attr','status_id','5','3'),(375,373,'attr','status_id','5','3'),(376,374,'attr','status_id','1','3'),(377,375,'attr','status_id','1','3'),(378,376,'attr','status_id','2','3'),(379,377,'attr','status_id','5','3'),(380,378,'attr','status_id','3','6'),(381,379,'attr','status_id','3','6'),(382,380,'attr','status_id','3','6'),(383,381,'attr','status_id','3','6'),(384,382,'attr','status_id','3','5'),(385,383,'attachment','47',NULL,'klamki099.jpg'),(386,383,'attachment','46',NULL,'produktydookien.jpg'),(387,383,'attr','status_id','3','5'),(388,384,'attr','status_id','3','6'),(389,385,'attr','status_id','3','5'),(390,386,'attr','status_id','3','5'),(391,386,'attr','priority_id','2','1'),(392,387,'attr','status_id','3','6'),(393,388,'attr','status_id','3','6'),(394,389,'attr','status_id','3','6'),(395,390,'attr','status_id','3','6'),(396,391,'attr','status_id','1','3'),(397,392,'attr','status_id','5','3'),(398,393,'attr','status_id','5','3'),(399,395,'attr','status_id','3','5'),(400,396,'attr','status_id','3','6'),(401,397,'attachment','48',NULL,'Screen Shot 2018-01-15 at 12.55.37 AM.png'),(402,397,'attachment','49',NULL,'Screen Shot 2018-01-15 at 12.58.04 AM.png'),(403,397,'attachment','50',NULL,'Screen Shot 2018-01-15 at 12.59.41 AM.png'),(404,398,'attr','status_id','5','3'),(405,399,'attachment','51',NULL,'Screen Shot 2018-01-15 at 1.02.54 AM.png'),(406,399,'attachment','52',NULL,'Screen Shot 2018-01-15 at 1.03.16 AM.png'),(407,400,'attachment','53',NULL,'Screen Shot 2018-01-15 at 1.04.32 AM.png'),(408,401,'attachment','55',NULL,'NIP-Alex.jpg'),(409,401,'attachment','54',NULL,'NIP-marzena-Jakimowicz.jpg'),(410,401,'attr','status_id','3','5'),(411,403,'attr','subject','Metody dostawy','Metody dostawy, koszty dostawy, termin dostawy'),(412,403,'cf','3','Etap 4','Etap 5'),(413,405,'attr','subject','Zarzadzalny rotator banerow na stronie glownej','Zarzadzalny rotator banerow na stronie glownej - szablon sklepu'),(414,405,'attr','status_id','3','6'),(415,406,'attr','status_id','3','6'),(416,407,'attr','status_id','3','6'),(417,408,'attachment','60',NULL,'projekt-wiadomosc-zamowienie.jpg'),(418,408,'attachment','61',NULL,'projekt wiadomosc zamowienie.psd'),(419,408,'attr','status_id','3','5'),(420,409,'attr','status_id','1','4'),(421,410,'attr','status_id','1','4'),(422,411,'attr','status_id','1','4'),(423,412,'attr','status_id','1','4'),(424,413,'attr','status_id','1','4'),(425,414,'attr','status_id','1','4'),(426,415,'attr','status_id','2','6'),(427,416,'attr','status_id','6','4'),(428,417,'attr','status_id','1','4');
/*!40000 ALTER TABLE `journal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` mediumtext,
  `created_on` datetime NOT NULL,
  `private_notes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,3,'Issue',5,'','2017-10-04 05:06:49',0),(2,5,'Issue',5,'Wyswietlenie baneru na stronie kategorii produktowej\r\nPrzeniesienie na wlasciwa strone w przypadku wystapienia odnosnika\r\n\r\nModul z A17\r\n\r\n','2017-10-04 05:17:11',0),(3,6,'Issue',5,'Wyswietlenie linkow do profili na portalach spolecznosciowych: Facebook, G+, Twitter, Instagram, Youtube, Linkedin\r\n','2017-10-04 05:21:09',0),(4,2,'Issue',5,'','2017-10-04 05:27:05',0),(5,5,'Issue',5,'','2017-10-04 05:27:58',0),(6,14,'Issue',5,'Mozliwosc podania numeru domu w oddzielnym polu\r\n','2017-10-04 06:39:31',0),(7,31,'Issue',5,'','2017-10-04 07:33:44',0),(8,35,'Issue',5,'','2017-10-04 07:55:04',0),(11,24,'Issue',7,NULL,'2017-10-05 17:36:30',0),(12,25,'Issue',7,NULL,'2017-10-05 17:36:30',0),(13,24,'Issue',7,NULL,'2017-10-05 17:37:38',0),(14,24,'Issue',7,NULL,'2017-10-05 17:37:44',0),(15,2,'Issue',5,'','2017-10-06 03:31:09',0),(16,2,'Issue',5,'','2017-10-06 04:46:02',0),(17,15,'Issue',5,'','2017-10-06 04:58:39',0),(18,16,'Issue',5,'','2017-10-06 04:59:28',0),(19,18,'Issue',5,'','2017-10-06 05:00:17',0),(20,19,'Issue',5,'','2017-10-06 05:01:22',0),(21,20,'Issue',5,'','2017-10-06 05:01:49',0),(22,5,'Issue',5,'','2017-10-06 05:03:21',0),(23,22,'Issue',5,'','2017-10-06 05:04:52',0),(24,24,'Issue',5,'','2017-10-06 05:06:29',0),(25,31,'Issue',5,'','2017-10-06 05:07:37',0),(26,32,'Issue',5,'','2017-10-06 05:08:56',0),(27,33,'Issue',5,'','2017-10-06 05:09:29',0),(28,35,'Issue',5,'','2017-10-06 05:10:06',0),(29,36,'Issue',5,'','2017-10-06 05:11:07',0),(30,37,'Issue',5,'','2017-10-06 05:11:41',0),(32,39,'Issue',5,'','2017-10-06 05:12:43',0),(33,40,'Issue',5,'','2017-10-06 05:13:19',0),(34,41,'Issue',5,'','2017-10-06 05:13:48',0),(35,42,'Issue',5,'','2017-10-06 05:15:18',0),(36,43,'Issue',5,'','2017-10-06 05:15:53',0),(37,44,'Issue',5,'','2017-10-06 05:16:45',0),(38,46,'Issue',5,'','2017-10-06 05:17:15',0),(39,47,'Issue',5,'','2017-10-06 05:17:53',0),(40,48,'Issue',5,'','2017-10-06 05:19:15',0),(41,49,'Issue',5,'','2017-10-06 05:20:07',0),(42,50,'Issue',5,'','2017-10-06 05:21:05',0),(43,51,'Issue',5,'','2017-10-06 05:21:56',0),(44,52,'Issue',5,'','2017-10-06 05:22:22',0),(45,53,'Issue',5,'','2017-10-06 05:22:59',0),(46,54,'Issue',5,'','2017-10-06 05:23:22',0),(47,55,'Issue',5,'','2017-10-06 05:23:44',0),(48,56,'Issue',5,'','2017-10-06 05:24:07',0),(49,57,'Issue',5,'','2017-10-06 05:24:31',0),(50,59,'Issue',5,'','2017-10-06 05:29:01',0),(51,61,'Issue',5,'','2017-10-06 05:29:56',0),(52,62,'Issue',5,'','2017-10-06 05:30:34',0),(53,65,'Issue',5,'','2017-10-06 05:35:40',0),(54,66,'Issue',5,'','2017-10-06 05:36:12',0),(55,67,'Issue',5,'','2017-10-06 05:36:34',0),(56,68,'Issue',5,'','2017-10-06 05:36:57',0),(57,69,'Issue',5,'','2017-10-06 05:38:02',0),(58,70,'Issue',5,'','2017-10-06 05:38:34',0),(59,71,'Issue',5,'','2017-10-06 05:39:20',0),(60,74,'Issue',7,'test','2017-10-08 17:49:09',0),(61,74,'Issue',7,'test','2017-10-08 17:51:55',0),(75,71,'Issue',9,'1. \r\nCzy adres mailowy: eloner3@gmail.com w ustawieniach należy do Państwa?\r\nChciałam wpisać mój adres, jako drugi, żeby sprawdzić jak działa system, ale może być tylko jeden adres. \r\nCzy mogę zmienić adres na mój?\r\n\r\n2. \r\nZakładka kontakt oprócz formularza kontaktowego musi zawierać też pole tekstowe z adresami i numerami telefonów - tak jak obecnie https://sklep.winkhaus.pl/pl/kontakt.html\r\nFormularz kontaktowy powinien być dopiero pot tym tekstem. \r\n\r\n3. \r\nZakładka Kontakt - jest w sklepie 2 razy:\r\n- stopka (jest podpięty(\r\n- belka nawigacyjna (tu trzeba dodać)\r\n','2017-10-09 07:13:22',0),(76,70,'Issue',9,'Proszę o rozwinięcie tematu - jak to będzie działało?','2017-10-09 08:30:23',0),(77,2,'Issue',9,'\r\n1. \r\nBłędnie wpisany NIP - jeśli klient wpisze błędny NIP, to pole od razu powinno być podkreślone na czerwono - powinna być walidacja numeru (sprawdzenie czy taki NIP jest zarejestrowany)- dopiero po wpisaniu prawidłowego NIP system powinien pozwolić przejść dalej, żeby uzupełnić dane konta.\r\nW tej chili pojawia się komunikat, jeśli chcesz ... to jest dla klienta zbyt długi czas rejestracji ..  (nie jest to dobre w ocenie pozycji sklepu w Google). Rejestracja powinna być w jednym kroku. \r\nDla ujednolicenia zapisów NIP (i naszego SAP) proponuję przyjąć jako poprawny zapis NIP bez myślników, czyli pole NIP musi być wypełnione ciągiem (10 cyfr) 0000000000 (000-000-00-00 tak nie jest poprawnie, taki zapis podkreślamy na czerwono z komunikatem jak prawidłowo wpisac NIP). Podczas wpisywania NIP klientowi może pojawić się w okienku podpowiedź jak prawidłowo ma być wpisany NIP. \r\n\r\n2. \r\nKod pocztowy - prawidłowy zapis to: 00-000 (ze spacją) - Klientowi może pokazać się podpowiedź, albo nawet po wpisaniu dwóch pierwszych cyfr - może pojawić się \"-\"\r\nMusi być walidacja kodu pocztowego - w tej chwili można wpisać dowolną wartość \r\nUwaga! adresy zagraniczne! Jeśli klient wybierze inny kraj niż Polska, wówczas kod pocztowy można wpisać w dowolnym formacie.   \r\n\r\n3. \r\nW trakcie zakładania konta Marzena Jakimowicz marzena.jakimowicz@winkhaus.pl\r\nwpisałam nazwę firmy Winkhaus Polska (nazwa nie jest widoczna na moim koncie)\r\npodałam też błedny NIP i kod pocztowy (dane nie pojawiają się na koncie - ale gdy je wpisywałam nie było komunikatu o błędzie) \r\nNowe konto nie jest widoczne w CMS Magento (widze je tylko jako użytkownika online - nawet gdy już się wylogowałam)\r\n\r\n4. \r\nPo zalogowaniu sie na moje konto w Adress Book\r\n- wpisuję adres firmy \r\n- w tym momencie pole NIP powinno być zaznaczone jako obowiązkowe \r\n- wpisałam błędny NIP - system go przyjął, ale po kliknięciu zapisz, dopiero wtedy pojawił się komunikat o błędnym NIP, niestety zniknęła też wpisana nazwa firmy. \r\nCzy można ten błąd w NIP pokazać od razu - przed kliknięciem zapisz?\r\n\r\n\r\n \r\n\r\n \r\n','2017-10-09 09:25:40',0),(78,5,'Issue',9,'Bardzo proszę o rozwinięcie tematu:\r\n- o które banery chodzi?\r\n- jak je zamieszczać?','2017-10-09 10:35:38',0),(79,15,'Issue',9,'Zakładałam dzisiaj konto i otrzymałam tylko mail o treści: \r\n\r\n,,Welcome to Main Website Store.\r\n\r\nTo sign in to our site, use these credentials during checkout or on the My Account page: \r\n\r\nEmail: marzena.jakimowicz@winkhaus.pl \r\nPassword: Password you set when creating account \r\nForgot your account password? Click here to reset it. \r\n\r\nWhen you sign in to your account, you will be able to:\r\n\r\nProceed through checkout faster \r\nCheck the status of orders \r\nView past orders \r\nStore alternative addresses (for shipping to multiple family members and friends)\"\r\n\r\n\r\nNiestety nie otrzymałam maile, aktywującego konto.\r\n','2017-10-09 10:39:58',0),(80,16,'Issue',9,'Sprawdziłam - działa. ','2017-10-09 10:42:01',0),(81,18,'Issue',9,'Kliknęłam nie pamiętam hasła. \r\nWpisałam adres mailowy marzena.jakimowicz@winkhaus.pl, kod z obrazka i pojawiły się 2 komunikaty:\r\n\r\nYour Tax ID cannot be validated. You will be charged tax. If you believe this is an error, please contact us at support@example.com\r\nIf there is an account associated with marzena.jakimowicz@winkhaus.pl you will receive an email with a link to reset your password.\r\n\r\nNastępnie na adres mailowy przyszedł prawidłowo mail do zmiany hasła. Po kliknięciu system przekierował mnie do sklepu, do wpisania nowego hasła. \r\nWpisałam nowe hasło i pojawiły się znowu 2 komunikaty: \r\n\r\nYour Tax ID cannot be validated. You will be charged tax. If you believe this is an error, please contact us at support@example.com\r\nYou updated your password.\r\n\r\nCoś jest nie tak, skoro ciągle pojawia się ten pierwszy komunikat. Proszę o sprawdzenie\r\n\r\n\r\n\r\n','2017-10-09 10:49:31',0),(82,19,'Issue',9,'Jest OK.','2017-10-10 04:05:27',0),(83,20,'Issue',9,'Jest OK.','2017-10-10 04:07:31',0),(84,22,'Issue',9,'Jest OK.','2017-10-10 04:18:05',0),(85,24,'Issue',9,'Wyswietlenie w stopce pola na zapis do newslettera:\r\n- Zapisy na newsletter: stopka na stronie głównej  - gdy chce się wpisać adres mailowy w polu nie widać gdzie jest kursor, nie widać co się wpisuje …\r\n\r\n\r\nWyswietlenie widoku zapisu do newslettera w panelu klienta\r\n- zalogowałam się na moje konto\r\n- kliknęłam General Subscription i pojawiły się 2 komunikaty (1 na czerwono):\r\n1. Your Tax ID cannot be validated. You will be charged tax. If you believe this is an error, please contact us at support@example.com\r\n2. We saved the subscription.\r\n\r\n\r\nWyslanie maila z linkiem potwierdzenia zapisania sie do newslettera dla klienta niezarejestrowanego\r\n- Jak to zrobić - proszę o instrukcję?\r\n- niezarejestrowany użytkownik musi potwierdzić swój adres email przy zapisie do newslettera.\r\n\r\n\r\nWyslanie maila z potwierdzeniem zapisu do newslettera dla klienta zarejestrowanego.\r\n- zapisałam się na newsletter po zalogowaniu na moje konto\r\n- nie dostałam maila z potwierdzeniem, że zapisałam się na newsletter\r\n\r\n\r\nTermin wdrożenia nowego systemu nie jest znany - nad systemem pracują nasi koledzy w Niemczech. \r\nPrace trwają juz dosyć długo i mam nadzieję, że są na ukończeniu.\r\nPoprosiłam o podanie przybliżonego terminu wdrożenia. ','2017-10-10 04:46:41',0),(86,4,'Issue',7,'banner can be added via \"content\" tab on a page settings in administrator panel','2017-10-10 05:20:01',0),(87,6,'Issue',7,'links can be edited in footer links block, or send me this links i will add it by myself','2017-10-10 05:23:32',0),(88,7,'Issue',7,'there is two sliders on main page, is this ok or you want another one for banners?','2017-10-10 05:28:30',0),(89,8,'Issue',7,'','2017-10-10 05:30:26',0),(90,9,'Issue',7,'static cms block can be added or edited in administrator panel -> content -> blocks','2017-10-10 05:32:20',0),(91,10,'Issue',7,'widget can be added or edited in administrator panel -> content -> widgets, you can also upload static CMS block in widget, to do this click create or edit widget and then choose widget options in the settings of selected widget','2017-10-10 05:37:17',0),(92,10,'Issue',7,'','2017-10-10 05:37:25',0),(93,11,'Issue',7,'','2017-10-10 05:37:43',0),(94,13,'Issue',7,'у нас есть стандартный модуль мега меню, он был установлен вместе с темой, меню можно открыть в разделе контент - блоки, там есть блок мега меню, в него можно добавлять свои ссылки, уверены ли вы что вам нужен модуль за 69 долларов? опишите какой функционал вы от него ожидаете','2017-10-10 05:51:56',0),(95,21,'Issue',7,'','2017-10-10 06:40:31',0),(96,23,'Issue',7,'добавил всплывающее окно при добавлении товара в котором предоставляется выбор - перейти в корзину или продолжить покупки, такой вариант подходит или нужно конкретно подтверждение добавление товара?','2017-10-10 06:43:37',0),(97,25,'Issue',7,'','2017-10-10 06:43:59',0),(98,26,'Issue',7,'прошу уточнить задачу, где должно отображатся сколько товаров осталось? откуда это значение должно задаватся','2017-10-10 06:45:42',0),(99,27,'Issue',7,'ошибки отображаются под полями которые неверное заполнены после подтверждения отправки формы для регистрации, верно ли это, если нет то как должно быть?','2017-10-10 06:59:28',0),(100,3,'Issue',7,'','2017-10-10 07:00:34',0),(101,13,'Issue',7,'','2017-10-10 07:01:40',0),(102,29,'Issue',7,'тестирование','2017-10-10 07:02:27',0),(103,28,'Issue',7,'речь идет об сообщениях которые показываются при валидации полей?','2017-10-10 07:03:28',0),(104,34,'Issue',7,'в разработке, задача связана с регистрацией фирмы поэтому будет готова по готовности задачи от которой зависит','2017-10-10 07:10:56',0),(105,45,'Issue',7,'в панели администрирования доступна функция для логина пользователя, нужна ли функция для отключения пользователя от его личного кабинета? не очень представляю как это применяется на практике поэтому хочу уточнить вопрос','2017-10-10 07:12:57',0),(106,58,'Issue',7,'задача связана с регистрацией фирмы, в работе','2017-10-10 07:13:50',0),(107,60,'Issue',7,'прошу уточнить задачу, это относится к дестрибюторам? как это должно выглядеть на сайте?','2017-10-10 07:14:52',0),(108,72,'Issue',7,'задача связана с регистрацией фирмы, в работе','2017-10-10 07:15:18',0),(109,73,'Issue',7,'нужно просто установить модуль или связать его с каким то функционалом?','2017-10-10 07:17:53',0),(110,4,'Issue',5,'','2017-10-10 07:26:23',0),(111,6,'Issue',5,'','2017-10-10 07:26:53',0),(112,7,'Issue',5,'','2017-10-10 07:27:18',0),(113,8,'Issue',5,'','2017-10-10 07:27:47',0),(114,9,'Issue',5,'','2017-10-10 07:28:11',0),(115,10,'Issue',5,'','2017-10-10 07:28:39',0),(116,11,'Issue',5,'','2017-10-10 07:30:09',0),(117,14,'Issue',7,'','2017-10-10 07:34:02',0),(118,31,'Issue',9,'Po dodaniu produktów do koszyka - nie moge zalogować się na moje konto marzena.jakimowicz@winkhaus.pl\r\nPrzypomnienie hasła też nie pomaga. \r\n\r\nZalogowanie się na konto przed dodaniem produktów działa prawidłowo.\r\n\r\n\r\nProces rejestracji, logowania, dodawania adresów - musimy omówić. \r\nObecnie nie jest czytelny dla użytkownika. Nie wiadomo, czy to już rejestracja, czy zakup bez rejestracji.\r\nProponuje umówić się na rozmowę w tej sprawie.','2017-10-10 09:27:38',0),(119,89,'Issue',7,'','2017-10-10 10:15:12',0),(120,32,'Issue',9,'Obecnie konto klienta jest mało czytelne - dane klienta zlewają się z przyciskami (edytuj, zmień). \r\nNie wiadomo czy edytuj dotyczy danych adresowych, czy chodzi o edycję newslettera .. - wszystko dlatego, że tekst nie jest ładnie sformatowany, rozdzielony spacjami, a przyciski nie wyglądają jak przyciski, tylko jak zwykły tekst. \r\n\r\nPo wejściu na konto nie wiem, co powinnam kliknąć. Owszem mogę klikać wszystko po kolei, ale to nie o to chodzi .. \r\nMusimy dać klientowi czytelne dane na koncie, żeby nie zrezygnował z zakupów w naszym sklepie.','2017-10-10 10:54:52',0),(121,6,'Issue',9,'Linki do naszych portali społecznościowych\r\nNa stronie, przy ikonkach proszę usunąć nawiasy - są one niepotrzebne. Dziękuję\r\nYouTube https://www.youtube.com/channel/UCUWfBlujGPDntnureRohx6A\r\nFacebook https://www.facebook.com/winkhaus.polska\r\nGoogle + https://plus.google.com/110265861856856536491\r\nTwitter https://twitter.com/winkhaus_polska\r\nLinkedin https://www.linkedin.com/company/10658405/\r\nInstagram https://www.instagram.com/winkhaus_polska/','2017-10-10 11:01:05',0),(122,7,'Issue',9,'Wygląd strony sklepu jeszcze się zmieni. \r\nOtrzymałam wczoraj wiadomość, że w Niemczech pracują nad nowym portalem dla klientów i zasugerowano nam, żeby nasz sklep graficznie był podobny do tego portalu. Niestety nie mam jeszcze żadnych grafik i projektów. \r\nJak tylko je otrzymam - przekażę je Państwu, z prośbą o dostosowanie sklepu do nowego standardu Winkhaus.','2017-10-10 11:07:25',0),(123,8,'Issue',9,'Proszę o informację, w którym miejscu można dodawać nowych administratorów i przydzielać im uprawnienia?\r\nNa chwilę obecną potrzebujemy 2 konta: \r\n- główny administrator z pełnym dostępem\r\n- konto dla działu sprzedaży: dostęp do zamówień i klientów\r\n \r\n','2017-10-10 11:19:17',0),(124,9,'Issue',9,'Proszę o rozwinięcie tematu - jak to działa?\r\n','2017-10-10 11:22:35',0),(125,10,'Issue',9,'Proszę o prezentację jak to zrobić, na jakimś przykładzie.','2017-10-10 11:24:09',0),(126,11,'Issue',9,'Proszę o prezentację narzędzia na jakimś przykładzie.','2017-10-10 11:25:04',0),(127,25,'Issue',9,'Temat trzeba dopracować, ponieważ nie wiadomo czy zakładanie konta jest już rejestracją czy tylko podaniem danych do faktury. \r\nNie przychodzi mail z potwierdzeniem zapisania na newsletter.','2017-10-10 11:27:33',0),(128,4,'Issue',9,'Proszę o instrukcję jak to zrobić?','2017-10-10 11:33:19',0),(129,35,'Issue',9,'OK. \r\n\r\n','2017-10-10 11:50:00',0),(130,36,'Issue',9,'Zwiększenie ilości produktów powoduje przeliczenie kosztów transportu x ilość produktów. \r\nProszę o sprawdzenie.','2017-10-10 11:52:09',0),(131,54,'Issue',9,'Produkt można dodać do listy życzeń tylko z poziomu listy produktów - po wejściu w szczegóły produktu nie ma już tej opcji.','2017-10-10 12:08:41',0),(132,49,'Issue',9,'ok','2017-10-10 12:10:01',0),(133,89,'Issue',7,'','2017-10-10 17:31:31',0),(134,89,'Issue',9,'Świetnie - dziękuję za wdrożenie j. polskiego :)\r\nNiestety nie wszystkie teksty są przetłumaczone, ale spodziewałam się tego. \r\nCzy jest jakiś sposób, żeby wyeksportować aktualną listę tekstów, żebyśmy mogli je przetłumaczyć?\r\nNastępnie, tym samym sposobem zaimportować do sklepu polskie teksty. \r\n','2017-10-11 04:00:52',0),(135,37,'Issue',9,'Proszę o informację, na czym polega: Walidacja kodow pocztowych dla krajow europejskich?\r\nDodałam adres w Niemczech: kraj, ulica, miasto - wpisałam też kod pocztowy, ale polskiego miasta i to z myślnikiem. System przyjął ten adres - nie wykazał błędnego kodu pocztowego.','2017-10-11 05:37:39',0),(136,52,'Issue',9,'OK','2017-10-11 05:39:09',0),(137,48,'Issue',9,'ok','2017-10-11 05:40:03',0),(138,89,'Issue',7,'на сайте были переведены модули мадженто, но есть сторонние модули которые нуждаются в ручном переводе, так же на сайте есть много статических блоков, тексты которых задаются с админки в контенте, предлагаю по ходу выполнения остальных задач просто переводить на польский тексты с которыми я буду сталкиватся, можно сделать импорт текстов но это не поможет если контент статический и в сторонних модулях текст задан с админки или напрямую статически','2017-10-11 05:47:08',0),(139,62,'Issue',9,'Zakładanie nowego konta:\r\npola: nazwa firmy i NIP posiadają czerwone gwiazdki - co sugeruje, że pola są obowiązkowe! (chociaż nie są)\r\nKlient może założyć konto prywatne (bez nazwy firmy i NIP) oraz konto na firmę.  \r\nNIP musi być obowiązkowy gdy klient wypełni pole nazwa firmy (jako adres do faktury)!\r\nProponuję również dodać objaśnienie przy czerwonej gwiazdce (obowiązkowe)\r\n','2017-10-11 06:01:40',0),(140,61,'Issue',9,'Dla waluty PLN - VAT 23% \r\nDla waluty EUR - VAT 23%\r\nDla waluty CZK (korona czeska) - VAT 23%\r\n\r\nWszystkie ceny w sklepie powinny mieć informację w jakiej są walucie oraz, że zawierają podatek VAT.\r\nMożliwa jest również prezentacja 2 cen: netto i brutto (ale to nie jest konieczne). \r\nNajważniejsza jest waluta i podatek VAT. \r\n\r\nPodsumowanie zamówienia w koszyku i w wiadomości dla klienta i sklepu: powinny być 2 ceny: netto i brutto.','2017-10-11 06:10:54',0),(141,31,'Issue',7,'прикрепляю скриншот, об этой ли форме идет речь? через нее сейчас не работает логин т.к она почему то не связана с основной системой, сейчас над этим работаю, а по поводу остального, жду уточнений по реализации','2017-10-11 06:22:44',0),(142,59,'Issue',9,'Wszyscy klienci kupują z VAT 23% - tylko takie konto może założyć klient samodzielnie. \r\n\r\nOpcja dodatkowa - jeśli będzie możliwa (nie koniecznie) - administrator sklepu może na koncie klienta zagranicznego ustawić VAT 0%. \r\nOpcja tylko dla klientów z UE - posiadających VAT UE i będących czynnym płatnikiem VAT. \r\nTakie konto może założyć od nowa lub zmodyfikować już istniejące konto tylko administrator sklepu - po sprawdzeniu dokumentów firmy i otrzymaniu zaświadczenia z Urzędu Skarbowego. \r\nPo założeniu takiego konta, klient będzie mógł robić zakupy z VAT 0%. \r\nTo jest tylko nasze życzenie.','2017-10-11 10:03:14',0),(143,57,'Issue',9,'Proszę o rozwinięcie o co chodzi z tymi grupami klientów, o jakie grupy chodzi?\r\n\r\nRozwinę też temat i opiszę jak to wygląda u nas.\r\n\r\nW sklepie mamy 3 grupy klientów.\r\n\r\nGrupa 1. klienci indywidualni - do nich przypisane są ceny detaliczne (nasz cennik 2000714) - ceny które są widoczne w sklepie.\r\nKlientem sklepu może być osoba fizyczna lub firma. \r\n\r\nGrupa 2. klienci hurtowi - tylko firmy - dla nich jest cennik hurtowy (nasz cennik 2000755). Ceny hurtowe są widoczne dopiero za zalogowaniu na prawidłowo założone konto hurtowe. Klient (firma) rejestrując się w sklepie, może wybrać: Rejestracja dla firm związanych z branżą okienną (producenci, hurtownie, serwisanci, montażyści). Ale żeby założyć takie konto musi do wniosku dołączyć załącznik: dokument rejestracji firmy CEIDG lub KRS. Brak załącznika blokuje założenie konta hurtowego - klient zostaje przekierowany na ścieżkę zakładania zwykłego  konta detalicznego. W trakcie rejestracji takiego konta, klient musi być poinformowany: *Dane Twojej firmy zostaną sprawdzone*.  \r\nAdministrator sklepu powinien zostać powiadomiony mailem o założeniu takiego konta. Jego zadaniem jest sprawdzenie firmy i dokumentów. W przypadku wykrycia nieprawidłowości administrator może zmienić konto hurtowe na detaliczne. \r\nAdministrator może też samodzielnie założyć konto hurtowe. \r\n\r\nGrupa 3. klienci SAP - klienci z indywidualnymi cenami ustalonymi w naszym SAP.\r\nKonta klientów są zakładane przez nas - my nadajemy klientom login i hasło.  Konta klientów i ich cenniki są eksportowane do sklepu plikiem.\r\nKlienci SAP nie mogą nic zmieniać w danych swojego konta.','2017-10-11 10:27:57',0),(144,14,'Issue',7,'','2017-10-11 11:05:51',0),(145,61,'Issue',7,'','2017-10-11 15:14:57',0),(146,61,'Issue',7,'wykonane, sprawdź stronę z kategoriami, stronę produktu, stronę płatności i powiedz mi, co odejść i co podnieść','2017-10-11 18:00:33',0),(147,70,'Issue',7,'','2017-10-12 05:06:15',0),(148,62,'Issue',7,'','2017-10-12 05:28:57',0),(149,36,'Issue',7,'цена доставки для всех продуктов, не суммируется','2017-10-12 06:12:27',0),(150,25,'Issue',7,'SMTP configure','2017-10-12 06:16:06',0),(151,18,'Issue',7,'SMTP','2017-10-12 06:21:50',0),(152,15,'Issue',7,'','2017-10-12 06:24:35',0),(153,5,'Issue',7,'','2017-10-12 07:32:33',0),(154,31,'Issue',7,'','2017-10-12 07:38:00',0),(155,25,'Issue',9,'Rozmawiałam z naszym administratorem i niestety jest problem :(\r\nNasza firma w Niemczech nie udostępnia na zewnątrz SMTP. \r\nDlatego prośba, żeby nasz czas budowy i testów sklepu uruchomić pocztę na Waszym serwerze.\r\nGdy system będzie gotowy - przełączymy na naszą pocztę.','2017-10-13 04:29:06',0),(156,92,'Issue',10,'','2017-10-14 08:57:34',0),(157,92,'Issue',10,'','2017-10-14 08:57:48',0),(158,92,'Issue',10,'','2017-10-14 08:57:58',0),(159,92,'Issue',10,'','2017-10-14 08:58:04',0),(160,93,'Issue',10,'','2017-10-14 09:05:25',0),(161,93,'Issue',10,'','2017-10-14 09:21:20',0),(162,93,'Issue',10,'','2017-10-14 09:21:30',0),(163,90,'Issue',10,'','2017-10-14 10:24:09',0),(164,91,'Issue',10,'','2017-10-14 10:25:46',0),(165,99,'Issue',10,'','2017-10-14 10:43:42',0),(166,96,'Issue',10,'','2017-10-14 11:03:12',0),(167,25,'Issue',9,'Na czas testów możemy też podłączyć moją skrzynkę gmail, jeśli to coś pomoże..','2017-10-16 02:09:16',0),(168,53,'Issue',9,'Podgląd koszyka - obecnie pokazywany jest tylko ostatnio dodany produkt. \r\nJeśli w koszyku jest więcej niż 1 produkt, na podgląd koszyka powinien pokazać wszystkie produkty. \r\nWidok tak jak na zdjęciu.\r\n\r\n','2017-10-16 05:30:39',0),(169,23,'Issue',9,'Корзина - должны быть все товары.\r\nВ настоящее время корзина показывает только последний продукт. \r\nПожалуйста, перейдите на все товары - Как показано на рисунке.','2017-10-16 13:28:20',0),(170,101,'Issue',12,'Доробляє Стас. ','2017-10-25 03:38:04',0),(171,87,'Issue',12,'Катя робить. ','2017-10-25 03:38:36',0),(172,82,'Issue',12,'Не відомо,чи так буде. ','2017-10-25 03:39:30',0),(173,105,'Issue',12,'','2017-10-25 04:11:02',0),(174,107,'Issue',12,'Alina Didenko wrote:\r\n> Написати новий звіт по документам Faktura sprzedaży. Назва звіту: Zestawienie wystawionych dokumentów dostawy. Тільки проведені документи, додати фільтр по префіксу документа. У звіт будуть потрапляти документи тільки з вказаним префіксом. Відбір по періоду. Звіт по макету. В заголовок виводити період відбору. Сортування у звіті по номеру документа фактури. Колонки: \r\n> L.P. - номер по порядку. \r\n> Data wystawienia - Дата документу.\r\n> Nr faktury - номер документу. \r\n> Dane odbiercy - Назва контрагента (реквізит Nabywca в документі), його адреса Adres siedziby. адреса або з карточки контрагента, або із регістру відомостей Dane kontaktowe.\r\n> Nazwa wyrobu, kod CN (об\'єднати дві колонки)- опис позиції для видруку (реквізит). Необхідно із ТЧ документа витягти позицію і подивитись її опис. \r\n> Ilość w kg - кількість товару. Товар обліковується в тонах, необхідно перерахувати в кілограми. Перерахунок по типовому механізму. В одиниці виміру позиції налаштоване значення Waga netto. В константі Jednostka wagi вказана одиниця виміру кг. \r\n> Przeznaczenie..... - значення з реквізиту Informacja dodatkowa (do wydruku przed stopką z podpisami) з документу.. \r\n> Miejsce odbioru - значення реквізиту Adres dostawy з документу. \r\n> Додати можливість у звіті відкривати документ Faktura sprzedaży та додавати реквізити, які є в документі у Звіт. Звіт як форма списку документа.\r\nЗвіт відкрити для ролі користувача Role_Sales. Помістити у підсистему Sales.  \r\n','2017-10-25 05:09:39',0),(175,60,'Issue',7,'','2017-10-25 06:13:47',0),(176,106,'Issue',12,'','2017-10-25 09:17:48',0),(177,106,'Issue',12,'','2017-10-26 03:38:10',0),(178,106,'Issue',12,'','2017-10-26 06:15:57',0),(179,110,'Issue',12,'Необхідно додати додатковий опис на друк форми. Налаштування здійснюється в регістрі відомостей Ustawienia wydruków. Налаштування опису таке ж, як і в друкованій формі PrintoutProformaInvoice. Подивитись, розібратись, скопіювати на інші друк форми.  Налаштування в РС Ustawienia wydruków = Ustawienia intrastat. На друк формі поряд з назвою позиції група параметрів DescriptionCN. \r\n Список друкованих форм: PrintoutSalesInvoice, PrintoutSalesCreditNote, PrintoutSalesPrepaymentCreditNote, PrintoutSalesPrepaymentInvoice, PrintoutSalesDelivery, PrintoutSalesRetailCheck. ','2017-10-27 02:15:49',0),(180,95,'Issue',10,'','2017-10-27 07:51:49',0),(181,114,'Issue',10,'Dmitro Didenko wrote:\r\n> Dodać pole \"Komora\" przy dodawaniu wagonów dla przyjęcia bez ważenia.\r\n\r\nRównież dodać \"Kopalnia\" ','2017-10-27 08:07:02',0),(182,110,'Issue',12,'','2017-10-30 06:08:21',0),(183,103,'Issue',9,'zauważyłam problemy:\r\n\r\n1. nie można ustawić daty: produkt nowy (po wpisaniu daty wyświetla się błąd)\r\n\r\n2. w sklepie (na ścieżce produktu) nie wyświetlają się wszystkie kategorie przypisane do produktu:\r\ndla artykuł 5026895 w sklepie jest tak:\r\nSTRONA GŁÓWNA - PRODUKTY DO DRZWI - WKŁADKI PATENTOWE ATESTOWANE - WKŁADKI XTRA  - XT 01 N 30/60 WKŁADKA BĘBENKOWA\r\na powinno być:\r\nSTRONA GŁÓWNA - PRODUKTY DO DRZWI - WKŁADKI PATENTOWE ATESTOWANE - WKŁADKI XTRA  - WKŁADKI XTRA DWUSTRONNE TYP 01 - XT 01 N 30/60 WKŁADKA BĘBENKOWA (artykuł 5026895)\r\n\r\n3. gdy mamy wiecej wkładek w kategorii wkładki XTRA to też jest niepełna ścieżka: \r\nSTRONA GŁÓWNA  - PRODUKTY DO DRZWI  - WKŁADKI PATENTOWE ATESTOWANE\r\na powinno być:\r\nSTRONA GŁÓWNA  - PRODUKTY DO DRZWI  - WKŁADKI PATENTOWE ATESTOWANE - WKŁADKI XTRA ','2017-10-30 08:13:00',0),(184,73,'Issue',9,'TrustedShops \r\nkod integracji dla www.sklep.winkhaus.pl: \r\nX84072598CE55992E2FB07F807381AB21\r\n\r\nintergracja z Magento\r\nhttp://support.trustedshops.com/pl/apps/magento?shop_id=&variant=&yOffset=\r\n\r\n\r\nTrustedShops:\r\n1. Trustbadge - znak jakości\r\n2. Zbieranie opinii - Review Collector\r\n3. pakiet Traffic\r\n4. Zabezpieczenie zakupów do 10000,00 PLN - po dokonaniu zakupu, klient dostaje wiadomość o możliwości skorzystania z zabezpieczenia.\r\n','2017-10-30 10:07:46',0),(185,50,'Issue',9,'1. W panelu administracyjnym można usunąć adres mailowy z listy subskrybentów. \r\n2. Zapisy na newsletter (w stopce strony - klient zalogowany) - po zarejestrowaniu na stronie pojawia się komunikat: Dziękujemy za twoją subskrypcję. Komunikat nie znika po odświeżeniu strony (jak w załączniku). \r\n3. Zapisy na newsletter w stopce strony (nowy adres mjakimowicz@winkhaus.com.pl) - na adres mailowy nie przyszedł mail do potwierdzenia subskrypcji. W panelu administracyjnym adres ten jest jako nieaktywny.','2017-10-30 12:01:45',0),(186,107,'Issue',12,'','2017-10-30 16:53:30',0),(187,47,'Issue',9,'Zmieniłam grupę dla klienta Marzena Jakimowicz maszka100@gmail.com z General na Business. \r\nW szczegółowym widoku konta jest Business, ale na liście wszystkich klientów nadal jest General. \r\n','2017-10-31 04:19:08',0),(188,46,'Issue',9,'Edycja konta: Marzena Jakimowicz maszka100@gmail.com\r\n\r\nKsiążka adresowa -> adres rozliczeniowy (czyli dane do faktury) - dodałam nazwę firmy, kliknęłam zapisz i system zaakceptował zmianę. To błąd - system powinien pokazać, że pole NIP musi być również wypełnione.  \r\nZasada: jeśli na koncie (adres rozliczeniowy dane do faktury) jest podana nazwa firmy, to pole NIP musi być obowiązkowe. Musi być walidacja NIP.  \r\n\r\ntest 2. \r\nwpisałam NIP 699106 (za krótki) - system przyjął taki błędny NIP - to błąd! powinna być walidacja. \r\n\r\ntest 3. \r\nwprowadzone zmiany nie są widoczne na liście wszystkich klientów. \r\n\r\ntest 4. \r\nNa liście klientów nie ma pola Nazwa firmy (2 razy jest pole NIP -> numer NIP i Company NIP)','2017-10-31 04:37:48',0),(189,42,'Issue',9,'OK','2017-10-31 04:44:23',0),(190,41,'Issue',9,'zmieniamy tekst: Powiadom mnie gdy cena produktu spadnie\r\nna tekst: *Powiadom mnie o zmianie ceny\r\n*\r\nTest zmiany ceny dla produktu art. 5026895 (cena zmieniona 2 razy na 500 zł, oraz na 200 zł). Na adres maszka100@gmail.com - nie przyszło żadne powiadomienie.\r\n\r\nKlient niezalogowany i niezarejestrowany nie może zapisać się na to powiadomienie - system przekierowuje do rejestracji lub logowania. \r\nRejestracja w naszym sklepie nie jest obowiązkowa - można robić zakupy bez rejestracji. \r\n\r\nProszę ustawić program tak, żeby klient niezalogowany lub niezarejestrowany mógł zapisać się na powiadomienie. Wystarczy podać adres mailowy.\r\n\r\n\r\n','2017-10-31 05:07:25',0),(191,40,'Issue',9,'Klient musi być zalogowany / zarejestrowany.\r\nZmieńmy to dla wszystkich klientów. \r\n\r\nPowiadomienie z dostępności nie przychodzi na adres mailowy. ','2017-10-31 05:41:53',0),(192,39,'Issue',9,'test 1. \r\nNie działa walidacja kodu pocztowego polskiego - można wpisać dowolną ilość cyfr, z myślnikiem lub bez myślnika. To błąd. \r\nDla Polski przyjmujemy 00-000.\r\n\r\n\r\ntest 2. \r\nWybrałam kraj Niemcy. \r\nPole województwo lub region zostało zaznaczone na czerwono - OK. Pole trzeba wypełnić, jeśli mamy taką bazę. \r\nKod pocztowy można wpisać dowolną ilość cyfr - OK \r\n ','2017-10-31 05:53:47',0),(193,33,'Issue',9,'Nie przychodzi email z linkiem do zmiany hasła','2017-10-31 05:59:24',0),(194,107,'Issue',12,'призупинено','2017-10-31 06:23:48',0),(195,108,'Issue',12,'','2017-10-31 06:24:03',0),(196,89,'Issue',9,'Czy można zrobić eksport tekstów (plik) i wszystkich grafik (z napisami) ? \r\nTeksty w pliku przetłumaczę i zrobimy import do sklepu.','2017-10-31 09:16:57',0),(197,27,'Issue',9,'Jeśli pole jest źle wypełnione:\r\n- pole powinno być zaznaczone na czerwono\r\n- pod tym polem powinien być komunikat, jak powinno być prawidłowo\r\n- na górze strony powinien pojawić się też komunikat: Formularz zawiera błędy - popraw zaznaczone pola.  ','2017-10-31 09:52:02',0),(198,26,'Issue',9,'Ilość produktów w magazynie będzie widoczna na liście eksportowej z naszego SAP. Z tej listy program musi pobrać informację o stanie magazynowym, żeby zaprezentować w sklepie odpowiedni komunikat.\r\n\r\nW sklepie nie wyświetlamy ile mamy dokładnie sztuk w magazynie. \r\nW sklepie pokazujemy: \r\n1. dostępny\r\nDodatkowo powinien pojawić się komunikat - Wyświetlenie informacji o wysyłce towarów, \"Towar dostępny na magazynie wysyłany jest w dni robocze w ciągu 24 godzin\"\r\n2. mała ilość - jeżeli ilość produktów na magazynie spadnie do 5 lub mniej. \r\nDodatkowo powinien pojawić się komunikat - Wyświetlenie informacji o wysyłce towarów, \"Towar dostępny na magazynie wysyłany jest w dni robocze w ciągu 24 godzin\"\r\n3. na zamówienie - jeśli w magazynie jest 0 produktów. \r\nDla tych produktów musi pojawić się informacja o wydłużonym czasie wysyłki: ,,Towar na zamówienie specjalne, termin realizacji zamówienia jest wydłużony. Zapytaj o planowany termin dostawy\" \r\n\r\nNa podglądzie każdego produktu wyświetlone zostaną następujące komunikaty dotyczące stanów magazynowych:\r\nStany magazynowe dotyczą magazynu głównego w Rydzynie.\r\n\r\nWymagania\r\n- system musi pozwolić na dodawanie do koszyka i składanie zamówień na produkty z zerowym stanem magazynowym (status \"na zamówienie\")\r\n- system musi pozwolić na dodawanie do koszyka i składanie zamówień na produkty z przekroczeniem stanu magazynowego\r\n- zamówienie produktu, którego obecnie nie ma w magazynie - produkty na zamówienie -> forma płatności dla tych zamówień to przedpłata (nie może być wysyłka za pobraniem!) Możliwe metody płatności: Przelewy24 i Przelew tradycyjny.\r\n','2017-10-31 10:10:25',0),(199,45,'Issue',9,'Nie rozumiem pytania - proszę napisać więcej o co chodzi..?','2017-10-31 10:19:28',0),(200,36,'Issue',9,'Jest błąd w koszyku. \r\nDodałam produkt do koszyka. \r\nWejdź Koszyk -> zmiena ilość produktów -> przelicz koszyk = koszyk pusty i pojawia się komunikat:\r\n\r\nKoszyk\r\nNie masz produktów w koszyku.\r\nKliknij tutaj, aby kontynuować zakupy.','2017-10-31 10:51:56',0),(201,29,'Issue',7,'','2017-11-13 04:43:17',0),(202,33,'Issue',7,'','2017-11-13 04:49:37',0),(203,34,'Issue',7,'','2017-11-13 04:50:23',0),(204,36,'Issue',7,'','2017-11-13 04:52:08',0),(205,105,'Issue',12,'','2017-11-14 03:10:51',0),(206,112,'Issue',12,'','2017-11-14 03:11:05',0),(207,111,'Issue',12,'','2017-11-14 03:11:23',0),(208,110,'Issue',12,'','2017-11-14 03:11:39',0),(209,116,'Issue',12,'','2017-11-14 03:11:53',0),(210,84,'Issue',12,'Ярослав Шевчук','2017-11-14 03:12:48',0),(211,26,'Issue',7,'','2017-11-14 09:20:23',0),(212,33,'Issue',7,'','2017-11-14 10:07:27',0),(213,36,'Issue',7,'','2017-11-14 10:43:38',0),(214,24,'Issue',7,'','2017-11-14 12:26:47',0),(215,25,'Issue',7,'','2017-11-14 12:29:12',0),(216,34,'Issue',7,'','2017-11-14 13:15:09',0),(217,121,'Issue',12,'виконане мною . ','2017-11-14 14:51:45',0),(218,30,'Issue',7,'','2017-11-15 10:38:14',0),(219,24,'Issue',9,'nadal nie działa: \r\nWyswietlenie w stopce pola na zapis do newslettera:\r\n- Zapisy na newsletter: stopka na stronie głównej - gdy chce się wpisać adres mailowy w polu nie widać gdzie jest kursor, nie widać co się wpisuje …','2017-11-15 11:36:17',0),(220,25,'Issue',9,'Dodałam produkt do koszyka i pojawił się komunikat: Subskrybuj kanał RSS\r\nPo kliknięciu na ten link - przekierowało mnie do pliku XML: \r\nThis XML file does not appear to have any style information associated with it. The document tree is shown below.\r\n\r\n','2017-11-15 11:47:58',0),(221,26,'Issue',9,'W sklepie nadal jest widoczna ilość towarów w magazynie!\r\n\r\nstany magazynowe:\r\n\r\n1. *dostępny*\r\nDodatkowo powinien pojawić się komunikat - Wyświetlenie informacji o wysyłce towarów, \"Towar dostępny na magazynie wysyłany jest w dni robocze w ciągu 24 godzin\" \r\n2. *mała ilość* - jeżeli ilość produktów na magazynie spadnie do 5 lub mniej. \r\nDodatkowo powinien pojawić się komunikat - Wyświetlenie informacji o wysyłce towarów, \"Towar dostępny na magazynie wysyłany jest w dni robocze w ciągu 24 godzin\" \r\n3. *na zamówienie* - jeśli w magazynie jest 0 produktów. \r\nDla tych produktów musi pojawić się informacja o wydłużonym czasie wysyłki: ,,Towar na zamówienie specjalne, termin realizacji zamówienia jest wydłużony. Zapytaj o planowany termin dostawy\"\r\n\r\nNa podglądzie każdego produktu wyświetlone zostaną następujące komunikaty dotyczące stanów magazynowych:\r\nStany magazynowe dotyczą magazynu głównego w Rydzynie.\r\n\r\nWymagania\r\n- system musi pozwolić na dodawanie do koszyka i składanie zamówień na produkty z zerowym stanem magazynowym (status \"na zamówienie\")\r\n- system musi pozwolić na dodawanie do koszyka i składanie zamówień na produkty z przekroczeniem stanu magazynowego\r\n- zamówienie produktu, którego obecnie nie ma w magazynie - produkty na zamówienie -> forma płatności dla tych zamówień to przedpłata (nie może być wysyłka za pobraniem!) Możliwe metody płatności: Przelewy24 i Przelew tradycyjny.','2017-11-15 12:38:02',0),(222,51,'Issue',9,'Mail z potwierdzeniem subskrypcji newslettera powinien zawierać: \r\n\r\n\r\nLogo Winkhaus\r\n\r\nWitaj (tutaj wstawiamy Imię i adres mailowy)\r\nDziękujemy za dopisanie się do naszego newslettera.\r\nAby rozpocząć odbieranie newslettera, musisz najpierw potwierdzić subskrypcję klikając na poniższy link:\r\nhttp://srv4.gsystems.link/newsletter/subscriber/confirm/id/16/code/m6buhxqqxi2umt63djo2muaigiq5y5mr/\r\n\r\nw stopce dane kontaktowe: \r\nWinkhaus Polska Beteiligungs\r\nspółka z ograniczoną odpowiedzialnością sp.k.\r\nul. Przemysłowa 1\r\n64-130 Rydzyna\r\ntel. +48 65 52 55 700\r\ne-mail: sklep@winkhaus.pl\r\nwww.sklep.winkhaus.pl\r\n\r\n\r\n','2017-11-16 02:27:12',0),(223,8,'Issue',9,'założone konto Sprzedaż Winkhaus - ustawiony dostęp do sprzedaży','2017-11-16 07:37:13',0),(224,39,'Issue',7,'','2017-11-16 11:04:05',0),(225,41,'Issue',7,'','2017-11-16 11:10:41',0),(226,40,'Issue',7,'','2017-11-16 11:10:51',0),(227,53,'Issue',7,'','2017-11-16 11:25:09',0),(228,59,'Issue',7,'','2017-11-16 11:29:43',0),(229,62,'Issue',7,'','2017-11-16 11:32:08',0),(230,70,'Issue',7,'','2017-11-16 11:43:18',0),(231,74,'Issue',7,'','2017-11-16 11:47:36',0),(232,39,'Issue',9,'1. \r\nKsiążka adresowa - proponuję zmienić kolejność pól - najpierw: kraj, kod pocztowy .. itd \r\n\r\na pola powinny nazywać się następująco:\r\nKraj *\r\nKod pocztowy *\r\nMiasto *\r\nUlica *\r\nNumer domu *\r\nWojewództwo\r\nNumer NIP \r\n\r\n(patrz załącznik: książka adresowa)\r\n\r\n2. Zrobiłam test - wpisałam kod pocztowy 56-200, a poźniej zmieniłam kraj z domyślnego Polski na Armenia. System przyjął kod pocztowy z zapisem xx-xxx. \r\n3. Test 2. wpisałam kod pocztowy w formacie xxxxx wybrałam Polskę i system znowu przyjął ten adres. To błąd. Dla Polski przyjmujemy 00-000.','2017-11-22 06:46:01',0),(233,41,'Issue',9,'Uwaga! Moje uwagi nie zostały wprowadzone. \r\n\r\nzmieniamy tekst: Powiadom mnie gdy cena produktu spadnie\r\nna tekst: *Powiadom mnie o zmianie ceny *\r\n\r\nPo zmianie ceny nie przyszło powiadomienie. \r\n\r\nKlient niezalogowany i niezarejestrowany nadal nie może zapisać się na to powiadomienie. Wystarczy podać adres mailowy, nie trzeba się rejestrować. ','2017-11-22 07:02:52',0),(234,40,'Issue',9,'Zadanie nie zostało poprawione. \r\nNie przychodzą powiadomienia\r\nKlient niezarejestrowany nie może otrzymać powiadomienia. Zmieniamy to. Wystarczy podać adres mailowy - nie trzeba się rejestrować.','2017-11-22 07:12:15',0),(235,40,'Issue',9,'Brak towaru w magazynie - nie można dodać produktu do koszyka! \r\nTemat był już omawiany, ale nadal nie działa\r\n ','2017-11-22 07:22:50',0),(236,53,'Issue',9,'OK','2017-11-22 07:26:17',0),(237,74,'Issue',9,'Sama zmiana statusu jest zrozumiała - dodajemy nową kategorię. \r\nUstaw produkt jako nowy od - do. Jest możliwość. \r\n\r\nJak ustawić promocję na produkt (rabat % oraz rabat kwotowy?) Jak ustawić termin promocji?\r\nJak ustawić promocję na grupę produktów (rabat % oraz rabat kwotowy?) Jak ustawić termin promocji?\r\n\r\nBestseller - Jak ustawić termin promocji?','2017-11-22 08:26:07',0),(238,62,'Issue',9,'','2017-11-22 08:29:07',0),(239,84,'Issue',12,'','2017-11-22 09:33:22',0),(240,59,'Issue',9,'W którym miejscu, na karcie klienta można zmienić podatek na VAT 0%?','2017-11-22 09:51:59',0),(241,114,'Issue',10,'Kopalne','2017-11-23 07:01:54',0),(242,39,'Issue',9,'1)\r\nZmieniłam moje konto na konto na konto klienta SAP. \r\nNastępnie na koncie zmieniłam ulice dla adresu rozliczeniowego - system przyjął zmianę. To błąd!\r\nKlienci SAP nie mogą zmieniać żadnych danych na swoim koncie. Dane pobieramy z SAP i nic w sklepie nie zmieniamy.\r\n2)\r\nWpisałam też numer NIP: 1111111 - numer jest za krótki, a system przyjął go jako poprawny. To błąd!\r\nNumer NIP jest wpisany na koncie klienta, ale nie wyświetla się na liście wszystkich klientów.\r\n\r\n3)\r\nNa stronie sklepu próbowałam zapisać się na newsletter (newsletter, tam gdzie jest: bądź na bieżąco...) - system napisał: że ten adres mailowy jest już powiązany z jakimś kontem. \r\nZgadza się, konto dla adresu maszka100@gmail.com jest założone, ale nie jest zarejestrowane na newsletter. Czyli błąd. System blokuje zapisanie na newsletter, gdy jest już konto w sklepie.','2017-11-25 11:01:24',0),(243,66,'Issue',9,'','2017-11-25 12:31:22',0),(244,67,'Issue',9,'','2017-11-25 12:31:48',0),(245,61,'Issue',9,'','2017-11-25 12:33:15',0),(246,56,'Issue',9,'','2017-11-25 12:34:02',0),(247,55,'Issue',9,'','2017-11-25 12:36:22',0),(248,44,'Issue',9,'','2017-11-25 12:39:13',0),(249,43,'Issue',9,'','2017-11-25 12:40:13',0),(250,53,'Issue',9,'W zamówieniu złożonym ze strony brakuje: \r\n- miejsce na notatki - komentarz do zamówienia\r\n- załącznik (plik jpg, bmp, pdf)\r\n\r\nWidok zamówień w panelu administracyjnym - proszę dodać: \r\nNumer IP, z którego złożono zamówienie\r\n(PL, CZK czy EUR)? - W którym sklepie zostało złożone zamówienie\r\nKod transakcji (przelewu online)\r\nstatus zamówienia - generowany z SAP, ale też z możliwością ręcznej zmiany\r\nNumer listu przewozowego\r\nNumer faktury - automatycznie z SAP\r\nFaktura pdf (załącznik)\r\nZapłacone kwota - pole wypełnione automatycznie po dokonaniu płatności online przelewy24.pl\r\nZwrot kwota - pole wypełnia nasz pracownik w przypadku zwrotu\r\nKwota zapłacona - kwota zapłacona zwykłym przelewem na konto - pole wypełnia nasz pracownik (lub automatycznie na podstawie wyciągu bankowego - to do wykonania przez Winkhaus)\r\nKwota niezapłacona - różnica między wartością zamówienia a otrzymaną wpłatą\r\n\r\n\r\n\r\n','2017-11-25 13:19:17',0),(251,53,'Issue',9,',,Kwota zapłacona - kwota zapłacona zwykłym przelewem na konto - pole wypełnia nasz pracownik (lub automatycznie na podstawie wyciągu bankowego - to do wykonania przez Winkhaus)\"\r\nTo działanie musi się wiązać z wysłaniem emaila do Klienta i do obsługi Sklepu (muszą wiedzieć, że można realizować zamówienie). Wpłata została zaksięgowana, zamówienie przekazane do realizacji.','2017-11-25 13:24:47',0),(252,53,'Issue',9,'W panelu administracyjnym, w szczegółach zamówienia musi być działanie: Eksport zamówienia. \r\nKliknięcie na ikonę Eksport spowoduje wygenerowanie pliku xml z zamówieniem. \r\nTaki plik importujemy do SAP. \r\nProszę o przygotowanie tej funkcji w pierwszej kolejności. Nasz administrator od SAP będzie mógł rozpocząć prace.','2017-11-25 13:54:51',0),(253,114,'Issue',15,'','2017-11-27 07:17:18',0),(254,114,'Issue',15,'','2017-11-27 07:17:47',0),(255,114,'Issue',15,'Dodano: \"Kopalnia\"','2017-11-27 07:24:16',0),(256,101,'Issue',12,'','2017-11-29 04:28:10',0),(257,101,'Issue',12,'','2017-11-29 04:28:26',0),(258,85,'Issue',12,'','2017-11-29 04:28:42',0),(259,85,'Issue',12,'','2017-11-29 04:28:48',0),(260,29,'Issue',7,'','2017-11-29 09:27:06',0),(261,73,'Issue',7,'','2017-11-29 10:33:45',0),(262,23,'Issue',7,'','2017-11-29 10:36:12',0),(263,72,'Issue',7,'','2017-11-29 11:35:54',0),(264,29,'Issue',9,'Strona statyczna \"Kontakt\" - jest OK\r\nCzy formularz kontaktowy będzie też zamieszczony?','2017-11-30 09:18:57',0),(265,73,'Issue',9,'testowe zamówienie: \r\ndodany produkt do koszyka - wyświetla się komunikat: Dodałeś Nowe pióro 6 do koszyka. Ale koszyk jest pusty - widac to na zdjęciu - proszę zobaczyć na zdjęciu: dodales produkt. \r\nPoza tym wyświetla się komunikat: subskrybuj kanał RSS. po kliknięciu na link -> kieruje do strony (zdjęcie kanal RSS) Już o tym pisałam. \r\nProszę usunąć kanał RSS z tego miejsca.\r\n\r\nTrustedShops został zainstalowany - po złożeniu zamówienia przychodzi mail z zabezpieczeniem zakupu, można wystawić też opinię. \r\nPoprawność działania aplikacji i całego nowego sklepu będzie sprawdzona przez TrustedShops. \r\nPo zakończeniu wdrożenia TrustedShops wykona audyt sklepu - otrzymamy raport z punktami, które trzeba poprawić. \r\nDo tego czasu zakończenia praca nad sklepem, temat TrustedShops zamykamy. Wrócimy do niego na koniec.\r\n','2017-11-30 09:44:31',0),(266,23,'Issue',9,'OK - w koszyku są wszystkie produkty. ','2017-11-30 09:55:16',0),(267,72,'Issue',9,'1)\r\ntest - zamówienie bez logowania\r\nw pole NIP wpisuję 1 - system przyjmuje takie zamówienie. To błąd! Prosze zobaczyć na zdjęciu: NIP\r\n\r\n2)\r\nJeśli klient wypełni pole: nazwa firmy - to pole NIP musi być obowiązkowe. (obecnie nie jest)\r\n\r\n','2017-11-30 10:09:17',0),(268,14,'Issue',7,'в личном кабинете поле добавлено, на странице оплаты в редакторе адресов еще нет','2017-12-03 07:32:33',0),(269,59,'Issue',7,'в настройках пользователя нужно сменить групу к которой он относится, я добавил групу Bez podatku, по которой установлен налог 0%','2017-12-03 07:50:55',0),(270,122,'Issue',12,'','2017-12-04 09:39:56',0),(271,83,'Issue',12,'','2017-12-04 09:40:24',0),(272,15,'Issue',7,'','2017-12-05 07:13:48',0),(273,59,'Issue',9,'ok, zrobiłam test: zmieniłam grupę klienta na BEZ PODATKU, zrobiłam testowe zamówienie i ceny są bez VAT. ','2017-12-05 08:34:08',0),(274,15,'Issue',9,'','2017-12-05 08:35:21',0),(275,18,'Issue',7,'','2017-12-11 05:24:45',0),(276,25,'Issue',7,'','2017-12-11 05:28:06',0),(277,24,'Issue',7,'','2017-12-11 05:28:17',0),(278,47,'Issue',7,'','2017-12-11 05:41:51',0),(279,57,'Issue',7,'','2017-12-11 05:45:38',0),(280,14,'Issue',7,'','2017-12-11 05:52:33',0),(281,73,'Issue',7,'','2017-12-11 08:04:50',0),(282,50,'Issue',7,'','2017-12-11 08:14:24',0),(283,37,'Issue',7,'','2017-12-11 08:19:16',0),(284,29,'Issue',7,'','2017-12-11 08:21:07',0),(285,6,'Issue',7,'','2017-12-11 08:26:27',0),(286,71,'Issue',7,'','2017-12-11 08:28:42',0),(287,18,'Issue',9,'','2017-12-11 10:17:58',0),(288,24,'Issue',9,'1. email: maszka100@gmail.com - nie jest zapisany na liście Subskrybenci newslettera (ale na ten adres jest założone konto)\r\n2. zapisałam email maszka100@gmail.com na zapisy na newsletter i pojawił się komunikat: Wystąpił problem z subskrypcją: Ten e-mail jest już przypisany do innego użytkownika (czyli jeśli mam zalożone konto, to nie mogę się zapisac tylko na newsletter). \r\n','2017-12-11 10:27:32',0),(289,51,'Issue',7,'когда клиент подписывается на рассылку он вводит только e-mail, имя недоступно','2017-12-11 10:28:15',0),(290,29,'Issue',9,'Proszę o info: gdzie można edytować formularz kontaktowy na stronie kontakt?','2017-12-11 11:03:19',0),(291,6,'Issue',9,'Footer OK - dodałam nazwy grafik (FB, Tw..)\r\nMedia społecznościowe proszę też zaktualizować przy opisie produktów','2017-12-11 11:17:25',0),(292,71,'Issue',9,'gdzie można edytować formularz kontaktowy?\r\nslowo: Logowanie - nie jest tam potrzebne\r\nchce też zmienić nazwy pól..','2017-12-11 11:19:32',0),(293,57,'Issue',9,'1. \r\n\r\nPodsumowanie i płatność zamówienia: (załacznik: podsumowanie mini koszyka) \r\n-dodajemy: MAM JUŻ KONTO (logowanie)\r\n-dodajemy: ZAKŁADAM KONTO (przekierowanie na stronę zakładania konta\r\n-dodajemy: KUPUJĘ JAKO GOŚĆ\r\n-pole adres pocztowy zmieniamy na: Ulica (obowiązkowe)\r\n-dodajemy nazwę kolejnego pola: Numer domu (obowiązkowe)\r\n-zapis na newsletter dla klienta-gościa przenosimy na dół strony\r\n-podsumowanie zamówienia zmieniamy na takie jak na zdjęciu z załącznika:\r\nŁączna wartość koszyka:\r\nPRODUKTY I USŁUGI:\r\nProdukty x zł z VAT\r\nDostawa x zł z VAT\r\nSUMA:\r\nRazem netto x zł\r\nVAT x zł\r\nRazem brutto x zł\r\nMETODA PŁATNOŚCI: kurier DPD...\r\n\r\n2. Zakładanie nowego konta (po kliknięciu na załóż konto)\r\n- pole: Person type - jest widoczne 2 razy (1 trzeba usunąć)\r\n- osoby kupujące po cenach detalicznych nie muszą zaznaczać żadnego okienka. Ceny detaliczne są przypisane wszystkim. Jeśli osoba rejestrująca wypełni pole: nazwa firmy - to od razu wiadomo, że jest to firma i musi dodatkowo wypełnić pole NIP. (nie ma potrzeby, że klienci detaliczni musieli coś zaznaczać lub wybierać)\r\n- checkbox: Firma-hurtownia (z opisem: Firmy związane z BRANŻĄ OKIENNĄ I DRZWIOWĄ: sklepy, hurtownie, firmy serwisowo-montażowe. Rejestracja firmy-hurtowni wymaga przesłania dokumentu rejestracyjnego CEIDG) \r\n- po zaznaczeniu checkbox: Firma-hurtownia - powinno pojawić się: Dołącz dokument rejestracyjny CEIDG (pobierz pdf, jpg, png) (tego obecnie nie ma)\r\n- wypełnienie wszystkich danych adresowych, nazwy firmy, NIP powinno być na stronie rejestracji, a nie po przejściu na konto klienta. \r\n\r\n\r\n\r\n','2017-12-13 06:36:56',0),(294,128,'Issue',12,'','2017-12-13 06:49:05',0),(295,25,'Issue',9,'\r\n','2017-12-13 06:49:19',0),(296,47,'Issue',9,'','2017-12-13 07:10:58',0),(297,14,'Issue',9,'proszę zmienić nazwę pola: Adres pocztowy na Ulica\r\ndrugi pusty wiersz proszę nazwać: Numer domu (pole obowiązkowe)','2017-12-13 07:15:34',0),(298,73,'Issue',9,'Nadal jest widoczne: Subskrybuj kanał RSS (załacznik: RSS kanal)\r\nKlikam dodaj produkt do koszyka - pojawia się błąd: No such entity with customerId = 126 (załącznik: dodaj_produkt_koszyk)','2017-12-13 07:25:09',0),(299,50,'Issue',9,'','2017-12-13 07:25:48',0),(300,37,'Issue',9,'źle wpisany kod pocztowy - pojawia się komunikat: Wprowadzono niepoprawny ZIP - proszę poprawić na: Wprowadzono niepoprawny kod pocztowy. Prawidłowy zapis xx-xxx \r\nWypełniam wszystkie pola, klikam zapisz i system nie zapisuje danych, pola znowu są puste.','2017-12-13 07:46:18',0),(301,51,'Issue',9,'У нас всегда есть адрес электронной почты. Мы можем сказать привет: Witaj maszka100@gmail.com ','2017-12-13 07:50:26',0),(302,155,'Issue',12,'було зроблено раніше','2017-12-13 16:21:07',0),(303,89,'Issue',7,'http://img.wiki.plumrocket.com/images/d/d4/Magento_2_inline_translation_1.jpg\r\nhttp://img.wiki.plumrocket.com/images/7/75/Magento_2_inline_translation_2vz.jpg\r\n\r\nможно включить функцию inline-translate, после этого на сайте появится возможность выделять нужные блоки с текстами и переводить','2017-12-14 10:03:40',0),(304,89,'Issue',7,'','2017-12-14 10:03:48',0),(305,24,'Issue',8,'','2017-12-15 05:24:28',0),(306,154,'Issue',9,'Baza dystrybutorów - [BR036] Baza dystrybutorów systemów zabezpieczeń -> ta baza nie bedzie fizycznie robiona w sklepie. \r\nBaza jest dostępna na naszej stronie głównej https://www.winkhaus.com/pl-pl/dostawcy \r\nW sklepie (np. w footer) dodamy: baza dystrybutorów zabezpieczeń i podlinkujemy do strony głównej ','2017-12-19 04:47:17',0),(307,64,'Issue',9,'Baza dystrybutorów - [BR036] Baza dystrybutorów systemów zabezpieczeń -> ta baza nie bedzie fizycznie robiona w sklepie. \r\nBaza jest dostępna na naszej stronie głównej https://www.winkhaus.com/pl-pl/dostawcy \r\nW sklepie (np. w footer) dodamy: Dystrybutorzy zabezpieczeń i podlinkujemy do strony głównej','2017-12-19 04:50:39',0),(308,64,'Issue',7,'','2017-12-19 09:06:57',0),(309,21,'Issue',7,'','2017-12-19 09:07:21',0),(310,158,'Issue',7,'','2017-12-19 09:09:18',0),(311,4,'Issue',7,'','2017-12-19 09:41:01',0),(312,4,'Issue',7,'stores->configuration->webspeaks->notification','2017-12-19 09:42:09',0),(313,102,'Issue',7,'stores->configuration->webspeaks->notification','2017-12-19 09:42:44',0),(314,63,'Issue',7,'','2017-12-19 09:43:12',0),(315,51,'Issue',7,'to jest zrobione)','2017-12-19 13:32:31',0),(316,89,'Issue',9,'доступ к Magento только для нашей компании. Переводы выполняются внешней компанией - мы не можем предоставить им доступ к нашей системе.\r\nПоэтому у нас должны быть файлы с текстами, которые нужно перевести','2017-12-20 04:30:56',0),(317,64,'Issue',9,'','2017-12-20 04:37:09',0),(318,158,'Issue',9,'','2017-12-20 04:37:55',0),(319,4,'Issue',9,'Pasek można edytować, ale czcionka dla czcionki rozmiaru 16 - pasek: kategorie jest na pomaranczowym polu (jak na zdjeciu załacznik)','2017-12-20 05:29:37',0),(320,102,'Issue',9,'To samo zadanie co w punkcie 4.','2017-12-20 05:30:41',0),(321,63,'Issue',9,'Prosze o info gdzie jest ta baza?\r\n','2017-12-20 05:44:03',0),(322,4,'Issue',9,'','2017-12-20 05:44:26',0),(323,102,'Issue',9,'','2017-12-20 05:44:41',0),(324,51,'Issue',9,'','2017-12-20 05:56:31',0),(325,149,'Issue',7,'установил и настроил модуль для улучшеной настройки SEO, \r\nразработал свой модуль Rewrite category title (h1), прикрепляю screenshot','2017-12-26 05:40:23',0),(326,149,'Issue',7,'','2017-12-26 05:51:20',0),(327,149,'Issue',7,'','2017-12-26 05:51:36',0),(328,37,'Issue',7,'','2017-12-27 07:54:07',0),(329,14,'Issue',7,'','2017-12-27 07:54:21',0),(330,27,'Issue',7,'','2017-12-27 07:54:40',0),(331,28,'Issue',7,'','2017-12-27 07:54:51',0),(332,32,'Issue',7,'','2017-12-27 07:55:05',0),(333,39,'Issue',7,'','2017-12-27 07:55:19',0),(334,46,'Issue',7,'','2017-12-27 07:55:30',0),(335,72,'Issue',7,'','2017-12-27 07:55:41',0),(336,13,'Issue',7,'','2017-12-28 08:59:38',0),(337,10,'Issue',7,'','2017-12-28 09:00:14',0),(338,9,'Issue',7,'','2017-12-28 09:00:36',0),(339,11,'Issue',7,'','2017-12-28 09:00:52',0),(340,73,'Issue',7,'','2017-12-28 09:02:45',0),(341,57,'Issue',7,'','2017-12-28 09:03:07',0),(342,71,'Issue',7,'stores->configuration->foxSeo - там есть два поля для настройки h1 и meta title страницы contact','2017-12-28 09:03:59',0),(343,6,'Issue',7,'тут сделать такие же ссылки как в футере?','2017-12-28 09:16:46',0),(344,6,'Issue',7,'','2017-12-28 09:16:58',0),(345,54,'Issue',7,'','2017-12-28 09:18:23',0),(346,29,'Issue',7,'я добавил два статических блока (content->blocks), называются kontaktRight, kontaktBottom','2017-12-28 09:20:27',0),(347,29,'Issue',7,'','2017-12-28 09:20:36',0),(348,89,'Issue',7,'прикрепляю файл с текстами, формат перевода - \"Save and Continue Edit\", \"Save and Continue Edit(эта строчка для перевода)\"','2017-12-29 04:28:23',0),(349,89,'Issue',7,'','2017-12-29 04:28:39',0),(350,137,'Issue',9,'Zostały uruchomiony system płatności kartami kredytowymi w EUR i CZK (do tej pory działały tylko PLN)\r\nDla nowych walut zostały utworzone subkonta:\r\ndla waluty CZK - 69243\r\ndla waluty EUR - 69244\r\ndla PLN - 38339\r\nW sklepie trzeba wykonać odpowiednie wdrożenie - tak, żeby klient wybierając walutę EUR został przekierowany na odpowiednią stronę - do płatności na konto EUR. \r\nDla zamówień w CZK i EUR na fakturze proforma powinny pojawić się odpowiednie dla waluty konta bankowe.  ','2018-01-02 10:00:09',0),(351,149,'Issue',9,'','2018-01-03 05:54:12',0),(352,37,'Issue',9,'Notatka dla pola: kod pocztowy (podgląd w załączku: kod pocztowy)\r\nprosze usunąć: Wprowadzono niepoprawny ZIP - proszę poprawić na: \r\nma zostać tylko: Wprowadzono niepoprawny kod pocztowy. Prawidłowy zapis xx-xxx \r\n\r\nRejestracja nowego konta: maszka100@gmail.com\r\npróba 1: komunikat: Delete operation is forbidden for current area\r\npróba 2: komunikat: Istnieje już konto z takim adresem e-mail. Jeśli masz pewność, że to twój adres, kliknij tutaj, zresetuj hasło aby odzyskać dostęp do konta. \r\nSprawdziłam - W systemie nie ma takiego konta!\r\nNie sprawdziłam przesyłania pliku i rejestracji na konto hurtowe (sprawdze jak bedzie działała rejestracja)','2018-01-03 06:40:39',0),(353,14,'Issue',9,'','2018-01-03 06:41:55',0),(354,37,'Issue',9,'Brakuje pola numer telefonu (pole obowiązkowe)','2018-01-03 06:42:38',0),(355,27,'Issue',9,'','2018-01-03 06:43:59',0),(356,28,'Issue',9,'','2018-01-03 06:45:16',0),(357,13,'Issue',9,'Na razie nie kupujmy płatnego modułu - zobaczymy czy bez niego uda się wdrożyć wszystkie zadania. Jeśli okaże się, ze jest potrzeba, to wówczas zamówimy.','2018-01-03 07:44:12',0),(358,73,'Issue',9,'po dodaniu produktów do koszyka - nadal jest widoczne: Subskrybuj kanał RSS','2018-01-03 08:47:35',0),(359,71,'Issue',9,'Instrukcja: stores->configuration->foxSeo - там есть два поля для настройки h1 и meta title страницы contact - dotyczy tytułu na stronie. \r\n\r\nMoje pytanie dotyczy formularza kontaktowego po prawej stronie. \r\nGdzie można edytować nazwy pól?\r\n','2018-01-03 09:03:22',0),(360,6,'Issue',9,'Tak, jak w stopce - 6 ikon społecznościowych (małe rozmiary)','2018-01-03 09:05:38',0),(361,54,'Issue',9,'','2018-01-03 09:07:19',0),(362,29,'Issue',9,'','2018-01-03 09:20:01',0),(363,71,'Issue',7,'нет возможности редактировать названия полей из админ панели, я могу поменять названия сам, напишите их','2018-01-03 09:47:00',0),(364,71,'Issue',7,'','2018-01-03 10:13:14',0),(365,71,'Issue',9,'OK, proszę o zmianę nazwy pól:\r\nNazwa -> Imię i nazwisko\r\nCo masz na myśli? -> Twoja wiadomość\r\n','2018-01-04 04:40:55',0),(366,57,'Issue',9,'1. Brakuje pola: Telefon (*) \r\n2. Rejestracja dla hurtowni - proszę wstawić pusty wiersz (albo nawet 2) po polu NIP firmy, żeby pola dla hurtowni były bardziej czytelne. \r\n\r\nProszę też dodać pełny opis przed checkboxem:\r\nJesteś producentem okien i drzwi, prowadzisz hurtownię lub inną firmę związaną z branżą okienną, np. firmę serwisowo-montażową? \r\nZałóż konto dla hurtowni - zaznacz poniższe pole: Rejestracja dla hurtowni i załącz dokument rejestracji firmy. \r\n\r\ncheckbox: Rejestracja dla hurtowni \r\ndodatkowy opis: Rejestracja firmy-hurtowni wymaga przesłania dokumentu rejestracyjnego CEIDG. Dane firmy hurtowej będą sprawdzone! \r\n\r\nPo zaznaczeniu checkbox: Firma-hurtownia - kolejne pole załącznik CEIDG - powinno być polem obowiązkowym. \r\n\r\n\r\nNie mogę założyc konta na email: maszka100@gmail.com - jest komunikat, że konto już istnieje, ale w bazie-magento go nie ma!\r\n\r\n\r\n\r\n\r\n\r\n','2018-01-04 08:42:32',0),(367,6,'Issue',9,'prosze zmienić pod produktem: dodaj do koszyka\r\nNie mamy Pinterest \r\nale mamy Linkedin ','2018-01-04 09:15:02',0),(368,6,'Issue',7,'','2018-01-09 09:21:59',0),(369,71,'Issue',7,'','2018-01-09 10:03:42',0),(370,37,'Issue',7,'','2018-01-09 10:07:12',0),(371,65,'Issue',7,'+','2018-01-09 10:20:55',0),(372,5,'Issue',7,'','2018-01-10 04:25:02',0),(373,7,'Issue',7,'прошу проверить актуальность задачи','2018-01-10 04:30:00',0),(374,88,'Issue',7,'','2018-01-10 04:30:41',0),(375,137,'Issue',7,'я установил модуль Przelewy24, для дальнейшей настройки нужны данные аккаунта Przelewy24','2018-01-10 04:59:58',0),(376,58,'Issue',7,'','2018-01-10 07:26:14',0),(377,73,'Issue',7,'','2018-01-10 12:03:39',0),(378,6,'Issue',9,'','2018-01-10 12:38:49',0),(379,71,'Issue',9,'','2018-01-10 12:40:08',0),(380,73,'Issue',9,'','2018-01-11 04:21:28',0),(381,58,'Issue',9,'','2018-01-11 04:29:46',0),(382,137,'Issue',9,'1. Numer konta bankowych dla faktur proforma podam później. \r\n\r\n2. Przelewy24.pl \r\n\r\nID 37772 - testowe - SANDBOX\r\nhasło: winkhaus123\r\n\r\nNiestety na Sandbox, można testować tylko w walucie PLN. \r\nDla EUR i CZK mamy podpisaną umowę tylko na płatności kartą kredytową (bez e-przelewów). \r\nKarty kredytowe EUR i CZK są podłączone do Sandbox, ale transakcje trzeba wywołać w PLN.\r\n\r\n\r\n\r\n\r\n\r\n\r\n','2018-01-11 06:33:31',0),(383,88,'Issue',9,'1. \r\nDodałam opis do kategorii: produkty do okien. \r\nKomunikat: (zdjecie -produktydookien)\r\nNie można zapisać zmian. Twój serwer nie jest poprawnie skonfigurowany i pozwala na nieautoryzowany dostęp do wrażliwych plików. Skontaktuj się z dostawcą usług hostingowych.\r\n\r\n\r\nwstawiony kod:\r\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"10\">\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"center\" valign=\"top\" width=\"80\">\r\n				<div align=\"center\"><img height=\"50\" src=\"http://www.sklep.winkhaus.pl/bloki/blok_1/img/WHinfo/2_m.jpg\" width=\"50\" /></div></td>\r\n			<td align=\"left\" valign=\"middle\">\r\n				<span class=\"styl2\">Okucia okienne i drzwiowe Winkhaus wymagają specjalistycznego doboru oraz montażu.<br />\r\n				Przed zakupem prosimy o zapoznanie się z ich specyfikacją techniczną i instrukcją montażu (prosimy o kontakt z działem technicznym tel.&nbsp;<span style=\"font-family: Tahoma, Helvetica, sans-serif;\">65 52 55 717, 65 52 55 722 lub 65 52 55 730</span>) lub o zlecenie zakupu i montażu firmie serwisowo-montażowej (<a href=\"http://shb.winkhaus.pl/pl/informacje/baza_firm.html\" style=\"font-size: 12px;\">znajdź firmę serwisowo-montażową</a>).</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n\r\n\r\n2. drugi test - na kategorii: klamki 099 - ten sam problem\r\nUWAGA: w tym html jest VIDEO\r\n(zdjecie -klamki099)\r\n\r\n\r\nkod:\r\n<table border=\"0\" cellpadding=\"10\" cellspacing=\"10\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"211\">\r\n				<img height=\"103\" src=\"http://www.sklep.winkhaus.pl/bloki/blok_1/img/klucz_Ntra.jpg\" width=\"211\" /></td>\r\n			<td align=\"left\" valign=\"middle\">\r\n				Klucz dodatkowy do wkładki N-tra (NT) - <a href=\"https://sklep.winkhaus.pl/pl/shop/5054252_klucz_dodatkowy_nt.html\">zam&oacute;w <img align=\"absbottom\" border=\"0\" height=\"11\" src=\"http://www.sklep.winkhaus.pl/bloki/blok_3/img/pfeil.gif\" width=\"11\" /></a><br />\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table border=\"0\" cellpadding=\"10\" cellspacing=\"10\">\r\n	<tbody>\r\n		<tr align=\"left\" valign=\"top\">\r\n			<td width=\"200\">\r\n				<div align=\"left\"><a href=\"http://www.sklep.winkhaus.pl/bloki/blok_1/img/pomiar_wkladki.jpg\"><img align=\"top\" border=\"0\" height=\"147\" src=\"http://www.sklep.winkhaus.pl/bloki/blok_1/img/pomiar_wkladki_m.jpg\" width=\"200\" /></a></div></td>\r\n			<td>\r\n				<strong>Jak zmierzyć wkładkę?</strong><br />\r\n				<strong>wymiar A</strong> - strona zewnętrzna = w naszym przykładzie: 30 mm<br />\r\n				<strong>wymiar B</strong> - strona wewnętrzna (od strony, np. domu) = 30 mm<br />\r\n				Wkładka bębenkowa nie powinna wystawać po zamontowaniu więcej niż 2-3 mm poza szyld.<br />\r\n				<a href=\"https://www.sklep.winkhaus.pl/pl/abc_porady_i_informacje/jak_zmierzyc_prawidlowo_wkladke.html\"><br />\r\n				Zobacz instrukcję pomiaru wkładek <img align=\"absbottom\" border=\"0\" height=\"30\" src=\"http://www.sklep.winkhaus.pl/bloki/blok_1/img/www.gif\" width=\"30\" /></a><br />\r\n				<br />\r\n				<strong>Zobacz film: jak zmierzyć wkładkę</strong> <a href=\"http://www.sklep.winkhaus.pl/bloki/blok_1/img/wymiarowanie-wkladki.MP4\"><br />\r\n				<iframe allowfullscreen=\"\" frameborder=\"0\" height=\"169\" src=\"https://www.youtube.com/embed/7B1bWfhS4Rs\" width=\"300\"></iframe></a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n','2018-01-11 08:56:59',0),(384,5,'Issue',9,'','2018-01-11 09:21:13',0),(385,37,'Issue',9,'Nadal jest problem z rejestracją (sprawdzałam 3 razy)\r\nNie mogę założyć konta dla: maszka100@gmail.com\r\nkomunikat: Delete operation is forbidden for current area\r\nlub: konto o podanym adresie już istnieje\r\n\r\n','2018-01-11 09:54:38',0),(386,89,'Issue',9,'Tak, wlasnie o taki plik chodziło - tylko proszę o polskie teksty.\r\nCzy te teksty dotyczą samego sklepu? \r\nCzy też magento-admin? Wydaje mi się, że dotyczą też panelu administracyjnego..\r\nTłumaczymy tylko sklep - administracja zostaje tylko po polsku. \r\nProsze więc przygotowac plik z tekstami po polsku, ale tylko z części sklepowej (bez administracji).\r\n\r\n','2018-01-11 13:50:09',0),(387,70,'Issue',9,'','2018-01-11 13:52:39',0),(388,68,'Issue',9,'','2018-01-11 14:02:32',0),(389,10,'Issue',9,'','2018-01-11 14:05:57',0),(390,21,'Issue',9,'','2018-01-11 14:06:48',0),(391,159,'Issue',7,'+','2018-01-12 06:14:24',0),(392,88,'Issue',7,'','2018-01-12 08:34:28',0),(393,37,'Issue',7,'','2018-01-12 08:36:55',0),(394,37,'Issue',7,'процедура регистрации сейчас в работе, ошибка устранена','2018-01-12 08:38:18',0),(395,159,'Issue',9,'Niestety nadal nie działa. \r\n\r\nszukam email: maszka100@gmail.com -> system pokazuje mi wszystkie adresy @gmail.com\r\nszukam 6970011183 (to jest NIP - jest przypisany do konta Marzena.Jakimowicz@winkhaus.pl) - program nie znajduje danych','2018-01-12 09:04:49',0),(396,88,'Issue',9,'','2018-01-12 09:17:05',0),(397,159,'Issue',7,'по этому аккаунту NIP не указан, поэтому не ищет (Screen Shot 2018-01-15 at 12.55.37 AM.png)\r\nпоиск может быть двух типов: \r\n - по ключевым словам, точное совпадение (Screen Shot 2018-01-15 at 12.58.04 AM.png)\r\n - по фильтрам, умный поиск, находит по конкретным полям все похожие слова, нажмите кнопку Filter чтобы посмотреть доступные критерии поиска (Screen Shot 2018-01-15 at 12.59.41 AM.png)','2018-01-14 18:01:21',0),(398,159,'Issue',7,'','2018-01-14 18:01:28',0),(399,159,'Issue',7,'пример поиска по NIP','2018-01-14 18:04:14',0),(400,159,'Issue',7,'пример поиска через Filter','2018-01-14 18:04:58',0),(401,159,'Issue',9,'1. Na moim koncie - w ksiązce adresowej jest NIP 6970011183 - program powinien znaleźć takiego klienta (zdjecie: NIP Marzena Jakimowicz)\r\n2. Na koncie Alex - są 2 różnie adresy NIP. Jak to możliwe? Klient może mieć tylko jeden NIP - system nie może pozwolić na wprowadzenie drugiego NIP (zdjecie: NIP Alex)\r\n3. Program nie pomoże pozwolić, żeby 1 NIP był zapisany dla 2 różnych firm. To błąd. Program powinien pokazać komunikat: Firma z numerem NIP xxxxxx jest już zarejestrowana w naszym sklepie.','2018-01-15 04:39:52',0),(402,151,'Issue',9,'W zakładce SKLEP jest KURSY WALUT - jak to działa?\r\n\r\nW naszym sklepie potrzebujemy 3 kursy. \r\nEUR, PLN i CZK. \r\nWszystkie ceny pobrane z SAP są w EUR więc dla sklepu w EUR mamy odpowiednie ceny.\r\n\r\nPotrzebujemy wstawić 2 kursy: \r\nEUR na PLN\r\nEUR na CZK\r\nJak wstawić te kursy?\r\n\r\nJak działa IMPORT (SKLEP -> KURSY WALUT)?','2018-01-16 07:15:32',0),(403,136,'Issue',9,'1. W Magento-admin musimy mieć pola, gdzie będziemy samodzielnie aktualizować:\r\n- ceny przesyłek kurierem (zmieniają się)\r\n- termin dostawy\r\n- dodawać nowy sposób transportu\r\n\r\n2. W przyszłości planujemy dodanie innego kuriera - klient będzie mógł wybrać jakim kurierem chce wysyłkę. Dwóch kurierów jednocześnie.\r\nProszę przygotować system na dodanie nowego kuriera\r\n\r\n2. Proszę o przygotowanie tych pól - koszty transportu i czas dostawy wprowadzę samodzielnie.\r\n\r\n3. W zamówieniu powinny pojawić się koszty transportu, czas dostawy dla wybranego kraju dostawy, np.\r\nKlient wpiszę adres dostawy: Litwa - program powinien zaktualizować koszt transportu i pokazać cenę dla wysyłki na Litwę. Powinien też pokazać się czas dostawy.\r\n\r\n4. Dostawa w Polsce - zamówienie na kwotę 1000 i więcej PLN brutto - NA NASZ KOSZT\r\n\r\n5. Kraj - sposób dostawy - sposób płatności:\r\n\r\nPolska \r\n- dostawa kurierem - płatność: zwykły przelew; przelew online; przelew online - karta kredytowa; wysyłka za pobraniem\r\n- odbiór osobisty (do wyboru: Rydzyna, Warszawa, Katowice) - płatność gotówka\r\n\r\nKraje UE\r\n- dostawa kurierem - płatność: zwykły przelew; przelew online - karta kredytowa\r\n\r\n','2018-01-16 08:07:16',0),(404,163,'Issue',9,'Zapomniałam jeszcze o klientach SAP - waluta PLN\r\nKażdy klient SAP ma indywidualny numer konta bankowego. \r\n\r\nOddział Korporacyjny Poznań\r\nmBank S.A.\r\nul. Półwiejska 42\r\n61-888 Poznań\r\nPolska\r\nSWIFT: BREXPLPWPOZ \r\n\r\nzasada jest taka:\r\nPLAA 1140 1124 3458 0000 BBBB BBBB \r\n\r\nAA - suma kontrolna\r\nBBBB BBBB - numer klienta dodatkowo uzupełniony wiodącą cyfrą 0 \r\nprzykład dla klient nr 2002374 -> konto bankowe : PL43 1140 1124 3458 0000 0200 2374\r\n\r\n\r\n','2018-01-24 04:47:27',0),(405,7,'Issue',9,'\r\n','2018-01-24 05:37:02',0),(406,9,'Issue',9,'','2018-01-24 11:00:58',0),(407,11,'Issue',9,'','2018-01-24 11:01:31',0),(408,65,'Issue',9,'Proszę o przygotowanie szablonu wiadomości: potwierdzenie zamówienia. \r\nKlient powinien otrzymać maila z takim potwierdzeniem zamówienia. \r\nW załączeniu do maila powinna być:\r\n1. Faktura proforma\r\n2. Regulamin sklepu\r\n\r\nW załączeniu projekt - jakie informacje mają być w wiadomości.\r\n','2018-01-25 07:44:53',0),(409,156,'Issue',12,'','2018-01-31 03:03:11',0),(410,128,'Issue',12,'','2018-01-31 03:03:28',0),(411,107,'Issue',12,'','2018-01-31 03:03:44',0),(412,108,'Issue',12,'','2018-01-31 03:04:02',0),(413,157,'Issue',12,'','2018-01-31 03:05:37',0),(414,109,'Issue',12,'','2018-01-31 03:06:18',0),(415,87,'Issue',12,'','2018-01-31 03:06:42',0),(416,87,'Issue',12,'','2018-01-31 03:06:54',0),(417,120,'Issue',12,'сама дороблю','2018-01-31 06:31:09',0);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_roles`
--

LOCK TABLES `member_roles` WRITE;
/*!40000 ALTER TABLE `member_roles` DISABLE KEYS */;
INSERT INTO `member_roles` VALUES (1,1,4,NULL),(2,2,4,NULL),(3,3,3,NULL),(4,1,5,NULL),(5,3,4,NULL),(6,4,3,NULL),(7,5,5,NULL),(8,6,5,NULL),(9,7,3,NULL),(10,8,4,NULL),(11,9,4,NULL),(17,11,4,NULL),(18,12,4,NULL),(19,12,5,NULL),(20,13,4,NULL),(21,14,4,NULL),(22,14,5,NULL),(23,15,4,NULL),(24,15,5,NULL),(25,16,4,NULL),(26,16,5,NULL);
/*!40000 ALTER TABLE `member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,5,2,'2017-10-04 02:37:34',0),(2,7,2,'2017-10-04 04:22:02',0),(3,9,2,'2017-10-04 04:22:11',0),(4,11,2,'2017-10-09 06:06:04',0),(5,12,5,'2017-10-10 02:51:00',0),(6,12,6,'2017-10-10 02:51:00',0),(7,13,4,'2017-10-11 05:41:23',0),(8,14,6,'2017-10-25 03:40:14',0),(9,15,4,'2017-10-27 06:49:27',0),(11,10,6,'2017-11-06 08:18:55',0),(12,17,5,'2017-11-07 11:00:07',0),(13,15,6,'2017-11-14 03:42:39',0),(14,12,7,'2018-01-31 02:52:36',0),(15,10,7,'2018-01-31 02:52:36',0),(16,8,7,'2018-01-31 02:52:36',0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,2,'Testowa wiadomosc','','testowa wiadomosc',8,'2017-10-04 04:49:47',0),(2,2,'test komunikacji','','To jest TEST!',9,'2017-10-09 04:38:27',0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_associations`
--

LOCK TABLES `open_id_authentication_associations` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_nonces`
--

LOCK TABLES `open_id_authentication_nonces` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_nonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `inherit_members` tinyint(1) NOT NULL DEFAULT '0',
  `default_version_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'test','Test content','',1,NULL,'2017-10-03 16:56:44','2017-10-03 16:56:44','test',5,11,12,0,NULL),(2,'WinkHaus sklep internetowy','','',1,NULL,'2017-10-04 02:36:57','2017-10-04 02:36:57','winkhaus-sklep-internetowy',1,13,14,0,NULL),(3,'MDA','Dworzec MDA Kraków','',1,NULL,'2017-10-09 08:17:04','2017-10-09 08:20:49','mda',1,5,6,0,NULL),(4,'MTMG','Portowy terminal Gdynia','',1,NULL,'2017-10-09 08:17:31','2017-10-09 08:22:02','mtmg',1,7,8,0,NULL),(5,'EMPOL','Empol Wroclaw','',1,NULL,'2017-10-09 08:18:45','2017-10-09 08:18:45','empol',1,1,2,0,NULL),(6,'LS Poland','','',1,NULL,'2017-10-09 08:19:08','2017-10-09 08:19:08','ls-poland',1,3,4,0,NULL),(7,'Skandynawskie Okna','','',1,NULL,'2018-01-31 02:52:10','2018-01-31 02:52:10','skandynawskie-okna',1,9,10,0,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_trackers`
--

LOCK TABLES `projects_trackers` WRITE;
/*!40000 ALTER TABLE `projects_trackers` DISABLE KEYS */;
INSERT INTO `projects_trackers` VALUES (2,2),(2,3),(3,2),(3,3),(4,2),(4,3),(5,2),(5,3),(6,2),(6,3),(7,2),(7,3);
/*!40000 ALTER TABLE `projects_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` mediumtext,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `column_names` mediumtext,
  `sort_criteria` mediumtext,
  `group_by` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `visibility` int(11) DEFAULT '0',
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` VALUES (1,2,'WinkHaus sklep internetowy','---\nstatus_id:\n  :operator: o\n  :values:\n  - \'\'\n',7,NULL,NULL,'','IssueQuery',0,'---\n:totalable_names:\n- :estimated_hours\n- :spent_hours\n:draw_relations: \n:draw_progress_line: \n');
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries_roles`
--

DROP TABLE IF EXISTS `queries_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries_roles` (
  `query_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  UNIQUE KEY `queries_roles_ids` (`query_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries_roles`
--

LOCK TABLES `queries_roles` WRITE;
/*!40000 ALTER TABLE `queries_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` text,
  `identifier` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositories`
--

LOCK TABLES `repositories` WRITE;
/*!40000 ALTER TABLE `repositories` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  `users_visibility` varchar(30) NOT NULL DEFAULT 'all',
  `time_entries_visibility` varchar(30) NOT NULL DEFAULT 'all',
  `all_roles_managed` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Non member',1,1,1,'---\n- :view_issues\n','default','all','all',1),(2,'Anonymous',2,1,2,'---\n- :view_issues\n','default','all','all',1),(3,'Clients',3,1,0,'---\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :add_documents\n- :edit_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :import_issues\n- :manage_news\n- :comment_news\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n','default','all','all',1),(4,'Emploees',4,1,0,'---\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :add_documents\n- :edit_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :import_issues\n- :manage_news\n- :comment_news\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n','own','members_of_visible_projects','own',1),(5,'Project manager',5,1,0,'---\n- :manage_members\n- :add_subprojects\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :copy_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :import_issues\n- :manage_news\n- :comment_news\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n','all','members_of_visible_projects','all',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_managed_roles`
--

DROP TABLE IF EXISTS `roles_managed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_managed_roles` (
  `role_id` int(11) NOT NULL,
  `managed_role_id` int(11) NOT NULL,
  UNIQUE KEY `index_roles_managed_roles_on_role_id_and_managed_role_id` (`role_id`,`managed_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_managed_roles`
--

LOCK TABLES `roles_managed_roles` WRITE;
/*!40000 ALTER TABLE `roles_managed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_managed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('20090214190337'),('20090312172426'),('20090312194159'),('20090318181151'),('20090323224724'),('20090401221305'),('20090401231134'),('20090403001910'),('20090406161854'),('20090425161243'),('20090503121501'),('20090503121505'),('20090503121510'),('20090614091200'),('20090704172350'),('20090704172355'),('20090704172358'),('20091010093521'),('20091017212227'),('20091017212457'),('20091017212644'),('20091017212938'),('20091017213027'),('20091017213113'),('20091017213151'),('20091017213228'),('20091017213257'),('20091017213332'),('20091017213444'),('20091017213536'),('20091017213642'),('20091017213716'),('20091017213757'),('20091017213835'),('20091017213910'),('20091017214015'),('20091017214107'),('20091017214136'),('20091017214236'),('20091017214308'),('20091017214336'),('20091017214406'),('20091017214440'),('20091017214519'),('20091017214611'),('20091017214644'),('20091017214720'),('20091017214750'),('20091025163651'),('20091108092559'),('20091114105931'),('20091123212029'),('20091205124427'),('20091220183509'),('20091220183727'),('20091220184736'),('20091225164732'),('20091227112908'),('20100129193402'),('20100129193813'),('20100221100219'),('20100313132032'),('20100313171051'),('20100705164950'),('20100819172912'),('20101104182107'),('20101107130441'),('20101114115114'),('20101114115359'),('20110220160626'),('20110223180944'),('20110223180953'),('20110224000000'),('20110226120112'),('20110226120132'),('20110227125750'),('20110228000000'),('20110228000100'),('20110401192910'),('20110408103312'),('20110412065600'),('20110511000000'),('20110902000000'),('20111201201315'),('20120115143024'),('20120115143100'),('20120115143126'),('20120127174243'),('20120205111326'),('20120223110929'),('20120301153455'),('20120422150750'),('20120705074331'),('20120707064544'),('20120714122000'),('20120714122100'),('20120714122200'),('20120731164049'),('20120930112914'),('20121026002032'),('20121026003537'),('20121209123234'),('20121209123358'),('20121213084931'),('20130110122628'),('20130201184705'),('20130202090625'),('20130207175206'),('20130207181455'),('20130215073721'),('20130215111127'),('20130215111141'),('20130217094251'),('20130602092539'),('20130710182539'),('20130713104233'),('20130713111657'),('20130729070143'),('20130911193200'),('20131004113137'),('20131005100610'),('20131124175346'),('20131210180802'),('20131214094309'),('20131215104612'),('20131218183023'),('20140228130325'),('20140903143914'),('20140920094058'),('20141029181752'),('20141029181824'),('20141109112308'),('20141122124142'),('20150113194759'),('20150113211532'),('20150113213922'),('20150113213955'),('20150208105930'),('20150510083747'),('20150525103953'),('20150526183158'),('20150528084820'),('20150528092912'),('20150528093249'),('20150725112753'),('20150730122707'),('20150730122735'),('20150921204850'),('20150921210243'),('20151020182334'),('20151020182731'),('20151021184614'),('20151021185456'),('20151021190616'),('20151024082034'),('20151025072118'),('20151031095005'),('21'),('22'),('23'),('24'),('25'),('26'),('27'),('28'),('29'),('3'),('30'),('31'),('32'),('33'),('34'),('35'),('36'),('37'),('38'),('39'),('4'),('40'),('41'),('42'),('43'),('44'),('45'),('46'),('47'),('48'),('49'),('5'),('50'),('51'),('52'),('53'),('54'),('55'),('56'),('57'),('58'),('59'),('6'),('60'),('61'),('62'),('63'),('64'),('65'),('66'),('67'),('68'),('69'),('7'),('70'),('71'),('72'),('73'),('74'),('75'),('76'),('77'),('78'),('79'),('8'),('80'),('81'),('82'),('83'),('84'),('85'),('86'),('87'),('88'),('89'),('9'),('90'),('91'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'app_title','Axioma task tracking system','2017-10-04 03:15:18'),(2,'welcome_text','','2017-10-04 03:15:18'),(3,'per_page_options','25,50,100','2017-10-04 03:15:18'),(4,'search_results_per_page','10','2017-10-04 03:15:18'),(5,'activity_days_default','30','2017-10-04 03:15:18'),(6,'host_name','localhost:3000','2017-10-04 03:15:18'),(7,'protocol','http','2017-10-04 03:15:18'),(8,'text_formatting','textile','2017-10-04 03:15:18'),(9,'cache_formatted_text','0','2017-10-04 03:15:18'),(10,'wiki_compression','','2017-10-04 03:15:18'),(11,'feeds_limit','15','2017-10-04 03:15:18'),(12,'ui_theme','alternate','2017-10-04 03:17:33'),(13,'default_language','en','2017-10-04 03:16:48'),(14,'force_default_language_for_anonymous','0','2017-10-04 03:16:48'),(15,'force_default_language_for_loggedin','0','2017-10-04 03:16:48'),(16,'start_of_week','','2017-10-04 03:16:48'),(17,'date_format','','2017-10-04 03:16:48'),(18,'time_format','','2017-10-04 03:16:48'),(19,'user_format','firstname_lastname','2017-10-04 03:16:48'),(20,'gravatar_enabled','0','2017-10-04 03:16:48'),(21,'gravatar_default','','2017-10-04 03:16:48'),(22,'thumbnails_enabled','0','2017-10-04 03:16:48'),(23,'thumbnails_size','100','2017-10-04 03:16:48'),(24,'cross_project_issue_relations','0','2017-10-04 03:27:24'),(25,'link_copied_issue','ask','2017-10-04 03:27:24'),(26,'cross_project_subtasks','tree','2017-10-04 03:27:25'),(27,'issue_group_assignment','0','2017-10-04 03:27:25'),(28,'default_issue_start_date_to_creation_date','1','2017-10-04 03:27:25'),(29,'display_subprojects_issues','1','2017-10-04 03:27:25'),(30,'issue_done_ratio','issue_field','2017-10-04 03:27:25'),(31,'non_working_week_days','---\n- \'6\'\n- \'7\'\n','2017-10-04 03:27:25'),(32,'issues_export_limit','500','2017-10-04 03:27:25'),(33,'gantt_items_limit','500','2017-10-04 03:27:25'),(34,'parent_issue_dates','derived','2017-10-04 03:27:25'),(35,'parent_issue_priority','derived','2017-10-04 03:27:25'),(36,'parent_issue_done_ratio','derived','2017-10-04 03:27:25'),(37,'issue_list_default_columns','---\n- tracker\n- status\n- priority\n- subject\n- assigned_to\n- updated_on\n','2017-10-04 03:27:25'),(38,'issue_list_default_totals','---\n- estimated_hours\n- spent_hours\n','2017-10-04 03:27:25'),(39,'login_required','1','2017-10-04 03:29:04'),(40,'autologin','0','2017-10-04 03:29:04'),(41,'self_registration','0','2017-10-04 03:29:04'),(42,'unsubscribe','0','2017-10-04 03:29:04'),(43,'password_min_length','8','2017-10-04 03:29:04'),(44,'password_max_age','0','2017-10-04 03:29:04'),(45,'lost_password','1','2017-10-04 03:29:04'),(46,'max_additional_emails','5','2017-10-04 03:29:04'),(47,'openid','0','2017-10-04 03:29:04'),(48,'session_lifetime','0','2017-10-04 03:29:04'),(49,'session_timeout','0','2017-10-04 03:29:04'),(50,'default_users_hide_mail','1','2017-10-04 03:29:04'),(51,'rest_api_enabled','1','2017-10-10 04:15:03'),(52,'jsonp_enabled','1','2017-10-10 04:15:03');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(1024) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_entries`
--

LOCK TABLES `time_entries` WRITE;
/*!40000 ALTER TABLE `time_entries` DISABLE KEYS */;
INSERT INTO `time_entries` VALUES (1,6,14,105,8.5,'',5,'2017-11-07',2017,11,45,'2017-11-07 02:27:59','2017-11-07 02:27:59'),(2,6,14,116,1,'',5,'2017-11-07',2017,11,45,'2017-11-07 02:29:47','2017-11-07 02:29:47'),(3,6,14,112,8.5,'',5,'2017-11-07',2017,11,45,'2017-11-07 02:31:03','2017-11-07 02:31:03'),(4,6,14,111,2,'',5,'2017-11-07',2017,11,45,'2017-11-07 02:31:42','2017-11-07 02:31:42'),(5,6,14,110,2.5,'',5,'2017-11-07',2017,11,45,'2017-11-07 02:32:10','2017-11-07 02:32:10'),(6,6,14,122,2.5,'',4,'2017-11-23',2017,11,47,'2017-11-23 01:24:27','2017-11-23 01:24:27'),(7,6,14,108,16.5,'',4,'2017-12-07',2017,12,49,'2017-12-07 02:05:35','2017-12-07 02:05:35'),(8,6,14,128,1.25,'',4,'2017-12-14',2017,12,50,'2017-12-14 01:55:08','2017-12-14 01:55:08'),(9,6,14,156,0.5,'',4,'2017-12-14',2017,12,50,'2017-12-14 01:55:57','2017-12-14 01:55:57');
/*!40000 ALTER TABLE `time_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_value` (`value`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (2,1,'feeds','335085ddfc122fee1d6d879ee4f39adb6cfef687','2017-09-20 16:11:46','2017-09-20 16:11:46'),(9,5,'feeds','ea7925249507f56bef3152f620ab63515a37cbcd','2017-10-04 02:39:13','2017-10-04 02:39:13'),(17,8,'feeds','59c69410e783a4c706872894164999b70de078ed','2017-10-04 04:11:30','2017-10-04 04:11:30'),(30,7,'feeds','a83cfdd5a79945c5c2c268ea0be4691be3849e02','2017-10-05 17:22:01','2017-10-05 17:22:01'),(36,1,'session','8a384436989649affe01f1658b34ad505aa3672f','2017-10-06 04:16:03','2017-10-06 04:47:43'),(37,1,'session','f1ce8122ae169bc56c52e84a2ad7322ee64cd275','2017-10-06 07:19:39','2017-10-06 07:20:00'),(45,8,'session','42d3810d77f4581e52d2d214c31f8a0bfd099be3','2017-10-09 03:28:08','2017-10-10 21:20:59'),(48,9,'feeds','6886660fa88be1951f1558bebbeb76df830d24f6','2017-10-09 03:34:03','2017-10-09 03:34:03'),(53,11,'feeds','722b5966239e9220d5e83b8bc3e72a929582f732','2017-10-09 06:06:32','2017-10-09 06:06:32'),(56,8,'session','5688040d737d1f57ed38cb73a97678f91277e1e4','2017-10-09 06:16:08','2017-10-10 06:11:27'),(59,10,'feeds','5c070ca828924076d6010a32b8017519dabce3f1','2017-10-09 08:16:18','2017-10-09 08:16:18'),(62,12,'session','b558b02072e12cae6cee8cd5c23f2ed3053f27d8','2017-10-10 02:51:24','2017-10-10 06:05:01'),(63,12,'feeds','56a5d73d79a4590a7c80f573f43415a822eeaf16','2017-10-10 02:51:24','2017-10-10 02:51:24'),(65,10,'api','6e906502aaaf48cc8d83eec6286141ec5cd9d772','2017-10-10 03:07:35','2017-10-10 03:07:35'),(77,10,'session','5905508f7f90d5f8d446308dd70ad8d0485d4f1e','2017-10-10 04:15:59','2017-10-10 04:16:12'),(78,10,'session','8b8067c790cedd547f42a30ba1a641033b53debd','2017-10-10 09:50:35','2017-10-10 09:50:49'),(82,10,'session','770bc71cf9e7bb7fcd404e5f9275d0b585634dec','2017-10-11 05:24:24','2017-10-11 16:13:30'),(85,8,'session','7750701c6f2842f48f96befcc799a305cc0120e2','2017-10-12 06:58:31','2017-10-12 06:59:01'),(86,12,'session','f2fdb3f5fa13a534a6067e6fb79f6601e61fb0ca','2017-10-12 09:01:52','2017-10-12 09:03:57'),(91,10,'session','40f5bc75022b01a087a9c4df86228b6f1d8b27b7','2017-10-14 08:46:26','2017-10-14 11:03:15'),(102,5,'session','7074844b04eb532feb37e37ba70bb83b4f948fc2','2017-10-24 04:11:18','2017-10-24 07:13:39'),(103,10,'session','2792dca2f3c85e42cba5dfde786ab4bc39c102d9','2017-10-24 05:25:36','2017-10-24 05:29:33'),(104,12,'session','abf5fddbcf2b7c29aabd6be8a0fbe6d06f33b08b','2017-10-25 03:34:32','2018-01-31 06:41:15'),(105,8,'session','ad9f61ad7224299a6edea8a8685f4c39acd5f979','2017-10-25 03:37:15','2017-10-25 03:45:10'),(106,5,'session','ed9a7c24dedecf23734ef7f8c1a264bcfdbdbb01','2017-10-25 04:17:23','2017-10-25 05:00:36'),(109,14,'session','4da54ebf46691aec4572e1b6ebccbb9aa4c384a0','2017-10-25 04:21:56','2017-10-27 03:41:03'),(110,14,'feeds','42659cf022d692eefc487059ee359b42ca962586','2017-10-25 04:22:18','2017-10-25 04:22:18'),(112,5,'session','a03370ad0587ebcf4215f2a625e6df6208ffa930','2017-10-26 03:18:28','2017-10-26 07:45:15'),(113,5,'session','89c340d870a665ad1175b864f1dc371921747795','2017-10-27 03:09:48','2017-10-27 03:10:43'),(114,14,'session','50193049c6cbb5c2cda1e1776ced60191e4430b8','2017-10-27 04:08:59','2017-10-31 06:33:13'),(117,15,'feeds','d8f1184e94ff8ec7b50aa2643639ef922cadee39','2017-10-27 06:51:05','2017-10-27 06:51:05'),(139,1,'session','667af77da85cbd39eaba3d85db4aff267a93c542','2017-10-27 08:38:27','2017-10-27 14:13:10'),(140,5,'session','8fa04cad43b342c2a1eb99c2a3213f0411c4f139','2017-10-30 04:25:46','2017-10-30 04:52:26'),(143,5,'session','6515a0fbe3845602d215f1f765e608e4564d0645','2017-10-31 04:31:22','2017-10-31 09:49:07'),(145,14,'session','5c7b6c36670a2ff3e4af508dc413bfe8d1c99523','2017-11-07 02:22:20','2017-11-07 02:33:34'),(146,5,'session','66331dfbeb076b6e2d5197cbb7cb6390c169c591','2017-11-07 06:34:14','2017-11-07 06:37:21'),(148,10,'session','379afa3f30895adef312ccb9de9cdf5220f1c914','2017-11-07 10:49:01','2017-11-07 11:00:50'),(149,17,'session','91045145ccdcb695a4f1d6132dc3d74951b9ed23','2017-11-07 11:08:18','2017-11-07 11:09:56'),(150,17,'feeds','491513484c0024440f9786c57286773125916d46','2017-11-07 11:08:19','2017-11-07 11:08:19'),(151,5,'session','2821093e722d5c1469f55a4fe41ffecd6b7592c3','2017-11-08 08:32:10','2017-11-08 11:01:00'),(153,14,'session','c56f45a7dc0d39a2fdcd3d422bcc016cab5ef773','2017-11-09 03:19:08','2017-11-09 03:23:33'),(154,10,'session','c5c7bbd8fe2f1d17d40f12ce765879152f6da2e0','2017-11-09 08:46:26','2017-11-09 08:46:31'),(155,5,'session','94c6f4b82191cb9dfdbe960d00b0cb97f681699e','2017-11-10 09:47:07','2017-11-10 09:49:45'),(156,17,'session','39886e7e950f6a75d941524bfc208f1c42fe1405','2017-11-11 16:29:50','2017-11-11 16:30:08'),(158,10,'session','c624f3091920972e5100794d04db38b8ad131849','2017-11-13 10:48:21','2017-11-13 11:09:40'),(160,15,'session','8d6e64e6ec670a462d8985c43bf230a825bfb103','2017-11-14 03:01:26','2017-12-06 11:13:08'),(162,10,'session','d96b2c9655adf04451bbf4ae8578cfdb962a0fb5','2017-11-15 15:45:22','2017-11-15 15:47:20'),(167,14,'session','92a1bf8eccde21be70d0ea8c085d1cd359ab77d7','2017-11-23 01:18:12','2017-11-23 01:24:37'),(168,10,'session','b9ab3bb958e73ecf39ec1751bae37910cd3b99cb','2017-11-23 06:33:26','2017-11-23 07:18:31'),(176,8,'session','8bdebbaf9f60adcd6f498ba60597d0ad6ee6c5de','2017-12-03 07:27:17','2017-12-03 08:33:21'),(180,14,'session','0171b089974e7ec2229458f13df551da48ac746f','2017-12-07 02:02:06','2017-12-07 02:05:35'),(186,14,'session','29d4904b1b4860a47f057dde3a7631fc55e72c7c','2017-12-11 11:54:43','2017-12-11 11:58:25'),(187,5,'session','ad283fbf305965e686d7a75b5c1258c735e50ad9','2017-12-13 04:39:06','2017-12-13 08:11:36'),(190,14,'session','d6d54c90dcb3587b99d49793d8ceef46d96cacf4','2017-12-13 07:01:40','2017-12-14 01:56:18'),(192,8,'session','982ddf63727cf718a0193a79df6a2ab291634a8d','2017-12-15 04:23:25','2017-12-15 06:39:40'),(199,14,'session','223ef854b7d6b6fde01f7de3e76b35b847f16db7','2017-12-27 02:08:33','2017-12-27 02:09:15'),(201,14,'session','34fa883b04c92015e585b6e184e366edb55cfd9a','2017-12-28 02:42:22','2017-12-28 02:43:34'),(209,7,'session','eb0926590625e1962d98c8daf3277bd05df63247','2018-01-09 09:21:53','2018-01-17 08:17:03'),(213,8,'session','d9a1923c47a5bf65571f8b2031f55458cb0d7f79','2018-01-10 12:38:00','2018-01-10 12:49:18'),(215,7,'session','389ea82848da97ca50fddbb6526149c2e73b6ee9','2018-01-12 05:37:12','2018-01-12 05:37:12'),(219,8,'session','500bf3f8b01c30a40b6d129ea69618198b6f2320','2018-01-16 08:58:48','2018-01-16 09:34:13'),(221,7,'session','2871fa7a93bf221fc42248f3d2aca897c94dc4d5','2018-01-16 16:24:25','2018-01-16 16:25:07'),(223,8,'session','8cc85b9a581e603c26cc62e146b7ae4d3cca2737','2018-01-17 08:12:03','2018-01-17 08:12:04'),(229,7,'session','84843a52656ab1a69f8610e820ced2c13b2b3dec','2018-01-24 04:42:13','2018-01-24 04:44:17'),(230,7,'session','e7d8b753f2d82921f9fe4425e4e72bdb6cf5affb','2018-01-25 03:33:29','2018-01-25 09:28:06'),(231,7,'session','9a199d7b854de7b780c8b1c937c6a71148368cce','2018-01-25 03:39:34','2018-02-01 09:00:17'),(234,9,'session','8e74e4e7d294c8408217cc72dacdc750d20be48b','2018-01-29 02:36:28','2018-01-29 09:01:00'),(235,9,'session','02becc25f190ea2c9a2cd28b4f5eb5dfc571d3d6','2018-01-30 03:47:45','2018-01-30 03:47:51'),(236,9,'session','3ad20747136fa2112ba79fe30c7d9ec4185bb92e','2018-01-31 04:36:29','2018-01-31 10:20:25'),(237,7,'session','84b3a581880fe018837416bc71188dd9c5c385e6','2018-01-31 05:39:50','2018-02-01 06:21:02'),(238,9,'session','f9d6536922ec84b89092b65fd4cdf22d0247a15f','2018-02-01 02:55:28','2018-02-01 06:25:21'),(239,9,'session','81ff1b4257f97683c75cfe2d1cfae5bff8bd1ce2','2018-02-01 09:45:47','2018-02-01 09:45:47'),(240,9,'session','1cd3e6df16f0a2e101130e806e960ba705894685','2018-02-02 03:33:36','2018-02-02 03:43:26'),(241,7,'session','b407992e445a633496cce21fc0278e6c4f62cd58','2018-02-02 07:27:23','2018-02-07 08:45:48'),(242,9,'session','f296860e2ad8bf1aebd4ec06b46118ea1bc0908b','2018-02-02 09:48:16','2018-02-02 09:52:07'),(243,9,'session','7747a69713b17ec26a1e346ebe822e617513f020','2018-02-05 05:43:11','2018-02-05 10:29:54'),(244,7,'session','171b1f9c4719151fe404066499951001f4b41b8f','2018-02-06 04:15:41','2018-02-06 07:41:02'),(245,9,'session','306d9b3adc02a9b1daef94e9583c70d84bc92a49','2018-02-06 11:10:33','2018-02-06 11:10:44'),(246,9,'session','5c8fe2175bf9243871622f5d83ac464e6b8e6770','2018-02-07 02:59:41','2018-02-07 07:51:40'),(247,7,'session','5793e5da7cccc800fff53c9aa30c70dbc86b912b','2018-02-07 03:20:06','2018-02-07 07:10:01'),(248,8,'session','f2c75c13596dc904e01b8f4d04161a7397dd79e1','2018-02-07 04:15:57','2018-02-07 06:34:21');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  `fields_bits` int(11) DEFAULT '0',
  `default_status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES (2,'Project tasks',0,1,1,0,1),(3,'Errors',0,2,1,0,1);
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text,
  `hide_mail` tinyint(1) DEFAULT '1',
  `time_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,1,'---\n:gantt_zoom: 2\n:gantt_months: 6\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',1,''),(2,5,'---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',1,'Kyiv'),(3,7,'---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',1,'Kyiv'),(4,8,'---\n:no_self_notified: \'1\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',1,'Kyiv'),(5,9,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',1,'Warsaw'),(6,10,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',1,'Warsaw'),(7,11,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',1,''),(8,12,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',1,''),(9,13,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',1,'Warsaw'),(10,14,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',1,''),(11,15,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',1,'Kyiv'),(12,17,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',1,'');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  `must_change_passwd` tinyint(1) NOT NULL DEFAULT '0',
  `passwd_changed_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','50ddbd73016166ace53e35faa0304618c6fd9fe4','Redmine','Admin',1,1,'2017-10-27 08:38:27','',NULL,'2017-09-20 15:33:55','2017-10-04 04:05:07','User',NULL,'all','0fe233b03dee9de5b5f4f804091ff71f',0,'2017-10-04 04:05:07'),(2,'','','','Anonymous users',0,1,NULL,'',NULL,'2017-09-20 15:34:01','2017-09-20 15:34:01','GroupAnonymous',NULL,'',NULL,0,NULL),(3,'','','','Non member users',0,1,NULL,'',NULL,'2017-09-20 15:34:01','2017-09-20 15:34:01','GroupNonMember',NULL,'',NULL,0,NULL),(4,'','','','Anonymous',0,0,NULL,'',NULL,'2017-09-20 16:10:10','2017-09-20 16:10:10','AnonymousUser',NULL,'only_my_events',NULL,0,NULL),(5,'o.komarnicka','dad682509d4819cf430a2533270f7db2e1cff01c','Olena','Komarnicka',0,1,'2017-12-13 04:39:06','uk',NULL,'2017-10-04 02:21:51','2017-10-04 02:38:53','User',NULL,'all','8b6eec71d85dc13dd54d23710da36cec',0,'2017-10-04 02:21:51'),(6,'','','','Clients',0,1,NULL,'',NULL,'2017-10-04 02:22:53','2017-10-04 02:34:50','Group',NULL,'',NULL,0,NULL),(7,'a.nikoluk','04acd900fe4784a5249a968a8aa7fe79c4356cde','Alexander','Nikoluk',1,1,'2018-02-07 03:20:06','ru',NULL,'2017-10-04 03:14:01','2017-10-06 07:20:00','User',NULL,'only_my_events','e7bd486c0dd54affa1967d53643b9d85',0,'2017-10-05 17:21:43'),(8,'r.gnatishen','f6508739e757fbe387442ee50d2282d98dc480b0','Roman','Gnatyshen',1,1,'2018-02-07 04:15:57','pl',NULL,'2017-10-04 04:01:03','2017-10-04 04:01:03','User',NULL,'only_my_events','00e679e7a7929cedf612037d3f3e62b0',0,'2017-10-04 04:01:03'),(9,'m.jakimowicz','3053c1ad2d5240414ce6dff82dc01e5176112cbb','Marzena','Jakimowicz',0,1,'2018-02-07 02:59:41','pl',NULL,'2017-10-04 04:03:57','2017-10-09 03:32:50','User',NULL,'only_my_events','d99954566977df740045199c798b2f9d',0,'2017-10-09 03:32:50'),(10,'d.didenko','e7ae6daa2960744118bbdd963f66d55c095d19e6','Dmitro','Didenko',1,1,'2017-11-23 06:33:26','pl',NULL,'2017-10-09 03:37:13','2017-10-09 08:15:03','User',NULL,'only_my_events','edca32dfa9495b5577f02092e99f7a97',0,'2017-10-09 08:14:13'),(11,'mda','2c8a20082b4ef3b4a17cf2b751bd5f86c4c22a01','mda','mda',0,1,'2017-10-09 06:15:40','en',NULL,'2017-10-09 06:03:38','2017-10-09 06:03:38','User',NULL,'only_my_events','a046883f1cc503c1c9b9286b71ec7d23',0,'2017-10-09 06:03:38'),(12,'a.didenko','47fed3803cab55ae83dcb9c5c9c449aeaeb9b5e2','Alina','Didenko',1,1,'2017-10-25 03:34:32','pl',NULL,'2017-10-10 02:50:29','2017-10-10 02:50:29','User',NULL,'only_my_events','aa271186e3e2dd04417e9ef6a9aae302',0,'2017-10-10 02:50:29'),(13,'w.pawlak','52b3f79d43967af921549017715540e05a34a30e','Waldemar','Pawlak',0,1,NULL,'pl',NULL,'2017-10-11 05:41:02','2017-10-11 05:41:02','User',NULL,'only_my_events','79aff5d89c9ab11d199aa8dacc2cf18d',1,'2017-10-11 05:41:02'),(14,'d.poltoracki','9d8ec226697f35bc49a478c0f6bfbf5d202fb349','Denis','Poltoracki',0,1,'2017-12-28 02:42:22','en',NULL,'2017-10-25 03:39:16','2017-10-25 04:21:56','User',NULL,'only_my_events','a61837c3699f27fe54cf93040e197be5',0,'2017-10-25 04:21:56'),(15,'y.boyko','d5ed0fe801a249b6131671c800cb656d972f1263','Yuriy','Boyko',0,1,'2017-11-14 03:01:26','uk',NULL,'2017-10-27 06:45:51','2017-11-13 11:09:40','User',NULL,'only_my_events','9ff0702d1570a23eb3105e36f9db3a26',0,'2017-11-13 11:09:40'),(17,'m.humeniuk','e9b268318b639582d88981d62fe2151d9d104b38','Maksym','Humeniuk',0,1,'2017-11-11 16:29:50','pl',NULL,'2017-11-07 10:59:52','2017-11-07 11:00:50','User',NULL,'only_my_events','40a7aa63548059ec8e552fb778a26f2e',0,'2017-11-07 10:59:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchers`
--

DROP TABLE IF EXISTS `watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchers`
--

LOCK TABLES `watchers` WRITE;
/*!40000 ALTER TABLE `watchers` DISABLE KEYS */;
INSERT INTO `watchers` VALUES (1,'News',1,8),(2,'Issue',33,5),(3,'News',2,9),(4,'Issue',89,7),(5,'Issue',89,9),(6,'Issue',89,11),(7,'Issue',89,5),(8,'Issue',62,7),(9,'Issue',71,7),(10,'Issue',70,7),(11,'Issue',59,7),(12,'Issue',57,7),(13,'Issue',54,7),(14,'Issue',37,7),(15,'Issue',36,7),(16,'Issue',25,7),(17,'Issue',24,7),(18,'Issue',18,7),(19,'Issue',15,7),(20,'Issue',6,7),(21,'Issue',102,7),(22,'Issue',32,7),(23,'Issue',33,7),(24,'Issue',34,7),(25,'Issue',39,7);
/*!40000 ALTER TABLE `watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(1024) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_content_versions`
--

LOCK TABLES `wiki_content_versions` WRITE;
/*!40000 ALTER TABLE `wiki_content_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_content_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext,
  `comments` varchar(1024) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_contents`
--

LOCK TABLES `wiki_contents` WRITE;
/*!40000 ALTER TABLE `wiki_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `redirects_to_wiki_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_redirects`
--

LOCK TABLES `wiki_redirects` WRITE;
/*!40000 ALTER TABLE `wiki_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikis`
--

LOCK TABLES `wikis` WRITE;
/*!40000 ALTER TABLE `wikis` DISABLE KEYS */;
INSERT INTO `wikis` VALUES (1,1,'Wiki',1),(2,3,'Wiki',1),(3,4,'Wiki',1),(4,5,'Wiki',1),(5,6,'Wiki',1),(6,7,'Wiki',1);
/*!40000 ALTER TABLE `wikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(30) DEFAULT NULL,
  `field_name` varchar(30) DEFAULT NULL,
  `rule` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
INSERT INTO `workflows` VALUES (12,2,1,1,3,0,0,'WorkflowTransition',NULL,NULL),(14,2,2,2,3,0,0,'WorkflowTransition',NULL,NULL),(15,2,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(18,2,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(19,2,3,3,3,0,0,'WorkflowTransition',NULL,NULL),(21,2,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(22,2,4,4,3,0,0,'WorkflowTransition',NULL,NULL),(23,3,1,1,3,0,0,'WorkflowTransition',NULL,NULL),(25,3,2,2,3,0,0,'WorkflowTransition',NULL,NULL),(26,3,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(29,3,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(30,3,3,3,3,0,0,'WorkflowTransition',NULL,NULL),(33,3,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(34,3,4,4,3,0,0,'WorkflowTransition',NULL,NULL),(35,2,1,1,4,0,0,'WorkflowTransition',NULL,NULL),(37,2,2,2,4,0,0,'WorkflowTransition',NULL,NULL),(38,2,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(41,2,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(42,2,3,3,4,0,0,'WorkflowTransition',NULL,NULL),(45,2,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(46,2,4,4,4,0,0,'WorkflowTransition',NULL,NULL),(47,2,1,1,5,0,0,'WorkflowTransition',NULL,NULL),(49,2,2,2,5,0,0,'WorkflowTransition',NULL,NULL),(50,2,2,3,5,0,0,'WorkflowTransition',NULL,NULL),(53,2,3,2,5,0,0,'WorkflowTransition',NULL,NULL),(54,2,3,3,5,0,0,'WorkflowTransition',NULL,NULL),(57,2,4,3,5,0,0,'WorkflowTransition',NULL,NULL),(58,2,4,4,5,0,0,'WorkflowTransition',NULL,NULL),(59,2,0,1,4,0,0,'WorkflowTransition',NULL,NULL),(60,2,1,1,1,0,0,'WorkflowTransition',NULL,NULL),(61,2,1,1,2,0,0,'WorkflowTransition',NULL,NULL),(64,2,2,2,1,0,0,'WorkflowTransition',NULL,NULL),(65,2,2,2,2,0,0,'WorkflowTransition',NULL,NULL),(66,2,2,3,1,0,0,'WorkflowTransition',NULL,NULL),(67,2,2,3,2,0,0,'WorkflowTransition',NULL,NULL),(72,2,3,2,1,0,0,'WorkflowTransition',NULL,NULL),(73,2,3,2,2,0,0,'WorkflowTransition',NULL,NULL),(74,2,3,3,1,0,0,'WorkflowTransition',NULL,NULL),(75,2,3,3,2,0,0,'WorkflowTransition',NULL,NULL),(81,2,4,3,1,0,0,'WorkflowTransition',NULL,NULL),(82,2,4,3,2,0,0,'WorkflowTransition',NULL,NULL),(83,2,4,4,1,0,0,'WorkflowTransition',NULL,NULL),(84,2,4,4,2,0,0,'WorkflowTransition',NULL,NULL),(85,2,0,1,1,0,0,'WorkflowTransition',NULL,NULL),(86,2,0,1,2,0,0,'WorkflowTransition',NULL,NULL),(87,2,0,1,3,0,0,'WorkflowTransition',NULL,NULL),(88,2,0,1,5,0,0,'WorkflowTransition',NULL,NULL),(89,3,0,1,1,0,0,'WorkflowTransition',NULL,NULL),(90,3,0,1,2,0,0,'WorkflowTransition',NULL,NULL),(91,3,0,1,3,0,0,'WorkflowTransition',NULL,NULL),(92,3,0,1,4,0,0,'WorkflowTransition',NULL,NULL),(93,3,0,1,5,0,0,'WorkflowTransition',NULL,NULL),(124,3,1,1,1,0,0,'WorkflowTransition',NULL,NULL),(125,3,1,1,2,0,0,'WorkflowTransition',NULL,NULL),(126,3,1,1,4,0,0,'WorkflowTransition',NULL,NULL),(127,3,1,1,5,0,0,'WorkflowTransition',NULL,NULL),(162,3,2,2,1,0,0,'WorkflowTransition',NULL,NULL),(163,3,2,2,2,0,0,'WorkflowTransition',NULL,NULL),(164,3,2,2,4,0,0,'WorkflowTransition',NULL,NULL),(165,3,2,2,5,0,0,'WorkflowTransition',NULL,NULL),(166,3,2,3,1,0,0,'WorkflowTransition',NULL,NULL),(167,3,2,3,2,0,0,'WorkflowTransition',NULL,NULL),(168,3,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(169,3,2,3,5,0,0,'WorkflowTransition',NULL,NULL),(178,3,3,2,1,0,0,'WorkflowTransition',NULL,NULL),(179,3,3,2,2,0,0,'WorkflowTransition',NULL,NULL),(180,3,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(181,3,3,2,5,0,0,'WorkflowTransition',NULL,NULL),(182,3,3,3,1,0,0,'WorkflowTransition',NULL,NULL),(183,3,3,3,2,0,0,'WorkflowTransition',NULL,NULL),(184,3,3,3,4,0,0,'WorkflowTransition',NULL,NULL),(185,3,3,3,5,0,0,'WorkflowTransition',NULL,NULL),(204,3,4,3,1,0,0,'WorkflowTransition',NULL,NULL),(205,3,4,3,2,0,0,'WorkflowTransition',NULL,NULL),(206,3,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(207,3,4,3,5,0,0,'WorkflowTransition',NULL,NULL),(208,3,4,4,1,0,0,'WorkflowTransition',NULL,NULL),(209,3,4,4,2,0,0,'WorkflowTransition',NULL,NULL),(210,3,4,4,4,0,0,'WorkflowTransition',NULL,NULL),(211,3,4,4,5,0,0,'WorkflowTransition',NULL,NULL),(222,2,0,2,1,0,0,'WorkflowTransition',NULL,NULL),(223,2,0,2,2,0,0,'WorkflowTransition',NULL,NULL),(224,2,0,2,3,0,0,'WorkflowTransition',NULL,NULL),(225,2,0,2,4,0,0,'WorkflowTransition',NULL,NULL),(226,2,0,2,5,0,0,'WorkflowTransition',NULL,NULL),(227,3,0,2,1,0,0,'WorkflowTransition',NULL,NULL),(228,3,0,2,2,0,0,'WorkflowTransition',NULL,NULL),(229,3,0,2,3,0,0,'WorkflowTransition',NULL,NULL),(230,3,0,2,4,0,0,'WorkflowTransition',NULL,NULL),(231,3,0,2,5,0,0,'WorkflowTransition',NULL,NULL),(232,2,1,2,1,0,0,'WorkflowTransition',NULL,NULL),(233,2,1,2,2,0,0,'WorkflowTransition',NULL,NULL),(234,2,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(235,2,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(236,2,1,2,5,0,0,'WorkflowTransition',NULL,NULL),(237,3,1,2,1,0,0,'WorkflowTransition',NULL,NULL),(238,3,1,2,2,0,0,'WorkflowTransition',NULL,NULL),(239,3,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(240,3,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(241,3,1,2,5,0,0,'WorkflowTransition',NULL,NULL),(242,2,0,3,1,0,0,'WorkflowTransition',NULL,NULL),(243,2,0,3,2,0,0,'WorkflowTransition',NULL,NULL),(244,2,0,3,3,0,0,'WorkflowTransition',NULL,NULL),(245,2,0,3,4,0,0,'WorkflowTransition',NULL,NULL),(246,2,0,3,5,0,0,'WorkflowTransition',NULL,NULL),(247,3,0,3,1,0,0,'WorkflowTransition',NULL,NULL),(248,3,0,3,2,0,0,'WorkflowTransition',NULL,NULL),(249,3,0,3,3,0,0,'WorkflowTransition',NULL,NULL),(250,3,0,3,4,0,0,'WorkflowTransition',NULL,NULL),(251,3,0,3,5,0,0,'WorkflowTransition',NULL,NULL),(252,2,1,3,1,0,0,'WorkflowTransition',NULL,NULL),(253,2,1,3,2,0,0,'WorkflowTransition',NULL,NULL),(254,2,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(255,2,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(256,2,1,3,5,0,0,'WorkflowTransition',NULL,NULL),(257,3,1,3,1,0,0,'WorkflowTransition',NULL,NULL),(258,3,1,3,2,0,0,'WorkflowTransition',NULL,NULL),(259,3,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(260,3,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(261,3,1,3,5,0,0,'WorkflowTransition',NULL,NULL),(262,2,2,5,1,0,0,'WorkflowTransition',NULL,NULL),(263,2,2,5,2,0,0,'WorkflowTransition',NULL,NULL),(264,2,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(265,2,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(266,2,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(267,3,2,5,1,0,0,'WorkflowTransition',NULL,NULL),(268,3,2,5,2,0,0,'WorkflowTransition',NULL,NULL),(269,3,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(270,3,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(271,3,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(272,2,2,6,1,0,0,'WorkflowTransition',NULL,NULL),(273,2,2,6,2,0,0,'WorkflowTransition',NULL,NULL),(274,2,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(275,2,2,6,4,0,0,'WorkflowTransition',NULL,NULL),(276,2,2,6,5,0,0,'WorkflowTransition',NULL,NULL),(277,3,2,6,1,0,0,'WorkflowTransition',NULL,NULL),(278,3,2,6,2,0,0,'WorkflowTransition',NULL,NULL),(279,3,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(280,3,2,6,4,0,0,'WorkflowTransition',NULL,NULL),(281,3,2,6,5,0,0,'WorkflowTransition',NULL,NULL),(282,2,3,5,1,0,0,'WorkflowTransition',NULL,NULL),(283,2,3,5,2,0,0,'WorkflowTransition',NULL,NULL),(284,2,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(285,2,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(286,2,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(287,3,3,5,1,0,0,'WorkflowTransition',NULL,NULL),(288,3,3,5,2,0,0,'WorkflowTransition',NULL,NULL),(289,3,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(290,3,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(291,3,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(292,2,3,6,1,0,0,'WorkflowTransition',NULL,NULL),(293,2,3,6,2,0,0,'WorkflowTransition',NULL,NULL),(294,2,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(295,2,3,6,4,0,0,'WorkflowTransition',NULL,NULL),(296,2,3,6,5,0,0,'WorkflowTransition',NULL,NULL),(297,3,3,6,1,0,0,'WorkflowTransition',NULL,NULL),(298,3,3,6,2,0,0,'WorkflowTransition',NULL,NULL),(299,3,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(300,3,3,6,4,0,0,'WorkflowTransition',NULL,NULL),(301,3,3,6,5,0,0,'WorkflowTransition',NULL,NULL),(302,2,5,3,1,0,0,'WorkflowTransition',NULL,NULL),(303,2,5,3,2,0,0,'WorkflowTransition',NULL,NULL),(304,2,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(305,2,5,3,4,0,0,'WorkflowTransition',NULL,NULL),(306,2,5,3,5,0,0,'WorkflowTransition',NULL,NULL),(307,3,5,3,1,0,0,'WorkflowTransition',NULL,NULL),(308,3,5,3,2,0,0,'WorkflowTransition',NULL,NULL),(309,3,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(310,3,5,3,4,0,0,'WorkflowTransition',NULL,NULL),(311,3,5,3,5,0,0,'WorkflowTransition',NULL,NULL),(312,2,5,5,1,0,0,'WorkflowTransition',NULL,NULL),(313,2,5,5,2,0,0,'WorkflowTransition',NULL,NULL),(314,2,5,5,3,0,0,'WorkflowTransition',NULL,NULL),(315,2,5,5,4,0,0,'WorkflowTransition',NULL,NULL),(316,2,5,5,5,0,0,'WorkflowTransition',NULL,NULL),(317,3,5,5,1,0,0,'WorkflowTransition',NULL,NULL),(318,3,5,5,2,0,0,'WorkflowTransition',NULL,NULL),(319,3,5,5,3,0,0,'WorkflowTransition',NULL,NULL),(320,3,5,5,4,0,0,'WorkflowTransition',NULL,NULL),(321,3,5,5,5,0,0,'WorkflowTransition',NULL,NULL),(322,2,5,6,1,0,0,'WorkflowTransition',NULL,NULL),(323,2,5,6,2,0,0,'WorkflowTransition',NULL,NULL),(324,2,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(325,2,5,6,4,0,0,'WorkflowTransition',NULL,NULL),(326,2,5,6,5,0,0,'WorkflowTransition',NULL,NULL),(327,3,5,6,1,0,0,'WorkflowTransition',NULL,NULL),(328,3,5,6,2,0,0,'WorkflowTransition',NULL,NULL),(329,3,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(330,3,5,6,4,0,0,'WorkflowTransition',NULL,NULL),(331,3,5,6,5,0,0,'WorkflowTransition',NULL,NULL),(332,2,6,3,1,0,0,'WorkflowTransition',NULL,NULL),(333,2,6,3,2,0,0,'WorkflowTransition',NULL,NULL),(334,2,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(335,2,6,3,4,0,0,'WorkflowTransition',NULL,NULL),(336,2,6,3,5,0,0,'WorkflowTransition',NULL,NULL),(337,3,6,3,1,0,0,'WorkflowTransition',NULL,NULL),(338,3,6,3,2,0,0,'WorkflowTransition',NULL,NULL),(339,3,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(340,3,6,3,4,0,0,'WorkflowTransition',NULL,NULL),(341,3,6,3,5,0,0,'WorkflowTransition',NULL,NULL),(342,2,6,5,1,0,0,'WorkflowTransition',NULL,NULL),(343,2,6,5,2,0,0,'WorkflowTransition',NULL,NULL),(344,2,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(345,2,6,5,4,0,0,'WorkflowTransition',NULL,NULL),(346,2,6,5,5,0,0,'WorkflowTransition',NULL,NULL),(347,3,6,5,1,0,0,'WorkflowTransition',NULL,NULL),(348,3,6,5,2,0,0,'WorkflowTransition',NULL,NULL),(349,3,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(350,3,6,5,4,0,0,'WorkflowTransition',NULL,NULL),(351,3,6,5,5,0,0,'WorkflowTransition',NULL,NULL),(352,2,6,6,1,0,0,'WorkflowTransition',NULL,NULL),(353,2,6,6,2,0,0,'WorkflowTransition',NULL,NULL),(354,2,6,6,3,0,0,'WorkflowTransition',NULL,NULL),(355,2,6,6,4,0,0,'WorkflowTransition',NULL,NULL),(356,2,6,6,5,0,0,'WorkflowTransition',NULL,NULL),(357,3,6,6,1,0,0,'WorkflowTransition',NULL,NULL),(358,3,6,6,2,0,0,'WorkflowTransition',NULL,NULL),(359,3,6,6,3,0,0,'WorkflowTransition',NULL,NULL),(360,3,6,6,4,0,0,'WorkflowTransition',NULL,NULL),(361,3,6,6,5,0,0,'WorkflowTransition',NULL,NULL),(362,2,6,4,1,0,0,'WorkflowTransition',NULL,NULL),(363,2,6,4,2,0,0,'WorkflowTransition',NULL,NULL),(364,2,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(365,2,6,4,4,0,0,'WorkflowTransition',NULL,NULL),(366,2,6,4,5,0,0,'WorkflowTransition',NULL,NULL),(367,3,6,4,1,0,0,'WorkflowTransition',NULL,NULL),(368,3,6,4,2,0,0,'WorkflowTransition',NULL,NULL),(369,3,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(370,3,6,4,4,0,0,'WorkflowTransition',NULL,NULL),(371,3,6,4,5,0,0,'WorkflowTransition',NULL,NULL),(372,2,4,5,1,0,0,'WorkflowTransition',NULL,NULL),(373,2,4,5,2,0,0,'WorkflowTransition',NULL,NULL),(374,2,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(375,2,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(376,2,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(377,3,4,5,1,0,0,'WorkflowTransition',NULL,NULL),(378,3,4,5,2,0,0,'WorkflowTransition',NULL,NULL),(379,3,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(380,3,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(381,3,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(382,2,4,6,1,0,0,'WorkflowTransition',NULL,NULL),(383,2,4,6,2,0,0,'WorkflowTransition',NULL,NULL),(384,2,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(385,2,4,6,4,0,0,'WorkflowTransition',NULL,NULL),(386,2,4,6,5,0,0,'WorkflowTransition',NULL,NULL),(387,3,4,6,1,0,0,'WorkflowTransition',NULL,NULL),(388,3,4,6,2,0,0,'WorkflowTransition',NULL,NULL),(389,3,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(390,3,4,6,4,0,0,'WorkflowTransition',NULL,NULL),(391,3,4,6,5,0,0,'WorkflowTransition',NULL,NULL),(392,2,1,1,3,1,1,'WorkflowTransition',NULL,NULL),(395,2,1,1,1,1,1,'WorkflowTransition',NULL,NULL),(396,2,1,1,2,1,1,'WorkflowTransition',NULL,NULL),(397,2,1,1,4,1,1,'WorkflowTransition',NULL,NULL),(398,2,1,1,5,1,1,'WorkflowTransition',NULL,NULL),(412,3,1,1,1,1,1,'WorkflowTransition',NULL,NULL),(413,3,1,1,2,1,1,'WorkflowTransition',NULL,NULL),(414,3,1,1,3,1,1,'WorkflowTransition',NULL,NULL),(415,3,1,1,4,1,1,'WorkflowTransition',NULL,NULL),(416,3,1,1,5,1,1,'WorkflowTransition',NULL,NULL),(417,2,1,2,1,1,1,'WorkflowTransition',NULL,NULL),(418,2,1,2,2,1,1,'WorkflowTransition',NULL,NULL),(419,2,1,2,3,1,1,'WorkflowTransition',NULL,NULL),(420,2,1,2,4,1,1,'WorkflowTransition',NULL,NULL),(421,2,1,2,5,1,1,'WorkflowTransition',NULL,NULL),(422,3,1,2,1,1,1,'WorkflowTransition',NULL,NULL),(423,3,1,2,2,1,1,'WorkflowTransition',NULL,NULL),(424,3,1,2,3,1,1,'WorkflowTransition',NULL,NULL),(425,3,1,2,4,1,1,'WorkflowTransition',NULL,NULL),(426,3,1,2,5,1,1,'WorkflowTransition',NULL,NULL),(427,2,1,4,1,1,1,'WorkflowTransition',NULL,NULL),(428,2,1,4,2,1,1,'WorkflowTransition',NULL,NULL),(429,2,1,4,3,1,1,'WorkflowTransition',NULL,NULL),(430,2,1,4,4,1,1,'WorkflowTransition',NULL,NULL),(431,2,1,4,5,1,1,'WorkflowTransition',NULL,NULL),(432,3,1,4,1,1,1,'WorkflowTransition',NULL,NULL),(433,3,1,4,2,1,1,'WorkflowTransition',NULL,NULL),(434,3,1,4,3,1,1,'WorkflowTransition',NULL,NULL),(435,3,1,4,4,1,1,'WorkflowTransition',NULL,NULL),(436,3,1,4,5,1,1,'WorkflowTransition',NULL,NULL);
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-08  6:10:55
