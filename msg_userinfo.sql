/*
 Navicat Premium Data Transfer

 Source Server         : xiaoke
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : localhost:3306
 Source Schema         : xiaoke

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 25/12/2019 18:03:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for msg_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `msg_userinfo`;
CREATE TABLE `msg_userinfo`  (
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg_userinfo
-- ----------------------------
INSERT INTO `msg_userinfo` VALUES ('123', '123', '123@qq.com');
INSERT INTO `msg_userinfo` VALUES ('a', 'a', 'a@qq.com');
INSERT INTO `msg_userinfo` VALUES ('admin', 'admin', 'admin@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
