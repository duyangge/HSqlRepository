/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : taobaoweb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-12-08 20:57:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `gbrand` varchar(255) DEFAULT NULL,
  `gintroduce` varchar(255) DEFAULT NULL,
  `gprice` double DEFAULT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `items_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `items_id` (`items_id`),
  CONSTRAINT `items_id` FOREIGN KEY (`items_id`) REFERENCES `items` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '1', '男单鞋', '百丽', 'Belle/百丽秋季专柜同款黑色牛皮商务正装男单鞋3UX01CM5', '398', 'images/sheetbandimage/mansheet/mansheet01/big01.png', null);
INSERT INTO `items` VALUES ('2', '1', '皮鞋', '百丽', 'Belle/百丽秋季黑色牛皮男简约商务正装系带舒适德比鞋皮鞋', '488', 'images/sheetbandimage/mansheet/mansheet01/big02.png', null);
INSERT INTO `items` VALUES ('3', '1', '豆豆鞋', '百丽', 'Belle/百丽春专柜同款黑色牛皮革男休闲鞋豆豆鞋3LQ01AM7', '368', 'images/sheetbandimage/mansheet/mansheet01/big03.png', null);
INSERT INTO `items` VALUES ('4', '1', '休闲鞋', '百丽', 'Belle/百丽秋季黑色牛皮男休闲鞋板鞋35702CM7', '428', 'images/sheetbandimage/mansheet/mansheet01/big04.png', null);
INSERT INTO `items` VALUES ('5', '1', '豆豆鞋', '百丽', 'Belle/百丽秋季黑色牛皮男休闲鞋板鞋35702CM7', '548', 'images/sheetbandimage/mansheet/mansheet01/big05.png', null);
INSERT INTO `items` VALUES ('6', '2', 'TEE-CNT恤', '耐克', 'Nike耐克2018年新款男子AS M NSW COUNTRY TEE-CNT恤AQ5189-100', '189', 'images/cloths/na001.png', null);
INSERT INTO `items` VALUES ('7', '2', 'ICON FUTURAT恤', '耐克', 'NIKE耐克2018年新款男子AS M NSW TEE ICON FUTURAT恤696708-10', '199', 'images/cloths/na002.png', null);
INSERT INTO `items` VALUES ('8', '2', 'HBRT恤', '耐克', 'NIKE耐克2018年新款女子AS W NSW TEE CREW JDI SWSH HBRT恤889404-010', '169', 'images/cloths/na003.png', null);
INSERT INTO `items` VALUES ('9', '2', ' HOODY运动衫', '阿迪三叶草', 'adidas Originals阿迪三叶草2018男子TREFOIL HOODY运动衫CX1900', '369', 'images/cloths/na004.png', null);
INSERT INTO `items` VALUES ('10', '2', 'TEE圆领短T恤', '阿迪达斯', 'adidas阿迪达斯2018男子COMM M TEE圆领短T恤CW3589', '169', 'images/cloths/na005.png', null);

-- ----------------------------
-- Table structure for item_brand
-- ----------------------------
DROP TABLE IF EXISTS `item_brand`;
CREATE TABLE `item_brand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `imageSrc` varchar(255) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_brand
-- ----------------------------
INSERT INTO `item_brand` VALUES ('1', '1', 'images/sheetbandimage/mansheet02/01.png');
INSERT INTO `item_brand` VALUES ('2', '1', 'images/sheetbandimage/mansheet02/02.png');
INSERT INTO `item_brand` VALUES ('3', '1', 'images/sheetbandimage/mansheet02/03.png');
INSERT INTO `item_brand` VALUES ('4', '1', 'images/sheetbandimage/mansheet02/04.png');
INSERT INTO `item_brand` VALUES ('5', '1', 'images/sheetbandimage/mansheet02/05.png');
INSERT INTO `item_brand` VALUES ('6', '1', 'images/sheetbandimage/mansheet02/06.png');
INSERT INTO `item_brand` VALUES ('7', '1', 'images/sheetbandimage/mansheet02/07.png');
INSERT INTO `item_brand` VALUES ('8', '1', 'images/sheetbandimage/mansheet02/08.png');
INSERT INTO `item_brand` VALUES ('9', '1', 'images/sheetbandimage/mansheet02/09.png');
INSERT INTO `item_brand` VALUES ('10', '1', 'images/sheetbandimage/mansheet02/10.png');
INSERT INTO `item_brand` VALUES ('11', '2', 'images/sheetbandimage/mansheet/1.png');
INSERT INTO `item_brand` VALUES ('12', '2', 'images/sheetbandimage/mansheet/2.png');
INSERT INTO `item_brand` VALUES ('13', '2', 'images/sheetbandimage/mansheet/3.png');
INSERT INTO `item_brand` VALUES ('14', '2', 'images/sheetbandimage/mansheet/4.png');
INSERT INTO `item_brand` VALUES ('15', '2', 'images/sheetbandimage/mansheet/5.png');
INSERT INTO `item_brand` VALUES ('16', '2', 'images/sheetbandimage/mansheet/6.png');
INSERT INTO `item_brand` VALUES ('17', '2', 'images/sheetbandimage/mansheet/7.png');
INSERT INTO `item_brand` VALUES ('18', '2', 'images/sheetbandimage/mansheet/8.png');
INSERT INTO `item_brand` VALUES ('19', '2', 'images/sheetbandimage/mansheet/9.png');
INSERT INTO `item_brand` VALUES ('20', '2', 'images/sheetbandimage/mansheet/10.png');

