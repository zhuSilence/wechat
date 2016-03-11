/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.24 : Database - wechat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wechat` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wechat`;

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL COMMENT '��Ʒ��id����',
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_type` int(11) DEFAULT NULL,
  `goods_price` float DEFAULT NULL,
  `goods_desc` varchar(200) DEFAULT NULL,
  `goods_color` varchar(20) DEFAULT NULL,
  `goods_size` varchar(10) DEFAULT NULL,
  `goods_pictures` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `FK_Reference_5` (`goods_type`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`goods_type`) REFERENCES `series` (`goods_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

/*Table structure for table `goods_details` */

DROP TABLE IF EXISTS `goods_details`;

CREATE TABLE `goods_details` (
  `goods_details_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `big_url` varchar(200) DEFAULT NULL,
  `mil_url` varchar(200) DEFAULT NULL,
  `small_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`goods_details_id`),
  KEY `FK_Reference_2` (`goods_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_details` */

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_details_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL COMMENT '�������Ʒ��id����ȡ��Ʒ������',
  `buy_numbers` int(11) DEFAULT NULL COMMENT 'ͳһ��Ʒ�����������',
  `buy_price` float DEFAULT NULL COMMENT 'ͬһ��Ʒ���򻨷�',
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_details_id`),
  KEY `FK_Reference_3` (`goods_id`),
  KEY `FK_Reference_4` (`order_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`order_id`) REFERENCES `order_table` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_details` */

/*Table structure for table `order_table` */

DROP TABLE IF EXISTS `order_table`;

CREATE TABLE `order_table` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` char(15) DEFAULT NULL COMMENT '��ʱ���Զ����ɵĶ�����ˮ��',
  `address_id` int(11) DEFAULT NULL COMMENT '����������ջ���ַ��id',
  `order_statue` int(11) DEFAULT NULL COMMENT '0 ������\n            1 ���ջ�\n            2  ������\n            3 �����',
  `order_details` int(11) DEFAULT NULL COMMENT '���������б�',
  `order_money` float DEFAULT NULL COMMENT '�����ܷ���',
  `freight` float DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_table` */

/*Table structure for table `series` */

DROP TABLE IF EXISTS `series`;

CREATE TABLE `series` (
  `goods_type` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`goods_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `series` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `salt` char(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`salt`,`phone`,`email`) values (1,'silence','123456','13247163146','zhuxiang@coocaa.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
