/*
Navicat MySQL Data Transfer

Source Server         : 39.108.180.196
Source Server Version : 50723
Source Host           : 39.108.180.196:3306
Source Database       : business_adminitration

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-09-22 20:33:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`loginname`),
  UNIQUE KEY `authorityAndloginname` (`loginname`) USING BTREE COMMENT '权限名称与管理员名称统一且唯一'
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('22', 'zhangsan', '123456');
INSERT INTO `adminuser` VALUES ('113', 'zhangsan03', '123456');
INSERT INTO `adminuser` VALUES ('127', '123456', '123456');
INSERT INTO `adminuser` VALUES ('128', 'aaa', '111111');

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `username` varchar(255) NOT NULL,
  `member` varchar(255) DEFAULT 'true',
  `VIPMember` varchar(255) DEFAULT 'false',
  `adminMember` varchar(255) DEFAULT 'false',
  PRIMARY KEY (`username`),
  CONSTRAINT `key_username` FOREIGN KEY (`username`) REFERENCES `userinfo` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('123456', 'true', 'false', 'true');
INSERT INTO `authority` VALUES ('201612061602', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('201612061654', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('46545687', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('aaa', 'true', 'false', 'true');
INSERT INTO `authority` VALUES ('asdasdasd', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('lin', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('linjinjian', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('m0_37770', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('m0_37770150789', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('qqq', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('qqqqq', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('zhangsan02', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('zhangsan03', 'true', 'false', 'true');
INSERT INTO `authority` VALUES ('zhangsan04', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('zhangsan05', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('zhangsan06', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('zhangsan07', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('zhangsan08', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('zhangsan10', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('张君', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('张无忌', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('张真人', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('张翠山', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('真武大帝', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('辣鸡伟', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('辣鸡旭', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('辣鸡柱', 'true', 'false', 'false');
INSERT INTO `authority` VALUES ('辣鸡盛', 'true', 'false', 'false');

-- ----------------------------
-- Table structure for doresponse
-- ----------------------------
DROP TABLE IF EXISTS `doresponse`;
CREATE TABLE `doresponse` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `time` datetime(4) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `admintor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doresponse
-- ----------------------------
INSERT INTO `doresponse` VALUES ('1', '2018-11-18 20:28:47.0000', '删除用户', '删除lisi用户', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('2', '2018-12-02 14:20:00.0000', '添加用户', '添加用户--孙权', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('3', '2018-12-02 14:20:00.0000', '添加用户', '添加用户--孙策', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('4', '2018-12-02 14:20:00.0000', '添加用户', '添加用户--孙尚香', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('5', '2018-12-02 14:20:00.0000', '添加用户', '添加用户--孙超', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('6', '2018-12-02 14:20:00.0000', '添加用户', '添加用户--孙晨', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('7', '2018-12-02 14:20:00.0000', '添加用户', '添加用户--孙聪', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('8', '2018-12-02 14:20:00.0000', '添加用户', '添加用户--孙子', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('9', '2018-12-02 14:20:00.0000', '删除用户', '删除用户--孙权', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('10', '2018-11-19 16:02:39.0000', '删除用户', '删除用户--孙策', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('11', '2018-12-02 14:20:00.0000', '删除用户', '删除用户--孙尚香', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('12', '2018-12-02 14:20:00.0000', '删除用户', '删除用户--孙超', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('13', '2018-12-02 14:20:00.0000', '修改用户', '修改用户--孙晨', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('14', '2018-12-02 14:20:00.0000', '修改用户', '修改用户--孙聪', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('15', '2018-12-02 14:20:00.0000', '修改用户', '修改用户--孙子', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('16', '2018-12-02 14:20:00.0000', '删除用户', '删除用户--孙权', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('17', '2018-12-02 14:20:00.0000', '删除用户', '删除用户--孙策', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('18', '2018-12-02 14:20:00.0000', '删除用户', '删除用户--孙尚香', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('19', '2018-12-02 14:20:00.0000', '删除用户', '删除用户--孙超', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('20', '2018-12-02 14:20:00.0000', '修改用户', '修改用户--孙晨', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('21', '2018-12-02 14:20:00.0000', '修改用户', '修改用户--孙聪', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('22', '2018-12-02 14:20:00.0000', '修改用户', '修改用户--孙子', '成功', '孙坚');
INSERT INTO `doresponse` VALUES ('23', '2018-11-28 11:47:27.0000', '更新用户', '修改用户辣鸡柱', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('24', '2018-11-28 20:56:16.0000', '更新用户', '修改用户辣鸡伟', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('25', '2018-11-28 20:56:50.0000', '更新用户', '修改用户辣鸡旭', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('26', '2018-11-28 22:01:18.0000', '添加用户', '添加用户2016120616', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('27', '2018-11-30 10:53:48.0000', '添加用户', '添加用户辣鸡盛', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('28', '2018-12-04 20:49:40.0000', '更新新闻', '修改新闻3', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('29', '2018-12-04 20:49:53.0000', '更新新闻', '修改新闻4', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('30', '2018-12-04 20:50:09.0000', '更新新闻', '修改新闻4', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('31', '2018-12-04 21:38:24.0000', '更新新闻', '修改新闻1', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('32', '2018-12-04 22:11:41.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('33', '2018-12-04 22:11:48.0000', '删除新闻', '删除新闻8', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('34', '2018-12-04 22:15:09.0000', '更新新闻', '修改新闻8', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('35', '2018-12-04 22:17:18.0000', '删除新闻', '删除新闻9', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('36', '2018-12-04 22:17:22.0000', '更新新闻', '修改新闻9', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('37', '2018-12-04 22:17:37.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('38', '2018-12-04 22:17:43.0000', '删除新闻', '删除新闻10', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('39', '2018-12-04 22:20:35.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('40', '2018-12-04 22:20:40.0000', '删除新闻', '删除新闻11', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('41', '2018-12-04 22:23:23.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('42', '2018-12-04 22:23:27.0000', '删除新闻', '删除新闻12', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('43', '2018-12-04 22:23:40.0000', '删除用户', '删除用户null', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('44', '2018-12-04 22:48:27.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('45', '2018-12-04 22:49:02.0000', '添加用户', '添加用户m0_37770150', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('46', '2018-12-04 22:49:20.0000', '删除用户', '删除用户null', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('47', '2018-12-04 22:54:59.0000', '添加用户', '添加用户m0_37770150', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('48', '2018-12-04 22:58:16.0000', '删除用户', '删除用户m0_37770150', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('49', '2018-12-04 22:59:02.0000', '添加用户', '添加用户辣鸡伟', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('50', '2018-12-04 23:00:55.0000', '删除用户', '删除用户辣鸡伟', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('51', '2018-12-04 23:01:02.0000', '删除用户', '删除用户辣鸡沛', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('52', '2018-12-08 23:35:37.0000', '更新新闻', '修改新闻4', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('53', '2018-12-09 16:20:27.0000', '更新新闻', '修改新闻1', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('54', '2018-12-09 19:58:07.0000', '删除新闻', '删除新闻15', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('55', '2018-12-09 19:58:11.0000', '更新新闻', '修改新闻15', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('56', '2018-12-09 19:58:13.0000', '删除新闻', '删除新闻14', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('57', '2018-12-09 19:58:15.0000', '更新新闻', '修改新闻14', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('58', '2018-12-09 19:58:21.0000', '删除新闻', '删除新闻13', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('59', '2018-12-09 19:58:27.0000', '更新新闻', '修改新闻13', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('60', '2018-12-09 19:59:21.0000', '添加新闻', '添加一条新闻', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('61', '2018-12-09 19:59:38.0000', '添加新闻', '添加一条新闻', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('62', '2018-12-09 19:59:44.0000', '删除新闻', '删除新闻17', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('63', '2018-12-09 20:30:10.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('64', '2018-12-09 20:30:14.0000', '删除新闻', '删除新闻18', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('65', '2018-12-09 20:31:49.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('66', '2018-12-09 20:31:53.0000', '删除新闻', '删除新闻16', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('67', '2018-12-09 20:31:58.0000', '删除新闻', '删除新闻19', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('68', '2018-12-09 20:32:20.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('69', '2018-12-09 20:32:34.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('70', '2018-12-09 20:32:45.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('71', '2018-12-09 20:33:40.0000', '删除新闻', '删除新闻22', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('72', '2018-12-09 20:34:46.0000', '更新用户', '修改用户张无忌', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('73', '2018-12-09 20:34:56.0000', '更新用户', '修改用户辣鸡盛', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('74', '2018-12-09 20:41:21.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('75', '2018-12-09 20:41:25.0000', '删除新闻', '删除新闻23', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('76', '2018-12-09 20:41:29.0000', '更新新闻', '修改新闻23', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('77', '2018-12-09 20:42:03.0000', '更新用户', '修改用户张真人', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('78', '2018-12-09 20:42:17.0000', '添加用户', '添加用户m0_37770150', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('79', '2018-12-09 20:48:26.0000', '更新用户', '修改用户张无忌', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('80', '2018-12-09 20:48:43.0000', '添加用户', '添加用户2016120616', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('81', '2018-12-09 21:47:03.0000', '添加产品', '添加产品asd', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('82', '2018-12-09 21:47:34.0000', '删除新闻', '删除新闻21', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('83', '2018-12-09 21:47:46.0000', '添加新闻', '添加一条新闻', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('84', '2018-12-09 23:16:11.0000', '删除新闻', '删除新闻24', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('85', '2018-12-09 23:16:13.0000', '删除新闻', '删除新闻24', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('86', '2018-12-09 23:16:28.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('87', '2018-12-09 23:16:42.0000', '删除产品', '删除产品35', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('88', '2018-12-09 23:16:46.0000', '删除产品', '删除产品35', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('89', '2018-12-09 23:19:02.0000', '删除用户', '删除用户2016120616', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('90', '2018-12-09 23:19:56.0000', '添加用户', '添加用户2016120616', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('91', '2018-12-09 23:20:04.0000', '删除用户', '删除用户2016120616', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('92', '2018-12-09 23:28:56.0000', '删除用户', '删除用户m0_37770150', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('93', '2018-12-09 23:29:28.0000', '删除用户', '删除用户m0_37770150', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('94', '2018-12-09 23:29:44.0000', '添加用户', '添加用户2016120616', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('95', '2018-12-09 23:29:48.0000', '删除用户', '删除用户2016120616', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('96', '2018-12-09 23:32:55.0000', '删除新闻', '删除新闻25', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('97', '2018-12-09 23:35:26.0000', '添加用户', '添加用户2016120616', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('98', '2018-12-09 23:35:50.0000', '删除用户', '删除用户\'2016120616\'', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('99', '2018-12-09 23:43:13.0000', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('100', '2018-12-09 23:43:53.0000', '删除新闻', '删除新闻26', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('101', '2018-12-09 23:47:29.0000', '删除新闻', '删除新闻20', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('102', '2018-12-10 10:28:45.0000', '添加产品', '添加产品平板', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('103', '2018-12-11 00:24:14.0000', '添加产品', '添加产品笔记本', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('104', '2018-12-11 09:32:51.0000', '添加产品', '添加产品手机', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('105', '2018-12-11 19:07:05.0000', '删除产品', '删除产品36', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('106', '2018-12-11 21:26:26.0000', '添加产品', '添加产品笔记本', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('107', '2018-12-11 21:26:46.0000', '添加产品', '添加产品手机', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('108', '2018-12-11 21:26:53.0000', '删除产品', '删除产品40', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('109', '2018-12-11 21:26:58.0000', '删除产品', '删除产品38', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('110', '2018-12-11 21:40:12.0000', '添加产品', '添加产品笔记本', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('111', '2018-12-11 21:40:13.0000', '添加产品', '添加产品笔记本', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('112', '2018-12-11 21:56:34.0000', '修改产品', '修改产品笔记本', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('113', '2018-12-11 21:56:53.0000', '修改产品', '修改产品笔记本', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('114', '2018-12-11 21:56:59.0000', '删除产品', '删除产品42', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('115', '2018-12-11 21:57:40.0000', '删除产品', '删除产品41', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('116', '2018-12-11 21:58:42.0000', '添加产品', '添加产品笔记本', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('117', '2018-12-11 22:00:00.0000', '删除产品', '删除产品43', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('118', '2018-12-11 22:00:47.0000', '删除产品', '删除产品39', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('119', '2018-12-21 21:08:31.4180', '添加用户', '添加用户46545687', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('120', '2018-12-21 21:10:08.0870', '添加用户', '添加用户asdasdasd', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('121', '2018-12-21 21:12:28.4190', '添加用户', '添加用户m0_37770', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('122', '2018-12-21 21:13:50.2730', '添加用户', '添加用户m0_37770150789', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('123', '2018-12-22 00:44:02.3640', '添加用户', '添加用户zhangsan02', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('124', '2018-12-22 00:45:24.6740', '添加用户', '添加用户zhangsan03', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('125', '2018-12-22 00:46:41.6910', '添加用户', '添加用户zhangsan04', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('126', '2018-12-22 00:48:01.6490', '添加用户', '添加用户201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('127', '2018-12-22 00:49:17.4970', '添加用户', '添加用户201612061654', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('128', '2018-12-23 22:08:26.8730', '删除用户', '删除用户20154899', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('129', '2018-12-24 15:27:06.5650', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('130', '2018-12-24 15:38:06.1140', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('131', '2018-12-24 15:42:28.9790', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('132', '2018-12-24 16:32:34.5500', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('133', '2018-12-24 16:33:28.2800', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('134', '2018-12-24 16:37:01.0310', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('135', '2018-12-24 16:39:16.6290', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('136', '2018-12-24 16:39:20.3060', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('137', '2018-12-24 16:45:13.9040', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('138', '2018-12-24 16:45:17.0390', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('139', '2018-12-24 16:45:27.5270', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('140', '2018-12-24 16:45:33.0820', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('141', '2018-12-24 16:45:40.0250', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('142', '2018-12-24 16:45:46.6160', '修改用户', '修改用户权限201612061654', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('143', '2018-12-24 16:45:59.1110', '修改用户', '修改用户权限201612061654', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('144', '2018-12-24 16:46:21.4610', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('145', '2018-12-24 16:46:51.9600', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('146', '2018-12-24 16:47:02.8090', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('147', '2018-12-24 16:47:08.0820', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('148', '2018-12-24 16:50:26.4210', '修改用户', '修改用户权限201612061654', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('149', '2018-12-24 16:50:29.3370', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('150', '2018-12-24 16:50:34.3620', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('151', '2018-12-24 16:51:07.3200', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('152', '2018-12-24 16:51:21.0480', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('153', '2018-12-24 16:51:35.2560', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('154', '2018-12-24 16:52:09.8940', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('155', '2018-12-24 16:53:08.8130', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('156', '2018-12-24 16:54:09.8940', '修改用户', '修改用户权限zhangsan', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('157', '2018-12-24 16:54:34.6990', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('158', '2018-12-24 16:54:55.2570', '修改用户', '修改用户权限zhangsan', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('159', '2018-12-24 22:27:41.0490', '删除产品', '删除产品null', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('160', '2018-12-25 10:21:45.5190', '添加用户', '添加用户6253', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('161', '2018-12-26 21:08:26.4210', '删除用户', '删除用户6253', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('162', '2018-12-26 21:52:16.8430', '修改产品', '修改产品手机', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('163', '2018-12-26 21:55:32.7740', '修改产品', '修改产品手机', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('164', '2018-12-28 00:17:34.1000', '添加用户', '添加用户辣鸡柱1', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('165', '2018-12-28 00:19:13.4530', '删除用户', '删除用户辣鸡柱1', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('166', '2018-12-28 00:25:19.5160', '添加用户', '添加用户2016120616456', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('167', '2018-12-28 00:25:28.9390', '更新用户', '修改用户2016120616456', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('168', '2018-12-28 00:25:36.4210', '删除用户', '删除用户2016120616456', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('169', '2018-12-28 00:25:47.9470', '修改用户', '修改用户权限m0_37770', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('170', '2018-12-28 00:25:55.7300', '修改用户', '修改用户权限m0_37770', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('171', '2018-12-28 00:28:36.8310', '修改用户', '修改用户权限201612061654', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('172', '2018-12-28 00:28:41.5010', '修改用户', '修改用户权限201612061654', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('173', '2018-12-28 00:28:45.5800', '修改用户', '修改用户权限201612061654', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('174', '2018-12-28 00:28:48.9800', '修改用户', '修改用户权限201612061654', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('175', '2018-12-28 00:28:52.5400', '修改用户', '修改用户权限201612061654', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('176', '2018-12-28 00:28:59.4510', '修改用户', '修改用户权限zhangsan02', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('177', '2018-12-28 00:29:04.9810', '修改用户', '修改用户权限zhangsan02', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('178', '2018-12-28 00:29:09.6590', '修改用户', '修改用户权限zhangsan02', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('179', '2018-12-28 00:29:17.3390', '修改用户', '修改用户权限zhangsan02', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('180', '2018-12-28 00:29:43.4050', '修改用户', '修改用户权限zhangsan02', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('181', '2018-12-28 00:29:56.7310', '修改用户', '修改用户权限张君宝', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('182', '2018-12-28 00:30:06.2750', '修改用户', '修改用户权限张君宝', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('183', '2018-12-28 00:30:14.6890', '修改用户', '修改用户权限张君宝', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('184', '2018-12-28 00:30:24.4090', '修改用户', '修改用户权限张君宝', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('185', '2018-12-28 00:30:27.8670', '修改用户', '修改用户权限张君宝', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('186', '2018-12-28 00:31:23.3900', '修改用户', '修改用户权限张君宝', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('187', '2018-12-28 00:36:11.1940', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('188', '2018-12-28 00:36:16.1930', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('189', '2018-12-28 00:36:21.4490', '修改用户', '修改用户权限m0_37770', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('190', '2018-12-28 00:36:25.2600', '修改用户', '修改用户权限m0_37770', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('191', '2018-12-28 00:37:32.6800', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('192', '2018-12-28 00:37:40.2420', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('193', '2018-12-28 00:37:44.1030', '修改用户', '修改用户权限m0_37770', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('194', '2018-12-28 00:37:48.6380', '修改用户', '修改用户权限m0_37770', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('195', '2018-12-28 00:37:53.3790', '修改用户', '修改用户权限asdasdasd', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('196', '2018-12-28 00:37:56.6580', '修改用户', '修改用户权限asdasdasd', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('197', '2018-12-28 00:38:02.3270', '修改用户', '修改用户权限张君宝', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('198', '2018-12-28 00:38:23.1810', '修改用户', '修改用户权限张三丰', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('199', '2018-12-28 00:45:41.0360', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('200', '2018-12-28 00:45:44.1370', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('201', '2018-12-28 00:50:46.8540', '修改用户', '修改用户权限zhangsan03', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('202', '2018-12-28 01:00:10.0770', '修改用户', '修改用户权限201612061654', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('203', '2018-12-28 01:00:15.3680', '修改用户', '修改用户权限201612061654', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('204', '2018-12-28 01:00:15.9810', '修改用户', '修改用户权限201612061654', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('205', '2018-12-28 01:00:24.5880', '修改用户', '修改用户权限201612061654', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('206', '2018-12-28 01:00:44.3010', '修改用户', '修改用户权限201612061654', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('207', '2018-12-28 01:05:04.3740', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('208', '2018-12-28 01:05:46.2590', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('209', '2018-12-28 01:05:49.8000', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('210', '2018-12-28 01:06:03.3050', '修改用户', '修改用户权限zhangsan04', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('211', '2018-12-28 01:10:03.5980', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('212', '2018-12-28 01:10:07.1600', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('213', '2018-12-28 01:10:12.1560', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('214', '2018-12-28 01:13:45.9270', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('215', '2018-12-28 01:14:03.3960', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('216', '2018-12-28 01:14:04.4150', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('217', '2018-12-28 01:14:04.6610', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('218', '2018-12-28 01:14:05.6110', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('219', '2018-12-28 01:15:42.2270', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('220', '2018-12-28 01:18:12.9280', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('221', '2018-12-28 01:18:15.5950', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('222', '2018-12-28 01:18:16.8790', '修改用户', '修改用户权限asdasdasd', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('223', '2018-12-28 01:18:17.9860', '修改用户', '修改用户权限46545687', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('224', '2018-12-28 01:18:21.7000', '修改用户', '修改用户权限张君宝', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('225', '2018-12-28 01:18:24.8450', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('226', '2018-12-28 01:18:27.8850', '修改用户', '修改用户权限zhangsan04', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('227', '2018-12-28 01:18:30.3750', '修改用户', '修改用户权限zhangsan03', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('228', '2018-12-28 01:18:32.7450', '修改用户', '修改用户权限zhangsan02', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('229', '2018-12-28 01:18:37.4270', '修改用户', '修改用户权限张君宝', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('230', '2018-12-28 01:18:42.9540', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('231', '2018-12-28 01:20:03.9040', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('232', '2018-12-28 01:20:11.5550', '修改用户', '修改用户权限46545687', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('233', '2018-12-28 01:23:48.1580', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('234', '2018-12-28 01:24:18.0890', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('235', '2018-12-28 01:24:19.2150', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('236', '2018-12-28 01:25:14.5130', '修改用户', '修改用户权限m0_37770150789', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('237', '2018-12-28 01:26:06.9180', '修改用户', '修改用户权限m0_37770150789', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('238', '2018-12-28 01:26:09.1580', '修改用户', '修改用户权限m0_37770150789', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('239', '2018-12-28 01:30:09.2820', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('240', '2018-12-28 01:31:13.3150', '修改用户', '修改用户权限m0_37770150789', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('241', '2018-12-28 01:32:01.9090', '修改用户', '修改用户权限m0_37770150789', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('242', '2018-12-28 01:32:01.9090', '修改用户', '修改用户权限m0_37770150789', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('243', '2018-12-28 01:32:01.9090', '修改用户', '修改用户权限m0_37770150789', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('244', '2018-12-28 01:37:47.9850', '修改用户', '修改用户权限46545687', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('245', '2018-12-28 01:38:05.7350', '修改用户', '修改用户权限asdasdasd', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('246', '2018-12-28 01:38:07.5830', '修改用户', '修改用户权限m0_37770', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('247', '2018-12-28 01:38:08.4510', '修改用户', '修改用户权限m0_37770150789', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('248', '2018-12-28 01:38:09.3050', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('249', '2018-12-28 01:38:10.4950', '修改用户', '修改用户权限201612061654', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('250', '2018-12-28 01:38:19.9020', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('251', '2018-12-28 01:38:37.7130', '修改用户', '修改用户权限201612061654', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('252', '2018-12-28 01:38:47.0070', '修改用户', '修改用户权限asdasdasd', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('253', '2018-12-28 01:38:51.7470', '修改用户', '修改用户权限m0_37770', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('254', '2018-12-28 01:38:54.4890', '修改用户', '修改用户权限asdasdasd', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('255', '2018-12-28 01:39:01.7260', '修改用户', '修改用户权限m0_37770', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('256', '2018-12-28 01:39:19.3650', '修改用户', '修改用户权限m0_37770', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('257', '2018-12-28 01:39:21.0670', '修改用户', '修改用户权限m0_37770150789', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('258', '2018-12-28 01:39:28.8900', '修改用户', '修改用户权限zhangsan04', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('259', '2018-12-28 01:39:44.1520', '修改用户', '修改用户权限46545687', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('260', '2018-12-28 10:14:10.2880', '修改用户', '修改用户权限张三丰', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('261', '2018-12-28 10:15:37.4070', '修改用户', '修改用户权限zhangsan04', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('262', '2018-12-28 10:15:45.0350', '修改用户', '修改用户权限m0_37770150789', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('263', '2018-12-28 10:15:55.1730', '修改用户', '修改用户权限张三丰', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('264', '2018-12-28 10:16:14.5940', '修改用户', '修改用户权限zhangsan02', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('265', '2018-12-28 10:16:17.2960', '修改用户', '修改用户权限zhangsan02', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('266', '2018-12-28 11:01:16.4700', '修改用户', '修改用户权限asdasdasd', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('267', '2018-12-28 11:01:25.7770', '修改用户', '修改用户权限zhangsan02', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('268', '2018-12-28 11:02:51.9970', '修改用户', '修改用户权限201612061654', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('269', '2018-12-28 11:05:40.2490', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('270', '2018-12-28 11:05:41.7050', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('271', '2018-12-28 11:11:38.2270', '修改用户', '修改用户权限46545687', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('272', '2018-12-28 11:29:06.4770', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('273', '2018-12-28 11:29:07.3880', '修改用户', '修改用户权限201612061654', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('274', '2018-12-28 11:30:41.8800', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('275', '2018-12-28 11:30:43.2920', '修改用户', '修改用户权限201612061654', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('276', '2018-12-28 11:30:44.0390', '修改用户', '修改用户权限46545687', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('277', '2018-12-28 11:31:57.1870', '修改用户', '修改用户权限201612061602', '失败', '未知管理员');
INSERT INTO `doresponse` VALUES ('278', '2018-12-28 11:43:21.3710', '修改用户', '修改用户权限46545687', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('279', '2018-12-28 11:46:31.1780', '修改用户', '修改用户权限asdasdasd', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('280', '2018-12-28 11:47:01.2460', '修改用户', '修改用户权限asdasdasd', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('281', '2018-12-28 11:47:07.9560', '修改用户', '修改用户权限asdasdasd', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('282', '2018-12-28 11:47:16.3590', '修改用户', '修改用户权限46545687', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('283', '2018-12-28 11:47:23.7980', '修改用户', '修改用户权限zhangsan04', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('284', '2018-12-28 11:47:26.3980', '修改用户', '修改用户权限zhangsan04', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('285', '2018-12-28 11:47:29.0690', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('286', '2018-12-28 11:47:31.7900', '修改用户', '修改用户权限张三丰', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('287', '2018-12-28 11:47:34.8920', '修改用户', '修改用户权限zhangsan03', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('288', '2018-12-28 11:50:46.7640', '修改用户', '修改用户权限46545687', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('289', '2018-12-28 11:50:48.6580', '修改用户', '修改用户权限46545687', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('290', '2018-12-28 11:51:48.6130', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('291', '2018-12-28 11:51:51.3580', '修改用户', '修改用户权限201612061602', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('292', '2018-12-28 11:51:55.8170', '修改用户', '修改用户权限46545687', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('293', '2018-12-28 11:51:57.7560', '修改用户', '修改用户权限46545687', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('294', '2018-12-29 19:51:20.9350', '添加产品', '添加产品手机', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('295', '2018-12-29 19:51:40.5360', '修改产品', '修改产品手机', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('296', '2018-12-29 19:56:50.5880', '删除用户', '删除用户辣鸡柱1', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('297', '2018-12-29 20:35:37.7250', '添加产品', '添加产品手机', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('298', '2018-12-29 20:35:45.7520', '删除产品', '删除产品null', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('299', '2018-12-30 14:36:34.3520', '添加用户', '添加用户辣鸡柱', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('300', '2019-01-01 17:24:53.4720', '添加用户', '添加用户zhangsan05', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('301', '2019-01-01 17:25:02.6240', '添加用户', '添加用户zhangsan06', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('302', '2019-01-01 17:25:10.6680', '添加用户', '添加用户zhangsan07', '成功', '未知管理员');
INSERT INTO `doresponse` VALUES ('303', '2019-01-01 21:38:24.8940', '删除用户', '删除用户zhangsan07', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('304', '2019-01-02 09:20:00.6410', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('305', '2019-01-02 09:20:13.5140', '更新新闻', '修改新闻27', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('306', '2019-01-02 09:20:18.1010', '删除新闻', '删除新闻27', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('307', '2019-01-02 09:21:06.5910', '添加产品', '添加产品手机', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('308', '2019-01-02 09:21:24.9090', '删除产品', '删除产品null', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('309', '2019-01-02 09:21:34.2190', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('310', '2019-01-02 09:21:36.9480', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('311', '2019-01-02 09:27:45.5550', '删除产品', '删除产品null', '成功', 'zhangsan03');
INSERT INTO `doresponse` VALUES ('312', '2019-01-02 09:30:51.8030', '添加产品', '添加产品手机', '成功', 'zhangsan03');
INSERT INTO `doresponse` VALUES ('313', '2019-01-02 09:36:33.0510', '删除产品', '删除产品null', '成功', 'zhangsan03');
INSERT INTO `doresponse` VALUES ('314', '2019-01-02 09:43:26.2480', '添加产品', '添加产品笔记本', '成功', 'zhangsan03');
INSERT INTO `doresponse` VALUES ('315', '2019-01-02 09:56:38.6230', '添加产品', '添加产品yugjhjk456', '成功', 'zhangsan03');
INSERT INTO `doresponse` VALUES ('316', '2019-01-02 09:58:54.0040', '删除产品', '删除产品sad', '成功', 'zhangsan03');
INSERT INTO `doresponse` VALUES ('317', '2019-01-02 09:58:58.8470', '删除产品', '删除产品yugjhjk456', '成功', 'zhangsan03');
INSERT INTO `doresponse` VALUES ('318', '2019-01-02 15:42:30.8690', '添加产品', '添加产品qe', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('319', '2019-01-02 15:42:38.8790', '删除产品', '删除产品qe', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('320', '2019-01-02 15:50:47.0800', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('321', '2019-01-02 15:51:49.3540', '更新新闻', '修改新闻1', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('322', '2019-01-03 10:02:10.9690', '添加新闻', '添加一条新闻', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('323', '2019-01-03 10:26:23.1190', '删除新闻', '删除新闻28', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('324', '2019-01-04 12:57:08.4240', '修改用户', '修改用户权限201612061654', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('325', '2019-01-04 12:57:09.6370', '修改用户', '修改用户权限201612061654', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('326', '2019-01-04 12:57:17.1420', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('327', '2019-01-04 12:57:17.4270', '修改用户', '修改用户权限201612061602', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('328', '2019-01-04 12:57:20.7980', '修改用户', '修改用户权限201612061602', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('329', '2019-01-04 12:57:21.9060', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('330', '2019-01-04 12:57:25.6200', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('331', '2019-01-04 12:57:25.8060', '修改用户', '修改用户权限201612061602', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('332', '2019-01-04 13:01:23.8620', '修改用户', '修改用户权限201612061602', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('333', '2019-01-04 13:01:26.7310', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('334', '2019-01-04 13:01:30.5050', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('335', '2019-01-04 13:01:30.6310', '修改用户', '修改用户权限201612061602', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('336', '2019-01-05 17:14:08.7270', '更新用户', '修改用户zhangsan', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('337', '2019-01-07 11:51:42.3690', '添加用户', '添加用户linjinjian', '成功', '用户注册');
INSERT INTO `doresponse` VALUES ('338', '2019-01-07 11:53:30.9420', '添加用户', '添加用户123456', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('339', '2019-01-07 20:33:30.6290', '添加用户', '添加用户qqqqq', '成功', '用户注册');
INSERT INTO `doresponse` VALUES ('340', '2019-01-07 20:58:41.3110', '添加用户', '添加用户qqq', '成功', '用户注册');
INSERT INTO `doresponse` VALUES ('341', '2019-01-07 21:00:12.6310', '添加用户', '添加用户aaa', '成功', '用户注册');
INSERT INTO `doresponse` VALUES ('342', '2019-01-07 21:55:26.3380', '添加用户', '添加用户lin', '成功', '用户注册');
INSERT INTO `doresponse` VALUES ('343', '2019-01-07 21:58:34.9150', '更新用户', '修改用户lin', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('344', '2019-01-07 21:59:46.0800', '删除用户', '删除用户zhangsan', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('345', '2019-01-07 22:00:04.0260', '更新用户', '修改用户张君', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('346', '2019-01-07 22:00:14.3310', '修改用户', '修改用户权限201612061654', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('347', '2019-01-07 22:05:26.9710', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('348', '2019-01-07 22:07:40.6320', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('349', '2019-01-07 22:09:40.3410', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('350', '2019-01-08 09:09:04.3490', '修改用户', '修改用户权限46545687', '失败', 'zhangsan');
INSERT INTO `doresponse` VALUES ('351', '2019-01-08 09:09:08.7790', '修改用户', '修改用户权限aaa', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('352', '2019-01-08 09:09:09.0270', '修改用户', '修改用户权限aaa', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('353', '2019-01-08 09:09:53.5220', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('354', '2019-01-08 09:12:36.8810', '更新新闻', '修改新闻1', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('355', '2019-01-08 09:16:49.7390', '添加产品', '添加产品qq', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('356', '2019-01-08 09:17:39.9770', '删除产品', '删除产品qq', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('357', '2019-01-08 09:21:19.1800', '修改用户', '修改用户权限aaa', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('358', '2019-01-08 09:22:24.2750', '修改用户', '修改用户权限aaa', '成功', 'aaa');
INSERT INTO `doresponse` VALUES ('359', '2019-01-08 10:31:06.3300', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('360', '2019-01-08 10:36:36.4340', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('361', '2019-01-08 10:37:07.4430', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('362', '2019-01-08 10:37:46.0340', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('363', '2019-01-08 10:46:47.6440', '更新用户', '修改用户zhangsan05', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('364', '2019-01-08 10:47:25.9030', '添加用户', '添加用户zhangsan07', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('365', '2019-01-08 10:47:48.3340', '添加用户', '添加用户zhangsan08', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('366', '2019-01-08 10:48:20.0080', '添加用户', '添加用户zhangsan10', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('367', '2019-01-08 10:49:22.8390', '更新用户', '修改用户qqqqq', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('368', '2019-01-08 10:49:47.9220', '更新用户', '修改用户qqqqq', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('369', '2019-01-08 10:58:47.5280', '修改用户', '修改用户权限aaa', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('370', '2019-01-08 10:59:20.3910', '修改用户', '修改用户权限aaa', '成功', 'aaa');
INSERT INTO `doresponse` VALUES ('371', '2019-01-08 11:00:06.8300', '更新新闻', '修改新闻1', '成功', 'aaa');
INSERT INTO `doresponse` VALUES ('372', '2019-01-08 13:30:17.7560', '添加用户', '添加用户辣鸡伟as', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('373', '2019-01-08 13:31:00.0060', '删除用户', '删除用户辣鸡伟as', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('374', '2019-01-08 13:31:59.0120', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('375', '2019-01-08 13:32:02.5570', '修改用户', '修改用户权限201612061602', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('376', '2019-01-08 13:34:47.4600', '更新新闻', '修改新闻1', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('377', '2019-01-08 13:35:37.2380', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('378', '2019-01-08 16:16:37.5070', '修改产品', '修改产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('379', '2019-01-08 16:23:25.7640', '更新用户', '修改用户张三丰', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('380', '2019-01-08 16:23:32.5610', '删除用户', '删除用户张三丰', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('381', '2019-01-08 16:24:08.7190', '修改用户', '修改用户权限123456', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('382', '2019-01-08 16:24:42.4210', '添加产品', '添加产品aaa', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('383', '2019-01-08 16:25:36.4450', '修改产品', '修改产品aaa', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('384', '2019-01-08 16:29:39.7240', '删除产品', '删除产品HUAWEI Mate 20 RS 保时捷设计', '成功', 'zhangsan');
INSERT INTO `doresponse` VALUES ('385', '2019-01-08 16:29:55.7260', '修改用户', '修改用户权限aaa', '成功', 'zhangsan');

-- ----------------------------
-- Table structure for huaweiUser
-- ----------------------------
DROP TABLE IF EXISTS `huaweiUser`;
CREATE TABLE `huaweiUser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `userPictuer` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `userIntrodition` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of huaweiUser
-- ----------------------------
INSERT INTO `huaweiUser` VALUES ('1', '任正非', 'static\\images\\enterprise\\hw_renzhengfei.jpg', null);

-- ----------------------------
-- Table structure for newsinfo
-- ----------------------------
DROP TABLE IF EXISTS `newsinfo`;
CREATE TABLE `newsinfo` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `inputTime` datetime(6) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newsinfo
-- ----------------------------
INSERT INTO `newsinfo` VALUES ('1', '华为与中科院上海天文台签署SKA项目合作协议 助力宇宙探索', '2019-01-08 13:34:44.000000', '[中国，上海，2018年11月28日] 近日，由SKA（平方公里阵列射电望远镜）中国办公室主办的“2018年第三届中国SKA科学年度研讨会”在中国科学院上海天文台举行。会议期间，中科院上海天文台与华为签署了SKA项目合作协议。基于此协议，双方将围绕SKA国际大科学工程，结合双方在射电天文、大数据、云计算、高性能计算以及人工智能领域的优势，共同推进中国SKA区域中心建设，致力宇宙探索，努力将该中心建设成为未来世界一流的SKA主要学术中心和技术研发中心。同时，双方将推动建设“中国科学院上海天文台—华为技术有限公司SKA联合实验室”。\r\n');
INSERT INTO `newsinfo` VALUES ('2', '华为发布PoleStar2.0智慧杆解决方案，助力智慧城市加速部署', '2018-11-30 00:05:12.000000', '[伦敦，英国，2018年11月26日] 在2018全球移动宽带论坛（MBBF）期间，华为发布PoleStar2.0智慧杆解决方案。PoleStar2.0智慧杆定位为智慧城市的神经末梢，一杆支持5G移动通讯、智慧照明、智能监控、物联网、智慧环保和城市信息发布等多种业务。通过开放的杆体物理接口、模块化设备安装、组件化结构设计和开放业务平台，PoleStar2.0降低智慧杆的制造成本、具备长期演进能力，加速智慧城市和5G网络部署。');
INSERT INTO `newsinfo` VALUES ('3', '华为携手软通动力，共同发布智慧园区IOC联合解决方案', '2018-11-30 00:05:42.000000', '[中国，苏州，2018年11月26日] 近日，华为携手软通动力共同发布了基于华为行业使能平台面向园区IOC（智能运营中心）的联合解决方案，该方案涵盖场景丰富，具备轻量化、易复制的特点。目前已在临沂经开区、济南某园区项目、缅甸大金塔项目得到成功验证。\r\n');
INSERT INTO `newsinfo` VALUES ('4', '华为5G微波开启全面商用新征程', '2018-12-08 23:35:35.000000', '[英国，伦敦，2018年11月23日]在2018全球移动宽带论坛期间，华为发布了含5G微波在内的SingleRAN Pro解决方案，5G微波CA ODU和模块化天线正式上市，标志着5G微波开启全面商用的新征程。\r\n');
INSERT INTO `newsinfo` VALUES ('5', '华为与Telkomsel签署创新合作备忘录，加速推进数字化转型', '2018-11-23 00:00:00.000000', '[英国，伦敦，2018年11月23日] 在2018全球移动宽带论坛期间，华为与印尼领先移动运营商Telkomsel联合签署了创新合作谅解备忘录（MoU）。双方将加强在灵活套餐业务、用户体验保障、企业MBB业务等方面的联合创新，开发具有竞争力的移动宽带（MBB）业务，提供最佳用户体验，实现双方在数字化转型和业务发展战略上的深度匹配，支撑Telkomsel MBB业务的快速发展。');
INSERT INTO `newsinfo` VALUES ('6', '华为意图驱动的智简网络解决方案荣获“GNTC创新奖”', '2018-11-22 00:00:00.000000', '[中国，南京，2018年11月22日] 近日，在GNTC2018全球网络技术大会上，华为分享了意图驱动的智简网络（Intent-Driven Network，IDN）解决方案，以及基于IDN的云网融合解决方案，同时凭借华为在IDN上架构性创新和场景化创新斩获“GNTC创新奖”。该奖项体现了华为在网络领域的技术创新、商业实践得到了业界的充分肯定。');
INSERT INTO `newsinfo` VALUES ('7', '华为邓泰华：SingleRAN Pro激发5G时代新商业、新网络能力和新产业方向', '2018-11-21 00:00:00.000000', '[英国，伦敦，2018年11月21日] 在第九届全球移动宽带论坛期间，华为无线网络产品线总裁邓泰华发表《华为SingleRAN Pro激发5G时代新商业、新网络能力和新产业方向》主题演讲，全面阐述了SingleRAN Pro三大内涵：1、使能越来越多业务承载在无线上，从而帮助运营商加速发展新商业；2、引入5G新网络能力，实现10倍网络容量、10dB覆盖增强和10倍体验提升；3、引入人工智能降低网络复杂性，帮助运营商在CAPEX节省基础上，进一步转向到OPEX节省的新产业方向。');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `productPrice` decimal(10,2) NOT NULL DEFAULT '3999.00' COMMENT '价格',
  `productPictuer` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `productParameter1` varchar(255) DEFAULT NULL COMMENT '特性1',
  `productParameter2` varchar(255) DEFAULT NULL COMMENT '特性2',
  `productParameter3` varchar(255) DEFAULT '' COMMENT '特性3',
  `category` varchar(255) NOT NULL DEFAULT '手机' COMMENT '类别',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('2', 'HUAWEI 麦芒7', '3999.00', 'static/images/enterprise/product-list/phone/maimang7-blue.png', '6.3英寸TFT LCD屏幕，1080×2340 像素', 'ƒ/2.0大光圈的2400万高清镜头', 'HDR Pro硬件级的逆光影像技术', '手机');
INSERT INTO `product` VALUES ('3', 'HUAWEI nova 3', '3999.00', 'static/images/enterprise/product-list/phone/nova3-primrose-gold.png', '6.3英寸FHD+显示屏，2340×1080像素分辨率', '前置 2400万高清红外双摄', '麒麟970芯片，AI实力派', '手机');
INSERT INTO `product` VALUES ('4', 'HUAWEI P10 Plus', '3999.00', 'static/images/enterprise/product-list/phone/p10-plus-diamond-carving-gold.png', '5.5英寸，2K高清屏幕', '2000万+1200万徕卡双摄，ƒ/1.8大光圈', '人像摄影大师，每一拍都是大片', '手机');
INSERT INTO `product` VALUES ('5', 'HUAWEI P20 Pro真皮限量版', '3999.00', 'static/images/enterprise/product-list/phone/p20-pro-leather-golden-brown.png', '6.1英寸OLED屏幕，2240×1080像素', '4000万+2000万+800万徕卡三摄', 'AI摄影大师，懂你要的美', '手机');
INSERT INTO `product` VALUES ('6', 'HUAWEI Mate 10 保时捷设计', '3999.00', 'static/images/enterprise/product-list/phone/pd-mate10-diamond-black.png', '6.0英寸OLED显示屏，2160×1080像素分辨率', '保时捷设计与科技融合 技术与美成就经典', '深邃黑色 演绎沉稳高贵品质', '手机');
INSERT INTO `product` VALUES ('7', 'HUAWEI Mate 20 X', '3999.00', 'static/images/enterprise/product-list/phone/mate-20x-silver.png', '7.2英寸OLED珍珠屏，FHD+ 1080×2244像素', '麒麟980旗舰芯片，石墨烯液冷散热', '4000万+2000万+800万徕卡三摄', '手机');
INSERT INTO `product` VALUES ('8', 'HUAWEI Mate 20', '3999.00', 'static/images/enterprise/product-list/phone/mate-20-green.png', '6.53英寸高清珍珠屏，FHD+ 1080×2244像素', '麒麟980旗舰芯片，4000mAh（典型值）电池', '1200万+1600万+800万徕卡三摄', '手机');
INSERT INTO `product` VALUES ('9', 'HUAWEI Mate 20 Pro', '3999.00', 'static/images/enterprise/product-list/phone/mate20-pro-pink.png', '6.39英寸2K OLED曲面屏，1440×3120像素', '麒麟980旗舰芯片，40W超级快充', '4000万+2000万+800万徕卡三摄', '手机');
INSERT INTO `product` VALUES ('10', 'HUAWEI Mate RS 保时捷设计', '3999.00', 'static/images/enterprise/product-list/phone/mate-rs-red.png', '6.0英寸OLED显示屏，2880×1440像素分辨率', '保时捷基因 八曲流畅弧线', '创新屏内指纹，引领时代', '手机');
INSERT INTO `product` VALUES ('11', 'HUAWEI nova 2s', '3999.00', 'static/images/enterprise/product-list/phone/nova2sblue.png', '6英寸全面屏 轻盈水漾玻璃机身', '2000万高清四镜头 广光谱柔光灯', 'HiFi音乐芯片 NFC便捷支付', '手机');
INSERT INTO `product` VALUES ('12', '华为畅享9 Plus', '3999.00', 'static/images/enterprise/product-list/phone/changxiang9-plus-purple.png', '6.5英寸超清全面屏，1080×2340像素分辨率', 'AI智慧四摄 精彩美拍', '4000mAh（典型值）大电池，持久续航', '手机');
INSERT INTO `product` VALUES ('13', '华为畅享 Max', '3999.00', 'static/images/enterprise/product-list/phone/changxiangmax-white.png', '7.12英寸超清珍珠屏，1080×2244像素分辨率', '高通骁龙660AIE处理器 强劲性能', '5000mAh（典型值）大电池，持久续航', '手机');
INSERT INTO `product` VALUES ('14', '华为畅享8', '3999.00', 'static/images/enterprise/product-list/phone/changxiang8-blue.png', '5.99英寸IPS显示屏，1440×720像素分辨率', '1300万+200万后置高清双摄', 'EMUI 8.0 你的手机更懂你', '手机');
INSERT INTO `product` VALUES ('15', '华为畅享8 Plus', '3999.00', 'static/images/enterprise/product-list/phone/changxiang8-plus-gold.png', '5.93英寸TFT LCD显示屏，2160×1080像素分辨率', '前后四摄 虚实间绽放精彩', '4000mAh（典型值）大电池，强劲续航', '手机');
INSERT INTO `product` VALUES ('16', '华为畅享8e', '3999.00', 'static/images/enterprise/product-list/phone/changxiang8e-black.png', '5.7英寸IPS LCD显示屏，1440×720像素分辨率', '智能柔光自拍 高清后置双摄', '外放大音量 口袋中的音响', '手机');
INSERT INTO `product` VALUES ('17', '华为畅享8e 青春', '3999.00', 'static/images/enterprise/product-list/phone/changxiang8e-youth-gold.png', '5.45英寸TFT LCD显示屏，1440×720像素分辨率', '前置柔光自拍 补光恰到好处', '三卡槽设计 任性扩容', '手机');
INSERT INTO `product` VALUES ('18', '华为畅享7S', '3999.00', 'static/images/enterprise/product-list/phone/changxiang7s-gold.png', '5.65英寸显示屏，2160×1080像素屏幕', '人脸识别 轻松解锁', '大内存 高速流畅', '手机');
INSERT INTO `product` VALUES ('19', '华为畅享7', '3999.00', 'static/images/enterprise/product-list/phone/changxiang7-streamer-gold.png', '5英寸IPS显示屏，1280×720像素分辨率', '十级美肤 任性美拍', '3020mAh（典型值）大电池，持久续航', '手机');
INSERT INTO `product` VALUES ('20', '华为畅享7 Plus', '3999.00', 'static/images/enterprise/product-list/phone/changxiang7-plus-silver.png', '5.5英寸IPS液晶显示屏，1280×720像素分辨率', '4000mAh（典型值）大电池 强劲续航', '十级美肤 任性美拍', '手机');
INSERT INTO `product` VALUES ('21', 'HUAWEI 麦芒6', '3999.00', 'static/images/enterprise/product-list/phone/maimang6-gold.png', '5.9英寸IPS全面屏', '出彩四镜头', '3340mAh（典型值）持久续航', '手机');
INSERT INTO `product` VALUES ('22', 'HUAWEI nova 3e', '3999.00', 'static/images/enterprise/product-list/phone/nova3e-magic-night-black.png', '5.8英寸新一代全面屏', '96%高色域显示屏', '前置2400万自然美妆', '手机');
INSERT INTO `product` VALUES ('23', 'HUAWEI nova 3i', '3999.00', 'static/images/enterprise/product-list/phone/nova3i-black.png', '6.3英寸LTPS显示屏', 'AI智慧四射', '6GB大运存', '手机');
INSERT INTO `product` VALUES ('24', 'HUAWEI P10', '3999.00', 'static/images/enterprise/product-list/phone/p10-rose-gold.png', '5.1英寸，1080p清晰屏幕', '2000万+1200万徕卡双摄', '人像摄影大师，每一拍都是大片', '手机');
INSERT INTO `product` VALUES ('25', 'HUAWEI Mate 10 Pro', '3999.00', 'static/images/enterprise/product-list/phone/mate10-pro-mocha-gold.png', '6.0英寸OLED显示屏，2160×1080像素分辨率', '徕卡双镜头 捕捉精彩瞬间', '严谨工艺 防溅抗水', '手机');
INSERT INTO `product` VALUES ('26', 'HUAWEI Mate 10 (Ascend Mate)', '3999.00', 'static/images/enterprise/product-list/phone/mate10-pink-gold.png', '5.9英寸TFT显示屏，2560×1440像素分辨率', '人工智能芯片 卓越性能', '4000mAh（典型值）大电池 强劲续航', '手机');
INSERT INTO `product` VALUES ('27', 'HUAWEI P20', '3999.00', 'static/images/enterprise/product-list/phone/p20-aurora.png', '5.8英寸屏幕，2244×1080像素', '2000万+1200万徕卡双摄', 'AI摄影大师，懂你要的美', '手机');
INSERT INTO `product` VALUES ('28', 'HUAWEI P20 Pro', '3999.00', 'static/images/enterprise/product-list/phone/p20-pro-aurora-butterfly.png', '6.1英寸OLED屏幕，2240×1080像素', '4000万+2000万+800万徕卡三摄', 'AI摄影大师，懂你要的美', '手机');
INSERT INTO `product` VALUES ('30', 'HUAWEI MateBook 13', '3999.00', 'static/images/enterprise/product-list/laptop/MateBook-13-Silver.png', '全面屏设计，13英寸2K高清显示屏', '重约1.28kg，薄至14.9mm，支持独立显卡', '支持HUAWEI Share 3.0“一碰传”功能', '笔记本');
INSERT INTO `product` VALUES ('31', 'HUAWEI MateBook X Pro', '3999.00', 'static/images/enterprise/product-list/laptop/matebook-x-pro-mystic-silver.png ', '全面屏设计，13.9英寸3K触控屏', '机身重量约1.33kg，厚度约14.6mm', '支持独立显卡', '笔记本');
INSERT INTO `product` VALUES ('32', 'HUAWEI MateBook E', '3999.00', 'static/images/enterprise/product-list/laptop/matebook-e-brown.png ', '12英寸LPS触摸显示屏，2K分辨率', 'PC平板二合一笔记本', '第七代智能英特尔® 酷睿™ m3-7Y30 处理器和 i5-7Y54处理器', '笔记本');
INSERT INTO `product` VALUES ('33', 'HUAWEI MateBook X', '3999.00', 'static/images/enterprise/product-list/laptop/matebook-x-grey.png', '全面屏设计，13英寸2k高清显示屏', '薄至12.5mm，轻至 1.05kg', '无风扇全静音设计', '笔记本');
INSERT INTO `product` VALUES ('34', 'HUAWEI MateBook D', '3999.00', 'static/images/enterprise/product-list/laptop/matebook-d-silver.png ', '15.6英寸LPS显示屏，1920×1080像素分辨率', '6.2mm微边框，83%高屏占比', '“满血版”MX 150独立显卡', '笔记本');
INSERT INTO `product` VALUES ('52', 'aaa', '111.00', 'static/images/enterprise/product-list/无标题.png', '11', 'wwww', 'wwww', '手机');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `ID` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT '123456',
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `rg_time` datetime(6) DEFAULT NULL,
  `isAdmin` varchar(6) DEFAULT 'false',
  PRIMARY KEY (`ID`,`username`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('23', '辣鸡伟', '123456', '广东河源市', '123123123@qqq.com', '123456778', '2018-11-24 00:25:38.000000', 'false');
INSERT INTO `userinfo` VALUES ('25', '辣鸡旭', '123456', '广东河源市', '123123123@qqq.com', '123456778', '2018-11-24 00:25:38.000000', 'false');
INSERT INTO `userinfo` VALUES ('27', '张君', '123456', '广东河源市', '123123123@qqq.com', '123456778', '2018-11-24 00:25:38.000000', 'false');
INSERT INTO `userinfo` VALUES ('28', '张真人', '123456', '武当山', '123123123@qqq.com', '123456778', '2018-11-24 00:25:38.000000', 'false');
INSERT INTO `userinfo` VALUES ('29', '真武大帝', '123456', '广东河源市', '123123123@qqq.com', '123456778', '2018-11-24 00:25:38.000000', 'false');
INSERT INTO `userinfo` VALUES ('30', '张翠山', '123456', '广东河源市', '123123123@qqq.com', '1231231231', '2018-11-28 21:01:45.000000', 'false');
INSERT INTO `userinfo` VALUES ('31', '张无忌', '123456', '武当山', '123123123@qqq.com', '13123', '2018-11-28 21:02:50.000000', 'false');
INSERT INTO `userinfo` VALUES ('33', '辣鸡盛', '123456789', '广东清远市', '123154646@qq.com', '1567687965', '2018-11-30 10:53:48.000000', 'false');
INSERT INTO `userinfo` VALUES ('39', '46545687', '78974654987', 'asdas', '7897897', '789789789', '2018-12-21 21:08:31.325000', 'false');
INSERT INTO `userinfo` VALUES ('40', 'asdasdasd', '1233213', '广东清远市', '121781278@qq.com', '1567687965', '2018-12-21 21:10:08.001000', 'false');
INSERT INTO `userinfo` VALUES ('41', 'm0_37770', '456789', '广东河源市', '123123123@qqq.com', '1758895455', '2018-12-21 21:12:28.336000', 'false');
INSERT INTO `userinfo` VALUES ('42', 'm0_37770150789', '456789c', '广东清远市', '777885547@qq.com', '1234567894', '2018-12-21 21:13:50.190000', 'false');
INSERT INTO `userinfo` VALUES ('43', 'zhangsan02', '123456', '广东河源市', '777885547@qq.com', '15812378965', '2018-12-22 00:44:02.234000', 'false');
INSERT INTO `userinfo` VALUES ('44', 'zhangsan03', '123456', '广东河源市', '777885547@qq.com', '15812378965', '2018-12-22 00:45:24.525000', 'false');
INSERT INTO `userinfo` VALUES ('45', 'zhangsan04', '123456', '广东河源市', '121781278@qq.com', '15878977894', '2018-12-22 00:46:41.606000', 'false');
INSERT INTO `userinfo` VALUES ('46', '201612061602', '123456', '广东河源市', '777885547@qq.com', '15676879652', '2018-12-22 00:48:01.564000', 'false');
INSERT INTO `userinfo` VALUES ('47', '201612061654', '123456', '广东河源市', '121781278@qq.com', '15676879655', '2018-12-22 00:49:17.413000', 'false');
INSERT INTO `userinfo` VALUES ('52', '辣鸡柱', '123456', '广东河源市', '123123123@qq.com', '1234567894', '2018-12-30 14:36:34.227000', 'false');
INSERT INTO `userinfo` VALUES ('53', 'zhangsan05', '123456', '广东清远市', '777885547@qq.com', '1758895455', '2019-01-01 17:24:53.255000', 'false');
INSERT INTO `userinfo` VALUES ('54', 'zhangsan06', '123456', '', '', '', '2019-01-01 17:25:02.514000', 'false');
INSERT INTO `userinfo` VALUES ('57', 'linjinjian', '123456', 'ufghj', '1111111111', '12345678901', '2019-01-07 11:51:42.130000', 'false');
INSERT INTO `userinfo` VALUES ('58', '123456', '123456', '', '', '', '2019-01-07 11:53:30.716000', 'false');
INSERT INTO `userinfo` VALUES ('59', 'qqqqq', '12123', '广东清远市', 'tttttttttt', 'rrrrrrrrrrr', '2019-01-07 20:33:30.474000', 'false');
INSERT INTO `userinfo` VALUES ('60', 'qqq', '111111', '222222', '333333', '333333', '2019-01-07 20:58:40.836000', 'false');
INSERT INTO `userinfo` VALUES ('61', 'aaa', '111111', '222222', '444444', '333333', '2019-01-07 21:00:12.428000', 'false');
INSERT INTO `userinfo` VALUES ('62', 'lin', '111111', '11111', '77777', '111', '2019-01-07 21:55:26.060000', 'false');
INSERT INTO `userinfo` VALUES ('63', 'zhangsan07', '456789', '广东清远市', '777885547@qq.com', '1234567894', '2019-01-08 10:47:25.669000', 'false');
INSERT INTO `userinfo` VALUES ('64', 'zhangsan08', '456789', '广东河源市', '121781278@qq.com', '1758895455', '2019-01-08 10:47:48.150000', 'false');
INSERT INTO `userinfo` VALUES ('65', 'zhangsan10', '1223456', '广东清远市', '121781278@qq.com', '1234567894', '2019-01-08 10:48:19.857000', 'false');
DROP TRIGGER IF EXISTS `authorityUsernameSynchronization`;
DELIMITER ;;
CREATE TRIGGER `authorityUsernameSynchronization` AFTER INSERT ON `userinfo` FOR EACH ROW insert into authority(username) select username from userinfo where id = (select max(id) from userinfo)
;;
DELIMITER ;