-- ----------------------------
-- Table structure for item_cart
-- ----------------------------
DROP TABLE IF EXISTS `item_cart`;
CREATE TABLE `item_cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `gnum` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_cart
-- ----------------------------
INSERT INTO `item_cart` VALUES ('19', '20', '5', '2', '2018-11-04');
INSERT INTO `item_cart` VALUES ('21', '16', '5', '1', '2018-11-04');
INSERT INTO `item_cart` VALUES ('28', '16', '4', '2', '2018-11-07');
INSERT INTO `item_cart` VALUES ('29', '16', '3', '1', '2018-11-07');
INSERT INTO `item_cart` VALUES ('31', '20', '4', '3', '2018-11-14');
INSERT INTO `item_cart` VALUES ('35', '20', '3', '1', '2018-11-16');
INSERT INTO `item_cart` VALUES ('36', '20', '2', '1', '2018-11-16');
INSERT INTO `item_cart` VALUES ('37', '20', '1', '1', '2018-11-16');
INSERT INTO `item_cart` VALUES ('38', '20', '6', '1', '2018-11-22');
INSERT INTO `item_cart` VALUES ('39', '16', '8', '1', '2018-11-22');
INSERT INTO `item_cart` VALUES ('40', '16', '9', '1', '2018-11-22');
INSERT INTO `item_cart` VALUES ('41', '16', '7', '1', '2018-11-22');
INSERT INTO `item_cart` VALUES ('42', '20', '8', '1', '2018-11-22');
INSERT INTO `item_cart` VALUES ('43', '20', '10', '1', '2018-11-22');
INSERT INTO `item_cart` VALUES ('44', '20', '9', '1', '2018-11-22');

-- ----------------------------
-- Table structure for item_clothes
-- ----------------------------
DROP TABLE IF EXISTS `item_clothes`;
CREATE TABLE `item_clothes` (
  `gid` char(5) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `goodname` varchar(255) NOT NULL,
  `goodbrand` varchar(255) NOT NULL,
  `goodintroduce` varchar(255) NOT NULL,
  `goodprice` double(10,0) NOT NULL,
  `goodpricing` double(10,0) NOT NULL,
  `imagesrc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_clothes
