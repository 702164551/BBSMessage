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

 Date: 25/12/2019 18:02:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `msgid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msgcontent` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` int(3) NOT NULL,
  `sendto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `msg_create_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`msgid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('292108988', 'a', 'name', '我是a', 0, '123', '2019-12-25 17:31:53');
INSERT INTO `msg` VALUES ('1828152851', 'admin', 'name', '我是admin', 0, 'a', '2019-12-25 17:33:06');
INSERT INTO `msg` VALUES ('-413748042', '123', 'name', '我是123', 0, 'a', '2019-12-25 17:34:35');
INSERT INTO `msg` VALUES ('303210223', 'a', 'name', '我是a', 1, 'admin', '2019-12-25 17:35:23');
INSERT INTO `msg` VALUES ('-1134371025', '123', 'name', '我是123', 1, 'admin', '2019-12-25 17:37:06');
INSERT INTO `msg` VALUES ('-999490212', 'admin', 'name', '我是admin', 0, '123', '2019-12-25 17:38:04');

SET FOREIGN_KEY_CHECKS = 1;
