-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: incarcerationanalyzer
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `agepop`
--

DROP TABLE IF EXISTS `agepop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agepop` (
  `ageid` int(11) NOT NULL AUTO_INCREMENT,
  `facilityid` int(11) NOT NULL,
  `under18` int(11) DEFAULT NULL,
  `age18to21` int(11) DEFAULT NULL,
  `age22to25` int(11) DEFAULT NULL,
  `age26to30` int(11) DEFAULT NULL,
  `age31to35` int(11) DEFAULT NULL,
  `age36to40` int(11) DEFAULT NULL,
  `age41to45` int(11) DEFAULT NULL,
  `age46to50` int(11) DEFAULT NULL,
  `age51to55` int(11) DEFAULT NULL,
  `age56to60` int(11) DEFAULT NULL,
  `age61to65` int(11) DEFAULT NULL,
  `over65` int(11) DEFAULT NULL,
  PRIMARY KEY (`ageid`),
  KEY `facilityid` (`facilityid`),
  CONSTRAINT `facility_agepop_ibfk_1` FOREIGN KEY (`facilityid`) REFERENCES `facility` (`facilityid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agepop`
--

/*!40000 ALTER TABLE `agepop` DISABLE KEYS */;
INSERT INTO `agepop` VALUES (1,1,16,2198,9946,23740,31333,34665,27970,20949,14903,9647,5370,4770),(2,2,50,60,40,40,50,40,60,70,20,30,30,40);
/*!40000 ALTER TABLE `agepop` ENABLE KEYS */;

--
-- Table structure for table `ethnicitypop`
--

DROP TABLE IF EXISTS `ethnicitypop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ethnicitypop` (
  `ethnicityid` int(11) NOT NULL AUTO_INCREMENT,
  `facilityid` int(11) NOT NULL,
  `asian` int(11) DEFAULT NULL,
  `black` int(11) DEFAULT NULL,
  `hispanic` int(11) DEFAULT NULL,
  `white` int(11) DEFAULT NULL,
  PRIMARY KEY (`ethnicityid`),
  KEY `facilityid` (`facilityid`),
  CONSTRAINT `facility_ethnicity_ibfk_1` FOREIGN KEY (`facilityid`) REFERENCES `facility` (`facilityid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ethnicitypop`
--

/*!40000 ALTER TABLE `ethnicitypop` DISABLE KEYS */;
INSERT INTO `ethnicitypop` VALUES (1,1,2707,70294,61375,108410),(2,2,100,200,150,100);
/*!40000 ALTER TABLE `ethnicitypop` ENABLE KEYS */;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facility` (
  `facilityid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `population` int(7) DEFAULT NULL,
  PRIMARY KEY (`facilityid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'Federal Bureau of Prisons',300000),(2,'Madison',2000);
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 13:06:18
