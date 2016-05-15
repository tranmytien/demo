-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: phongkham
-- ------------------------------------------------------
-- Server version	5.6.22

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
-- Table structure for table `hosobenhan`
--

DROP TABLE IF EXISTS `hosobenhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hosobenhan` (
  `mabn` varchar(45) NOT NULL,
  `tenbn` varchar(45) DEFAULT NULL,
  `diachi` varchar(45) DEFAULT NULL,
  `cannang` double DEFAULT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `tinhtrangsk` varchar(45) DEFAULT NULL,
  `phongbenh` varchar(45) DEFAULT NULL,
  `khoadieutri` varchar(45) DEFAULT NULL,
  `bacsidieutri` varchar(45) DEFAULT NULL,
  `toathuoc` varchar(45) DEFAULT NULL,
  `ngaykham` varchar(45) DEFAULT NULL,
  `ngayxuatvien` varchar(45) DEFAULT NULL,
  `vienphi` double DEFAULT NULL,
  PRIMARY KEY (`mabn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hosobenhan`
--

LOCK TABLES `hosobenhan` WRITE;
/*!40000 ALTER TABLE `hosobenhan` DISABLE KEYS */;
INSERT INTO `hosobenhan` VALUES ('1','Tran Van B','TpHCM',45,'0165989','ok','2a','than kinh','Tran B','fjdhfsj','15.02.2015','15.09.015',150000),('12k','fgjk','fdjks',34,'djhd','dshfjsdh','null','null','null','jdhfsj','jdhsjs','jhdfj',2.930290294029402e15),('2','Le Thi A','Tra Vinh',48,'016546','no','h3','ngoại','Phùng chinh','fhdsjkfhdsj','15.16.155','25.15',6568989),('23','a','djdk',12,'jfdk','dgjdk','null','dgjdk','gkdjfgk','dgkdjf','gjf','fkgj',3),('2h','hoÃ ng','tphcm',89,'094852785278','khá»e','8h','null','null','alexan','18-989-898','90-90-90',890000),('3','dhh','dhdj',67,'df','djfhd','null','null','null','fjsh','dfjh','fjdsh',287),('4','ssd,ds','5',6,'f','f','null','fd','fd','fd','f','f',5),('fj','ti','jfhsj',139,'dfhd','jfhsdjk','null','null','null','jfhsd','fjhsd','djfhsj',9090);
/*!40000 ALTER TABLE `hosobenhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoanbenhnhan`
--

DROP TABLE IF EXISTS `taikhoanbenhnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taikhoanbenhnhan` (
  `mabn` int(11) NOT NULL,
  `bn_matkhaudangnhap` varchar(45) DEFAULT NULL,
  `nhom` int(11) DEFAULT NULL,
  PRIMARY KEY (`mabn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoanbenhnhan`
--

LOCK TABLES `taikhoanbenhnhan` WRITE;
/*!40000 ALTER TABLE `taikhoanbenhnhan` DISABLE KEYS */;
INSERT INTO `taikhoanbenhnhan` VALUES (1,'a',1),(2,'b',2);
/*!40000 ALTER TABLE `taikhoanbenhnhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenthuoc`
--

DROP TABLE IF EXISTS `tenthuoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenthuoc` (
  `id` int(11) NOT NULL,
  `tenthuoc` varchar(45) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenthuoc`
--

LOCK TABLES `tenthuoc` WRITE;
/*!40000 ALTER TABLE `tenthuoc` DISABLE KEYS */;
INSERT INTO `tenthuoc` VALUES (1,'degelase',1000),(2,'tetraxyline',2000),(3,'nautruntine',1500),(4,'vínamin',1400),(5,'nystatin',200),(6,'oliza',5000),(7,'colocon',400),(8,'vitamin C',600),(9,'topsucan ',500),(10,'parocetamol',800),(11,'alexan',900),(12,'aspirin',100),(13,'ampy',500),(14,'canxium ',4000),(15,'tamit',5000);
/*!40000 ALTER TABLE `tenthuoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-24 20:48:05
