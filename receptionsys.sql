CREATE DATABASE  IF NOT EXISTS `receptionsys` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `receptionsys`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: receptionsys
-- ------------------------------------------------------
-- Server version	5.6.17-log

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
-- Table structure for table `reasoncategory`
--

DROP TABLE IF EXISTS `reasoncategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reasoncategory` (
  `category_id` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reasoncategory`
--

LOCK TABLES `reasoncategory` WRITE;
/*!40000 ALTER TABLE `reasoncategory` DISABLE KEYS */;
INSERT INTO `reasoncategory` VALUES ('001','stationary'),('002','kitchen supply'),('003','collect graded assignment'),('004','tuition - Emil'),('005','general purpose - Nereshnee'),('006','course related issue - Loudres'),('007','Book a doctor'),('008','pick up package'),('009','book room resource');
/*!40000 ALTER TABLE `reasoncategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_faculty`
--

DROP TABLE IF EXISTS `staff_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_faculty` (
  `personvisited_id` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`personvisited_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_faculty`
--

LOCK TABLES `staff_faculty` WRITE;
/*!40000 ALTER TABLE `staff_faculty` DISABLE KEYS */;
INSERT INTO `staff_faculty` VALUES ('001','Emil','emilb@cmu.edu.au'),('002','Colin','colinund@cmu.edu.au'),('003','Nereshnee','nshunmug@cmu.edu.au'),('004','Lourdes','lalmeda@cmu.edu.au'),('005','Suzana','shanic@cmu.edu.au'),('006','Fatima','fdellaverde@cmu.edu.au'),('007','Jennifer','jhbourne@cmu.edu.au'),('008','Jayne','Reception@cmu.edu.au'),('009','Debra','dmules@cmu.edu.au'),('010','Stephen','spmorgan@cmu.edu.au'),('011','Ben','olijnyk@cmu.edu.au'),('012','Mark','mhamon@cmu.edu.au'),('013','Angelo','abeltran@cmu.edu.au'),('014','Darren','dturner@cmu.edu.au'),('015','Mark','mcharnley@cmu.edu.au'),('016','Murli','murlik@cmu.edu.au'),('017','Riaz','riazesma@cmu.edu.au'),('018','Tim ','timoloug@cmu.edu.au'),('019','Paul','pchapman@andre.cmu.edu'),('020','TK','tklim@andrew.cmu.edu'),('021','Linda','lindac@andrew.cmu.edu'),('022','Januz','js1m@andrew.cmu.edu'),('023','David','david@speakersstudio.com.au');
/*!40000 ALTER TABLE `staff_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `student_id` varchar(20) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `program` varchar(45) DEFAULT NULL,
  `batch` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `photopath` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('001','Eric','Adlam','MISM','Aug 14','eadlam@andrew.cmu.edu','photopath'),('002','Sahil','Aggarwal','MISM','Aug 14','sahila@andrew.cmu.edu','photopath'),('003','Enrique','Arango Lyons','MISM','Aug 14','earangol@andrew.cmu.edu','photopath'),('004','Vivek  ','Arora','MSIT','Aug 13','vivekaro@andrew.cmu.edu','photopath'),('005','Yuxin','Bai','MISM','Aug 14','yuxinb@andrew.cmu.edu','photopath'),('006','Smriti','Batra','MSIT','Aug 13','smritib@andrew.cmu.edu','photopath'),('007','Constantin','Baumgartner','MISM','Aug 14','cbaumgar@andrew.cmu.edu','photopath'),('008','Dhaanesh','Bellan Veerendran','MISM','Aug 14','dbellanv@andrew.cmu.edu','photopath'),('009','Shubhang','Bhasin','MSIT','Aug 13','sbhasin@andrew.cmu.edu','photopath'),('010','Cynthia','Boyton','MSPPM-G','Aug 14','cboyton@andrew.cmu.edu','photopath'),('011','Jingwei','Cao','MISM','Aug 14','jcao1@andrew.cmu.edu','photopath'),('012','Juan Pablo','Castro Santander','MSPPM','Aug 14','jcastros@andrew.cmu.edu','photopath'),('013','Sadhana','Chandrasekhar','MISM','Aug 14','sadhanac@andrew.cmu.edu','photopath'),('014','Yilong','Chang','MISM','Aug 14','yilongc@andrew.cmu.edu','photopath'),('015','Xueying','Chen','MISM','Aug 14','xueyingc@andrew.cmu.edu','photopath'),('016','Bing Huan','Chua','MISM','Aug 14','bchua@andrew.cmu.edu','photopath'),('017','Andrew Stephen','Crall','MSPPM','Aug 14','acrall@andrew.cmu.edu','photopath'),('018','David','Cripps','MSPPM','Jan 10','dcripps@andrew.cmu.edu','photopath'),('019','Hoang Minh','Dang','MSIT','Aug 13','hdang@andrew.cmu.edu','photopath'),('020','Sharmistha','Datta','MISM','Aug 14','sharmisd@andrew.cmu.edu','photopath'),('021','Nomfundo Joy','Dlamini','MSPPM','Jan 14','ndlamini@andrew.cmu.edu','photopath'),('022','Thi Kim Tuyen','Doan','MSPPM','Jan 14','thikimtd@andrew.cmu.edu','photopath'),('023','Pedro Tomas','Ezcurra','MSPPM','Jan 14','pezcurra@andrew.cmu.edu','photopath'),('024','Ryan','Farkas','MSPPM-G','Aug 14','rfarkas1@andrew.cmu.edu','photopath'),('025','Yuting','Fan','MISM','Aug 14','yutingf@andrew.cmu.edu','photopath'),('026','Pimeng','Fu','MISM','Aug 14','pimengf@andrew.cmu.edu','photopath'),('027','Yun','Fu ','MISM','Aug 14','yunfu@andrew.cmu.edu','photopath'),('028','Frednand Fredrick','Furia','MSPPM','Jan 13','ffuria@andrew.cmu.edu','photopath'),('029','Nakul','Gandotra','MSIT','Aug 13','ngandotr@andrew.cmu.edu','photopath'),('030','Juan Jose','German','MSPPM','Aug 14','juanjosg@andrew.cmu.edu','photopath'),('031','Juan Pablo','Gonzalez Gonzalez','MSPPM','Jan 14','juanpabg@andrew.cmu.edu','photopath'),('032','Huan','Gu','MISM','Aug 14','huangu@andrew.cmu.edu','photopath'),('033','Zhangwei','Gu','MISM','Aug 14','zhangweg@andrew.cmu.edu','photopath'),('034','Ningwei','Guo','MSPPM-G','Aug 14','nguo@andrew.cmu.edu','photopath'),('035','Adnan Talib','Hakimjee','MSPPM','Aug 13','ahakimje@andrew.cmu.edu','photopath'),('036','Xi','Han','MISM','Aug 14','xih@andrew.cmu.edu','photopath'),('037','Yue','He','MISM','Aug 14','yuehe@andrew.cmu.edu','photopath'),('038','Phu','Ho Vinh','MSPPM','Jan 14','phoving@andrew.cmu.edu','photopath'),('039','Jingxuan','Hu','MISM','Aug 14','jingxuah@andrew.cmu.edu','photopath'),('040','Wangyu','Huang','MSIT','Aug 14','wangyuh@andrew.cmu.edu','photopath'),('041','Sara Alicia','Hurtarte Rodriguez','MSPPM','Jan 14','shurtart@andrew.cmu.edu','photopath'),('042','Gao','Jiang','MISM','Aug 14','gaoj@andrew.cmu.edu','photopath'),('043','Yimin','Jiang','MISM','Aug 14','yiminj@andrew.cmu.edu','photopath'),('044','Yifei','Jiang','MISM','Aug 14','yifeij@andrew.cmu.edu','photopath'),('045','Fresnel','JN Baptiste','MSPPM','Jan 14','fjnbapti@andrew.cmu.edu','photopath'),('046','Sam Christopher','Johnson Manickarajan','MSIT','Aug 13','sdjohnso@andrew.cmu.edu','photopath'),('047','Omar','Juarez Rojas','MSIT','Aug 14','ojuarezr@andrew.cmu.edu','photopath'),('048','Brenda Waruguru','Kamangara','MSPPM','Aug 14','brendakamangara@cmu.edu','photopath'),('049','Harika','Kandala','MISM','Aug 14','hkandala@andrew.cmu.edu','photopath'),('050','Michael','Kolisz','MSPPM','Aug 13','mkolisz@andrew.cmu.edu','photopath'),('051','Jennifer','Kunkel','MISM','Aug 14','jkunkel1@andrew.cmu.edu','photopath'),('052','Nicole','Kyrkou','MSPPM','Jan 09','nkyrkou@andrew.cmu.edu','photopath'),('053','Lerato Christine','Lali','MSPPM','Jan 14','llali@andrew.cmu.edu','photopath'),('054','James','Laney','MISM','Aug 14','jlaney@andrew.cmu.edu','photopath'),('055','Hong','Lei','MISM','Aug 14','hongl@andrew.cmu.edu','photopath'),('056','Yunjing','Li','MISM','Aug 14','yunjingl@andrew.cmu.edu','photopath'),('057','Yiyou','Lin','MISM','Aug 14','yiyoul@andrew.cmu.edu','photopath'),('058','Lijing','Liu','MISM','Aug 14','lijingl@andrew.cmu.edu','photopath'),('059','Qinghua','Liu','MSPPM','Aug 13','qinghual@andrew.cmu.edu','photopath'),('060','Yuehong','Liu','MISM','Aug 14','yuehongl@andrew.cmu.edu','photopath'),('061','Leandro Javier','Lopez Digon','MSPPM','Aug 13','ljl@andrew.cmu.edu','photopath'),('062','Yishuang','Lu','MISM','Aug 14','yishuanl@andrew.cmu.edu','photopath'),('063','Wei','Luo','MISM','Aug 14','weiluo@andrew.cmu.edu','photopath'),('064','Hai','Lyu','MSPPM-G','Aug 14','hlyu@andrew.cmu.edu','photopath'),('065','Shray','Mahesh Narang','MISM','Aug 14','smaheshn@andrew.cmu.edu','photopath'),('066','Srikant','Mandal','MISM','Aug 14','srikantm@andrew.cmu.edu','photopath'),('067','Elizabeth','Makyao','MSPPM','Aug 14','eym@andrew.cmu.edu','photopath'),('068','Jade Lane','Martin','MISM','Aug 14','jadem@andrew.cmu.edu','photopath'),('069','Abhijit','Mishra','MSPPM','Aug 14','abhijitm@andrew.cmu.edu','photopath'),('070','Kotaro','Mizutani','MISM','Aug 14','kmizutan@andrew.cmu.edu','photopath'),('071','Tom','Mowbray','MSPPM','Aug 09','tmowbray@andrew.cmu.edu','photopath'),('072','Amos','Ndhlovu','MSPPM','Jan 14','andhlovu@andrew.cmu.edu','photopath'),('073','Canh Dong Do','Nguyen','MSPPM','Jan 14','canhdonn@andrew.cmu.edu','photopath'),('074','Gia Lam','Nguyen','MSPPM','Jan 14','gialamn@andrew.cmu.edu','photopath'),('075','Khanh Quoc','Nguyen','MSPPM','Jan 14','khanhqun@andrew.cmu.edu','photopath'),('076','Trong Hieu','Nguyen','MSPPM','Jan 14','tronghin@andrew.cmu.edu','photopath'),('077','Aakriti','Nirvan','MISM','Aug 14','anirvan@andrew.cmu.edu','photopath'),('078','Mercy Olajumoke Dike','Odu','MSPPM','Jan 14','modu@andrew.cmu.edu','photopath'),('079','Ruijie','Ouyang','MISM','Aug 14','rouyang@andrew.cmu.edu','photopath'),('080','Xinxin','Pan','MISM','Aug 14','xinxinp@andrew.cmu.edu','photopath'),('081','Himanshu','Parashar','MSIT','Jan 14','hparasha@andrew.cmu.edu','photopath'),('082','Romin Bharat','Parekh','MISM','Aug 14','rparekh@andrew.cmu.edu','photopath'),('083','Celine Ma Cecilia','Patag','MSIT','Aug 13','cpatag@andrew.cmu.edu','photopath'),('084','Sameer','Patel','MISM','Aug 14','sameerp@andrew.cmu.edu','photopath'),('085','Benjamin','Peters','MISM','Aug 14','bpeters@andrew.cmu.edu','photopath'),('086','Nisha','Pradhan','MSIT','Jan 14','npradhan@andrew.cmu.edu','photopath'),('087','Qi','Qu','MISM','Aug 14','qqu@andrew.cmu.edu','photopath'),('088','Muralikrishnan','Ravi','MISM','Aug 14','muralikr@andrew.cmu.edu','photopath'),('089','Bhargavi','Reddy Dokuru','MISM','Aug 14','breddydo@andrew.cmu.edu','photopath'),('090','Daniel','Rim','MISM','Aug 14','drim@andrew.cmu.edu','photopath'),('091','Van Duc','Sa','MSPPM','Jan 14','vanducs@andrew.cmu.edu','photopath'),('092','Bushra','Sajjad','MISM','Aug 14','bsajjad@andrew.cmu.edu','photopath'),('093','Abel Inyami','Sengasenga','MSPPM','Jan 14','asengase@andrew.cmu.edu','photopath'),('094','Han-wei','Shao','MSIT','Aug 13','hshao@andrew.cmu.edu','photopath'),('095','Anqi','Shen','MISM','Aug 14','anis@andrew.cmu.edu','photopath'),('096','Abhishek','Singh','MSPPM','Aug 13','asingh1@andrew.cmu.edu','photopath'),('097','Richard Shannon','Tiu','MSIT','Aug 13','rtiu@andrew.cmu.edu','photopath'),('098','Pooja','Udani','MISM','Aug 14','pudani@andrew.cmu.edu','photopath'),('099','Advait','Varadarajan','MISM','Aug 14','advaitv@andrew.cmu.edu','photopath'),('100','Pelden','Tshelthrim','MSPPM','Jan 14','ptshelth@andrew.cmu.edu','photopath'),('101','Yuxuan','Wan','MISM','Aug 14','yuxuanw@andrew.cmu.edu','photopath'),('102','Jiahui','Wang','MISM','Aug 14','jiahuiw@andrew.cmu.edu','photopath'),('103','Katie','Whipkey','MSPPM-G','Aug 14','kwhipkey@andrew.cmu.edu','photopath'),('104','Di','Wu','MSPPM','Aug 13','diwu@andrew.cmu.edu','photopath'),('105','Yijun','Wu','MSPPM-G','Aug 14','yijunwu@andrew.cmu.edu','photopath'),('106','Xiaolu','Wu','MSPPM-G','Aug 14','xialuw@andrew.cmu.edu','photopath'),('107','Shiting','Xie','MISM','Aug 14','shitingx@andrew.cmu.edu','photopath'),('108','Guangyao','Xie','MISM','Aug 14','guangyax@andrew.cmu.edu','photopath'),('109','Xiaoyu','Xiu','MISM','Aug 14','xiaoyuxi@andrew.cmu.edu','photopath'),('110','Tianyu','Xu','MISM','Aug 14','tx@andrew.cmu.edu','photopath'),('111','Kaili','Xue','MISM','Aug 14','kxue@andrew.cmu.edu','photopath'),('112','Yufei','Yang','MISM','Aug 14','yufeiy@andrew.cmu.edu','photopath'),('113','Haoyue','Yang','MSIT','Aug 14','haoyuey@andrew.cmu.edu','photopath'),('114','Suo','Yang','MSPPM','Aug 14','suoy@andrew.cmu.edu','photopath'),('115','Liruoyang','Yu','MISM','Aug 14','liruoyay@andrew.cmu.edu','photopath'),('116','Yiming','Zang','MISM','Aug 14','yzang@andrew.cmu.edu','photopath'),('117','Chenyuan','Zhang','MISM','Aug 14','chenyuaz@andrew.cmu.edu','photopath'),('118','Jianlin','Zhang','MISM','Aug 14','jianlinz@andrew.cmu.edu','photopath'),('119','Min','Zhang','MISM','Aug 14','minzhang@andrew.cmu.edu','photopath'),('120','Yuqi','Zhang','MISM','Aug 14','yuqiz@andrew.cmu.edu','photopath'),('121','Ying','Zhang','MISM','Aug 14','yingzha3@andrew.cmu.edu','photopath'),('122','Yun','Zhang','MSPPM','Aug 13','zyvonne@cmu.edu','photopath'),('123','Shiyuan','Zhou','MISM','Aug 14','shiyuanz@andrew.cmu.edu','photopath'),('124','Qihang','Zhou','MISM','Aug 14','qihangz@andrew.cmu.edu','photopath'),('125','Yiwei','Zhu','MISM','Aug 14','yiweizhu@andrew.cmu.edu','photopath');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Melanie','82465');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit` (
  `student_id` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `category_id` varchar(45) NOT NULL,
  `detailreason` varchar(200) DEFAULT NULL,
  `personvisited_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES ('003','2014-09-28 11:22:25','006',NULL,NULL),('005','2014-12-23 14:24:53','002',NULL,NULL),('006','2014-10-30 11:12:03','007',NULL,NULL),('008','2014-10-10 14:49:26','007',NULL,NULL),('014','2014-09-02 10:13:35','002',NULL,NULL),('014','2014-09-24 13:54:11','009',NULL,NULL),('014','2014-09-30 16:41:44','005',NULL,NULL),('016','2014-11-13 12:25:32','004',NULL,NULL),('017','2014-10-13 14:13:45','008',NULL,NULL),('018','2014-12-13 17:25:50','001',NULL,NULL),('020','2014-09-19 15:14:42','006',NULL,NULL),('024','2014-12-15 11:55:44','004',NULL,NULL),('027','2014-12-26 11:20:57','001',NULL,NULL),('027','2014-12-29 15:18:55','001',NULL,NULL),('031','2014-11-19 16:53:54','006',NULL,NULL),('032','2014-11-13 11:21:51','003',NULL,NULL),('032','2014-11-19 11:26:32','005',NULL,NULL),('032','2014-11-28 15:13:17','001',NULL,NULL),('039','2014-09-06 13:34:17','003',NULL,NULL),('040','2014-10-20 09:09:05','007',NULL,NULL),('040','2014-11-23 10:23:45','001',NULL,NULL),('041','2014-10-13 12:29:03','002',NULL,NULL),('041','2014-10-26 09:45:15','006',NULL,NULL),('041','2014-11-26 13:05:54','001',NULL,NULL),('042','2014-09-25 15:33:40','004',NULL,NULL),('043','2014-10-19 12:25:26','004',NULL,NULL),('043','2014-11-14 16:23:55','001',NULL,NULL),('043','2014-11-15 11:15:56','009',NULL,NULL),('046','2014-10-09 17:59:21','006',NULL,NULL),('046','2014-11-27 12:55:51','004',NULL,NULL),('046','2014-12-14 16:47:48','008',NULL,NULL),('048','2014-09-30 10:31:47','009',NULL,NULL),('049','2014-12-13 11:51:52','001',NULL,NULL),('050','2014-10-25 11:49:13','009',NULL,NULL),('050','2014-12-12 16:48:43','003',NULL,NULL),('051','2014-10-03 16:26:18','009',NULL,NULL),('051','2014-10-23 09:24:33','009',NULL,NULL),('052','2014-11-22 15:42:04','001',NULL,NULL),('052','2014-12-18 11:05:19','008',NULL,NULL),('053','2014-10-29 10:36:21','008',NULL,NULL),('054','2014-10-26 15:08:49','009',NULL,NULL),('056','2014-10-28 10:29:59','001',NULL,NULL),('056','2014-11-27 16:53:20','006',NULL,NULL),('057','2014-10-10 16:02:45','004',NULL,NULL),('060','2014-11-01 10:37:15','001',NULL,NULL),('061','2014-09-04 11:27:07','007',NULL,NULL),('062','2014-10-09 13:17:01','004',NULL,NULL),('063','2014-10-04 11:52:56','008',NULL,NULL),('063','2014-11-27 13:48:38','005',NULL,NULL),('064','2014-11-13 11:42:10','002',NULL,NULL),('065','2014-12-25 12:21:48','001',NULL,NULL),('066','2014-10-26 14:54:07','006',NULL,NULL),('066','2014-11-27 10:44:52','005',NULL,NULL),('066','2014-12-18 17:08:00','005',NULL,NULL),('070','2014-10-09 11:58:49','009',NULL,NULL),('071','2014-09-22 13:45:01','008',NULL,NULL),('071','2014-10-18 17:47:24','003',NULL,NULL),('074','2014-10-22 16:01:35','003',NULL,NULL),('076','2014-09-06 12:32:56','005',NULL,NULL),('078','2014-09-02 16:26:13','007',NULL,NULL),('079','2014-10-29 13:06:04','008',NULL,NULL),('080','2014-11-04 16:30:00','006',NULL,NULL),('081','2014-09-19 12:21:06','006',NULL,NULL),('082','2014-10-17 17:53:53','007',NULL,NULL),('082','2014-11-24 17:10:05','005',NULL,NULL),('085','2014-09-01 09:16:38','006',NULL,NULL),('087','2014-10-05 15:24:27','007',NULL,NULL),('087','2014-11-30 12:13:34','008',NULL,NULL),('087','2014-12-15 17:23:13','006',NULL,NULL),('089','2014-11-18 09:03:24','008',NULL,NULL),('091','2014-09-20 14:03:24','005',NULL,NULL),('091','2014-10-25 09:07:26','003',NULL,NULL),('092','2014-10-18 16:20:16','003',NULL,NULL),('092','2014-11-02 12:24:30','004',NULL,NULL),('092','2014-11-04 13:30:00','005','Inquired on the extra tuition charged.',NULL),('094','2014-10-06 15:28:57','002',NULL,NULL),('095','2014-09-20 17:56:22','004',NULL,NULL),('095','2014-11-19 13:36:01','002',NULL,NULL),('095','2014-11-23 17:47:54','004',NULL,NULL),('098','2014-11-16 12:35:05','006',NULL,NULL),('099','2014-09-18 15:06:24','003',NULL,NULL),('101','2014-10-30 13:11:08','005',NULL,NULL),('101','2014-12-30 16:48:23','006',NULL,NULL),('104','2014-10-11 12:59:43','005',NULL,NULL),('104','2014-12-30 14:16:35','004',NULL,NULL),('105','2014-09-05 14:21:50','004',NULL,NULL),('105','2014-10-11 10:25:00','001',NULL,NULL),('110','2014-11-26 13:01:38','007',NULL,NULL),('111','2014-09-16 12:47:41','001',NULL,NULL),('112','2014-11-19 12:52:22','006',NULL,NULL),('114','2014-11-09 09:20:25','003',NULL,NULL),('115','2014-12-05 13:04:27','008',NULL,NULL),('116','2014-10-02 17:34:35','005',NULL,NULL),('116','2014-10-06 09:05:04','006',NULL,NULL),('117','2014-11-06 09:13:29','007',NULL,NULL),('118','2014-10-14 12:47:45','009',NULL,NULL),('118','2014-11-12 17:47:28','004',NULL,NULL),('121','2014-09-19 17:28:26','003',NULL,NULL),('121','2014-12-24 11:19:55','003',NULL,NULL),('122','2014-09-29 12:23:40','002',NULL,NULL),('122','2014-12-22 16:16:21','007',NULL,NULL),('124','2014-12-22 09:00:24','009',NULL,NULL),('125','2014-10-21 15:16:14','008',NULL,NULL);
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-09 23:56:26
