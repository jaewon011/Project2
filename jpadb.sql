CREATE DATABASE  IF NOT EXISTS `jpadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jpadb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jpadb
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hisboard`
--

DROP TABLE IF EXISTS `hisboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hisboard` (
  `hisnum` int NOT NULL AUTO_INCREMENT,
  `hisexplan` varchar(5000) DEFAULT NULL,
  `hisinfo` varchar(2000) DEFAULT NULL,
  `hisloca` varchar(40) NOT NULL,
  `hisname` varchar(20) NOT NULL,
  `hispic` varchar(30) NOT NULL,
  `hissysname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hisnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hisboard`
--

LOCK TABLES `hisboard` WRITE;
/*!40000 ALTER TABLE `hisboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `hisboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jpatbl`
--

DROP TABLE IF EXISTS `jpatbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jpatbl` (
  `code` bigint NOT NULL AUTO_INCREMENT,
  `int_data` int DEFAULT NULL,
  `red_date` datetime(6) DEFAULT NULL,
  `str_data` varchar(50) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpatbl`
--

LOCK TABLES `jpatbl` WRITE;
/*!40000 ALTER TABLE `jpatbl` DISABLE KEYS */;
INSERT INTO `jpatbl` VALUES (1,111,'2023-11-15 14:55:17.507903','awdad'),(2,1234,'2023-11-15 15:29:56.108414','test1'),(3,22,'2023-11-16 09:09:10.097729','test1222');
/*!40000 ALTER TABLE `jpatbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movietbl`
--

DROP TABLE IF EXISTS `movietbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movietbl` (
  `mcode` bigint NOT NULL AUTO_INCREMENT,
  `mactor` varchar(100) NOT NULL,
  `mdirector` varchar(50) NOT NULL,
  `mgenre` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `mnation` varchar(50) NOT NULL,
  `mopen` varchar(10) NOT NULL,
  `moriname` varchar(50) DEFAULT NULL,
  `msynopsis` varchar(2000) DEFAULT NULL,
  `msysname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mcode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movietbl`
--

LOCK TABLES `movietbl` WRITE;
/*!40000 ALTER TABLE `movietbl` DISABLE KEYS */;
INSERT INTO `movietbl` VALUES (1,'크리스프랫, 조샐다나, 데이브바티스타, 카렌길런 등','제임스 건','슈퍼히어로,SF,액션','가디언즈 오브 캘럭시: Volume 3','미국','2023-05-03','경관의피.jpg','가모라를 잃고 슬픔에 빠져 있던 피터 퀼이 위기에 처한 은하계와 동료를 지키기 위해 다시 한번 가디언즈 팀과 힘을 모으고, 성공하지 못할 경우 그들의 마지막이 될지도 모르는 미션에 나서는 이야기\r\n\r\n피터 퀼은 로켓의 생명을 구하는 위험한 임무를 위해 팀을 그의 주위에 모아야 한다.','1700459270348.jpg'),(2,'키아누 리브스, 로렌스 피시번','채드 스타헬스키','액션','존 윅 4','미국','2023-04-12','jw4.jpg','죽을 위기에서 살아난 \'존 윅\'은\r\n\'최고 회의\'를 쓰러트릴 방법을 찾아낸다.\r\n\r\n비로소 완전한 자유의 희망을 보지만,\r\nNEW 빌런 \'그라몽 후작\'과 전 세계의 최강 연합은\r\n\'존 윅\'의 오랜 친구까지 적으로 만들어 버리고,\r\n\r\n새로운 위기에 놓은 \'존 윅\'은\r\n최후의 반격을 준비하는데,,\r\n\r\n레전드 액션 블록버스터 <존 윅>의\r\n새로운 챕터가 열린다!','1700540001007.jpg'),(3,'할리 베일리, 멜리사 맥카시, 조나 하우어 킹','롭 마샬','뮤지컬, 가족, 판타지, 로맨스','인어 공주','미국','2023-05-24','인어공주.jpg','“내 안의 목소리를 따라\r\n자유롭게 꿈꾸고 사랑할 거야”\r\n\r\n아틀란티카 바다의 왕 ‘트라이튼’의 사랑스러운 막내딸인 인어 ‘에리얼’은 늘 인간들이 사는 바다 너머 세상으로의 모험을 꿈꾼다.\r\n\r\n어느 날, 우연히 바다 위로 올라갔다가 폭풍우 속 가라앉는 배에 탄 인간 ‘에릭 왕자’의 목숨을 구해준다.\r\n갈망하던 꿈과 운명적인 사랑을 이루기 위해 용기를 낸 ‘에리얼’은 사악한 바다 마녀 ‘울슐라’와의 위험한 거래를 통해 다리를 얻게 된다.\r\n\r\n드디어 바다를 벗어나 그토록 원하던 인간 세상으로 가게 되지만, 그 선택으로 ‘에리얼’과 아틀란티카 왕국 모두 위험에 처하게 되는데…\r\n\r\n바닷속, 그리고 그 너머\r\n아름다운 꿈과 사랑의 멜로디가 펼쳐진다!','1700542200764.jpg'),(4,'박영남, 이인성 , 정미숙 등','김수정','애니메이션','아기공룡둘리-얼음별대모험 리마스터링','한국','2023-05-24','둘리.jpg','아기공룡 둘리는 1억 년 전 거대한 빙산 조각에 갇혀 엄마와 헤어지게 되고 그 안에서 깊은 잠에 빠지게 된다.\r\n어느 날 한강으로 빙산 조각이 흘러 들어오게 되고 조금씩 얼음이 깊은 잠에서 깨어난 둘리는 우연히 쌍문동에 사는 소시민 고길동의 집에 머물게 되는데,\r\n호기심 많고 말썽꾸러기인 둘리로 인해 고길동의 집은 그날부터 하루도 맘 편할 날이 없다.\r\n\r\n거기에 ‘공포의 공갈 젖꼭지’ 희동이, 외계인 도우너, 귀부인 타조 또치, 가수지망생 마이콜이 가세하고\r\n이들은 타임 코스모스를 타고 빨리 어른이 되기 위해 미래로 여행을 떠난다.\r\n그러나 타임 코스모스의 작동실수로 이들은 우주의 미로 속, 얼음별로 향하게 되고 그곳에서 둘리는 꿈에 그리던 엄마를 만나게 된다.\r\n하지만 얼음별은 우주의 악당 바요킹에 의해 지배당하고 있었고 둘리 일행은 바요킹의 추격에 쫓기기 시작한다.','1700542313974.jpg');
/*!40000 ALTER TABLE `movietbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qboard`
--

DROP TABLE IF EXISTS `qboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qboard` (
  `qnum` int NOT NULL AUTO_INCREMENT,
  `qcontents` varchar(5000) DEFAULT NULL,
  `qdate` datetime(6) DEFAULT NULL,
  `qmid` varchar(20) NOT NULL,
  `qtitle` varchar(50) NOT NULL,
  PRIMARY KEY (`qnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qboard`
--

LOCK TABLES `qboard` WRITE;
/*!40000 ALTER TABLE `qboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `qboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qreply`
--

DROP TABLE IF EXISTS `qreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qreply` (
  `qrnum` int NOT NULL AUTO_INCREMENT,
  `qrbnum` int NOT NULL,
  `qrcontents` varchar(200) DEFAULT NULL,
  `qrdate` datetime(6) DEFAULT NULL,
  `qrmid` varchar(20) NOT NULL,
  PRIMARY KEY (`qrnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qreply`
--

LOCK TABLES `qreply` WRITE;
/*!40000 ALTER TABLE `qreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `qreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagtbl`
--

DROP TABLE IF EXISTS `tagtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagtbl` (
  `tcode` bigint NOT NULL AUTO_INCREMENT,
  `tcount` int NOT NULL,
  `tid` double NOT NULL,
  `tmcode` bigint NOT NULL,
  `ttype` varchar(30) NOT NULL,
  `tword` varchar(20) NOT NULL,
  PRIMARY KEY (`tcode`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagtbl`
--

LOCK TABLES `tagtbl` WRITE;
/*!40000 ALTER TABLE `tagtbl` DISABLE KEYS */;
INSERT INTO `tagtbl` VALUES (1,1,0,2,'AFW_VIDEO','존 윅 4'),(2,1,1,2,'PS_NAME','채드 스타헬스키'),(3,1,2,2,'PS_NAME','키아누 리브스'),(4,1,3,2,'PS_NAME','로렌스 피시번'),(5,4,4,2,'PS_NAME','존 윅'),(6,1,5,2,'PS_NAME','NEW 빌런  그라몽'),(7,1,7,2,'CV_RELATION','친구'),(8,1,9,2,'FD_ART','블록버스터'),(9,1,0,3,'AFW_DOCUMENT','인어 공주'),(10,1,1,3,'PS_NAME','롭 마샬'),(11,1,2,3,'PS_NAME','할리 베일리'),(12,1,3,3,'PS_NAME','멜리사 맥카시'),(13,2,4,3,'TMI_SW','아틀란티카'),(14,1,5,3,'CV_POSITION','왕'),(15,1,6,3,'PS_NAME','트라이튼'),(16,1,7,3,'CV_RELATION','막내딸'),(17,1,8,3,'PS_NAME','인어'),(18,3,9,3,'PS_NAME','에리얼'),(19,1,0,4,'AFW_VIDEO','아기공룡둘리 얼음별대'),(20,1,1,4,'PS_NAME','리마스터링'),(21,1,2,4,'PS_NAME','김수정'),(22,1,3,4,'PS_NAME','박영남'),(23,1,4,4,'PS_NAME','이인성'),(24,1,5,4,'PS_NAME','정미숙'),(25,1,6,4,'AFW_VIDEO','아기공룡 둘리'),(26,1,7,4,'DT_OTHERS','1억 년 전'),(27,2,8,4,'CV_RELATION','엄마'),(28,1,9,4,'LCG_RIVER','한강');
/*!40000 ALTER TABLE `tagtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tboard`
--

DROP TABLE IF EXISTS `tboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tboard` (
  `tnum` int NOT NULL AUTO_INCREMENT,
  `tcontents` varchar(5000) NOT NULL,
  `tend` varchar(255) NOT NULL,
  `tmid` varchar(20) NOT NULL,
  `tpeople` int NOT NULL,
  `tpic` varchar(30) DEFAULT NULL,
  `tstart` varchar(255) NOT NULL,
  `tstatus` varchar(10) DEFAULT '대기',
  `tsysname` varchar(50) DEFAULT NULL,
  `ttitle` varchar(50) NOT NULL,
  PRIMARY KEY (`tnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tboard`
--

LOCK TABLES `tboard` WRITE;
/*!40000 ALTER TABLE `tboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `tboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treply`
--

DROP TABLE IF EXISTS `treply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treply` (
  `trnum` int NOT NULL AUTO_INCREMENT,
  `trbnum` int NOT NULL,
  `trcontents` varchar(200) DEFAULT NULL,
  `trdate` datetime(6) DEFAULT NULL,
  `trmid` varchar(20) NOT NULL,
  PRIMARY KEY (`trnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treply`
--

LOCK TABLES `treply` WRITE;
/*!40000 ALTER TABLE `treply` DISABLE KEYS */;
/*!40000 ALTER TABLE `treply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26 15:08:51