-- ----------------------------
INSERT INTO `item_clothes` VALUES ('1', '2', 'TEE-CNT恤', '耐克', 'Nike耐克2018年新款男子AS M NSW COUNTRY TEE-CNT恤AQ5189-100', '189', '220', 'images/cloths/na001.png');
INSERT INTO `item_clothes` VALUES ('2', '2', 'ICON FUTURAT恤', '耐克', 'NIKE耐克2018年新款男子AS M NSW TEE ICON FUTURAT恤696708-104', '199', '299', 'images/cloths/na002.png');
INSERT INTO `item_clothes` VALUES ('3', '2', 'HBRT恤', '耐克', 'NIKE耐克2018年新款女子AS W NSW TEE CREW JDI SWSH HBRT恤889404-010', '138', '169', 'images/cloths/na003.png');
INSERT INTO `item_clothes` VALUES ('4', '2', ' HOODY运动衫', '阿迪三叶草', 'adidas Originals阿迪三叶草2018男子TREFOIL HOODY运动衫CX1900', '369', '599', 'images/cloths/na004.png');
INSERT INTO `item_clothes` VALUES ('5', '2', 'TEE圆领短T恤', '阿迪达斯', 'adidas阿迪达斯2018男子COMM M TEE圆领短T恤CW3589', '108', '169', 'images/cloths/na005.png');

-- ----------------------------
-- Table structure for item_imgintro
-- ----------------------------
DROP TABLE IF EXISTS `item_imgintro`;
CREATE TABLE `item_imgintro` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `itemShowTextType` varchar(255) DEFAULT NULL,
  `itemShowTextIntro` varchar(255) DEFAULT NULL,
  `itemsShowImgSrc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_imgintro
-- ----------------------------
INSERT INTO `item_imgintro` VALUES ('1', '2', 'T恤', '初夏精选', 'images/sheetbandimage/mansheet02/11.png');
INSERT INTO `item_imgintro` VALUES ('2', '2', '休闲鞋', '美丽焕新', 'images/sheetbandimage/mansheet02/h1.png');
INSERT INTO `item_imgintro` VALUES ('3', '2', '耐克', '春夏上新', 'images/sheetbandimage/mansheet02/h2.png');
INSERT INTO `item_imgintro` VALUES ('4', '2', '彪马', '经典由你', 'images/sheetbandimage/mansheet02/h3.png');
INSERT INTO `item_imgintro` VALUES ('5', '2', '阿迪休闲', '酷感升级', 'images/sheetbandimage/mansheet02/h4.png');
INSERT INTO `item_imgintro` VALUES ('6', '2', '三叶草', '不止一面造型', 'images/sheetbandimage/mansheet02/h5.png');
INSERT INTO `item_imgintro` VALUES ('7', '2', '夹克', '春款上市', 'images/sheetbandimage/mansheet02/h6.png');
INSERT INTO `item_imgintro` VALUES ('8', '1', '森达', '潮流新品特惠', 'images/sheetimage/mansheetimage/bigsheet.png');
INSERT INTO `item_imgintro` VALUES ('9', '1', '百丽', '专柜同款', 'images/sheetimage/mansheetimage/mansheet1.png');
INSERT INTO `item_imgintro` VALUES ('10', '1', '他她', '型男首选', 'images/sheetimage/mansheetimage/mansheet2.png');
INSERT INTO `item_imgintro` VALUES ('11', '1', '暇步士', '美式休闲时尚', 'images/sheetimage/mansheetimage/mansheet3.png');
INSERT INTO `item_imgintro` VALUES ('12', '1', '拔佳', '春季出游潮搭', 'images/sheetimage/mansheetimage/mansheet4.png');
INSERT INTO `item_imgintro` VALUES ('13', '1', '天美意', '焕季潮流', 'images/sheetimage/mansheetimage/mansheet6.png');
INSERT INTO `item_imgintro` VALUES ('14', '1', '卡特', '潮品工装', 'images/sheetimage/mansheetimage/mansheet5.png');

-- ----------------------------
-- Table structure for item_orders
-- ----------------------------
DROP TABLE IF EXISTS `item_orders`;
CREATE TABLE `item_orders` (
  `rid` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `date` datetime DEFAULT NULL COMMENT '订单时间',
  `allMoney` double DEFAULT NULL COMMENT '订单总价',
  `orderStatus` int(11) DEFAULT '0' COMMENT '付款状态：1：付款；0：未付款',
  `uid` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `gnum` int(11) DEFAULT NULL COMMENT '商品总数量',
  PRIMARY KEY (`rid`),
  KEY `FKn367werbny7e0ty1mcssywslp` (`uid`),
  CONSTRAINT `FKn367werbny7e0ty1mcssywslp` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_orders
-- ----------------------------
INSERT INTO `item_orders` VALUES ('1', '2018-11-22 21:09:00', '369', '0', '0000000020', '1');
INSERT INTO `item_orders` VALUES ('2', '2018-11-22 21:16:46', '369', '0', '0000000020', '1');
INSERT INTO `item_orders` VALUES ('3', '2018-11-22 21:18:25', '369', '0', '0000000020', '1');
INSERT INTO `item_orders` VALUES ('4', '2018-11-22 21:19:59', '369', '0', '0000000020', '1');
INSERT INTO `item_orders` VALUES ('5', '2018-12-07 20:26:57', '169', '0', '0000000020', '1');

-- ----------------------------
-- Table structure for item_ordersdetail
-- ----------------------------
DROP TABLE IF EXISTS `item_ordersdetail`;
CREATE TABLE `item_ordersdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemsNum` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `items_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_id` (`orders_id`),
  KEY `FKnpo0d577otvusgjp8fc7b8e8m` (`items_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_ordersdetail
