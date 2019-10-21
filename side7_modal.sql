/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : side7_modal

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-06-19 12:12:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `color` int(1) NOT NULL,
  `truePay` decimal(10,2) NOT NULL,
  `createTime` datetime NOT NULL,
  `count` int(5) NOT NULL,
  `opId` varchar(255) NOT NULL COMMENT 'order_operate的Id',
  `userId` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('155746402836215573220590841234561263', 'G-战机', '1557322059084123456', '1599.00', '2', '1599.00', '2019-05-10 12:53:48', '1', '1557464028431', '63');
INSERT INTO `orders` VALUES ('155746402836315573217305931234561363', 'FF-B4', '1557321730593123456', '500.00', '3', '500.00', '2019-05-10 12:53:48', '1', '1557464028431', '63');
INSERT INTO `orders` VALUES ('155746402836315573669302161234561163', '测试SD1', '1557366930216123456', '369.00', '1', '369.00', '2019-05-10 12:53:48', '1', '1557464028431', '63');
INSERT INTO `orders` VALUES ('155746402836315573669689181234561263', '测试SD2', '1557366968918123456', '456.00', '2', '456.00', '2019-05-10 12:53:48', '1', '1557464028431', '63');
INSERT INTO `orders` VALUES ('155746402836315573670543671234561463', 'RX75', '1557367054367123456', '567.00', '4', '567.00', '2019-05-10 12:53:48', '1', '1557464028431', '63');
INSERT INTO `orders` VALUES ('155746402836315573671535651234561463', '测试SD2', '1557367153565123456', '789.00', '4', '789.00', '2019-05-10 12:53:48', '1', '1557464028431', '63');
INSERT INTO `orders` VALUES ('155746530528415573213512031234561163', '德普罗格', '1557321351203123456', '1000.00', '1', '1000.00', '2019-05-10 13:15:05', '1', '1557465305349', '63');
INSERT INTO `orders` VALUES ('155746530528415573214178971234561263', '芳芳', '1557321417897123456', '500.00', '2', '500.00', '2019-05-10 13:15:05', '1', '1557465305349', '63');
INSERT INTO `orders` VALUES ('155746534162715573209361891234561163', '大托盘级', '1557320936189123456', '888.00', '1', '888.00', '2019-05-10 13:15:41', '1', '1557465341691', '63');
INSERT INTO `orders` VALUES ('1557470379914155732137882612345636163', '迪米亚', '1557321378826123456', '1000.00', '1', '1000.00', '2019-05-10 14:39:40', '1', 'operate1557470379914155732137882612345636163', '63');
INSERT INTO `orders` VALUES ('1557470384308155732137882612345636163', '迪米亚', '1557321378826123456', '1000.00', '1', '2000.00', '2019-05-10 14:39:44', '2', 'operate1557470384308155732137882612345636163', '63');
INSERT INTO `orders` VALUES ('155747788053015573217688541234566464', 'FF-B42', '1557321768854123456', '299.00', '4', '299.00', '2019-05-10 16:44:41', '1', 'operate155747788053015573217688541234566464', '64');
INSERT INTO `orders` VALUES ('1557738624577155732229112912345610164', '喜马拉雅级', '1557322291129123456', '2987.00', '1', '2987.00', '2019-05-13 17:10:24', '1', 'operate1557738624577155732229112912345610164', '64');
INSERT INTO `orders` VALUES ('15577400770051557739391501admin1164', 'RX-0', '1557739391501admin', '980.00', '1', '980.00', '2019-05-13 17:34:37', '1', '1557740077070', '64');
INSERT INTO `orders` VALUES ('155774007700615573222911291234561164', '喜马拉雅级', '1557322291129123456', '2987.00', '1', '2987.00', '2019-05-13 17:34:37', '1', '1557740077070', '64');
INSERT INTO `orders` VALUES ('15577412779901557739499517admin5164', 'GN-003', '1557739499517admin', '230.00', '1', '230.00', '2019-05-13 17:54:37', '1', 'operate15577412779901557739499517admin5164', '64');
INSERT INTO `orders` VALUES ('15585991800561557739499517admin4164', 'GN-003', '1557739499517admin', '230.00', '1', '230.00', '2019-05-23 16:13:00', '1', 'operate15585991800561557739499517admin4164', '64');
INSERT INTO `orders` VALUES ('15595267706451559526606356admin10164', 'GN-001', '1559526606356admin', '1020.00', '1', '1020.00', '2019-06-03 09:52:50', '1', 'operate15595267706451559526606356admin10164', '64');
INSERT INTO `orders` VALUES ('15595380043561559528187169admin10164', 'GN-0000', '1559528187169admin', '1000.00', '1', '4000.00', '2019-06-03 13:00:04', '4', 'operate15595380043561559528187169admin10164', '64');
INSERT INTO `orders` VALUES ('15604797472621557739391501admin19167', 'RX-0', '1557739391501admin', '980.00', '1', '980.00', '2019-06-14 10:35:47', '1', 'operate15604797472621557739391501admin19167', '67');
INSERT INTO `orders` VALUES ('15606763355081560410975071admin1164', 'MS-06S-01', '1560410975071admin', '150.00', '1', '150.00', '2019-06-16 17:12:15', '1', '1560676335574', '64');
INSERT INTO `orders` VALUES ('15606763355091557739499517admin1164', 'GN-003', '1557739499517admin', '230.00', '1', '230.00', '2019-06-16 17:12:15', '1', '1560676335574', '64');
INSERT INTO `orders` VALUES ('15607433153611560510271146admin20163', 'RX-0', '1560510271146admin', '800.00', '1', '800.00', '2019-06-17 11:48:35', '1', 'operate15607433153611560510271146admin20163', '63');
INSERT INTO `orders` VALUES ('15607436074311560510271146admin20163', 'RX-0', '1560510271146admin', '800.00', '1', '16000.00', '2019-06-17 11:53:27', '20', '1560743607494', '63');

