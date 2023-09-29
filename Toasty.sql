/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - toasty
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`toasty` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `toasty`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `subcategoryId` int(11) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK3llosl5lr6ir8jh1dksexuur8` (`subcategoryId`),
  CONSTRAINT `FK3llosl5lr6ir8jh1dksexuur8` FOREIGN KEY (`subcategoryId`) REFERENCES `subcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL auto_increment,
  `categoryName` varchar(255) default NULL,
  `status` bit(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`categoryName`,`status`) values (1,'PIZZA TOAST',''),(2,'BASBOUSA TOAST',''),(3,'INDO-ITALIAN SHOLAY1dcd','\0'),(4,'INDO-ITALIAN SHOLAY','');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `loginId` int(11) NOT NULL auto_increment,
  `enabled` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`loginId`,`enabled`,`password`,`role`,`status`,`username`) values (1,'1','admin','ROLE_ADMIN','','admin@gmail.com'),(2,'1','user','ROLE_USER','','user@gmail.com');

/*Table structure for table `register_table` */

DROP TABLE IF EXISTS `register_table`;

CREATE TABLE `register_table` (
  `registerId` int(11) NOT NULL auto_increment,
  `address` varchar(255) default NULL,
  `firstName` varchar(255) default NULL,
  `lastName` varchar(255) default NULL,
  `mobileNumber` varchar(255) default NULL,
  `loginId` int(11) default NULL,
  PRIMARY KEY  (`registerId`),
  KEY `FKodfqoa5gpekam0qrmv81h6pil` (`loginId`),
  CONSTRAINT `FKodfqoa5gpekam0qrmv81h6pil` FOREIGN KEY (`loginId`) REFERENCES `login` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register_table` */

/*Table structure for table `subcategory` */

DROP TABLE IF EXISTS `subcategory`;

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL auto_increment,
  `fileName` varchar(255) default NULL,
  `filePath` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `subcategoryName` varchar(255) default NULL,
  `categoryId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK8xeps8gqj37o8nhicpbgl9lsm` (`categoryId`),
  CONSTRAINT `FK8xeps8gqj37o8nhicpbgl9lsm` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subcategory` */

insert  into `subcategory`(`id`,`fileName`,`filePath`,`price`,`status`,`subcategoryName`,`categoryId`) values (1,'menu.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product','78','\0','lsjxosjco',2),(2,'menu.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product','563','\0','jsjclsmcdvdxv',1),(3,'logo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product','23','\0','ksfnckszfckls',1),(4,'face11.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','49','','Margherita',1),(5,'logo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','CRAVIOTIC SPECIAL',1),(6,'Promo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','VEG. EXOTICA',1),(7,'Promo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','TANDOORI DELIGHT',1),(8,'logo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','15','','CHEEESE BURST',1),(9,'logo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','49','','VEGGIE TOAST',2),(10,'Promo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','PESTO TOAST',2),(11,'logo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','SCHEZWAN TOAST',2),(12,'Promo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','10','','CHEEEESE',2),(13,'Promo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','CHEESE CHILLY',4),(14,'logo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','SCHEZWAN PANEER',4),(15,'Promo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','SCHEZWAN VEGGIE',4),(16,'logo.jpg','H:\\Toasty Treat\\Toasty\\src\\main\\webapp\\/document/product/','59','','PESTO VEGGIE',4);

/*Table structure for table `userdata` */

DROP TABLE IF EXISTS `userdata`;

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `emailId` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `number` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdata` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
