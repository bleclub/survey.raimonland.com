# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23)
# Database: acoc_report_db
# Generation Time: 2019-01-07 17:08:01 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bt_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bt_category`;

CREATE TABLE `bt_category` (
  `category_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name_th` varchar(150) DEFAULT NULL,
  `category_name_en` varchar(150) DEFAULT NULL,
  `category_code` varchar(50) DEFAULT NULL,
  `category_type` varchar(100) DEFAULT NULL,
  `category_status` enum('publish','unpublish') DEFAULT NULL,
  `category_datecreate` datetime DEFAULT NULL,
  `userID` int(20) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bt_category` WRITE;
/*!40000 ALTER TABLE `bt_category` DISABLE KEYS */;

INSERT INTO `bt_category` (`category_id`, `category_name_th`, `category_name_en`, `category_code`, `category_type`, `category_status`, `category_datecreate`, `userID`)
VALUES
	(1,'ธันวาคม 2561','December 2018',NULL,NULL,NULL,NULL,NULL),
	(2,'มกราคม 2562','January 2019',NULL,NULL,NULL,NULL,NULL),
	(3,'กุมภาพันธุ์ 2562','February 2019',NULL,NULL,NULL,NULL,NULL),
	(4,'มีนาคม 2562','March 2019',NULL,NULL,NULL,NULL,NULL),
	(5,'เมษายน 2562','April 2019',NULL,NULL,NULL,NULL,NULL),
	(6,'พฤษภาคม 2562','May 2019',NULL,NULL,NULL,NULL,NULL),
	(7,'มิถุนายน 2562','June 2019',NULL,NULL,NULL,NULL,NULL),
	(8,'กรกฎาคม 2562','July 2019',NULL,NULL,NULL,NULL,NULL),
	(9,'สิงหาคม 2562','August 2019',NULL,NULL,NULL,NULL,NULL),
	(10,'กันยายน 2562','Septmeber 2019',NULL,NULL,NULL,NULL,NULL),
	(11,'ตุลาคม 2562','October 2019',NULL,NULL,NULL,NULL,NULL),
	(12,'พฤศจิกายน 2562','November 2019',NULL,NULL,NULL,NULL,NULL),
	(13,'ธันวาคม 2562','December 2019',NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `bt_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bt_loginfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bt_loginfo`;

CREATE TABLE `bt_loginfo` (
  `log_id` int(20) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(100) NOT NULL,
  `log_typeID` int(20) DEFAULT NULL,
  `log_detail` varchar(200) NOT NULL,
  `log_date` datetime NOT NULL,
  `log_ip` varchar(150) NOT NULL,
  `log_user` varchar(100) NOT NULL,
  `log_user_id` int(11) NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `bt_loginfo` WRITE;
/*!40000 ALTER TABLE `bt_loginfo` DISABLE KEYS */;

INSERT INTO `bt_loginfo` (`log_id`, `log_type`, `log_typeID`, `log_detail`, `log_date`, `log_ip`, `log_user`, `log_user_id`)
VALUES
	(1,'page',7,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 02:29:52','::1','acoc_02',3),
	(2,'News',7,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-03 02:37:40','::1','acoc_02',3),
	(3,'page',8,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 02:55:44','::1','acoc_02',3),
	(4,'page',9,'เพิ่มรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-03 02:56:01','::1','acoc_02',3),
	(5,'News',6,'ลบรายงานประจำรอบ มกราคม 2562','2018-12-03 02:59:12','::1','acoc_02',3),
	(6,'News',9,'ลบรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-03 03:00:18','::1','acoc_02',3),
	(7,'News',8,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:00:28','::1','acoc_02',3),
	(8,'News',5,'ลบรายงานประจำรอบ มกราคม 2562','2018-12-03 03:00:35','::1','acoc_02',3),
	(9,'page',10,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:00:59','::1','acoc_02',3),
	(10,'page',11,'เพิ่มรายงานประจำรอบ มกราคม 2562','2018-12-03 03:01:15','::1','acoc_02',3),
	(11,'page',12,'เพิ่มรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-03 03:01:25','::1','acoc_02',3),
	(12,'page',13,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:02:37','::1','acoc_02',3),
	(13,'page',14,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:03:43','::1','acoc_02',3),
	(14,'News',13,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:04:02','::1','acoc_02',3),
	(15,'News',10,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:04:16','::1','acoc_02',3),
	(16,'page',1,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:05:28','::1','acoc_02',3),
	(17,'page',2,'เพิ่มรายงานประจำรอบ มกราคม 2562','2018-12-03 03:05:43','::1','acoc_02',3),
	(18,'page',3,'เพิ่มรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-03 03:06:00','::1','acoc_02',3),
	(19,'page',4,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:06:39','::1','acoc_02',3),
	(20,'page',5,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:06:54','::1','acoc_02',3),
	(21,'page',6,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:07:11','::1','acoc_02',3),
	(22,'News',6,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:08:12','::1','acoc_02',3),
	(23,'News',5,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:11:52','::1','acoc_02',3),
	(24,'News',1,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:12:27','::1','acoc_02',3),
	(25,'News',2,'ลบรายงานประจำรอบ มกราคม 2562','2018-12-03 03:12:35','::1','acoc_02',3),
	(26,'News',3,'ลบรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-03 03:12:42','::1','acoc_02',3),
	(27,'page',7,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:13:04','::1','acoc_02',3),
	(28,'page',8,'เพิ่มรายงานประจำรอบ มกราคม 2562','2018-12-03 03:13:33','::1','acoc_02',3),
	(29,'page',9,'เพิ่มรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-03 03:13:48','::1','acoc_02',3),
	(30,'page',10,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 03:14:09','::1','acoc_02',3),
	(31,'page',11,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 22:59:22','::1','acoc_01',2),
	(32,'page',12,'เพิ่มรายงานประจำรอบ มกราคม 2562','2018-12-03 22:59:31','::1','acoc_01',2),
	(33,'page',13,'เพิ่มรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-03 22:59:41','::1','acoc_01',2),
	(34,'page',14,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-03 22:59:58','::1','acoc_01',2),
	(35,'News',14,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:22:33','::1','vanlop',1),
	(36,'News',10,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:22:45','::1','vanlop',1),
	(37,'page',15,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:28:56','::1','acoc_01',2),
	(38,'News',15,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:29:32','::1','vanlop',1),
	(39,'News',13,'ลบรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-04 00:34:43','::1','vanlop',1),
	(40,'News',12,'ลบรายงานประจำรอบ มกราคม 2562','2018-12-04 00:34:56','::1','vanlop',1),
	(41,'News',11,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:35:03','::1','vanlop',1),
	(42,'News',9,'ลบรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-04 00:35:10','::1','vanlop',1),
	(43,'News',8,'ลบรายงานประจำรอบ มกราคม 2562','2018-12-04 00:35:15','::1','vanlop',1),
	(44,'News',7,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:35:20','::1','vanlop',1),
	(45,'page',16,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:37:29','::1','acoc_01',2),
	(46,'page',17,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:37:42','::1','acoc_01',2),
	(47,'page',18,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:37:50','::1','acoc_01',2),
	(48,'News',16,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:38:00','::1','vanlop',1),
	(49,'page',19,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:38:21','::1','acoc_01',2),
	(50,'page',20,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:38:27','::1','acoc_01',2),
	(51,'page',21,'เพิ่มรายงานประจำรอบ มกราคม 2562','2018-12-04 00:38:34','::1','acoc_01',2),
	(52,'page',22,'เพิ่มรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-04 00:38:41','::1','acoc_01',2),
	(53,'page',23,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:38:57','::1','acoc_01',2),
	(54,'page',24,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 00:57:31','::1','acoc_02',3),
	(55,'page',25,'เพิ่มรายงานประจำรอบ มกราคม 2562','2018-12-04 00:57:39','::1','acoc_02',3),
	(56,'page',26,'เพิ่มรายงานประจำรอบ กุมภาพันธุ์ 2562','2018-12-04 00:57:49','::1','acoc_02',3),
	(57,'page',27,'เพิ่มรายงานประจำรอบ มีนาคม 2562','2018-12-04 00:57:58','::1','acoc_02',3),
	(58,'page',28,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:08:37','1.2.165.147','acoc_36',37),
	(59,'News',28,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:09:11','1.2.165.147','acoc_36',37),
	(60,'page',29,'เพิ่มรายงานประจำรอบ มกราคม 2562','2018-12-04 13:09:35','1.2.165.147','acoc_36',37),
	(61,'page',30,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:19:36','1.2.165.147','acoc_36',37),
	(62,'page',31,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:19:36','1.2.165.147','acoc_36',37),
	(63,'News',31,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:20:40','1.2.165.147','acoc_36',37),
	(64,'page',32,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:21:29','1.2.165.147','acoc_36',37),
	(65,'page',33,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:22:35','1.2.165.147','acoc_36',37),
	(66,'page',34,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:23:37','1.2.165.147','acoc_36',37),
	(67,'News',32,'ลบรายงานประจำรอบ ธันวาคม 2561','2018-12-04 13:45:37','1.2.165.147','acoc_36',37),
	(68,'News',29,'ลบรายงานประจำรอบ มกราคม 2562','2018-12-04 13:45:46','1.2.165.147','acoc_36',37),
	(69,'page',35,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 14:08:50','1.2.165.147','acoc_36',37),
	(70,'page',36,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 14:08:57','1.2.165.147','acoc_36',37),
	(71,'page',37,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 14:14:47','1.2.165.147','acoc_36',37),
	(72,'page',38,'เพิ่มรายงานประจำรอบ ธันวาคม 2561','2018-12-04 15:22:03','203.149.31.2','acoc_36',37);

/*!40000 ALTER TABLE `bt_loginfo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bt_office
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bt_office`;

CREATE TABLE `bt_office` (
  `officeID` int(11) NOT NULL,
  `officeNameTH` varchar(200) DEFAULT NULL,
  `officeNameEN` varchar(200) DEFAULT NULL,
  `officeShortname` varchar(30) DEFAULT NULL,
  `officeShortnameEN` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`officeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `bt_office` WRITE;
/*!40000 ALTER TABLE `bt_office` DISABLE KEYS */;

INSERT INTO `bt_office` (`officeID`, `officeNameTH`, `officeNameEN`, `officeShortname`, `officeShortnameEN`)
VALUES
	(1,'สำนักนายกรัฐมนตรี','acoc_01','',''),
	(39,'ผู้ดูแลระบบ','acoc_39',NULL,NULL),
	(38,'สำนักงานทรัพยากรน้ำแห่งชาติ','acoc_38',NULL,NULL),
	(2,'กระทรวงกลาโหม','acoc_02','',''),
	(3,'กระทรวงการคลัง','acoc_03','',''),
	(4,'กระทรวงการต่างประเทศ','acoc_04','',''),
	(5,'กระทรวงการท่องเที่ยวและกีฬา','acoc_05','',''),
	(6,'กระทรวงการพัฒนาสังคมและความมั่นคงของมนุษย์','acoc_06','',''),
	(7,'กระทรวงเกษตรและสหกรณ์','acoc_07','',''),
	(8,'กระทรวงคมนาคม','acoc_08','',''),
	(9,'กระทรวงทรัพยากรธรรมชาติและสิ่งแวดล้อม','acoc_09','',''),
	(10,'กระทรวงดิจิทัลเพื่อเศรษฐกิจและสังคม','acoc_10','',''),
	(37,'สำนักงานคณะกรรมการส่งเสริมการลงทุน','acoc_37',NULL,NULL),
	(11,'กระทรวงพลังงาน','acoc_11','',''),
	(12,'กระทรวงพาณิชย์','acoc_12','',''),
	(36,'สํานักงานป้องกันและปราบปรามการทุจริตในภาครัฐ','acoc_36',NULL,NULL),
	(13,'กระทรวงมหาดไทย','acoc_13','',''),
	(35,'สำนักงานป้องกันและปราบปรามการฟอกเงิน','acoc_35',NULL,NULL),
	(14,'กนะทรวงยุติธรรม','acoc_14','',''),
	(33,'ราชบัณฑิตยสถาน','acoc_33',NULL,NULL),
	(34,'สํานักงานตํารวจแห่งชาติ','acoc_34',NULL,NULL),
	(15,'กระทรวงแรงงาน','acoc_15','',''),
	(32,'สำนักงานคณะกรรมการวิจัยแห่งชาติ','acoc_32',NULL,NULL),
	(16,'กระทรวงวัฒนธรรม','acoc_16','',''),
	(30,'สำนักพระพุทธศาสนาแห่งชาติ','acoc_30',NULL,NULL),
	(31,'สำนักงานคณะกรรมพิเศษเพื่อประสานงานโครงการอันเนื่องมาจากพระราชดำริ','acoc_31',NULL,NULL),
	(17,'กระทรวงวิทยาศาสตร์และเทคโนโลยี','acoc_17','',''),
	(29,'สํานักงานคณะกรรมการพัฒนาระบบราชการ','acoc_29',NULL,NULL),
	(18,'กระทรวงศึกษาธิการ','acoc_18','',''),
	(28,'สำนักงานคณะกรรมการพัฒนาการเศรษฐกิจและสังคมแห่งชาติ','acoc_28',NULL,NULL),
	(19,'กระทรวงสาธารณสุข','acoc_19','',''),
	(26,'สํานักงานคณะกรรมการกฤษฎีกา','acoc_26',NULL,NULL),
	(20,'กระทรวงอุตสาหกรรม','acoc_20','',''),
	(27,'สำนักงานคณะกรรมการข้าราชการพลเรือน','acoc_27',NULL,NULL),
	(21,'สำนักเลขาธิการนายกรัฐมนตรี','acoc_21','',''),
	(22,'สำนักเลขาธิการคณะรัฐมนตรี','acoc_22','',''),
	(23,'สำนักข่าวกรองแห่งชาติ','acoc_23','',''),
	(24,'สํานักงบประมาณ','acoc_24','',''),
	(25,'สำนักงานสภาความมั่นคงแห่งชาติ','acoc_25',NULL,NULL);

/*!40000 ALTER TABLE `bt_office` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bt_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bt_pages`;

CREATE TABLE `bt_pages` (
  `pages_id` int(20) NOT NULL AUTO_INCREMENT,
  `pages_categories` varchar(100) DEFAULT NULL,
  `pages_subject_th` varchar(200) DEFAULT NULL,
  `pages_subject_en` varchar(200) DEFAULT NULL,
  `pages_title_th` text,
  `pages_title_en` text,
  `pages_content_th` text,
  `pages_content_en` text,
  `pages_photo` varchar(200) DEFAULT NULL,
  `pages_photoslide` varchar(200) DEFAULT NULL,
  `pages_date` date DEFAULT NULL,
  `pages_createdate` datetime DEFAULT NULL,
  `pages_lastupdate` datetime DEFAULT NULL,
  `pages_view` int(20) DEFAULT NULL,
  `pages_slide` enum('publish','unpublish') DEFAULT 'unpublish',
  `pages_order` int(20) DEFAULT NULL,
  `pages_link` varchar(200) DEFAULT NULL,
  `pages_status` enum('enable','disable') NOT NULL DEFAULT 'disable',
  `officeID` int(20) NOT NULL,
  `userID` int(20) NOT NULL,
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `bt_pages` WRITE;
/*!40000 ALTER TABLE `bt_pages` DISABLE KEYS */;

INSERT INTO `bt_pages` (`pages_id`, `pages_categories`, `pages_subject_th`, `pages_subject_en`, `pages_title_th`, `pages_title_en`, `pages_content_th`, `pages_content_en`, `pages_photo`, `pages_photoslide`, `pages_date`, `pages_createdate`, `pages_lastupdate`, `pages_view`, `pages_slide`, `pages_order`, `pages_link`, `pages_status`, `officeID`, `userID`)
VALUES
	(26,'regular',NULL,'กุมภาพันธุ์ 2562',NULL,'กระทรวงกลาโหม',NULL,'acoc_02_regular_กุมภาพันธุ์_2562_201812040057497.zip',NULL,NULL,'2018-12-04','2018-12-04 00:57:49',NULL,NULL,'unpublish',0,NULL,'disable',2,3),
	(25,'regular',NULL,'มกราคม 2562',NULL,'กระทรวงกลาโหม',NULL,'acoc_02_regular_มกราคม_2562_201812040057395.zip',NULL,NULL,'2018-12-04','2018-12-04 00:57:39',NULL,NULL,'unpublish',0,NULL,'disable',2,3),
	(24,'regular',NULL,'ธันวาคม 2561',NULL,'กระทรวงกลาโหม',NULL,'acoc_02_regular_ธันวาคม_2561_201812040057316.zip',NULL,NULL,'2018-12-04','2018-12-04 00:57:31',NULL,NULL,'unpublish',0,NULL,'disable',2,3),
	(19,'regular',NULL,'ธันวาคม 2561',NULL,'สำนักนายกรัฐมนตรี',NULL,'acoc_01_regular_ธันวาคม_2561_201812040038217.zip',NULL,NULL,'2018-12-04','2018-12-04 00:38:21',NULL,NULL,'unpublish',0,NULL,'disable',1,2),
	(20,'additional',NULL,'ธันวาคม 2561',NULL,'สำนักนายกรัฐมนตรี',NULL,'acoc_01_additional_ธันวาคม_2561_201812040038272.zip',NULL,NULL,'2018-12-04','2018-12-04 00:38:27',NULL,NULL,'unpublish',0,NULL,'disable',1,2),
	(21,'regular',NULL,'มกราคม 2562',NULL,'สำนักนายกรัฐมนตรี',NULL,'acoc_01_regular_มกราคม_2562_201812040038340.zip',NULL,NULL,'2018-12-04','2018-12-04 00:38:34',NULL,NULL,'unpublish',0,NULL,'disable',1,2),
	(22,'regular',NULL,'กุมภาพันธุ์ 2562',NULL,'สำนักนายกรัฐมนตรี',NULL,'acoc_01_regular_กุมภาพันธุ์_2562_201812040038416.zip',NULL,NULL,'2018-12-04','2018-12-04 00:38:41',NULL,NULL,'unpublish',0,NULL,'disable',1,2),
	(23,'additional',NULL,'ธันวาคม 2561',NULL,'สำนักนายกรัฐมนตรี',NULL,'acoc_01_additional_ธันวาคม_2561_201812040038579.zip',NULL,NULL,'2018-12-04','2018-12-04 00:38:57',NULL,NULL,'unpublish',0,NULL,'disable',1,2),
	(27,'regular',NULL,'มีนาคม 2562',NULL,'กระทรวงกลาโหม',NULL,'acoc_02_regular_มีนาคม_2562_201812040057586.zip',NULL,NULL,'2018-12-04','2018-12-04 00:57:58',NULL,NULL,'unpublish',0,NULL,'disable',2,3),
	(35,'regular',NULL,'ธันวาคม 2561',NULL,'สํานักงานป้องกันและปราบปรามการทุจริตในภาครัฐ',NULL,'acoc_36_regular_ธันวาคม_2561_201812041408502.zip',NULL,NULL,'2018-12-04','2018-12-04 14:08:50',NULL,NULL,'unpublish',0,NULL,'disable',36,37),
	(36,'regular',NULL,'ธันวาคม 2561',NULL,'สํานักงานป้องกันและปราบปรามการทุจริตในภาครัฐ',NULL,'acoc_36_regular_ธันวาคม_2561_201812041408576.zip',NULL,NULL,'2018-12-04','2018-12-04 14:08:57',NULL,NULL,'unpublish',0,NULL,'disable',36,37),
	(37,'additional',NULL,'ธันวาคม 2561',NULL,'สํานักงานป้องกันและปราบปรามการทุจริตในภาครัฐ',NULL,'acoc_36_additional_ธันวาคม_2561_201812041414478.zip',NULL,NULL,'2018-12-04','2018-12-04 14:14:47',NULL,NULL,'unpublish',0,NULL,'disable',36,37),
	(38,'additional',NULL,'ธันวาคม 2561',NULL,'สํานักงานป้องกันและปราบปรามการทุจริตในภาครัฐ',NULL,'acoc_36_additional_ธันวาคม_2561_201812041522034.rar',NULL,NULL,'2018-12-04','2018-12-04 15:22:03',NULL,NULL,'unpublish',0,NULL,'disable',36,37);

/*!40000 ALTER TABLE `bt_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bt_title
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bt_title`;

CREATE TABLE `bt_title` (
  `title_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_nameTH` varchar(50) DEFAULT NULL,
  `title_nameEN` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `bt_title` WRITE;
/*!40000 ALTER TABLE `bt_title` DISABLE KEYS */;

INSERT INTO `bt_title` (`title_id`, `title_nameTH`, `title_nameEN`)
VALUES
	(1,'นาย','Mr.'),
	(2,'นางสาว','Ms.'),
	(3,'นาง','Mrs.'),
	(4,'พ.ต.อ.','Pol.Col.'),
	(5,'พ.ต.ท.','Pol.Lt.Col.'),
	(6,'พ.ต.ต.','Pol.Maj.'),
	(7,'ร.ต.อ.','Pol.Capt.'),
	(8,'ร.ต.ท.','Pol.Lt.'),
	(9,'ร.ต.ต.','Pol.Sub.Lt.'),
	(10,'พ.อ.','Col.'),
	(11,'พ.ท.','Lt.Col.'),
	(12,'พ.ต.','Maj.'),
	(13,'ร.อ.','Capt.'),
	(14,'ร.ท.','Lt.'),
	(15,'ร.ต.','Sub.Lt.'),
	(16,'พล.อ.','Gen.'),
	(17,'ดร.','Dr.'),
	(18,'รศ.ดร.','Assoc.Prof.Dr.'),
	(19,'พล.ต.อ.','Pol.Gen.');

/*!40000 ALTER TABLE `bt_title` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bt_translate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bt_translate`;

CREATE TABLE `bt_translate` (
  `translate_id` int(20) NOT NULL AUTO_INCREMENT,
  `translate_th` varchar(200) DEFAULT NULL,
  `translate_en` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`translate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



# Dump of table bt_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bt_user`;

CREATE TABLE `bt_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(20) NOT NULL,
  `title_id` int(11) DEFAULT NULL,
  `firstnameTH` varchar(200) DEFAULT NULL,
  `lastnameTH` varchar(200) DEFAULT NULL,
  `firstnameEN` varchar(200) DEFAULT NULL,
  `lastnameEN` varchar(200) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  `officeID` int(11) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `paccEmail` varchar(200) DEFAULT NULL,
  `personalEmail` varchar(200) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `profilePicture` varchar(150) DEFAULT NULL,
  `userType` enum('user','admin','superadmin','editor') DEFAULT 'user',
  `status` enum('enable','disable') DEFAULT 'enable',
  `userOrder` int(20) NOT NULL,
  `managementOrder` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `bt_user` WRITE;
/*!40000 ALTER TABLE `bt_user` DISABLE KEYS */;

INSERT INTO `bt_user` (`id`, `userID`, `title_id`, `firstnameTH`, `lastnameTH`, `firstnameEN`, `lastnameEN`, `username`, `password`, `groupID`, `officeID`, `position`, `paccEmail`, `personalEmail`, `telephone`, `mobile`, `createdate`, `profilePicture`, `userType`, `status`, `userOrder`, `managementOrder`)
VALUES
	(1,'1-1014-01128-94-4',1,'วัลลภ','นิลคูหา','Vanlop','Ninkhuha','vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d',NULL,39,'ทดสอบระบบ','vanlop@pacc.go.th','vanlop.n@gmail.com','022912365','(061) 624-5147','2016-01-09 12:17:20','201601091217206.jpg','superadmin','enable',3,0),
	(2,'',1,'สำนักนายกรัฐมนตรี',NULL,NULL,NULL,'acoc_01','6935f233e4af6903fede71367cdeb38c',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(3,'',1,'กระทรวงกลาโหม',NULL,NULL,NULL,'acoc_02','73a8c96958539475248be47e35d66f6a',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(4,'',1,'กระทรวงการคลัง',NULL,NULL,NULL,'acoc_03','01eaad35023d151c82884518e7e0c90d',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(5,'',1,'กระทรวงการต่างประเทศ',NULL,NULL,NULL,'acoc_04','3e3e28bc2616346e4d0d97ec30be1ebe',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(6,'',1,'กระทรวงการท่องเที่ยวและกีฬา',NULL,NULL,NULL,'acoc_05','c694e693d1580e42561219d572131515',NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(7,'',1,'กระทรวงการพัฒนาสังคมและความมั่นคงของมนุษย์',NULL,NULL,NULL,'acoc_06','c2241752238f1e87e0d87d0bbebb588a',NULL,6,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(8,'',1,'กระทรวงเกษตรและสหกรณ์',NULL,NULL,NULL,'acoc_07','579f5d6d7d7f5288bbfa594403bcc634',NULL,7,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(9,'',1,'กระทรวงคมนาคม',NULL,NULL,NULL,'acoc_08','4cbddab325f533b9e7125d910e415e30',NULL,8,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(10,'',1,'กระทรวงทรัพยากรธรรมชาติและสิ่งแวดล้อม',NULL,NULL,NULL,'acoc_09','5498ec381c29ee50d11aeb6f1e87687e',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(11,'',1,'กระทรวงดิจิทัลเพื่อเศรษฐกิจและสังคม',NULL,NULL,NULL,'acoc_10','620fc1475afa6a912a02eec0d58fa5d1',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(12,'',1,'กระทรวงพลังงาน',NULL,NULL,NULL,'acoc_11','da54027d40e927f2bd274a8c3346079d',NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(13,'',1,'กระทรวงพาณิชย์',NULL,NULL,NULL,'acoc_12','5cdc2dba27a7c6288841f5144ffaf15c',NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(14,'',1,'กระทรวงมหาดไทย',NULL,NULL,NULL,'acoc_13','23d6cf7bec8b11760792e8373b5e7d1e',NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(15,'',1,'กนะทรวงยุติธรรม',NULL,NULL,NULL,'acoc_14','9b25bf62503cdbc23233bdb8ef7773e6',NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(16,'',1,'กระทรวงแรงงาน',NULL,NULL,NULL,'acoc_15','1b90fddc1302919c4bfea7a7d762346d',NULL,15,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(17,'',1,'กระทรวงวัฒนธรรม',NULL,NULL,NULL,'acoc_16','ad6cc394288f798416f480d628ea0c14',NULL,16,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(18,'',1,'กระทรวงวิทยาศาสตร์และเทคโนโลยี',NULL,NULL,NULL,'acoc_17','d21e3d57a77002de416ead00cfca2188',NULL,17,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(19,'',1,'กระทรวงศึกษาธิการ',NULL,NULL,NULL,'acoc_18','b7dafced4fe5a273db9f5841fe6be159',NULL,18,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(20,'',1,'กระทรวงสาธารณสุข',NULL,NULL,NULL,'acoc_19','0af321d7bb89492f5fb40021ef25959c',NULL,19,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(21,'',1,'กระทรวงอุตสาหกรรม',NULL,NULL,NULL,'acoc_20','8206e80ca5a0edccdd117e84fcb097c8',NULL,20,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(22,'',1,'สำนักเลขาธิการนายกรัฐมนตรี',NULL,NULL,NULL,'acoc_21','14591ced478914ea1b1078db07b50906',NULL,21,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(23,'',1,'สำนักเลขาธิการคณะรัฐมนตรี',NULL,NULL,NULL,'acoc_22','36e393ebb293c0302e72d50b08fd5423',NULL,22,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(24,'',1,'สำนักข่าวกรองแห่งชาติ',NULL,NULL,NULL,'acoc_23','11050fb1ad9e041034d949fbf180894e',NULL,23,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(25,'',1,'สํานักงบประมาณ',NULL,NULL,NULL,'acoc_24','b94e6d8163008b50e30820eb1ea11edd',NULL,24,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(26,'',1,'สำนักงานสภาความมั่นคงแห่งชาติ',NULL,NULL,NULL,'acoc_25','5a6fcc83acc02f6b031c5f0828d3c172',NULL,25,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(27,'',1,'สํานักงานคณะกรรมการกฤษฎีกา',NULL,NULL,NULL,'acoc_26','ef49ad20a7252a3c94eb1b7ca84fdd05',NULL,26,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(28,'',1,'สำนักงานคณะกรรมการข้าราชการพลเรือน',NULL,NULL,NULL,'acoc_27','aada6b2550bc7ae1eecd25a122b965b9',NULL,27,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(29,'',1,'สำนักงานคณะกรรมการพัฒนาการเศรษฐกิจและสังคมแห่งชาติ',NULL,NULL,NULL,'acoc_28','a379dd4f877ea673b502cd692a377f92',NULL,28,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(30,'',1,'สํานักงานคณะกรรมการพัฒนาระบบราชการ',NULL,NULL,NULL,'acoc_29','e43e4a6615f3bd8b584e9b979115c807',NULL,29,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(31,'',1,'สำนักพระพุทธศาสนาแห่งชาติ',NULL,NULL,NULL,'acoc_30','5f679aafc7fce6b8a40a04540943ca98',NULL,30,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(32,'',1,'สำนักงานคณะกรรมพิเศษเพื่อประสานงานโครงการอันเนื่องมาจากพระราชดำริ',NULL,NULL,NULL,'acoc_31','cbb717fa452d6927002b2786e075426a',NULL,31,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(33,'',1,'สำนักงานคณะกรรมการวิจัยแห่งชาติ',NULL,NULL,NULL,'acoc_32','4a3cb878ec50cce395c55fb17196a9cd',NULL,32,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(34,'',1,'ราชบัณฑิตยสถาน',NULL,NULL,NULL,'acoc_33','229d03cfe0a36c66f03eb332f688b33c',NULL,33,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(35,'',1,'สํานักงานตํารวจแห่งชาติ',NULL,NULL,NULL,'acoc_34','9d4f1d8076d516965a1eafd9391d11cb',NULL,34,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(36,'',1,'สำนักงานป้องกันและปราบปรามการฟอกเงิน',NULL,NULL,NULL,'acoc_35','3087392dd3a9f7e4778a8eaca2c440a8',NULL,35,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(37,'',1,'สํานักงานป้องกันและปราบปรามการทุจริตในภาครัฐ',NULL,NULL,NULL,'acoc_36','f2d04d8435d663b968d964d68264fdcb',NULL,36,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(38,'',1,'สำนักงานคณะกรรมการส่งเสริมการลงทุน',NULL,NULL,NULL,'acoc_37','89d228f68de620acfa2d69e574a99d20',NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(39,'',1,'สำนักงานทรัพยากรน้ำแห่งชาติ',NULL,NULL,NULL,'acoc_38','6d520db1f4f3c1eee6b6abbd762da309',NULL,38,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','admin','enable',0,0),
	(40,'',1,'ผู้ดูแลระบบ',NULL,NULL,NULL,'acoc_admin','dc88b376c16419f682eccbc32b0bae0b',NULL,39,NULL,NULL,NULL,NULL,NULL,NULL,'profile-cms.jpg','superadmin','enable',0,0);

/*!40000 ALTER TABLE `bt_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table bt_userlog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bt_userlog`;

CREATE TABLE `bt_userlog` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_user` varchar(100) DEFAULT NULL,
  `login_password` varchar(200) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(150) DEFAULT NULL,
  `login_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `bt_userlog` WRITE;
/*!40000 ALTER TABLE `bt_userlog` DISABLE KEYS */;

INSERT INTO `bt_userlog` (`login_id`, `login_user`, `login_password`, `login_date`, `login_ip`, `login_status`)
VALUES
	(1,'acoc_01','6935f233e4af6903fede71367cdeb38c','2018-12-03 22:59:12','::1','true'),
	(2,'acoc_01','Logout','2018-12-03 23:02:05','::1','true'),
	(3,'acoc_01','6935f233e4af6903fede71367cdeb38c','2018-12-03 23:46:34','::1','true'),
	(4,'acoc_01','Logout','2018-12-03 23:46:39','::1','true'),
	(5,'acoc_01','6935f233e4af6903fede71367cdeb38c','2018-12-03 23:56:23','::1','true'),
	(6,'acoc_01','Logout','2018-12-04 00:00:56','::1','true'),
	(7,'vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d','2018-12-04 00:01:04','::1','true'),
	(8,'vanlop','Logout','2018-12-04 00:08:34','::1','true'),
	(9,'acoc_01','6935f233e4af6903fede71367cdeb38c','2018-12-04 00:08:41','::1','true'),
	(10,'acoc_01','Logout','2018-12-04 00:08:49','::1','true'),
	(11,'vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d','2018-12-04 00:08:59','::1','true'),
	(12,'vanlop','Logout','2018-12-04 00:28:39','::1','true'),
	(13,'acoc_01','6935f233e4af6903fede71367cdeb38c','2018-12-04 00:28:45','::1','true'),
	(14,'acoc_01','Logout','2018-12-04 00:29:08','::1','true'),
	(15,'vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d','2018-12-04 00:29:16','::1','true'),
	(16,'vanlop','Logout','2018-12-04 00:35:33','::1','true'),
	(17,'vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d','2018-12-04 00:35:40','::1','true'),
	(18,'acoc_01','6935f233e4af6903fede71367cdeb38c','2018-12-04 00:37:18','::1','true'),
	(19,'acoc_01','Logout','2018-12-04 00:56:21','::1','true'),
	(20,'acoc_02','73a8c96958539475248be47e35d66f6a','2018-12-04 00:57:13','::1','true'),
	(21,'vanlop','Logout','2018-12-04 01:26:09','::1','true'),
	(22,'vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d','2018-12-04 01:28:07','::1','true'),
	(23,'vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d','2018-12-04 01:41:37','171.96.191.59','true'),
	(24,'vanlop','Logout','2018-12-04 01:41:53','171.96.191.59','true'),
	(25,'acoc_01','6935f233e4af6903fede71367cdeb38c','2018-12-04 01:43:45','171.96.191.59','true'),
	(26,'acoc_01','Logout','2018-12-04 01:47:50','171.96.191.59','true'),
	(27,'acoc_admin','dc88b376c16419f682eccbc32b0bae0b','2018-12-04 01:48:09','171.96.191.59','true'),
	(28,'acoc_01','6935f233e4af6903fede71367cdeb38c','2018-12-04 10:36:22','203.149.31.2','true'),
	(29,'acoc_01','Logout','2018-12-04 10:36:40','203.149.31.2','true'),
	(30,'acoc_33','229d03cfe0a36c66f03eb332f688b33c','2018-12-04 10:37:09','203.149.31.2','true'),
	(31,'acoc_33','Logout','2018-12-04 10:37:24','203.149.31.2','true'),
	(32,'acoc_36','f2d04d8435d663b968d964d68264fdcb','2018-12-04 11:47:04','203.149.31.2','true'),
	(33,'vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d','2018-12-04 12:28:12','182.232.44.0','true'),
	(34,'acoc_36','f2d04d8435d663b968d964d68264fdcb','2018-12-04 13:04:24','1.2.165.147','true'),
	(35,'acoc_36','Logout','2018-12-04 13:15:05','1.2.165.147','true'),
	(36,'acoc_36','f2d04d8435d663b968d964d68264fdcb','2018-12-04 13:18:52','1.2.165.147','true'),
	(37,'acoc_36','f2d04d8435d663b968d964d68264fdcb','2018-12-04 13:45:25','1.2.165.147','true'),
	(38,'acoc_36','Logout','2018-12-04 13:51:24','1.2.165.147','true'),
	(39,'acoc_36','f2d04d8435d663b968d964d68264fdcb','2018-12-04 13:53:05','1.2.165.147','true'),
	(40,'acoc_36','f2d04d8435d663b968d964d68264fdcb','2018-12-04 15:20:42','203.149.31.2','true'),
	(41,'','Logout','2018-12-04 15:50:25','1.2.165.35','true'),
	(42,'vanlop','e91cf5bdb91a62dcb5fb0604dc1aff8d','2019-01-07 00:03:30','::1','true'),
	(43,'vanlop','Logout','2019-01-07 00:03:38','::1','true');

/*!40000 ALTER TABLE `bt_userlog` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table btview_pages
# ------------------------------------------------------------

DROP VIEW IF EXISTS `btview_pages`;

CREATE TABLE `btview_pages` (
   `officeNameTH` VARCHAR(200) NULL DEFAULT NULL,
   `officeNameEN` VARCHAR(200) NULL DEFAULT NULL,
   `officeShortname` VARCHAR(30) NULL DEFAULT NULL,
   `pages_id` INT(20) NOT NULL DEFAULT '0',
   `pages_categories` VARCHAR(100) NULL DEFAULT NULL,
   `pages_subject_th` VARCHAR(200) NULL DEFAULT NULL,
   `pages_subject_en` VARCHAR(200) NULL DEFAULT NULL,
   `pages_title_th` TEXT NULL DEFAULT NULL,
   `pages_title_en` TEXT NULL DEFAULT NULL,
   `pages_content_th` TEXT NULL DEFAULT NULL,
   `pages_content_en` TEXT NULL DEFAULT NULL,
   `pages_photo` VARCHAR(200) NULL DEFAULT NULL,
   `pages_photoslide` VARCHAR(200) NULL DEFAULT NULL,
   `pages_date` DATE NULL DEFAULT NULL,
   `pages_createdate` DATETIME NULL DEFAULT NULL,
   `pages_lastupdate` DATETIME NULL DEFAULT NULL,
   `pages_view` INT(20) NULL DEFAULT NULL,
   `pages_slide` ENUM('publish','unpublish') NULL DEFAULT 'unpublish',
   `pages_status` ENUM('enable','disable') NOT NULL DEFAULT 'disable',
   `officeID` INT(20) NOT NULL,
   `userID` INT(20) NOT NULL,
   `pages_order` INT(20) NULL DEFAULT NULL,
   `pages_link` VARCHAR(200) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table btview_pages_report
# ------------------------------------------------------------

DROP VIEW IF EXISTS `btview_pages_report`;

CREATE TABLE `btview_pages_report` (
   `pages_id` INT(20) NOT NULL DEFAULT '0',
   `officeNameTH` VARCHAR(200) NULL DEFAULT NULL,
   `officeNameEN` VARCHAR(200) NULL DEFAULT NULL,
   `pages_categories` VARCHAR(100) NULL DEFAULT NULL,
   `pages_subject_en` VARCHAR(200) NULL DEFAULT NULL,
   `pages_title_en` TEXT NULL DEFAULT NULL,
   `pages_content_en` TEXT NULL DEFAULT NULL,
   `pages_date` DATE NULL DEFAULT NULL,
   `pages_createdate` DATETIME NULL DEFAULT NULL,
   `officeID` INT(20) NOT NULL,
   `userID` INT(20) NOT NULL,
   `pages_link` VARCHAR(200) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table btview_user
# ------------------------------------------------------------

DROP VIEW IF EXISTS `btview_user`;

CREATE TABLE `btview_user` (
   `id` INT(11) NOT NULL DEFAULT '0',
   `userID` VARCHAR(20) NOT NULL,
   `title_id` INT(11) NULL DEFAULT NULL,
   `firstnameTH` VARCHAR(200) NULL DEFAULT NULL,
   `lastnameTH` VARCHAR(200) NULL DEFAULT NULL,
   `firstnameEN` VARCHAR(200) NULL DEFAULT NULL,
   `lastnameEN` VARCHAR(200) NULL DEFAULT NULL,
   `username` VARCHAR(100) NULL DEFAULT NULL,
   `password` VARCHAR(100) NULL DEFAULT NULL,
   `officeID` INT(11) NULL DEFAULT NULL,
   `position` VARCHAR(250) NULL DEFAULT NULL,
   `paccEmail` VARCHAR(200) NULL DEFAULT NULL,
   `personalEmail` VARCHAR(200) NULL DEFAULT NULL,
   `telephone` VARCHAR(20) NULL DEFAULT NULL,
   `mobile` VARCHAR(20) NULL DEFAULT NULL,
   `createdate` DATETIME NULL DEFAULT NULL,
   `profilePicture` VARCHAR(150) NULL DEFAULT NULL,
   `userType` ENUM('user','admin','superadmin','editor') NULL DEFAULT 'user',
   `status` ENUM('enable','disable') NULL DEFAULT 'enable',
   `officeNameTH` VARCHAR(200) NULL DEFAULT NULL,
   `officeNameEN` VARCHAR(200) NULL DEFAULT NULL,
   `officeShortname` VARCHAR(30) NULL DEFAULT NULL,
   `title_nameTH` VARCHAR(50) NULL DEFAULT NULL,
   `title_nameEN` VARCHAR(50) NULL DEFAULT NULL,
   `userOrder` INT(20) NOT NULL,
   `officeShortnameEN` VARCHAR(30) NULL DEFAULT NULL,
   `managementOrder` INT(20) NOT NULL
) ENGINE=MyISAM;





# Replace placeholder table for btview_user with correct view syntax
# ------------------------------------------------------------

DROP TABLE `btview_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `btview_user`
AS SELECT
   `bt_user`.`id` AS `id`,
   `bt_user`.`userID` AS `userID`,
   `bt_user`.`title_id` AS `title_id`,
   `bt_user`.`firstnameTH` AS `firstnameTH`,
   `bt_user`.`lastnameTH` AS `lastnameTH`,
   `bt_user`.`firstnameEN` AS `firstnameEN`,
   `bt_user`.`lastnameEN` AS `lastnameEN`,
   `bt_user`.`username` AS `username`,
   `bt_user`.`password` AS `password`,
   `bt_user`.`officeID` AS `officeID`,
   `bt_user`.`position` AS `position`,
   `bt_user`.`paccEmail` AS `paccEmail`,
   `bt_user`.`personalEmail` AS `personalEmail`,
   `bt_user`.`telephone` AS `telephone`,
   `bt_user`.`mobile` AS `mobile`,
   `bt_user`.`createdate` AS `createdate`,
   `bt_user`.`profilePicture` AS `profilePicture`,
   `bt_user`.`userType` AS `userType`,
   `bt_user`.`status` AS `status`,
   `bt_office`.`officeNameTH` AS `officeNameTH`,
   `bt_office`.`officeNameEN` AS `officeNameEN`,
   `bt_office`.`officeShortname` AS `officeShortname`,
   `bt_title`.`title_nameTH` AS `title_nameTH`,
   `bt_title`.`title_nameEN` AS `title_nameEN`,
   `bt_user`.`userOrder` AS `userOrder`,
   `bt_office`.`officeShortnameEN` AS `officeShortnameEN`,
   `bt_user`.`managementOrder` AS `managementOrder`
FROM ((`bt_user` join `bt_office` on((`bt_user`.`officeID` = `bt_office`.`officeID`))) join `bt_title` on((`bt_user`.`title_id` = `bt_title`.`title_id`)));


# Replace placeholder table for btview_pages with correct view syntax
# ------------------------------------------------------------

DROP TABLE `btview_pages`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `btview_pages`
AS SELECT
   `bt_office`.`officeNameTH` AS `officeNameTH`,
   `bt_office`.`officeNameEN` AS `officeNameEN`,
   `bt_office`.`officeShortname` AS `officeShortname`,
   `bt_pages`.`pages_id` AS `pages_id`,
   `bt_pages`.`pages_categories` AS `pages_categories`,
   `bt_pages`.`pages_subject_th` AS `pages_subject_th`,
   `bt_pages`.`pages_subject_en` AS `pages_subject_en`,
   `bt_pages`.`pages_title_th` AS `pages_title_th`,
   `bt_pages`.`pages_title_en` AS `pages_title_en`,
   `bt_pages`.`pages_content_th` AS `pages_content_th`,
   `bt_pages`.`pages_content_en` AS `pages_content_en`,
   `bt_pages`.`pages_photo` AS `pages_photo`,
   `bt_pages`.`pages_photoslide` AS `pages_photoslide`,
   `bt_pages`.`pages_date` AS `pages_date`,
   `bt_pages`.`pages_createdate` AS `pages_createdate`,
   `bt_pages`.`pages_lastupdate` AS `pages_lastupdate`,
   `bt_pages`.`pages_view` AS `pages_view`,
   `bt_pages`.`pages_slide` AS `pages_slide`,
   `bt_pages`.`pages_status` AS `pages_status`,
   `bt_pages`.`officeID` AS `officeID`,
   `bt_pages`.`userID` AS `userID`,
   `bt_pages`.`pages_order` AS `pages_order`,
   `bt_pages`.`pages_link` AS `pages_link`
FROM (`bt_pages` join `bt_office` on((`bt_pages`.`officeID` = `bt_office`.`officeID`)));


# Replace placeholder table for btview_pages_report with correct view syntax
# ------------------------------------------------------------

DROP TABLE `btview_pages_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `btview_pages_report`
AS SELECT
   `bt_pages`.`pages_id` AS `pages_id`,
   `bt_office`.`officeNameTH` AS `officeNameTH`,
   `bt_office`.`officeNameEN` AS `officeNameEN`,
   `bt_pages`.`pages_categories` AS `pages_categories`,
   `bt_pages`.`pages_subject_en` AS `pages_subject_en`,
   `bt_pages`.`pages_title_en` AS `pages_title_en`,
   `bt_pages`.`pages_content_en` AS `pages_content_en`,
   `bt_pages`.`pages_date` AS `pages_date`,
   `bt_pages`.`pages_createdate` AS `pages_createdate`,
   `bt_pages`.`officeID` AS `officeID`,
   `bt_pages`.`userID` AS `userID`,
   `bt_pages`.`pages_link` AS `pages_link`
FROM (`bt_pages` join `bt_office` on((`bt_pages`.`officeID` = `bt_office`.`officeID`)));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
