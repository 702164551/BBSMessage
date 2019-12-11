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

 Date: 06/12/2019 09:39:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cnid` int(11) NOT NULL,
  `ccontent` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cdate` datetime NULL DEFAULT NULL,
  `cip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cauthor` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (22, 82, '评论一下 我是admin', '2016-09-30 11:02:57', '127.0.0.1', 'admin');
INSERT INTO `comments` VALUES (23, 81, '低碳生活', '2016-09-30 11:02:57', '127.0.0.1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (26, 86, '隔岸观火吃鸡腿~！', '2016-09-30 11:02:57', '127.0.0.1', 'admin');
INSERT INTO `comments` VALUES (32, 73, '无聊！！', '2016-09-30 11:02:57', '127.0.0.1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (33, 108, '很饱啊', '2016-09-30 11:02:57', '127.0.0.1', '那只虫子');
INSERT INTO `comments` VALUES (52, 108, '我郁闷啊！！', '2016-09-30 11:02:57', '127.0.0.1', '那只蛇');
INSERT INTO `comments` VALUES (53, 108, '虫子，你妈妈叫你回家吃饭', '2016-09-30 11:02:57', '127.0.0.1', '打酱油的');
INSERT INTO `comments` VALUES (54, 108, '别回来了，都吃完了', '2016-09-30 11:02:57', '127.0.0.1', '妈妈');
INSERT INTO `comments` VALUES (110, 79, '支持祖国！！', '2016-09-30 11:02:57', '127.0.0.1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (111, 79, '非常支持您', '2016-09-30 11:02:57', '127.0.0.1', 'admin');
INSERT INTO `comments` VALUES (112, 79, '非常支持您', '2016-09-30 11:02:57', '127.0.0.1', 'admin');
INSERT INTO `comments` VALUES (113, 79, '非常支持您', '2016-09-30 11:02:57', '127.0.0.1', 'admin');
INSERT INTO `comments` VALUES (114, 73, 'Hello!您好！', '2016-09-30 11:02:57', '127.0.0.1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (115, 77, '坚决打击“两 抢”.', '2016-09-30 11:02:57', '127.0.0.1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (131, 73, '很好!', '2016-09-30 11:02:57', '127.0.0.1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (151, 165, '是的，是很懒', '2016-09-30 11:02:57', '127.0.0.1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (152, 165, '很好', '2016-09-30 11:02:57', '127.0.0.1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (160, 69, '很好！', '2016-09-30 11:02:57', '127.0.0.1', 'admin');
INSERT INTO `comments` VALUES (161, 165, '呵呵。。。。。', '2016-09-30 11:02:57', '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `comments` VALUES (162, 79, 'very good', '2016-09-30 11:02:57', '0:0:0:0:0:0:0:1', 'admin');
INSERT INTO `comments` VALUES (163, 165, 'Ok,好', '2016-09-30 11:02:57', '0:0:0:0:0:0:0:1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (164, 165, 'very good', '2016-09-30 11:02:57', '0:0:0:0:0:0:0:1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (165, 165, 'very good.', '2016-09-30 11:02:57', '0:0:0:0:0:0:0:1', '这家伙很懒什么也没留下');
INSERT INTO `comments` VALUES (200, 47, '厉害', '2019-11-11 10:28:48', '10.50.109.164', '这家伙很懒什么也没留下');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (0, '', '');
INSERT INTO `login` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `msgid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` int(255) NOT NULL,
  `sendto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `datetime` date NOT NULL,
  PRIMARY KEY (`msgid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('-155420856', '123', '423', '543', 0, 'admin', '2019-12-05');
INSERT INTO `message` VALUES ('-494770401', '123', '敀', '遮挡物', 0, 'b', '2019-12-05');
INSERT INTO `message` VALUES ('1266734208', '123', '克格勃', '需要', 0, 'b', '2019-12-05');
INSERT INTO `message` VALUES ('246252365', '123', '432', '324', 0, '123', '2019-12-05');
INSERT INTO `message` VALUES ('790448394', 'sj', 'gfd', 'dfg', 0, 'admin', '2019-12-05');
INSERT INTO `message` VALUES ('798599160', '123', '都睡', '敀', 0, 'sj', '2019-12-05');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sno` int(11) NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ssex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sclass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '孙杰', '男', '20', '安卓182');
INSERT INTO `student` VALUES (2, '马科', '男', '20', '安卓181');
INSERT INTO `student` VALUES (3, '装分', '男', '20', '案件开发');

-- ----------------------------
-- Table structure for tool
-- ----------------------------
DROP TABLE IF EXISTS `tool`;
CREATE TABLE `tool`  (
  `id` int(3) NOT NULL COMMENT '索引',
  `images` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工具图片',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工具标题',
  `author` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工具介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (1, '国内');
INSERT INTO `topic` VALUES (2, '国际');
INSERT INTO `topic` VALUES (3, '军事');
INSERT INTO `topic` VALUES (4, '体育');
INSERT INTO `topic` VALUES (5, '娱乐');
INSERT INTO `topic` VALUES (6, '社会');
INSERT INTO `topic` VALUES (7, '财经');
INSERT INTO `topic` VALUES (8, '科技');
INSERT INTO `topic` VALUES (9, '健康');
INSERT INTO `topic` VALUES (10, '汽车');
INSERT INTO `topic` VALUES (11, '教育');
INSERT INTO `topic` VALUES (12, '房产');
INSERT INTO `topic` VALUES (13, '家居');
INSERT INTO `topic` VALUES (14, '旅游');
INSERT INTO `topic` VALUES (15, '文化');
INSERT INTO `topic` VALUES (16, '其它');
INSERT INTO `topic` VALUES (28, '探索');
INSERT INTO `topic` VALUES (29, '另类');
INSERT INTO `topic` VALUES (31, '地图');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', '123', '123@qq.com');
INSERT INTO `user` VALUES ('a', 'a', 'a@as.cb');
INSERT INTO `user` VALUES ('admin', 'admin', 'admin@qq.com');
INSERT INTO `user` VALUES ('b', 'b', 'b@vv.vvb');
INSERT INTO `user` VALUES ('baa', 'baa', '246@qq.com');
INSERT INTO `user` VALUES ('lcj', 'lcj', '789@qq.com');
INSERT INTO `user` VALUES ('ljy', 'ljy', '456@qq.com');
INSERT INTO `user` VALUES ('mk', 'mk', 'mk@qq.com');
INSERT INTO `user` VALUES ('sj', 'sj', '123@qq.com');
INSERT INTO `user` VALUES ('zsf', 'zsf', '135@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
