/*
MySQL Backup
Database: awesome
Backup Time: 2019-08-12 12:08:40
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `awesome`.`blogs`;
DROP TABLE IF EXISTS `awesome`.`comments`;
DROP TABLE IF EXISTS `awesome`.`devices`;
DROP TABLE IF EXISTS `awesome`.`users`;
CREATE TABLE `blogs` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `blog_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `devices` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `mac` varchar(50) NOT NULL,
  `created_at` double NOT NULL,
  `updated_at` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_mac` (`mac`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
BEGIN;
LOCK TABLES `awesome`.`blogs` WRITE;
DELETE FROM `awesome`.`blogs`;
INSERT INTO `awesome`.`blogs` (`id`,`user_id`,`user_name`,`user_image`,`name`,`summary`,`content`,`created_at`) VALUES ('001565335589936c7d945e4f2114c20979fc1951f404ed0000', '00155514990174851247fb8a6ef47beaa01a8ae47def41a000', 'zxj', 'http://www.gravatar.com/avatar/c480456fa601e5a86467e929198f4723?d=mm&s=120', '原生Android重磅功能：支持长截图', '原生Android重磅功能：支持长截图', '目前第三方ROM广泛支持的长截图功能在原生系统中一直都没有得到支持，此前还传出消息称谷歌对此兴趣不大，不打算对此进行支持。\n\n但在正在进行中的谷歌I/O大会上，事情出现了反转，Android团队的David Burke表示，长截图是很棒的点子，我们工程团队没有理由不去尝试。\n\n另一位Android工程师则透露，他们会尝试提高开发优先级，但需要和其它待开发功能一起推进。\n\n简单来说，原生Android Q未来有望支持长截图功能，这对厂商来说是个好事儿，进一步降低了开发难度。', 1565335589.93602);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `awesome`.`comments` WRITE;
DELETE FROM `awesome`.`comments`;
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `awesome`.`devices` WRITE;
DELETE FROM `awesome`.`devices`;
INSERT INTO `awesome`.`devices` (`id`,`name`,`addr`,`mac`,`created_at`,`updated_at`) VALUES ('0015655406132837a4a30be7cab4a36b9f270cee9939e01000', 'DESKTOP-438IHEM', '10.60.32.91', 'ac:bc:32:c7:81:80', 1565540572.29522, 1565540818.87217);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `awesome`.`users` WRITE;
DELETE FROM `awesome`.`users`;
INSERT INTO `awesome`.`users` (`id`,`email`,`passwd`,`admin`,`name`,`image`,`created_at`) VALUES ('00155514990174851247fb8a6ef47beaa01a8ae47def41a000', '865295386@qq.com', '826a9f07ef6a22531b85f047e8a9efa74374b3e8', 1, 'zxj', 'http://www.gravatar.com/avatar/c480456fa601e5a86467e929198f4723?d=mm&s=120', 1555149901.74886);
UNLOCK TABLES;
COMMIT;
