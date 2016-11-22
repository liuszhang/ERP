/*
Navicat MySQL Data Transfer

Source Server         : MYSQL56
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : egnc

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2016-04-14 09:38:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address_group`
-- ----------------------------
DROP TABLE IF EXISTS `address_group`;
CREATE TABLE `address_group` (
  `GROUP_ID` varchar(255) DEFAULT NULL,
  `GROUP_NAME` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `PRIV_DEPT` varchar(255) DEFAULT NULL,
  `PRIV_ROLE` varchar(255) DEFAULT NULL,
  `PRIV_USER` varchar(255) DEFAULT NULL,
  `ORDER_NO` varchar(255) DEFAULT NULL,
  `SUPPORT_DEPT` varchar(255) DEFAULT NULL,
  `SUPPORT_USER` varchar(255) DEFAULT NULL,
  `SHARE_GROUP_ID` varchar(255) DEFAULT NULL,
  `SHARE_USER_ID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of address_group
-- ----------------------------
INSERT INTO `address_group` VALUES ('1', '客户', 'admin', '', '', '', '0', '', '', '0', '');
INSERT INTO `address_group` VALUES ('2', '朋友', 'admin', '', '', '', '0', '', '', '0', '');
INSERT INTO `address_group` VALUES ('3', '客户', '', 'ALL_DEPT', '', '', '0', '', '', '0', '');
INSERT INTO `address_group` VALUES ('4', '米顶科技职员', 'admin', '', '', '', '1', '', '', '0', '');
INSERT INTO `address_group` VALUES ('5', '腾浪科技职员', 'admin', '', '', '', '2', '', '', '0', '');

-- ----------------------------
-- Table structure for `administrator`
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `serialnumber` int(10) NOT NULL AUTO_INCREMENT,
  `administrator` varchar(12) CHARACTER SET gbk DEFAULT NULL,
  `password` varchar(12) CHARACTER SET gbk DEFAULT NULL,
  `name` varchar(12) CHARACTER SET gbk DEFAULT NULL,
  `department` varchar(12) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`serialnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', 'admin', 'admin', '管理员', '管理员');

-- ----------------------------
-- Table structure for `customs`
-- ----------------------------
DROP TABLE IF EXISTS `customs`;
CREATE TABLE `customs` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `客户代码` varchar(255) DEFAULT NULL,
  `客户名称` varchar(255) DEFAULT NULL,
  `客户级别` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `客户名称` (`客户名称`),
  KEY `客户代码` (`客户代码`) USING BTREE,
  KEY `客户代码_2` (`客户代码`,`客户名称`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of customs
-- ----------------------------
INSERT INTO `customs` VALUES ('1', 'CQ10028', '重庆纳格机电设备有限公司', '客户');
INSERT INTO `customs` VALUES ('2', 'HN10043', '南阳市冠宇物资有限公司', '客户');
INSERT INTO `customs` VALUES ('3', 'HN10074', '洛阳昭泰工贸有限公司', '客户');
INSERT INTO `customs` VALUES ('4', 'HU10012\r\nHU10012', '长沙铭成数控机电有限公司', '客户');
INSERT INTO `customs` VALUES ('5', 'SH20036', '上海源升机电有限公司', '客户');

-- ----------------------------
-- Table structure for `mana`
-- ----------------------------
DROP TABLE IF EXISTS `mana`;
CREATE TABLE `mana` (
  `content` int(255) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET gbk NOT NULL,
  `name` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `password` varchar(10) CHARACTER SET gbk NOT NULL,
  `position` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`content`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mana
-- ----------------------------
INSERT INTO `mana` VALUES ('97', 'asd', '喻亮', '123', '男');
INSERT INTO `mana` VALUES ('98', '2312', '又来了了', '124', '男');
INSERT INTO `mana` VALUES ('99', 'asd21', '喻亮', '125', '男');
INSERT INTO `mana` VALUES ('100', '231312', '又来了了', '126', '男');
INSERT INTO `mana` VALUES ('101', 'asd12', '喻亮', '127', '男');
INSERT INTO `mana` VALUES ('102', '星期一', '喻亮', '128', '男');
INSERT INTO `mana` VALUES ('103', '', '', '', '');
INSERT INTO `mana` VALUES ('104', '', '', '', '');
INSERT INTO `mana` VALUES ('105', '', '', '', '');
INSERT INTO `mana` VALUES ('106', '', '', '', '');
INSERT INTO `mana` VALUES ('107', '', '', '', '');
INSERT INTO `mana` VALUES ('108', '', '', '', '');
INSERT INTO `mana` VALUES ('109', '', '', '', '');
INSERT INTO `mana` VALUES ('110', '', '', '', '');
INSERT INTO `mana` VALUES ('111', 'b', 'a', 'c', 'd');
INSERT INTO `mana` VALUES ('112', 'asd', '喻亮', '123', '男');
INSERT INTO `mana` VALUES ('113', '2312', '又来了了', '124', '男');
INSERT INTO `mana` VALUES ('114', 'asd21', '喻亮', '125', '男');
INSERT INTO `mana` VALUES ('115', '231312', '又来了了', '126', '男');
INSERT INTO `mana` VALUES ('116', 'asd12', '喻亮', '127', '男');
INSERT INTO `mana` VALUES ('117', '星期一', '喻亮', '128', '男');
INSERT INTO `mana` VALUES ('118', '', '', '', '');
INSERT INTO `mana` VALUES ('119', '', '', '', '');
INSERT INTO `mana` VALUES ('120', '', '', '', '');
INSERT INTO `mana` VALUES ('121', '', '', '', '');
INSERT INTO `mana` VALUES ('122', '', '', '', '');
INSERT INTO `mana` VALUES ('123', '', '', '', '');
INSERT INTO `mana` VALUES ('124', '', '', '', '');
INSERT INTO `mana` VALUES ('125', '', '', '', '');

-- ----------------------------
-- Table structure for `non_standard_design`
-- ----------------------------
DROP TABLE IF EXISTS `non_standard_design`;
CREATE TABLE `non_standard_design` (
  `non_standard_design_ID` int(10) NOT NULL AUTO_INCREMENT,
  `主设计人` varchar(255) DEFAULT NULL,
  `参与人员` varchar(255) DEFAULT NULL,
  `设计要求` varchar(255) DEFAULT NULL,
  `非标产品分类` varchar(255) DEFAULT NULL,
  `产品名称` varchar(255) DEFAULT NULL,
  `规格` varchar(255) DEFAULT NULL,
  `客户名称` varchar(255) DEFAULT NULL,
  `数量` varchar(255) DEFAULT NULL,
  `交货期` varchar(255) DEFAULT NULL,
  `已下图标识` varchar(255) DEFAULT NULL,
  `任务下达日期` varchar(255) DEFAULT NULL,
  `实际出图日期` varchar(255) DEFAULT NULL,
  `技术部计划出图日期` varchar(255) DEFAULT NULL,
  `公司非标分类考核节点` varchar(255) DEFAULT NULL,
  `备料尺寸` varchar(255) DEFAULT NULL,
  `制单日期` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  `超期天数` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`non_standard_design_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of non_standard_design
-- ----------------------------
INSERT INTO `non_standard_design` VALUES ('1', '', '曾林林', '', 'NC', '镗刀', 'TEP16-TD31.6P70', '重庆尔创机电设备有限公司', '1', '2016-02-29', '*', null, '2016/2/3', '2016/2/3', '2016/2/5 14:17:44', '', '2016-02-02 14:17:44', '', '2.59564814814803');
INSERT INTO `non_standard_design` VALUES ('2', '申绍旭', '', '', 'NC', '90°可转位面铣刀', 'FM90-91SP12KM', '新乡市天久机械设备有限公司', '2', '2016/3/1', '', '2016/2/3', '', '2016/2/3', '2016/2/6 8:57:53', '', '2016-02-03 08:57:53', '', '42406.3735300926');
INSERT INTO `non_standard_design` VALUES ('3', '', '', '', 'NC', '直筒卡簧', 'C22-12', '成都市康利毅欢物资有限公司', '', '2016/2/29', '*', '', '2016/2/3', '', '2016/2/6', '', '2016/2/3', '', '3');
INSERT INTO `non_standard_design` VALUES ('4', '', '', '', 'NC', '镗刀', 'CN03029-28.6', '济南通旺达工贸有限公司', '1', '2016-03-08', '*', '', '2016/2/3', '', '2016/2/6 13:51:59', '', '2016-02-03 13:51:59', '', '3.57776620370714');
INSERT INTO `non_standard_design` VALUES ('5', '', '', '', 'NC', '直筒卡簧', 'C32-22', '济南玫德铸造有限公司', '2', '2016-03-08', '*', '', '2016/2/3', '', '2016/2/6 13:52:06', '', '2016-02-03 13:52:06', '', '3.57784722222277');
INSERT INTO `non_standard_design` VALUES ('6', '', '何永杰', '', 'ND', '镗刀', 'HTC22-CBZ23-215', '济南玫德铸造有限公司', '1', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 13:52:06', '', '2016-02-03 13:52:06', '', '');
INSERT INTO `non_standard_design` VALUES ('7', '', '刘双', '', 'NC', '整体式钻夹头刀柄', 'BB30-KPU08-80', '北京本根精密工具有限公司', '5', '2016-03-04', '', '2016/2/3', '', '2016/2/4', '2016/2/6 15:36:08', '', '2016-02-03 15:36:08', '', '');
INSERT INTO `non_standard_design` VALUES ('8', '', '高嵩', '', 'NE', '液压刀柄', 'HSK63E-HC25-125', '上海科屹机电设备有限公司', '2', '2016-03-16', '', '2016/2/3', '', '2016/2/4', '2016/2/7 15:48:42', '', '2016-02-03 15:48:42', '', '');
INSERT INTO `non_standard_design` VALUES ('9', '', '唐辉阳', '', 'NC', '正前角外圆车刀', 'SVXBR2525Q11.Kr113H50', '南通思冠弛数控机床有限公司', '10', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 15:48:49', '', '2016-02-03 15:48:49', '', '');
INSERT INTO `non_standard_design` VALUES ('10', '', '唐辉阳', '', 'NC', '正前角外圆车刀', 'SVXBL2525Q11.Kr113H50', '南通思冠弛数控机床有限公司', '10', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 15:48:49', '', '2016-02-03 15:48:49', '', '');
INSERT INTO `non_standard_design` VALUES ('11', '', '刘双', '', 'NC', '刀柄', 'J26-148', '南京万迪科技实业有限公司', '10', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 16:22:37', '', '2016-02-03 16:22:37', '', '');
INSERT INTO `non_standard_design` VALUES ('12', '', '刘双', '', 'NC', '刀柄', 'J26-149', '南京万迪科技实业有限公司', '10', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 16:22:37', '', '2016-02-03 16:22:37', '', '');
INSERT INTO `non_standard_design` VALUES ('13', '', '刘双', '', 'NC', '刀柄', 'J26-150', '南京万迪科技实业有限公司', '6', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 16:22:37', '', '2016-02-03 16:22:37', '', '');
INSERT INTO `non_standard_design` VALUES ('14', '', '刘双', '', 'NC', '刀柄', 'J26-151', '南京万迪科技实业有限公司', '16', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 16:22:37', '', '2016-02-03 16:22:37', '', '');
INSERT INTO `non_standard_design` VALUES ('15', '', '刘双', '', 'NC', '刀柄', 'SK45F-XM31.75F-160', '南京万迪科技实业有限公司', '2', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 16:22:37', '', '2016-02-03 16:22:37', '', '');
INSERT INTO `non_standard_design` VALUES ('16', '', '陈永强', '', 'NC', '螺帽', 'J26-030', '南京万迪科技实业有限公司', '50', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 16:22:37', '', '2016-02-03 16:22:37', '', '');
INSERT INTO `non_standard_design` VALUES ('17', '', '陈永强', '', 'NC', '螺帽', 'J26-031', '南京万迪科技实业有限公司', '50', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 16:22:37', '', '2016-02-03 16:22:37', '', '');
INSERT INTO `non_standard_design` VALUES ('18', '', '陈永强', '', 'NC', '螺帽', 'J26-145', '南京万迪科技实业有限公司', '50', '2016-03-08', '', '2016/2/3', '', '2016/2/4', '2016/2/6 16:22:37', '', '2016-02-03 16:22:37', '', '');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `serialnumber` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) CHARACTER SET gbk DEFAULT NULL,
  `password` varchar(10) CHARACTER SET gbk DEFAULT NULL,
  `department` varchar(10) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`serialnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'a', 'a', null);
INSERT INTO `users` VALUES ('2', 'b', 'b', null);

-- ----------------------------
-- Table structure for `users_mana`
-- ----------------------------
DROP TABLE IF EXISTS `users_mana`;
CREATE TABLE `users_mana` (
  `ID_MANA` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_MANA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of users_mana
-- ----------------------------
INSERT INTO `users_mana` VALUES ('1', 'mana1', 'mana1', '王二', '技术部经理');
INSERT INTO `users_mana` VALUES ('2', 'b', 'b', '六哥', null);
INSERT INTO `users_mana` VALUES ('3', 'a', 'a', '李四', '专业主管');

-- ----------------------------
-- Table structure for `users_sale`
-- ----------------------------
DROP TABLE IF EXISTS `users_sale`;
CREATE TABLE `users_sale` (
  `ID_SALE` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `position` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_SALE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of users_sale
-- ----------------------------
INSERT INTO `users_sale` VALUES ('1', 'sale1', 'sale1', '王二', '销售主管');
INSERT INTO `users_sale` VALUES ('2', 'a', 'a', '李四', '销售人员');
INSERT INTO `users_sale` VALUES ('3', 'b', 'b', '张三', '销售人员');

-- ----------------------------
-- Table structure for `users_tech`
-- ----------------------------
DROP TABLE IF EXISTS `users_tech`;
CREATE TABLE `users_tech` (
  `ID_TECH` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `name` varchar(30) NOT NULL,
  `position` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_TECH`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of users_tech
-- ----------------------------
INSERT INTO `users_tech` VALUES ('1', 'tech1', 'tech1', '张三', '工程师');
INSERT INTO `users_tech` VALUES ('2', 'a', 'a', '李四', '专业主管');
INSERT INTO `users_tech` VALUES ('4', 'b', 'c', 'a', 'd');

-- ----------------------------
-- Table structure for `方案登记表`
-- ----------------------------
DROP TABLE IF EXISTS `方案登记表`;
CREATE TABLE `方案登记表` (
  `project_ID` int(10) NOT NULL AUTO_INCREMENT,
  `方案修改` varchar(255) DEFAULT NULL,
  `片区` varchar(255) DEFAULT NULL,
  `#项目编号#` varchar(255) DEFAULT NULL,
  `客户代码` varchar(255) DEFAULT NULL,
  `#客户项目号计数` varchar(255) DEFAULT NULL,
  `日期` varchar(255) DEFAULT NULL,
  `安排日期` date DEFAULT NULL,
  `预计完成日期` date DEFAULT NULL,
  `接收日期` varchar(255) DEFAULT NULL,
  `技术部实际完成日期` varchar(255) DEFAULT NULL,
  `销售部实际完成时间` varchar(255) DEFAULT NULL,
  `方案紧急程度` varchar(255) DEFAULT NULL,
  `客户名称` varchar(255) DEFAULT NULL,
  `项目基本信息` varchar(255) DEFAULT NULL,
  `项目内容` varchar(255) DEFAULT NULL,
  `方案类型` varchar(255) DEFAULT NULL,
  `设计人` varchar(255) DEFAULT NULL,
  `方案设计缺少因素` varchar(255) DEFAULT NULL,
  `方案处理情况描述及处置结果` varchar(255) DEFAULT NULL,
  `是否回复` enum('否','是') DEFAULT '否',
  `超期天数` varchar(255) DEFAULT NULL,
  `是否形成订单` varchar(255) DEFAULT NULL,
  `备注` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of 方案登记表
-- ----------------------------
INSERT INTO `方案登记表` VALUES ('1', '', 'HN', 'HN10043-0001', 'HN10043', '1', '2015-12-23', '2016-02-01', null, '', null, null, '', '南阳市冠宇物资有限公司', '无', '方案：南阳冠宇 转胡飞（前期做过类似的', '零星方案', '李四', '', '', null, '', '', '');
INSERT INTO `方案登记表` VALUES ('2', '', 'HN', 'HN10043-0002', 'HN10043', '2', '2015-12-19', '2016-02-01', null, '2016/3/8 11:16:48', '', null, '', '南阳市冠宇物资有限公司', '无（有型号）', '出图：南阳冠宇ISS21.7S-3D(只能上差2', '零星方案', '李四', '', '', null, '', '', '');
INSERT INTO `方案登记表` VALUES ('3', '', 'SH', 'SH20036-0001', 'SH20036', '1', '2016-02-01', '2016-02-03', null, '2016/3/8 11:01:55', null, null, '', '上海源升机电有限公司', '有', '上海源升', '', '李四', '', '', null, '', '', '');
INSERT INTO `方案登记表` VALUES ('4', '', 'HU', 'HU10012-0001', 'HU10012', '1', '2016-02-03', '2016-02-04', null, '', null, null, '', '长沙铭成数控机电有限公司', '无（有型号）', '长沙铭成出图', '成套方案', '李四', '', '', null, '', '', '');
INSERT INTO `方案登记表` VALUES ('5', '', 'CQ', 'CQ10028-0001', 'CQ10028', '1', '2015-12-25', '2016-01-01', null, null, null, null, '', '重庆纳格机电设备有限公司', '无（有客户来图）', 'Fw:加工零件咨询', '', '李四', '', '做不了', null, '', '', '');
INSERT INTO `方案登记表` VALUES ('6', 'G1', 'CQ', 'CQ10028-0001', '0', '0', null, null, null, null, null, null, '', '重庆纳格', '修改', '修改', '零星方案', '李四', '', '', null, '', '', '');
INSERT INTO `方案登记表` VALUES ('7', '', 'HN', 'HN10074-0001', 'HN10074', '1', null, null, null, null, null, null, '', '洛阳昭泰工贸有限公司', '无（换型）', '钻头换型号：洛阳昭泰换型（只换1-12项）', '', null, '', '图纸版本太高，无法打开', null, '', '', '');

-- ----------------------------
-- Table structure for `方案登记表2`
-- ----------------------------
DROP TABLE IF EXISTS `方案登记表2`;
CREATE TABLE `方案登记表2` (
  `ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of 方案登记表2
-- ----------------------------
