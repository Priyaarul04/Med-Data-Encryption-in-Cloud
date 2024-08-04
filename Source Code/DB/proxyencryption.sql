/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - proxy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`proxy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `proxy`;

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `profile` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Deactivated',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `oreg` */

insert  into `oreg`(`sno`,`profile`,`id`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`location`,`status`) values (1,'admin.png',1,'Lakshmi','lakshmi','lakshmi@gmail.com','14/08/98','female','8285956652','Chennai','Activated'),(2,'blk.jpg',2,'Test','test','test@gmail.com','14/08/98','female','8285956652','Chennai','Activated');

/*Table structure for table `porequest` */

DROP TABLE IF EXISTS `porequest`;

CREATE TABLE `porequest` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `paname` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  `tkey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `Dstatus` varchar(200) DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `porequest` */

insert  into `porequest`(`id`,`user`,`email`,`mobile`,`paname`,`keyword`,`image`,`status`,`tkey`,`skey`,`Dstatus`) values (1,'Lakshmi','lakshmi@gmail.com','8285956652','JANI','Lungs','lungs.jpg','Accept','87F6F1D47D7B1B92','nreGa1O6','Waiting'),(1,'Lakshmi','lakshmi@gmail.com','8285956652','gfhg','Heart','heart.jpg','Accept','9F95DD1783EF57B9','VYaY','Waiting'),(2,'Test','test@gmail.com','8285956652','Caby','Kidney','kidneystone.jpg','Accept','7245DA54165DDFB9','QqMct`28','Waiting');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `id` int(22) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `paname` varchar(200) DEFAULT NULL,
  `page` varchar(200) DEFAULT NULL,
  `sym` varchar(200) DEFAULT NULL,
  `dises` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `tkey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`id`,`user`,`email`,`mobile`,`paname`,`page`,`sym`,`dises`,`keyword`,`tkey`,`skey`,`image`) values (1,'Lakshmi','lakshmi@gmail.com','8285956652','JANI','21','fever','covid','Lungs','87F6F1D47D7B1B92','nreGa1O6','lungs.jpg'),(1,'Lakshmi','lakshmi@gmail.com','8285956652','gfhg','21','fever','Heart Attack','Heart','9F95DD1783EF57B9','VYaY','heart.jpg'),(2,'Test','test@gmail.com','8285956652','Caby','34','Stomach Pain','Kidney Stone','Kidney','7245DA54165DDFB9','QqMct`28','kidneystone.jpg');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `profile` varchar(200) DEFAULT NULL,
  `id` int(100) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'DeActivated',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`sno`,`profile`,`id`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`location`,`status`) values (1,'13-132360_size-admin-user-icon-png.png',11,'Deepa','deepa','1cp.javateam2020@gmail.com','14/08/98','female','8285956652','Chennai','Activated'),(2,'bluebg.jpg',3,'Testing','testing','testing@gmail.com','14/08/98','female','8285956652','Chennai','Activated');

/*Table structure for table `ureq` */

DROP TABLE IF EXISTS `ureq`;

CREATE TABLE `ureq` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ureq` */

insert  into `ureq`(`id`,`user`,`keyword`,`image`,`uid`,`uname`) values (12,'lakshmi','null',' sheart.jpg','null','null'),(12,'lakshmi','Heart','sheart.jpg','13','Jeni');

/*Table structure for table `urequest` */

DROP TABLE IF EXISTS `urequest`;

CREATE TABLE `urequest` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'Waiting',
  `tkey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `Dstatus` varchar(200) DEFAULT 'Waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `urequest` */

insert  into `urequest`(`id`,`user`,`keyword`,`image`,`uid`,`uname`,`email`,`status`,`tkey`,`skey`,`Dstatus`) values (1,'Lakshmi','Heart','heart.jpg','1','Deepa','1cp.javateam2020@gmail.com','Accept','5E65F25525DA9A84','.k;uHq','Waiting'),(1,'Lakshmi','Lungs','lungs.jpg','11','Deepa','1cp.javateam2020@gmail.com','Accept','87F6F1D47D7B1B92','nreGa1O6','Delivery'),(2,'Test','Kidney','kidneystone.jpg','3','Testing','testing@gmail.com','Accept','7245DA54165DDFB9','QqMct`28','Delivery');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
