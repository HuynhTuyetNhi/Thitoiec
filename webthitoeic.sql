-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webthitoeic
-- ------------------------------------------------------
-- Server version	5.5.60-log

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
-- Table structure for table `categorymember`
--

DROP TABLE IF EXISTS `categorymember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorymember` (
  `CategoryMembeID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryMemberName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CategoryMembeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymember`
--

LOCK TABLES `categorymember` WRITE;
/*!40000 ALTER TABLE `categorymember` DISABLE KEYS */;
INSERT INTO `categorymember` VALUES (1,'thi sinh'),(2,'admin');
/*!40000 ALTER TABLE `categorymember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cauhoi`
--

DROP TABLE IF EXISTS `cauhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cauhoi` (
  `CauHoiID` int(111) NOT NULL AUTO_INCREMENT,
  `TenCauHoi` varchar(300) DEFAULT NULL,
  `DapAnA` varchar(115) DEFAULT NULL,
  `DapAnB` varchar(145) DEFAULT NULL,
  `DapAnC` varchar(145) DEFAULT NULL,
  `DapAnD` varchar(145) DEFAULT NULL,
  `DapAn` varchar(145) DEFAULT NULL,
  `LoaiCauID` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`CauHoiID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cauhoi`
--

LOCK TABLES `cauhoi` WRITE;
/*!40000 ALTER TABLE `cauhoi` DISABLE KEYS */;
INSERT INTO `cauhoi` VALUES (1,'a','b','c','d','d','e','1'),(2,'Experiments in the sonic imaging of moving objects ............... in both the  United States and Europe well before the Second World War.','were conducting','have been conducted ','had been conducted','being conducted','C','1'),(5,'Abner Doubleday, ..............., was credited with the invention of baseball in 1839.','who become a Union army general','which became a Union army general ','who were a Union army general','a Union army general','D','2'),(7,'Each fiber in the bundle …………….. only a tiny fraction of the total image.','transmit','transmitted ','transmits','to transmit','C','1'),(8,'Antonio Gaudi, architect of Barcelona\'s Holy Family Church, died before seeing ............... the structure.','on completion of ','the completion of','completing of','their completing of','B','2'),(9,'This is the factory ................................. at work. ','they are','where they are ','where are','in where they are','B','1'),(10,'America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.','a farmer had been ','had been a farmer ','farming','being a farmer','B','3'),(11,'Napoleon ................... the West Indian island of Santo Domingo in 1801.','attacked','is attacking','has attracted ','attacking','A','1'),(12,'Modern industrial methods have supplanted individual crafts, ...................stone carvers, coopers, and cobblers virtually extinct.','make blacksmiths,','made blacksmiths,','making them blacksmiths, ','making blacksmiths,','D','1'),(13,'Not only knowledge and skills, but also attitudes ................... in school for students\' future adjustment to society.','when cultivated ','cultivated','which need to be cultivated ','need to be cultivated','D','1'),(14,'On Mercator\'s maps, the far northern and southern polar regions are....................','greatly exaggerated in area. ','exaggerating greatly in area.','greatly exaggerate in area.','great exaggeration in area','A','1'),(15,'On the slope of Long\'s Peak in Colorado ................... the ruin of a gigantic tree.','that lies',' lies','where lies','lie','B','1'),(17,'The earth spins on its axis and ................... 23 hours, 56 minutes and 4.09 seconds for one complete rotation.','need','needed','needing ','needs','D','1'),(19,'Of Charles Dickens\' many novels, expectations perhaps ................... to many readers.','the most satisfying one ','most satisfying one','more than satisfying one ','the more satisfying than','A','1'),(20,'..................., the nation\'s capital remained in Philadelphia, Pennsylvania.','While designing Washington, D.C. ','Washington, D.C., was designed','While Washington, D.C., was being designed ','Washington, D.C., designed','C','1'),(21,'Children learn primarily by ................... the world around them.','experiencing directly of ','experience direct','directly physical experience ','direct physical experience of','D','1'),(22,'Experiments in the sonic imaging of moving objects ............... in both the  United States and Europe well before the Second World War.','were conducting','have been conducted ','had been conducted','being conducted','C','1'),(23,'billions and billions of stars exist in the vast space beyond our Milky Way galaxy.','That is estimated ','An estimate that ','That the estimate ','It is estimated that','D','2'),(24,'............... gene-bearing bodies within the nuclei of living organisms.','Chrom','Chromosomes that are','Chromosomes are','Chromosomes while they are','C','1'),(25,'Abner Doubleday, ..............., was credited with the invention of baseball in 1839.','who become a Union army general','which became a Union army general ','who were a Union army general','a Union army general','D','2'),(26,'............... photosynthesis were to stop, life would disappear from the planet Earth relatively quickly.','For','However ','If','Although','C','3'),(27,'Each fiber in the bundle …………….. only a tiny fraction of the total image.','transmit','transmitted ','transmits','to transmit','C','1'),(28,'Antonio Gaudi, architect of Barcelona\'s Holy Family Church, died before seeing ............... the structure.','on completion of ','the completion of','completing of','their completing of','B','2'),(29,'This is the factory ................................. at work. ','they are','where they are ','where are','in where they are','B','1'),(30,'America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.','a farmer had been ','had been a farmer ','farming','being a farmer','B','3'),(31,'Napoleon ................... the West Indian island of Santo Domingo in 1801.','attacked','is attacking','has attracted ','attacking','A','1'),(32,'Modern industrial methods have supplanted individual crafts, ...................stone carvers, coopers, and cobblers virtually extinct.','make blacksmiths,','made blacksmiths,','making them blacksmiths, ','making blacksmiths,','D','1'),(33,'Not only knowledge and skills, but also attitudes ................... in school for students\' future adjustment to society.','when cultivated ','cultivated','which need to be cultivated ','need to be cultivated','D','1'),(34,'On Mercator\'s maps, the far northern and southern polar regions are....................','greatly exaggerated in area. ','exaggerating greatly in area.','greatly exaggerate in area.','great exaggeration in area','A','1'),(35,'On the slope of Long\'s Peak in Colorado ................... the ruin of a gigantic tree.','that lies',' lies','where lies','lie','B','1'),(36,'................... in Shanghai than in any other city in China. ','More people live','More people living ','It has more people ','More living people','A','1'),(37,'The earth spins on its axis and ................... 23 hours, 56 minutes and 4.09 seconds for one complete rotation.','need','needed','needing ','needs','D','1'),(38,'................... on the environment for the gratification of its needs.','Each organism to depend ','Every organism depends ','All organisms depending','Many organisms can depend','B','1'),(39,'Of Charles Dickens\' many novels, expectations perhaps ................... to many readers.','the most satisfying one ','most satisfying one','more than satisfying one ','the more satisfying than','A','1'),(40,'..................., the nation\'s capital remained in Philadelphia, Pennsylvania.','While designing Washington, D.C. ','Washington, D.C., was designed','While Washington, D.C., was being designed ','Washington, D.C., designed','C','1'),(41,'Children learn primarily by ................... the world around them.','experiencing directly of ','experience direct','directly physical experience ','direct physical experience of','D','1'),(42,'Experiments in the sonic imaging of moving objects ............... in both the  United States and Europe well before the Second World War.','were conducting','have been conducted ','had been conducted','being conducted','C','1'),(44,'............... gene-bearing bodies within the nuclei of living organisms.','Chromosomes','Chromosomes that are','Chromosomes are','Chromosomes while they are','C','1'),(45,'Abner Doubleday, ..............., was credited with the invention of baseball in 1839.','who become a Union army general','which became a Union army general ','who were a Union army general','a Union army general','D','2'),(46,'............... photosynthesis were to stop, life would disappear from the planet Earth relatively quickly.','For','However ','If','Although','C','3'),(47,'Each fiber in the bundle …………….. only a tiny fraction of the total image.','transmit','transmitted ','transmits','to transmit','C','1'),(48,'Antonio Gaudi, architect of Barcelona\'s Holy Family Church, died before seeing ............... the structure.','on completion of ','the completion of','completing of','their completing of','B','2'),(49,'This is the factory ................................. at work. ','they are','where they are ','where are','in where they are','B','1'),(50,'America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.','a farmer had been ','had been a farmer ','farming','being a farmer','B','3'),(51,'Napoleon ................... the West Indian island of Santo Domingo in 1801.','attacked','is attacking','has attracted ','attacking','A','1'),(52,'Modern industrial methods have supplanted individual crafts, ...................stone carvers, coopers, and cobblers virtually extinct.','make blacksmiths,','made blacksmiths,','making them blacksmiths, ','making blacksmiths,','D','1'),(53,'Not only knowledge and skills, but also attitudes ................... in school for students\' future adjustment to society.','when cultivated ','cultivated','which need to be cultivated ','need to be cultivated','D','1'),(54,'On Mercator\'s maps, the far northern and southern polar regions are....................','greatly exaggerated in area. ','exaggerating greatly in area.','greatly exaggerate in area.','great exaggeration in area','A','1'),(55,'On the slope of Long\'s Peak in Colorado ................... the ruin of a gigantic tree.','that lies',' lies','where lies','lie','B','1'),(56,'................... in Shanghai than in any other city in China. ','More people live','More people living ','It has more people ','More living people','A','1'),(57,'The earth spins on its axis and ................... 23 hours, 56 minutes and 4.09 seconds for one complete rotation.','need','needed','needing ','needs','D','1'),(58,'................... on the environment for the gratification of its needs.','Each organism to depend ','Every organism depends ','All organisms depending','Many organisms can depend','B','1'),(59,'Of Charles Dickens\' many novels, expectations perhaps ................... to many readers.','the most satisfying one ','most satisfying one','more than satisfying one ','the more satisfying than','A','1'),(60,'..................., the nation\'s capital remained in Philadelphia, Pennsylvania.','While designing Washington, D.C. ','Washington, D.C., was designed','While Washington, D.C., was being designed ','Washington, D.C., designed','C','1'),(61,'Children learn primarily by ................... the world around them.','experiencing directly of ','experience direct','directly physical experience ','direct physical experience of','D','1'),(62,'a','a','a','a','a','A','2'),(63,'a','','','','','','2'),(64,'a','1','1','1','1','1','2'),(66,'noel ngày bao nhiêu','23','24','25','26','A','1');
/*!40000 ALTER TABLE `cauhoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dethi1`
--

DROP TABLE IF EXISTS `dethi1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dethi1` (
  `dethiID` int(11) NOT NULL AUTO_INCREMENT,
  `tendethi` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `socaude` int(11) DEFAULT NULL,
  `socautrungbinh` int(11) DEFAULT NULL,
  `socaukho` int(11) DEFAULT NULL,
  `thoigianmode` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `thoigianlambai` int(11) DEFAULT NULL,
  `lopID` int(11) DEFAULT NULL,
  PRIMARY KEY (`dethiID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dethi1`
--

LOCK TABLES `dethi1` WRITE;
/*!40000 ALTER TABLE `dethi1` DISABLE KEYS */;
INSERT INTO `dethi1` VALUES (1,'Test10',2,4,4,'',1000,1),(2,'Test1',3,3,4,'2018-11-22',9000,1),(4,'Test3',2,3,5,'2018-10-5',10000,2),(5,'Test4',4,4,2,'2018-12-22',6000,1);
/*!40000 ALTER TABLE `dethi1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaicauhoi`
--

DROP TABLE IF EXISTS `loaicauhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loaicauhoi` (
  `maloaicauhoi` int(11) NOT NULL,
  `tenloaicauhoi` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`maloaicauhoi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaicauhoi`
--

LOCK TABLES `loaicauhoi` WRITE;
/*!40000 ALTER TABLE `loaicauhoi` DISABLE KEYS */;
INSERT INTO `loaicauhoi` VALUES (1,'Dễ'),(2,'Trung bình'),(3,'Khó');
/*!40000 ALTER TABLE `loaicauhoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lop`
--

DROP TABLE IF EXISTS `lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lop` (
  `MaLop` int(11) NOT NULL AUTO_INCREMENT,
  `TenLop` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `TenGiangVien` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`MaLop`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lop`
--

LOCK TABLES `lop` WRITE;
/*!40000 ALTER TABLE `lop` DISABLE KEYS */;
INSERT INTO `lop` VALUES (1,'Anh Văn 1','Nguyễn Văn A'),(2,'Anh Văn 2','Quyên'),(3,'Anh Văn 3','Tài'),(4,'Anh Văn 4','Sơn'),(5,'Anh Văn 5','Vinh'),(12,'Chưa có Lớp','Chưa có GV');
/*!40000 ALTER TABLE `lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `MemberID` int(110) NOT NULL AUTO_INCREMENT,
  `MemberName` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  `MemberPass` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  `Name` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  `categorymemberid` int(111) DEFAULT NULL,
  `IDlop` int(220) DEFAULT NULL,
  `NgaySinh` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  `GioiTinh` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  `DiaChi` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(145) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Nam123','1234567','Nguyễn Hoài Nam',2,1,'1998-2-3','nam','Cần Giuộc','9009',''),(2,'Quyen12','1234567','Hoàng Thúy Quyên',3,1,'1998-1-4','nữ','Nghệ An','3345',''),(3,'Nhi123','1234567','Huynh Thi Tuyết Nhi',4,1,'1998-2-5','nữ','Bình Thuân','4544',''),(4,'Linh123','1234567','Nguyễn Ngọc Trúc Linh',1,2,'1998-12-6','nữ','Tây Ninh','5465',''),(5,'Ba123','1234567','Nguyễn Văn Ba',1,1,'1998-2-16','nam','Bình Phước','3244',NULL),(6,'Duy','33','Nguyễn Hồng Duy',1,1,'1998-4-5','nam','Khánh Hòa','3455',NULL),(7,'Trâm','44','Trần Ngọc Trâm',1,12,'1998-7-12','nữ','Hà Nôi','8798',NULL),(8,'Trang','trang55','Nguyễn Tú Trang',1,12,'1998-10-20','nữ','Huế','5451',NULL),(9,'Khiêm','123khiem','Đinh Duy Khiêm',1,12,'1998-11-4','nam','Hà Tĩnh','4822',NULL),(10,'Huân','huanhuan','Đỗ Hoàng Huân',1,12,'1996-12-4','nam','Tây Nguyên','3546',''),(11,'Dương','123Duong','Hoàng Đại Dương',1,12,'1996-12-12','nam','TPHCM','6541',''),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'','','Nguyễn văn A',1,2,'','Nam','','',NULL),(32,'','','Nguyễn văn A',1,1,'','Nam','','',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noidungdethi`
--

DROP TABLE IF EXISTS `noidungdethi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noidungdethi` (
  `noidungdethiid` int(11) NOT NULL AUTO_INCREMENT,
  `dapanA` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dapanB` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dapanC` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dapanD` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dapan` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `cauhoi` varchar(1145) COLLATE utf8_bin DEFAULT NULL,
  `IDdethi` int(11) DEFAULT NULL,
  `LoaiCauID` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`noidungdethiid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noidungdethi`
--

LOCK TABLES `noidungdethi` WRITE;
/*!40000 ALTER TABLE `noidungdethi` DISABLE KEYS */;
INSERT INTO `noidungdethi` VALUES (26,'the most satisfying one ','most satisfying one','more than satisfying one ','the more satisfying than','A','Of Charles Dickens\' many novels, expectations perhaps ................... to many readers.',4,1,1),(27,'who become a Union army general','which became a Union army general ','who were a Union army general','a Union army general','D','Abner Doubleday, ..............., was credited with the invention of baseball in 1839.',4,2,2),(28,'a farmer had been ','had been a farmer ','farming','being a farmer','B','America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.',4,3,3),(29,'transmit','transmitted ','transmits','to transmit','C','Each fiber in the bundle …………….. only a tiny fraction of the total image.',4,1,4),(30,'were conducting','have been conducted ','had been conducted','being conducted','C','Experiments in the sonic imaging of moving objects ............... in both the  United States and Europe well before the Second World War.',4,1,5),(31,'who become a Union army general','which became a Union army general ','who were a Union army general','a Union army general','D','Abner Doubleday, ..............., was credited with the invention of baseball in 1839.',4,2,6),(32,'who become a Union army general','which became a Union army general ','who were a Union army general','a Union army general','D','Abner Doubleday, ..............., was credited with the invention of baseball in 1839.',4,2,7),(33,'who become a Union army general','which became a Union army general ','who were a Union army general','a Union army general','D','Abner Doubleday, ..............., was credited with the invention of baseball in 1839.',4,2,8),(34,'a farmer had been ','had been a farmer ','farming','being a farmer','B','America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.',4,3,9),(35,'a farmer had been ','had been a farmer ','farming','being a farmer','B','America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.',4,3,10),(36,NULL,NULL,NULL,NULL,NULL,'1',2,0,NULL),(37,'More people live','More people living ','It has more people ','More living people','A','................... in Shanghai than in any other city in China. ',2,1,1),(38,'More people live','More people living ','It has more people ','More living people','A','................... in Shanghai than in any other city in China. ',2,1,2),(39,'when cultivated ','cultivated','which need to be cultivated ','need to be cultivated','D','Not only knowledge and skills, but also attitudes ................... in school for students\' future adjustment to society.',2,1,3),(40,'a','a','a','a','A','a',2,2,4),(41,'on completion of ','the completion of','completing of','their completing of','B','Antonio Gaudi, architect of Barcelona\'s Holy Family Church, died before seeing ............... the structure.',2,2,5),(42,'on completion of ','the completion of','completing of','their completing of','B','Antonio Gaudi, architect of Barcelona\'s Holy Family Church, died before seeing ............... the structure.',2,2,6),(43,'a farmer had been ','had been a farmer ','farming','being a farmer','B','America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.',2,3,7),(44,'make blacksmiths,','made blacksmiths,','making them blacksmiths, ','making blacksmiths,','D','Modern industrial methods have supplanted individual crafts, ...................stone carvers, coopers, and cobblers virtually extinct.',8,1,1),(45,'1','1','1','1','1','a',8,2,2),(46,'a farmer had been ','had been a farmer ','farming','being a farmer','B','America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.',8,3,3),(47,'transmit','transmitted ','transmits','to transmit','C','Each fiber in the bundle …………….. only a tiny fraction of the total image.',8,1,1),(48,'on completion of ','the completion of','completing of','their completing of','B','Antonio Gaudi, architect of Barcelona\'s Holy Family Church, died before seeing ............... the structure.',8,2,2),(49,'For','However ','If','Although','C','............... photosynthesis were to stop, life would disappear from the planet Earth relatively quickly.',8,3,3),(50,'Chromosomes','Chromosomes that are','Chromosomes are','Chromosomes while they are','C','............... gene-bearing bodies within the nuclei of living organisms.',10,1,1),(51,'on completion of ','the completion of','completing of','their completing of','B','Antonio Gaudi, architect of Barcelona\'s Holy Family Church, died before seeing ............... the structure.',10,2,2),(52,'a farmer had been ','had been a farmer ','farming','being a farmer','B','America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.',10,3,3),(53,'the most satisfying one ','most satisfying one','more than satisfying one ','the more satisfying than','A','Of Charles Dickens\' many novels, expectations perhaps ................... to many readers.',11,1,1),(54,'1','1','1','1','1','a',11,2,2),(55,'a farmer had been ','had been a farmer ','farming','being a farmer','B','America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.',11,3,3),(56,'they are','where they are ','where are','in where they are','B','This is the factory ................................. at work. ',2,1,1),(57,'a','a','a','a','A','a',2,2,2),(58,'a farmer had been ','had been a farmer ','farming','being a farmer','B','America\'s first globe maker was James Wilson, who ................... and blacksmith in his earlier life.',2,3,3);
/*!40000 ALTER TABLE `noidungdethi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `correctanswernum` int(11) DEFAULT NULL,
  `incorrectanswernum` int(11) DEFAULT NULL,
  `time` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `examinationid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `correctanswerread` int(11) DEFAULT NULL,
  `correctanswerlisten` int(11) DEFAULT NULL,
  PRIMARY KEY (`resultid`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,9,4,'Thu Dec 06 11:00:22 ICT 2018',1,1,0,0),(2,10,0,'Thu Dec 06 11:38:49 ICT 2018',2,3,0,0),(3,7,3,'Thu Dec 06 12:25:18 ICT 2018',4,5,0,1),(4,10,0,'Thu Dec 06 12:27:53 ICT 2018',3,7,0,1),(5,8,2,'Thu Dec 06 12:34:08 ICT 2018',5,9,1,1),(6,9,1,'Thu Dec 06 12:36:21 ICT 2018',2,7,1,1),(7,10,0,'Thu Dec 06 12:36:22 ICT 2018',1,8,1,1),(8,6,4,'Thu Dec 06 12:51:59 ICT 2018',5,10,0,0),(9,7,3,'Thu Dec 06 12:53:31 ICT 2018',3,2,2,0),(10,6,4,'Thu Dec 06 12:55:22 ICT 2018',4,1,0,0),(11,5,5,'Thu Dec 06 13:33:37 ICT 2018',3,4,0,0),(12,7,3,'Thu Dec 06 13:34:26 ICT 2018',5,3,0,0),(13,8,2,'Thu Dec 06 13:37:14 ICT 2018',1,7,0,0),(14,9,1,'Thu Dec 06 13:37:32 ICT 2018',2,5,0,0),(15,10,0,'Thu Dec 06 13:37:53 ICT 2018',1,4,0,0),(67,10,0,'Sat Dec 22 20:14:27 ICT 2018',4,2,0,0),(68,10,0,'Sat Dec 22 20:14:41 ICT 2018',4,2,0,0),(69,10,0,'Sat Dec 22 20:14:58 ICT 2018',4,2,0,0),(70,10,0,'Sat Dec 22 20:15:12 ICT 2018',4,2,0,0),(71,10,0,'Sat Dec 22 20:15:25 ICT 2018',4,2,0,0),(72,10,0,'Sat Dec 22 20:16:36 ICT 2018',4,2,0,0),(73,6,4,'Sat Dec 22 20:16:53 ICT 2018',4,2,0,0),(74,6,4,'Sat Dec 22 20:17:15 ICT 2018',4,2,0,0),(75,6,4,'Sat Dec 22 20:17:28 ICT 2018',4,2,0,0),(76,6,4,'Sat Dec 22 20:17:42 ICT 2018',4,2,0,0),(77,6,4,'Sat Dec 22 20:17:56 ICT 2018',4,2,0,0),(78,6,4,'Sat Dec 22 20:19:03 ICT 2018',4,2,0,0),(79,6,4,'Sun Dec 23 09:41:27 ICT 2018',4,2,0,0),(80,6,4,'Sun Dec 23 09:43:19 ICT 2018',4,2,0,0),(81,6,4,'Sun Dec 23 09:45:16 ICT 2018',4,2,0,0),(82,6,4,'Sun Dec 23 09:46:52 ICT 2018',4,2,0,0),(83,6,4,'Sun Dec 23 09:47:44 ICT 2018',4,2,0,0);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'webthitoeic'
--

--
-- Dumping routines for database 'webthitoeic'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-23 17:25:47
