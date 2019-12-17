/*
SQLyog Enterprise Trial - MySQL GUI v7.11 
MySQL - 5.7.18-20170830-log : Database - dentist
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`dentist` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dentist`;

/*Table structure for table `appoint` */

DROP TABLE IF EXISTS `appoint`;

CREATE TABLE `appoint` (
  `orderNumber` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `appointTime` varchar(255) DEFAULT NULL,
  `appointDoctor` varchar(255) DEFAULT NULL,
  `isDeal` varchar(255) DEFAULT NULL,
  `isDelete` varchar(255) DEFAULT NULL,
  UNIQUE KEY `orderNumber` (`orderNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `appoint` */

insert  into `appoint`(`orderNumber`,`name`,`telephone`,`appointTime`,`appointDoctor`,`isDeal`,`isDelete`) values (1,'','','tuesup','梁少欣',NULL,NULL),(2,'aaa','15523456678','tuesdown','朱傲雪',NULL,NULL),(3,'何小伟','13553475519','tuesup','温凌媛',NULL,NULL),(4,'何小伟','13553475519','tuesup','温凌媛',NULL,NULL),(5,'aaa','aaaaaaaaa','tuesup','朱傲雪',NULL,NULL),(6,'admin','47851254786','tuesup','梁少欣',NULL,NULL),(7,'dd','199999999','monup','何豪麟',NULL,NULL),(8,'123','213','monup','梁少欣',NULL,NULL),(9,'123','23','monup','何豪麟',NULL,NULL),(10,'aaa','aaaaaaaaa','mondown','温凌媛','true',NULL),(11,'aaa','aaaaaaaaa','weddown','梁少欣',NULL,NULL),(12,'aaa','aaaaaaaaa','sunup','朱傲雪',NULL,NULL),(13,'fqp','110','monup','梁少欣','true',NULL);

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `isDelete` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `doctor` */

insert  into `doctor`(`id`,`name`,`sex`,`age`,`message`,`isDelete`) values (1,'123','male',12,'123','true'),(2,'朱傲雪','female',17,'国立牙科大学优秀本科毕业生，世界一流牙科医生，有超强的牙科能力',NULL),(3,'芦天腾','female',21,'世立牙科大学毕业，有三年的临床经验，技术娴熟，三秒无痛拔牙技术在学。',NULL);

/*Table structure for table `doctortime` */

DROP TABLE IF EXISTS `doctortime`;

CREATE TABLE `doctortime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor` varchar(255) DEFAULT NULL,
  `monup` int(11) DEFAULT NULL,
  `mondown` int(11) DEFAULT NULL,
  `tuesup` int(11) DEFAULT NULL,
  `tuesdown` int(11) DEFAULT NULL,
  `wedup` int(11) DEFAULT NULL,
  `weddown` int(11) DEFAULT NULL,
  `thurup` int(11) DEFAULT NULL,
  `thurdown` int(11) DEFAULT NULL,
  `friup` int(11) DEFAULT NULL,
  `fridown` int(11) DEFAULT NULL,
  `satup` int(11) DEFAULT NULL,
  `satdown` int(11) DEFAULT NULL,
  `sunup` int(11) DEFAULT NULL,
  `sundown` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `doctortime` */

insert  into `doctortime`(`id`,`doctor`,`monup`,`mondown`,`tuesup`,`tuesdown`,`wedup`,`weddown`,`thurup`,`thurdown`,`friup`,`fridown`,`satup`,`satdown`,`sunup`,`sundown`) values (1,'何豪麟',1,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'朱傲雪',0,0,0,0,0,0,0,0,0,0,0,0,1,0),(3,'梁少欣',1,0,0,0,0,1,0,0,0,0,0,0,0,0),(4,'温凌媛',0,1,0,0,0,0,0,0,0,0,0,0,0,0);

/*Table structure for table `signupuser` */

DROP TABLE IF EXISTS `signupuser`;

CREATE TABLE `signupuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isAdmin` varchar(255) DEFAULT NULL,
  `isDelete` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `signupuser` */

insert  into `signupuser`(`id`,`name`,`password`,`isAdmin`,`isDelete`) values (1,'shiika','123','true',NULL),(2,'mia','123456','true',NULL),(3,'','','false',NULL),(4,'aaa','aaa','false',NULL),(5,'amen','123456','false',NULL),(6,'123','456','false',NULL),(7,'asd','3434','false',NULL),(8,'qwe','123','false',NULL),(9,'Www','123456','false',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
