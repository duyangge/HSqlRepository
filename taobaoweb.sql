/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : taobaoweb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-01-07 12:27:39
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
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `activity_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '1', '男单鞋', '百丽', 'Belle/百丽秋季专柜同款黑色牛皮商务正装男单鞋3UX01CM5', '398', 'images/sheetbandimage/mansheet/mansheet01/big01.png', 'hxs', '2018-12-01 15:25:35', 'hxs', '2019-01-04 15:24:34', '199', '冬季特价');
INSERT INTO `items` VALUES ('2', '1', '皮鞋', '百丽', 'Belle/百丽秋季黑色牛皮男简约商务正装系带舒适德比鞋皮鞋', '488', 'images/sheetbandimage/mansheet/mansheet01/big02.png', 'hxs', '2018-12-01 15:25:41', 'hxs', '2019-01-04 15:24:38', '399', '冬季特价');
INSERT INTO `items` VALUES ('3', '1', '豆豆鞋', '百丽', 'Belle/百丽春专柜同款黑色牛皮革男休闲鞋豆豆鞋3LQ01AM7', '368', 'images/sheetbandimage/mansheet/mansheet01/big03.png', 'hxs', '2018-12-01 15:25:46', 'hxs', '2019-01-04 15:24:41', '258', '清仓甩卖');
INSERT INTO `items` VALUES ('4', '1', '休闲鞋', '百丽', 'Belle/百丽秋季黑色牛皮男休闲鞋板鞋35702CM7', '428', 'images/sheetbandimage/mansheet/mansheet01/big04.png', 'hxs', '2018-12-01 15:25:49', 'hxs', '2019-01-04 15:24:44', '228', '清仓甩卖');
INSERT INTO `items` VALUES ('5', '1', '豆豆鞋', '百丽', 'Belle/百丽秋季黑色牛皮男休闲鞋板鞋35702CM7', '548', 'images/sheetbandimage/mansheet/mansheet01/big05.png', 'hxs', '2018-12-01 15:25:52', 'hxs', '2019-01-04 15:24:48', '348', '清仓甩卖');
INSERT INTO `items` VALUES ('6', '2', 'TEE-CNT恤', '耐克', 'Nike耐克2018年新款男子AS M NSW COUNTRY TEE-CNT恤AQ5189-100', '189', 'images/cloths/na001.png', 'hxs', '2018-12-01 15:25:56', 'hxs', '2019-01-04 15:24:51', '99', '清仓甩卖');
INSERT INTO `items` VALUES ('7', '2', 'ICON FUTURAT恤', '耐克', 'NIKE耐克2018年新款男子AS M NSW TEE ICON FUTURAT恤696708-10', '199', 'images/cloths/na002.png', 'hxs', '2018-12-01 15:26:00', 'hxs', '2019-01-04 15:24:54', '129', '冬季特价');
INSERT INTO `items` VALUES ('8', '2', 'HBRT恤', '耐克', 'NIKE耐克2018年新款女子AS W NSW TEE CREW JDI SWSH HBRT恤889404-010', '169', 'images/cloths/na003.png', 'hxs', '2018-12-01 15:26:03', 'hxs', '2019-01-04 15:24:57', '129', '清仓特价');
INSERT INTO `items` VALUES ('9', '2', ' HOODY运动衫', '阿迪三叶草', 'adidas Originals阿迪三叶草2018男子TREFOIL HOODY运动衫CX1900', '369', 'images/cloths/na004.png', 'hxs', '2018-12-01 15:26:06', 'hxs', '2019-01-04 15:24:59', '225', '新春上市');
INSERT INTO `items` VALUES ('10', '2', 'TEE圆领短T恤', '阿迪达斯', 'adidas阿迪达斯2018男子COMM M TEE圆领短T恤CW3589', '169', 'images/cloths/na005.png', 'hxs', '2018-12-01 15:26:09', 'hxs', '2019-01-04 15:25:01', '99', '新春上市');

-- ----------------------------
-- Table structure for item_brand
-- ----------------------------
DROP TABLE IF EXISTS `item_brand`;
CREATE TABLE `item_brand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `imageSrc` varchar(255) NOT NULL,
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_brand
-- ----------------------------
INSERT INTO `item_brand` VALUES ('1', '1', 'images/sheetbandimage/mansheet02/01.png', 'hxs', '2019-01-05 16:19:26', 'hxs', '2019-01-05 16:19:34');
INSERT INTO `item_brand` VALUES ('2', '1', 'images/sheetbandimage/mansheet02/02.png', 'hxs', '2019-01-05 16:20:57', 'hxs', '2019-01-05 16:22:41');
INSERT INTO `item_brand` VALUES ('3', '1', 'images/sheetbandimage/mansheet02/03.png', 'hxs', '2019-01-05 16:21:00', 'hxs', '2019-01-05 16:22:39');
INSERT INTO `item_brand` VALUES ('4', '1', 'images/sheetbandimage/mansheet02/04.png', 'hxs', '2019-01-05 16:21:04', 'hxs', '2019-01-05 16:22:36');
INSERT INTO `item_brand` VALUES ('5', '1', 'images/sheetbandimage/mansheet02/05.png', 'hxs', '2019-01-05 16:21:06', 'hxs', '2019-01-05 16:22:34');
INSERT INTO `item_brand` VALUES ('6', '1', 'images/sheetbandimage/mansheet02/06.png', 'hxs', '2019-01-05 16:21:09', 'hxs', '2019-01-05 16:22:32');
INSERT INTO `item_brand` VALUES ('7', '1', 'images/sheetbandimage/mansheet02/07.png', 'hxs', '2019-01-23 16:21:12', 'hxs', '2019-01-05 16:22:28');
INSERT INTO `item_brand` VALUES ('8', '1', 'images/sheetbandimage/mansheet02/08.png', 'hxs', '2019-01-05 16:21:15', 'hxs', '2019-01-05 16:22:24');
INSERT INTO `item_brand` VALUES ('9', '1', 'images/sheetbandimage/mansheet02/09.png', 'hxs', '2019-01-05 16:21:18', 'hxs', '2019-01-05 16:22:20');
INSERT INTO `item_brand` VALUES ('10', '1', 'images/sheetbandimage/mansheet02/10.png', 'hxs', '2019-01-05 16:21:20', 'hxs', '2019-01-05 16:22:17');
INSERT INTO `item_brand` VALUES ('11', '2', 'images/sheetbandimage/mansheet/1.png', 'hxs', '2019-01-05 16:21:22', 'hxs', '2019-01-05 16:22:13');
INSERT INTO `item_brand` VALUES ('12', '2', 'images/sheetbandimage/mansheet/2.png', 'hxs', '2019-01-05 16:21:26', 'hxs', '2019-01-05 16:22:11');
INSERT INTO `item_brand` VALUES ('13', '2', 'images/sheetbandimage/mansheet/3.png', 'hxs', '2019-01-05 16:21:29', 'hxs', '2019-01-05 16:22:08');
INSERT INTO `item_brand` VALUES ('14', '2', 'images/sheetbandimage/mansheet/4.png', 'hxs', '2019-01-05 16:21:33', 'hxs', '2019-01-05 16:22:06');
INSERT INTO `item_brand` VALUES ('15', '2', 'images/sheetbandimage/mansheet/5.png', 'hxs', '2019-01-05 16:21:36', 'hxs', '2019-01-05 16:22:04');
INSERT INTO `item_brand` VALUES ('16', '2', 'images/sheetbandimage/mansheet/6.png', 'hxs', '2019-01-05 16:21:38', 'hxs', '2019-01-05 16:22:01');
INSERT INTO `item_brand` VALUES ('17', '2', 'images/sheetbandimage/mansheet/7.png', 'hxs', '2019-01-05 16:21:44', 'hxs', '2019-01-05 16:21:58');
INSERT INTO `item_brand` VALUES ('18', '2', 'images/sheetbandimage/mansheet/8.png', 'hxs', '2019-01-05 16:21:47', 'hxs', '2019-01-05 16:21:56');
INSERT INTO `item_brand` VALUES ('19', '2', 'images/sheetbandimage/mansheet/9.png', 'hxs', '2019-01-05 16:21:49', 'hxs', '2019-01-05 16:21:53');
INSERT INTO `item_brand` VALUES ('20', '2', 'images/sheetbandimage/mansheet/10.png', 'hxs', null, 'hxs', null);

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
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_cart
-- ----------------------------
INSERT INTO `item_cart` VALUES ('96', '16', '10', '1', '2019-01-05', 'hxs', '2019-01-05 21:35:50', 'hxs', '2019-01-05 21:35:50');
INSERT INTO `item_cart` VALUES ('101', '22', '5', '1', '2019-01-06', '黄金', '2019-01-06 14:53:12', '黄金', '2019-01-06 15:04:18');
INSERT INTO `item_cart` VALUES ('102', '22', '8', '1', '2019-01-06', '黄金', '2019-01-06 14:53:20', '黄金', '2019-01-06 14:58:08');
INSERT INTO `item_cart` VALUES ('106', '23', '3', '1', '2019-01-06', '黄飞鸿', '2019-01-06 15:14:05', '黄飞鸿', '2019-01-06 15:14:05');
INSERT INTO `item_cart` VALUES ('111', '16', '9', '1', '2019-01-06', '黄信胜', '2019-01-06 19:50:45', '黄信胜', '2019-01-06 19:50:45');

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
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_imgintro
-- ----------------------------
INSERT INTO `item_imgintro` VALUES ('1', '2', 'T恤', '初夏精选', 'images/sheetbandimage/mansheet02/11.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('2', '2', '休闲鞋', '美丽焕新', 'images/sheetbandimage/mansheet02/h1.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('3', '2', '耐克', '春夏上新', 'images/sheetbandimage/mansheet02/h2.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('4', '2', '彪马', '经典由你', 'images/sheetbandimage/mansheet02/h3.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('5', '2', '阿迪休闲', '酷感升级', 'images/sheetbandimage/mansheet02/h4.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('6', '2', '三叶草', '不止一面造型', 'images/sheetbandimage/mansheet02/h5.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('7', '2', '夹克', '春款上市', 'images/sheetbandimage/mansheet02/h6.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('8', '1', '森达', '潮流新品特惠', 'images/sheetimage/mansheetimage/bigsheet.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('9', '1', '百丽', '专柜同款', 'images/sheetimage/mansheetimage/mansheet1.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('10', '1', '他她', '型男首选', 'images/sheetimage/mansheetimage/mansheet2.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('11', '1', '暇步士', '美式休闲时尚', 'images/sheetimage/mansheetimage/mansheet3.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('12', '1', '拔佳', '春季出游潮搭', 'images/sheetimage/mansheetimage/mansheet4.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('13', '1', '天美意', '焕季潮流', 'images/sheetimage/mansheetimage/mansheet6.png', null, null, null, null);
INSERT INTO `item_imgintro` VALUES ('14', '1', '卡特', '潮品工装', 'images/sheetimage/mansheetimage/mansheet5.png', null, null, null, null);

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
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `FKn367werbny7e0ty1mcssywslp` (`uid`),
  CONSTRAINT `FKn367werbny7e0ty1mcssywslp` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_orders
-- ----------------------------
INSERT INTO `item_orders` VALUES ('62', '2019-01-06 19:16:31', '428', '0', '0000000016', '1', '黄信胜', '2019-01-06 19:16:31', '黄信胜', '2019-01-06 19:16:31');
INSERT INTO `item_orders` VALUES ('63', '2019-01-06 19:43:56', '369', '0', '0000000016', '1', '黄信胜', '2019-01-06 19:43:56', '黄信胜', '2019-01-06 19:43:56');
INSERT INTO `item_orders` VALUES ('64', '2019-01-06 19:44:00', '169', '0', '0000000016', '1', '黄信胜', '2019-01-06 19:44:00', '黄信胜', '2019-01-06 19:44:00');
INSERT INTO `item_orders` VALUES ('65', '2019-01-06 19:44:05', '597', '0', '0000000016', '3', '黄信胜', '2019-01-06 19:44:05', '黄信胜', '2019-01-06 19:44:05');
INSERT INTO `item_orders` VALUES ('66', '2019-01-06 19:44:10', '548', '0', '0000000016', '1', '黄信胜', '2019-01-06 19:44:10', '黄信胜', '2019-01-06 19:44:10');
INSERT INTO `item_orders` VALUES ('67', '2019-01-06 19:44:14', '796', '0', '0000000016', '2', '黄信胜', '2019-01-06 19:44:14', '黄信胜', '2019-01-06 19:44:14');

-- ----------------------------
-- Table structure for item_ordersdetail
-- ----------------------------
DROP TABLE IF EXISTS `item_ordersdetail`;
CREATE TABLE `item_ordersdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemsNum` int(11) DEFAULT NULL,
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `ordersId` int(11) DEFAULT NULL,
  `itemsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrkovubmi6mgjn93wug49tos62` (`ordersId`),
  KEY `FKretxjyn84e8f22k71jcpswh7i` (`itemsId`),
  CONSTRAINT `FKretxjyn84e8f22k71jcpswh7i` FOREIGN KEY (`itemsId`) REFERENCES `items` (`gid`),
  CONSTRAINT `FKrkovubmi6mgjn93wug49tos62` FOREIGN KEY (`ordersId`) REFERENCES `item_orders` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_ordersdetail
-- ----------------------------
INSERT INTO `item_ordersdetail` VALUES ('53', '1', '黄信胜', '2019-01-06 19:16:32', '黄信胜', '2019-01-06 19:16:32', '62', '4');
INSERT INTO `item_ordersdetail` VALUES ('54', '1', '黄信胜', '2019-01-06 19:43:56', '黄信胜', '2019-01-06 19:43:56', '63', '9');
INSERT INTO `item_ordersdetail` VALUES ('55', '1', '黄信胜', '2019-01-06 19:44:01', '黄信胜', '2019-01-06 19:44:01', '64', '8');
INSERT INTO `item_ordersdetail` VALUES ('56', '3', '黄信胜', '2019-01-06 19:44:05', '黄信胜', '2019-01-06 19:44:05', '65', '7');
INSERT INTO `item_ordersdetail` VALUES ('57', '1', '黄信胜', '2019-01-06 19:44:10', '黄信胜', '2019-01-06 19:44:10', '66', '5');
INSERT INTO `item_ordersdetail` VALUES ('58', '2', '黄信胜', '2019-01-06 19:44:14', '黄信胜', '2019-01-06 19:44:14', '67', '1');

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
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_shippingaddress
-- ----------------------------
INSERT INTO `item_shippingaddress` VALUES ('14', '16', '黄先生', '13426508490', '335500', '红色帽子', '江西省萍乡市安源区', 'hxs', '2019-01-06 12:11:06', 'hxs', '2019-01-06 12:11:12');
INSERT INTO `item_shippingaddress` VALUES ('15', '22', '黄金', '13177513521', '335500', '黑色', '江西省萍乡市安源区', '黄金', '2019-01-06 14:59:01', '黄金', '2019-01-06 14:59:01');

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
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_type
-- ----------------------------
INSERT INTO `item_type` VALUES ('1', '男鞋馆 MEN\'SHOES', 'MORE', '商务鞋', '休闲鞋', 'hxs', '2019-01-05 16:24:09', 'hxs', '2019-01-05 16:24:26');
INSERT INTO `item_type` VALUES ('2', '运动/户外馆', 'MORE', '运动鞋', '运动服', 'hxs', '2019-01-05 16:24:14', 'hxs', '2019-01-05 16:24:29');

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
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `mail` varchar(25) NOT NULL,
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0000000016', '黄信胜', '4QrcOUm6Wau+VuBX8g+IPg==', '2380110794@qq.com', '黄信胜', '2019-01-06 14:17:24', '黄信胜', '2019-01-06 14:17:31');
INSERT INTO `user` VALUES ('0000000020', '1', '4QrcOUm6Wau+VuBX8g+IPg==', '544619865@qq.com', '1', '2019-01-06 14:17:36', '1', '2019-01-06 14:17:40');
INSERT INTO `user` VALUES ('0000000021', '小王', '4QrcOUm6Wau+VuBX8g+IPg==', '2380110794@qq.com', '小王', '2019-01-06 14:47:11', '小王', '2019-01-06 14:47:11');
INSERT INTO `user` VALUES ('0000000022', '黄金', '4QrcOUm6Wau+VuBX8g+IPg==', '2380110794@qq.com', '黄金', '2019-01-06 14:52:44', '黄金', '2019-01-06 14:52:44');
INSERT INTO `user` VALUES ('0000000028', 'huang', '4QrcOUm6Wau+VuBX8g+IPg==', '12343265@qq.com', 'huang', '2019-01-06 15:35:12', 'huang', '2019-01-06 15:35:12');

-- ----------------------------
-- Table structure for user_message
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `qq` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `questionType` int(11) DEFAULT NULL,
  `created_user` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(255) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_message
-- ----------------------------
