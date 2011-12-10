-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.18-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `library!`
--

CREATE DATABASE IF NOT EXISTS `library!`;
USE `library!`;

--
-- Definition of table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `CustomerID` int(10) unsigned NOT NULL auto_increment,
  `ISBN` varchar(15) NOT NULL,
  `DateAvailable` varchar(25) NOT NULL,
  `DateReturn` varchar(25) NOT NULL,
  `BookNO` varchar(10) NOT NULL,
  PRIMARY KEY  USING BTREE (`CustomerID`,`ISBN`,`BookNO`),
  KEY `FK_Appointment_2` (`ISBN`),
  KEY `FK_appointment_3` (`ISBN`,`BookNO`),
  CONSTRAINT `FK_Appointment_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_appointment_2` FOREIGN KEY (`ISBN`) REFERENCES `books` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_appointment_3` FOREIGN KEY (`ISBN`, `BookNO`) REFERENCES `individualbook` (`ISBN`, `BookNO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;


--
-- Definition of table `booklentout`
--

DROP TABLE IF EXISTS `booklentout`;
CREATE TABLE `booklentout` (
  `CustomerID` int(10) unsigned NOT NULL auto_increment,
  `BookNO` varchar(15) NOT NULL,
  `DateLentOut` varchar(25) NOT NULL,
  `DateShouldReturned` datetime NOT NULL,
  PRIMARY KEY  USING BTREE (`CustomerID`,`BookNO`),
  KEY `FK_booklentout_2` (`BookNO`),
  CONSTRAINT `FK_booklentout_2` FOREIGN KEY (`BookNO`) REFERENCES `individualbook` (`BookNO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_LendingList_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booklentout`
--

/*!40000 ALTER TABLE `booklentout` DISABLE KEYS */;
INSERT INTO `booklentout` (`CustomerID`,`BookNO`,`DateLentOut`,`DateShouldReturned`) VALUES 
 (400002,'D105235','2009-4-10 21:15:58','2009-05-10 21:15:58'),
 (400002,'E001241','2009-4-10 21:16:13','2009-05-10 21:16:13'),
 (400002,'E001242','2009-4-10 21:16:17','2009-05-10 21:16:17'),
 (400002,'E014729','2009-4-10 21:16:25','2009-05-10 21:16:25'),
 (400003,'E001243','2009-3-10 21:17:05','2009-04-09 21:17:05'),
 (400003,'E098877','2009-3-10 21:17:14','2009-04-09 21:17:14'),
 (400003,'E102540','2009-3-10 21:17:22','2009-04-09 21:17:22'),
 (400003,'E102548','2009-3-10 21:17:32','2009-04-09 21:17:32'),
 (400003,'E102571','2009-3-10 21:17:36','2009-04-09 21:17:36'),
 (400004,'E098878','2009-2-10 21:18:12','2009-03-12 21:18:12'),
 (400004,'E100334','2009-2-10 21:18:20','2009-03-12 21:18:20'),
 (400004,'E102008','2009-2-10 21:18:35','2009-03-12 21:18:35'),
 (400004,'E102309','2009-2-10 21:18:55','2009-03-12 21:18:55'),
 (400004,'E102388','2009-2-10 21:18:27','2009-03-12 21:18:27'),
 (400005,'E100335','2009-2-10 21:19:32','2009-03-12 21:19:32'),
 (400005,'E102310','2009-2-10 21:19:39','2009-03-12 21:19:39'),
 (400005,'E102572','2009-2-28 21:20:10','2009-03-30 21:20:10'),
 (400005,'E102584','2009-2-28 21:20:04','2009-03-30 21:20:04'),
 (400011,'D105235','2009-4-9 14:22:23','2009-05-09 14:22:23'),
 (411111,'E014728','2009-4-10 21:14:59','2009-05-10 21:14:59'),
 (411111,'E022722','2009-4-10 21:15:07','2009-05-10 21:15:07'),
 (411111,'E098876','2009-4-10 21:15:15','2009-05-10 21:15:15'),
 (411111,'E100333','2009-4-10 21:15:25','2009-05-10 21:15:25');
/*!40000 ALTER TABLE `booklentout` ENABLE KEYS */;


--
-- Definition of table `bookreturned`
--

DROP TABLE IF EXISTS `bookreturned`;
CREATE TABLE `bookreturned` (
  `CustomerID` int(10) unsigned NOT NULL auto_increment,
  `BookNO` varchar(10) NOT NULL,
  `DateBorrowed` varchar(25) NOT NULL,
  `DateShouldReturn` varchar(25) NOT NULL,
  `RuleBroken` varchar(15) NOT NULL,
  PRIMARY KEY  USING BTREE (`CustomerID`,`BookNO`),
  KEY `FK_BookReturned_2` (`BookNO`),
  CONSTRAINT `FK_BookReturned_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_BookReturned_2` FOREIGN KEY (`BookNO`) REFERENCES `individualbook` (`BookNO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookreturned`
--

/*!40000 ALTER TABLE `bookreturned` DISABLE KEYS */;
INSERT INTO `bookreturned` (`CustomerID`,`BookNO`,`DateBorrowed`,`DateShouldReturn`,`RuleBroken`) VALUES 
 (400011,'D105234','2009-4-9 14:22:06','2009-5-9 14:22:06','Null'),
 (400013,'E001240','2009-4-9 14:31:55','2009-5-9 14:31:55','Null'),
 (400024,'E102387','2009-4-9 16:47:06','2009-5-9 16:47:06','Null'),
 (411111,'D105234','2009-4-10 21:14:40','2009-5-10 21:14:40','Null'),
 (411111,'E001240','2009-4-10 21:14:48','2009-5-10 21:14:48','Null');
/*!40000 ALTER TABLE `bookreturned` ENABLE KEYS */;


--
-- Definition of table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `ISBN` varchar(15) NOT NULL,
  `BookName` varchar(100) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `Press` varchar(45) NOT NULL,
  `MainTheme` varchar(45) default NULL,
  `DatePublished` varchar(5) default NULL,
  PRIMARY KEY  USING BTREE (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`ISBN`,`BookName`,`Author`,`Press`,`MainTheme`,`DatePublished`) VALUES 
 ('0060809760','The outsider','Richard Wright','Harper & Row',NULL,'1999'),
 ('0070095205','Inside the IBM PC AT','T.J.Byers','Micro Text Productions','IBM personal comput AT','1998'),
 ('0079121462','Complex variables and applications','James Ward Brown, Ruel V','McGraw-Hill','Functions of complex variables','1996'),
 ('0133651983','Greenhouse operation and management','Paul V Nelson','Prentice Hall','Greenhouse management','1991'),
 ('0135983355','Excursions in modern mathematics','Peter Tannenbaum, Robert ARrnold','Prentice Hall','mathematics','1998'),
 ('0137463146','A first course in probability','Sheldon Ross','Prentice Hall','Probabilities','1998'),
 ('0201357437','Problem solving with Java','Elliot Koffman, Ursula Wolz','Reading Mass Press','Java(Computer programming language)','1999'),
 ('0387562915','DataBase application engineering with DAIDA','M.Jarke','Springer Verlag','Database management','1993'),
 ('0387983171','Mathematical control theory','John Baillieul, J. C.Willems ','Springer','Control theory','1995'),
 ('0412725703','Resin transfer moulding','Kevin Potter','Chapman&Hall','Plastics','1993'),
 ('0471185671','Molecular modeling on the PC','Mattew F.Schlecht','Wiley--VCH','Molecular Structure','1998'),
 ('0471571504','Linear statistical models','James H.Stapleton','Wiley','Linear models','1995'),
 ('060031913X','The call of the Wild','Jack London','Beaver Books','English Fictions','1976'),
 ('0817639632','Methods of applied fourier analysis','Jayakumar Ramanathan','Birkh','Fourier analysis','1998'),
 ('0890067783','UNIX internetworking','Uday O.Pabrai','Artech House','UNIX','1996'),
 ('0961408871','Wavelets and filter banks','Gilbert Strang, Truong Nguyen','Wellesley-cambridge Press','Electric filters','1996'),
 ('1234567890','AAAAA','SSSSS','HHHHH','dsadsadsad','1000'),
 ('1566763088','Bioremediation','Sikdar, Irvine R.L.','Technomic Pub. Co.,','Bioremediation','1998'),
 ('1568843143','C++ programmer\'s guide to standard template library','Mark Nelson','Foster CA Programmers Press','Standard Template Library','1995'),
 ('4431702210','Novel trends in eletroorganic synthesis','S.Torii','Springer Verlag','Synthesis','1998'),
 ('7-111-19344','A first course in database systems','Jeffrey D.Ullman, Jennifer Widom','China Machine Press','Database Systems','2006'),
 ('7506214628','The dynamics of heat','Hans U.Fuchs','Sprnger','Thermo dynamics','1996'),
 ('7506247089','Solving problems in fluid mechanics','J.F.Douglas, R.D. Matthews','Longman Scientific & Technical','Fluid','1996'),
 ('7506247151','Quantum groups','Christian Kassel','Springer Verlag','mathematical physics','1995'),
 ('7506266164','Fundmentals of real analysis','Sterling K.Berberian','Springer','Mathematical analysis','1998'),
 ('888','888','888','888','','888'),
 ('905699512X','New development in heat exchanges','Naim Afgain','Gordon and Breach','Heat exchanges','1996');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;


--
-- Definition of table `costlist`
--

DROP TABLE IF EXISTS `costlist`;
CREATE TABLE `costlist` (
  `CustomerID` int(10) unsigned NOT NULL auto_increment,
  `Payment` varchar(45) default NULL,
  `Refund` float default NULL,
  `SettleTime` datetime NOT NULL default '0000-00-00 00:00:00',
  `Fees` float default NULL,
  `TypeOfPayment` varchar(45) default NULL,
  `NoteNO` varchar(45) default NULL,
  `CustomerPay` float default NULL,
  `Situation` varchar(45) NOT NULL default 'Undone',
  `BookNO` varchar(45) default NULL,
  `Supervisor` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`CustomerID`,`SettleTime`),
  KEY `FK_costlist_3` USING BTREE (`CustomerID`,`Fees`),
  KEY `FK_costlist_2` (`CustomerID`,`BookNO`),
  KEY `FK_costlist_24` (`BookNO`),
  CONSTRAINT `FK_costlist_2` FOREIGN KEY (`CustomerID`, `BookNO`) REFERENCES `rulesbreaking` (`CustomerID`, `BookNO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_costlist_24` FOREIGN KEY (`BookNO`) REFERENCES `individualbook` (`BookNO`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costlist`
--

/*!40000 ALTER TABLE `costlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `costlist` ENABLE KEYS */;


--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `CustomerID` int(10) unsigned NOT NULL auto_increment,
  `CustomerName` varchar(20) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `CustomerType` varchar(10) NOT NULL,
  `BarCodeNO` varchar(15) NOT NULL,
  `Situation` varchar(15) NOT NULL default '"Available"',
  `StartingDate` datetime NOT NULL,
  `EndingDate` datetime default NULL,
  `PassWord` varchar(20) NOT NULL,
  PRIMARY KEY  (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`CustomerID`,`CustomerName`,`Gender`,`CustomerType`,`BarCodeNO`,`Situation`,`StartingDate`,`EndingDate`,`PassWord`) VALUES 
 (100000,'Jack','Male','Teacher','D83N2M9XA1','Available','1999-10-01 00:00:00',NULL,'33'),
 (100008,'Kesse','Male','Teacher','NAUXNEOR8X','Available','2000-01-01 00:00:00',NULL,'222'),
 (200000,'Mike','Male','Super','DERF321XAD','Available','2009-04-03 00:00:00',NULL,'3'),
 (200001,'aaa','Male','Super','ASDA','Available','2009-04-09 00:00:00','2012-04-08 00:00:00','200001'),
 (200023,'James','Male','Student','094DNDE09HD7','Available','2009-04-07 00:00:00','2012-04-06 00:00:00','200023'),
 (400002,'Eagle','Female','Student','SHUXAL92DA','Available','2004-03-04 00:00:00','2012-03-04 00:00:00','4'),
 (400003,'Foster','Male','Student','01NSALZO31','Available','2005-03-06 00:00:00','2013-03-06 00:00:00','5'),
 (400004,'Hiller','Male','Student','9NDIEOZA93','Available','2002-10-18 00:00:00','2010-10-18 00:00:00','6'),
 (400005,'Green','Female','Student','09DIENZLA9','Available','2006-08-13 00:00:00','2014-08-13 00:00:00','7'),
 (400008,'Clinton','Male','Student','DBANEM888','Available','2001-10-12 00:00:00','2009-10-12 00:00:00','7'),
 (400009,'Wandy','Male','Student','5XND92K38C','Available','2001-10-11 00:00:00','2009-10-11 00:00:00','55'),
 (400011,'SHA','Male','Student','AAA','Available','2009-04-03 00:00:00','2012-04-02 00:00:00','400010'),
 (400013,'A','Male','Student','D','Available','2009-04-07 00:00:00','2012-04-06 00:00:00','400013'),
 (400015,'Candy','Male','Student','DASXSA621SD','Available','2009-04-07 00:00:00','2012-04-06 00:00:00','400015'),
 (400024,'Noah','Male','Student','DSD983Xc32D','Available','2009-04-07 00:00:00','2012-04-06 00:00:00','400024'),
 (400097,'AA','Male','Student','AA','Locked','2009-04-09 00:00:00','2012-04-08 00:00:00','400097'),
 (400098,'SKSC','Male','Student','SH492MX30A','Available','2004-11-21 00:00:00','2012-11-21 00:00:00','99'),
 (400099,'DASD','Male','Student','SADSADSAD','Locked','2009-04-09 00:00:00','2012-04-08 00:00:00','400099'),
 (411111,'DeanY','Female','Student','AL293ND0X4','Available','2001-09-03 00:00:00','2009-09-03 00:00:00','3');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Definition of table `individualbook`
--

DROP TABLE IF EXISTS `individualbook`;
CREATE TABLE `individualbook` (
  `ISBN` varchar(20) NOT NULL,
  `BookNO` varchar(10) NOT NULL,
  `Situation` varchar(15) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Reservation` varchar(7) NOT NULL,
  PRIMARY KEY  USING BTREE (`BookNO`,`ISBN`),
  KEY `FK_individualbook_1` (`ISBN`),
  CONSTRAINT `FK_individualbook_1` FOREIGN KEY (`ISBN`) REFERENCES `books` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `individualbook`
--

/*!40000 ALTER TABLE `individualbook` DISABLE KEYS */;
INSERT INTO `individualbook` (`ISBN`,`BookNO`,`Situation`,`Location`,`Reservation`) VALUES 
 ('888','A','Available','StoreRoom4',''),
 ('888','D','Available','StoreRoom7',''),
 ('7-111-19344','D105234','Available','StoreRoom1',''),
 ('7-111-19344','D105235','Lent','StoreRoom1',''),
 ('0070095205','E001240','Available','Room324',''),
 ('0070095205','E001241','Lent','Room214, Building 4',''),
 ('0070095205','E001242','Lent','Room214, Building 4',''),
 ('0070095205','E001243','Lent','Room214, Building 4',''),
 ('060031913X','E014728','Lent','StoreRoom8',''),
 ('060031913X','E014729','Lent','Room214,Building4',''),
 ('060031913X','E022722','Available','StoreRoom4',''),
 ('0387562915','E098876','Lent','Room324',''),
 ('0387562915','E098877','Lent','Room214,Building4',''),
 ('0387562915','E098878','Lent','Room 114,Building 4',''),
 ('0890067783','E100333','Lent','Room324',''),
 ('0890067783','E100334','Lent','Room114,Building4',''),
 ('0890067783','E100335','Lent','Room 214, Building 4',''),
 ('0137463146','E102007','Available','Room114,Building4',''),
 ('0137463146','E102008','Lent','StoreRoom7',''),
 ('1568843143','E102309','Lent','Room324',''),
 ('1568843143','E102310','Lent','StoreRoom7',''),
 ('0060809760','E102387','Available','StoreRoom7',''),
 ('0060809760','E102388','Lent','Room214, Building 4',''),
 ('0060809760','E102389','Available','Room214, Building 4',''),
 ('0135983355','E102540','Lent','Room324',''),
 ('0135983355','E102541','Available','Room214,Building4',''),
 ('0471185671','E102544','Available','Room324',''),
 ('0471185671','E102545','Available','Room214,Building4',''),
 ('1566763088','E102548','Lent','Room324',''),
 ('0079121462','E102570','Available','Room324',''),
 ('0079121462','E102571','Lent','Room214, Building 4',''),
 ('0471571504','E102572','Lent','Room324',''),
 ('905699512X','E102584','Lent','Room324',''),
 ('905699512X','E102585','Available','StoreRoom4',''),
 ('0412725703','E102586','Available','Room324',''),
 ('0137463146','E102606','Available','Room324',''),
 ('7506214628','E102743','Available','Room324',''),
 ('0817639632','E103155','Available','Room324',''),
 ('0961408871','E103175','Available','Room324',''),
 ('0961408871','E103176','Available','Room114,Building4',''),
 ('0961408871','E103177','Available','StoreRoom7',''),
 ('0387983171','E103193','Available','Room324',''),
 ('0387983171','E103194','Available','Room214,Building4',''),
 ('7506266164','E103223','Available','Room324',''),
 ('7506247151','E103458','Available','Room324',''),
 ('7506247089','E103469','Available','Room324',''),
 ('4431702210','E103697','Available','Room324',''),
 ('4431702210','E103698','Available','Room114,Building4',''),
 ('0412725703','E103872','Available','StoreRoom4',''),
 ('0133651983','E104842','Available','Room324',''),
 ('0201357437','E106900','Available','Room324',''),
 ('0201357437','E106901','Available','StoreRoom8',''),
 ('0201357437','E106902','Available','StoreRoom8',''),
 ('1234567890','E111111','Available','StoreRoom1',''),
 ('7506214628','L030611','Available','InstituteOfScience',''),
 ('7506266164','L034295','Available','InstituteOfScience',''),
 ('7506214628','L036253','Available','InstituteOfScience',''),
 ('7506266164','L038699','Available','InstituteOfSciece ',''),
 ('7506266164','L038701','Available','Room114,Building4','');
/*!40000 ALTER TABLE `individualbook` ENABLE KEYS */;


--
-- Definition of table `rulesbreaking`
--

DROP TABLE IF EXISTS `rulesbreaking`;
CREATE TABLE `rulesbreaking` (
  `CustomerID` int(10) unsigned NOT NULL auto_increment,
  `BookNO` varchar(45) NOT NULL,
  `RuleBreakingType` varchar(45) NOT NULL,
  `Fine` float NOT NULL,
  `BrokenPages` int(10) unsigned NOT NULL default '0',
  `OverDue` varchar(45) default NULL,
  `DateShouldReturn` datetime NOT NULL,
  `Situation` varchar(45) NOT NULL default 'Undone',
  PRIMARY KEY  USING BTREE (`CustomerID`,`BookNO`,`Fine`),
  KEY `FK_rulesbreaking_2` (`BookNO`),
  CONSTRAINT `FK_RulesBreaking_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rulesbreaking_2` FOREIGN KEY (`BookNO`) REFERENCES `individualbook` (`BookNO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rulesbreaking`
--

/*!40000 ALTER TABLE `rulesbreaking` DISABLE KEYS */;
/*!40000 ALTER TABLE `rulesbreaking` ENABLE KEYS */;


--
-- Definition of table `wholebooks`
--

DROP TABLE IF EXISTS `wholebooks`;
CREATE TABLE `wholebooks` (
  `ISBN` varchar(15) NOT NULL,
  `IndexNO` varchar(20) NOT NULL,
  `Available` int(10) unsigned NOT NULL,
  `Total` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ISBN`),
  CONSTRAINT `FK_wholebooks_1` FOREIGN KEY (`ISBN`) REFERENCES `books` (`ISBN`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wholebooks`
--

/*!40000 ALTER TABLE `wholebooks` DISABLE KEYS */;
INSERT INTO `wholebooks` (`ISBN`,`IndexNO`,`Available`,`Total`) VALUES 
 ('0060809760','47.635/W952-1',2,3),
 ('0070095205','73.872/B993',1,4),
 ('0079121462','51.622/B878.6',1,2),
 ('0133651983','67.2/N428.4',1,1),
 ('0135983355','51/T166',1,2),
 ('0137463146','51,71/R797.5',2,3),
 ('0201357437','73.9621/K78',3,3),
 ('0387562915','73.967/D232',0,3),
 ('0387983171','51.93/M426',2,2),
 ('0412725703','82.315/P867',2,2),
 ('0471185671','73.992/S339',2,2),
 ('0471571504','51.72/S794',0,1),
 ('060031913X','47.653/L847',0,3),
 ('0817639632','51.623/R165',1,1),
 ('0890067783','73.97/P111',0,3),
 ('0961408871','51.64/S897',3,3),
 ('1234567890','1111111',1,1),
 ('1566763088','58.181/B618/V.1',0,1),
 ('1568843143','73.9621/N428',0,2),
 ('4431702210','54.517083/N937',2,2),
 ('7-111-19344','53.46/D123',1,2),
 ('7506214628','53.345/F951',3,3),
 ('7506247089','52.7/D734-1.3/V.2',1,1),
 ('7506247151','51.455/K19',1,1),
 ('7506266164','51.161/B484',4,4),
 ('888','888',2,2),
 ('905699512X','79.514/N532',1,2);
/*!40000 ALTER TABLE `wholebooks` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
