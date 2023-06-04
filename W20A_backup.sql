-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: w20a
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `joined_on` date DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_un` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'user1','2000-01-01','1234895rdt'),(2,'user2','2000-02-02','123489oop5rdt'),(3,'user3','2000-03-03','1234895rdtddgdtdg'),(4,'user4','2000-04-04','1234895rdtjuo456'),(5,'user5','2000-05-05','1234895rdt098');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_FK` (`client_id`),
  CONSTRAINT `post_FK` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (2,2,'content_two','title_two'),(3,3,'content_three','title_three'),(4,4,'content_four','title_five'),(5,4,'this is the new title','this is the new content'),(6,1,'this is the titlle from user1','this is content from user1'),(7,NULL,'tioo','uyuy'),(8,NULL,'ggg','hhy'),(9,NULL,'tyyere','wwerty'),(10,NULL,'ttr','uuytr'),(11,NULL,'iin','asdd'),(12,NULL,'ggghhyt','hhdgdg'),(13,1,'this is awesome its working','i worked on adding a post and it worked'),(14,1,'hhtyu','uuy'),(15,1,'yyt','tyyyyyyyyyop'),(16,1,'ttyy','hhhhhiurr'),(17,1,'eeeertyuiop','nbvc'),(18,NULL,'titleoiuy','wertyuiopigfdxcvbnm'),(19,1,'ww','uu'),(20,1,'yyhht','nbbvcc'),(21,1,'title2','eretuu'),(22,1,'yyttgfd','ffdddopuyt'),(23,1,'rrtteeooi','uuiytop'),(24,1,'new title','new content'),(25,1,'yyooiu','ooiuyy'),(26,1,'this is title','this is post'),(27,1,'ghhhhhh','jjjjhg'),(28,1,'ttyyuuiio','tytredf'),(29,1,'iiuuop','pooiiuu'),(30,1,'uyytrfdf','hhgffrt'),(31,1,'tttttt','uuyyyuu'),(32,1,'uuteyyyyete','hhdhhdudidop'),(33,1,'ttuuuygg','jhggghhgfg'),(34,1,'hhsggstsfsggs','hshsgsgshsks'),(35,1,'yyiiopu','iihggff'),(36,1,'ttuutt','hhhggdgdhd'),(37,1,'ttyyop','hhdgdfd'),(38,1,'uuddgdhdhd','ddhhdhd'),(39,1,'hdhdgdfd','djdhdg'),(40,1,'yyiuud','hdhdd'),(41,NULL,'jdhdgdgd','hshsgfshhs'),(42,1,'gdhjjd','hdhdgdgd'),(43,1,'jdhdgd','jdhdhd'),(44,1,'gggttwiwoow','dtteyeyue'),(45,1,'gdgdhdjdkd','jdjhdgjd'),(46,1,'tiaouayydhhd','dhdhdhjs'),(47,1,'hhdjdkdjdhshkshhshdhs','hdhdjdkkd'),(48,NULL,'hhshjshdhd','hdhfjffh'),(49,1,'yeyyriridfv','hshcshssh'),(50,1,'jhsggsfgsgsggsoieytr','jfhfhfhfjfjfjuygdgdgd'),(51,1,'yyyieieuddhhd','hdhdhdhdhd'),(52,1,'yeyeteteieou','hdhdhdhdkdkdj'),(53,1,'ttereueieyete','dhdgdhdiuetryudhg'),(54,1,'hajhdgdgdhdhdjdksjjsouete','hfgfhfhfhieyetehrhfhfgfhfdjdhg'),(55,1,'tyuinhgfd','ghfdertserwd'),(56,1,'yuuooppoiuyt','ghfkjugyth'),(57,1,'ghhgfdjkjhggfd','gghhuytghfdserfcvdgh'),(58,1,'yyuuiiopoijhgft','hgfdsrteyuiojhgf'),(59,1,'uuuuyhgtfrd','hyujikmnbghdfretyhgfuhjy'),(60,1,'tyuhnbgvfdr','ffghffffffffffffffffffopytgf'),(61,1,'sddfgghjjuytgfrdes','hjjuiomjhgftrdesfghjjh'),(62,1,'yuhinhgfdrtyguhbvcfd','hygbvccfdrt'),(63,1,'gshsgsfshjs','hdhdgdkdhddgd'),(64,1,'hdhkdjddgsy','jdhdgdhdsiospsoidhd'),(65,1,'hsystgsjsjhsgsiospjsh','sgsgsjsjshsgsusisoshhkp'),(66,1,'tiitletei','hfhfhfjfj'),(67,1,'gghhkkjhgfd','ggfhjfjhgoygfhgcg'),(68,1,'titsuhsggs','shshsgshsosuudgf'),(69,1,'gdgdhdjdjdhgd','dhdhdgdfdodidudgd'),(70,1,'hhdgdgdyowuyeieoep','djdhdhdgdhhd'),(71,1,'ahdhhjhjhjs','sdhshjhjhjshjhudhuhd'),(72,1,'gdgdhdhdhdgdhd','ggsgshywowiwuhhdd'),(73,1,'hshsgsgstsysuushysgsg','hshgshsjjsosois'),(74,1,'sgsgshshs','sgsgsfsfsgjsjs'),(75,1,'sghdhdgdgdgdo','hdhdddjhdhuopydhd'),(76,1,'gdhdgdfdhdhdjdhgd','hddhgdgdidoeuedgdjdhd'),(77,1,'gsgsfstyueieuhdgdydoodidud','jddhdggdudggdgdffd'),(78,1,'huyghftredfrtgfh','ghgjguui'),(79,1,'huhpppppp','bbbbbbbbbbbbbbbbbbb'),(80,1,'hhuyttfdrcccccc','huhhhhhhhhhhhhh'),(81,1,'hhyyuuiopijhgfd','vvvvvvvvvvvvhhhhhhhhh'),(82,1,'fggggggggghksks','hsffffffffsss'),(83,1,'gfhhhhhhhhhhhhhhhhhh','hfffffffffffffffffffff'),(84,1,'dggggggggggggg','dhhhhhhhhhhhhhhhhhhhhhhhhhh'),(85,1,'dgggggggggggggggggg','dhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'),(86,1,'dggggggggggggggggg','wwwwwwwwwwwwwwwwwwwwwwoooooooooooo'),(87,1,'hhhhhhhhhhhhhhhhhhhhhopiuy','eyyyyyyyyyyyyyyyyyyyyyyyyopu'),(88,1,'gdddddddddddddddddddddddddddddddd','dhhhhhhhhhhhhhhhhhhhhhhh'),(89,1,'tttttttttttttttyyyyyyyyyyyyyyyyy','tttttttttttttyyyyyyyyyyyyyyyyyyyyy'),(90,1,'thsjksksksjhs','dnjfffffffffffk'),(91,1,'gsggdjdddddddddddddddddd','yyyyyyyyyyyyyyyyyyyyyyyyyyyyyywppppp');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'w20a'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_post`(client_id_input int,content_input varchar(100),title_input varchar(100))
    MODIFIES SQL DATA
begin
	insert into post(client_id,content,title)
	values(client_id_input,content_input,title_input);
    select client_id,content,title from post;
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_userInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_userInfo`(username_input varchar(100),password_input varchar(100))
    MODIFIES SQL DATA
begin
	insert into client(username,password)
	values(username_input,password_input);
    select username,password from client;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_username` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_username`(username_input varchar(100),password_input varchar(100))
    MODIFIES SQL DATA
begin 
	select c.id, c.username,c.password
    from client c 
    where c.username=username_input and c.password=password_input ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_posts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_posts`(title_input varchar(100),content_input varchar(100))
begin
	select title,content
	from post;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03 23:22:24