-- ----------------------------

-- ----------------------------
-- Table structure for item_shippingaddress
-- ----------------------------
DROP TABLE IF EXISTS `item_shippingaddress`;
CREATE TABLE `item_shippingaddress` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `consignee` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `shippingaddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_shippingaddress
-- ----------------------------

-- ----------------------------
-- Table structure for item_type
-- ----------------------------
DROP TABLE IF EXISTS `item_type`;
CREATE TABLE `item_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `titleTop` varchar(255) DEFAULT NULL,
  `more` varchar(255) NOT NULL,
  `brandTitleOne` varchar(255) DEFAULT NULL,
  `brandTitleSecond` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_type
-- ----------------------------
INSERT INTO `item_type` VALUES ('1', '男鞋馆 MEN\'SHOES', 'MORE', '商务鞋', '休闲鞋');
INSERT INTO `item_type` VALUES ('2', '运动/户外馆', 'MORE', '运动鞋', '运动服');

-- ----------------------------
-- Table structure for man_show
-- ----------------------------
DROP TABLE IF EXISTS `man_show`;
CREATE TABLE `man_show` (
  `id` varchar(255) NOT NULL,
  `imagesrc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of man_show
-- ----------------------------
INSERT INTO `man_show` VALUES ('m01', 'images/sheetbandimage/mansheet/1.png');
INSERT INTO `man_show` VALUES ('m02', 'images/sheetbandimage/mansheet/2.png');
INSERT INTO `man_show` VALUES ('m03', 'images/sheetbandimage/mansheet/3.png');
INSERT INTO `man_show` VALUES ('m04', 'images/sheetbandimage/mansheet/4.png');
INSERT INTO `man_show` VALUES ('m05', 'images/sheetbandimage/mansheet/5.png');
INSERT INTO `man_show` VALUES ('m06', 'images/sheetbandimage/mansheet/6.png');
INSERT INTO `man_show` VALUES ('m07', 'images/sheetbandimage/mansheet/7.png');
INSERT INTO `man_show` VALUES ('m08', 'images/sheetbandimage/mansheet/8.png');
INSERT INTO `man_show` VALUES ('m09', 'images/sheetbandimage/mansheet/9.png');
INSERT INTO `man_show` VALUES ('m10', 'images/sheetbandimage/mansheet/10.png');

-- ----------------------------
-- Table structure for messageboard
-- ----------------------------
DROP TABLE IF EXISTS `messageboard`;
CREATE TABLE `messageboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `time` char(25) NOT NULL DEFAULT '0000-00-00',
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='留言板';

-- ----------------------------
-- Records of messageboard
-- ----------------------------
INSERT INTO `messageboard` VALUES ('7', '黄信胜', '使用框架标签的好处', '2018-6-23 22:33:54', '你知道吗？');
INSERT INTO `messageboard` VALUES ('13', '黄信胜', '留言墙', '2018-6-23 23:22:55', '');
INSERT INTO `messageboard` VALUES ('14', '黄信胜', '路演', '2018-6-23 23:24:02', '');
INSERT INTO `messageboard` VALUES ('15', '黄信胜', '课程设计', '2018-6-25 10:41:41', '我们在2424实习');
INSERT INTO `messageboard` VALUES ('16', '黄信胜', '验证码在注册上使用的好处', '2018-6-26 18:01:27', '可以防止恶意注册');
INSERT INTO `messageboard` VALUES ('17', 'tom', '密码设置', '2018-6-27 11:51:49', '我要修改密码');
INSERT INTO `messageboard` VALUES ('18', 'guess27231', '你的购物功能可以更加完善吗？', '2018-6-27 19:34:38', '加入购物车列表中，在追加一个状态，未发货，已发货，下订单时，需要填写详细订单，真实姓名，收货地址，联系电话，邮箱地址');
INSERT INTO `messageboard` VALUES ('19', 'guess92241', '你的购物功能可以更加完善吗？', '2018-6-27 19:36:11', '加入购物车列表中，在追加一个状态，未发货，已发货，下订单时，需要填写详细订单，真实姓名，收货地址，联系电话，邮箱地址');
INSERT INTO `messageboard` VALUES ('20', 'guess37601', '立即下单', '2018-6-27 19:37:14', '立即下单需要填写详细资料');
INSERT INTO `messageboard` VALUES ('21', 'guess33521', '立即下单', '2018-6-27 19:37:52', '立即下单需要填写详细资料');
INSERT INTO `messageboard` VALUES ('22', 'guess32241', '留言板的追加留言', '2018-6-27 19:38:44', '留言板可以回复某个人的留言吗');
INSERT INTO `messageboard` VALUES ('23', 'guess97961', '测试回复留言', '2018-6-27 19:43:05', '为了测试输出');
INSERT INTO `messageboard` VALUES ('24', 'guess62251', '测试回复留言', '2018-6-27 19:45:23', '为了测试输出');
INSERT INTO `messageboard` VALUES ('25', 'guess22971', '测试', '2018-6-27 19:46:28', 'test');
INSERT INTO `messageboard` VALUES ('26', '黄信胜', '添加中行失败', '2018-7-3 17:03:45', '有人遇到过这样的问题吗？');

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `ordernumber` int(25) NOT NULL,
  `id` char(10) NOT NULL,
  `goodnumber` int(10) NOT NULL,
  `goodtime` datetime NOT NULL,
  KEY `ordernumber` (`ordernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES ('16160', 'ms002', '2', '2018-06-29 13:40:07');
INSERT INTO `orderdetails` VALUES ('15294', 'ms002', '14', '2018-06-29 14:02:55');
INSERT INTO `orderdetails` VALUES ('11587', 'ms005', '1', '2018-06-29 16:19:21');
INSERT INTO `orderdetails` VALUES ('13317', 'ms002', '1', '2018-06-29 17:30:33');
INSERT INTO `orderdetails` VALUES ('16048', 'ms004', '1', '2018-07-03 10:22:19');
INSERT INTO `orderdetails` VALUES ('14926', 'ms003', '1', '2018-07-03 19:56:09');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(25) NOT NULL DEFAULT '',
  `mail` varchar(25) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0000000016', 'hxs', '123456', '2380110794@qq.com');
INSERT INTO `user` VALUES ('0000000017', 'pxxy', '123456', '2380110794@qq.com');
INSERT INTO `user` VALUES ('0000000020', '1', '000000', '544619865@qq.com');

-- ----------------------------
-- Table structure for writedetail
-- ----------------------------
DROP TABLE IF EXISTS `writedetail`;
CREATE TABLE `writedetail` (
  `ordernumber` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`ordernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of writedetail
-- ----------------------------
INSERT INTO `writedetail` VALUES ('11649', '黄信胜', '134265084901234', '13426508490', '江西省萍乡市安源区萍乡学院', '颜色百家黑', '2380110794@qq.com');
INSERT INTO `writedetail` VALUES ('14882', '黄信胜', '123426504890', '13426508490', '江西省萍乡市安源区萍乡学院', '颜色百家黑', '2380110794@qq.com');
