/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : homework

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 08/07/2020 11:58:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Ab
-- ----------------------------
DROP TABLE IF EXISTS `Ab`;
CREATE TABLE `Ab` (
  `id` int(11) DEFAULT NULL,
  `Aid` int(11) NOT NULL,
  `Bid` int(11) NOT NULL,
  PRIMARY KEY (`Aid`,`Bid`),
  KEY `Bid` (`Bid`),
  CONSTRAINT `ab_ibfk_1` FOREIGN KEY (`Aid`) REFERENCES `assetsadd` (`id`),
  CONSTRAINT `ab_ibfk_2` FOREIGN KEY (`Bid`) REFERENCES `borrow` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `about_name` varchar(255) DEFAULT NULL,
  `about_time` varchar(255) DEFAULT NULL,
  `about_msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of about
-- ----------------------------
BEGIN;
INSERT INTO `about` VALUES (10, '管洋', '183208735438@qq.com', '请添加一个资产管理');
INSERT INTO `about` VALUES (11, '管洋', '183208735438@qq.com', '将哈萨克好的');
COMMIT;

-- ----------------------------
-- Table structure for AssetsAdd
-- ----------------------------
DROP TABLE IF EXISTS `AssetsAdd`;
CREATE TABLE `AssetsAdd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetsAdd_name` varchar(255) DEFAULT NULL,
  `assetsAdd_class` varchar(255) DEFAULT NULL,
  `assetsAdd_time` varchar(255) DEFAULT NULL,
  `assetsAdd_user` varchar(255) DEFAULT NULL,
  `assetsAdd_msg` varchar(255) DEFAULT NULL,
  `assetsAdd_borrow` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of AssetsAdd
-- ----------------------------
BEGIN;
INSERT INTO `AssetsAdd` VALUES (15, '红米手机', '手机', '2020-07-04', '超级管理员', '红米note2', 1);
INSERT INTO `AssetsAdd` VALUES (16, '小米手机', '手机', '2020-07-08', '超级管理员', '小米8手机', NULL);
COMMIT;

-- ----------------------------
-- Table structure for assetsClass
-- ----------------------------
DROP TABLE IF EXISTS `assetsClass`;
CREATE TABLE `assetsClass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetsClass_name` varchar(255) DEFAULT NULL,
  `assetsClass_num` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of assetsClass
-- ----------------------------
BEGIN;
INSERT INTO `assetsClass` VALUES (2, '计算机', '联想');
INSERT INTO `assetsClass` VALUES (4, '椅子', '电竞椅');
INSERT INTO `assetsClass` VALUES (10, '电风扇', 'DFS001');
INSERT INTO `assetsClass` VALUES (11, '空调', 'MD001');
INSERT INTO `assetsClass` VALUES (12, '手机', 'sj001');
INSERT INTO `assetsClass` VALUES (13, '手表', 'LLs');
COMMIT;

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Aid` int(11) NOT NULL,
  `borrow_time1` varchar(255) DEFAULT NULL,
  `borrow_user` varchar(255) DEFAULT NULL,
  `borrow_money` int(255) DEFAULT NULL,
  `borrow_time2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `borrow_msg` varchar(255) DEFAULT NULL,
  `borrow_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`Aid`) USING BTREE,
  KEY `Aid` (`Aid`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of borrow
-- ----------------------------
BEGIN;
INSERT INTO `borrow` VALUES (28, 12, '2020-07-04', '张三', 50000, '2020-07-04', '借出的是联想电脑', 0);
INSERT INTO `borrow` VALUES (29, 15, '2020-07-25', '雷军', 2000, '2020-07-31', '借给雷军  ', 0);
INSERT INTO `borrow` VALUES (30, 15, '2020-07-06', '王五', 50000, '2020-07-06', '借给雷军  ', 0);
INSERT INTO `borrow` VALUES (31, 15, '2020-07-08', '雷军', 2000, '2020-07-08', '借出的小米手机', 0);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '超级管理员', 'admin', 'admin', 'admin@126.com', '15762222');
INSERT INTO `user` VALUES (3, '资产管理员', 'user', 'user', 'user@126.com', '157643333');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
