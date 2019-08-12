-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: awesome
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `awesome`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `awesome` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `awesome`;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES ('001557741507649e3c17aea4caf47b88c0522e0266fc947000','001557137898753d2db317ba0f04049802e560972ca8c6e000','zxj','http://www.gravatar.com/avatar/f9087f4a6f00722907a2cd3fe863463d?d=mm&s=120','原生Android重磅功能：支持长截图','原生Android重磅功能：支持长截图','目前第三方ROM广泛支持的长截图功能在原生系统中一直都没有得到支持，此前还传出消息称谷歌对此兴趣不大，不打算对此进行支持。\n\n但在正在进行中的谷歌I/O大会上，事情出现了反转，Android团队的David Burke表示，长截图是很棒的点子，我们工程团队没有理由不去尝试。\n\n另一位Android工程师则透露，他们会尝试提高开发优先级，但需要和其它待开发功能一起推进。\n\n简单来说，原生Android Q未来有望支持长截图功能，这对厂商来说是个好事儿，进一步降低了开发难度。',1557741507.64951),('0015577415794468dc6d09bd73446b2ab37da65876b9308000','001557137898753d2db317ba0f04049802e560972ca8c6e000','zxj','http://www.gravatar.com/avatar/f9087f4a6f00722907a2cd3fe863463d?d=mm&s=120','联通开启5G体验活动 六省市用户可报名','联通开启5G体验活动 六省市用户可报名','活动页面显示，可以参与本次体验计划的省市有北京、广东、上海、江苏、浙江和河北。官方提供的5G终端设备为华为Mate 20 X、中兴AXON 10 Pro、OPPO Reno、vivo NEX、小米MIX 3、努比亚mini 5G、华为5G CPE Pro和中兴5G室内CPE。\n\n其中，华为5G CPE Pro和中兴5G室内CPE起到的是移动路由器功能，可以将5G信号转化为WiFi，以供非5G设备体验5G网络的速度。',1557741579.44658),('0015577417438012834a9854c784d849ddee78baecb37e5000','001557137898753d2db317ba0f04049802e560972ca8c6e000','zxj','http://www.gravatar.com/avatar/f9087f4a6f00722907a2cd3fe863463d?d=mm&s=120','官宣：Android Q正式版预计第三季度上线','官宣：Android Q正式版预计第三季度上线','关于Android Q，此前已经有很多消息流出，但关于其正式上线的时间却没有确切消息。不过，今天谷歌官方微信公众号推送了一篇名为《欢迎加入Android Q测试版计划!》的文章，文中披露了Android Q的版本情况和正式版发布时间。\n\n据悉，Android Q从测试版到正式版总共要历经7个版本，每个版本的情况如下：\n\nBeta 1: 初始版本，测试版\n\nBeta 2: 增量更新，测试版\n\nBeta 3: 增量更新，测试版\n\nBeta 4: 最终API和官方SDK，在Play中发布，测试版\n\nBeta 5: 用于测试的候选版本\n\nBeta 6: 用于最终测试的候选版本\n\n最终版本: 面向AOSP和生态系统发布\n\n按照官方介绍，Android Q 测试版计划从2019年3月13日开始运行，直到向 AOSP 和原始设备制造商 (OEM) 发布最终版本时停止运行，最终版本预计将于2019年第三季度发布。\n\n当然，即使正式版发布，普通消费者们依然不会在第一时间用上该版本，至于何时能体验到Android Q的魅力，还需要等手机厂商的系统版本推送计划。',1557741743.80101),('001557741819500bd75b37240a549ed8f6bee675bcfa298000','001557137898753d2db317ba0f04049802e560972ca8c6e000','zxj','http://www.gravatar.com/avatar/f9087f4a6f00722907a2cd3fe863463d?d=mm&s=120','工信部下狠手 你想要的IPv6加速普及','工信部下狠手 你想要的IPv6加速普及','日前，工信部发布关于开展2019年IPv6网络就绪专项行动的通知，其中明确提出2019年末要实现三大目标：获得IPv6地址的LTE终端比例达到90%，获得IPv6地址的固定宽带终端比例达到40%；LTE网络IPv6活跃连接数达到8亿；完成全部13个互联网骨干直联点IPv6改造。\n\n在通知中，工信部明确提出，华为、苹果、三星、中兴、小米、OPPO、VIVO、魅族、联想、一加、金立、TCL、海信等品牌新申请进网的相关移动终端出厂默认配置支持IPv4/IPv6双栈；终端生产企业应加快系统软件升级，推动存量移动终端支持IPv6。\n\n此外，新部署的家庭网关设备应全部支持IPv6，并默认配置支持IPv4/IPv6双栈，能够为网关下挂设备分配IPv6地址；到2019年末，完成70%存量智能家庭网关的IPv6升级。TP-LINK、D-LINK、华为、腾达、华硕、网件、小米等企业新生产的家庭路由器应支持IPv6，并向存量家庭路由器设备推送支持IPv6的固件版本。\n\n同时，基础电信企业为支持IPv6的全部在网移动终端、固定终端分配IPv6地址；完善IPv6专线产品开通流程，为政企客户快速开通IPv6专线接入并支持分配IPv6地址。自2019年6月起，根据客户需求为新签或续签服务合同的政企客户分配IPv6地址。\n\n工信部表示，将持续优化IPv6网络传输性能，提升数据中心、内容分发网络、云服务平台的IPv6服务能力。到2019年9月末，IPv6网络基础设施、应用基础设施为用户提供与IPv4趋同质量的服务，平均丢包率、时延等指标与IPv4性能相比劣化不超过10%。',1557741819.50006);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('001557137898753d2db317ba0f04049802e560972ca8c6e000','zxj@qq.com','66f8dfb5a4cde86f9c1ae2f5cd1f9e05d67279ad',1,'zxj','http://www.gravatar.com/avatar/f9087f4a6f00722907a2cd3fe863463d?d=mm&s=120',1557137898.75309);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-09 15:44:57
