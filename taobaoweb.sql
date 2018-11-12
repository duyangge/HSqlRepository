/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : taobaoweb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-11-11 14:20:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clothes
-- ----------------------------
DROP TABLE IF EXISTS `clothes`;
CREATE TABLE `clothes` (
  `id` char(5) NOT NULL,
  `goodname` varchar(255) NOT NULL,
  `goodbrand` varchar(255) NOT NULL,
  `goodintroduce` varchar(255) NOT NULL,
  `goodprice` double(10,0) NOT NULL,
  `goodpricing` double(10,0) NOT NULL,
  `imagesrc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clothes
-- ----------------------------
INSERT INTO `clothes` VALUES ('na001', 'TEE-CNT恤', '耐克', 'Nike耐克2018年新款男子AS M NSW COUNTRY TEE-CNT恤AQ5189-100', '189', '220', 'images/cloths/na001.png');
INSERT INTO `clothes` VALUES ('na002', 'ICON FUTURAT恤', '耐克', 'NIKE耐克2018年新款男子AS M NSW TEE ICON FUTURAT恤696708-104', '199', '299', 'images/cloths/na002.png');
INSERT INTO `clothes` VALUES ('na003', 'HBRT恤', '耐克', 'NIKE耐克2018年新款女子AS W NSW TEE CREW JDI SWSH HBRT恤889404-010', '138', '169', 'images/cloths/na003.png');
INSERT INTO `clothes` VALUES ('na004', ' HOODY运动衫', '阿迪三叶草', 'adidas Originals阿迪三叶草2018男子TREFOIL HOODY运动衫CX1900', '369', '599', 'images/cloths/na004.png');
INSERT INTO `clothes` VALUES ('na005', 'TEE圆领短T恤', '阿迪达斯', 'adidas阿迪达斯2018男子COMM M TEE圆领短T恤CW3589', '108', '169', 'images/cloths/na005.png');

-- ----------------------------
-- Table structure for goodorder
-- ----------------------------
DROP TABLE IF EXISTS `goodorder`;
CREATE TABLE `goodorder` (
  `ordernumber` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`ordernumber`)
) ENGINE=InnoDB AUTO_INCREMENT=16161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodorder
-- ----------------------------
INSERT INTO `goodorder` VALUES ('11587', 'tom');
INSERT INTO `goodorder` VALUES ('13317', 'user');
INSERT INTO `goodorder` VALUES ('16160', '黄信胜');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` char(10) NOT NULL DEFAULT '',
  `goodname` varchar(25) NOT NULL DEFAULT '',
  `goodbrand` varchar(20) NOT NULL DEFAULT '',
  `goodintroduce` varchar(255) NOT NULL DEFAULT '',
  `goodprice` double(5,1) NOT NULL DEFAULT '0.0',
  `goodpricing` double(5,1) NOT NULL,
  `imagesrc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('ms001', '豆豆鞋', '百丽', 'Belle/百丽春专柜同款黑色牛皮革男休闲鞋豆豆鞋3LQ01AM7', '368.0', '999.0', 'images/sheetbandimage/mansheet/mansheet01/big01.png');
INSERT INTO `goods` VALUES ('ms002', '男单鞋', '百丽', 'Belle/百丽秋季专柜同款黑色牛皮商务正装男单鞋3UX01CM5', '398.0', '1080.0', 'images/sheetbandimage/mansheet/mansheet01/big02.png');
INSERT INTO `goods` VALUES ('ms003', '皮鞋', '百丽', 'Belle/百丽秋季黑色牛皮男简约商务正装系带舒适德比鞋皮鞋', '488.0', '1220.0', 'images/sheetbandimage/mansheet/mansheet01/big03.png');
INSERT INTO `goods` VALUES ('ms004', '豆豆鞋', '百丽', 'Belle/百丽春专柜同款黑色牛皮革男休闲鞋豆豆鞋3LQ01AM7', '368.0', '999.0', 'images/sheetbandimage/mansheet/mansheet01/big04.png');
INSERT INTO `goods` VALUES ('ms005', '休闲鞋', '百丽', 'Belle/百丽秋季黑色牛皮男休闲鞋板鞋35702CM7', '428.0', '999.0', 'images/sheetbandimage/mansheet/mansheet01/big05.png');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_cart
-- ----------------------------
INSERT INTO `item_cart` VALUES ('19', '20', '5', '2', '2018-11-04');
INSERT INTO `item_cart` VALUES ('21', '16', '5', '1', '2018-11-04');
INSERT INTO `item_cart` VALUES ('28', '16', '4', '1', '2018-11-07');
INSERT INTO `item_cart` VALUES ('29', '16', '3', '1', '2018-11-07');
INSERT INTO `item_cart` VALUES ('30', '16', '2', '1', '2018-11-07');

-- ----------------------------
-- Table structure for item_shoe
-- ----------------------------
DROP TABLE IF EXISTS `item_shoe`;
CREATE TABLE `item_shoe` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) DEFAULT NULL,
  `gbrand` varchar(255) DEFAULT NULL,
  `gintroduce` varchar(255) DEFAULT NULL,
  `gprice` double DEFAULT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `cgid` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `FK7c2mp24i1d0j4xj9u3ubwsesq` (`cgid`),
  CONSTRAINT `FK7c2mp24i1d0j4xj9u3ubwsesq` FOREIGN KEY (`cgid`) REFERENCES `item_cart` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_shoe
-- ----------------------------
INSERT INTO `item_shoe` VALUES ('1', '男单鞋', '百丽', 'Belle/百丽秋季专柜同款黑色牛皮商务正装男单鞋3UX01CM5', '398', 'images/sheetbandimage/mansheet/mansheet01/big01.png', null);
INSERT INTO `item_shoe` VALUES ('2', '皮鞋', '百丽', 'Belle/百丽秋季黑色牛皮男简约商务正装系带舒适德比鞋皮鞋', '488', 'images/sheetbandimage/mansheet/mansheet01/big02.png', null);
INSERT INTO `item_shoe` VALUES ('3', '豆豆鞋', '百丽', 'Belle/百丽春专柜同款黑色牛皮革男休闲鞋豆豆鞋3LQ01AM7', '368', 'images/sheetbandimage/mansheet/mansheet01/big03.png', null);
INSERT INTO `item_shoe` VALUES ('4', '休闲鞋', '百丽', 'Belle/百丽秋季黑色牛皮男休闲鞋板鞋35702CM7', '428', 'images/sheetbandimage/mansheet/mansheet01/big04.png', null);
INSERT INTO `item_shoe` VALUES ('5', '豆豆鞋', '百丽', 'Belle/百丽秋季黑色牛皮男休闲鞋板鞋35702CM7', '548', 'images/sheetbandimage/mansheet/mansheet01/big05.png', null);

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
-- Table structure for man_show_imgtext
-- ----------------------------
DROP TABLE IF EXISTS `man_show_imgtext`;
CREATE TABLE `man_show_imgtext` (
  `id` int(11) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL,
  `img_text` varchar(255) NOT NULL,
  `img_intro` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of man_show_imgtext
-- ----------------------------
INSERT INTO `man_show_imgtext` VALUES ('1', 'images/sheetimage/mansheetimage/bigsheet.png', '森达', '潮流新品特惠');
INSERT INTO `man_show_imgtext` VALUES ('2', 'images/sheetimage/mansheetimage/mansheet1.png', '百丽', '专柜同款');
INSERT INTO `man_show_imgtext` VALUES ('3', 'images/sheetimage/mansheetimage/mansheet2.png', '他她', '型男首选');
INSERT INTO `man_show_imgtext` VALUES ('4', 'images/sheetimage/mansheetimage/mansheet3.png', 'images/sheetimage/mansheetimage/mansheet3.png', '美式休闲时尚');
INSERT INTO `man_show_imgtext` VALUES ('5', 'images/sheetimage/mansheetimage/mansheet4.png', '拔佳', '春季出游潮搭');
INSERT INTO `man_show_imgtext` VALUES ('6', 'images/sheetimage/mansheetimage/mansheet6.png', '天美意', '焕季潮流');

-- ----------------------------
-- Table structure for man_show_title
-- ----------------------------
DROP TABLE IF EXISTS `man_show_title`;
CREATE TABLE `man_show_title` (
  `id` int(11) NOT NULL,
  `title_top` varchar(255) NOT NULL,
  `more` varchar(255) NOT NULL,
  `title_texto` varchar(255) NOT NULL,
  `title_textt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of man_show_title
-- ----------------------------
INSERT INTO `man_show_title` VALUES ('1', '男鞋馆 MEN\'SHOES', 'MORE', '商务鞋', '休闲鞋');

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
-- Table structure for myorder
-- ----------------------------
DROP TABLE IF EXISTS `myorder`;
CREATE TABLE `myorder` (
  `ordernumber` int(11) NOT NULL,
  `id` varchar(10) NOT NULL,
  `goodnumber` int(5) NOT NULL,
  `goodtime` datetime NOT NULL,
  PRIMARY KEY (`ordernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myorder
-- ----------------------------
INSERT INTO `myorder` VALUES ('11057', 'ms005', '1', '2018-06-29 08:56:44');
INSERT INTO `myorder` VALUES ('12460', 'ms005', '1', '2018-06-29 14:59:58');
INSERT INTO `myorder` VALUES ('16614', 'ms004', '1', '2018-06-29 15:00:24');

-- ----------------------------
-- Table structure for myuserorder
-- ----------------------------
DROP TABLE IF EXISTS `myuserorder`;
CREATE TABLE `myuserorder` (
  `ordernumber` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  PRIMARY KEY (`ordernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myuserorder
-- ----------------------------
INSERT INTO `myuserorder` VALUES ('11057', 'user');
INSERT INTO `myuserorder` VALUES ('12460', '黄信胜');
INSERT INTO `myuserorder` VALUES ('16614', '黄信胜');

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
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `ID` int(11) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------

-- ----------------------------
-- Table structure for sport_show
-- ----------------------------
DROP TABLE IF EXISTS `sport_show`;
CREATE TABLE `sport_show` (
  `id` char(10) NOT NULL,
  `imagesrc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sport_show
-- ----------------------------
INSERT INTO `sport_show` VALUES ('s01', 'images/sheetbandimage/mansheet02/01.png');
INSERT INTO `sport_show` VALUES ('s02', 'images/sheetbandimage/mansheet02/02.png');
INSERT INTO `sport_show` VALUES ('s03', 'images/sheetbandimage/mansheet02/03.png');
INSERT INTO `sport_show` VALUES ('s04', 'images/sheetbandimage/mansheet02/04.png');
INSERT INTO `sport_show` VALUES ('s05', 'images/sheetbandimage/mansheet02/05.png');
INSERT INTO `sport_show` VALUES ('s06', 'images/sheetbandimage/mansheet02/06.png');
INSERT INTO `sport_show` VALUES ('s07', 'images/sheetbandimage/mansheet02/07.png');
INSERT INTO `sport_show` VALUES ('s08', 'images/sheetbandimage/mansheet02/08.png');
INSERT INTO `sport_show` VALUES ('s09', 'images/sheetbandimage/mansheet02/09.png');
INSERT INTO `sport_show` VALUES ('s10', 'images/sheetbandimage/mansheet02/10.png');

-- ----------------------------
-- Table structure for sport_show_imgtext
-- ----------------------------
DROP TABLE IF EXISTS `sport_show_imgtext`;
CREATE TABLE `sport_show_imgtext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `img_text` varchar(255) NOT NULL,
  `img_intro` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sport_show_imgtext
-- ----------------------------
INSERT INTO `sport_show_imgtext` VALUES ('1', 'images/sheetbandimage/mansheet02/11.png', 'T恤', '初夏精选');
INSERT INTO `sport_show_imgtext` VALUES ('2', 'images/sheetbandimage/mansheet02/h1.png', '休闲鞋', '美丽焕新');
INSERT INTO `sport_show_imgtext` VALUES ('3', 'images/sheetbandimage/mansheet02/h2.png', '耐克', '春夏上新');
INSERT INTO `sport_show_imgtext` VALUES ('4', 'images/sheetbandimage/mansheet02/h3.png', '彪马', '经典由你');
INSERT INTO `sport_show_imgtext` VALUES ('5', 'images/sheetbandimage/mansheet02/h4.png', '阿迪休闲', '酷感升级');
INSERT INTO `sport_show_imgtext` VALUES ('6', 'images/sheetbandimage/mansheet02/h5.png', '三叶草', '不止一面造型');
INSERT INTO `sport_show_imgtext` VALUES ('7', 'images/sheetbandimage/mansheet02/h6.png', '夹克', '春款上市');

-- ----------------------------
-- Table structure for sport_show_title
-- ----------------------------
DROP TABLE IF EXISTS `sport_show_title`;
CREATE TABLE `sport_show_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_top` varchar(255) NOT NULL,
  `more` varchar(255) NOT NULL,
  `tilte_texto` varchar(255) NOT NULL,
  `title_textt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sport_show_title
-- ----------------------------
INSERT INTO `sport_show_title` VALUES ('1', '运动/户外馆', 'MORE', '运动鞋', '运动服');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(25) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0000000002', 'user', '4QrcOUm6Wau+VuBX8g+IPg==', '123456@qq.com');
INSERT INTO `user` VALUES ('0000000004', '黄信胜', '4QrcOUm6Wau+VuBX8g+IPg==', '2380110794@qq.com');
INSERT INTO `user` VALUES ('0000000006', 'tom', '4QrcOUm6Wau+VuBX8g+IPg==', '2380110794@qq.com');
INSERT INTO `user` VALUES ('0000000007', '章敏高', '9j9PvJ+MhdQJ8vWfK54S1Q==', '2380110794@qq.com');
INSERT INTO `user` VALUES ('0000000008', '彭天宝', '4QrcOUm6Wau+VuBX8g+IPg==', '123456@qq.com');
INSERT INTO `user` VALUES ('0000000009', '崔朝阳', '4QrcOUm6Wau+VuBX8g+IPg==', '123456@qq.com');
INSERT INTO `user` VALUES ('0000000010', '严子江', '4QrcOUm6Wau+VuBX8g+IPg==', '123456@qq.com');
INSERT INTO `user` VALUES ('0000000011', '胡龙', '4QrcOUm6Wau+VuBX8g+IPg==', '123456@qq.com');
INSERT INTO `user` VALUES ('0000000012', '李园祥', '4QrcOUm6Wau+VuBX8g+IPg==', '123456@qq.com');
INSERT INTO `user` VALUES ('0000000013', '龚仕俊', '4QrcOUm6Wau+VuBX8g+IPg==', '123456@qq.com');
INSERT INTO `user` VALUES ('0000000014', '刘超超', '4QrcOUm6Wau+VuBX8g+IPg==', '123456@qq.com');
INSERT INTO `user` VALUES ('0000000015', 'jieke', '4QrcOUm6Wau+VuBX8g+IPg==', '2380110794@qq.com');
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
