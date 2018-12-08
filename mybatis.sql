/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-12-08 20:57:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '商品名',
  `price` double(10,2) DEFAULT NULL COMMENT '商品价格',
  `detail` text COMMENT '商品描述',
  `pic` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `createtime` datetime DEFAULT NULL COMMENT '商品生产日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '鞋子', '180.85', '美斯特邦威', 'image', '2018-12-26 20:15:52');
INSERT INTO `items` VALUES ('2', '衣服', '865.89', '匹克', 'iamge', '2018-11-29 20:17:07');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下单用户id',
  `number` varchar(32) NOT NULL COMMENT '订单号',
  `createtime` datetime NOT NULL COMMENT '创建订单时间',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_orders_1` (`user_id`),
  CONSTRAINT `FK_order_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3', '1', '1000010', '2015-02-04 13:22:35', '1');
INSERT INTO `orders` VALUES ('4', '1', '1000011', '2015-02-03 13:22:41', '1');
INSERT INTO `orders` VALUES ('5', '10', '1000012', '2015-02-12 16:13:23', '1');

-- ----------------------------
-- Table structure for ordersdetail
-- ----------------------------
DROP TABLE IF EXISTS `ordersdetail`;
CREATE TABLE `ordersdetail` (
  `id` int(11) NOT NULL,
  `items_num` int(11) NOT NULL COMMENT '购买商品数量',
  `orders_id` int(11) DEFAULT NULL COMMENT '订单id',
  `items_id` int(11) DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`),
  KEY `orders_id` (`orders_id`),
  KEY `items_id` (`items_id`),
  CONSTRAINT `items_id` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_id` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ordersdetail
-- ----------------------------
INSERT INTO `ordersdetail` VALUES ('1', '1', '3', '1');
INSERT INTO `ordersdetail` VALUES ('2', '3', '4', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '王五', '1998-07-01', '女', '萍乡市');
INSERT INTO `user` VALUES ('10', '张三', '2014-07-10', '男', '北京市');
INSERT INTO `user` VALUES ('16', '张小明', '1998-05-21', '男', '河南洛阳');
INSERT INTO `user` VALUES ('22', '陈小明', '1998-03-20', '女', '河南郑州');
INSERT INTO `user` VALUES ('24', '张三疯', '1999-07-12', '男', '河南郑州');
INSERT INTO `user` VALUES ('26', '王五', '1997-03-23', '男', '上饶市');
