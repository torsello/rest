CREATE DATABASE  IF NOT EXISTS `arbolito` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `arbolito`;
-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: arbolito
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` char(36) NOT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_balance_user_idx` (`user_id`),
  CONSTRAINT `fk_balance_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('066ff3de-ff1a-11e9-85fc-fcaa14c0fe67','ARS',-59.67,'2019-11-04 12:44:39','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('0671b2ba-ff1a-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:44:39','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('087c20d9-fc7b-11e9-aa8d-d017c2102254','ARS',100.00,'2019-11-01 04:39:11','08753dd9-fc7b-11e9-aa8d-d017c2102254'),('0f5857d2-fcce-11e9-85fc-fcaa14c0fe67','ARS',1000.00,'2019-11-01 14:35:55','0f4deeca-fcce-11e9-85fc-fcaa14c0fe67'),('1a5b7d81-ff10-11e9-85fc-fcaa14c0fe67','ARS',10000.00,'2019-11-04 11:33:38','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('1bdec6b7-ff1a-11e9-85fc-fcaa14c0fe67','ARS',-59.67,'2019-11-04 12:45:15','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('1bdedc64-ff1a-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:45:15','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('1cfc25b3-fc51-11e9-aa8d-d017c2102254','ARS',-300.00,'2019-10-31 23:39:17','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('1d0be542-fc51-11e9-aa8d-d017c2102254','USD',5.00,'2019-10-31 23:39:18','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('21d42127-ff28-11e9-85fc-fcaa14c0fe67','ARS',-1000.00,'2019-11-04 14:25:38','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('2a81fc88-fc05-11e9-aa8d-d017c2102254','ARS',-500.00,'2019-10-31 14:35:44','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('35a0c003-ff1a-11e9-85fc-fcaa14c0fe67','ARS',-59.67,'2019-11-04 12:45:59','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('35a0de2c-ff1a-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:45:59','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('3628c265-ff29-11e9-85fc-fcaa14c0fe67','AED',1000.00,'2019-11-04 14:33:22','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('3981f568-ff29-11e9-85fc-fcaa14c0fe67','ARS',1000.00,'2019-11-04 14:33:28','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('3df70891-fbf3-11e9-aa8d-d017c2102254','ARS',1000.00,'2019-10-31 12:27:31','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('3df70891-fbf3-11e9-aa8d-d017c2102255','ARS',-500.00,'2019-10-31 12:27:31','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('3df70891-fbf3-11e9-aa8d-d017c2102256','USD',1000.00,'2019-10-31 12:27:31','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('3df70891-fbf3-11e9-aa8d-d017c2102257','ARS',1000.00,'2019-10-31 12:27:31','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('3e30da66-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:39:04','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('3e332f50-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:39:04','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('48f7a30f-fc51-11e9-aa8d-d017c2102254','ARS',-298.00,'2019-10-31 23:40:31','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('4906d8b8-fc51-11e9-aa8d-d017c2102254','USD',5.00,'2019-10-31 23:40:31','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('4aab0379-fc05-11e9-aa8d-d017c2102254','ARS',500.00,'2019-10-31 14:36:38','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('538bab62-fc59-11e9-aa8d-d017c2102254','USD',-100.00,'2019-11-01 00:37:54','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('539e27a8-fc59-11e9-aa8d-d017c2102254','ARS',5599.00,'2019-11-01 00:37:55','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('637fbb9b-ff28-11e9-85fc-fcaa14c0fe67','USD',-10.00,'2019-11-04 14:27:29','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('6818ec6c-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:40:14','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('681a8647-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:40:14','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('6d25b839-ff27-11e9-85fc-fcaa14c0fe67','USD',-1.00,'2019-11-04 14:20:35','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('6d27e7a9-ff27-11e9-85fc-fcaa14c0fe67','ARS',56.13,'2019-11-04 14:20:35','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('726367ac-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:40:31','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('7263850c-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:40:31','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('74ef0d66-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:40:35','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('74f21d4a-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:40:35','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('790005c4-ff27-11e9-85fc-fcaa14c0fe67','USD',-1.00,'2019-11-04 14:20:55','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('79001a7c-ff27-11e9-85fc-fcaa14c0fe67','ARS',56.13,'2019-11-04 14:20:55','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('88efb958-fc59-11e9-aa8d-d017c2102254','USD',-100.00,'2019-11-01 00:39:24','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('88f41942-fc59-11e9-aa8d-d017c2102254','ARS',2.00,'2019-11-01 00:39:24','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('8d369f7c-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:41:16','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('8d3f4b15-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:41:16','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('8f2c72cc-ff25-11e9-85fc-fcaa14c0fe67','USD',-1.00,'2019-11-04 14:07:13','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('8f3805a1-ff25-11e9-85fc-fcaa14c0fe67','ARS',56.15,'2019-11-04 14:07:13','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('9056fd2b-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:41:21','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('90571048-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:41:21','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('950d289a-ff29-11e9-85fc-fcaa14c0fe67','AED',1111.00,'2019-11-04 14:36:01','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('9c09a6ff-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:41:41','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('9c0bd643-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:41:41','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('a1c7e1ce-fc05-11e9-aa8d-d017c2102254','ARS',500.00,'2019-10-31 14:39:04','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('b01b8a09-fc05-11e9-aa8d-d017c2102254','ARS',-500.00,'2019-10-31 14:39:28','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('b1bd3d16-fc59-11e9-aa8d-d017c2102254','USD',-100.00,'2019-11-01 00:40:32','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('b1c5acba-fc59-11e9-aa8d-d017c2102254','ARS',2.00,'2019-11-01 00:40:33','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('c1194ccf-ff18-11e9-85fc-fcaa14c0fe67','ARS',-16.00,'2019-11-04 12:35:34','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('c11b25db-ff18-11e9-85fc-fcaa14c0fe67','ARS',1.00,'2019-11-04 12:35:34','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('c260ef44-fccd-11e9-85fc-fcaa14c0fe67','ARS',100.00,'2019-11-01 14:33:45','c25eee35-fccd-11e9-85fc-fcaa14c0fe67'),('caba2094-ff18-11e9-85fc-fcaa14c0fe67','ARS',-16.00,'2019-11-04 12:35:50','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('cabbbee6-ff18-11e9-85fc-fcaa14c0fe67','ARS',1.00,'2019-11-04 12:35:50','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('cee27620-fc4e-11e9-aa8d-d017c2102254','ARS',-600.00,'2019-10-31 23:22:47','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('ceeb0638-fc4e-11e9-aa8d-d017c2102254','USD',10.00,'2019-10-31 23:22:47','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('d49345c8-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:43:16','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('d499d326-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:43:16','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('de3b1bc2-ff19-11e9-85fc-fcaa14c0fe67','ARS',-60.00,'2019-11-04 12:43:32','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('de4266d9-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:43:32','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('eae323c1-fc51-11e9-aa8d-d017c2102254','ARS',-119.00,'2019-10-31 23:45:03','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('eae712ac-fc51-11e9-aa8d-d017c2102254','USD',2.00,'2019-10-31 23:45:03','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('ecedec30-ff19-11e9-85fc-fcaa14c0fe67','ARS',-59.67,'2019-11-04 12:43:57','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('ecf4b8b3-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:43:57','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('f3b10338-ff19-11e9-85fc-fcaa14c0fe67','ARS',-59.67,'2019-11-04 12:44:08','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('f3b1197b-ff19-11e9-85fc-fcaa14c0fe67','USD',1.00,'2019-11-04 12:44:08','1a593b40-ff10-11e9-85fc-fcaa14c0fe67'),('fa79ba3a-fc59-11e9-aa8d-d017c2102254','USD',-100.00,'2019-11-01 00:42:35','3dc67433-fbf3-11e9-aa8d-d017c2102254'),('fa7ca80a-fc59-11e9-aa8d-d017c2102254','ARS',5599.00,'2019-11-01 00:42:35','3dc67433-fbf3-11e9-aa8d-d017c2102254');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` char(36) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `dni` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('08753dd9-fc7b-11e9-aa8d-d017c2102254','test11','5a105e8b9d40e1329780d62ea2265d8a','1','test1','test1'),('0f4deeca-fcce-11e9-85fc-fcaa14c0fe67','joel1','412a1ed6d21e55191ee5131f266f5178','12345','joel','joel'),('1a593b40-ff10-11e9-85fc-fcaa14c0fe67','test','098f6bcd4621d373cade4e832627b4f6','42396392','test','testing'),('3dc67433-fbf3-11e9-aa8d-d017c2102254','matias','412a1ed6d21e55191ee5131f266f5178','39276649','Matias','Torsello'),('c25eee35-fccd-11e9-85fc-fcaa14c0fe67','joel','412a1ed6d21e55191ee5131f266f5178','12345','Joel','Stella');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'arbolito'
