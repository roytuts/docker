CREATE DATABASE IF NOT EXISTS `roytuts`;
USE `roytuts`;

CREATE TABLE `items` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) NOT NULL,
  `item_desc` text,
  `item_price` float NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

insert  into `items`(`item_id`,`item_name`,`item_desc`,`item_price`) values
(1,'CD','CD is a compact disk',100),
(2,'DVD','DVD is larger than CD in size',150),
(3,'ABC','ABC test description',24),
(4,'XYZ','XYZ test description',25.32),
(5,'CD Player','CD player is used to play CD',30.02);
