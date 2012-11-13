/*
SQLyog Community v10.3 
MySQL - 5.5.25a : Database - ubc_demo
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- CREATE DATABASE /*!32312 IF NOT EXISTS*/`ubc_demo` /*!40100 DEFAULT CHARACTER SET utf8 */;

-- USE `ubc_demo`;

/*Table structure for table `acos` */

DROP TABLE IF EXISTS `acos`;

CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `acos` */

insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (1,NULL,NULL,NULL,'controllers',1,46);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (2,1,NULL,NULL,'Groups',2,13);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (3,2,NULL,NULL,'index',3,4);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (4,2,NULL,NULL,'view',5,6);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (5,2,NULL,NULL,'add',7,8);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (6,2,NULL,NULL,'edit',9,10);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (7,2,NULL,NULL,'delete',11,12);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (8,1,NULL,NULL,'Pages',14,17);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (9,8,NULL,NULL,'display',15,16);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (10,1,NULL,NULL,'Universities',18,27);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (11,10,NULL,NULL,'view',19,20);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (12,10,NULL,NULL,'add',21,22);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (13,10,NULL,NULL,'export',23,24);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (14,10,NULL,NULL,'in_place_update',25,26);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (15,1,NULL,NULL,'Users',28,43);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (16,15,NULL,NULL,'login',29,30);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (17,15,NULL,NULL,'logout',31,32);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (18,15,NULL,NULL,'index',33,34);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (19,15,NULL,NULL,'view',35,36);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (20,15,NULL,NULL,'add',37,38);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (21,15,NULL,NULL,'edit',39,40);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (22,15,NULL,NULL,'delete',41,42);
insert  into `acos`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (23,1,NULL,NULL,'AclExtras',44,45);

/*Table structure for table `aros` */

DROP TABLE IF EXISTS `aros`;

CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `aros` */

insert  into `aros`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (1,NULL,'Group',3,NULL,1,4);
insert  into `aros`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (2,NULL,'Group',4,NULL,5,8);
insert  into `aros`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (3,1,'User',5,NULL,2,3);
insert  into `aros`(`id`,`parent_id`,`model`,`foreign_key`,`alias`,`lft`,`rght`) values (4,2,'User',6,NULL,6,7);

/*Table structure for table `aros_acos` */

DROP TABLE IF EXISTS `aros_acos`;

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `aros_acos` */

insert  into `aros_acos`(`id`,`aro_id`,`aco_id`,`_create`,`_read`,`_update`,`_delete`) values (4,1,1,'1','1','1','1');
insert  into `aros_acos`(`id`,`aro_id`,`aco_id`,`_create`,`_read`,`_update`,`_delete`) values (5,2,1,'-1','-1','-1','-1');
insert  into `aros_acos`(`id`,`aro_id`,`aco_id`,`_create`,`_read`,`_update`,`_delete`) values (6,2,11,'1','1','1','1');

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`created`,`modified`) values (3,'administrators','2012-11-13 03:00:28','2012-11-13 03:00:28');
insert  into `groups`(`id`,`name`,`created`,`modified`) values (4,'staff','2012-11-13 03:00:42','2012-11-13 03:00:42');

/*Table structure for table `universities` */

DROP TABLE IF EXISTS `universities`;

CREATE TABLE `universities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `abbr` varchar(10) NOT NULL,
  `region` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `universities` */

insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (1,'National Central University','NCU','Zhongli City','Taoyuan County');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (2,'National Cheng Kung University','NCKU','East District','Tainan');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (3,'National Chengchi University','NCCU','Wen Shan District','Taipei');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (4,'National Chi Nan University','NCNU','Puli Township','Nantou County');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (5,'National Chiao Tung University','NCTU','East District','Hsinchu');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (6,'National Chiayi University','NCYU','East District','Chiayi');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (7,'National Chung Cheng University','CCU','Minxiong Township','Chiayi County');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (8,'National Chung Hsing University','NCHU','South District','Taichung');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (9,'National Dong Hwa University','NDHU','Shoufeng Township','Hualien County');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (10,'National Ilan University','NIU','Yi Lan City','Yilan County');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (11,'National Quemoy University','NQU','Jinning Township','Kinmen');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (12,'National Sun Yat-Sen University','NSYSU','Gushan District','Kaohsiung');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (13,'National Taipei University','NTPU','Sanxia District','New Taipei');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (14,'National Taitung University','NTTU','Taitung City','Taitung County');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (15,'National Taiwan University','NTU','Daan District','Taipei');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (16,'National Taiwan Ocean University','NTOU','Zhongzheng District','Keelung');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (17,'National Tsing Hua University','NTHU','East District','Hsinchu');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (18,'National United University','NUU','Miao Li City','Miaoli County');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (19,'National University of Kaohsiung','NUK','Nanzi District','Kaohsiung');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (20,'National University of Tainan','NUTN','West Central District','Tainan');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (21,'National Yang Ming University','NYMU','Beitou District','Taipei');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (22,'National Kaohsiung Normal University','NKNU','Lingya District,','Kaohsiung');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (23,'National Taiwan Normal University','NTNU','Daan District','Taipei');
insert  into `universities`(`id`,`name`,`abbr`,`region`,`city`) values (24,'National Changhua University of Education','NCUE','Changhua City','Changhua County');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`group_id`,`created`,`modified`) values (5,'admin','236c4732b67250c9227c2ea0e2849a9b0c17e246',3,'2012-11-13 03:16:39','2012-11-13 03:16:39');
insert  into `users`(`id`,`username`,`password`,`group_id`,`created`,`modified`) values (6,'staff','236c4732b67250c9227c2ea0e2849a9b0c17e246',4,'2012-11-13 03:16:57','2012-11-13 03:16:57');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
