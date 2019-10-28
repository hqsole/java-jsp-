/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : store

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2019-06-19 21:04:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('41de3ddcb7e54e79880bf57aa3d1031e', '笔记本电脑');
INSERT INTO `category` VALUES ('93ddbe4426864ea58467fcdd2e985ed2', '小米摄像头');
INSERT INTO `category` VALUES ('9711522363b44c079dc90f4e27e8e32f', '华为手机');
INSERT INTO `category` VALUES ('a9742e2a627d4891b0185fb3bee5ebe2', '耳机');
INSERT INTO `category` VALUES ('b7c86f9bcfb048f690f19843ab98aebe', '平板电脑');
INSERT INTO `category` VALUES ('d8612b50639d4b4da1cfa93d05b4a67d', '小米手机');

-- ----------------------------
-- Table structure for `orderitem`
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemid` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `oid` varchar(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `ordertime` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` varchar(255) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pimage` varchar(255) DEFAULT NULL,
  `pdate` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pflag` int(11) DEFAULT NULL,
  `cid` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('02c139e7201e4a6bbf3699a4b1aab6b6', '小米入门耳机', 'bdf9dd74350945258a379e1908c82a85.jpg', '2019年06月19日 14:29:41', '入门级的耳机体验', '150', '200', '1', null, 'a9742e2a627d4891b0185fb3bee5ebe2');
INSERT INTO `product` VALUES ('0a128cfa7f454601adfd825196249292', '手机+摄像头', '9eeaa56e20f641dcb94d978dc1e9bf46.jpg', '2019年06月19日 09:17:10', '好用，套餐价', '4500', '5000', '1', null, '41de3ddcb7e54e79880bf57aa3d1031e');
INSERT INTO `product` VALUES ('0b735d0f7e5c4f3e8d04030b0dddc6b9', '小米笔记本pro2', '7a1b76524119463db9e707c7b3737dbb.jpg', '2019年06月19日 14:28:17', '有点小贵', '8000', '10000', '1', null, '41de3ddcb7e54e79880bf57aa3d1031e');
INSERT INTO `product` VALUES ('20d8980caf4944a288607b09113883c0', '红米note7', 'f6489e5733a646149c2cbc8dba10f3d0.jpg', '2019年06月19日 14:33:23', '红米，还可以当暖手宝来用', '1600', '2000', '1', null, 'd8612b50639d4b4da1cfa93d05b4a67d');
INSERT INTO `product` VALUES ('2a7782c7605e4f61a1122dcd9e8b0015', '小米笔记本', '070b2cde043148e69036eb5c481ef4a5.jpg', '2019年06月19日 14:25:17', '我比较喜欢的一款', '4800', '5000', '1', null, '41de3ddcb7e54e79880bf57aa3d1031e');
INSERT INTO `product` VALUES ('6d6c57f5ad6542c3bb85653eec9ee118', '红米note8', 'f882ee319e324de28a3e8ea437eecf4c.jpg', '2019年06月19日 14:36:05', '红米中的高端', '1700', '2500', '1', null, '41de3ddcb7e54e79880bf57aa3d1031e');
INSERT INTO `product` VALUES ('75acd4a560c346d599ca42d8ab2cfc2c', '小米头戴式耳机', '015da893800347f5bf0674337817f456.jpg', '2019年06月19日 14:31:24', '耳机中的战斗机', '470', '500', '1', null, '41de3ddcb7e54e79880bf57aa3d1031e');
INSERT INTO `product` VALUES ('7bebcb0997654b2296a155ac803c460a', '小米笔记本pro', 'cac6b6609fb8468a8aabff4bfc0dbc75.jpg', '2019年06月19日 14:26:23', '高端配置', '6000', '8000', '1', null, '41de3ddcb7e54e79880bf57aa3d1031e');
INSERT INTO `product` VALUES ('9d0c99dce67144199ee12e336ba42d45', '小米平板2', 'da8b4420c5194bcda82d0eb6f1ae6e43.jpg', '2019年06月19日 14:37:26', '', '1800', '2000', '1', null, 'b7c86f9bcfb048f690f19843ab98aebe');
INSERT INTO `product` VALUES ('b40d95d370644b538139d2be737294e9', '小米空气净化器', 'd04eaf5d9d054e8caac81d5bcc00692e.jpg', '2019年06月19日 09:15:19', '好用', '15000', '18000', '1', null, '41de3ddcb7e54e79880bf57aa3d1031e');
INSERT INTO `product` VALUES ('f837c58732fe4dc0a9c6f8c5b397c0a7', '小米智能手机', '0cbc5e4e1635406cb2b1e568a35560b5.png', '2019年06月19日 08:41:31', '使用起来很流畅', '2500', '2900', '1', null, '41de3ddcb7e54e79880bf57aa3d1031e');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1f4c9e9a07824f0e828fe3a0bc7372ed', 'xiaobai', '123456', '白小鹏', '234123@qq.com', null, 'male', '2019-06-05');
INSERT INTO `user` VALUES ('50dcdcefea854414b0e893c0af6baf65', 'xiaohei', '123123', '黑子', 'adfadf@qq.com', null, 'male', '2019-06-13');
