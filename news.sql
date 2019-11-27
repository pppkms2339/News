-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Политика'),(2,'Культура'),(3,'История');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (12);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `create_date` date DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2019-11-24','News1.jpg','Новость1','www.mail.ru','Новость1'),(2,'2019-11-23','News2.jpg','Новость2','www.yandex.ru','Новость2'),(3,'2019-11-22','News3.jpg','Новость3','www.gmail.com','Новость3'),(4,'2019-11-21','News4.jpg','Ноовсть4','www.wiki.org','Новость4'),(5,'2019-11-20','News5.jpg','Новость5','www.1tv.ru','Новость5'),(6,'2018-11-20','News6.jpg','Новость6','www.ntv.ru','Новость6'),(7,'2018-11-21','News7.jpg','Новость7','www.knastu.ru','Новость7'),(8,'2018-11-22','News8.jpg','Новость8','www.amgpgu.ru','Новость8'),(9,'2018-11-23','News9.jpg','Новость9','www.dv-hab.ru','Новость9'),(10,'2018-11-24','News10.jpg','Новость10','www.kmscom.ru','Новость10'),(11,'2017-09-08','News11.jpg','NYT: Россия несколько лет внедряла вымыслы о вмешательстве Украины в американские выборы','https://www.newsru.com/world/23nov2019/false_ukraine.html','NYT: Россия несколько лет внедряла вымыслы о вмешательстве Украины в американские выборы'),(12,'2019-10-04','News12.jpg','Трамп припомнил экс-послу США на Украине Мари Йованович, что она долго не хотела вывешивать в посольстве его портрет','https://www.newsru.com/world/22nov2019/jovanovic.html','Трамп припомнил экс-послу США на Украине Мари Йованович, что она долго не хотела вывешивать в посольстве его портрет'),(13,'2019-09-21','News13.jpg','Берлускони госпитализирован после падения','https://www.newsru.com/world/22nov2019/berlusconi.html','Берлускони госпитализирован после падения'),(14,'2019-11-04','News14.jpg','Министр связи и коммуникаций Ирана внесен в американские санкционные списки за отключение интернета','https://www.newsru.com/world/22nov2019/ussanctions.html','Министр связи и коммуникаций Ирана внесен в американские санкционные списки за отключение интернета'),(15,'2019-11-01','News15.jpg','Голкипер Василевский установил рекорд \"Тампы\", Ничушкин прервал впечатляющую безголевую серию в НХЛ','https://www.newsru.com/sport/24nov2019/nichvas.html','Голкипер Василевский установил рекорд \"Тампы\", Ничушкин прервал впечатляющую безголевую серию в НХЛ'),(16,'2019-11-02','News16.jpg','Минкультуры хочет ограничить количество сеансов одного фильма в кинотеатрах','https://www.newsru.com/cinema/22nov2019/cinemaslimttn.html','Минкультуры хочет ограничить количество сеансов одного фильма в кинотеатрах'),(17,'2019-11-05','News17.jpg','Ученые протестировали уникальное лекарство от мигрени','http://www.meddaily.ru/article/22nov2019/gepant','Ученые протестировали уникальное лекарство от мигрени'),(18,'2019-10-01','News18.jpg','Москва станет площадкой для медицинского эксперимента','http://www.meddaily.ru/article/22nov2019/do2021gginm','Москва станет площадкой для медицинского эксперимента'),(19,'2019-09-15','News19.jpg','В России появится минимальный стандарт благоустройства городов','https://realty.newsru.com/article/22nov2019/standart','В России появится минимальный стандарт благоустройства городов'),(20,'2019-08-13','News20.jpg','Навальный рассказал о \"космических богатствах\" Дмитрия Рогозина (ВИДЕО)','https://realty.newsru.com/article/21nov2019/rogozin','Навальный рассказал о \"космических богатствах\" Дмитрия Рогозина (ВИДЕО)'),(21,'2019-07-05','News21.jpg','Компания Lexus представила свой первый серийный электромобиль (ВИДЕО)','https://auto.newsru.com/article/22nov2019/e_lexus','Компания Lexus представила свой первый серийный электромобиль (ВИДЕО)'),(22,'2019-01-01','News22.jpg','Домашний робот Ebo развлечет кошку и проследит за ее активностью (ВИДЕО)','https://hitech.newsru.com/article/22nov2019/ebo_cats','Домашний робот Ebo развлечет кошку и проследит за ее активностью (ВИДЕО)'),(23,'2019-02-02','News23.jpg','Алексей Мельников: \"Россия в сербском тупике\"','https://blog.newsru.com/article/22nov2019/serbia','Алексей Мельников: \"Россия в сербском тупике\"'),(24,'2019-03-03','News24.jpg','Александр Морозов: \"За 20 лет русские создали гигантскую \"генуэзскую республику\"','https://blog.newsru.com/article/23nov2019/missiya','Александр Морозов: \"За 20 лет русские создали гигантскую \"генуэзскую республику\"'),(25,'2019-04-04','News25.jpg','Митинг против закона о домашнем насилии не смог собрать заявленной 1,5 тысячи участников','https://www.newsru.com/russia/23nov2019/violence.html','Митинг против закона о домашнем насилии не смог собрать заявленной 1,5 тысячи участников'),(26,'2019-05-05','dummy.gif','В работе Telegram произошел сбой','https://hitech.newsru.com/article/22nov2019/telegram_sboy','В работе Telegram произошел сбой'),(27,'2019-06-06','News27.jpg','Депутаты разрешили силовикам сбивать дроны-нарушители','https://hitech.newsru.com/article/21nov2019/duma_drone','Депутаты разрешили силовикам сбивать дроны-нарушители'),(28,'2019-07-07','News28.jpg','Госдума окончательно одобрила законопроект о предустановке российского софта на смартфоны и ПК','https://hitech.newsru.com/article/21nov2019/gd_soft','Госдума окончательно одобрила законопроект о предустановке российского софта на смартфоны и ПК'),(29,'2019-08-08','News29.jpg','Прототип новой ракеты SpaceX взорвался во время испытаний по накачке баков (ВИДЕО)','https://hitech.newsru.com/article/21nov2019/starship_expl','Прототип новой ракеты SpaceX взорвался во время испытаний по накачке баков (ВИДЕО)'),(30,'2019-09-09','News30.jpg','Российский аналог \"Википедии\" пообещали запустить в 2022 году','https://hitech.newsru.com/article/21nov2019/ruswiki2022','Российский аналог \"Википедии\" пообещали запустить в 2022 году');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_category`
--

DROP TABLE IF EXISTS `news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news_category` (
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `FKb9a07uy7bnouoxefxynleowm9` (`news_id`),
  KEY `FKe8kg0ga2881udnvtit2x1diqw` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_category`
