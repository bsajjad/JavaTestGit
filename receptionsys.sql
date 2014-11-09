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
  `personvisited_id` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
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

-- Dump completed on 2014-11-09 16:52:41