-- ----------------------------
-- Table structure for order_operate
-- ----------------------------
DROP TABLE IF EXISTS `order_operate`;
CREATE TABLE `order_operate` (
  `id` varchar(255) NOT NULL,
  `count` int(5) NOT NULL COMMENT '订单组包含的订单数量',
  `createTime` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0删除 1:成功',
  `totalPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_operate
-- ----------------------------
INSERT INTO `order_operate` VALUES ('1557740077070', '2', '2019-05-13 17:34:37', '0', '3967.00');
INSERT INTO `order_operate` VALUES ('1560676335574', '2', '2019-06-16 17:12:15', '1', '380.00');
INSERT INTO `order_operate` VALUES ('1560743607494', '1', '2019-06-17 11:53:27', '1', '16000.00');
INSERT INTO `order_operate` VALUES ('operate1557470379914155732137882612345636163', '36', '2019-05-10 14:39:40', '1', '1000.00');
INSERT INTO `order_operate` VALUES ('operate1557470384308155732137882612345636163', '36', '2019-05-10 14:39:44', '1', '2000.00');
INSERT INTO `order_operate` VALUES ('operate155747788053015573217688541234566464', '6', '2019-05-10 16:44:41', '0', '299.00');
INSERT INTO `order_operate` VALUES ('operate1557738624577155732229112912345610164', '10', '2019-05-13 17:10:24', '0', '2987.00');
INSERT INTO `order_operate` VALUES ('operate15577412779901557739499517admin5164', '5', '2019-05-13 17:54:37', '1', '230.00');
INSERT INTO `order_operate` VALUES ('operate15585991800561557739499517admin4164', '4', '2019-05-23 16:13:00', '1', '230.00');
INSERT INTO `order_operate` VALUES ('operate15595267706451559526606356admin10164', '10', '2019-06-03 09:52:50', '1', '1020.00');
INSERT INTO `order_operate` VALUES ('operate15595380043561559528187169admin10164', '10', '2019-06-03 13:00:04', '1', '4000.00');
INSERT INTO `order_operate` VALUES ('operate15604797472621557739391501admin19167', '19', '2019-06-14 10:35:47', '1', '980.00');
INSERT INTO `order_operate` VALUES ('operate15607433153611560510271146admin20163', '20', '2019-06-17 11:48:35', '1', '800.00');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bigImg` varchar(255) NOT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `userId` varchar(255) NOT NULL,
  `seriesId` int(4) NOT NULL DEFAULT '0',
  `color` int(1) NOT NULL DEFAULT '1' COMMENT '1原色  2红色 3黑色4黄色5绿色',
  `price` decimal(10,2) NOT NULL,
  `count` int(5) NOT NULL COMMENT '库存数量',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0:售光或者下架售 1:在售',
  `buyCount` int(5) NOT NULL DEFAULT '0',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1557320936189123456', '大托盘级', '/images/seed/1557311819756datuopanji.jpg', '/images/seed/15573202493871557311819756datuopanji.jpg', '', '', '', '', '63', '1', '1', '888.00', '45', '0', '0', '2019-05-08 21:08:56');
INSERT INTO `products` VALUES ('1557321316935123456', '德普罗格', '/images/seed/1557321267946depuluoge.jpg', '/images/seed/1557321267946depuluoge.jpg', '', '', '', '', '63', '1', '1', '1000.00', '40', '1', '0', '2019-05-08 21:15:17');
INSERT INTO `products` VALUES ('1557321351203123456', '德普罗格', '/images/seed/1557321831953ffs3.jpg', '/images/seed/1557321267946depuluoge.jpg', '', '', '', '', '63', '1', '1', '1000.00', '38', '0', '0', '2019-05-08 21:15:51');
INSERT INTO `products` VALUES ('1557321378826123456', '迪米亚', '/images/seed/1557321373024dimiya.jpg', '/images/seed/1557321373024dimiya.jpg', '/images/seed/1557321373024dimiya.jpg', '', '', '', '63', '1', '1', '1000.00', '34', '0', '0', '2019-05-08 21:16:19');
INSERT INTO `products` VALUES ('1557321417897123456', '芳芳', '/images/seed/1557321414371fangfang.jpg', '/images/seed/1557321414371fangfang.jpg', '', '', '', '', '63', '1', '2', '500.00', '8', '0', '0', '2019-05-08 21:16:58');
INSERT INTO `products` VALUES ('1557321528282123456', '芳芳', '/images/seed/1557322138409maizhelunji.jpg', '/images/seed/1557321414371fangfang.jpg', '', '', '', '', '63', '1', '2', '500.00', '10', '0', '0', '2019-05-08 21:18:48');
INSERT INTO `products` VALUES ('1557321657325123456', '范扎古坦克', '/images/seed/1557321650955fanzhagutanke.jpg', '/images/seed/1557321650955fanzhagutanke.jpg', '', '', '', '', '63', '1', '3', '500.00', '12', '0', '0', '2019-05-08 21:20:57');
INSERT INTO `products` VALUES ('1557321692760123456', '飞剑', '/images/seed/1557321676068feijian.jpg', '/images/seed/1557321650955fanzhagutanke.jpg', '/images/seed/1557321676068feijian.jpg', '', '', '', '63', '1', '3', '500.00', '12', '0', '0', '2019-05-08 21:21:33');
INSERT INTO `products` VALUES ('1557321730593123456', 'FF-B4', '/images/seed/1557321718207ffb4.jpg', '/images/seed/1557321650955fanzhagutanke.jpg', '/images/seed/1557321676068feijian.jpg', '/images/seed/1557321718207ffb4.jpg', '', '', '63', '1', '3', '500.00', '6', '0', '0', '2019-05-08 21:22:11');
INSERT INTO `products` VALUES ('1557321768854123456', 'FF-B42', '/images/seed/1557321766485ffb42.jpg', '/images/seed/1557321650955fanzhagutanke.jpg', '/images/seed/1557321676068feijian.jpg', '/images/seed/1557321718207ffb4.jpg', '/images/seed/1557321766485ffb42.jpg', '', '63', '1', '4', '299.00', '5', '0', '0', '2019-05-08 21:22:49');
INSERT INTO `products` VALUES ('1557321835670123456', 'FF-S3', '/images/seed/1557321831953ffs3.jpg', '/images/seed/1557321650955fanzhagutanke.jpg', '/images/seed/1557321676068feijian.jpg', '/images/seed/1557321718207ffb4.jpg', '/images/seed/1557321766485ffb42.jpg', '/images/seed/1557321831953ffs3.jpg', '63', '2', '4', '455.00', '3', '0', '0', '2019-05-08 21:23:56');
INSERT INTO `products` VALUES ('1557321915551123456', '钢铁贝利', '/images/seed/1557321905588gangtiebeili.jpg', '/images/seed/1557321905588gangtiebeili.jpg', '', '', '', '', '63', '2', '1', '399.00', '1', '0', '0', '2019-05-08 21:25:16');
INSERT INTO `products` VALUES ('1557321978853123456', 'G-公牛', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557321972686ggongniu.jpg', '', '', '', '', '63', '2', '2', '200.00', '2', '0', '0', '2019-05-08 21:26:19');
INSERT INTO `products` VALUES ('1557322006947123456', 'G-天空', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '', '', '', '63', '2', '2', '300.00', '6', '0', '0', '2019-05-08 21:26:47');
INSERT INTO `products` VALUES ('1557322059084123456', 'G-战机', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '', '', '63', '2', '2', '1599.00', '49', '0', '0', '2019-05-08 21:27:39');
INSERT INTO `products` VALUES ('1557322100517123456', 'G-装甲', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '', '63', '2', '5', '1699.00', '13', '0', '0', '2019-05-08 21:28:21');
INSERT INTO `products` VALUES ('1557322147271123456', '麦哲伦级', '/images/seed/1557322138409maizhelunji.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '2', '5', '2500.00', '0', '0', '0', '2019-05-08 21:29:07');
INSERT INTO `products` VALUES ('1557322201858123456', 'MS05B-扎古', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '3', '1', '600.00', '5', '0', '0', '2019-05-08 21:30:02');
INSERT INTO `products` VALUES ('1557322224223123456', '蜻蜓', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '3', '1', '600.00', '5', '0', '0', '2019-05-08 21:30:24');
INSERT INTO `products` VALUES ('1557322253228123456', 'RB-79', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '3', '1', '1453.00', '2', '0', '0', '2019-05-08 21:30:53');
INSERT INTO `products` VALUES ('1557322291129123456', '喜马拉雅级', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '3', '1', '2987.00', '8', '0', '1', '2019-05-08 21:31:31');
INSERT INTO `products` VALUES ('1557322322311123456', '天跌', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '3', '1', '150.00', '36', '0', '0', '2019-05-08 21:32:02');
INSERT INTO `products` VALUES ('1557322380650123456', '唐艾斯凯特', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '3', '3', '785.00', '12', '0', '0', '2019-05-08 21:33:01');
INSERT INTO `products` VALUES ('1557322420504123456', 'RX-782高达', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '3', '2', '555.00', '12', '0', '0', '2019-05-08 21:33:41');
INSERT INTO `products` VALUES ('1557322514301123456', '三舰联盟', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '4', '3', '999.00', '150', '0', '0', '2019-05-08 21:35:14');
INSERT INTO `products` VALUES ('1557322572361123456', 'XR-77', '/images/seed/1557322138409maizhelunji.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '4', '1', '1120.00', '15', '0', '0', '2019-05-08 21:36:12');
INSERT INTO `products` VALUES ('1557322611041123456', 'MB99', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '4', '1', '1430.00', '66', '0', '0', '2019-05-08 21:36:51');
INSERT INTO `products` VALUES ('1557322656762123456', '落落泰坦', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '4', '1', '60.00', '3', '0', '0', '2019-05-08 21:37:37');
INSERT INTO `products` VALUES ('1557322759839123456', '测试1', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '4', '2', '1968.00', '13', '0', '0', '2019-05-08 21:39:20');
INSERT INTO `products` VALUES ('1557322776843123456', '测试2', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '4', '2', '1968.00', '13', '0', '0', '2019-05-08 21:39:37');
INSERT INTO `products` VALUES ('1557322841602123456', '测试3', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '5', '2', '1968.00', '13', '0', '0', '2019-05-08 21:40:42');
INSERT INTO `products` VALUES ('1557322849643123456', '测试3', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '5', '2', '1888.00', '13', '0', '0', '2019-05-08 21:40:50');
INSERT INTO `products` VALUES ('1557322855127123456', '测试3', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '5', '2', '1888.00', '13', '0', '0', '2019-05-08 21:40:55');
INSERT INTO `products` VALUES ('1557322863280123456', '测试4', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '5', '2', '1888.00', '13', '0', '0', '2019-05-08 21:41:03');
INSERT INTO `products` VALUES ('1557322881753123456', '测试5', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '5', '2', '1888.00', '13', '0', '0', '2019-05-08 21:41:22');
INSERT INTO `products` VALUES ('1557322898761123456', '测试6', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557321972686ggongniu.jpg', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/1557322039453gzhanji.jpg', '/images/seed/1557322093580gzhuangjia.jpg', '/images/seed/1557322138409maizhelunji.jpg', '63', '5', '2', '65.00', '30', '0', '0', '2019-05-08 21:41:39');
INSERT INTO `products` VALUES ('1557366930216123456', '测试SD1', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '', '', '', '', '63', '5', '1', '369.00', '0', '0', '0', '2019-05-09 09:55:30');
INSERT INTO `products` VALUES ('1557366968918123456', '测试SD2', '/images/seed/1557322001267gtiankong.jpg', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '/images/seed/1557366944031rx782gaoda.jpg', '', '', '', '63', '5', '2', '456.00', '0', '0', '0', '2019-05-09 09:56:09');
INSERT INTO `products` VALUES ('1557367006255123456', '测试SD2', '/images/seed/15573669783601557322563752rx77.jpg', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '/images/seed/1557366944031rx782gaoda.jpg', '/images/seed/15573669783601557322563752rx77.jpg', '', '', '63', '5', '4', '567.00', '2', '0', '0', '2019-05-09 09:56:46');
INSERT INTO `products` VALUES ('1557367054367123456', 'RX75', '/images/seed/15573669783601557322563752rx77.jpg', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '/images/seed/1557366944031rx782gaoda.jpg', '/images/seed/15573669783601557322563752rx77.jpg', '/images/seed/1557367020408rx75gangtanke.jpg', '', '63', '5', '4', '567.00', '0', '0', '0', '2019-05-09 09:57:34');
INSERT INTO `products` VALUES ('1557367082128123456', 'RX75', '/images/seed/1557366944031rx782gaoda.jpg', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '/images/seed/1557366944031rx782gaoda.jpg', '/images/seed/15573669783601557322563752rx77.jpg', '/images/seed/1557367020408rx75gangtanke.jpg', '', '63', '5', '3', '678.00', '2', '0', '0', '2019-05-09 09:58:02');
INSERT INTO `products` VALUES ('1557367123736123456', '测试SD2', '/images/seed/15573669783601557322563752rx77.jpg', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '/images/seed/1557366944031rx782gaoda.jpg', '/images/seed/15573669783601557322563752rx77.jpg', '/images/seed/1557367020408rx75gangtanke.jpg', '/images/seed/1557367097205modal2.jpg', '63', '5', '5', '678.00', '3', '0', '0', '2019-05-09 09:58:44');
INSERT INTO `products` VALUES ('1557367153565123456', '测试SD2', '/images/seed/1557367020408rx75gangtanke.jpg', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '/images/seed/1557366944031rx782gaoda.jpg', '/images/seed/15573669783601557322563752rx77.jpg', '/images/seed/1557367020408rx75gangtanke.jpg', '/images/seed/1557367097205modal2.jpg', '63', '5', '4', '789.00', '0', '0', '0', '2019-05-09 09:59:14');
INSERT INTO `products` VALUES ('1557367174225123456', '测试SD3', '/images/seed/1557367097205modal2.jpg', '/images/seed/15573668943651557322192046ms05bzhagu.jpg', '/images/seed/1557366944031rx782gaoda.jpg', '/images/seed/15573669783601557322563752rx77.jpg', '/images/seed/1557367020408rx75gangtanke.jpg', '/images/seed/1557367097205modal2.jpg', '63', '5', '4', '789.00', '2', '0', '0', '2019-05-09 09:59:34');
INSERT INTO `products` VALUES ('1557739228331admin', 'MSN-04', '/images/seed/1557739179104kasha-0.jpg', '/images/seed/1557739179104kasha-0.jpg', '/images/seed/1557739180999kasha-1.jpg', '/images/seed/1557739182984kasha-2.jpg', '/images/seed/1557739184910kasha-3.jpg', '', '64', '2', '1', '445.00', '10', '0', '0', '2019-05-13 17:20:28');
INSERT INTO `products` VALUES ('1557739391501admin', 'RX-0', '/images/seed/1557739337909unic-01.jpg', '/images/seed/1557739337909unic-01.jpg', '/images/seed/1557739342012unic-05.jpg', '/images/seed/1557739344514unic-06.jpg', '/images/seed/1557739347640unic-09.jpg', '', '64', '1', '1', '800.00', '18', '0', '1', '2019-05-13 17:23:11');
INSERT INTO `products` VALUES ('1557739499517admin', 'GN-003', '/images/seed/1557739451449dynames00.jpg', '/images/seed/1557739451449dynames00.jpg', '/images/seed/1557739461721dynames01.jpg', '/images/seed/1557739463578dynames02.jpg', '/images/seed/1557739465374dynames03.jpg', '', '64', '2', '1', '230.00', '2', '0', '2', '2019-05-13 17:24:59');
INSERT INTO `products` VALUES ('1558515053473admin', 'RX-0', '/images/seed/1558514967407uni-0.jpg', '/images/seed/1558514967407uni-0.jpg', '/images/seed/1558514967551uni-2.jpg', '/images/seed/1558514967707uni-3.jpg', '/images/seed/1558514967854uni-4.jpg', '', '64', '3', '1', '800.00', '20', '0', '0', '2019-05-22 16:50:53');
INSERT INTO `products` VALUES ('1558515195354admin', 'RX-78-2', '/images/seed/1558515141235hg78-02.jpg', '/images/seed/1558515141235hg78-02.jpg', '/images/seed/1558515141313hg78-04.jpg', '/images/seed/1558515141402hg78-05.jpg', '/images/seed/1558515141498hg78-08.jpg', '', '64', '4', '1', '1200.00', '10', '0', '0', '2019-05-22 16:53:15');
INSERT INTO `products` VALUES ('1559526606356admin', 'GN-001', '/images/seed/1559526526533exia-2.jpg', '/images/seed/1559526526533exia-2.jpg', '/images/seed/1559526529135exia-3.jpg', '/images/seed/1559526531541exia-4.jpg', '/images/seed/1559526533722exia-5.jpg', '', '64', '1', '1', '1120.00', '9', '0', '1', '2019-06-03 09:50:06');
INSERT INTO `products` VALUES ('1559528187169admin', 'GN-0000', '/images/seed/155952686961800-1.jpg', '/images/seed/155952686961800-1.jpg', '/images/seed/155952687598200-3.jpg', '/images/seed/155952688294400-2.jpg', '/images/seed/155952688639100-7.jpg', '', '64', '1', '1', '1000.00', '6', '1', '4', '2019-06-03 10:16:27');
INSERT INTO `products` VALUES ('1559530506773admin', 'GN-0000', '/images/seed/155952686961800-1.jpg', '/images/seed/155952686961800-1.jpg', '/images/seed/155952687598200-3.jpg', '/images/seed/155952688294400-2.jpg', '/images/seed/155952688639100-7.jpg', '', '64', '1', '1', '1000.00', '10', '0', '0', '2019-06-03 10:55:06');
INSERT INTO `products` VALUES ('1560410597760admin', 'RGM-96X', '/images/seed/1560410545085jestacannon-0.jpg', '/images/seed/1560410545085jestacannon-0.jpg', '/images/seed/1560410547256jestacannon-1.jpg', '/images/seed/1560410549044jestacannon-2.jpg', '', '', '64', '4', '1', '80.00', '12', '0', '0', '2019-06-13 15:23:17');
INSERT INTO `products` VALUES ('1560410655337admin', 'RGM96-X', '/images/seed/1560410627102jestacannon-0.jpg', '/images/seed/1560410627102jestacannon-0.jpg', '/images/seed/1560410628759jestacannon-1.jpg', '/images/seed/1560410630541jestacannon-2.jpg', '', '', '64', '4', '1', '80.00', '12', '1', '0', '2019-06-13 15:24:15');
INSERT INTO `products` VALUES ('1560410798655admin', 'RX-9', '/images/seed/1560410751197nt-1.jpg', '/images/seed/1560410751197nt-1.jpg', '/images/seed/1560410753039nt-2.jpg', '/images/seed/1560410754736nt-3.jpg', '', '', '64', '4', '1', '96.00', '20', '1', '0', '2019-06-13 15:26:38');
INSERT INTO `products` VALUES ('1560410872623admin', 'RX-03', '/images/seed/1560410834436phoenix-1.jpg', '/images/seed/1560410834436phoenix-1.jpg', '/images/seed/1560410836502phoenix-0.jpg', '/images/seed/1560410839231phoenix-2.jpg', '', '', '64', '4', '1', '230.00', '5', '1', '0', '2019-06-13 15:27:52');
INSERT INTO `products` VALUES ('1560410975071admin', 'MS-06S-01', '/images/seed/1560410918880gtz01.jpg', '/images/seed/1560410918880gtz01.jpg', '/images/seed/1560410920896gtz02.jpg', '/images/seed/1560410922618gtz03.jpg', '/images/seed/1560410924523gtz04.jpg', '', '64', '4', '1', '150.00', '19', '1', '0', '2019-06-13 15:29:35');
INSERT INTO `products` VALUES ('1560411072551admin', 'NZ-666', '/images/seed/1560411044588sdl01.jpg', '/images/seed/1560411044588sdl01.jpg', '/images/seed/1560411046347sdl02.jpg', '/images/seed/1560411048010sdl03.jpg', '', '', '64', '5', '5', '75.00', '10', '1', '0', '2019-06-13 15:31:12');
INSERT INTO `products` VALUES ('1560411176450admin', 'XXXG-01W', '/images/seed/1560411135996fy01.jpg', '/images/seed/1560411135996fy01.jpg', '/images/seed/1560411137625fy02.jpg', '', '', '', '64', '5', '1', '46.00', '10', '1', '0', '2019-06-13 15:32:56');
INSERT INTO `products` VALUES ('1560411276272admin', 'XM-X1', '/images/seed/1560411230535x101.jpg', '/images/seed/1560411230535x101.jpg', '/images/seed/1560411232438x102.jpg', '/images/seed/1560411234505x103.jpg', '', '', '64', '5', '1', '45.00', '10', '1', '0', '2019-06-13 15:34:36');
INSERT INTO `products` VALUES ('1560411370435admin', 'RX-93μ2', '/images/seed/1560411313582hin01.jpg', '/images/seed/1560411313582hin01.jpg', '/images/seed/1560411315396hin02.jpg', '', '', '', '64', '5', '1', '50.00', '10', '1', '0', '2019-06-13 15:36:10');
INSERT INTO `products` VALUES ('1560411470054admin', 'RX-79G', '/images/seed/1560411432006lz01.jpg', '/images/seed/1560411432006lz01.jpg', '/images/seed/1560411433696lz02.jpg', '/images/seed/1560411435262lz03.jpg', '', '', '64', '5', '1', '40.00', '10', '1', '0', '2019-06-13 15:37:50');
INSERT INTO `products` VALUES ('1560411643321admin', 'RX-93μ', '/images/seed/1560411516402niu01.jpg', '/images/seed/1560411516402niu01.jpg', '/images/seed/1560411518204niu02.jpg', '/images/seed/1560411519869niu03.jpg', '/images/seed/1560411521705niu04.jpg', '', '64', '5', '1', '50.00', '10', '1', '0', '2019-06-13 15:40:43');
INSERT INTO `products` VALUES ('1560411756570admin', 'GNT-0000', '/images/seed/156041171009500q05.jpg', '/images/seed/156041171009500q05.jpg', '/images/seed/156041171216900q04.jpg', '/images/seed/156041171506500q03.jpg', '/images/seed/156041171705700q02.jpg', '', '64', '2', '1', '240.00', '10', '0', '0', '2019-06-13 15:42:36');
INSERT INTO `products` VALUES ('1560411862246admin', 'RX-9', '/images/seed/1560411806649phx01.jpg', '/images/seed/1560411806649phx01.jpg', '/images/seed/1560411809332phx02.jpg', '/images/seed/1560411811976phx03.jpg', '/images/seed/1560411813975phx04.jpg', '', '64', '2', '4', '400.00', '10', '1', '0', '2019-06-13 15:44:22');
INSERT INTO `products` VALUES ('1560411987234admin', 'RX-78-2', '/images/seed/1560411922774rx783-0.jpg', '/images/seed/1560411922774rx783-0.jpg', '/images/seed/1560411925554rx783-2.jpg', '/images/seed/1560411928121rx783-4.jpg', '', '', '64', '2', '1', '180.00', '10', '1', '0', '2019-06-13 15:46:27');
INSERT INTO `products` VALUES ('1560412161879admin', 'RX-93μ', '/images/seed/1560412112794rx93-2.jpg', '/images/seed/1560412112794rx93-2.jpg', '/images/seed/1560412114910rx93-1.jpg', '/images/seed/1560412118146rx93-5.jpg', '/images/seed/1560412122899rx93-6.jpg', '', '64', '3', '1', '220.00', '10', '1', '0', '2019-06-13 15:49:21');
INSERT INTO `products` VALUES ('1560412235536admin', 'MSN-04', '/images/seed/1560412198360sazabi01.jpg', '/images/seed/1560412198360sazabi01.jpg', '/images/seed/1560412200269sazabi02.jpg', '/images/seed/1560412202522sazabi03.jpg', '/images/seed/1560412204668sazabi05.jpg', '', '64', '3', '2', '230.00', '10', '1', '0', '2019-06-13 15:50:35');
INSERT INTO `products` VALUES ('1560412344091admin', 'RX-0', '/images/seed/1560412287654banshee04.jpg', '/images/seed/1560412287654banshee04.jpg', '/images/seed/1560412289743banshee03.jpg', '/images/seed/1560412291633banshee02.jpg', '/images/seed/1560412293167banshee01.jpg', '', '64', '3', '3', '220.00', '10', '1', '0', '2019-06-13 15:52:24');
INSERT INTO `products` VALUES ('1560412432872admin', 'MSN-06S', '/images/seed/1560412358890sinanju01.jpg', '/images/seed/1560412358890sinanju01.jpg', '/images/seed/1560412360910sinanju02.jpg', '/images/seed/1560412362661sinanju03.jpg', '/images/seed/1560412364490sinanju04.jpg', '', '64', '3', '2', '180.00', '10', '1', '0', '2019-06-13 15:53:52');
INSERT INTO `products` VALUES ('1560412559546admin', 'MBF-P02', '/images/seed/1560412551706red01.jpg', '/images/seed/1560412551706red01.jpg', '/images/seed/1560412553698red02.jpg', '/images/seed/1560412555569red03.jpg', '/images/seed/1560412558365red04.jpg', '', '64', '1', '2', '1190.00', '10', '1', '0', '2019-06-13 15:55:59');
INSERT INTO `products` VALUES ('1560412795078admin', 'RX-178-X0', '/images/seed/1560412761361mk201.jpg', '/images/seed/1560412761361mk201.jpg', '/images/seed/1560412763115mk202.jpg', '/images/seed/1560412765027mk203.jpg', '/images/seed/1560412766750mk204.jpg', '', '64', '1', '3', '1000.00', '10', '1', '0', '2019-06-13 15:59:55');
INSERT INTO `products` VALUES ('1560413724165admin', 'MSN-04', '/images/seed/1560413680976kasha-1.jpg', '/images/seed/1560413680976kasha-1.jpg', '/images/seed/1560413689209kasha-2.jpg', '/images/seed/1560413692362kasha-3.jpg', '/images/seed/1560413694428kasha-5.jpg', '', '64', '2', '2', '425.00', '10', '1', '0', '2019-06-13 16:15:24');
INSERT INTO `products` VALUES ('1560493012432admin', 'MSN-04-2', '/images/seed/1560492925040yy01.jpg', '/images/seed/1560492925040yy01.jpg', '/images/seed/1560492926943yy02.jpg', '/images/seed/1560492928921yy03.jpg', '', '', '64', '5', '2', '140.00', '20', '1', '0', '2019-06-14 14:16:52');
INSERT INTO `products` VALUES ('1560493087967admin', 'MSN-04', '/images/seed/1560493040513szb01.jpg', '/images/seed/1560493040513szb01.jpg', '/images/seed/1560493042577szb02.jpg', '/images/seed/1560493049046szb04.jpg', '', '', '64', '5', '1', '100.00', '20', '1', '0', '2019-06-14 14:18:07');
INSERT INTO `products` VALUES ('1560493694504admin', 'MSZ-006', '/images/seed/1560493635678z-01.jpg', '/images/seed/1560493635678z-01.jpg', '/images/seed/1560493637735z-02.jpg', '/images/seed/1560493639638z-03.jpg', '/images/seed/1560493641697z-04.jpg', '', '64', '5', '1', '42.00', '20', '1', '0', '2019-06-14 14:28:14');
INSERT INTO `products` VALUES ('1560493801481admin', '魔神Z', '/images/seed/1560493722820mos-1.jpg', '/images/seed/1560493722820mos-1.jpg', '/images/seed/1560493757892mos-2.jpg', '/images/seed/1560493759812mos-3.jpg', '/images/seed/1560493761913mos-4.jpg', '', '64', '5', '1', '80.00', '20', '1', '0', '2019-06-14 14:30:01');
INSERT INTO `products` VALUES ('1560493872975admin', 'ZGMF-X10A', '/images/seed/1560493821233freedom-1.jpg', '/images/seed/1560493821233freedom-1.jpg', '/images/seed/1560493824897freedom-2.jpg', '/images/seed/1560493826920freedom-3.jpg', '/images/seed/1560493828904freedom-4.jpg', '', '64', '5', '1', '42.00', '20', '1', '0', '2019-06-14 14:31:12');
INSERT INTO `products` VALUES ('1560493937892admin', 'RX-02', '/images/seed/1560493883207bans-4.jpg', '/images/seed/1560493883207bans-4.jpg', '/images/seed/1560493885171bans-1.jpg', '/images/seed/1560493886949bans-2.jpg', '/images/seed/1560493888831bans-3.jpg', '', '64', '5', '3', '42.00', '20', '0', '0', '2019-06-14 14:32:17');
INSERT INTO `products` VALUES ('1560494553223admin', 'RX-02', '/images/seed/1560494515017bans-4.jpg', '/images/seed/1560494515017bans-4.jpg', '/images/seed/1560494516841bans-1.jpg', '/images/seed/1560494519160bans-2.jpg', '/images/seed/1560494521205bans-3.jpg', '', '64', '5', '3', '30.00', '20', '1', '0', '2019-06-14 14:42:33');
INSERT INTO `products` VALUES ('1560509891477admin', 'RX-78-2', '/images/seed/1560509862915hg78-01.jpg', '/images/seed/1560509862915hg78-01.jpg', '/images/seed/1560509866843hg78-04.jpg', '/images/seed/1560509869389hg78-08.jpg', '/images/seed/1560509871997hg78-09.jpg', '', '64', '4', '1', '80.00', '20', '1', '0', '2019-06-14 18:58:11');
INSERT INTO `products` VALUES ('1560510271146admin', 'RX-0', '/images/seed/1560510156766unic-05.jpg', '/images/seed/1560510156766unic-05.jpg', '/images/seed/1560510160027unic-06.jpg', '/images/seed/1560510162468unic-07.jpg', '/images/seed/1560510167666unic-03.jpg', '', '64', '1', '1', '800.00', '-1', '1', '1', '2019-06-14 19:04:31');
INSERT INTO `products` VALUES ('1560645119901admin', 'X-10a', '/images/seed/1560645075075strike-1.jpg', '/images/seed/1560645075075strike-1.jpg', '/images/seed/1560645076917strike-2.jpg', '/images/seed/1560645078756strike-3.jpg', '', '', '64', '5', '1', '50.00', '20', '1', '0', '2019-06-16 08:31:59');

-- ----------------------------
-- Table structure for products_sets
-- ----------------------------
DROP TABLE IF EXISTS `products_sets`;
CREATE TABLE `products_sets` (
  `id` varchar(255) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `set` varchar(1000) NOT NULL,
  `type` varchar(50) NOT NULL,
  `jixie` varchar(50) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products_sets
-- ----------------------------
INSERT INTO `products_sets` VALUES ('111111wadwad', '1557320936189123456', ' 奥布独自开发的最早3台MS之一，红色机为近战，拥有巨大的实体剑：菊一文字以及比蓝色机与金色机更长的光束军刀，但其光束枪威力不如金色机与蓝色机。可以搭载奥布最强的近战武器：草雉巨剑。', '奥布', '异端高达红色级', '2019-05-08 21:08:56');
INSERT INTO `products_sets` VALUES ('sets1557321351203123456', '1557321351203123456', ' 基拉的机体，拥有换装能力：标准中距离宇宙战形态，装备长距离兵器的炮击战形态（左），装备剑的接近战形态（右），全能的I．W．S．P．形态，适合长距离并具有比一般装备更多的能量闪电强袭，可使用龙骑兵的105有线诱导，6种形态能力的万能机体。（后三种在外传中出现）', '地球联合军', '强袭高达（Strike）', '2019-05-08 21:15:51');
INSERT INTO `products_sets` VALUES ('sets1557321378826123456', '1557321378826123456', '阿斯兰的机体，从地球联合抢走的四架高达之一。以在宇宙和空中的高速战斗能力见长，最大特征在于可以变形为MA，因此和其他4部高达的设计框架有着根本性的区别。', '地球联合军', '神盾高达（Aegis）', '2019-05-08 21:16:19');
INSERT INTO `products_sets` VALUES ('sets1557321417897123456', '1557321417897123456', ' 	以主要追求行动灵敏性为主旨设计出的近身格斗战机型，还装备有在一定期间使机体呈现透明状态并不被眼睛以及雷达发现的\"海市蜃楼\"系统。', '地球联合军', '迅雷高达（Blitz）', '2019-05-08 21:16:58');
INSERT INTO `products_sets` VALUES ('sets1557321528282123456', '1557321528282123456', ' 	以主要追求行动灵敏性为主旨设计出的近身格斗战机型，还装备有在一定期间使机体呈现透明状态并不被眼睛以及雷达发现的\"海市蜃楼\"系统。', '地球联合军', '迅雷高达（Blitz）', '2019-05-08 21:18:48');
INSERT INTO `products_sets` VALUES ('sets1557321657325123456', '1557321657325123456', ' 泛用性极高的正统机体，后被改造成加装了磁轨炮以及制导飞弹的机体。', '地球联合军', '决斗高达（Duel）', '2019-05-08 21:20:57');
INSERT INTO `products_sets` VALUES ('sets1557321692760123456', '1557321692760123456', '以远距离炮击战为主要适用对象而设计的机体，装备了直线钢弹枪和高能量狙击步枪各一把，能够在敌人的射程之外对目标发动攻击 ,是强大的炮装。', '地球联合军', '暴风高达（Buster）', '2019-05-08 21:21:33');
INSERT INTO `products_sets` VALUES ('sets1557321730593123456', '1557321730593123456', '穆的专用爱机，装备了有线式机枪桶，但能操纵它的只有穆本人。他为执行运送高达的任务来到赫立奥波利斯 。', '地球联合军', 'MA莫必斯[零式]', '2019-05-08 21:22:11');
INSERT INTO `products_sets` VALUES ('sets1557321768854123456', '1557321768854123456', '联合军主力MA能够装备多种武器以对应各种战局。', '地球联合军', 'MA莫必斯', '2019-05-08 21:22:49');
INSERT INTO `products_sets` VALUES ('sets1557321835670123456', '1557321835670123456', '基拉的爱机，核驱动，速度极快，威力强大。', 'ZAFT', '自由高达（Freedom）', '2019-05-08 21:23:56');
INSERT INTO `products_sets` VALUES ('sets1557321915551123456', '1557321915551123456', '劳·鲁·克鲁泽驾驶，核驱动，搭载“龙骑兵”系统。', 'ZAFT', '神意高达（providence）', '2019-05-08 21:25:16');
INSERT INTO `products_sets` VALUES ('sets1557321978853123456', '1557321978853123456', ' 扎夫特军量产型机动战士，是装备有多种武器，泛用性很高的机体。', 'ZAFT', '吉恩（Ginn）', '2019-05-08 21:26:19');
INSERT INTO `products_sets` VALUES ('sets1557322006947123456', '1557322006947123456', ' 扎夫特军量产型机动战士，是装备有多种武器，泛用性很高的机体。', 'ZAFT', '侦查型吉恩', '2019-05-08 21:26:47');
INSERT INTO `products_sets` VALUES ('sets1557322059084123456', '1557322059084123456', '扎夫特军指挥官用机动战机，劳·鲁·克鲁泽驾驶。', 'ZAFT', '希古（CGUE）', '2019-05-08 21:27:39');
INSERT INTO `products_sets` VALUES ('sets1557322100517123456', '1557322100517123456', '那斯卡级高速战斗舰，全长约255米，克鲁泽队的旗舰，被扎夫特军派遣执行夺取高达计划。主武器：单装主炮×2；导弹发射管×4。', 'ZAFT', '威萨利斯号', '2019-05-08 21:28:21');
INSERT INTO `products_sets` VALUES ('sets1557322147271123456', '1557322147271123456', '罗拉西亚级战舰，强夺高达行动后，运载着4部抢来的高达。主武器：连装主炮×2；连装副炮×1。', 'ZAFT', '伽莫夫', '2019-05-08 21:29:07');
INSERT INTO `products_sets` VALUES ('sets1557322201858123456', '1557322201858123456', '奥布军的主力海上战舰，全长200米。同型舰数量极多，火力也相当强劲，主要用于奥布近海领域的防卫工作。', '奥布', '神盾舰', '2019-05-08 21:30:02');
INSERT INTO `products_sets` VALUES ('sets1557322224223123456', '1557322224223123456', '奥布军的大型空母，搭载了M1 歧途及村雨等机体，舰长是户高上校。在克列塔岛的战斗中，建御雷号遭到脉动高达的攻击而沉没，户高上校殉职。', '奥布', '建御雷号', '2019-05-08 21:30:24');
INSERT INTO `products_sets` VALUES ('sets1557322253228123456', '1557322253228123456', '随同旗舰建御雷号与联合军合流后在与ZAFT军密涅瓦号的交战中被击沉。', '奥布', '暗淤加美级护卫舰', '2019-05-08 21:30:53');
INSERT INTO `products_sets` VALUES ('sets1557322291129123456', '1557322291129123456', '本舰全长290米，设计概念与大天使号比较类似，舰体平时可分离为三个独立的部分，核心部分可以作为输送舰往来于奥布本土及殖民卫星赫利奥波利斯之间；在宇宙中时三个部分可以合体成一艘完整的战舰。战斗时，舰首的嘴状部分向前伸出，成为射出MS用的线形发射台。', '奥布', '出云级宇宙战舰', '2019-05-08 21:31:31');
INSERT INTO `products_sets` VALUES ('sets1557322322311123456', '1557322322311123456', '奥布主力战斗机，和MS相比战斗力低下。', '奥布', '赫利', '2019-05-08 21:32:02');
INSERT INTO `products_sets` VALUES ('sets1557322380650123456', '1557322380650123456', '用强袭的预备部件制造（局部相转移装甲配色不同），卡嘉莉的专机。', '奥布', '嫣红强袭（Strike-Rouge）', '2019-05-08 21:33:01');
INSERT INTO `products_sets` VALUES ('sets1557322420504123456', '1557322420504123456', '奥布的主力机体，异端高达的改造量产化型', '奥布', 'M1异端', '2019-05-08 21:33:41');
INSERT INTO `products_sets` VALUES ('sets1557322514301123456', '1557322514301123456', '由地球联合军的大天使号、扎夫特的永恒号、奥布的草薙号组成，与扎夫特、地球联合军抵抗的第三联盟。各军舰指挥官为玛琉、拉克丝、卡嘉莉。\r\n主力机体为基拉的自由高达和阿斯兰的正义高达，强袭高达和后来加入的暴风高达。 ', '第三联盟', '三舰联盟', '2019-05-08 21:35:14');
INSERT INTO `products_sets` VALUES ('sets1557322572361123456', '1557322572361123456', '奥布独自开发的3台机体之一。金色机具有极强的泛用性，具备了红色机与蓝色机的特色，但由于继承了双方的特色，使金色机的右手不能熟练的切换光束军刀与火箭炮，在奥布攻防战中中弹损坏，通过迅雷高达右手的微型海市蜃楼系统的结合修复，金色机接收了迅雷高达的MS专用海市蜃楼系统，并且更加灵活了。', '第三联盟', '异端高达金色机', '2019-05-08 21:36:12');
INSERT INTO `products_sets` VALUES ('sets1557322611041123456', '1557322611041123456', '奥布独自开发的3台机体之一，蓝色机为远战型，搭载了大量的飞弹与超强力的火箭发射器，由于受到武器限制，蓝色机的光束剑较为弱小，不宜近战。蓝色机与奥布保卫战中损坏，用强袭高达的部件进行修理，搭载了强袭高达的“破甲者”匕首，对MS具有极强破坏性。修理后的蓝色机改变了远战攻击，成为了续红色机之后的有一台近战机体。', '第三联盟', '异端高达蓝色机', '2019-05-08 21:36:51');
INSERT INTO `products_sets` VALUES ('sets1557322656762123456', '1557322656762123456', '异端高达的改造量产化型。', '第三联盟', 'M1异端', '2019-05-08 21:37:37');
INSERT INTO `products_sets` VALUES ('sets1557322759839123456', '1557322759839123456', '测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容测试内容', '第三联盟', '测试1', '2019-05-08 21:39:20');
INSERT INTO `products_sets` VALUES ('sets1557322776843123456', '1557322776843123456', '测试内容啊啊啊啊啊啊啊啊测试内容啊啊啊啊啊啊啊测试内容啊啊啊啊啊啊啊测测试内容测试内容测试内容测试内容测试内容测试内容', '第三联盟', '测试2', '2019-05-08 21:39:37');
INSERT INTO `products_sets` VALUES ('sets1557322841602123456', '1557322841602123456', '被视为是地球连合军标准宇宙战斗单位的泛用型单座重型战斗机。藉由重装甲抵挡敌人的攻击，在一对一的情况下足以击落一个目标的火力，和可以与常规战斗机匹敌的机动性，MA被设计成为在战斗中以最小的代价换取最大的效力 - 换句话说,，将熟练的驾驶员的损失减到最少。然而，这些机器现在只能衬托ZAFT的革命性的战斗兵器Mobile Suit（MS）。地球连合军当初估计一台ZAFT的MS的战斗力量只是等同于不过2~3台MA，已经证明是错误的；根据统计，至少需要5台MA才能拿下一台MS。', 'MA', '机动堡垒', '2019-05-08 21:40:42');
INSERT INTO `products_sets` VALUES ('sets1557322849643123456', '1557322849643123456', '被视为是地球连合军标准宇宙战斗单位的泛用型单座重型战斗机。藉由重装甲抵挡敌人的攻击，在一对一的情况下足以击落一个目标的火力，和可以与常规战斗机匹敌的机动性，MA被设计成为在战斗中以最小的代价换取最大的效力 - 换句话说,，将熟练的驾驶员的损失减到最少。然而，这些机器现在只能衬托ZAFT的革命性的战斗兵器Mobile Suit（MS）。地球连合军当初估计一台ZAFT的MS的战斗力量只是等同于不过2~3台MA，已经证明是错误的；根据统计，至少需要5台MA才能拿下一台MS。', 'MA', '机动堡垒', '2019-05-08 21:40:50');
INSERT INTO `products_sets` VALUES ('sets1557322855127123456', '1557322855127123456', '被视为是地球连合军标准宇宙战斗单位的泛用型单座重型战斗机。藉由重装甲抵挡敌人的攻击，在一对一的情况下足以击落一个目标的火力，和可以与常规战斗机匹敌的机动性，MA被设计成为在战斗中以最小的代价换取最大的效力 - 换句话说,，将熟练的驾驶员的损失减到最少。然而，这些机器现在只能衬托ZAFT的革命性的战斗兵器Mobile Suit（MS）。地球连合军当初估计一台ZAFT的MS的战斗力量只是等同于不过2~3台MA，已经证明是错误的；根据统计，至少需要5台MA才能拿下一台MS。', 'MA', '机动堡垒', '2019-05-08 21:40:55');
INSERT INTO `products_sets` VALUES ('sets1557322863280123456', '1557322863280123456', '被视为是地球连合军标准宇宙战斗单位的泛用型单座重型战斗机。藉由重装甲抵挡敌人的攻击，在一对一的情况下足以击落一个目标的火力，和可以与常规战斗机匹敌的机动性，MA被设计成为在战斗中以最小的代价换取最大的效力 - 换句话说,，将熟练的驾驶员的损失减到最少。然而，这些机器现在只能衬托ZAFT的革命性的战斗兵器Mobile Suit（MS）。地球连合军当初估计一台ZAFT的MS的战斗力量只是等同于不过2~3台MA，已经证明是错误的；根据统计，至少需要5台MA才能拿下一台MS。', 'MA', '机动堡垒', '2019-05-08 21:41:03');
INSERT INTO `products_sets` VALUES ('sets1557322881753123456', '1557322881753123456', '被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试', 'MA', '机动堡垒', '2019-05-08 21:41:22');
INSERT INTO `products_sets` VALUES ('sets1557322898761123456', '1557322898761123456', '被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试被视为是地球连合军测试', 'MA', '机动堡垒', '2019-05-08 21:41:39');
INSERT INTO `products_sets` VALUES ('sets1557366930216123456', '1557366930216123456', ' 测试 测试 测试 测试 测试 测试 测试 测试 测试 测试 测试 测试 测试 测试', '奥布', '红色高达', '2019-05-09 09:55:30');
INSERT INTO `products_sets` VALUES ('sets1557366968918123456', '1557366968918123456', '测试设定内容测试设定内容测试设定内容测试设定内容', '奥布', '蓝色高达', '2019-05-09 09:56:09');
INSERT INTO `products_sets` VALUES ('sets1557367006255123456', '1557367006255123456', '金色高达金色高达金色高达金色高达金色高达金色高达金色高达', '奥布', '金色高达', '2019-05-09 09:56:46');
INSERT INTO `products_sets` VALUES ('sets1557367054367123456', '1557367054367123456', 'rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用', 'ZAFT', '坦克', '2019-05-09 09:57:34');
INSERT INTO `products_sets` VALUES ('sets1557367082128123456', '1557367082128123456', 'rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用rx75测试用', 'ZAFT', '大托盘级', '2019-05-09 09:58:02');
INSERT INTO `products_sets` VALUES ('sets1557367123736123456', '1557367123736123456', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'ZAFT', '测试', '2019-05-09 09:58:44');
INSERT INTO `products_sets` VALUES ('sets1557367153565123456', '1557367153565123456', '测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2测试SD2', 'ZAFT', '测试2', '2019-05-09 09:59:14');
INSERT INTO `products_sets` VALUES ('sets1557367174225123456', '1557367174225123456', '测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3测试SD3', 'ZAFT', '测试3', '2019-05-09 09:59:34');
INSERT INTO `products_sets` VALUES ('sets1557739228331admin', '1557739228331admin', '新吉翁总帅夏亚的机体 ', '沙扎比', '阿纳海姆', '2019-05-13 17:20:28');
INSERT INTO `products_sets` VALUES ('sets1557739391501admin', '1557739391501admin', ' 巴纳吉林克斯的机体', 'MS', '独角兽高达', '2019-05-13 17:23:11');
INSERT INTO `products_sets` VALUES ('sets1557739499517admin', '1557739499517admin', ' 洛克昂史塔拉托斯的机体', 'MS', '力天使', '2019-05-13 17:24:59');
INSERT INTO `products_sets` VALUES ('sets1558515053473admin', '1558515053473admin', 'RX-0 全装甲独角兽高达（Full Armor Unicorn Gundam）是RX-0独角兽高达的机师巴纳吉·林克斯的好友拓也·伊礼在拟·亚加玛上期间所设计的独角兽高达的加强形态。', 'E.F.S.F', '全武装独角兽高达', '2019-05-22 16:50:53');
INSERT INTO `products_sets` VALUES ('sets1558515195354admin', '1558515195354admin', ' 本机就是在因缘际会之下由阿姆罗·雷驾驶的初代高达，是V计划里RX-78系列的二号机，也是GUNDAM史上第一次MS战的参与者（这一设定在《机动战士高达 THE ORIGIN》中被改写，第一次MS间的交战在MS-04布古与RX-77钢加农最初期型之间展开），并在一年战争中后期创造了奇迹般的战果，被吉恩军驾驶员称为“白色恶魔”；然而本机得以称为“最强”的最大原因，却是驾驶员阿姆罗·雷的NT能力在战场上的充分运用。本机在阿·巴瓦·库会战中与夏亚所驾驶的MSN-02 吉恩号交战时双双被毁。', 'E.F.S.F', '高达', '2019-05-22 16:53:15');
INSERT INTO `products_sets` VALUES ('sets1559526606356admin', '1559526606356admin', ' 《机动战士高达00》中由「天人武装组织」制造的机动战士「能天使高达」。由于搭载了“GN-Drive（太阳炉）”故具有近乎无限的动能和惊人的机动性。本机设定为近战专用特化机。主武器为装配在右臂上的GN剑及左臂的专用护盾。', 'EXIA', '能天使', '2019-06-03 09:50:06');
INSERT INTO `products_sets` VALUES ('sets1559528187169admin', '1559528187169admin', ' OO高达是一个MS，是《机动战士高达00》中由「天人武装组织」制造的高达型MS，在现实中它的设计者为海老川兼武。OO高达型号为GN-0000，是高达第四世代，具有GN太阳炉装置，属于近战格斗型人型兵器。', '0000', '双零高达', '2019-06-03 10:16:27');
INSERT INTO `products_sets` VALUES ('sets1559530506773admin', '1559530506773admin', ' OO高达是一个MS，是《机动战士高达00》中由「天人武装组织」制造的高达型MS，在现实中它的设计者为海老川兼武。OO高达型号为GN-0000，是高达第四世代，具有GN太阳炉装置，属于近战格斗型人型兵器。', '0000', '双零高达', '2019-06-03 10:55:06');
INSERT INTO `products_sets` VALUES ('sets1560410597760admin', '1560410597760admin', '杰斯塔加农是由:A.E. Von Braun(阿纳海姆电子公司)生产的特种作战用机动战士。', '杰斯塔', 'Jesta', '2019-06-13 15:23:17');
INSERT INTO `products_sets` VALUES ('sets1560410655337admin', '1560410655337admin', '杰斯塔加农是由:A.E. Von Braun(阿纳海姆电子公司)生产的特种作战用机动战士。', 'Jesta', '杰斯塔', '2019-06-13 15:24:15');
INSERT INTO `products_sets` VALUES ('sets1560410798655admin', '1560410798655admin', '由亚纳海姆电子公司制造，主角乔纳·巴修塔所乘搭的机动战士。 是为制造RX-93 ν高达之前,测试精神感应框架而开发的测试机。 特征是没有装上各部份的装甲，露出机体的内部框架。 因为是测试机，所以素体的武装就只有头部火神炮。 因此在执行“狩猎不死鸟”作战要借助卢欧商会的力量，借着换上多种武装来运用。', 'ZAFT', '叙事', '2019-06-13 15:26:38');
INSERT INTO `products_sets` VALUES ('sets1560410872623admin', '1560410872623admin', ' 独角兽高达3号机凤凰（ユニコーンガンダム3号机フェネクス）\r\n率先采用试验性质的全精神感应框架为素体，以白色1号机和黑色2号机的建造数据组装而成的金色独角兽高达3号机。 于U.C.0095时发生了失控事件，随后下落不明。', 'MA', '菲尼克斯', '2019-06-13 15:27:52');
INSERT INTO `products_sets` VALUES ('sets1560410975071admin', '1560410975071admin', '新安州·原石（シナンジュ・スタイン）：“UC计划”中为测试精神感应框架的强度、契合性而开发的试作MS，开发代号为Stein 01。据说是于U.C.0094时，在由地球联邦宇宙军所属的克拉普级巡洋舰云海运送的途中遭到抢夺。', 'MA', '新安洲-原石', '2019-06-13 15:29:35');
INSERT INTO `products_sets` VALUES ('sets1560411072551admin', '1560411072551admin', 'NZ-666 刹帝利是继NZ-000 奎曼沙与NZ-333 α·瓦索龙之后又集合了多年来吉恩(Zeon)New Type专用MS与MA开发技术结晶的新型NT机体。', 'MA', '刹帝利', '2019-06-13 15:31:12');
INSERT INTO `products_sets` VALUES ('sets1560411176450admin', '1560411176450admin', '飞翼高达出自《新机动战记高达W》，由J博士制造开发的可变机动战士，驾驶者为希罗·尤尔。此高达在TV中是五架高达中唯一可变形及可进空中作战能力的机体，其设计理念为一击脱离型。', 'MA', '飞翼高达', '2019-06-13 15:32:56');
INSERT INTO `products_sets` VALUES ('sets1560411276272admin', '1560411276272admin', 'XM-X1 CBX1是联邦军海军战略研究所（SNRI）为了验证高重力圈小型MS可动实验设计的第一种小型MS。', '第三联盟', '海盗X-1', '2019-06-13 15:34:36');
INSERT INTO `products_sets` VALUES ('sets1560411370435admin', '1560411370435admin', 'Hi-ν高达 (谐音“海牛”) 出现在小说《机动战士高达 逆袭的夏亚 贝托蒂嘉的子嗣》、《CCA-MSV》中的机体。有着“小说中的ν高达”的称号。', '地球联合军', '海牛', '2019-06-13 15:36:10');
INSERT INTO `products_sets` VALUES ('sets1560411470054admin', '1560411470054admin', '本机是以为白色要塞配备的RX-78-2 高达所剩余的部件（非基准零件）为主而开发出来的陆战用先行量产型MS。', '地球联合军', '陆战型高达', '2019-06-13 15:37:50');
INSERT INTO `products_sets` VALUES ('sets1560411643321admin', '1560411643321admin', 'RX-93（牛高达）是阿姆罗委托月面企业阿纳海姆制造自行设计的新一代New-Type新人类专用高达，出自《机动战士GUNDAM 逆袭的夏亚》。', '地球联合军', '牛高达', '2019-06-13 15:40:43');
INSERT INTO `products_sets` VALUES ('sets1560411756570admin', '1560411756570admin', '00Q是在2010年9月18日上映的《机动战士高达00》的剧场版中出现的机体。00Q GUNDAM 是00R（00RAISER)的后继机体，番号为[T]就是“twin”是专门为觉醒的刹那开发的机体。', '第三联盟', '00Q', '2019-06-13 15:42:36');
INSERT INTO `products_sets` VALUES ('sets1560411862246admin', '1560411862246admin', '涂装为金色的机体，头上的“角”制作成乌冠状（由于独角兽模式下的天线是朝后方向，不同于独角兽和报丧女妖，“角”的意义相对来说会弱一些。）前额部分亦设计成喙状，类似鸟嘴，背部以增设机械臀架装备两个武装战甲DE。', '第三联盟', '菲尼克斯', '2019-06-13 15:44:22');
INSERT INTO `products_sets` VALUES ('sets1560411987234admin', '1560411987234admin', '本机就是在因缘际会之下由阿姆罗驾驶而在GUNDAM历史上留下赫赫之名的初代高达，一提到“高达”这个词，大家首先联想起的想必也是它。', '地球联合军', '高达', '2019-06-13 15:46:27');
INSERT INTO `products_sets` VALUES ('sets1560412161879admin', '1560412161879admin', 'RX-93（牛高达）是阿姆罗委托月面企业阿纳海姆制造自行设计的新一代New-Type新人类专用高达，出自《机动战士GUNDAM 逆袭的夏亚》。', '地球联合军', '牛高达', '2019-06-13 15:49:21');
INSERT INTO `products_sets` VALUES ('sets1560412235536admin', '1560412235536admin', '新吉翁总帅夏亚的机体', '第三联盟', '沙扎比', '2019-06-13 15:50:35');
INSERT INTO `products_sets` VALUES ('sets1560412344091admin', '1560412344091admin', '报丧女妖（Banshee）是一种凯尔特传说中，会预报死亡的女妖精。报丧女妖是机动战士高达独角兽中的机体。本机机师为玛莉妲·库鲁斯、利迪·马瑟纳斯（命运女神模式）。', '奥布', 'Banshee', '2019-06-13 15:52:24');
INSERT INTO `products_sets` VALUES ('sets1560412432872admin', '1560412432872admin', 'MSN-06S 新安洲(Sinanju，シナンジュ)是日本动漫小说作品《机动战士高达UC独角兽》中出现的机动战士(MS)。所属新吉恩军，驾驶员为弗尔·伏朗托， 被称为“赤色彗星”夏亚再世的强悍ACE。', '第三联盟', '新安洲', '2019-06-13 15:53:52');
INSERT INTO `products_sets` VALUES ('sets1560412559546admin', '1560412559546admin', '异端高达红色机，《机动战士高达Seed Astray》 中的机体。 本机是奥布在与地球联合军联合开发机动战士时，盗取地球联合军的机体数据，建造的三台原型Gundam Astray之一。 本机驾驶员为罗·裘尔。', '奥布', '红异端', '2019-06-13 15:55:59');
INSERT INTO `products_sets` VALUES ('sets1560412795078admin', '1560412795078admin', '本机是泰坦斯作为RX-78-2的后继机而极秘密开发的高性能试作型MS。', '奥布', 'Mk-Ⅱ 试作0号机', '2019-06-13 15:59:55');
INSERT INTO `products_sets` VALUES ('sets1560413724165admin', '1560413724165admin', '沙扎比，是由制造方阿纳海姆电子公司制造的机体。基本信息机体番号：MSN-04 驾驶员：夏亚‧阿兹纳布(Char‧Aznable)、 机体名称：サザビ－（日文） 沙扎比（中文） SAZABI（英文），机体类型：NT专用型MS 。', '第三联盟', '沙扎比', '2019-06-13 16:15:24');
INSERT INTO `products_sets` VALUES ('sets1560493012432admin', '1560493012432admin', '沙扎比强化发展而来的重型MS。主武装是与NZ-333型同样的大型浮游感应炮，另外还携带了MEGA光束步枪，裙甲的内部也安装了一对隐藏臂。与沙扎比相比，夜莺的全身都安装了推进器，因此机动力相当优秀。本机曾于小说版《逆袭的夏亚》中登场，作为夏亚的座机，其实质与沙扎比是完全一样的。\r\n', '第三联盟', '夜莺', '2019-06-14 14:16:52');
INSERT INTO `products_sets` VALUES ('sets1560493087967admin', '1560493087967admin', '沙扎比，是由制造方阿纳海姆电子公司制造的机体。基本信息机体番号：MSN-04 驾驶员：夏亚‧阿兹纳布(Char‧Aznable)、 机体名称：サザビ－（日文） 沙扎比（中文） SAZABI（英文），机体类型：NT专用型MS 。', '第三联盟', '沙扎比', '2019-06-14 14:18:07');
INSERT INTO `products_sets` VALUES ('sets1560493694504admin', '1560493694504admin', '本机是奥古和阿纳海姆公司共同制定的“Z计划”所开发制造出来的、最终成为奥古象征的可变型MS，开发代号为“ζガンダム”。', '地球联合军', 'Zeta', '2019-06-14 14:28:14');
INSERT INTO `products_sets` VALUES ('sets1560493801481admin', '1560493801481admin', '兜十藏博士生前为了抵御地狱博士的统治世界的阴谋，耗费15年心血独自于别墅地底秘密所造的战斗机器人。以自锶合金所抽取出来的“光子力”能源做为动力，全身上下以无坚不摧的“超合金Z”包覆而成，号称俱有足以能与美国第七舰队匹敌的实力。', 'ZAFT', '魔神Z', '2019-06-14 14:30:01');
INSERT INTO `products_sets` VALUES ('sets1560493872975admin', '1560493872975admin', '自由高达是ZAFT军在得到地球联合军的高达数据资料后开发的高达中的一架，其出力在突击高达的4倍之上。机体两肩各设一门M100型等离子光束加农炮，腰部还装有两门MMI-M15型电磁炮，加上MA-M20型光束步枪，使本机具有相当强劲的火力。', 'ZAFT', '自由高达', '2019-06-14 14:31:12');
INSERT INTO `products_sets` VALUES ('sets1560493937892admin', '1560493937892admin', '报丧女妖是机动战士高达独角兽中的机体。本机机师为玛莉妲·库鲁斯、利迪·马瑟纳斯（命运女神模式）。', '地球联合军', '报丧女妖', '2019-06-14 14:32:17');
INSERT INTO `products_sets` VALUES ('sets1560494553223admin', '1560494553223admin', '报丧女妖是机动战士高达独角兽中的机体。本机机师为玛莉妲·库鲁斯、利迪·马瑟纳斯（命运女神模式）。', '地球联合军', '报丧女妖', '2019-06-14 14:42:33');
INSERT INTO `products_sets` VALUES ('sets1560509891477admin', '1560509891477admin', '本机就是在因缘际会之下由阿姆罗·雷驾驶的初代高达，是V计划里RX-78系列的二号机，也是GUNDAM史上第一次MS战的参与者（这一设定在《机动战士高达 THE ORIGIN》中被改写，第一次MS间的交战在MS-04布古与RX-77钢加农最初期型之间展开），并在一年战争中后期创造了奇迹般的战果，被吉恩军驾驶员称为“白色恶魔”；然而本机得以称为“最强”的最大原因，却是驾驶员阿姆罗·雷的NT能力在战场上的充分运用。本机在阿·巴瓦·库会战中与夏亚所驾驶的MSN-02 吉恩号交战时双双被毁。', '地球联合军', '初代', '2019-06-14 18:58:11');
INSERT INTO `products_sets` VALUES ('sets1560510271146admin', '1560510271146admin', 'RX-0独角兽高达是《机动战士高达UC》中的机体，宇宙世纪0096年巴纳吉·林克斯误闯入新吉翁残党军和毕斯特财团的交易中，卡帝亚斯·毕斯特将机体托付给巴纳吉。 RX-0独角兽高达装备有安装有被称为“拉普拉斯程式”的特殊OS系统和NT-D系统，拥有独角兽模式和毁灭模式。', '第三联盟', '独角兽', '2019-06-14 19:04:31');
INSERT INTO `products_sets` VALUES ('sets1560645119901admin', '1560645119901admin', '测试', 'MA', '强袭', '2019-06-16 08:31:59');

-- ----------------------------
-- Table structure for series
-- ----------------------------
DROP TABLE IF EXISTS `series`;
CREATE TABLE `series` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `height` int(4) NOT NULL,
  `alter` varchar(255) NOT NULL COMMENT '大师级',
  `bili` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of series
-- ----------------------------
INSERT INTO `series` VALUES ('1', 'PG', '30', '完美比例', '1/60');
INSERT INTO `series` VALUES ('2', 'MG', '18', '大师比例', '1/100');
INSERT INTO `series` VALUES ('3', 'RG', '13', '真实比例', '1/144');
INSERT INTO `series` VALUES ('4', 'HG', '13', '高质量比例', '1/144');
INSERT INTO `series` VALUES ('5', 'SD', '8', '小比例', '1/225');

-- ----------------------------
-- Table structure for shop_car
-- ----------------------------
DROP TABLE IF EXISTS `shop_car`;
CREATE TABLE `shop_car` (
  `id` varchar(255) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `color` int(1) NOT NULL,
  `count` int(5) NOT NULL,
  `createTime` datetime NOT NULL,
  `userId` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_car
-- ----------------------------
INSERT INTO `shop_car` VALUES ('155745472319515573217305931234569363', '1557321730593123456', 'FF-B4', '500.00', '3', '1', '2019-05-10 10:18:43', '63');
INSERT INTO `shop_car` VALUES ('155746284301115573669689181234561263', '1557366968918123456', '测试SD2', '456.00', '2', '1', '2019-05-10 12:34:03', '63');
INSERT INTO `shop_car` VALUES ('155746284936415573671535651234562463', '1557367153565123456', '测试SD2', '789.00', '4', '1', '2019-05-10 12:34:09', '63');
INSERT INTO `shop_car` VALUES ('155746285258615573670543671234562463', '1557367054367123456', 'RX75', '567.00', '4', '1', '2019-05-10 12:34:13', '63');
INSERT INTO `shop_car` VALUES ('155746285631315573669302161234561163', '1557366930216123456', '测试SD1', '369.00', '1', '1', '2019-05-10 12:34:16', '63');
INSERT INTO `shop_car` VALUES ('1557462861273155732205908412345652263', '1557322059084123456', 'G-战机', '1599.00', '2', '1', '2019-05-10 12:34:21', '63');
INSERT INTO `shop_car` VALUES ('15606778282451560510271146admin20164', '1560510271146admin', 'RX-0', '800.00', '1', '1', '2019-06-16 17:37:08', '64');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginName` varchar(50) NOT NULL COMMENT '账号',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '是否是管理员',
  `createTime` datetime NOT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('63', '123456', 'a123456', '0', '2019-05-08 14:12:55');
INSERT INTO `users` VALUES ('64', 'admin', '123456', '1', '2019-05-10 16:44:21');
INSERT INTO `users` VALUES ('65', '111111', 'a123465', '0', '2019-05-12 21:39:58');
INSERT INTO `users` VALUES ('66', 'chaotic5887', 'a123456', '0', '2019-05-13 17:12:30');
INSERT INTO `users` VALUES ('67', '1234567', 'a123456', '0', '2019-05-24 17:23:31');
INSERT INTO `users` VALUES ('69', 'tyloo', '123456', '0', '2019-06-03 12:42:48');