--

LOCK TABLES `news_category` WRITE;
/*!40000 ALTER TABLE `news_category` DISABLE KEYS */;
INSERT INTO `news_category` VALUES (1,1),(2,2),(3,3),(4,1),(5,2),(6,3),(7,1),(8,2),(9,3),(10,1),(11,2),(12,3),(13,1),(14,2),(15,3),(16,1),(17,2),(18,3),(19,1),(20,2),(21,3),(22,1),(23,2),(24,3),(25,1),(26,2),(27,3),(28,1),(29,2),(30,3);
/*!40000 ALTER TABLE `news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1@yandex.ru','$2a$10$3WgzcRQzVyVgYZNfPXFpPerhZQ2Suuq14UzWd0fqJdI4xlkDgkU76','1983-07-06','2019-11-23','Male','Foto1.jpg','','user1','user1 user1','USER'),(2,'user2@yandex.ru','$2a$10$FSJlNXBGAss0E/HxJVJu3.FFNPMDIO.ptOqEZJkJuqgqoeKO/zQBu','1947-09-25','2019-10-22','Male','Foto2.jpg','','user2','user2 user2','USER'),(3,'user3@yandex.ru','$2a$10$TVrrUsYXDiToMcLh.XCLYe5Y6Dy9pmUGFAtYvRLc5zMhqnTVdyZgu','1949-11-15','2019-09-21','Feemale','Foto3.jpg','','user3','user3 user3','USER'),(11,NULL,'$2a$10$LAHmgmgftblfdNXzbfDfT.dUHmWx3gJQmBjeM/KBAdrV9lb4zG.Oy',NULL,'2019-11-25',NULL,NULL,'','Pppkms2339',NULL,'USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_category`
--

DROP TABLE IF EXISTS `user_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_category` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `FKkukst0qag2d8k8d1jlc809u0u` (`user_id`),
  KEY `FKjchjxphkf5owj1i5bp95g5mfs` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category`
--

LOCK TABLES `user_category` WRITE;
/*!40000 ALTER TABLE `user_category` DISABLE KEYS */;
INSERT INTO `user_category` VALUES (1,1),(1,2),(1,3),(2,2),(2,3),(3,3),(11,1),(11,2),(11,3);
/*!40000 ALTER TABLE `user_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-27 17:47:52
