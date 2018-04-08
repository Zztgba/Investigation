/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : investigation

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2017-11-29 20:19:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `answer`
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `aid` bigint(11) NOT NULL AUTO_INCREMENT,
  `ans` varchar(255) DEFAULT NULL,
  `answernum` bigint(11) DEFAULT NULL,
  `qid` bigint(11) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', 'A.answerA for test1', '2', '1');
INSERT INTO `answer` VALUES ('2', 'B.answerB for test1', '0', '1');
INSERT INTO `answer` VALUES ('3', 'C.answerC for test1', '1', '1');
INSERT INTO `answer` VALUES ('4', 'D.answerD for test1', '0', '1');
INSERT INTO `answer` VALUES ('5', 'A', '2', '2');
INSERT INTO `answer` VALUES ('6', 'B', '1', '2');
INSERT INTO `answer` VALUES ('7', 'C', '0', '2');
INSERT INTO `answer` VALUES ('8', 'D', '0', '2');
INSERT INTO `answer` VALUES ('154', 'y98u9u', '0', '52');
INSERT INTO `answer` VALUES ('155', 'u98ui0', '0', '52');
INSERT INTO `answer` VALUES ('156', 'uj0909i', '0', '52');
INSERT INTO `answer` VALUES ('157', 'j09i0i', '0', '52');
INSERT INTO `answer` VALUES ('158', 'u98u09i', '0', '53');
INSERT INTO `answer` VALUES ('159', 'u0i09i0i', '0', '53');
INSERT INTO `answer` VALUES ('160', 'u0ui09i-0i', '0', '53');
INSERT INTO `answer` VALUES ('161', '09i09i-0o', '0', '53');
INSERT INTO `answer` VALUES ('163', 'ANSWER1', '0', '54');
INSERT INTO `answer` VALUES ('164', 'ANSWER2', '0', '54');
INSERT INTO `answer` VALUES ('165', 'ANSWER3', '0', '54');
INSERT INTO `answer` VALUES ('166', 'ANSWER4', '0', '54');
INSERT INTO `answer` VALUES ('167', '爸爸', '1', '55');
INSERT INTO `answer` VALUES ('168', '妈妈', '0', '55');
INSERT INTO `answer` VALUES ('169', '爷爷/奶奶', '0', '55');
INSERT INTO `answer` VALUES ('170', '其他', '0', '55');
INSERT INTO `answer` VALUES ('171', '小学', '1', '56');
INSERT INTO `answer` VALUES ('172', '初中', '0', '56');
INSERT INTO `answer` VALUES ('173', '高中', '0', '56');
INSERT INTO `answer` VALUES ('174', '大学', '0', '56');
INSERT INTO `answer` VALUES ('175', '望子成龙 好', '1', '57');
INSERT INTO `answer` VALUES ('176', '望子成人 好', '0', '57');
INSERT INTO `answer` VALUES ('177', '差不多', '0', '57');
INSERT INTO `answer` VALUES ('178', '其他', '0', '57');
INSERT INTO `answer` VALUES ('179', '每天', '1', '58');
INSERT INTO `answer` VALUES ('180', '3-4次', '0', '58');
INSERT INTO `answer` VALUES ('181', '1-2次', '0', '58');
INSERT INTO `answer` VALUES ('182', '没有', '0', '58');

-- ----------------------------
-- Table structure for `paper`
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `pid` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `uid` bigint(11) NOT NULL,
  `pnum` bigint(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('1', 'test1', '2017-11-25', 'cpcs', '1', '3');
INSERT INTO `paper` VALUES ('2', 'test2', '2017-11-26', 'cpcs', '1', '0');
INSERT INTO `paper` VALUES ('3', 'test3', '2017-11-09', 'shmy', '1', '0');
INSERT INTO `paper` VALUES ('31', '2御魂79u8', '2017-11-28', 'shmy', '1', '0');
INSERT INTO `paper` VALUES ('32', 'demo', '2017-11-29', 'cpcs', '1', '0');
INSERT INTO `paper` VALUES ('33', 'PAPER1', '2017-11-29', 'rlzy', '1', '0');
INSERT INTO `paper` VALUES ('34', '家庭教育调查问卷', '2017-11-29', 'xsjy', '1', '1');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `qid` bigint(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `pid` bigint(11) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'what?', '1');
INSERT INTO `question` VALUES ('2', 'why?', '1');
INSERT INTO `question` VALUES ('3', 'How?', '1');
INSERT INTO `question` VALUES ('4', 'where？', '2');
INSERT INTO `question` VALUES ('5', 'when？', '2');
INSERT INTO `question` VALUES ('6', 'oh？', '2');
INSERT INTO `question` VALUES ('52', 'u89u', '31');
INSERT INTO `question` VALUES ('53', 'y89u9', '31');
INSERT INTO `question` VALUES ('54', 'QUESTION1', '33');
INSERT INTO `question` VALUES ('55', 'Q1：你是孩子的？', '34');
INSERT INTO `question` VALUES ('56', 'Q2：您的孩子在上？', '34');
INSERT INTO `question` VALUES ('57', 'Q3：你觉得孩子“望子成龙”好还是“望子成人”好？', '34');
INSERT INTO `question` VALUES ('58', 'Q4：一个星期中，您跟孩子谈过几次话？', '34');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'demo01', 'demo01', 'aa@aa.com', '111');
INSERT INTO `user` VALUES ('2', '1', '1', '1', '110');
INSERT INTO `user` VALUES ('3', '123', '1', '386107457@qq.com', '1301234567879');