--

--
-- Dumping routines for database 'arbolito'
--
/*!50003 DROP PROCEDURE IF EXISTS `balance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `balance`(in xid char(36))
BEGIN
	
    declare cant int default 0;

	select count(*) into cant from user where id=xid;

	if cant > 0 then
		SELECT currency, sum(amount) from transaction where user_id=xid group by currency;
	else
		select "Error 100: No existe un usuario con ese id";
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `balancePerCurrency` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `balancePerCurrency`(in xid char(36), in xcurrency varchar(50))
BEGIN
	
    declare cant int default 0;

	select count(*) into cant from user where id=xid;

	if cant > 0 then
		SELECT currency, sum(amount) from transaction where user_id=xid and currency=xcurrency;
	else
		select "Error 100: No existe un usuario con ese id";
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buy`(in xid char(36), in xcurrency varchar(50), in xcurrencyTo varchar(50), in xamountTo decimal(10,2), in xcurrencyValue decimal(10,2))
BEGIN
    
    declare cant int default 0;
	declare total decimal(10,2) default 0;
    declare enBanco decimal(10,2) default 0;
    
    set total := xamountTo*xcurrencyValue;
    
	select count(*) into cant from user where id=xid;
	if cant > 0 then
		select sum(amount) into enBanco from transaction where user_id=xid and currency=xcurrency;
        if total <= enBanco then
			insert into transaction values (uuid(), xcurrency, total*-1, now(), xid);
			insert into transaction values (uuid(), xcurrencyTo, xamountTo, now(), xid);
            select "success";
		else
			select "Error 102: No posees saldo suficiente para realizar la operacion";
        end if;
	else
		select "Error 100: No existe un usuario con ese id";
	end if;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkUser`(in xuser varchar(36), in xpass varchar(36))
BEGIN
    
    declare cant int default 0;
    
    select count(*) into cant from user where username=xuser and password=md5(xpass);
    
    if cant > 0 then 
		select id from user where username=xuser;
	else
		select "Error: Usuario y/o contrasena invalido.";
	end if;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createUser`(in xuser varchar(50), in xpass varchar(50), in xdni varchar(50), in xname varchar(50), in xsurname varchar(50), in xcurrency varchar(50), in xamount decimal(10,2))
BEGIN
    declare xid char(36);
    declare cant int default 0;
    
    select count(*) into cant from user where username=xuser;
    
    if cant > 0 then
		select "Error 104: Ya existe ese nombre de usuario.";
	else
		insert into user values (uuid(), xuser, MD5(xpass), xdni, xname, xsurname);
		select id into xid from user where user.username = xuser;
		insert into transaction values (uuid(), xcurrency, xamount, now(), xid);
        select "success";
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteUser`(in xid char(36))
BEGIN
	
    declare cant int default 0;

	select count(*) into cant from user where id=xid;

	if cant > 0 then
		DELETE FROM transaction where user_id=xid;
		DELETE FROM user where id=xid;
        select "deleted";
	else
		select "Error 100: No existe un usuario con ese id";
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deposit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deposit`(in xid char(36), xcurrency varchar(50), xamount decimal(10,2))
BEGIN

	declare cant int default 0;

	select count(*) into cant from user where id=xid;

	if cant > 0 then
		insert into transaction values (uuid(), xcurrency, xamount, now(), xid);
		select "success";
	else
		select "Error 100: No existe un usuario con ese id";
	end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCurrencys` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCurrencys`(in xid char(36))
BEGIN
	
    declare cant int default 0;

	select count(*) into cant from user where id=xid;

	if cant > 0 then
		SELECT currency from transaction where user_id=xid group by currency;
	else
		select "Error 100: No existe un usuario con ese id";
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sell` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sell`(in xid char(36), in xcurrency varchar(50), in xamount decimal(10,2), in xcurrencyValue decimal(10,2))
BEGIN
    
    declare cant int default 0;
	declare total decimal(10,2) default 0;
    declare enBanco decimal(10,2) default 0;
    
    set total := xamount*xcurrencyValue;
    
	select count(*) into cant from user where id=xid;

	if cant > 0 then
		select sum(amount) into enBanco from transaction where user_id=xid and currency=xcurrency;
        if xamount <= enBanco then
			insert into transaction values (uuid(), xcurrency, xamount*-1, now(), xid);
			insert into transaction values (uuid(), 'ARS', total, now(), xid);
            select "success";
		else
			select "Error 102: No posees saldo suficiente para realizar la operacion";
        end if;
	else
		select "Error 100: No existe un usuario con ese id";
	end if;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `withdraw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `withdraw`(in xid char(36), xcurrency varchar(50), xamount decimal(10,2))
BEGIN

	declare cant int default 0;
    declare balance decimal(10,2) default 0;

	select count(*) into cant from user where id=xid;

	if cant > 0 then
		select sum(amount) into balance from transaction where user_id=xid and currency=xcurrency;
        if balance >= xamount then
			insert into transaction values (uuid(), xcurrency, xamount*-1, now(), xid);
			select "success";
		else
			select "Error 101: No tienes dinero suficiente";
        end if;
	else
		select "Error 100: No existe un usuario con ese id";
	end if;

END ;;
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

-- Dump completed on 2019-11-04 15:02:17
