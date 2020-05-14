/*
Navicat MySQL Data Transfer

Source Server         : bysj
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : colcurevamansystem

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-05-14 15:17:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class_lession_tb
-- ----------------------------
DROP TABLE IF EXISTS `class_lession_tb`;
CREATE TABLE `class_lession_tb` (
  `class_lession_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL COMMENT '班级id',
  `lession_id` int(11) NOT NULL COMMENT '课程id',
  `created_user` varchar(20) DEFAULT '' COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建日期',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`class_lession_id`),
  KEY `lession_id` (`lession_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `class_lession_tb_ibfk_2` FOREIGN KEY (`lession_id`) REFERENCES `lession_tb` (`lession_id`),
  CONSTRAINT `class_lession_tb_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class_tb` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_lession_tb
-- ----------------------------
INSERT INTO `class_lession_tb` VALUES ('1', '1', '1', 'admin', '2020-04-03 19:43:04', 'admin', '2020-04-03 19:43:09');
INSERT INTO `class_lession_tb` VALUES ('2', '1', '2', 'admin', '2020-04-05 10:28:09', 'admin', '2020-04-05 10:28:12');
INSERT INTO `class_lession_tb` VALUES ('3', '1', '3', 'admin', '2020-04-05 10:28:43', 'admin', '2020-04-05 10:28:47');
INSERT INTO `class_lession_tb` VALUES ('4', '1', '4', 'admin', '2020-04-05 10:28:59', 'admin', '2020-04-05 10:29:03');
INSERT INTO `class_lession_tb` VALUES ('5', '2', '1', 'admin', '2020-04-05 10:29:26', 'admin', '2020-04-05 10:29:32');
INSERT INTO `class_lession_tb` VALUES ('6', '2', '2', 'admin', '2020-04-05 10:29:43', 'admin', '2020-04-05 10:29:47');
INSERT INTO `class_lession_tb` VALUES ('7', '2', '3', 'admin', '2020-04-05 10:29:57', 'admin', '2020-04-05 10:30:01');
INSERT INTO `class_lession_tb` VALUES ('8', '2', '4', 'admin', '2020-04-05 10:30:13', 'admin', '2020-04-05 10:30:16');
INSERT INTO `class_lession_tb` VALUES ('9', '3', '5', 'admin', '2020-04-05 10:30:31', 'admin', '2020-04-05 10:30:36');
INSERT INTO `class_lession_tb` VALUES ('10', '3', '4', 'admin', '2020-04-05 10:30:48', 'admin', '2020-04-05 10:30:52');
INSERT INTO `class_lession_tb` VALUES ('11', '3', '6', 'admin', '2020-04-05 10:31:02', 'admin', '2020-04-05 10:31:06');
INSERT INTO `class_lession_tb` VALUES ('12', '3', '7', 'admin', '2020-04-05 10:31:19', 'admin', '2020-04-05 10:31:22');
INSERT INTO `class_lession_tb` VALUES ('13', '1', '5', 'admin', '2020-04-05 15:03:36', 'admin', '2020-04-05 15:03:40');

-- ----------------------------
-- Table structure for class_sub_tb
-- ----------------------------
DROP TABLE IF EXISTS `class_sub_tb`;
CREATE TABLE `class_sub_tb` (
  `sub_eva_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评价课程表ID',
  `sub_student_id` int(11) NOT NULL COMMENT '评价学生id',
  `sub_class_id` int(11) NOT NULL COMMENT '班级id',
  `sub_lession_id` int(11) NOT NULL COMMENT '评价课程id',
  `sub_teacher_id` int(11) NOT NULL COMMENT '教师id',
  `sub_status` int(11) DEFAULT NULL COMMENT '评价状态：1：匿名；0：不匿名；默认不匿名',
  `sub_score` int(11) NOT NULL COMMENT '评价课程分数',
  `sub_info` varchar(100) NOT NULL COMMENT '评价课程意见',
  `created_user` varchar(20) DEFAULT '' COMMENT '评价人',
  `created_time` datetime DEFAULT NULL COMMENT '创建日期',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`sub_eva_id`),
  KEY `sub_student_id` (`sub_student_id`),
  KEY `sub_lession_id` (`sub_lession_id`),
  KEY `sub_class_id` (`sub_class_id`),
  KEY `sub_teacher_id` (`sub_teacher_id`),
  CONSTRAINT `class_sub_tb_ibfk_1` FOREIGN KEY (`sub_student_id`) REFERENCES `student_tb` (`student_id`),
  CONSTRAINT `class_sub_tb_ibfk_2` FOREIGN KEY (`sub_lession_id`) REFERENCES `lession_tb` (`lession_id`),
  CONSTRAINT `class_sub_tb_ibfk_3` FOREIGN KEY (`sub_class_id`) REFERENCES `class_tb` (`class_id`),
  CONSTRAINT `class_sub_tb_ibfk_4` FOREIGN KEY (`sub_teacher_id`) REFERENCES `teacher_tb` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_sub_tb
-- ----------------------------
INSERT INTO `class_sub_tb` VALUES ('1', '2', '1', '2', '2', '0', '5', '玩手机太多', '山本一夫', '2020-04-03 19:44:43', '山本一夫', '2020-04-03 19:44:49');
INSERT INTO `class_sub_tb` VALUES ('2', '2', '1', '1', '5', '0', '3', '玩手机太多', '山本一夫', '2020-04-03 19:44:43', '山本一夫', '2020-04-03 19:44:49');
INSERT INTO `class_sub_tb` VALUES ('3', '3', '1', '3', '3', '1', '8', '课堂太不活跃', '马小玲', '2020-04-03 19:44:43', '马小玲', '2020-04-03 19:44:49');
INSERT INTO `class_sub_tb` VALUES ('4', '1', '1', '4', '4', '0', '7', '玩手机', '马丹娜', '2020-04-05 16:19:58', '马丹娜', '2020-04-05 16:20:12');
INSERT INTO `class_sub_tb` VALUES ('5', '1', '1', '2', '2', '0', '6', '玩手机', '马丹娜', '2020-04-05 16:19:58', '马丹娜', '2020-04-05 16:20:12');
INSERT INTO `class_sub_tb` VALUES ('8', '2', '1', '2', '2', '1', '6', '上课思路不清晰', '山本一夫', '2020-04-05 19:37:55', '山本一夫', '2020-04-11 09:59:41');
INSERT INTO `class_sub_tb` VALUES ('10', '4', '1', '2', '2', '1', '7', '课堂气氛不活跃', '山本未来', '2020-04-05 19:45:31', '山本未来', '2020-04-11 09:59:46');
INSERT INTO `class_sub_tb` VALUES ('11', '1', '1', '3', '3', '0', '6', '上课思路不清晰', '马丹娜', '2020-04-13 18:34:28', '马丹娜', '2020-04-13 18:34:28');
INSERT INTO `class_sub_tb` VALUES ('12', '1', '1', '5', '7', '0', '7', '课堂太不活跃', '马丹娜', '2020-04-13 18:40:31', '马丹娜', '2020-04-13 18:40:31');
INSERT INTO `class_sub_tb` VALUES ('13', '3', '1', '1', '2', '0', '8', '上课太过古板，没有留下空余时间给学生发言', '马小玲', '2020-04-13 18:44:23', '马小玲', '2020-04-13 18:44:23');
INSERT INTO `class_sub_tb` VALUES ('14', '3', '1', '5', '7', '1', '7', '玩手机', '马小玲', '2020-04-13 18:46:22', '马小玲', '2020-04-13 18:46:22');
INSERT INTO `class_sub_tb` VALUES ('15', '3', '1', '4', '4', '1', '6', 'QQ群3654u6', '马小玲', '2020-04-13 18:48:04', '马小玲', '2020-04-13 18:48:04');
INSERT INTO `class_sub_tb` VALUES ('16', '1', '1', '3', '3', '0', '7', '课堂氛围不足，导致无人用心听讲', '马丹娜', '2020-04-16 11:08:22', '马丹娜', '2020-04-16 11:08:22');
INSERT INTO `class_sub_tb` VALUES ('17', '1', '1', '4', '4', '0', '9', '课堂气氛活跃', '马丹娜', '2020-04-16 11:12:42', '马丹娜', '2020-04-16 11:12:42');
INSERT INTO `class_sub_tb` VALUES ('18', '1', '1', '1', '2', '0', '4', '暂无', '马丹娜', '2020-04-18 17:07:53', '马丹娜', '2020-04-18 17:07:53');
INSERT INTO `class_sub_tb` VALUES ('19', '5', '2', '1', '1', '0', '6', '课堂氛围不足，需要改进', '厄尔尼诺', '2020-04-19 18:26:40', '厄尔尼诺', '2020-04-19 18:26:40');
INSERT INTO `class_sub_tb` VALUES ('20', '5', '2', '3', '3', '0', '6', '上课的教学方式太过古板，导致玩手机太多', '厄尔尼诺', '2020-04-19 18:28:23', '厄尔尼诺', '2020-04-19 18:28:23');
INSERT INTO `class_sub_tb` VALUES ('21', '1', '1', '5', '7', '0', '6', '课后实践少，导致运用bushlian', '马丹娜', '2020-04-21 11:50:38', '马丹娜', '2020-04-21 11:50:38');
INSERT INTO `class_sub_tb` VALUES ('22', '4', '1', '1', '2', '0', '8', '教学效果好', '山本未来', '2020-05-07 15:58:13', '山本未来', '2020-05-07 15:58:13');
INSERT INTO `class_sub_tb` VALUES ('23', '4', '1', '1', '2', '0', '9', '教学效果不错', '山本未来', '2020-05-07 16:19:27', '山本未来', '2020-05-07 16:19:27');
INSERT INTO `class_sub_tb` VALUES ('24', '4', '1', '1', '2', '0', '8', '教学效果不错啊', '山本未来', '2020-05-07 17:00:38', '山本未来', '2020-05-07 17:00:38');
INSERT INTO `class_sub_tb` VALUES ('25', '4', '1', '5', '7', '0', '9', '教学效果很好，', '山本未来', '2020-05-07 17:36:47', '山本未来', '2020-05-07 17:36:47');

-- ----------------------------
-- Table structure for class_tb
-- ----------------------------
DROP TABLE IF EXISTS `class_tb`;
CREATE TABLE `class_tb` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `profession_id` int(11) NOT NULL COMMENT '学院ID(外键）',
  `class_name` varchar(50) NOT NULL COMMENT '班级名称',
  `created_user` varchar(20) DEFAULT '' COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建日期',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  `class_info` varchar(100) DEFAULT NULL COMMENT '班级备注',
  PRIMARY KEY (`class_id`),
  KEY `profession_id` (`profession_id`),
  CONSTRAINT `class_tb_ibfk_1` FOREIGN KEY (`profession_id`) REFERENCES `profession_tb` (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_tb
-- ----------------------------
INSERT INTO `class_tb` VALUES ('1', '1', '1601软工班', 'admin', '2020-04-03 19:37:20', 'admin', '2020-04-03 19:37:27', '本科班');
INSERT INTO `class_tb` VALUES ('2', '1', '1602软工班', 'admin', '2020-04-05 10:17:51', 'admin', '2020-04-05 13:38:03', '本科班');
INSERT INTO `class_tb` VALUES ('3', '1', '1603软件班', 'admin', '2020-04-05 10:18:51', 'admin', '2020-04-05 10:18:54', '专科班');
INSERT INTO `class_tb` VALUES ('4', '1', '1604软件班', 'admin', '2020-04-05 10:19:14', 'admin', '2020-04-05 10:19:18', '专科班');
INSERT INTO `class_tb` VALUES ('5', '1', '1605数媒班', 'admin', '2020-04-05 10:20:14', 'admin', '2020-04-05 10:20:18', '本科班');
INSERT INTO `class_tb` VALUES ('6', '1', '1606信息班', 'admin', '2020-04-05 13:33:01', 'admin', '2020-04-05 13:33:07', '专科班');
INSERT INTO `class_tb` VALUES ('7', '4', '1601机电班', 'admin', '2020-04-12 11:25:04', 'admin', '2020-04-12 11:25:04', '本科班');
INSERT INTO `class_tb` VALUES ('8', '4', '1604机电班', 'admin', '2020-04-12 11:26:39', 'admin', '2020-04-12 11:26:39', '本科班');
INSERT INTO `class_tb` VALUES ('9', '4', '1602机电班', 'admin', '2020-04-12 11:28:52', 'admin', '2020-04-12 11:28:52', '本科班');
INSERT INTO `class_tb` VALUES ('10', '4', '1603机电班', 'admin', '2020-04-12 11:30:19', 'admin', '2020-04-12 11:30:19', '本科班');
INSERT INTO `class_tb` VALUES ('11', '3', '1601体育班', 'admin', '2020-04-18 17:05:50', 'admin', '2020-04-18 17:05:50', '本科班');
INSERT INTO `class_tb` VALUES ('12', '2', '1601外语班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('13', '2', '1602外语班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('14', '5', '1601材化班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('15', '5', '1602材化班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('16', '6', '1601初教班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('17', '6', '1602初教班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('18', '7', '1601艺术班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('19', '7', '1602艺术班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('20', '8', '1601文学班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('21', '8', '1602文学班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('22', '9', '1601电商班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');
INSERT INTO `class_tb` VALUES ('23', '9', '1602电商班', 'admin', '2020-04-24 11:26:49', 'admin', '2020-04-24 11:26:49', '本科班');

-- ----------------------------
-- Table structure for lession_tb
-- ----------------------------
DROP TABLE IF EXISTS `lession_tb`;
CREATE TABLE `lession_tb` (
  `lession_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `lession_name` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `lession_img` varchar(100) DEFAULT NULL COMMENT '课程图片',
  `lession_info` varchar(100) DEFAULT NULL COMMENT '课程说明',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`lession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lession_tb
-- ----------------------------
INSERT INTO `lession_tb` VALUES ('1', '软件工程', 'img', '软件工程', 'admin', '2020-04-03 19:42:13', 'admin', '2020-04-10 22:45:00');
INSERT INTO `lession_tb` VALUES ('2', '计算机导论', 'images', '计算机专业必修', 'admin', '2020-04-05 10:21:27', 'admin', '2020-04-26 14:02:42');
INSERT INTO `lession_tb` VALUES ('3', '数据库概论与实践', 'images', '计算机专业必修', 'admin', '2020-04-05 10:22:16', 'admin', '2020-04-26 14:02:53');
INSERT INTO `lession_tb` VALUES ('4', 'PS设计', 'images', '图形专业必修', 'admin', '2020-04-05 10:23:02', 'admin', '2020-04-26 14:03:14');
INSERT INTO `lession_tb` VALUES ('5', 'Java编程', 'images', '计算机专业必修', 'admin', '2020-04-05 10:23:47', 'admin', '2020-04-26 14:03:20');
INSERT INTO `lession_tb` VALUES ('6', 'C语言应用', 'images', '计算机专业必修', 'admin', '2020-04-05 10:24:16', 'admin', '2020-04-05 10:24:21');
INSERT INTO `lession_tb` VALUES ('7', '新视野英语', 'images', '计算机专业必修', 'admin', '2020-04-05 10:25:16', 'admin', '2020-04-05 10:25:20');
INSERT INTO `lession_tb` VALUES ('8', '算法设计与应用', 'images', '计算机专业必修', 'admin', '2020-04-05 10:26:00', 'admin', '2020-04-05 10:26:05');
INSERT INTO `lession_tb` VALUES ('9', '项目管理', 'images', '计算机专业必修', 'admin', '2020-04-05 10:26:53', 'admin', '2020-04-05 10:26:57');
INSERT INTO `lession_tb` VALUES ('10', '软件测试', 'images', '计算机专业必修', 'admin', '2020-04-05 10:27:31', 'admin', '2020-04-05 10:27:35');
INSERT INTO `lession_tb` VALUES ('11', '网页设计', 'images', '计算机专业必修', 'admin', '2020-04-05 14:00:34', 'admin', '2020-04-05 14:01:36');
INSERT INTO `lession_tb` VALUES ('12', 'UML建模', 'images', '计算机专业必修', 'admin', '2020-04-05 14:02:56', 'admin', '2020-04-05 14:04:13');
INSERT INTO `lession_tb` VALUES ('13', '数据库概论', 'images', '计算机专业必修', 'admin', '2020-04-05 14:08:29', 'admin', '2020-04-05 14:04:13');
INSERT INTO `lession_tb` VALUES ('14', '高等数学', 'images', '计算机专业必修', 'admin', '2020-04-05 14:11:00', 'admin', '2020-04-05 14:04:13');
INSERT INTO `lession_tb` VALUES ('15', '线性代数', 'images', '计算机专业必修', 'admin', '2020-04-05 14:22:31', 'admin', '2020-04-05 14:04:13');

-- ----------------------------
-- Table structure for lession_teacher_tb
-- ----------------------------
DROP TABLE IF EXISTS `lession_teacher_tb`;
CREATE TABLE `lession_teacher_tb` (
  `lession_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL COMMENT '教师id',
  `class_id` int(11) NOT NULL COMMENT '班级id',
  `lession_id` int(11) NOT NULL COMMENT '班级id',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`lession_teacher_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `lession_teacher_tb_ibfk_2` (`lession_id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `lession_teacher_tb_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_tb` (`teacher_id`),
  CONSTRAINT `lession_teacher_tb_ibfk_2` FOREIGN KEY (`lession_id`) REFERENCES `lession_tb` (`lession_id`),
  CONSTRAINT `lession_teacher_tb_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class_tb` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lession_teacher_tb
-- ----------------------------
INSERT INTO `lession_teacher_tb` VALUES ('1', '2', '1', '1', 'admin', '2020-04-04 11:11:17', 'admin', '2020-04-04 11:11:23');
INSERT INTO `lession_teacher_tb` VALUES ('2', '2', '2', '1', 'admin', '2020-04-05 10:47:31', 'admin', '2020-04-05 10:47:37');
INSERT INTO `lession_teacher_tb` VALUES ('3', '7', '1', '5', 'admin', '2020-04-05 10:47:53', 'admin', '2020-04-05 10:47:59');
INSERT INTO `lession_teacher_tb` VALUES ('4', '3', '1', '3', 'admin', '2020-04-05 10:48:59', 'admin', '2020-04-05 10:49:04');
INSERT INTO `lession_teacher_tb` VALUES ('5', '4', '1', '4', 'admin', '2020-04-05 10:49:23', 'admin', '2020-04-05 10:49:28');
INSERT INTO `lession_teacher_tb` VALUES ('6', '5', '1', '2', 'admin', '2020-04-05 10:50:01', 'admin', '2020-04-05 10:50:06');
INSERT INTO `lession_teacher_tb` VALUES ('8', '6', '1', '7', 'admin', '2020-04-05 10:47:31', 'admin', '2020-04-05 10:47:37');
INSERT INTO `lession_teacher_tb` VALUES ('9', '8', '1', '8', 'admin', '2020-04-05 10:47:53', 'admin', '2020-04-05 10:47:59');
INSERT INTO `lession_teacher_tb` VALUES ('10', '9', '1', '9', 'admin', '2020-04-05 10:48:59', 'admin', '2020-04-05 10:49:04');
INSERT INTO `lession_teacher_tb` VALUES ('11', '10', '1', '10', 'admin', '2020-04-05 10:49:23', 'admin', '2020-04-05 10:49:28');
INSERT INTO `lession_teacher_tb` VALUES ('12', '3', '2', '2', 'admin', '2020-04-05 10:50:01', 'admin', '2020-04-05 10:50:06');
INSERT INTO `lession_teacher_tb` VALUES ('13', '3', '2', '3', 'admin', '2020-04-05 10:50:01', 'admin', '2020-04-05 10:50:06');
INSERT INTO `lession_teacher_tb` VALUES ('14', '4', '2', '4', 'admin', '2020-04-04 11:11:17', 'admin', '2020-04-04 11:11:23');
INSERT INTO `lession_teacher_tb` VALUES ('15', '5', '2', '5', 'admin', '2020-04-05 10:47:31', 'admin', '2020-04-05 10:47:37');
INSERT INTO `lession_teacher_tb` VALUES ('16', '1', '3', '1', 'admin', '2020-04-05 10:47:53', 'admin', '2020-04-05 10:47:59');
INSERT INTO `lession_teacher_tb` VALUES ('17', '2', '3', '2', 'admin', '2020-04-05 10:48:59', 'admin', '2020-04-05 10:49:04');
INSERT INTO `lession_teacher_tb` VALUES ('18', '3', '3', '3', 'admin', '2020-04-05 10:49:23', 'admin', '2020-04-05 10:49:28');
INSERT INTO `lession_teacher_tb` VALUES ('19', '4', '3', '4', 'admin', '2020-04-05 10:50:01', 'admin', '2020-04-05 10:50:06');
INSERT INTO `lession_teacher_tb` VALUES ('20', '6', '1', '6', 'admin', '2020-04-05 10:50:01', 'admin', '2020-04-05 10:50:06');

-- ----------------------------
-- Table structure for parent_fun_tb
-- ----------------------------
DROP TABLE IF EXISTS `parent_fun_tb`;
CREATE TABLE `parent_fun_tb` (
  `fun_parent_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '父类功能id',
  `fun_parent_name` varchar(20) NOT NULL COMMENT '父类功能名称',
  `fun_parent_url` varchar(200) DEFAULT '' COMMENT '父类功能url: ',
  `fun_parent_status` char(1) NOT NULL COMMENT '父功能状态位：  1:代表无效；0：代表有效',
  `fun_parent_img` varchar(50) DEFAULT NULL COMMENT '一级菜单的图标',
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(20) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`fun_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parent_fun_tb
-- ----------------------------
INSERT INTO `parent_fun_tb` VALUES ('1', '用户管理', '无', '0', '606', 'admin', '2019-05-19 21:05:24', 'admin', '2020-04-24 17:35:50');
INSERT INTO `parent_fun_tb` VALUES ('2', '课程管理', '../lession/lessionAdmin.do', '0', '608', 'admin', '2019-05-19 21:06:04', 'admin', '2019-06-12 14:25:07');
INSERT INTO `parent_fun_tb` VALUES ('3', '评价管理', '../classSub/findClassSub.do', '0', '605', 'admin', '2019-05-28 11:15:48', 'admin', '2019-06-18 14:47:29');
INSERT INTO `parent_fun_tb` VALUES ('4', '班级管理', '../class/classAdmin.do', '0', '600', 'admin', '2019-06-01 14:50:13', 'admin', '2019-06-06 08:08:14');
INSERT INTO `parent_fun_tb` VALUES ('5', '学院管理', '../profession/professionAdmin.do', '0', '60e', 'admin', '2019-06-18 20:12:40', 'admin', '2019-06-19 09:03:57');
INSERT INTO `parent_fun_tb` VALUES ('6', '个人信息', '../user/goUpdateAdminInfo.do', '0', '606', 'admin', '2019-06-18 20:13:34', 'admin', '2019-06-18 21:51:23');
INSERT INTO `parent_fun_tb` VALUES ('7', '系统设置', '../fun/getFunAd.do', '0', '60b', 'admin', '2019-12-31 14:13:28', 'admin', '2020-04-22 14:05:21');
INSERT INTO `parent_fun_tb` VALUES ('8', '课程查看', '../lession/findLessionByClass.do', '0', '608', 'admin', '2020-04-22 14:18:55', 'admin', '2020-05-07 17:35:56');
INSERT INTO `parent_fun_tb` VALUES ('9', '课程评价', '../classSub/findStudentClassSub.do', '0', '60c', 'admin', '2020-04-22 14:18:58', 'admin', '2020-05-07 17:35:56');
INSERT INTO `parent_fun_tb` VALUES ('10', '个人信息', '../user/goUpdateStudentInfo.do', '0', '606', 'admin', '2020-04-22 14:19:01', 'admin', '2020-05-07 17:35:56');
INSERT INTO `parent_fun_tb` VALUES ('11', '课程查看', '../lession/findLessionByTeacher.do', '0', '608', 'admin', '2020-04-22 14:19:04', 'admin', '2020-05-07 17:45:16');
INSERT INTO `parent_fun_tb` VALUES ('12', '课程评价', '../classSub/findStudentClassSubByTeacher.do', '0', '60c', 'admin', '2020-04-22 14:19:07', 'admin', '2020-05-07 17:45:16');
INSERT INTO `parent_fun_tb` VALUES ('13', '个人信息', '../user/goUpdateAdminInfo.do', '0', '606', 'admin', '2020-04-22 14:19:09', 'admin', '2020-05-07 17:45:16');
INSERT INTO `parent_fun_tb` VALUES ('14', '角色管理', '../role/getRoleAd.do', '0', '607', 'admin', '2020-04-23 17:17:33', 'admin', '2020-04-23 17:17:40');
INSERT INTO `parent_fun_tb` VALUES ('18', '学生信息', '../fun/maintainPage.do', '0', '606', 'admin', '2020-05-07 17:43:44', 'admin', '2020-05-14 15:15:25');

-- ----------------------------
-- Table structure for profession_tb
-- ----------------------------
DROP TABLE IF EXISTS `profession_tb`;
CREATE TABLE `profession_tb` (
  `profession_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学院ID',
  `profession_name` varchar(50) NOT NULL COMMENT '学院名称',
  `profession_info` varchar(100) DEFAULT NULL COMMENT '学院备注',
  `created_user` varchar(20) DEFAULT '' COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建日期',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profession_tb
-- ----------------------------
INSERT INTO `profession_tb` VALUES ('1', '信息与计算机工程学院', '计算机', 'admin', '2020-03-03 16:46:04', 'admin', '2020-04-10 19:59:07');
INSERT INTO `profession_tb` VALUES ('2', '外国语学院', '英语', 'admin', '2020-04-05 10:16:35', 'admin', '2020-04-05 10:16:40');
INSERT INTO `profession_tb` VALUES ('3', '体育学院', '体育', 'admin', '2020-04-09 17:38:20', 'admin', '2020-04-09 17:38:25');
INSERT INTO `profession_tb` VALUES ('4', '机械电子工程学院', '电子', 'admin', '2020-04-10 16:41:56', 'admin', '2020-04-10 17:39:03');
INSERT INTO `profession_tb` VALUES ('5', '材料与化学工程学院', '材料', 'admin', '2020-04-10 16:41:58', 'admin', '2020-04-10 17:39:05');
INSERT INTO `profession_tb` VALUES ('6', '初等教育学院', '教育', 'admin', '2020-04-10 16:42:01', 'admin', '2020-04-10 17:39:09');
INSERT INTO `profession_tb` VALUES ('7', '艺术学院', '艺术', 'admin', '2020-04-10 16:42:04', 'admin', '2020-04-10 17:39:12');
INSERT INTO `profession_tb` VALUES ('8', '文学院', '文学', 'admin', '2020-04-10 16:42:06', 'admin', '2020-04-10 17:39:14');
INSERT INTO `profession_tb` VALUES ('9', '商学院', '商务', 'admin', '2020-04-10 16:42:09', 'admin', '2020-04-10 17:39:16');

-- ----------------------------
-- Table structure for role_fun_tb
-- ----------------------------
DROP TABLE IF EXISTS `role_fun_tb`;
CREATE TABLE `role_fun_tb` (
  `role_fun_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识的主键',
  `role_id` int(1) NOT NULL COMMENT '父角色id：学生：1；教师：2；管理员：3',
  `fun_id` int(11) NOT NULL COMMENT '父角色对应的功能id',
  `role_fun_status` varchar(1) DEFAULT NULL COMMENT '每个角色的功能状态：1：无效；0：有效',
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`role_fun_id`),
  KEY `fun_id_1` (`fun_id`),
  KEY `role_id_2` (`role_id`),
  CONSTRAINT `role_fun_tb_ibfk_1` FOREIGN KEY (`fun_id`) REFERENCES `parent_fun_tb` (`fun_parent_id`),
  CONSTRAINT `role_fun_tb_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role_tb` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_fun_tb
-- ----------------------------
INSERT INTO `role_fun_tb` VALUES ('1', '1', '1', '0', 'admin', '2020-04-22 14:59:26', 'admin', '2020-04-22 14:59:26');
INSERT INTO `role_fun_tb` VALUES ('2', '1', '2', '0', 'admin', '2020-04-22 14:59:26', 'admin', '2020-04-22 14:59:26');
INSERT INTO `role_fun_tb` VALUES ('3', '1', '3', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('4', '1', '4', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('5', '1', '5', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('6', '1', '6', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('7', '1', '7', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('8', '3', '8', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('9', '3', '9', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-05-07 17:35:56');
INSERT INTO `role_fun_tb` VALUES ('10', '3', '10', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('11', '2', '11', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('12', '2', '12', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('13', '2', '13', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('14', '1', '14', '0', 'admin', '2020-04-24 15:16:40', 'admin', '2020-04-24 15:16:40');
INSERT INTO `role_fun_tb` VALUES ('18', '2', '18', '0', 'admin', '2020-05-07 17:43:44', 'admin', '2020-05-07 17:43:44');

-- ----------------------------
-- Table structure for role_tb
-- ----------------------------
DROP TABLE IF EXISTS `role_tb`;
CREATE TABLE `role_tb` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id；超级管理员：1；学生：3；教师：2；',
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `role_info` varchar(30) DEFAULT NULL COMMENT '角色说明',
  `role_status` char(1) NOT NULL COMMENT '角色状态：1：无效；0：有效',
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_tb
-- ----------------------------
INSERT INTO `role_tb` VALUES ('1', '超级管理员', '超级管理员，权限最高', '0', 'admin', '2019-06-02 21:12:52', 'admin', '2019-06-09 19:20:56');
INSERT INTO `role_tb` VALUES ('2', '教师', '权限:1.课程查看；2.评价查看；3.个人信息', '0', 'admin', '2019-06-02 21:12:49', 'admin', '2020-04-25 11:52:33');
INSERT INTO `role_tb` VALUES ('3', '学生', '权限:1.课程查看；2.评价查看；3.个人信息', '0', 'admin', '2019-06-02 21:12:55', 'admin', '2020-04-26 11:48:47');

-- ----------------------------
-- Table structure for student_tb
-- ----------------------------
DROP TABLE IF EXISTS `student_tb`;
CREATE TABLE `student_tb` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `class_id` int(11) NOT NULL COMMENT '班级ID',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '帐号',
  `password` varchar(20) NOT NULL DEFAULT '' COMMENT '密码',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `profession_id` int(11) NOT NULL COMMENT '学院id',
  `telphone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `head_image` varchar(100) DEFAULT NULL COMMENT '头像名称',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱号',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '状态 1表异常，0表正常',
  `created_user` varchar(20) DEFAULT '' COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建日期',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`student_id`),
  KEY `role_id` (`role_id`),
  KEY `student_tb_ibfk_1` (`class_id`),
  KEY `profession_id` (`profession_id`),
  CONSTRAINT `student_tb_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_tb` (`class_id`),
  CONSTRAINT `student_tb_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `role_tb` (`role_id`),
  CONSTRAINT `student_tb_ibfk_4` FOREIGN KEY (`profession_id`) REFERENCES `profession_tb` (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_tb
-- ----------------------------
INSERT INTO `student_tb` VALUES ('1', '1', '3', '16478001', '30865554c644129b5', '马丹娜', '1', '18726508490', '74e01967-c16a-4094-ad35-066204cec432.jpg', '2380110794@qq.com', '0', 'admin', '2020-04-03 19:39:36', 'admin', '2020-05-03 13:27:34');
INSERT INTO `student_tb` VALUES ('2', '1', '3', '16478002', 'd209fc558e99c7ef8', '山本一夫', '1', '13426508490', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '2380110794@qq.com', '0', 'admin', '2020-04-05 10:14:52', 'admin', '2020-05-14 11:15:19');
INSERT INTO `student_tb` VALUES ('3', '1', '3', '16478003', '109e97498e1a779bc', '马小玲', '1', '13177513521', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '3405596091@qq.com', '0', 'admin', '2020-04-05 11:31:46', 'admin', '2020-04-10 16:22:26');
INSERT INTO `student_tb` VALUES ('4', '1', '3', '16478004', '12cd2a13d69521297', '山本未来', '1', '13426508490', '16d35bea-1236-4b8f-96c2-cdfb47642441.jpg', '13426508490@163.com', '0', 'admin', '2020-04-09 12:56:13', 'admin', '2020-05-07 17:37:29');
INSERT INTO `student_tb` VALUES ('5', '2', '3', '16478005', '046b327092b3f45e8', '厄尔尼诺', '1', '13177513521', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '2380110794@qq.com', '0', 'admin', '2020-04-05 16:08:01', 'admin', '2020-04-05 16:08:03');
INSERT INTO `student_tb` VALUES ('6', '2', '3', '16478006', 'ad8cc14781ab33fc9', '章天使', '1', '13177513521', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '2380110794@qq.com', '0', 'admin', '2020-04-05 16:08:01', 'admin', '2020-04-10 12:03:05');
INSERT INTO `student_tb` VALUES ('15', '2', '3', '16478007', '44e5a921146840f3c', '章小李', '1', '13177845678', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '2380110794@qq.com', '1', 'admin', '2020-04-10 15:55:49', 'admin', '2020-05-13 17:55:52');
INSERT INTO `student_tb` VALUES ('16', '1', '3', '16478008', '9dc097513f048b9e6', '将臣', '1', '13426508490', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '2380110794@qq.com', '0', 'admin', '2020-04-18 17:01:18', 'admin', '2020-05-14 13:47:12');
INSERT INTO `student_tb` VALUES ('27', '5', '3', '28905098', 'pxxy28905098', '法海', '1', '13177516478', '3091b3e6-7cd5-449c-a7a5-ac052eceb28d.jpg', '134654865@qq.com', '0', 'admin', '2020-04-19 16:27:40', 'admin', '2020-05-14 15:13:28');
INSERT INTO `student_tb` VALUES ('28', '3', '3', '21925542', '3f2a53dbc07a8ea26', '章天使', '1', '13177513521', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '13177513521@163.com', '0', 'admin', '2020-04-20 13:00:55', 'admin', '2020-05-13 17:43:47');
INSERT INTO `student_tb` VALUES ('29', '12', '3', '10230436', 'd5c9d5e655d51583c', 'happy', '2', '13177513521', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '2380110794@qq.com', '0', 'admin', '2020-04-24 12:35:48', 'admin', '2020-04-24 12:35:48');
INSERT INTO `student_tb` VALUES ('30', '11', '3', '14326546', 'ca34c617572d08969', '刘校', '3', '13177513521', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '13177513521@163.com', '0', 'admin', '2020-04-24 14:21:07', 'admin', '2020-04-26 14:02:11');
INSERT INTO `student_tb` VALUES ('31', '3', '3', '43685583', 'bce5db2b01285b6d1', '莫小贝', '1', '13177513521', '1a89c93c-5fde-4b11-bd7e-4dad57ea5c0d.png', '13177513521@qq.com', '0', 'admin', '2020-04-26 14:01:22', 'admin', '2020-04-26 14:01:22');
INSERT INTO `student_tb` VALUES ('32', '3', '3', '78467739', 'f5b1417dabc11fef4', '章小于', '1', '13426508490', '8f60eb10-4dad-48f4-b375-1af8be5c4ef5.jpg', '13426508490@163.com', '0', 'admin', '2020-05-02 15:50:18', 'admin', '2020-05-14 14:52:44');
INSERT INTO `student_tb` VALUES ('37', '3', '3', '54677987', '9abb9ded6008b3506', '箭头', '1', '13426508490', 'c7c7ddc9-f467-4295-8de8-23aa99131679.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 14:56:42', 'admin', '2020-05-14 14:56:42');
INSERT INTO `student_tb` VALUES ('38', '4', '3', '29898855', 'b48532817e7ac3a4d', '章小红', '1', '13426508490', '113b16e0-11f1-4a76-be67-2851b9400b18.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:03:01', 'admin', '2020-05-14 15:03:01');
INSERT INTO `student_tb` VALUES ('39', '5', '3', '79846293', '8d43a090895e2ca3e', 'tim', '1', '13426508490', 'fd9b5c45-9d69-4db4-a694-d5c7c6c0cf6c.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:03:27', 'admin', '2020-05-14 15:03:27');
INSERT INTO `student_tb` VALUES ('40', '6', '3', '53814550', '52745966a4f8aadfb', '刘晓丽', '1', '13426508490', '1e5b07fd-80d1-4ac3-85c0-543b5bc99541.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:03:50', 'admin', '2020-05-14 15:03:50');
INSERT INTO `student_tb` VALUES ('41', '13', '3', '18981025', 'e2668ff86e3592e97', '张小星', '2', '13426508490', '5fd45380-a417-4383-89e1-b2aa017d80c2.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:04:19', 'admin', '2020-05-14 15:04:19');
INSERT INTO `student_tb` VALUES ('42', '7', '3', '48457883', '07dae7be90f8da81d', '吴小丽', '4', '13426508490', '1119bf6e-5997-4f08-afd8-3a8732c291a9.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:04:56', 'admin', '2020-05-14 15:04:56');
INSERT INTO `student_tb` VALUES ('43', '9', '3', '35311259', 'b8e1f4d9e8917bf69', '吴校', '4', '13426508490', 'e52eaa93-8895-4632-a49f-40fed3ccc6d7.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:05:17', 'admin', '2020-05-14 15:05:17');
INSERT INTO `student_tb` VALUES ('44', '10', '3', '29008463', '1814d2f688425af66', '展昭', '4', '13426508490', '7b992944-d421-4dc9-b640-3b3f2d3fa22a.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:05:37', 'admin', '2020-05-14 15:05:37');
INSERT INTO `student_tb` VALUES ('45', '8', '3', '22465038', '88ee45d0bad9025b4', '曹操', '4', '13426508490', '4fce0092-5c26-43f7-ae84-b537b3e26feb.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:05:59', 'admin', '2020-05-14 15:05:59');
INSERT INTO `student_tb` VALUES ('46', '14', '3', '86898407', '599b6d65832654426', '曾小贤', '5', '13426508490', '2fec115d-6608-4d6f-b9cd-b9b5d56605a6.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:06:21', 'admin', '2020-05-14 15:06:21');
INSERT INTO `student_tb` VALUES ('47', '15', '3', '65414758', '1610e7b387acdbcb6', '曹值', '5', '13426508490', '148c1e2d-aee8-49ad-be7f-72e3e190b1a3.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:06:43', 'admin', '2020-05-14 15:06:43');
INSERT INTO `student_tb` VALUES ('48', '16', '3', '51162273', '5c1d570c2243cc8a0', '宋校', '6', '13426508490', '5574eb0d-9e5d-4cee-8264-9d32d69dd68a.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:07:04', 'admin', '2020-05-14 15:07:04');
INSERT INTO `student_tb` VALUES ('49', '17', '3', '52554591', 'e81c284d0bf7f7878', '宋小牛', '6', '13426508490', 'd6dff007-a66a-4802-9907-c485daa2087b.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:07:24', 'admin', '2020-05-14 15:07:24');
INSERT INTO `student_tb` VALUES ('50', '18', '3', '53387414', '56d5023af09600fb2', '刘丽', '7', '13426508490', 'a0f3035b-ce4a-4f52-9531-33e6db2980f5.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:07:41', 'admin', '2020-05-14 15:07:41');
INSERT INTO `student_tb` VALUES ('51', '19', '3', '43271319', '1b3f705936a42f990', '刘夏龙', '7', '13426508490', '283ffeb9-66f3-4ec7-997c-bff498422540.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:08:00', 'admin', '2020-05-14 15:08:00');
INSERT INTO `student_tb` VALUES ('52', '20', '3', '43659629', 'abd24bfb780abd144', '夏泽', '8', '13426508490', 'fa53c76e-c461-4f8d-bd71-18620d23e68d.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:08:21', 'admin', '2020-05-14 15:08:21');
INSERT INTO `student_tb` VALUES ('53', '21', '3', '40328522', 'b6d7ef6347bd3999f', '唐语', '8', '13426508490', '61cf732b-a99e-422c-8171-615e2cab40e4.jpg', '13426508490@163.com', '0', 'admin', '2020-05-14 15:08:52', 'admin', '2020-05-14 15:08:52');

-- ----------------------------
-- Table structure for sub_fun_tb
-- ----------------------------
DROP TABLE IF EXISTS `sub_fun_tb`;
CREATE TABLE `sub_fun_tb` (
  `fun_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '功能id',
  `fun_parent_id` int(11) DEFAULT NULL COMMENT '功能父类id',
  `fun_name` varchar(20) DEFAULT NULL COMMENT '功能名称',
  `fun_url` varchar(200) DEFAULT NULL COMMENT '功能url',
  `fun_status` char(1) DEFAULT NULL COMMENT '1:异常；0：正常',
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(20) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`fun_id`),
  KEY `fun_parent_id` (`fun_parent_id`),
  CONSTRAINT `sub_fun_tb_ibfk_1` FOREIGN KEY (`fun_parent_id`) REFERENCES `parent_fun_tb` (`fun_parent_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sub_fun_tb
-- ----------------------------
INSERT INTO `sub_fun_tb` VALUES ('1', '1', '教师管理', '../user/teacherAdmin.do', '0', 'admin', '2019-05-19 21:13:35', 'admin', '2019-06-20 21:54:24');
INSERT INTO `sub_fun_tb` VALUES ('2', '1', '学生管理', '../user/studentAdmin.do', '0', 'admin', '2020-04-23 17:24:06', 'admin', '2020-04-23 17:17:49');
INSERT INTO `sub_fun_tb` VALUES ('4', '3', '评价查看', '../classSub/findClassSub.do', '0', 'admin', '2020-04-30 13:04:33', 'admin', '2020-04-30 13:04:33');
INSERT INTO `sub_fun_tb` VALUES ('5', '3', '评价统计', '../classSub/lookEvaAnaResult.do', '0', 'admin', '2020-04-30 13:04:59', 'admin', '2020-04-30 13:04:59');
INSERT INTO `sub_fun_tb` VALUES ('6', '9', '已评价', '../classSub/findStudentClassSub.do', '0', 'admin', '2020-05-04 12:27:52', 'admin', '2020-05-07 17:35:56');
INSERT INTO `sub_fun_tb` VALUES ('7', '9', '待评价', '../fun/maintainPage.do', '0', 'admin', '2020-05-04 12:28:36', 'admin', '2020-05-07 17:35:56');
INSERT INTO `sub_fun_tb` VALUES ('11', '18', '学生查看', '../fun/maintainPage.do', '0', 'admin', '2020-05-07 17:44:18', 'admin', '2020-05-07 17:44:57');

-- ----------------------------
-- Table structure for teacher_tb
-- ----------------------------
DROP TABLE IF EXISTS `teacher_tb`;
CREATE TABLE `teacher_tb` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `profession_id` int(11) NOT NULL COMMENT '学院id',
  `role_id` int(11) NOT NULL COMMENT '角色id，学生:1;教师：2；管理员：3',
  `account` varchar(20) NOT NULL COMMENT '账户',
  `username` varchar(20) NOT NULL COMMENT '姓名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `telphone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `head_image` varchar(100) DEFAULT NULL COMMENT '头像名称',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱号',
  `status` varchar(1) NOT NULL COMMENT '状态',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`teacher_id`),
  KEY `role_id_1` (`role_id`),
  KEY `teacher_tb_ibfk_1` (`profession_id`),
  CONSTRAINT `teacher_tb_ibfk_1` FOREIGN KEY (`profession_id`) REFERENCES `profession_tb` (`profession_id`),
  CONSTRAINT `teacher_tb_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role_tb` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_tb
-- ----------------------------
INSERT INTO `teacher_tb` VALUES ('1', '1', '1', 'admin', '超级管理员', 'e1df07c888758bf13', '13177513521', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '2380110791@qq.com', '0', '2020-04-03 19:41:01', 'admin', '2020-05-03 13:02:52', 'admin');
INSERT INTO `teacher_tb` VALUES ('2', '1', '2', '15478001', '徐静', '7b8877392b2aa2de1', '13426508490', '7923b763-db4a-4ad1-b6e5-465b4d8bd263.jpg', '2380110794@qq.com', '0', '2020-04-05 10:33:12', 'admin', '2020-05-04 09:42:27', 'admin');
INSERT INTO `teacher_tb` VALUES ('3', '1', '2', '15478002', '刘星', '978194f6b0516b543', '15278945602', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '2380110794@qq.com', '0', '2020-04-05 10:34:36', 'admin', '2020-04-10 16:30:49', 'admin');
INSERT INTO `teacher_tb` VALUES ('4', '1', '2', '15478003', '蔡方明', '86ee5a1b492b21a7b', '15489764502', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '2380110794@qq.com', '0', '2020-04-05 10:36:05', 'admin', '2020-04-11 11:39:33', 'admin');
INSERT INTO `teacher_tb` VALUES ('5', '1', '2', '15478004', '张浩然', '87007cb879acfc3f1', '15278945607', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '2380110794@qq.com', '0', '2020-04-05 10:37:08', 'admin', '2020-05-13 17:43:05', 'admin');
INSERT INTO `teacher_tb` VALUES ('6', '1', '2', '15478005', '李明', '387d7a84ff46c1cf7', '13579348949', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '2380110794@qq.com', '0', '2020-04-05 10:38:02', 'admin', '2020-04-05 10:38:05', 'admin');
INSERT INTO `teacher_tb` VALUES ('7', '1', '2', '15478006', '赵凌', '9ba058e11967abd4a', '13579464585', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '3405596091@qq.com', '0', '2020-04-05 10:39:06', 'admin', '2020-04-05 10:39:13', 'admin');
INSERT INTO `teacher_tb` VALUES ('8', '1', '2', '15478007', '马暗', '9f322b3196f4d40d7', '15789465301', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '3405596091@qq.com', '0', '2020-04-05 10:40:16', 'admin', '2020-04-05 10:40:22', 'admin');
INSERT INTO `teacher_tb` VALUES ('9', '1', '2', '15478008', '吴向', '06afcaf896802a8a6', '15789467532', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '3405596091@qq.com', '0', '2020-04-05 10:41:30', 'admin', '2020-04-05 10:41:36', 'admin');
INSERT INTO `teacher_tb` VALUES ('10', '1', '2', '15478009', '张雯', '15a912ec5f70361b5', '13426508490', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '3405596091@qq.com', '0', '2020-04-05 10:42:26', 'admin', '2020-04-05 10:42:31', 'admin');
INSERT INTO `teacher_tb` VALUES ('11', '1', '2', '15478010', '万梓', '612dfc2edca837de9', '13645785605', 'dc6b7baa-3e29-4d2d-96d4-212c05fa5254.jpg', '3405596091@qq.com', '0', '2020-04-05 10:43:24', 'admin', '2020-04-05 10:43:29', 'admin');
INSERT INTO `teacher_tb` VALUES ('13', '1', '2', '46078909', '章晓萌', '906d9b85086255f6b', '13426508490', '0defef1a-0b6e-4bcf-a4ac-b5726dab2199.jpg', '13426508490@163.com', '0', '2020-05-07 16:22:13', 'admin', '2020-05-07 16:22:19', 'admin');
