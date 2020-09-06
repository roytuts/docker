CREATE DATABASE IF NOT EXISTS `roytuts`;
USE `roytuts`;

CREATE TABLE IF NOT EXISTS `flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flag_val` varchar(30) NOT NULL,
  PRIMARY KEY (`flag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `flag` (`flag_id`, `flag_val`) VALUES
	(1, 'true');
