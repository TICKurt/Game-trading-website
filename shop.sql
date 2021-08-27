-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chatmsg`
--

DROP TABLE IF EXISTS `chatmsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatmsg` (
  `senduserid` varchar(64) DEFAULT NULL COMMENT '发送者id',
  `reciveuserid` varchar(64) DEFAULT NULL COMMENT '接收者id',
  `content` text COMMENT '发送内容',
  `sendtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发送时间',
  `msgtype` varchar(64) DEFAULT NULL COMMENT '消息类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatmsg`
--

LOCK TABLES `chatmsg` WRITE;
/*!40000 ALTER TABLE `chatmsg` DISABLE KEYS */;
INSERT INTO `chatmsg` VALUES ('1577713712942250291','1582184795951594874','你好','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','有人吗','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','你好','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','商品怎么卖','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','便宜点','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','你好，想问你一些问题可以吗？','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','什么事','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','111','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','2222','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','1111','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','222','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','222','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','222','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','111','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','2222','2021-04-18 02:07:49','0'),('1577713712942250291','1587889073148226284','1111','2021-04-18 02:07:49','0'),('1587889073148226284','1577713712942250291','2222','2021-04-18 02:07:49','0'),('1587889073148226284','1577713712942250291','111','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','111','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','222','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','111','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','111','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','22121','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','你好','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','111','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','你好','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','11','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','亲们','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','你好','2021-04-18 02:07:49','0'),('1582184795951594874','1577713712942250291','123','2021-04-18 02:07:49','0'),('1577713712942250291','1582184795951594874','123','2021-04-18 02:07:49','0');
/*!40000 ALTER TABLE `chatmsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collect` (
  `id` varchar(64) NOT NULL COMMENT '收藏id',
  `commid` varchar(64) NOT NULL COMMENT '商品id',
  `commname` varchar(255) DEFAULT NULL COMMENT '商品名',
  `commdesc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `soldtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  `collstatus` int(10) DEFAULT '1' COMMENT '0失效 1正常 2删除',
  `cmuserid` varchar(64) NOT NULL COMMENT '商品用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '商品用户名',
  `server` varchar(255) DEFAULT NULL COMMENT '商品所在游戏服务器',
  `couserid` varchar(64) NOT NULL COMMENT '收藏用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
INSERT INTO `collect` VALUES ('1619163411700828593','1619160102539871910','【担保-邮寄交易】1,0000,0000金币','【担保-邮寄交易】1,0000,0000金币','2021-04-23 07:36:51',1,'1577713712942250291','kurt','地下城与勇士','1589627579283677652'),('1620801315269681063','1620801236074701723','测试商品售出','测试商品售出','2021-05-12 06:35:15',2,'1618210814608436376','test01','test','1589694955949934523');
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `cid` varchar(64) NOT NULL COMMENT '评论id',
  `commid` varchar(64) NOT NULL COMMENT '商品id',
  `cuserid` varchar(64) NOT NULL COMMENT '评论者id',
  `spuserid` varchar(64) DEFAULT NULL COMMENT '商品发布者id',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `commtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `commstatus` int(10) DEFAULT '1' COMMENT '0异常 1正常 2删除',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('1619161866859206284','1619161683015795099','1577713712942250291','1582184795951594874','不错的宠物！','2021-04-23 07:11:06',1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commimages`
--

DROP TABLE IF EXISTS `commimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commimages` (
  `id` varchar(64) NOT NULL COMMENT '图片id',
  `commid` varchar(64) DEFAULT NULL COMMENT '商品id',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
  `imagestatus` int(11) DEFAULT '1' COMMENT '1正常 2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commimages`
--

LOCK TABLES `commimages` WRITE;
/*!40000 ALTER TABLE `commimages` DISABLE KEYS */;
INSERT INTO `commimages` VALUES ('1619159364446475877','1619159364444714952','/pic/b5952940be274d109a590cc86bb2422f.png','2021-04-23 06:29:24',1),('1619159364446495648','1619159364444714952','/pic/1d3adcd9698d42f795026f9dc3ed0ad6.png','2021-04-23 06:29:24',1),('1619159364446892678','1619159364444714952','/pic/aa5ef8e161234bd98f14e8a7995d0c39.png','2021-04-23 06:29:24',1),('1619159836742822561','1619159836742712876','/pic/968cd27c358642578f3b5ce95c0a4cc4.jpg','2021-04-23 06:37:16',1),('1619160102543311253','1619160102539871910','/pic/6ff05e52f9a145689c194195f7effbf1.jpg','2021-04-23 06:41:42',1),('1619160347803357441','1619160347803292918','/pic/ee78dd58b1404400a012bfd37d025e13.png','2021-04-23 06:45:47',2),('1619160395834822288','1619160347803292918','/pic/ee78dd58b1404400a012bfd37d025e13.png','2021-04-23 06:46:35',1),('1619160507036994489','1619160507035110338','/pic/2a9ccebe0e0549abaf07fa329b0fc445.png','2021-04-23 06:48:27',1),('1619161073592535377','1619161073592734603','/pic/93b9d4d23490455081893a7876e637b2.jpg','2021-04-23 06:57:53',1),('1619161073592768775','1619161073592734603','/pic/349f7d3754b64e38b63612da85e21882.jpg','2021-04-23 06:57:53',1),('1619161073592773472','1619161073592734603','/pic/e8a22c8ae1f441ab8d072ffb01f2e1f1.jpg','2021-04-23 06:57:53',1),('1619161683015696567','1619161683015795099','/pic/faf835af7f654d7dbbbdc4da1030c395.jpg','2021-04-23 07:08:03',1),('1619162367102678250','1619162367102102881','/pic/2abe1f01a3d2460998d2f896fe53cc84.png','2021-04-23 07:19:27',1),('1619163617122756519','1619163617122963350','/pic/c02b1a7f79e0460e9e43696b9452c254.jpg','2021-04-23 07:40:17',1),('1620801236076610651','1620801236074701723','/pic/c650188ab7d44c9f926f07c5593db6e1.jpg','2021-05-12 06:33:56',1),('1620802268704734439','1620802268701747131','/pic/c915f8434d4744b39fd368eaea319342.jpg','2021-05-12 06:51:08',1),('1620802503427449306','1620802503427464808','/pic/208518f5796d4d6f90a5203104e38650.jpg','2021-05-12 06:55:03',1),('1620804193913759372','1620804193911570103','/pic/37770dd4966345e2944e4ee468efcc8d.jpg','2021-05-12 07:23:13',1),('1620885975321311316','1620885975319637633','/pic/5a296eed79694ca885c6bd8191df2cbb.jpg','2021-05-13 06:06:15',2),('1620886122319277845','1620885975319637633','/pic/33ed61326d994b17b9052897b892e7e0.jpg','2021-05-13 06:08:42',1);
/*!40000 ALTER TABLE `commimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commodity` (
  `commid` varchar(64) NOT NULL COMMENT '商品id',
  `commname` varchar(255) DEFAULT NULL COMMENT '商品名',
  `commdesc` varchar(512) DEFAULT NULL COMMENT '商品描述',
  `videourl` varchar(255) DEFAULT NULL COMMENT '视频',
  `orimoney` decimal(55,2) DEFAULT NULL COMMENT '原价',
  `thinkmoney` decimal(55,2) DEFAULT NULL COMMENT '售价',
  `server` varchar(255) DEFAULT NULL COMMENT '商品所在游戏服务器',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `updatetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `endtime` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `commstatus` int(10) DEFAULT '3' COMMENT '0违规 1正常 2删除  3待审核  4已售出',
  `common` varchar(255) DEFAULT NULL COMMENT '常用选项：可小刀，不议价等选项',
  `rednumber` int(10) DEFAULT '0' COMMENT '浏览量',
  `category` varchar(255) DEFAULT NULL COMMENT '商品类别',
  `image` varchar(255) DEFAULT NULL COMMENT '简介图',
  `userid` varchar(64) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`commid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity`
--

LOCK TABLES `commodity` WRITE;
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
INSERT INTO `commodity` VALUES ('1619159364444714952','【100级剑魂】万亿剑魂武器13全身红10','操作系统：PC - PC端\n\n所属游戏：地下城与勇士（DNF）> QQ官方客户端> 广西2 ∕ 4区> QQ成品帐号\n\n角色等级：100\n\n性别：男\n\n职业：剑魂\n\n处罚记录：不存在5天封号记录\n\n绑定防沉迷：是\n\n帐号认证：未认证身份证\n\n帐号绑定：密保手机\n\n商家在线：全天在线\n\n描述：多套ss已经齐了。3套天空完美附魔低价出售其他看图，春节套买了3套。 账号金库里还有光环和宠物，仓库ss多多的。基本完全没重复，没回消息说明再上班。三无账号','',NULL,1480.00,'地下城与勇士','2021-04-23 06:29:24','2021-05-12 06:20:23',NULL,1,'不议价',12,'游戏帐号','/pic/0da48d51d0de41499ca7b3b3b7fa43d1.png','1577713712942250291'),('1619159836742712876','【担保】1000个时间结晶','操作系统：PC - PC端\n\n所属游戏：地下城与勇士（DNF）> QQ官方客户端> 活动全服通用> 时间结晶【担保】\n\n交易方式：邮寄交易\n\n道具名称：时间结晶\n\n道具属性：祝老板金光闪闪，天天爆神话【全区可拍，拍下发货，安全快速】\n\n出售数量：1000\n\n备注：下单就发\n\n发货时效：2个小时内','',NULL,50.00,'地下城与勇士','2021-04-23 06:37:16','2021-04-23 06:39:04',NULL,1,'不议价',3,'道具类','/pic/9074044cf0a141da8ecd0c1b7194898f.jpg','1577713712942250291'),('1619160102539871910','【担保-邮寄交易】1,0000,0000金币','【担保-邮寄交易】1,0000,0000金币','',215.00,215.00,'地下城与勇士','2021-04-23 06:41:42','2021-04-23 07:54:23',NULL,1,'不议价',11,'游戏币','/pic/8c3e0ce7eec24418af66535c0a3a268f.jpg','1577713712942250291'),('1619160347803292918','100级全套装备','操作系统：PC - PC端\n\n所属游戏：地下城与勇士（DNF）> QQ官方客户端> 内蒙古1区> 装备\n\n装备名称：根据职业搭配强力装备\n\n装备属性：100级史诗首饰3件+魔法石+辅助装备+耳环+100级传说防具5件套装+称号\n\n商家在线：全天在线','',300.00,287.00,'地下城与勇士','2021-04-23 06:45:47','2021-05-08 01:32:35',NULL,1,'可小刀',2,'装备类','/pic/74d40f2aa0934418baaa8a2b54f9cd03.jpg','1577713712942250291'),('1619160507035110338',' 任意角色等级1-10 纯手工','所属游戏：地下城与勇士（DNF）> 代练> 全服通用> 等级代练\n\n商品描述：任意一个角色纯手工刷级，需要下单几个角色就拍几个下单后不要挤号\n\n帐号要求：下单留手机号二级密码\n\n其他描述：代练期间不能顶号\n\n完成时间：1天以内\n\n描述：本店全天都有客服，如没能及时回复请您稍等一下下，看到会第一时间回复您，您可以放心下单。记得收藏店铺和商品哦！','',5.00,5.00,'地下城与勇士','2021-04-23 06:48:27','2021-04-23 06:48:41',NULL,1,'不议价',1,'代练服务','/pic/ed8fcd705370497e8b95e6fb4f786092.png','1577713712942250291'),('1619161073592734603','裁决女神 Q版手办【现货】','商品名称：裁决女神 Q版手办【现货】\n店铺：合泰文化\n上架时间：2020-09-27\n商品毛重：100g\n商城：地下城与勇士周边\n分类：手办模型\n','',300.00,215.00,'地下城与勇士','2021-04-23 06:57:53','2021-05-08 01:32:44',NULL,1,'可小刀',3,'其他','/pic/7dbdb3134ef94783b3da7453de3325b0.jpg','1577713712942250291'),('1619161683015795099','霜刃豹','冬泉谷的霜刀石上面有一个暗夜npc，开始只会给你一个任务让你刷声望，然后声望逐渐提升会再解锁两个任务。只要你有时间和心情，任务可以无限刷。但要说明的是：首先是任务的掉率很低（60的任务物品掉率普遍偏低），其次难度是逐渐提升的，有一个任务你要去杀精英怪，而60版本可以单挑精英怪的一般只有盗贼或者猎人，所以这个坐骑在60版本的数量还是很少的。','',199.00,19.00,'魔兽世界','2021-04-23 07:08:03','2021-05-12 08:01:49',NULL,1,'不议价',27,'宠物类','/pic/afad3d213c564aaebb61741d3e662ea2.jpg','1582184795951594874'),('1619162367102102881','和平精英外挂','和平精英外挂_和平精英透视辅助购买_狼行脚本网','',9999.00,100.00,'和平精英','2021-04-23 07:19:27','2021-04-23 07:21:57',NULL,0,'不议价',1,'其他','/pic/63d04a46044e410ca3cfeaf15eb8e182.png','1589694955949934523'),('1619163617122963350','【100级剑圣】深渊骑士 天选之人','操作系统：PC - PC端\n\n所属游戏：地下城与勇士（DNF）> QQ官方客户端> 山东3区> QQ成品帐号\n\n角色等级：100\n\n性别：男\n\n职业：剑圣\n\n处罚记录：不存在5天封号记录\n\n绑定防沉迷：否\n\n帐号认证：未认证身份证\n\n帐号绑定：密保手机\n\n商家在线：全天在线\n\n描述：几年没玩了，高调绝版天一 霸气 天选之人 多c 多奶 复活币 永久仓库开到极致 心悦皇冠实力加持 契约还有500多天 自己花了差不多 2万左右 一个角色就值了 剩下属于白嫖','',2399.00,2299.00,'地下城与勇士','2021-04-23 07:40:17','2021-05-18 06:51:48',NULL,4,'可小刀',6,'游戏帐号','/pic/a4b90f5614604558857dcb84a5d70287.jpg','1577713712942250291'),('1620801236074701723','测试商品售出','测试商品售出','',99.00,99.00,'test','2021-05-12 06:33:56','2021-05-12 06:50:27',NULL,4,'不议价',6,'其他','/pic/449a0207c671472991fb7b8035e60a8a.jpg','1618210814608436376'),('1620802268701747131','商品售出测试','商品售出测试','',99.00,99.00,'test','2021-05-12 06:51:08','2021-05-13 06:24:00',NULL,4,'不议价',2,'其他','/pic/c215a0b845be42b4af649dece88b184b.jpg','1618210814608436376'),('1620802503427464808','商品售出测试','商品售出测试','',99.00,99.00,'test','2021-05-12 06:55:03','2021-05-13 06:24:06',NULL,4,'不议价',2,'其他','/pic/427ce087c2dd481082ee29d958b1b947.jpg','1618210814608436376'),('1620804193911570103','售出测试01','售出测试01','',99.00,99.00,'test','2021-05-12 07:23:13','2021-05-13 06:23:55',NULL,4,'不议价',3,'其他','/pic/35f83efc4fb44429aba183bf7567b6f7.png','1618210814608436376'),('1620885975319637633','商品发布测试','商品发布测试','',99.00,99.00,'地下城与勇士','2021-05-13 06:06:15','2021-05-18 06:50:02',NULL,1,'不议价',4,'其他','/pic/560cda4533aa4684b55803317aac2c76.jpg','1577713712942250291');
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) DEFAULT NULL COMMENT '用户id',
  `fuserid` varchar(64) DEFAULT NULL COMMENT '好友id',
  `addtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (1,'1577713712942250291','1582184795951594874','2020-04-18 10:04:45'),(2,'1582184795951594874','1577713712942250291','2020-04-18 10:04:47'),(7,'1577713712942250291','1587889073148226284','2021-02-25 03:51:51'),(8,'1587889073148226284','1577713712942250291','2021-02-25 03:51:51'),(9,'1589628308220845788','1582184795951594874','2021-03-08 05:09:53'),(10,'1582184795951594874','1589628308220845788','2021-03-08 05:09:53'),(11,'1589628308220845788','1577713712942250291','2021-04-09 04:37:10'),(12,'1577713712942250291','1589628308220845788','2021-04-09 04:37:10'),(13,'1618210814608436376','1577713712942250291','2021-04-12 07:22:14'),(14,'1577713712942250291','1618210814608436376','2021-04-12 07:22:14'),(15,'1589694955949934523','1618210814608436376','2021-05-12 06:34:58'),(16,'1618210814608436376','1589694955949934523','2021-05-12 06:34:58');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` varchar(64) NOT NULL COMMENT '登录id',
  `userid` varchar(64) DEFAULT NULL COMMENT '用户id',
  `roleid` int(10) DEFAULT '1' COMMENT '角色id 1普通用户 2管理员 3超级管理员',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `mobilephone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `userstatus` int(10) DEFAULT '1' COMMENT '1正常 0封号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('1582184795951399057','1582184795951594874',2,'小二','1bbd2d7cbb8baaaaaad24bdc8a4472d1','15239670412',1),('1587916027545989364','1587889073148226284',1,'鱼与飞鸟','1bbd2d7cbb8baaaaaad24bdc8a4472d1','123456783',1),('1587916417975156426','1577713712942250291',2,'kurt','1bbd2d7cbb8baaaaaad24bdc8a4472d1','15034064979',1),('1589627579283989738','1589627579283677652',1,'老三','1bbd2d7cbb8baaaaaad24bdc8a4472d1','123456784',1),('1589628285110931399','1589628308220845788',3,'admin','1bbd2d7cbb8baaaaaad24bdc8a4472d1','admin',1),('1589644044287650587','1589644044287166342',1,'Rose','1bbd2d7cbb8baaaaaad24bdc8a4472d1','123456785',1),('1589680953404999878','1589680953404254146',1,'王五','1bbd2d7cbb8baaaaaad24bdc8a4472d1','15239670413',1),('1589694955949272106','1589694955949934523',1,'大力','1bbd2d7cbb8baaaaaad24bdc8a4472d1','15239670414',0),('1618210814608576545','1618210814608436376',1,'test01','1bbd2d7cbb8baaaaaad24bdc8a4472d1','15034064978',1),('1618996477365226404','1618996477365685472',1,'test02','1bbd2d7cbb8baaaaaad24bdc8a4472d1','15034064970',0),('1619081146231187932','1619081146231295485',1,'test03','1bbd2d7cbb8baaaaaad24bdc8a4472d1','12345678910',1),('1620807592087796676','1620807592087637193',1,'test04','1bbd2d7cbb8baaaaaad24bdc8a4472d1','11111111112',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` varchar(64) NOT NULL COMMENT '新闻id',
  `newstitle` varchar(255) DEFAULT NULL COMMENT '新闻标题',
  `newsdesc` varchar(255) DEFAULT NULL COMMENT '新闻简介',
  `newscontent` longtext COMMENT '新闻内容',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `username` varchar(255) DEFAULT NULL COMMENT '新闻发布者',
  `image` varchar(255) DEFAULT NULL COMMENT '新闻简介图',
  `newsstatus` int(10) DEFAULT '1' COMMENT '1正常  2删除',
  `rednumber` int(10) DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES ('1587368182859188837','测试','大大大大','法发噶阿嘎','2020-04-20 07:36:22','小二','/pic/42f523dc83864c5ab1f67268dbe45cc1.jpg',2,1),('1618211535879814617','合理游戏，健康生活！','《关于在游戏出版物中登载〈健康游戏忠告〉的通知》','<p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;抵制不良游戏 ， 拒绝盗版游戏。</b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;注意自我保护 ， 谨防受骗上当。</b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;适度游戏益脑 ， 沉迷游戏伤身。</b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;合理安排时间 ， 享受健康生活。</b></p>','2021-04-12 07:12:15','admin','/pic/56697418071c4a78b9a7b9325a72fa93.jpg',2,10),('1618211977239346123','帮助中心','常见问题','<p class=\"blue_14\">问：为什么我的物品下架不了？<a name=\"4\" id=\"4\"></a></p><p>答：当物品已经被玩家下订单购买时，为保障交易的正常进行，卖家暂时不可以将物品下架。</p><p>&nbsp;</p><p class=\"blue_14\">问：为什么我上架的物品在平台上看不见了？<a name=\"5\" id=\"5\"></a></p><p>答：当上架的物品已经被购买，或对物品下订单的买家达到一定数量时，系统将自动将物品设置为不可见，此时其他买家在平台看不到此物品，卖家自己可以在 [我要卖--&gt; 已上架的物品] 中查看到对应物品</p><p>&nbsp;</p><p class=\"blue_14\">问：为什么我已经支付了，在平台看到订单还是处于未付款状态？<a name=\"9\" id=\"9\"></a></p><p>答：我是在收到银行反馈您成功支付的信息后才会对您的支付进行处理，由于银行内部处理需要一定的时间，以及网络的原因。 从您支付成功的时刻到银行反馈到交易平台的时刻可能有一定的延迟，请您耐心等待，或联系我们的客服人员进行处理。</p><p class=\"blue_14\">&nbsp;</p><p class=\"blue_14\">问：登录藏宝阁消费点卡吗？<a name=\"12\" id=\"12\"></a></p><p>答：登录藏宝阁网站不消费点卡。</p><p>&nbsp;</p><p class=\"blue_14\">问：未交易的物品收不收费用？<a name=\"13\" id=\"13\"></a></p><p>答：在成功交易和提现时收取费用。未成功交易的物品不收取任何费用。</p><p>&nbsp;</p><p class=\"blue_14\">问：藏宝阁可以点卡交易吗？<a name=\"14\" id=\"14\"></a></p><p>答：现不支持点卡交易。</p><p>&nbsp;</p><p class=\"blue_14\">问：公示期过了，上下架物品是否会重新计算公示期？<a name=\"16\" id=\"16\"></a></p><p>答：不会。只有在游戏内取出又重新寄售时才重新计算公示期。</p><p>&nbsp;</p><p class=\"blue_14\">问：为什么我有时不能同时下几笔梦幻币的订单？<a name=\"18\" id=\"18\"></a></p><p>答：若您在藏宝阁上有一定数量的无效订单（包括但不限于主动废除订单，订单自动过期等），则在较长的一段时间内您将不能同时预定多笔梦幻币订单。<br><br><br><span class=\"blue_14\">问：转服之后可以立刻在藏宝阁买东西吗？<a name=\"19\" id=\"19\"></a></span><br>答：可以立刻在目标服务器的藏宝阁购买物品。<br><br><span class=\"blue_14\">问：藏宝阁购买的账号和宝宝、武器能马上转区么，转服后可以交易么？<a name=\"20\" id=\"20\"></a></span><br>答：可以，藏宝阁买的是ID并不是帐号，藏宝阁交易完成后可以马上转区，但高价值物品会被加上转服时间锁，具体时间限制可查看：<a href=\"https://xyq.163.com/2011/zhuanyi/shijiansuo.html\" target=\"_blank\">特殊时间锁</a>。<br><br><span class=\"blue_14\">问：转服多长时间能在藏宝阁寄售角色、物品、金钱？<a name=\"21\" id=\"21\"></a></span><br>答：转服的角色在180天之内不能在藏宝阁出售角色，寄售金钱、物品、召唤兽等。而且，转回原流经服务器也依然会增加这180天交易限制。<br><br><span class=\"blue_14\">问：转门派和藏宝阁有关系么？<a name=\"22\" id=\"22\"></a></span><br>答：有关系，门派转换成功后，角色90天内禁止上藏宝阁进行角色交易。另外，角色在藏宝阁角色登记期间无法转换门派。<br><br><span class=\"blue_14\">问：体验状态下能在藏宝阁取东西吗？<a name=\"23\" id=\"23\"></a></span><br>答：可以的。<br><br><span class=\"blue_14\">问：我有一个朋友想从藏宝阁卖号给我，请问如何指定ID？<a name=\"24\" id=\"24\"></a></span><br>答：请卖家在藏宝阁上架的时候在指定ID栏填写。<br><br><span class=\"blue_14\">问：我用一个角色登录藏宝阁买了一个号，可是却忘记这个号的全面解锁密码，号取不出来，怎么才能快速解除？<a name=\"25\" id=\"25\"></a></span><br>答：想不起来密码的话只能通过强制解锁来解决。<br><br><span class=\"blue_14\">问：密保卡用户登录藏宝阁验证失败？<a name=\"26\" id=\"26\"></a></span><br>答：请确认输入坐标密码是否正确，请刷新页面或者耐心等待十分钟再尝试输入。<br><br><span class=\"blue_14\">问：我藏宝阁刚购买的角色，然后在游戏发言违规了，怎么禁言处罚这么严重？<a name=\"27\" id=\"27\"></a></span><br>答：人物禁言处罚按照次数来计算，并不是按照情节严重进行计算。在藏宝阁购买的角色，禁言次数不会清空。<br><br><span class=\"blue_14\">问：我在藏宝阁出售了东西，被官方收取了信息费，可以开发票么？<a name=\"28\" id=\"28\"></a></span><br>答：请登录网易支付客服专区提交申请。（<a href=\"https://epay.gm.163.com/user_help.html?paper_id=2138\" target=\"_blank\">点击进入</a>）</p>','2021-04-12 07:19:37','admin','/pic/b9efb68b859a4b3db03e136c0bf1ec01.png',1,8),('1619074518211284221','合理游戏，健康生活！','《关于在游戏出版物中登载〈健康游戏忠告〉的通知》','<p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;抵制不良游戏 ， 拒绝盗版游戏。</b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;注意自我保护 ， 谨防受骗上当。</b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;适度游戏益脑 ， 沉迷游戏伤身。</b></p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;合理安排时间 ， 享受健康生活。</b></p>','2021-04-22 06:55:18','admin','/pic/7333232ad8624ceeaaeffb8814f360f8.png',1,8);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notices` (
  `id` varchar(64) NOT NULL COMMENT '通知id',
  `userid` varchar(64) DEFAULT NULL COMMENT '用户id',
  `whys` varchar(255) DEFAULT NULL COMMENT '通知内容',
  `isread` int(10) DEFAULT '0' COMMENT '是否阅读 0未阅读 1已阅读',
  `tpname` varchar(255) DEFAULT NULL COMMENT '通知类型',
  `nttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '通知时间',
  `latest` int(10) DEFAULT '1' COMMENT '是否为新通知 1是 2不是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES ('1619159364457575239','1577713712942250291','您的商品 <a href=/product-detail/1619159364444714952 style=\"color:#08bf91\" target=\"_blank\" >【100级剑魂】万亿剑魂武器13全身红10</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 06:29:24',2),('1619159374827205068','1577713712942250291','您的商品 <a href=/product-detail/1619159364444714952 style=\"color:#08bf91\" target=\"_blank\" >【100级剑魂】万亿剑魂武器13全身红10</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 06:29:34',2),('1619159836748331696','1577713712942250291','您的商品 <a href=/product-detail/1619159836742712876 style=\"color:#08bf91\" target=\"_blank\" >【担保】1000个时间结晶</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 06:37:16',2),('1619159910880447278','1577713712942250291','您的商品 <a href=/product-detail/1619159836742712876 style=\"color:#08bf91\" target=\"_blank\" >【担保】1000个时间结晶</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 06:38:30',2),('1619160102548842619','1577713712942250291','您的商品 <a href=/product-detail/1619160102539871910 style=\"color:#08bf91\" target=\"_blank\" >【担保-邮寄交易】1,0000,0000金币</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 06:41:42',2),('1619160123574434681','1577713712942250291','您的商品 <a href=/product-detail/1619160102539871910 style=\"color:#08bf91\" target=\"_blank\" >【担保-邮寄交易】1,0000,0000金币</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 06:42:03',2),('1619160347810795655','1577713712942250291','您的商品 <a href=/product-detail/1619160347803292918 style=\"color:#08bf91\" target=\"_blank\" >100级全套装备</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 06:45:47',2),('1619160360995815116','1577713712942250291','您的商品 <a href=/product-detail/1619160347803292918 style=\"color:#08bf91\" target=\"_blank\" >100级全套装备</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 06:46:00',2),('1619160395838532545','1577713712942250291','您的商品 <a href=/product-detail/1619160347803292918 style=\"color:#08bf91\" target=\"_blank\" >100级全套装备</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 06:46:35',2),('1619160406397401868','1577713712942250291','您的商品 <a href=/product-detail/1619160347803292918 style=\"color:#08bf91\" target=\"_blank\" >100级全套装备</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 06:46:46',2),('1619160507040161913','1577713712942250291','您的商品 <a href=/product-detail/1619160507035110338 style=\"color:#08bf91\" target=\"_blank\" > 任意角色等级1-10 纯手工</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 06:48:27',2),('1619160518746155321','1577713712942250291','您的商品 <a href=/product-detail/1619160507035110338 style=\"color:#08bf91\" target=\"_blank\" > 任意角色等级1-10 纯手工</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 06:48:38',2),('1619161073598984073','1577713712942250291','您的商品 <a href=/product-detail/1619161073592734603 style=\"color:#08bf91\" target=\"_blank\" >裁决女神 Q版手办【现货】</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 06:57:53',2),('1619161083557984020','1577713712942250291','您的商品 <a href=/product-detail/1619161073592734603 style=\"color:#08bf91\" target=\"_blank\" >裁决女神 Q版手办【现货】</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 06:58:03',2),('1619161683021997402','1582184795951594874','您的商品 <a href=/product-detail/1619161683015795099 style=\"color:#08bf91\" target=\"_blank\" >霜刃豹</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 07:08:03',2),('1619161692427686978','1582184795951594874','您的商品 <a href=/product-detail/1619161683015795099 style=\"color:#08bf91\" target=\"_blank\" >霜刃豹</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 07:08:12',2),('1619161866864988097','1582184795951594874','您的商品 <a href=/product-detail/1619161683015795099 style=\"color:#08bf91\" target=\"_blank\" >霜刃豹</a> 被评论了，快去看看吧。',1,'评论','2021-04-23 07:11:06',2),('1619161922921339371','1577713712942250291','有小伙伴在 <a href=/product-detail/1619161683015795099 style=\"color:#08bf91\" target=\"_blank\" >霜刃豹</a> 下回复了您的评论，快去看看吧。',0,'评论回复','2021-04-23 07:12:02',2),('1619162367109381102','1589694955949934523','您的商品 <a href=/product-detail/1619162367102102881 style=\"color:#08bf91\" target=\"_blank\" >和平精英外挂</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 07:19:27',2),('1619162381669342159','1589694955949934523','您的商品 <a href=/product-detail/1619162367102102881 style=\"color:#08bf91\" target=\"_blank\" >和平精英外挂</a> 未通过审核，目前不支持公开发布。',1,'商品审核','2021-04-23 07:19:41',2),('1619162449193867002','1589694955949934523','因为您的不良行为，您在该网站的账号已被封号。',0,'系统通知','2021-04-23 07:20:49',2),('1619162463263134455','1589694955949934523','您在该网站的账号已被解封，希望您保持良好的行为。',0,'系统通知','2021-04-23 07:21:03',2),('1619163617126860183','1577713712942250291','您的商品 <a href=/product-detail/1619163617122963350 style=\"color:#08bf91\" target=\"_blank\" >【100级剑圣】深渊骑士 天选之人</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-04-23 07:40:17',2),('1619163652228595750','1577713712942250291','您的商品 <a href=/product-detail/1619163617122963350 style=\"color:#08bf91\" target=\"_blank\" >【100级剑圣】深渊骑士 天选之人</a> 已通过审核，快去看看吧。',0,'商品审核','2021-04-23 07:40:52',2),('1619163696169676959','1589627579283677652','您的商品 <a href=/product-detail/1619163617122963350 style=\"color:#08bf91\" target=\"_blank\" >【100级剑圣】深渊骑士 天选之人</a> 被购买了，快去看看吧。',1,'购买','2021-04-23 07:41:36',2),('1619163940240471051','1577713712942250291','您的商品 <a href=/product-detail/1619163617122963350 style=\"color:#08bf91\" target=\"_blank\" >【100级剑圣】深渊骑士 天选之人</a> 被购买了，快去看看吧。',0,'购买','2021-04-23 07:45:40',2),('1619164360227164713','1577713712942250291','您的商品 <a href=/product-detail/1619160102539871910 style=\"color:#08bf91\" target=\"_blank\" >【担保-邮寄交易】1,0000,0000金币</a> 被购买了，快去看看吧。',0,'购买','2021-04-23 07:52:40',2),('1620800962978128924','1589627579283677652','恭喜您已被设置为网站管理员，努力维护网站的良好氛围。',0,'系统通知','2021-05-12 06:29:22',1),('1620800992016374942','1589627579283677652','您已被设置为网站用户，希望您再接再厉。',0,'系统通知','2021-05-12 06:29:52',1),('1620801236083176808','1618210814608436376','您的商品 <a href=/product-detail/1620801236074701723 style=\"color:#08bf91\" target=\"_blank\" >测试商品售出</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-05-12 06:33:56',2),('1620801256141360612','1618210814608436376','您的商品 <a href=/product-detail/1620801236074701723 style=\"color:#08bf91\" target=\"_blank\" >测试商品售出</a> 已通过审核，快去看看吧。',0,'商品审核','2021-05-12 06:34:16',2),('1620801501359630315','1589694955949934523','您的商品 <a href=/product-detail/1620801236074701723 style=\"color:#08bf91\" target=\"_blank\" >测试商品售出</a> 被购买了，快去看看吧。',1,'购买','2021-05-12 06:38:21',2),('1620802268715539207','1618210814608436376','您的商品 <a href=/product-detail/1620802268701747131 style=\"color:#08bf91\" target=\"_blank\" >商品售出测试</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-05-12 06:51:08',2),('1620802288824851025','1618210814608436376','您的商品 <a href=/product-detail/1620802268701747131 style=\"color:#08bf91\" target=\"_blank\" >商品售出测试</a> 已通过审核，快去看看吧。',0,'商品审核','2021-05-12 06:51:28',2),('1620802338176581252','1589694955949934523','您的商品 <a href=/product-detail/1620802268701747131 style=\"color:#08bf91\" target=\"_blank\" >商品售出测试</a> 被购买了，快去看看吧。',0,'购买','2021-05-12 06:52:18',2),('1620802503433949800','1618210814608436376','您的商品 <a href=/product-detail/1620802503427464808 style=\"color:#08bf91\" target=\"_blank\" >商品售出测试</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-05-12 06:55:03',2),('1620802525401436541','1618210814608436376','您的商品 <a href=/product-detail/1620802503427464808 style=\"color:#08bf91\" target=\"_blank\" >商品售出测试</a> 已通过审核，快去看看吧。',0,'商品审核','2021-05-12 06:55:25',2),('1620802563769243448','1618210814608436376','您的商品 <a href=/product-detail/1620802503427464808 style=\"color:#08bf91\" target=\"_blank\" >商品售出测试</a> 被购买了，快去看看吧。',0,'购买','2021-05-12 06:56:03',2),('1620804041006768609','1618210814608436376','您的商品 <a href=/product-detail/1620802503427464808 style=\"color:#08bf91\" target=\"_blank\" >商品售出测试</a> 被购买了，快去看看吧。',0,'购买','2021-05-12 07:20:41',2),('1620804193919616823','1618210814608436376','您的商品 <a href=/product-detail/1620804193911570103 style=\"color:#08bf91\" target=\"_blank\" >售出测试01</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-05-12 07:23:13',2),('1620804234759420780','1618210814608436376','您的商品 <a href=/product-detail/1620804193911570103 style=\"color:#08bf91\" target=\"_blank\" >售出测试01</a> 已通过审核，快去看看吧。',0,'商品审核','2021-05-12 07:23:54',2),('1620804258983992068','1618210814608436376','您的商品 <a href=/product-detail/1620804193911570103 style=\"color:#08bf91\" target=\"_blank\" >售出测试01</a> 被购买了，快去看看吧。',0,'购买','2021-05-12 07:24:18',2),('1620885975335500037','1577713712942250291','您的商品 <a href=/product-detail/1620885975319637633 style=\"color:#08bf91\" target=\"_blank\" >商品发布测试</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-05-13 06:06:15',2),('1620886007039980514','1577713712942250291','您的商品 <a href=/product-detail/1620885975319637633 style=\"color:#08bf91\" target=\"_blank\" >商品发布测试</a> 已通过审核，快去看看吧。',0,'商品审核','2021-05-13 06:06:47',2),('1620886122328979250','1577713712942250291','您的商品 <a href=/product-detail/1620885975319637633 style=\"color:#08bf91\" target=\"_blank\" >商品发布测试</a> 进入待审核队列，请您耐心等待。',0,'商品审核','2021-05-13 06:08:42',2),('1620886338828397388','1577713712942250291','您的商品 <a href=/product-detail/1620885975319637633 style=\"color:#08bf91\" target=\"_blank\" >商品发布测试</a> 已通过审核，快去看看吧。',0,'商品审核','2021-05-13 06:12:18',2),('1620888177047404655','1589694955949934523','因为您的不良行为，您在该网站的账号已被封号。',0,'系统通知','2021-05-13 06:42:57',1),('1620888182151191637','1589680953404254146','您在该网站的账号已被解封，希望您保持良好的行为。',0,'系统通知','2021-05-13 06:43:02',1);
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `rid` varchar(64) NOT NULL COMMENT '回复id',
  `cid` varchar(64) NOT NULL COMMENT '评论id',
  `commid` varchar(64) NOT NULL COMMENT '商品id',
  `cuserid` varchar(64) NOT NULL COMMENT '被回复用户id',
  `spuserid` varchar(64) DEFAULT NULL COMMENT '商品发布者id',
  `recontent` varchar(255) DEFAULT NULL COMMENT '回复内容',
  `ruserid` varchar(64) NOT NULL COMMENT '回复者id',
  `replytime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  `repstatus` int(10) DEFAULT '1' COMMENT '0异常 1正常 2删除',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES ('1','1','1577792919764240135','1582184795951594874','1577713712942250291','嗯呢','1577713712942250291','2020-02-24 14:54:11',1),('1588262384743447563','1588251204811301252','1583939483587193411','1577713712942250291','1582184795951594874','可以呀','1582184795951594874','2020-04-30 15:59:44',1),('1614226529645282498','1614226508675446955','1583940546885846474','1577713712942250291','1582184795951594874','222','1582184795951594874','2021-02-25 04:15:29',1),('1618309698745753588','1618294960360267353','1577793367826729923','1582184795951594874','1577713712942250291','20210415.18:28; reply_TEST','1577713712942250291','2021-04-13 10:28:18',1),('1619161922915206693','1619161866859206284','1619161683015795099','1577713712942250291','1582184795951594874','谢谢！','1582184795951594874','2021-04-23 07:12:02',1);
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soldrecord`
--

DROP TABLE IF EXISTS `soldrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soldrecord` (
  `id` varchar(64) NOT NULL COMMENT '售出记录id',
  `commid` varchar(64) NOT NULL COMMENT '商品id',
  `commname` varchar(255) DEFAULT NULL COMMENT '商品名',
  `commdesc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `thinkmoney` decimal(55,2) DEFAULT NULL COMMENT '售价',
  `soldtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '售出时间',
  `userid` varchar(64) NOT NULL COMMENT '用户id',
  `soldstatus` int(10) DEFAULT '1' COMMENT '1正常 2删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soldrecord`
--

LOCK TABLES `soldrecord` WRITE;
/*!40000 ALTER TABLE `soldrecord` DISABLE KEYS */;
INSERT INTO `soldrecord` VALUES ('1619163940232332198','1619163617122963350','【100级剑圣】深渊骑士 天选之人','操作系统：PC - PC端\n\n所属游戏：地下城与勇士（DNF）> QQ官方客户端> 山东3区> QQ成品帐号\n\n角色等级：100\n\n性别：男\n\n职业：剑圣\n\n处罚记录：不存在5天封号记录\n\n绑定防沉迷：否\n\n帐号认证：未认证身份证\n\n帐号绑定：密保手机\n\n商家在线：全天在线\n\n描述：几年没玩了，高调绝版天一 霸气 天选之人 多c 多奶 复活币 永久仓库开到极致 心悦皇冠实力加持 契约还有500多天 自己花了差不多 2万左右 一个角色就值了 剩下属于白嫖',2299.00,'2021-04-23 07:45:40','1577713712942250291',1),('1620801501353678279','1620801236074701723','测试商品售出','测试商品售出',99.00,'2021-05-12 06:38:21','1589694955949934523',1),('1620802338171919778','1620802268701747131','商品售出测试','商品售出测试',99.00,'2021-05-12 06:52:18','1589694955949934523',1),('1620802563763547323','1620802503427464808','商品售出测试','商品售出测试',99.00,'2021-05-12 06:56:03','1618210814608436376',1),('1620804040987726396','1620802503427464808','商品售出测试','商品售出测试',99.00,'2021-05-12 07:20:41','1618210814608436376',1),('1620804258979134981','1620804193911570103','售出测试01','售出测试01',99.00,'2021-05-12 07:24:18','1618210814608436376',1);
/*!40000 ALTER TABLE `soldrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `userid` varchar(64) NOT NULL COMMENT '用户id',
  `username` varchar(255) NOT NULL COMMENT '用户昵称',
  `password` varchar(255) NOT NULL COMMENT '用户密码',
  `mobilephone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `uimage` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `sex` varchar(255) DEFAULT NULL COMMENT '用户性别',
  `server` varchar(255) DEFAULT NULL COMMENT '游戏服务器',
  `userstatus` int(10) DEFAULT '1' COMMENT '1正常 0封号',
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `status` varchar(255) DEFAULT 'offline' COMMENT '用户状态',
  `sign` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('1577713712942250291','kurt','1cd75ca00db28072479992f87d4a647e','15034064979','123456781@qq.com','/pic/1f47eec431c342d484560bf32747d981.jpg','男','地下城与勇士',1,'2019-12-30 13:53:26','offline','如此清秋何吝酒，这般明月不须钱'),('1582184795951594874','小二','1cd75ca00db28072479992f87d4a647e','15239670412','123456782@qq.com','/pic/2d885a22918841c99c685379f0f4ce41.png','女','魔兽世界',1,'2020-02-20 07:46:35','offline','如此清秋何吝酒，这般明月不须钱'),('1589627579283677652','老三','1cd75ca00db28072479992f87d4a647e','123456784','123456784@qq.com','/pic/d1d66c3ea71044a9b938b00859ca94df.jpg','女','王者荣耀',1,'2020-05-16 11:12:59','offline','如此清秋何吝酒，这般明月不须钱'),('1589628308220845788','admin','1cd75ca00db28072479992f87d4a647e','admin','123456785@qq.com','/pic/d1d66c3ea71044a9b938b00859ca94df.jpg','女','王者荣耀',1,'2020-05-16 11:28:05','offline','如此清秋何吝酒，这般明月不须钱'),('1589644044287166342','Rose','1cd75ca00db28072479992f87d4a647e','123456785','123456786@qq.com','/pic/0bbe6324950541daa751fa50f89e9cff.jpg','女','王者荣耀',1,'2020-05-16 15:47:24','offline','如此清秋何吝酒，这般明月不须钱'),('1589680953404254146','王五','1cd75ca00db28072479992f87d4a647e','15239670413','123456787@qq.com','/pic/d1d66c3ea71044a9b938b00859ca94df.jpg','女','彩虹六号',1,'2020-05-17 02:02:33','offline','如此清秋何吝酒，这般明月不须钱'),('1589694955949934523','大力','1cd75ca00db28072479992f87d4a647e','15239670414','123456788@qq.com','/pic/d1d66c3ea71044a9b938b00859ca94df.jpg','男','和平精英',0,'2020-05-17 05:55:55','offline','如此清秋何吝酒，这般明月不须钱'),('1618210814608436376','test01','1cd75ca00db28072479992f87d4a647e','15034064978','15034064978@163.com','/pic/d1d66c3ea71044a9b938b00859ca94df.jpg','女','test',1,'2021-04-12 07:00:14','offline','如此清秋何吝酒，这般明月不须钱'),('1618996477365685472','test02','1cd75ca00db28072479992f87d4a647e','15034064970','15034064978@163.com','/pic/d1d66c3ea71044a9b938b00859ca94df.jpg','女','test',1,'2021-04-21 09:14:37','offline','如此清秋何吝酒，这般明月不须钱'),('1619081146231295485','test03','1cd75ca00db28072479992f87d4a647e','12345678910','15034064978@163.com','/pic/d1d66c3ea71044a9b938b00859ca94df.jpg','男','魔兽世界',1,'2021-04-22 08:45:46','offline','如此清秋何吝酒，这般明月不须钱'),('1620807592087637193','test04','1bbd2d7cbb8baaaaaad24bdc8a4472d1','11111111112','15034064978@163.com','/pic/d1d66c3ea71044a9b938b00859ca94df.jpg','男','test',1,'2021-05-12 08:19:52','offline','如此清秋何吝酒，这般明月不须钱');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_perm`
--

DROP TABLE IF EXISTS `user_perm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_perm` (
  `roleid` int(10) DEFAULT NULL COMMENT '1普通用户 2管理员 3超级管理员',
  `perms` varchar(255) DEFAULT NULL COMMENT '对应权限',
  `mean` varchar(255) DEFAULT NULL COMMENT '权限解释'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_perm`
--

LOCK TABLES `user_perm` WRITE;
/*!40000 ALTER TABLE `user_perm` DISABLE KEYS */;
INSERT INTO `user_perm` VALUES (1,'user:userinfo','用户个人信息'),(3,'admin:set','设置管理员'),(2,'user:userinfo','用户个人信息');
/*!40000 ALTER TABLE `user_perm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `userid` varchar(64) NOT NULL COMMENT '用户id',
  `roleid` int(10) NOT NULL DEFAULT '1' COMMENT '1普通用户 2管理员 3超级管理员',
  `identity` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('1577713712942250291',2,'管理员'),('1582184795951594874',2,'管理员'),('1587889073148226284',1,'网站用户'),('1589627579283677652',1,'网站用户'),('1589628308220845788',3,'超级管理员'),('1589644044287166342',1,'网站用户'),('1589680953404254146',1,'网站用户'),('1589694955949934523',1,'网站用户'),('1617953619169825341',1,'网站用户'),('1617954095770821890',1,'网站用户'),('1618206490374884787',1,'网站用户'),('1618209046054591225',1,'网站用户'),('1618210111756772499',1,'网站用户'),('1618210814608436376',1,'网站用户'),('1618996477365685472',1,'网站用户'),('1619081146231295485',1,'网站用户'),('1620807592087637193',1,'网站用户');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-18 17:29:42
