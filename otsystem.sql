/*
Navicat MySQL Data Transfer

Source Server         : bysj
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : otsystem

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-05-14 15:18:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ot_admin
-- ----------------------------
DROP TABLE IF EXISTS `ot_admin`;
CREATE TABLE `ot_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `role_id` int(11) NOT NULL COMMENT '角色id，学生:1;教师：2；管理员：3',
  `account` varchar(20) NOT NULL COMMENT '账户',
  `username` varchar(20) NOT NULL COMMENT '姓名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `telphone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `head_image` varchar(100) DEFAULT NULL COMMENT '头像名称',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱号',
  `status` varchar(20) NOT NULL COMMENT '状态',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`admin_id`),
  KEY `role_id_1` (`role_id`),
  CONSTRAINT `ot_admin_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `ot_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_admin
-- ----------------------------
INSERT INTO `ot_admin` VALUES ('1', '1', '13426508490', '黄信胜', '91183a46b913ae6f2', '13426508490', '图片名称', '2380110784@qq.com', '0', '2019-05-19 19:34:32', 'admin', '2019-06-19 21:48:37', '13426508490');
INSERT INTO `ot_admin` VALUES ('3', '3', '13579643525', '邹景春', 'af464c76d713c07ad', '13426508490', '图片名称', '2380110794@qq.com', '0', '2019-06-04 13:07:19', 'admin', '2019-06-18 13:09:12', '13426508490');
INSERT INTO `ot_admin` VALUES ('5', '3', '15979972801', '袁伟杰', '91183a46b913ae6f2', '15979972801', '图片名称', '1426267529@qq.com', '0', '2019-06-17 09:11:40', 'admin', '2019-06-17 09:11:47', 'teacher');
INSERT INTO `ot_admin` VALUES ('9', '3', '15345678972', '胡华晨', '91183a46b913ae6f2', '13177513521', null, '2380110784@qq.com', '0', '2019-06-18 17:38:48', '13426508490', null, null);
INSERT INTO `ot_admin` VALUES ('11', '3', 'testadmin', '刘晓希', '91183a46b913ae6f2', '13345678970', null, '53758940@qq.com', '0', '2019-06-20 14:52:20', '13426508490', '2019-06-20 14:53:31', '13426508490');
INSERT INTO `ot_admin` VALUES ('13', '3', '16478001', 'admin', '91183a46b913ae6f2', '18379672263', null, '153984658@qq.com', '0', '2019-06-20 21:56:28', '13426508490', null, null);

-- ----------------------------
-- Table structure for ot_admin_copy
-- ----------------------------
DROP TABLE IF EXISTS `ot_admin_copy`;
CREATE TABLE `ot_admin_copy` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `role_id` int(11) NOT NULL COMMENT '角色id，学生:1;教师：2；管理员：3',
  `account` varchar(20) NOT NULL COMMENT '账户',
  `username` varchar(20) NOT NULL COMMENT '姓名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `telphone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `head_image` varchar(100) DEFAULT NULL COMMENT '头像名称',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱号',
  `status` varchar(20) NOT NULL COMMENT '状态',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`admin_id`),
  KEY `role_id_1` (`role_id`),
  CONSTRAINT `ot_admin_copy_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `ot_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_admin_copy
-- ----------------------------
INSERT INTO `ot_admin_copy` VALUES ('1', '1', '13426508490', '黄信胜', '91183a46b913ae6f2', '13426508490', '图片名称', '2380110784@qq.com', '0', '2019-05-19 19:34:32', 'admin', '2019-06-19 21:48:37', '13426508490');
INSERT INTO `ot_admin_copy` VALUES ('3', '3', '13579643525', '邹景春', 'af464c76d713c07ad', '13426508490', '图片名称', '2380110794@qq.com', '0', '2019-06-04 13:07:19', 'admin', '2019-06-18 13:09:12', '13426508490');
INSERT INTO `ot_admin_copy` VALUES ('5', '3', '15979972801', '袁伟杰', '91183a46b913ae6f2', '15979972801', '图片名称', '1426267529@qq.com', '0', '2019-06-17 09:11:40', 'admin', '2019-06-17 09:11:47', 'teacher');
INSERT INTO `ot_admin_copy` VALUES ('9', '3', '15345678972', '胡华晨', '91183a46b913ae6f2', '13177513521', null, '2380110784@qq.com', '0', '2019-06-18 17:38:48', '13426508490', null, null);
INSERT INTO `ot_admin_copy` VALUES ('11', '3', 'testadmin', '刘晓希', '91183a46b913ae6f2', '13345678970', null, '53758940@qq.com', '0', '2019-06-20 14:52:20', '13426508490', '2019-06-20 14:53:31', '13426508490');
INSERT INTO `ot_admin_copy` VALUES ('13', '3', '16478001', 'admin', '91183a46b913ae6f2', '18379672263', null, '153984658@qq.com', '0', '2019-06-20 21:56:28', '13426508490', null, null);

-- ----------------------------
-- Table structure for ot_lession
-- ----------------------------
DROP TABLE IF EXISTS `ot_lession`;
CREATE TABLE `ot_lession` (
  `lession_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `lession_name` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `lession_info` varchar(100) DEFAULT NULL COMMENT '课程说明',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`lession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_lession
-- ----------------------------
INSERT INTO `ot_lession` VALUES ('1', '操作系统', '软件工程的必修课', 'admin', '2019-05-19 21:03:40', '13426508490', '2019-06-19 10:06:01');
INSERT INTO `ot_lession` VALUES ('2', '软件测试', '软件测试', 'admin', '2019-05-19 21:04:06', 'admin', '2019-05-19 21:04:11');
INSERT INTO `ot_lession` VALUES ('3', '计算机网络', '计算机网络', 'admin', '2019-05-19 21:04:30', 'admin', '2019-05-19 21:04:38');
INSERT INTO `ot_lession` VALUES ('4', '数据结构（c语言版）', '谭华强老师主编', 'admin', '2019-06-10 15:25:26', 'admin', '2019-06-10 15:26:35');
INSERT INTO `ot_lession` VALUES ('5', '计算机导论', 'Java编程', '王罗', '2019-06-12 21:43:42', '王罗', '2019-06-12 21:44:05');

-- ----------------------------
-- Table structure for ot_parent_fun
-- ----------------------------
DROP TABLE IF EXISTS `ot_parent_fun`;
CREATE TABLE `ot_parent_fun` (
  `fun_parent_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '父类功能id',
  `fun_parent_name` varchar(20) NOT NULL COMMENT '父类功能名称',
  `fun_parent_url` varchar(200) DEFAULT '' COMMENT '父类功能url: ',
  `fun_parent_status` char(1) NOT NULL COMMENT '父功能状态位：  1:代表无效；0：代表有效',
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(20) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`fun_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_parent_fun
-- ----------------------------
INSERT INTO `ot_parent_fun` VALUES ('1', '系统管理', '无', '0', 'admin', '2019-05-19 21:05:24', 'superadmin', '2019-06-19 08:27:27');
INSERT INTO `ot_parent_fun` VALUES ('2', '试题管理', '无', '0', 'admin', '2019-05-19 21:06:04', 'admin', '2019-06-12 14:25:07');
INSERT INTO `ot_parent_fun` VALUES ('3', '个人中心', '无', '0', 'admin', '2019-05-28 11:15:48', '李晓红', '2019-06-18 14:47:29');
INSERT INTO `ot_parent_fun` VALUES ('4', '课程管理', '无', '0', 'admin', '2019-06-01 14:50:13', 'admin', '2019-06-06 08:08:14');
INSERT INTO `ot_parent_fun` VALUES ('6', '用户管理', '无', '0', '13426508490', '2019-06-18 20:12:40', '陈俐君', '2019-06-19 09:03:57');
INSERT INTO `ot_parent_fun` VALUES ('7', '权限管理', '无', '0', '13426508490', '2019-06-18 20:13:34', 'superadmin', '2019-06-18 21:51:23');
INSERT INTO `ot_parent_fun` VALUES ('8', '前台管理', 'ad_log', '0', '13426508490', '2019-12-31 14:13:28', null, null);

-- ----------------------------
-- Table structure for ot_profession
-- ----------------------------
DROP TABLE IF EXISTS `ot_profession`;
CREATE TABLE `ot_profession` (
  `profession_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业表主键',
  `profession_name` varchar(30) NOT NULL DEFAULT '' COMMENT '专业名称',
  `created_user` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT '' COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_profession
-- ----------------------------
INSERT INTO `ot_profession` VALUES ('1', '软件工程', 'admin', '2019-05-19 21:06:35', 'admin', '2019-05-19 21:06:38');
INSERT INTO `ot_profession` VALUES ('2', '数字媒体信息', 'admin', '2019-05-19 21:09:08', 'admin', '2019-05-19 21:09:14');
INSERT INTO `ot_profession` VALUES ('3', '大数据', 'admin', '2019-05-19 21:09:38', 'admin', '2019-05-19 21:09:44');

-- ----------------------------
-- Table structure for ot_question
-- ----------------------------
DROP TABLE IF EXISTS `ot_question`;
CREATE TABLE `ot_question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '试题id',
  `subject` varchar(255) NOT NULL COMMENT '试题内容',
  `type` double(4,2) NOT NULL COMMENT '试题难易程度',
  `lession_id` int(11) NOT NULL COMMENT '所属课程号',
  `optionA` varchar(20) NOT NULL COMMENT '选项A',
  `optionB` varchar(20) NOT NULL COMMENT '选项B',
  `optionC` varchar(20) NOT NULL COMMENT '选项C',
  `optionD` varchar(20) NOT NULL COMMENT '选项D',
  `answer` char(1) NOT NULL COMMENT '标准答案',
  `note` varchar(255) NOT NULL COMMENT '题目注释',
  `status` char(1) NOT NULL COMMENT '状态',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`question_id`) USING BTREE,
  KEY `lession_id_1` (`lession_id`) USING BTREE,
  CONSTRAINT `ot_question_ibfk_1` FOREIGN KEY (`lession_id`) REFERENCES `ot_lession` (`lession_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ot_question
-- ----------------------------
INSERT INTO `ot_question` VALUES ('1', 'PPP协议是（ ）层的协议。', '0.40', '3', '物理层', '数据链路层', '网络层', '应用层', 'B', '基础知识，易懂易理解数据链路层', '0', null, null, '2019-06-20 21:51:18', '15979972801');
INSERT INTO `ot_question` VALUES ('2', '在(  )传输模式中，两个站都能发送信息，但不能同时发送。', '0.40', '3', '单个', '半双工', '全双工', '应用层', 'C', '为进行网络中的数据交换而建立的规则、标准或约定。', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('3', '在(  )差错控制方式中，可以累积确认且只会重新传输出错的数据帧。', '0.40', '3', '连续工作', '停止等待', '选择重发', '拉回', 'C', '使的和网络对等端的相应层次的通信更加可靠', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('4', '一旦中心节点出现故障，则整个网络将会瘫痪的网络拓扑结构是(  )。', '0.40', '3', '总线型', '星型', '环型', '任意型', 'B', '计算机网络的各层以及协议的集合称为网络的体系结构', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('5', 'IP分组经过路由转发时如果不被分段，则(  )。', '0.40', '3', 'TTL字段和校验和字段值都会改变', 'TTL字段和IP地址字段会改变', 'IP地址和校验和字段会改变', 'DF和MF字段会改变', 'A', '分别标识发送分组的源主机/路由器(网络接口)和接收分组的目的主机/路由器（网络接口）的IP地址', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('6', '在Internet上浏览时，浏览器和WWW服务器之间传输网页使用的协议是(  )。', '0.40', '3', 'IP', 'HTTP', 'FTP', 'Telnet', 'B', '一个主机会有一个MAC地址，而每个网络地址会有一个专属于它的IP地址', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('7', 'Internet的基本服务，如电子邮件、远程登录Telnet、文件传输FTP和WWW浏览等，它们的应用软件系统设计中都采用了(  )。', '0.40', '3', '客户/服务器模式', '逻辑结构', '层次模型结构', 'P2P模式', 'A', '基础知识，易懂易理解客户/服务器模式', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('8', '一座大楼内的一个计算机网络系统，属于(  )。', '0.40', '3', 'VPN', 'LAN', 'MAC', 'WAN', 'B', '局域网相关知识', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('9', 'TCP协议通过(  )数值的变化来实现对发送方的拥塞控制。', '0.40', '3', '发送窗口', '接收窗口', '拥塞窗口', '动窗口', 'B', '建立连接时，客户端向服务器端发送一个SYN包，进入SYN_SEND状态，在该状态下，客户端等待服务器的确认包', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('10', '在以下传输介质中，带宽最宽，抗干扰能力最强的是(  )。', '0.40', '3', '双绞线', '无线信道', '服务器', '光纤', 'B', '交换数据前先建立一条逻辑连接。数据传送结束后释放连接。', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('11', '(  )层的主要功能是提供端到端的信息传送。', '0.60', '3', '数据链路', '网络', '传输', '应用', 'C', '传输层的主要知识信息', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('12', '在计算机网络中可以没有(  )。', '0.60', '3', '客户机', '服务器', '操作系统', '数据库管理系统', 'D', '在网络操作系统，网络管理软件及网络通信协议的管理和协调下，实现资源共享和 信息传递的计算机系统', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('13', 'IP地址（假定采用默认子网掩码）(  )可以分配给直接接入互联网的主机使用。', '0.60', '3', '198.65.35.0', '65.37.18.0', '172.20.78.90', '301.60.35.21', 'B', 'IP地址的定义：网络号+主机号', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('14', 'DNS用来解析(  )。', '0.60', '3', 'IP地址和MAC地址', '主机域名和IP地址', 'TCP名字和地址', '主机名和传输层地址', 'B', '基础知识，易懂易理解DNS的相关知识', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('15', 'ARP协议的功能是(  )。', '0.60', '3', '根据IP地址找到MAC地址', '根据MAC地址找到IP地址', '根据域名找到IP地址', '根据主机名找到传输地址', 'A', '\r\n  用途：把IP地址解析为物理地址。\r\n    在网络层会用到ARP\r\n\r\n    用途：把IP地址解析为物理地址。\r\n ', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('16', '如果比特率为10Mb/s，发送100位需要多长时间(  )。', '0.60', '3', '1μs', '10μs', '100μs', '1Ms', 'B', '比特率的基本求解方式', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('17', '计算机网络是地理上分散的多台(  )遵循约定的通信协议，通过软硬件互联的系统。', '0.60', '3', '计算机', '主从计算机', '自治计算机', '数字设备', 'C', '自治计算的发展史', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('18', '集线器和路由器分别运行于OSI模型的(  )。', '0.60', '3', '数据链路层和物理层', '网络层和传输层', '传输层和数据链路层', '物理层和网络层', 'D', '专注于数据链路层，将一个数据帧从一个节点传送到相同链路的另一个结点。', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('19', '网络132.60.64.0/20的广播地址是（  )。', '0.60', '3', '132.60.64.0', '132.60.64.255', '132.60.79.255', '132.60.255.255', 'C', '基础知识，易懂易理解IP地址的知识', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('20', '若收到的HDLC帧的数据字段中出现比特串“01011111001”，则比特删除后的输出为(  )。', '0.60', '3', '01011111001', '010111110001', '0101111101', '0111111001', 'D', 'HDLC的基本输出字符', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('21', '主机A向主机B连续发送了两个TCP报文，有效载荷分别为200B和600B，第一段的序号是100。主机B正确接收后，发送给主机A的确认序号为（  ）。', '0.80', '3', '300', '700', '800', '900', 'D', '一个主机会有一个MAC地址，而每个网络地址会有一个专属于它的IP地址。', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('22', '产生阻塞的原因不包括(  )。', '0.80', '3', '根据IP地址找到MAC地址', '把以太网帧复制到所有的端口', '使用帧传递数据', '报文重新组合需要用缓冲空间', 'C', '寻址协议层不同。IP应用于网络层，MAC应用于数据链路层', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('23', '(  )协议是TCP/IP协议栈中的应用层协议。', '0.80', '3', 'ICMP', 'HTTP', 'TCP', 'IP', 'B', '基础知识，易懂易理解HTTP协议', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('24', '在开放系统互连环境中，两个N层实体进行通信，可能用到的服务是(  )。', '0.80', '3', 'N-1层提供的服务', 'N层提供的服务', 'N+1层提供的服务', 'N+2层提供的服务', 'A', 'N-1层提供的服务', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('25', '以下(  )项不属于TCP协议的主要特点。', '0.80', '3', '面向连接', '面向字节流', '支持全双工', '提供身份认证', 'D', '交换数据前先建立一条逻辑连接。数据传送结束后释放连接', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('26', '以太网交换机一个端口在接收到数据帧时，如果没有在MAC地址表中查找到目的MAC地址，则(  )。', '0.80', '3', '丢弃该帧', '把以太网帧复制到所有的端口', '把以太网帧单点传送到特定端口', '把以太网帧发送到除本端口以外所有端口', 'C', '以太网的发展史把以太网帧单点传送到特定端口', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('27', '一个主机有两个IP地址，一个地址是192.168.11.25，则另一个地址可能是(  )。', '0.80', '3', '192.168.11.0', '192.168.11.24', '192.168.11.26', '192.168.13.25', 'D', '基础知识，易懂易理解IP地址的问题', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('28', '使用RIP协议的自治系统中，如果路由器R1收到邻居路由器R2发送的距离矢量中包含，那意味着(  )。', '0.80', '3', 'R2可以经过R1到达net1', 'R2可以经过R1到达net1', 'R1可以经过R2到达net1', 'R1不可以经过R2到达net1', 'C', '发送端几个高层会话复用一条低层的连接', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('29', '通信系统必须具备的三个基本要素是(  )。', '0.80', '3', '终端、电缆、计算机', '信号发生器、通信线路、信号接收设备', '信源、通信媒体、信宿', '终端、通信设施、接收设备', 'D', '为进行网络中的数据交换而建立的规则、标准或约定', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('30', '工作在数据链路层的网络互连设备是(  )。', '0.80', '3', '网关', '路由器', '网桥', '中继器', 'C', '通话的两个用户始终占用端到端的通信资源', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('31', '下面的哪一项测试步骤中需要进行局部数据结构测试: (  )', '0.40', '2', '单元测试', '集成测试', '确认测试', '系统测试', 'A', '基础知识，易懂易理解软件测试的基本知识', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('32', '在GB/T17544中，软件包质量要求包括三部分，即产品描述要求、(  )和数据要求。', '0.40', '2', '用户文档要求', '系统功能要求', '设计要求说明', '软件配置要求', 'A', '概述了软件产品评价的过程，提供了评价需求和指南', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('33', '可作为测试停止的标准是（  ）', '0.40', '2', '当时间用光时', '执行了所有的测试用例', '当所有缺陷都已经清除时', '当达到所要求的覆盖时', 'D', '件特性的总和，软件满足规定或潜在用户需求的能力', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('34', '软件测试的目的:（  ）', '0.40', '2', '避免软件开发中出现的错误', '发现软件开发中出现的错误', '尽可能发现并排除软件中潜藏的错误', '修改软件中出现的错误', 'C', '在规定条件下对程序进行操作，以发现错误，对软件质量进行评估', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('35', '软件测试是采用（  ）执行软件的活动。', '0.40', '2', '测试用例', '输入数据', '测试环境', '输入条件', 'A', '基础知识，易懂易理解软件测试的用例数据', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('36', '在下列描述中，关于一个软件缺陷状态完整变化的错误描述是（  ）', '0.40', '2', '打开——修复——关闭', '打开——关闭', '打开——保留', '激活——修复——重新打开', 'A', '根据任务书或合迥、供需双方约定的验收依据文档进行对整个系统的测试与评审，确认是否接收或拒绝系统；', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('37', '软件测试是软件质量保证的重要手段，下述哪种测试是软件测试的最基础环节？（ b ）\r\n软件测试是软件质量保证的重要手段，下述哪种测试是软件测试的最基础环节？（ b ）\r\n软件测试是软件质量保证的重要手段，下述哪种测试是软件测试的最基础环节？（  ）', '0.40', '2', '功能测试', '单元测试', '结构测试', '验收测试', 'B', '软件测试只是质量保证工作中的一个环节，软件质量保证与软件测试是软件质量工程的两个不同层面的工作；', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('38', '单元测试的主要任务不包括（  ）', '0.40', '2', '出错处理', ' 全局数据结构', ' 独立路径', '模块接口', 'B', '单元测试模块测试，是针对软件设计的最小单位程序模块进行正确性检查的测试工作；', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('39', '自底向上增量式集成测试中，下面（  ）描述是正确的', '0.40', '2', ' 测试由桩模块控制', '最上面的模块最先测试', '父单元用测试过的子单元测试', '包含树的深度优先或广度优先遍历过程', 'C', '基础知识，易懂易理解数据结构的子树问题', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('40', '测试后程序中残存的错误数目与该程序中已发现的错误数目成（  ）', '0.40', '2', '未知', '反比', '相等', '正比', 'D', '与其他流程并发地进行，某个测试点准备就绪时，就可以从测试准备阶段进行到测试执行阶段', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('41', '软件测试按照测试层次可以分为(  )', '0.60', '2', '黑盒测试、白盒测试', '功能性测试和结构性测试', '单元测试、集成测试和系统测试', '动态测试和静态测试', 'C', '软件测是的基本知识点', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('42', '软件测试是采用（  ）执行软件的活动', '0.60', '2', '测试用例', '输入数据', '测试环境', '输入条件', 'A', '通过执行软件来，对过程中的产物（开发文档和程序）进行走查，发现问题，报告质量', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('43', '导致软件缺陷的最大原因是（  ）', '0.60', '2', '软件需求说明书', '设计方案', '编码', '维护 ', 'A', '基础知识，易懂易理解软件的危机', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('44', '测试用例是为达到最佳的测试效果或高效的揭露隐藏的错误而精心设计的少量测试数据，至少应该包括（  ）', '0.60', '2', '测试输入、执行条件和预期的结果', '测试目标、测试工具', '测试环境', '测试配置', 'A', '程序开发过程中的各个文档、源程序', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('45', '对已经发现的错误进行错误定位和确定出错性质，并改正这些错误，同时修改相关的文档，这种行为属于（  ）', '0.60', '2', '测试', '调试', '回归测试', '单元测试', 'B', '软件测试因进行多种不同的调试', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('46', '下列描述错误的是（  )', '0.60', '2', '软件发布后发现问题，是测试人员的错', '穷尽测试实际上在一般情况下是不可行的', '\r\n软件测试自动化不是万能的', '测试能由非开发人员进行', 'A', ' 所有的软件测试都应追溯到用户需求\r\n\r\n应当把“尽早地和不断地进行软件测试”作为测试者的座右铭', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('47', '下列（  ）方法设计出的测试用例发现程序错误的能力最强。', '0.60', '2', '等价类划分法', '场景法', '边界值分析法', '决策表法', 'C', '基础知识，易懂易理解软件测试的基本测试法', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('48', '功能性测试是根据（  ）来设计测试用例', '0.60', '2', '软件的规格说明', '设计文档', '程序的内部逻辑', '维护手册', 'A', '验证和确认系统是否达到其原始目标，而对集成的硬件和软件系统进行的测试', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('49', '在软件修改之后，再次运行以前为发现错误而执行程序曾用过的测试用例，这种测试称之为(  )', '0.60', '2', '单元测试', '集成测试', '回归测试', '验收测试', 'C', '有效性测试 运行黑盒测试方法验证所测软件是否满足需求规格说明书列出的需求；', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('50', '(  ）方法是根据输出对输入的依赖关系来设计测试用例的', '0.60', '2', '边界值分析', '等价类', '因果图法', '错误推测法', 'C', '因果图法', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('51', '在软件生命周期的哪一个阶段，软件缺陷修复费用最低 （  ）', '0.80', '2', '需求分析（编制产品说明书）', '设计', '编码', '产品发布', 'A', '基础知识，易懂易理解软件工程的基础', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('52', '单元测试中用来模拟被测模块调用者的模块是 （  ）', '0.80', '2', '父模块', '子模块', '驱动模块', '桩模块', 'C', '驱动模块', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('53', '为了提高测试的效率，应该 （  ）', '0.80', '2', '随机地选取测试数据', '取一切可能的输入数据作为测试数据', '在完成编码以后制定软件的测试计划', '选择错误可能性大的数据作为测试数据', 'D', '完全测试不可能', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('54', '下列项目中不属于测试文档的是 ( )', '0.80', '2', '测试计划', ' 测试用例', '程序流程图', '测试报告', 'A', '测试计划是属于开始测试时的预期开始计划，与实际不一定相同', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('55', '下列不是软件自动化测试的优点 (  )', '0.80', '2', '速度快、效率高', '准确度和精确度高', '能提高测试的质量', '能充分测试软件', 'D', '基础知识，易懂易理解能充分测试软件', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('56', '下列不属于正式审查的方式是 （  ）', '0.80', '2', '同事审查', '公开陈述', '检验', '编码标准和规范', 'D', '编码标准和规范是已经存在的', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('57', ' 对Web网站进行的测试中，属于功能测试的是 （  ）', '0.80', '2', '连接速度测试', '链接测试', '平台测试', '安全性测试', 'B', '路由器通常有多个接口，主机通常有一个或两个接口（有线的以太网和无线网，无线网不用，那是链路层的事）', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('58', '使用白盒测试方法时，确定测试数据的依据是指定的覆盖标准和 （  ）', '0.80', '2', ' 程序的注释', '程序的内部逻辑', '用户使用说明书', '程序的需求说明', 'B', '通过对程序内部结构的分析、检测来寻找问题，检查程序的结构及路径是否正确', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('59', '与测试计划无关的内容是 (  )', '0.80', '2', '测试范围', '测试方法', '测试进度', '缺陷报告', 'C', '基础知识，易懂易理解软件测试的基本实践知识', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('60', '在软件测试技术中，SQA指 (  )', '0.80', '2', ' 软件测试', '软件质量保证', '标准查询语言', '数据库', 'B', '通过预防、检查与改进来保证软件质量，采用全面质量管理和过程改进的原理来开展质量', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('61', '以下著名的操作系统中，属于多用户、分时系统的是(  )', '0.50', '1', 'DOS系统', 'UNIX系统', 'Windows NT系统', 'OS／2系统', 'B', '基础知识，易懂易理解各个不同的操作系统的发展', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('62', '在操作系统中，进程的最基本的特征是(  )', '0.70', '1', '动态性和并发性', '顺序性和可再现性', '与程序的对应性', '执行过程的封闭性', 'A', '进程是资源分配的基本单位，进程控制块PCB描述进程的基本信息和运行状态', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('63', '操作系统中利用信号量和P、V操作，(  )', '0.60', '1', '只能实现进程的互斥', '只能实现进程的同步', '可实现进程的互斥和同步', '可完成进程调度', 'C', '可实现进程的互斥和同步', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('64', '作业调度的关键在于', '0.80', '1', '选择恰当的进程管理程序', '用户作业准备充分', '选择恰当的作业调度算法', '有一个较好的操作环境', 'C', '调度系统中运行的用户程序，协调它们对资源的需求，从而使整个系统在高效、有序的环境里工作。', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('65', '动态重定位是在（  ）完成的', '0.60', '1', '作业执行前集中一次', '作业执行过程中集中一次', '作业执行过程中', '作业执行过程中由用户', 'C', '基础知识，易懂易理解作业执行过程中', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('66', '在分页存储管理系统中，从页号到物理块号的地址映射是通过(  )实现的', '0.80', '1', '段表', '页表', 'PCB', 'JCB', 'B', '页表为分页存储的必要', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('67', '在下述文件系统目录结构中，能够用多条路径访问同一文件(或目录)的目录结构是(  )', '0.40', '1', '单级目录', '二级目录', '纯树型目录', '非循环图目录', 'D', '文件管理：文件存储空间的管理、目录管理、文件读写管理和保护等', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('68', 'SPOOLing技术可以实现设备的(  )分配', '0.40', '1', '独占', '共享', '虚拟', '物理', 'C', 'SPOOLing技术可以实现设备的虚拟分配', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('69', '避免死锁的一个著名的算法是(  )', '0.40', '1', '先人先出算法', '优先级算法', '银行家算法', '资源按序分配法', 'C', '基础知识，易懂易理解操作系统基础知识点', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('70', '下列关于进程和线程的叙述中，正确的是(  )', '0.40', '1', '一个进程只可拥有一个线程', '一个线程只可拥有一个进程', '一个进程可拥有若干个线程', '一个线程可拥有若干个进程', 'C', '进程是资源分配的基本单位，进程控制块PCB描述进程的基本信息和运行状态', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('71', '关于操作系统的叙述( )是不正确的', '0.40', '1', '管理资源的程序', '管理用户程序执行的程序', '能使系统资源提高效率的程序', '能方便用户编程的程序', 'D', '操作系统是控制和管理计算机硬件和软件资源，合理地组织计算机工作流程', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('72', '操作系统的发展过程是(  )', '0.40', '1', '原始操作系统，管理程序，操作系统', '原始操作系统，操作系统，管理程序', '管理程序，原始操作系统，操作系统\r\n', '管理程序，操作系统，原始操作系统', 'A', '操作系统是控制和管理计算机硬件和软件资源，合理地组织计算机工作流程', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('73', '用户程序中的输入，输出操作实际上是由(  )完成', '0.40', '1', '程序设计语言', '编译系统', '操作系统', '标准库程序', 'C', '基础知识，易懂易理解用户操作知识', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('74', '计算机系统中判别是否有中断事件发生应是在(  )', '0.40', '1', '进程切换时', '执行完一条指令后', '执行P操作后', '由用户态转入核心态时', 'B', '中断应在执行完一条指令后', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('75', '设计批处理多道系统时，首先要考虑的是(  )', '0.40', '1', '灵活性和可适应性', '系统效率和吞吐量', '交互性和响应时间', '实时性和可靠性', 'B', '多道批处理系统特点：多路性、共享性、自动型、封闭性、无序性、调度性\r\n', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('76', '文件系统采用多级目录结构后，对于不同用户的文件，其文件名（  ）', '0.40', '1', '应该相同 ', '应该不同', '可以相同，也可以不同', '受系统约束', 'C', '文件存储空间的管理、目录管理、文件读写管理和保护等', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('77', '支持程序浮动的地址转换机制是(  )', '0.60', '1', '页式地址转换', '段式地址转换', '静态重定位', '动态重定位', 'D', '动态重定位', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('78', '在可变分区存储管理中，最优适应分配算法要求对空闲区表项按( )进行排列', '0.60', '1', '地址从大到小', '地址从小到大', '尺寸从大到小', '尺寸从小到大', 'D', '基础知识，易懂易理解尺寸从小到大', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('79', '逻辑文件存放在到存储介质上时，采用的组织形式是与(  )有关的', '0.60', '1', '逻辑文件结构', '存储介质特性', '主存储器管理方式', '分配外设方式', 'B', '文件系统要根据存储设备的类型、用户采用的存取方式决定文件在存储介质上的组织方式', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('80', '对磁盘进行移臂调度的目的是为了缩短(  )时间', '0.60', '1', '寻找', '延迟', '传送', '启动', 'A', '磁盘移臂调度的目的是尽可能地减少输入输出操作中的寻找时间', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('81', '一种既有利于短小作业又兼顾到长作业的作业调度算法是(  )', '0.60', '1', '先来先服务', '轮转', '最高响应比优先', '均衡调度', 'C', '响应比最高者优先算法综合考虑作业的等待时间和计算时间，计算时间短的作业容易得到较高的响应比', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('82', '作业调度程序是从处于(  )状态的作业中选取一个作业并把它装入主存', '0.60', '1', '输入', '收容', '执行', '完成', 'B', '作业调度主要是完成作业从后备状态到执行状态的转变，以及从执行状态到完成状态的转变', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('83', '若系统中有五个并发进程涉及某个相同的变量A，则变量A的相关临界区是由( D)临界区\r\n若系统中有五个并发进程涉及某个相同的变量A，则变量A的相关临界区是由( D)临界区\r\n对临界资源应采取（  ）访问方式来实现共享', '0.60', '1', '互斥', '同时', '抢夺', '并发', 'A', '基础知识，易懂易理解共享知识点', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('84', '在多进程的并发系统中，肯定不会因竞争(  )而产生死锁', '0.60', '1', '打印机', '磁带机', '磁盘', 'CPU', 'D', '完成用户的IO请求，方便用户使用各种设备，并提高设备的利用率', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('85', '通常不采用(  )方法来解除死锁', '0.60', '1', '终止一个死锁进程', '终止所有死锁进程', '从死锁进程处抢夺资源', '从非死锁进程处抢夺资源', 'D', '系统死锁后可采用抢夺这些进程占用的资源，或强迫死锁进程结束等办法来解除死锁', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('86', '(  )不是Unix系统的特色', '0.60', '1', '交互的分时系统', '以全局变量为中心的模块结构', '模块之间调用关系简明', '可以分成内核和外壳', 'C', '0标准 UNIX 操作系统是一个交互式的分时系统，提供了一个支持程序开发全过程的基础和环境', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('87', '关于Unix的用户标识，(  )是不正确的', '0.80', '1', '一为实际的UID，一为有效的SUID', 'UID与SUID可能不同', 'SUID比UID更能反映用户的真实身份', 'SUID表示用户临时可以执行某个程序', 'C', '“set uid”位为空，则把文件主的“实际用户标识号”作为该一般用户的“设置用户标识号”', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('88', '在执行Ｖ操作时，当信号量的值（  ),应释放一个等待信号量的进程', '0.80', '1', '小于0', '小于等于０', '大于０', '大于等于０', 'B', 'pv操作是一对原子操作，p操作的作用是申请资源，即将资源数减１', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('89', '下列可用于页面淘汰的算法是（  ）', '0.80', '1', 'LRU算法', '电梯调度算法', '时间片轮转法', '响应比高者优先算法', 'A', '基础知识，易懂易理解LRU算法', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('90', '位示图方法可用于（  ）', '0.80', '1', '盘空间的管理', '盘的驱动调度', '文件目录的查找', '页式虚拟存储管理中的页面调度', 'A', '此题较为简单，暂未解析', '0', null, null, null, null);
INSERT INTO `ot_question` VALUES ('95', '操作系统课程有几个字', '0.30', '1', '1', '2', '3', '4', 'A', '4', '0', '2019-06-20 21:50:22', '15979972801', '2019-06-20 21:50:22', '15979972801');

-- ----------------------------
-- Table structure for ot_role
-- ----------------------------
DROP TABLE IF EXISTS `ot_role`;
CREATE TABLE `ot_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id；超级管理员：1；学生：2；教师管理员：3；',
  `role_name` varchar(20) NOT NULL COMMENT '角色名称',
  `role_info` varchar(30) DEFAULT NULL COMMENT '角色说明',
  `role_status` char(1) NOT NULL COMMENT '角色状态：1：无效；0：有效',
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_role
-- ----------------------------
INSERT INTO `ot_role` VALUES ('1', '超级管理员', '超级管理员，权限最高', '0', 'admin', '2019-06-02 21:12:52', 'admin', '2019-06-09 19:20:56');
INSERT INTO `ot_role` VALUES ('2', '学生', '学生', '0', 'admin', '2019-06-02 21:12:49', 'admin', '2019-06-09 19:20:33');
INSERT INTO `ot_role` VALUES ('3', '试题管理员', '试题管理员', '0', 'admin', '2019-06-02 21:12:55', null, null);
INSERT INTO `ot_role` VALUES ('20', '课程管理员', '专门管理课程', '0', '13426508490', '2019-06-20 21:57:12', null, null);

-- ----------------------------
-- Table structure for ot_role_fun
-- ----------------------------
DROP TABLE IF EXISTS `ot_role_fun`;
CREATE TABLE `ot_role_fun` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识的主键',
  `role_id` int(1) NOT NULL COMMENT '父角色id：学生：1；教师：2；管理员：3',
  `fun_id` int(11) NOT NULL COMMENT '父角色对应的功能id',
  `role_fun_status` varchar(1) DEFAULT NULL COMMENT '每个角色的功能状态：1：无效；0：有效',
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_role_id`),
  KEY `fun_id_1` (`fun_id`),
  KEY `role_id_2` (`role_id`),
  CONSTRAINT `ot_role_fun_ibfk_1` FOREIGN KEY (`fun_id`) REFERENCES `ot_sub_fun` (`fun_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ot_role_fun_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `ot_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_role_fun
-- ----------------------------
INSERT INTO `ot_role_fun` VALUES ('1', '1', '1', '0', 'admin', '2019-05-27 14:32:50', 'admin', '2019-05-27 14:32:50');
INSERT INTO `ot_role_fun` VALUES ('2', '1', '2', '0', 'admin', '2019-05-27 14:32:50', 'admin', '2019-05-27 14:32:50');
INSERT INTO `ot_role_fun` VALUES ('3', '1', '3', '0', 'admin', '2019-05-27 14:32:50', 'admin', '2019-05-27 14:32:50');
INSERT INTO `ot_role_fun` VALUES ('4', '1', '4', '0', 'admin', '2019-05-27 14:32:50', 'admin', '2019-05-27 14:32:50');
INSERT INTO `ot_role_fun` VALUES ('5', '1', '5', '0', 'admin', '2019-05-27 14:32:50', 'admin', '2019-05-27 14:32:50');
INSERT INTO `ot_role_fun` VALUES ('8', '1', '6', '0', 'admin', '2019-06-01 21:51:09', null, null);
INSERT INTO `ot_role_fun` VALUES ('9', '1', '7', '0', 'admin', '2019-06-01 21:52:35', null, null);
INSERT INTO `ot_role_fun` VALUES ('13', '3', '4', '0', 'admin', '2019-06-09 22:36:07', null, null);
INSERT INTO `ot_role_fun` VALUES ('14', '3', '5', '0', 'admin', '2019-06-09 22:36:11', null, null);
INSERT INTO `ot_role_fun` VALUES ('17', '1', '9', '0', 'admin', '2019-06-10 08:50:42', null, null);
INSERT INTO `ot_role_fun` VALUES ('32', '3', '9', '0', 'admin', '2019-06-10 21:40:58', null, null);
INSERT INTO `ot_role_fun` VALUES ('50', '20', '9', '0', 'admin', '2019-06-20 21:57:12', null, null);
INSERT INTO `ot_role_fun` VALUES ('51', '1', '10', '0', '13426508490', '2019-12-31 14:14:38', '13426508490', '2019-12-31 14:14:38');

-- ----------------------------
-- Table structure for ot_student
-- ----------------------------
DROP TABLE IF EXISTS `ot_student`;
CREATE TABLE `ot_student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `role_id` int(11) NOT NULL COMMENT '角色ID， 1：学生；2：教师；3：超级管理员',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '帐号，准考证号',
  `password` varchar(20) NOT NULL DEFAULT '' COMMENT '密码',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `profession_id` int(11) NOT NULL COMMENT '所属专业id',
  `telphone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `head_image` varchar(100) DEFAULT NULL COMMENT '头像名称',
  `mail` varchar(20) DEFAULT NULL COMMENT '邮箱号',
  `status` char(1) NOT NULL DEFAULT '' COMMENT '状态 1表异常，0表正常',
  `created_user` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建日期',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`student_id`),
  KEY `p_id_1` (`profession_id`),
  KEY `role_id_4` (`role_id`),
  CONSTRAINT `ot_student_ibfk_1` FOREIGN KEY (`profession_id`) REFERENCES `ot_profession` (`profession_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ot_student_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `ot_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_student
-- ----------------------------
INSERT INTO `ot_student` VALUES ('1', '2', '16478001', '91183a46b913ae6f2', '风清杨风', '1', '13177513521', '头像名称', '2380110794@qq.com', '0', 'admin', '2019-05-19 21:21:25', '风清杨风', '2019-06-20 22:39:42');
INSERT INTO `ot_student` VALUES ('3', '2', '73489020', '91183a46b913ae6f2', '黄信胜', '2', '15527982222', null, '2380110784@qq.com', '0', '黄信胜', '2019-06-10 16:55:49', '黄信胜', '2019-06-20 23:17:23');
INSERT INTO `ot_student` VALUES ('7', '2', '69193106', '91183a46b913ae6f2', '林动', '1', '13177513521', null, '2380110784@qq.com', '0', 'admin', '2019-06-11 22:26:09', null, null);
INSERT INTO `ot_student` VALUES ('8', '2', '45596450', '91183a46b913ae6f2', '萧炎', '1', '13177513521', null, '2380110784@qq.com', '0', 'admin', '2019-06-11 22:26:23', '萧炎', '2019-06-18 08:52:33');
INSERT INTO `ot_student` VALUES ('9', '2', '43625415', '91183a46b913ae6f2', '巫溪', '1', '13177513521', null, '2380110784@qq.com', '0', 'admin', '2019-06-11 22:26:35', null, null);
INSERT INTO `ot_student` VALUES ('10', '2', '33725713', '91183a46b913ae6f2', '牧尘', '1', '13177513521', null, '2380110784@qq.com', '0', 'admin', '2019-06-11 22:26:50', null, null);
INSERT INTO `ot_student` VALUES ('11', '2', '82429865', '91183a46b913ae6f2', '胡华晨', '1', '13177513521', null, '2380110784@qq.com', '0', 'admin', '2019-06-11 22:27:13', null, null);
INSERT INTO `ot_student` VALUES ('12', '2', '67527307', '91183a46b913ae6f2', '陈俐君', '1', '13177513521', null, '2380110784@qq.com', '0', 'admin', '2019-06-11 22:27:30', null, null);
INSERT INTO `ot_student` VALUES ('14', '2', '15475192', '91183a46b913ae6f2', '邹景春', '1', '13177513521', null, '', '0', 'admin', '2019-06-13 13:22:10', null, null);
INSERT INTO `ot_student` VALUES ('15', '2', '22135267', '91183a46b913ae6f2', '聂佳宝', '2', '18379672263', null, '153984658@qq.com', '0', 'admin', '2019-06-14 15:45:02', '13426508490', '2019-06-18 17:35:45');
INSERT INTO `ot_student` VALUES ('16', '2', '12345678', '91183a46b913ae6f2', '袁伟杰', '1', '18379672263', null, '153984658@qq.com', '0', 'admin', '2019-06-14 15:45:43', null, null);
INSERT INTO `ot_student` VALUES ('17', '2', '67522634', '91183a46b913ae6f2', '欧阳风', '2', '18379672263', null, '2380110784@qq.com', '0', '黄信胜', '2019-06-16 19:34:38', '13426508490', '2019-06-18 17:36:40');
INSERT INTO `ot_student` VALUES ('18', '2', '59667061', '91183a46b913ae6f2', '段誉', '1', '13177513521', null, '2380110784@qq.com', '0', '段誉', '2019-06-16 21:02:59', '段誉', '2019-06-16 21:02:59');
INSERT INTO `ot_student` VALUES ('19', '2', '24784336', '91183a46b913ae6f2', '张无忌', '2', '18379672263', null, '2380110784@qq.com', '0', '张无忌', '2019-06-17 15:22:35', '张无忌', '2019-06-17 15:22:35');
INSERT INTO `ot_student` VALUES ('20', '2', '38676366', '91183a46b913ae6f2', '张三丰1', '1', '18379672263', null, '153984658@qq.com', '0', '张三丰', '2019-06-19 13:34:26', '13426508490', '2019-12-31 14:12:32');
INSERT INTO `ot_student` VALUES ('22', '2', '15213859', '91183a46b913ae6f2', '黄信胜', '1', '18379672263', null, '53758946@qq.com', '0', '13426508490', '2019-06-20 21:00:01', null, null);
INSERT INTO `ot_student` VALUES ('23', '2', '84364725', '05c5f73cb40ba115', '你急', '2', '18779592579', null, '3956004@qq.com', '0', '胡华晨', '2019-06-20 21:42:58', '胡华晨', '2019-06-20 21:48:00');
INSERT INTO `ot_student` VALUES ('24', '2', '40319702', '91183a46b913ae6f2', '黄信胜', '1', '18379672263', null, '153984658@qq.com', '0', '13426508490', '2019-06-20 21:55:48', null, null);

-- ----------------------------
-- Table structure for ot_stu_result
-- ----------------------------
DROP TABLE IF EXISTS `ot_stu_result`;
CREATE TABLE `ot_stu_result` (
  `student_test_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '考试信息主键',
  `student_id` int(11) NOT NULL COMMENT '学生id',
  `test_id` int(11) NOT NULL COMMENT '试卷外键',
  `error_num` int(11) DEFAULT NULL COMMENT '答错数量',
  `right_num` int(11) DEFAULT NULL COMMENT '答对数量',
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '考试成绩',
  `test_time` time NOT NULL COMMENT '考试用时',
  `created_user` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_user` varchar(20) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`student_test_id`),
  KEY `stu_id_1` (`student_id`),
  KEY `test_id_1` (`test_id`),
  CONSTRAINT `ot_stu_result_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `ot_student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ot_stu_result_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `ot_test` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_stu_result
-- ----------------------------
INSERT INTO `ot_stu_result` VALUES ('1', '1', '40', '9', '0', '0', '00:00:02', '16478001', '2019-12-31 14:16:06', '16478001', '2019-12-31 14:16:06');

-- ----------------------------
-- Table structure for ot_sub_fun
-- ----------------------------
DROP TABLE IF EXISTS `ot_sub_fun`;
CREATE TABLE `ot_sub_fun` (
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
  CONSTRAINT `ot_sub_fun_ibfk_1` FOREIGN KEY (`fun_parent_id`) REFERENCES `ot_parent_fun` (`fun_parent_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_sub_fun
-- ----------------------------
INSERT INTO `ot_sub_fun` VALUES ('1', '1', '系统功能管理', '../funSystem/selectParentOrSubFunByName', '0', 'admin', '2019-05-19 21:13:35', '黄信胜', '2019-06-20 21:54:24');
INSERT INTO `ot_sub_fun` VALUES ('2', '6', '用户管理', '../user/showUserIndexPage', '0', 'admin', '2019-05-19 21:15:16', '黄信胜', '2019-06-20 21:55:19');
INSERT INTO `ot_sub_fun` VALUES ('3', '7', '角色权限管理', '../role/selectListRoleInfo', '0', 'admin', '2019-05-19 21:15:54', 'superadmin', '2019-06-18 21:51:12');
INSERT INTO `ot_sub_fun` VALUES ('4', '2', '题目管理', '../teacher/showLessionQuestionInfo', '0', 'admin', '2019-05-19 21:17:24', 'admin', '2019-06-05 19:10:29');
INSERT INTO `ot_sub_fun` VALUES ('5', '2', '试卷管理', '../teacher/showSearchTestInfo', '0', 'admin', '2019-05-19 21:18:12', '黄信胜', '2019-06-20 21:10:37');
INSERT INTO `ot_sub_fun` VALUES ('6', '3', '个人信息', '../user/goPersonalInfo', '0', 'admin', '2019-05-31 16:57:10', '李晓红', '2019-06-18 14:47:55');
INSERT INTO `ot_sub_fun` VALUES ('7', '3', '密码修改', '../user/updatePersonalPassword', '0', 'admin', '2019-05-31 16:59:07', '李晓红', '2019-06-18 14:47:43');
INSERT INTO `ot_sub_fun` VALUES ('9', '4', '课程信息', '../lession/selectLessionInfo', '0', 'admin', '2019-06-01 14:52:20', null, null);
INSERT INTO `ot_sub_fun` VALUES ('10', '8', '前台图形', 'ad_info', '1', '13426508490', '2019-12-31 14:14:38', '黄信胜', '2019-12-31 14:14:54');

-- ----------------------------
-- Table structure for ot_test
-- ----------------------------
DROP TABLE IF EXISTS `ot_test`;
CREATE TABLE `ot_test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '试卷编号',
  `test_name` varchar(50) NOT NULL DEFAULT '' COMMENT '试卷名称',
  `test_question_num` int(11) NOT NULL COMMENT '试题数量',
  `test_type` varchar(4) NOT NULL COMMENT '试卷难易程度(1:易  2:中  3:难)',
  `test_use_status` varchar(1) NOT NULL COMMENT '可用状态1：不可用，0：可用',
  `lession_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属课程号',
  `test_time` int(11) NOT NULL COMMENT '设置考试时间',
  `test_public_status` char(1) NOT NULL COMMENT '生成考试后，是否发布: 1:异常；0：正常',
  `test_question_score` int(11) NOT NULL COMMENT '每小题分数',
  `test_error_status` char(1) NOT NULL DEFAULT '' COMMENT '        状态 :1：不可见错题，0可见',
  `created_user` varchar(20) DEFAULT '' COMMENT '创建人',
  `created_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建日期',
  `modified_user` varchar(20) DEFAULT '' COMMENT '修改人',
  `modified_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '修改日期',
  PRIMARY KEY (`test_id`),
  KEY `lesson_id3` (`lession_id`),
  CONSTRAINT `ot_test_ibfk_1` FOREIGN KEY (`lession_id`) REFERENCES `ot_lession` (`lession_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_test
-- ----------------------------
INSERT INTO `ot_test` VALUES ('1', '操作系统A卷知识竞赛', '10', '1', '0', '1', '1', '0', '10', '1', null, null, '袁伟杰', '2019-06-20 21:52:49');
INSERT INTO `ot_test` VALUES ('40', '操作系统D卷知识竞赛', '10', '2', '0', '1', '1', '0', '10', '0', null, null, null, null);
INSERT INTO `ot_test` VALUES ('41', '计算机网络A卷知识竞赛', '10', '2', '0', '3', '1', '0', '10', '1', null, null, '王罗', '2019-06-12 19:11:56');
INSERT INTO `ot_test` VALUES ('42', '计算机网络B卷知识竞赛', '10', '2', '0', '3', '1', '0', '10', '0', 'admin', '2019-06-13 10:19:36', 'admin', '2019-06-13 10:19:36');
INSERT INTO `ot_test` VALUES ('43', '软件测试A卷知识竞赛', '20', '2', '0', '1', '1', '0', '10', '1', null, null, 'admin', '2019-06-14 18:06:36');
INSERT INTO `ot_test` VALUES ('46', '软件测试C卷知识竞赛', '10', '2', '0', '2', '1', '0', '10', '0', '邹景春', '2019-06-19 17:14:57', '邹景春', '2019-06-19 17:14:57');
INSERT INTO `ot_test` VALUES ('52', '操作系统B卷知识竞赛', '10', '1', '0', '1', '1', '0', '10', '0', '黄信胜', '2019-06-19 19:42:04', '黄信胜', '2019-06-19 19:42:04');
INSERT INTO `ot_test` VALUES ('58', '操作系统AAA', '15', '2', '0', '3', '1', '0', '20', '0', '袁伟杰', '2019-06-20 21:52:16', '袁伟杰', '2019-06-20 21:52:16');

-- ----------------------------
-- Table structure for ot_test_error
-- ----------------------------
DROP TABLE IF EXISTS `ot_test_error`;
CREATE TABLE `ot_test_error` (
  `test_error_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识该表的主键',
  `student_id` int(11) NOT NULL COMMENT '学生表的外键',
  `test_id` int(11) NOT NULL DEFAULT '0' COMMENT '试卷的外键',
  `error_answer` varchar(10) NOT NULL COMMENT '错误答案（A,B,C,D）',
  `question_id` int(11) NOT NULL DEFAULT '0' COMMENT '题库外键',
  `created_user` varchar(20) NOT NULL DEFAULT '' COMMENT '创建人',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modified_user` varchar(20) NOT NULL DEFAULT '' COMMENT '修改人',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`test_error_id`),
  KEY `stu_id` (`student_id`),
  KEY `t_id` (`test_id`),
  KEY `ot_test_q_id_1` (`question_id`),
  CONSTRAINT `ot_test_error_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `ot_student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ot_test_error_ibfk_2` FOREIGN KEY (`test_id`) REFERENCES `ot_test` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ot_test_error_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `ot_question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_test_error
-- ----------------------------
INSERT INTO `ot_test_error` VALUES ('1', '1', '40', 'B', '35', '16478001', '2019-12-31 14:16:05', '16478001', '2019-12-31 14:16:05');
INSERT INTO `ot_test_error` VALUES ('2', '1', '40', '1', '20', '16478001', '2019-12-31 14:16:05', '16478001', '2019-12-31 14:16:05');
INSERT INTO `ot_test_error` VALUES ('3', '1', '40', '1', '75', '16478001', '2019-12-31 14:16:05', '16478001', '2019-12-31 14:16:05');
INSERT INTO `ot_test_error` VALUES ('4', '1', '40', '1', '55', '16478001', '2019-12-31 14:16:05', '16478001', '2019-12-31 14:16:05');
INSERT INTO `ot_test_error` VALUES ('5', '1', '40', '1', '24', '16478001', '2019-12-31 14:16:05', '16478001', '2019-12-31 14:16:05');
INSERT INTO `ot_test_error` VALUES ('6', '1', '40', '1', '50', '16478001', '2019-12-31 14:16:05', '16478001', '2019-12-31 14:16:05');
INSERT INTO `ot_test_error` VALUES ('7', '1', '40', '1', '14', '16478001', '2019-12-31 14:16:06', '16478001', '2019-12-31 14:16:06');
INSERT INTO `ot_test_error` VALUES ('8', '1', '40', '1', '25', '16478001', '2019-12-31 14:16:06', '16478001', '2019-12-31 14:16:06');
INSERT INTO `ot_test_error` VALUES ('9', '1', '40', '1', '56', '16478001', '2019-12-31 14:16:06', '16478001', '2019-12-31 14:16:06');

-- ----------------------------
-- Table structure for ot_test_question
-- ----------------------------
DROP TABLE IF EXISTS `ot_test_question`;
CREATE TABLE `ot_test_question` (
  `test_question_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识该表的主键',
  `test_id` int(11) NOT NULL DEFAULT '0' COMMENT '与试卷id的相对应，外键',
  `question_id` int(11) NOT NULL DEFAULT '0' COMMENT '题目外键',
  `created_user` varchar(20) DEFAULT '' COMMENT '创建人',
  `created_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT '' COMMENT '修改人',
  `modified_time` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`test_question_id`),
  KEY `t_id` (`test_id`),
  KEY `ot_test_question_ibfk_2` (`question_id`),
  CONSTRAINT `ot_test_question_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `ot_test` (`test_id`),
  CONSTRAINT `ot_test_question_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `ot_question` (`question_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ot_test_question
-- ----------------------------
INSERT INTO `ot_test_question` VALUES ('1', '1', '1', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('2', '1', '2', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('3', '1', '3', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('4', '1', '4', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('5', '1', '5', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('6', '1', '6', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('7', '1', '7', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('8', '1', '8', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('9', '1', '9', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('10', '1', '10', '教师A', '2019-06-06 16:11:17', '教师A', '2019-06-07 16:11:20');
INSERT INTO `ot_test_question` VALUES ('46', '40', '35', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('48', '40', '20', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('49', '40', '75', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('50', '40', '55', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('51', '40', '24', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('52', '40', '50', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('53', '40', '14', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('54', '40', '25', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('55', '40', '56', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('56', '41', '51', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('57', '41', '10', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('58', '41', '67', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('59', '41', '52', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('60', '41', '21', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('61', '41', '30', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('62', '41', '13', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('63', '41', '57', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('64', '41', '6', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('65', '41', '1', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('66', '42', '19', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('67', '42', '7', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('68', '42', '30', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('69', '42', '11', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('70', '42', '1', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('71', '42', '14', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('72', '42', '28', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('73', '42', '82', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('74', '42', '20', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('75', '42', '62', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('76', '43', '21', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('77', '43', '64', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('78', '43', '71', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('79', '43', '43', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('80', '43', '18', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('81', '43', '69', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('82', '43', '40', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('83', '43', '67', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('84', '43', '70', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('85', '43', '20', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('86', '43', '34', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('87', '43', '62', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('88', '43', '82', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('89', '43', '32', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('90', '43', '9', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('91', '43', '61', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('92', '43', '10', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('93', '43', '58', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('94', '43', '48', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('95', '43', '53', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('96', '46', '32', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('97', '46', '41', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('98', '46', '45', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('99', '46', '44', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('100', '46', '46', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('101', '46', '37', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('102', '46', '53', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('103', '46', '42', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('104', '46', '48', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('105', '46', '52', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('106', '52', '76', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('107', '52', '70', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('108', '52', '68', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('109', '52', '75', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('110', '52', '71', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('111', '52', '72', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('112', '52', '88', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('113', '52', '63', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('114', '52', '80', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('115', '52', '67', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('116', '58', '22', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('117', '58', '19', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('118', '58', '4', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('119', '58', '18', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('120', '58', '25', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('121', '58', '7', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('122', '58', '17', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('123', '58', '14', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('124', '58', '16', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('125', '58', '9', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('126', '58', '5', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('127', '58', '8', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('128', '58', '24', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('129', '58', '6', null, null, null, null);
INSERT INTO `ot_test_question` VALUES ('130', '58', '26', null, null, null, null);
