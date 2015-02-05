/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-02-05 19:08:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_name` varchar(11) CHARACTER SET utf8 NOT NULL,
  `admin_password` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `it` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`it`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1ews', 'dewsf', '1');
INSERT INTO `admin` VALUES ('admin', 'admin', '2');
INSERT INTO `admin` VALUES ('okok', 'okokok', '3');
INSERT INTO `admin` VALUES ('yaoge', 'yaoge', '4');
INSERT INTO `admin` VALUES ('yaoge22', 'yaoge22', '5');

-- ----------------------------
-- Table structure for `admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `com_id` varchar(255) NOT NULL DEFAULT '',
  `com_time` varchar(255) DEFAULT NULL,
  `com_again` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('0:0:0:0:0:0:0:1', '2013-06-18 20:47:52', '2013-06-22 02:30:26');
INSERT INTO `admin_log` VALUES ('113.251.222.158', '2013-06-19 09:27:29', '0');
INSERT INTO `admin_log` VALUES ('127.0.0.1', '2013-06-17 22:54:34', '2013-06-17 22:54:43');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `users_name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('20', '19', '', '2013-06-20 08:15:49', '你好吗\r\n');
INSERT INTO `comment` VALUES ('21', '19', '', '2013-06-20 08:16:26', '各位乡民，拜求nosql书籍\r\n');
INSERT INTO `comment` VALUES ('22', '21', '', '2013-06-20 08:17:32', '我也需要\r\n');
INSERT INTO `comment` VALUES ('23', '21', '', '2013-06-20 12:54:44', '这里是发表的内容。。。\r\nfere');

-- ----------------------------
-- Table structure for `economy`
-- ----------------------------
DROP TABLE IF EXISTS `economy`;
CREATE TABLE `economy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_tag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_author` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_amount` int(11) DEFAULT NULL,
  `books_storagetime` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `books_text` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_path` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_xiazai` int(11) DEFAULT NULL,
  `books_limit` int(11) unsigned DEFAULT NULL,
  `books_uploader` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_name` (`books_name`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of economy
-- ----------------------------
INSERT INTO `economy` VALUES ('1', 'wer', '12', '1231', '3', '2013-05-11', null, '/save_files/wer.txt', 'books_pic/2424.jpg', null, '3', '789987');
INSERT INTO `economy` VALUES ('2', 'nxisogcbsi', 'sdsdf', 'sdccdf', null, '2013-05-17', null, '/save_files/nxisogcbsi.txt', 'books_pic/fgdg.jpg', null, '2', 'yaoge22');
INSERT INTO `economy` VALUES ('3', 'dw', 'eqe', 'eqe', '1', '2013-05-17', null, '/save_files/dw.txt', 'books_pic/dswdf.jpg', null, '2', 'yaoge22');
INSERT INTO `economy` VALUES ('4', 'dw', 'eqe', 'eqe', '1', '2013-05-17', null, '/save_files/dw.txt', 'books_pic/dswdf.jpg', null, '2', 'yaoge22');
INSERT INTO `economy` VALUES ('5', 'fdfgd', 'sdfsf', 'cvdvfcd', null, '2013-05-17', null, '/save_files/fdfgd.txt', 'books_pic/bgfhgh.jpg', null, '5', 'yaoge22');
INSERT INTO `economy` VALUES ('6', 'grgrsdfgfd', 'fdfdff', 'fdf', '2', '2013-05-17', null, '/save_files/grgrsdfgfd.txt', 'books_pic/fdgfh.jpg', null, '1', 'yaoge22');
INSERT INTO `economy` VALUES ('7', 'grgrsdfgfd', 'fdfdff', 'fdf', '2', '2013-05-17', null, '/save_files/grgrsdfgfd.txt', 'books_pic/fdgfh.jpg', null, '1', 'yaoge22');
INSERT INTO `economy` VALUES ('8', 'grgrsdfgfd', 'fdfdff', 'fdf', '2', '2013-05-17', null, '/save_files/grgrsdfgfd.txt', 'books_pic/fdgfh.jpg', null, '1', 'yaoge22');
INSERT INTO `economy` VALUES ('9', 'grgrsdfgfd', 'fdfdff', 'fdf', '2', '2013-05-17', null, '/save_files/grgrsdfgfd.txt', 'books_pic/fdgfh.jpg', null, '1', 'yaoge22');
INSERT INTO `economy` VALUES ('10', '资本论', '具有划时代的意义', '马克思', '12', '2013-06-17', null, '/save_files/资本论.txt', 'books_pic/zibenlun.jpg', '16', '2', '姚革');

-- ----------------------------
-- Table structure for `fiction`
-- ----------------------------
DROP TABLE IF EXISTS `fiction`;
CREATE TABLE `fiction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_tag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_author` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_amount` int(11) DEFAULT NULL,
  `books_storagetime` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `books_path` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_uploader` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_xiazai` int(11) DEFAULT NULL,
  `books_limit` int(11) unsigned DEFAULT NULL,
  `books_text` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fiction
-- ----------------------------
INSERT INTO `fiction` VALUES ('1', 'zhulu', 'bucuo', 'zhulu', '5', '2013-04-15', '/save_files/zhulu.txt', '123', 'books_pic/fngmian.jpg', '26', '0', null);
INSERT INTO `fiction` VALUES ('6', '逐鹿', '值得一看', '尹三问', null, '2013-06-13', '/save_files/逐鹿.txt', '姚革', 'books_pic/zhulu.jpg', '18', '2', null);
INSERT INTO `fiction` VALUES ('7', '倚天屠龙记', '明初时期武林', '金庸', '12', '2013-06-17', '/save_files/倚天屠龙记.txt', '姚革', 'books_pic/yitian.jpg', '32', '2', null);
INSERT INTO `fiction` VALUES ('8', '百年孤独', '值得一看的好书', '加西亚·马尔克斯', null, '2013-06-22', '/save_files/百年孤独.txt', 'yaoge22', 'books_pic/bainian.jpg', null, '2', null);
INSERT INTO `fiction` VALUES ('9', '呼啸山庄', '真的不错', '艾米莉·勃朗特', null, '2013-06-22', '/save_files/呼啸山庄.txt', 'yaoge22', 'books_pic/huxiao.jpg', null, '2', null);

-- ----------------------------
-- Table structure for `it`
-- ----------------------------
DROP TABLE IF EXISTS `it`;
CREATE TABLE `it` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_tag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_author` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_amount` int(11) DEFAULT NULL,
  `books_storagetime` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `books_path` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_uploader` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_xiazai` int(11) DEFAULT NULL,
  `books_limit` int(11) unsigned DEFAULT NULL,
  `books_text` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of it
-- ----------------------------
INSERT INTO `it` VALUES ('1', 'zzz', 'zzz', 'zzz', '13', '2013-04-15', '/save_files/zzz.txt', null, 'books_pic/zzz.jpg', '36', '5', null);
INSERT INTO `it` VALUES ('3', '345', '1111', '1111', '2', '2013-04-30', '/save_files/345.doc', null, 'books_pic/45465.jpg', '56', '11', null);
INSERT INTO `it` VALUES ('5', 'nihao', 'nihao', 'nihao', '2', '2013-05-07', '/save_files/nihao.txt', null, 'books_pic/nihao.jpg', '71', '2', null);
INSERT INTO `it` VALUES ('6', 'java', 'bucuo', '123321', '23', '2013-05-09', '/save_files/java.java', null, 'books_pic/123.jpg', '45', '1', null);
INSERT INTO `it` VALUES ('7', '456654', 'dsfdfdgf', 'wert', '1', '2013-05-09', '/save_files/456654.java', null, 'books_pic/6768.jpg', '23', '2', null);
INSERT INTO `it` VALUES ('8', 'keji', 'goog', 'keji', '1', '2013-05-09', '/save_files/keji.txt', null, 'books_pic/kekji.jpg', '89', '1', null);
INSERT INTO `it` VALUES ('9', 'cxzczx', 'czx', 'czx', '1', '2013-05-30', '/save_files/cxzczx.txt', 'yaoge11', 'books_pic/caz.jpg', '2', '1', null);
INSERT INTO `it` VALUES ('10', 'cxzczx', 'czx', 'czx', '1', '2013-05-30', '/save_files/cxzczx.txt', 'yaoge11', 'books_pic/caz.jpg', '2', '1', null);
INSERT INTO `it` VALUES ('11', '123', 'okokok', 'nihaos', '21', '2013-06-03', '/save_files/123.doc', 'yaoge22', 'books_pic/123.jpg', '14', '2', null);
INSERT INTO `it` VALUES ('12', '123', 'okokok', 'nihao', '21', '2013-06-03', '/save_files/123.doc', 'yaoge22', 'books_pic/123.jpg', '14', '2', null);
INSERT INTO `it` VALUES ('13', '123', '123', '123', null, '2013-06-03', '/save_files/123.doc', 'yaoge22', 'books_pic/1234.jpg', '14', '12', null);
INSERT INTO `it` VALUES ('14', '1123', 'whisperwei', 'whisperwei', '1', '2013-06-09', '/save_files/1123.txt', 'whisperwei', 'books_pic/moren.jpg', null, '10', null);
INSERT INTO `it` VALUES ('15', 'zhuluzhu', '12dsdsd', 'zhulu', '1', '2013-06-11', '/save_files/zhuluzhu.txt', 'fdsfddf', 'books_pic/moren.jpg', null, '4', null);
INSERT INTO `it` VALUES ('16', 'C语言程序设计', '可以作为基础教学', '谭浩强老师', '24', '2013-06-17', '/save_files/C语言程序设计.txt', '姚革', 'books_pic/moren.jpg', '5', '1', null);
INSERT INTO `it` VALUES ('17', 'C语言设计', '可以作为基础编程教学', '谭浩强', '22', '2013-06-17', '/save_files/C语言设计.txt', '姚革', 'books_pic/c++.jpg', '110', '1', null);

-- ----------------------------
-- Table structure for `literature`
-- ----------------------------
DROP TABLE IF EXISTS `literature`;
CREATE TABLE `literature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_tag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_author` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_amount` int(11) DEFAULT NULL,
  `books_storagetime` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `books_path` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_uploader` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_xiazai` int(11) DEFAULT NULL,
  `books_limit` int(11) unsigned DEFAULT NULL,
  `books_text` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of literature
-- ----------------------------
INSERT INTO `literature` VALUES ('1', 'dswds', 'dasd', 'fesf', null, '2013-05-11', '/save_files/dswds.txt', '789987', 'books_pic/rwrw.jpg', '9', '34', null);
INSERT INTO `literature` VALUES ('2', 'rwrfa', 'dsds', 'dsd', null, '2013-05-11', '/save_files/rwrfa.txt', '789987', 'books_pic/dsdxz.jpg', '2', '4', null);
INSERT INTO `literature` VALUES ('3', 'gfh', 'dsfdfdgf', 'dsz', '1', '2013-05-11', '/save_files/gfh.java', '789987', 'books_pic/gfdrfg.jpg', null, '4', null);
INSERT INTO `literature` VALUES ('4', 'gfh', 'dsfdfdgf', 'dsz', '1', '2013-05-11', '/save_files/gfh.java', '789987', 'books_pic/gfdrfg.jpg', null, '4', null);
INSERT INTO `literature` VALUES ('5', 'qushi', '3242', '12', null, '2013-05-11', '/save_files/qushi.txt', 'czxcz', 'books_pic/faf.jpg', '1', '2', null);
INSERT INTO `literature` VALUES ('6', 'sadsd', 'dsd', 'dxs', null, '2013-05-24', '/save_files/sadsd.txt', 'yaoge22', 'books_pic/dsd.jpg', null, '2', null);
INSERT INTO `literature` VALUES ('7', 'baomin', 'hao', 'zhangwenya', null, '2013-06-08', '/save_files/baomin.doc', 'zhangwenya', 'books_pic/报名表.jpg', '1', '1', null);
INSERT INTO `literature` VALUES ('8', 'baomin', 'hao', 'zhangwenya', null, '2013-06-08', '/save_files/baomin.doc', 'zhangwenya', 'books_pic/minza.jpg', '1', '1', null);
INSERT INTO `literature` VALUES ('9', 'baomin', 'hao', 'zhangwenya', null, '2013-06-08', '/save_files/baomin.doc', 'zhangwenya', 'books_pic/minza.jpg', '1', '1', null);
INSERT INTO `literature` VALUES ('10', 'zhulu2222', 'whisperwei', 'whisperwei', '1', '2013-06-09', '/save_files/zhulu2222.txt', 'zhangwenya', 'books_pic/moren.jpg', '1', '10', null);
INSERT INTO `literature` VALUES ('11', 'book', 'whisperwei', 'whisperwei', '1', '2013-06-09', '/save_files/book.txt', 'zhangwenya', 'books_pic/moren.jpg', '1', '10', null);
INSERT INTO `literature` VALUES ('12', '三国演义', '三国时期战争', '罗贯中', '23', '2013-06-17', '/save_files/三国演义.txt', '姚革', 'books_pic/sanguo.jpg', '15', '2', null);
INSERT INTO `literature` VALUES ('13', '唐诗三百首', '提高文学素养', '唐朝诗人', '24', '2013-06-22', '/save_files/唐诗三百首.txt', 'yaoge22', 'books_pic/tangshi.jpg', '17', '2', null);

-- ----------------------------
-- Table structure for `math`
-- ----------------------------
DROP TABLE IF EXISTS `math`;
CREATE TABLE `math` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_tag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_author` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_amount` int(11) DEFAULT NULL,
  `books_storagetime` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `books_path` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_uploader` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_xiazai` int(25) DEFAULT NULL,
  `books_limit` int(11) unsigned DEFAULT NULL,
  `books_text` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of math
-- ----------------------------
INSERT INTO `math` VALUES ('1', 'nihao', 'cfdgdgdf', 'nihao', '1', '2013-05-09', '/save_files/nihao.txt', null, 'books_pic/dfghfdh.jpg', '2', '2', null);
INSERT INTO `math` VALUES ('2', 'nihao', 'cfdgdgdf', 'nihao', '1', '2013-05-09', '/save_files/nihao.txt', null, 'books_pic/dfghfdh.jpg', '2', '2', null);
INSERT INTO `math` VALUES ('3', 'fedf', 'dasd', 'dwr', null, '2013-05-09', '/save_files/fedf.txt', '789987', 'books_pic/dwer.jpg', null, '2', null);
INSERT INTO `math` VALUES ('4', 'cdscfsd', 'sdsd', 'xsdsd', null, '2013-05-23', '/save_files/cdscfsd.txt', 'yaoge22', 'books_pic/dsd.jpg', null, '2', null);
INSERT INTO `math` VALUES ('5', 'fdsg', 'eewwee', 're3r', null, '2013-06-08', '/save_files/fdsg.doc', 'yaoge22', 'books_pic/de.jpg', null, '2', null);
INSERT INTO `math` VALUES ('6', 'fdsg', 'eewwee', 're3r', null, '2013-06-08', '/save_files/fdsg.doc', 'yaoge22', 'books_pic/de.jpg', null, '2', null);
INSERT INTO `math` VALUES ('7', 'hibernate', 'good', 'yingsanwen', null, '2013-06-08', '/save_files/hibernate.pdf', 'yaoge22', 'books_pic/hiebrenate.jpg', null, '3', null);
INSERT INTO `math` VALUES ('8', 'ewewe', 'ewe', 'edw', '1', '2013-06-08', '/save_files/ewewe.ppt', 'yaoge22', 'books_pic/rewds.jpg', '2', '5', null);
INSERT INTO `math` VALUES ('9', 'ewewe', 'ewe', 'edw', '1', '2013-06-08', '/save_files/ewewe.ppt', 'yaoge22', 'books_pic/rewds.jpg', '2', '5', null);
INSERT INTO `math` VALUES ('10', 'ewewe', 'ewe', 'edw', '1', '2013-06-08', '/save_files/ewewe.ppt', 'yaoge22', 'books_pic/rewds.jpg', '2', '5', null);
INSERT INTO `math` VALUES ('11', '高等数学', '可以作为基础数学教学', '同济大学数学组', '12', '2013-06-17', '/save_files/高等数学.txt', '姚革', 'books_pic/math.jpg', '6', '2', null);
INSERT INTO `math` VALUES ('12', '谁Ccd解决方', '额外色温', '而微微', null, '2013-06-18', '/save_files/谁Ccd解决方.txt', '姚革', 'books_pic/moren.jpg', null, '2', null);
INSERT INTO `math` VALUES ('13', '高等数学教育', '高数好，好高数', '同济大学', null, '2013-06-19', '/save_files/高等数学教育.txt', '江边流客', 'books_pic/gaoshudetupian.jpg', '4', '2', null);

-- ----------------------------
-- Table structure for `pingjia`
-- ----------------------------
DROP TABLE IF EXISTS `pingjia`;
CREATE TABLE `pingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `users_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_pingjia` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `datetime` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pingjia
-- ----------------------------
INSERT INTO `pingjia` VALUES ('1', 'zzz', 'hello', 'undefined', null);
INSERT INTO `pingjia` VALUES ('2', 'zzz', 'hello', '123', '2013-04-15');
INSERT INTO `pingjia` VALUES ('3', 'zzz', 'hello', 'undefined', '2013-04-15');
INSERT INTO `pingjia` VALUES ('4', 'zzz', 'hello', '123', '2013-04-15');
INSERT INTO `pingjia` VALUES ('5', 'zzz', 'hello', 'undefined', '2013-04-15');
INSERT INTO `pingjia` VALUES ('6', 'zzz', 'hello', 'undefined', '2013-04-15');
INSERT INTO `pingjia` VALUES ('7', 'zzz', 'hello', 'undefined', '2013-04-15');
INSERT INTO `pingjia` VALUES ('8', 'zzz', 'hello', 'undefined', '2013-04-15');
INSERT INTO `pingjia` VALUES ('9', 'zzz', 'hello', 'undefined', '2013-04-15');
INSERT INTO `pingjia` VALUES ('10', 'zzz', 'hello', 'undefined', '2013-04-15');
INSERT INTO `pingjia` VALUES ('11', 'zhulu', 'yaoge', 'haosa', '2013-04-15');
INSERT INTO `pingjia` VALUES ('12', '123', 'yaoge', 'good', '2013-04-25');
INSERT INTO `pingjia` VALUES ('13', '123', 'yaoge', 'okokok', '2013-04-26');
INSERT INTO `pingjia` VALUES ('14', 'zhulu', 'yaoge22', 'hao', '2013-04-30');
INSERT INTO `pingjia` VALUES ('15', 'iafjao', 'yaoge22', 'bu', '2013-05-07');
INSERT INTO `pingjia` VALUES ('16', 'java', '789987', '1233', '2013-05-09');
INSERT INTO `pingjia` VALUES ('17', 'zhulu', '', 'undefined', '2013-05-17');
INSERT INTO `pingjia` VALUES ('18', 'zhulu', '', 'ndfjndow', '2013-05-20');
INSERT INTO `pingjia` VALUES ('19', 'shi', 'yaoge22', 'good', '2013-05-30');
INSERT INTO `pingjia` VALUES ('20', 'shi', 'yaoge22', 'ppp', '2013-05-30');
INSERT INTO `pingjia` VALUES ('21', 'shi', 'yaoge22', 'cdcdcv', '2013-05-30');
INSERT INTO `pingjia` VALUES ('22', 'shi', 'yaoge22', 'vcv', '2013-05-30');
INSERT INTO `pingjia` VALUES ('23', 'cxzczx', 'yaoge22', '1', '2013-06-06');
INSERT INTO `pingjia` VALUES ('24', 'cxzczx', 'yaoge22', 'edwedwd', '2013-06-06');
INSERT INTO `pingjia` VALUES ('25', 'cxzczx', 'yaoge22', 'bucuode', '2013-06-10');
INSERT INTO `pingjia` VALUES ('28', '逐鹿', '姚革', '你好鸟你好额外', '2013-06-17');
INSERT INTO `pingjia` VALUES ('29', null, null, null, null);
INSERT INTO `pingjia` VALUES ('30', 'zhulu', 'yaoge22', '分侧翻第三方地方', '2013-06-18');
INSERT INTO `pingjia` VALUES ('31', 'C语言设计', 'yaoge22', '不错的一本书', '2013-06-19');
INSERT INTO `pingjia` VALUES ('32', 'cxzczx', 'yaoge22', '不错的一本书', '2013-06-19');
INSERT INTO `pingjia` VALUES ('33', '高等数学', '一回眸', '可以不错的', '2013-06-19');
INSERT INTO `pingjia` VALUES ('34', '大数据时代', 'yaoge22', '不错的一本书', '2013-06-21');

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `users_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scan` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('21', '姚革', '\r\nmysql', '6', '2013-06-20 08:17:12', '各位好友，本人需求nosql相关书籍！！！');
INSERT INTO `post` VALUES ('22', 'yaoge22', 'it图书\r\n', '0', '2013-06-21 08:48:41', '求JAVA图书');
INSERT INTO `post` VALUES ('23', 'yaoge22', '百年孤独', '0', '2013-06-21 08:49:15', '求书籍下载');

-- ----------------------------
-- Table structure for `scientist`
-- ----------------------------
DROP TABLE IF EXISTS `scientist`;
CREATE TABLE `scientist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_tag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_author` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_amount` int(11) DEFAULT NULL,
  `books_storagetime` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `books_path` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_uploader` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_xiazai` int(25) DEFAULT NULL,
  `books_limit` int(11) unsigned DEFAULT NULL,
  `books_text` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scientist
-- ----------------------------
INSERT INTO `scientist` VALUES ('2', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.txt', 'czxcz', 'books_pic/meinv.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('3', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.txt', 'czxcz', 'books_pic/mein.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('4', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.txt', 'czxcz', 'books_pic/mein.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('5', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.txt', 'czxcz', 'books_pic/mein.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('6', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.doc', 'czxcz', 'books_pic/mein.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('7', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.doc', 'czxcz', 'books_pic/mein.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('8', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.doc', 'czxcz', 'books_pic/mein.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('9', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.doc', 'czxcz', 'books_pic/mein.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('10', '123', '3242', 'q32e', '3', '2013-05-11', '/save_files/123.txt', 'czxcz', 'books_pic/mein.jpg', '8', '1', null);
INSERT INTO `scientist` VALUES ('11', '大数据时代', '非常好的一本书', '维克托·迈尔·舍恩伯格', '4', '2013-06-17', '/save_files/大数据时代.pdf', '姚革', 'books_pic/dashuju.jpg', '10', '2', null);

-- ----------------------------
-- Table structure for `tool`
-- ----------------------------
DROP TABLE IF EXISTS `tool`;
CREATE TABLE `tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_tag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_author` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_amount` int(11) DEFAULT NULL,
  `books_storagetime` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `books_path` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_uploader` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_pic` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `books_xiazai` int(25) DEFAULT NULL,
  `books_limit` int(11) unsigned DEFAULT NULL,
  `books_text` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tool
-- ----------------------------
INSERT INTO `tool` VALUES ('1', 'hello', 'haikeyi', 'buzhidao', '10', '2013-05-09', '/save_files/hello.txt', null, 'books_pic/23424.jpg', '13', '5', null);
INSERT INTO `tool` VALUES ('2', 'fevfcbgv', 'festr', 'wet', '2', '2013-05-17', '/save_files/fevfcbgv.txt', 'yaoge22', 'books_pic/fege.jpg', '2', '6', null);
INSERT INTO `tool` VALUES ('3', 'fevfcbgv', 'festr', 'wet', '2', '2013-05-17', '/save_files/fevfcbgv.txt', 'yaoge22', 'books_pic/fege.jpg', '2', '6', null);
INSERT INTO `tool` VALUES ('4', 'gret', 'tyet', 'erte', null, '2013-05-17', '/save_files/gret.txt', 'yaoge22', 'books_pic/ggrg.jpg', null, '2', null);
INSERT INTO `tool` VALUES ('5', 'esrw', 'rfwr', 'wr', '1', '2013-05-17', '/save_files/esrw.txt', 'yaoge22', 'books_pic/fedf.jpg', null, '2', null);
INSERT INTO `tool` VALUES ('6', 'dwr', 'rwrr', 'wrer', null, '2013-05-17', '/save_files/dwr.txt', 'yaoge22', 'books_pic/wew.jpg', '1', '3', null);
INSERT INTO `tool` VALUES ('7', 'dsd', 'sdd', 'dsd', '1', '2013-05-24', '/save_files/dsd.txt', 'yaoge22', 'books_pic/dsd.jpg', '1', '2', null);
INSERT INTO `tool` VALUES ('8', 'dedfef', 'dwew', 'swdwed', '2', '2013-05-27', '/save_files/dedfef.txt', 'yaoge', 'books_pic/ewew.jpg', '1', '2', null);
INSERT INTO `tool` VALUES ('9', 'dsd', 'dsds', 'dsd', '1', '2013-05-30', '/save_files/dsd.txt', 'yaoge11', 'books_pic/3re.jpg', '1', '4', null);
INSERT INTO `tool` VALUES ('10', 'hibernate', 'ok', 'apache', '10', '2013-06-05', '/save_files/hibernate.pdf', 'yaoge22', 'books_pic/main.jpg', '3', '0', null);
INSERT INTO `tool` VALUES ('11', 'hibernates', 'bucuo', 'apache', '4', '2013-06-05', '/save_files/hibernates.pdf', 'yaoge22', 'books_pic/dsdsddd.jpg', '1', '1', null);
INSERT INTO `tool` VALUES ('12', 'hibernate', 'fjdkfd', 'aoache', '10', '2013-06-05', '/save_files/hibernate.pdf', 'yaoge22', 'books_pic/fdfdfdf.jpg', '3', '1', null);
INSERT INTO `tool` VALUES ('13', 'hibernate', 'fjdkfd', 'aoache', '10', '2013-06-05', '/save_files/hibernate.pdf', 'yaoge22', 'books_pic/fdfdfdf.jpg', '3', '1', null);
INSERT INTO `tool` VALUES ('14', 'hibernate', 'dsd', 'dsf', '10', '2013-06-05', '/save_files/hibernate.pdf', 'yaoge22', 'books_pic/dsdddsdd.jpg', '3', '2', null);
INSERT INTO `tool` VALUES ('15', 'hibernate', 'wewe', 'apache', '10', '2013-06-05', '/save_files/hibernate.pdf', 'yaoge22', 'books_pic/dwdew.jpg', '3', '2', null);
INSERT INTO `tool` VALUES ('16', 'fef', '3232', 'fef', null, '2013-06-08', '/save_files/fef.pdf', 'yaoge22', 'books_pic/er.jpg', null, '2', null);
INSERT INTO `tool` VALUES ('17', 'ew', '232', 'ewe', '2', '2013-06-08', '/save_files/ew.pdf', 'yaoge22', 'books_pic/r3r.jpg', null, '2', null);
INSERT INTO `tool` VALUES ('18', 'siji', 'hao', 'zhangwenya', null, '2013-06-08', '/save_files/siji.doc', 'zhangwenya', 'books_pic/ENGLISH.jpg', '7', '2', null);
INSERT INTO `tool` VALUES ('19', 'siji', 'hao', 'zhangwenya', null, '2013-06-08', '/save_files/siji.doc', 'zhangwenya', 'books_pic/ENGLISH.jpg', '7', '2', null);
INSERT INTO `tool` VALUES ('20', 'siji', 'hao', 'zhangwenya', null, '2013-06-08', '/save_files/siji.doc', 'zhangwenya', 'books_pic/ENGLISH.jpg', '7', '2', null);
INSERT INTO `tool` VALUES ('23', 'siji', 'GOOD', 'zhangwenya', null, '2013-06-08', '/save_files/siji.doc', 'zhangwenya', 'books_pic/ENGLISH.jpg', '7', '2', null);
INSERT INTO `tool` VALUES ('24', 'baomin', 'good', '', null, '2013-06-08', '/save_files/baomin.doc', 'zhangwenya', 'books_pic/.jpg', null, '1', null);
INSERT INTO `tool` VALUES ('25', 'ewe', 'ewee', 'ew', null, '2013-06-09', '/save_files/ewe.pdf', 'yaoge22', 'books_pic/moren.jpg', null, '2', null);
INSERT INTO `tool` VALUES ('26', 'c_yuyan', 'csc', 'dsdsws', null, '2013-06-09', '/save_files/c_yuyan.pdf', 'yaoge22', 'books_pic/moren.jpg', null, '3', null);
INSERT INTO `tool` VALUES ('27', 'cccccc', 'ccc', 'ccc', null, '2013-06-09', '/save_files/cccccc.pdf', 'yaoge22', 'books_pic/moren.jpg', null, '2', null);
INSERT INTO `tool` VALUES ('28', '11111', '111', '11', '4', '2013-06-09', '/save_files/11111.txt', 'yaoge22', 'books_pic/moren.jpg', '1', '11', null);
INSERT INTO `tool` VALUES ('30', 'whisp', 'whisperwei', 'whisperwei', '1', '2013-06-09', '/save_files/whisp.txt', 'whisperwei', 'books_pic/moren.jpg', null, '10', null);
INSERT INTO `tool` VALUES ('31', 'baomins', '2223szx', 'yaoge', null, '2013-06-09', '/save_files/baomins.doc', 'yaoge22', 'books_pic/moren.jpg', null, '4', null);
INSERT INTO `tool` VALUES ('32', 'baomins', '2223szx', 'yaoge', null, '2013-06-09', '/save_files/baomins.doc', 'yaoge22', 'books_pic/moren.jpg', null, '4', null);
INSERT INTO `tool` VALUES ('33', 'baomins', '2223szx', 'yaoge', null, '2013-06-09', '/save_files/baomins.txt', 'yaoge22', 'books_pic/moren.jpg', null, '4', null);
INSERT INTO `tool` VALUES ('34', 'ereds', 'dsdsd', 'ewes', '1', '2013-06-09', '/save_files/ereds.pdf', 'yaoge22', 'books_pic/moren.jpg', null, '5', null);
INSERT INTO `tool` VALUES ('36', 'dsadsa', 'dsdsdsds', 'dsdsd', null, '2013-06-10', '/save_files/dsadsa.pdf', 'yaoge22', 'books_pic/moren.jpg', null, '6', null);
INSERT INTO `tool` VALUES ('39', 'www', 'wwwww', 'wwwwww', '2', '2013-06-11', '/save_files/www.pdf', 'wwww', 'books_pic/moren.jpg', null, '2', null);
INSERT INTO `tool` VALUES ('40', '你好', '不错', '姚革', null, '2013-06-12', '/save_files/你好.pdf', 'yaoge22', 'books_pic/moren.jpg', '1', '2', null);
INSERT INTO `tool` VALUES ('41', 'HIERNATE框架', '分成不错的一个框架', 'apache基金会', '34', '2013-06-17', '/save_files/HIERNATE框架.pdf', '姚革', 'books_pic/hie.jpg', '18', '2', null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_name` varchar(11) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `users_password` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `users_email` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `users_sex` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `users_in` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `users_vip` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `users_age` int(11) unsigned zerofill DEFAULT NULL,
  `users_grades` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`users_name`),
  KEY `users_name` (`users_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'yaoge33', 'yaoge33', 'yaoge_num@sina.cn', 'man', 'literature', 'ok', null, '40');
INSERT INTO `users` VALUES ('2', 'czxczx', '123456', '615805677@qq.com', 'man', 'it', 'ok', null, '4');
INSERT INTO `users` VALUES ('3', 'yaoge11', 'yaoge11', '2318812170@qq.com', 'man', 'fiction', 'ok', null, '10');
INSERT INTO `users` VALUES ('4', '321123', '123321', '231881210@qq.com', 'man', 'it', 'ok', null, '2');
INSERT INTO `users` VALUES ('5', '789987', '789987', '2318812170@qq.com', 'man', 'it', 'no', null, '12');
INSERT INTO `users` VALUES ('7', 'czxcz', 'czx123', '615805677@qq.com', 'man', 'math', 'no', null, '28');
INSERT INTO `users` VALUES ('8', 'eqeqcdc', '123et', '2318812170@qq.com', 'women', 'literature', 'no', null, '0');
INSERT INTO `users` VALUES ('9', 'rsedfasdf', 'dsdsdsd', '2318812170@qq.com', 'women', 'math', 'no', null, '0');
INSERT INTO `users` VALUES ('10', 'eweswdrs', 'sdcxdsd', '2318812170@qq.com', 'man', 'tool', 'no', null, '0');
INSERT INTO `users` VALUES ('11', 'dwerfsed', 'sdsdfs', '2318812170@qq.com', 'man', 'scientist', 'no', null, '0');
INSERT INTO `users` VALUES ('12', '规定郭德纲', 'fedfedef', '2318812170@qq.com', 'man', 'tool', 'no', null, '0');
INSERT INTO `users` VALUES ('13', 'jfbsdfgji', 'fwsfwf', '1213243@QQ.COM', 'man', 'tool', 'no', null, '0');
INSERT INTO `users` VALUES ('14', '你好', '123', '2318812170@q.com', 'women', 'tool', 'no', null, '0');
INSERT INTO `users` VALUES ('15', 'yaoge22', 'yaoge22', 'yaoge_num@sina.cn', 'man', 'it', 'ok', null, '46');
INSERT INTO `users` VALUES ('16', 'zhangwenya', 'zhangwenya', '664102688@qq.com', 'women', 'literature', 'ok', null, '34');
INSERT INTO `users` VALUES ('17', 'whisperwei', 'whisperwei', 'whisperwei@sina.com', 'man', 'math', 'no', null, '4');
INSERT INTO `users` VALUES ('18', 'nihao', 'nihao', '2318812170@qq.com', 'man', 'tool', 'no', null, '10');
INSERT INTO `users` VALUES ('19', 'nihaos', 'nihaos', '2318812170@qq.com', 'man', 'tool', 'no', null, '10');
INSERT INTO `users` VALUES ('20', 'nnnnn', 'nnnnn', '2318812170@qq.com', 'man', 'economy', 'no', null, '10');
INSERT INTO `users` VALUES ('21', 'nihaoss', 'bfxs', '2318812170@qq.com', 'man', 'tool', 'no', null, '10');
INSERT INTO `users` VALUES ('22', 'doujiao', 'doujiao', '530166642@qq.com', 'man', 'economy', 'no', null, '10');
INSERT INTO `users` VALUES ('23', 'qqq', 'qqq', '2318812170@qq.com', 'man', 'literature', 'no', null, '10');
INSERT INTO `users` VALUES ('24', '姚革', 'yaoge', 'yaoge_num@sina.cn', 'man', 'tool', 'ok', null, '19');
INSERT INTO `users` VALUES ('25', 'desfdfs', 'sddsds', '2318812170@qq.com', 'man', 'tool', 'no', null, '10');
INSERT INTO `users` VALUES ('27', '江边流客', 'yaoge22', '2318812170@qq.com', 'man', 'math', 'no', null, '0');
INSERT INTO `users` VALUES ('28', '姚革22', 'hduwhdu', '2318812170@qq.com', 'man', 'tool', 'no', null, '10');
INSERT INTO `users` VALUES ('29', '一回眸', 'yaoge', '2318812170@qq.com', 'man', 'it', 'no', null, '0');
INSERT INTO `users` VALUES ('30', '2284510458', 'CF1992', '2284510458@qq.com', 'man', 'scientist', 'no', null, '10');
INSERT INTO `users` VALUES ('31', '姚革33', 'dnjshfd', 'yaoge22two@gmail.com', 'man', 'literature', 'no', null, '10');
INSERT INTO `users` VALUES ('32', '张三', 'zhangsan', 'yaoge_num@sina.cn', 'man', 'economy', 'no', null, '10');
INSERT INTO `users` VALUES ('33', '李四', 'lisi', 'yaoge_num@sina.cn', 'man', 'it', 'no', null, '10');

-- ----------------------------
-- Table structure for `users_history`
-- ----------------------------
DROP TABLE IF EXISTS `users_history`;
CREATE TABLE `users_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_name` varchar(11) DEFAULT NULL,
  `books_name` varchar(11) DEFAULT NULL,
  `books_leibie` varchar(11) DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `read_status` varchar(11) DEFAULT NULL,
  `active_time` double(11,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_history
-- ----------------------------
INSERT INTO `users_history` VALUES ('223', '游客', 'nxisogcbsi', 'economy', '2013-06-19 16:50:40', null, 'no', null);
INSERT INTO `users_history` VALUES ('224', '游客', 'HIERNATE框架', 'tool', '2013-06-19 16:50:44', '2013-11-29 11:13:44', 'ok', '233386');
INSERT INTO `users_history` VALUES ('225', 'yaoge22', 'C语言设计', 'fiction', '2013-06-19 16:52:30', '2013-06-22 02:06:22', 'ok', '34');
INSERT INTO `users_history` VALUES ('226', 'yaoge22', 'C语言程序设计', 'fiction', '2013-06-19 16:54:19', '2013-06-21 00:33:34', 'ok', '0');
INSERT INTO `users_history` VALUES ('227', 'yaoge22', 'cxzczx', 'fiction', '2013-06-19 16:54:23', '2013-06-19 17:10:30', 'ok', '0');
INSERT INTO `users_history` VALUES ('228', '姚革', 'C语言程序设计', 'It', '2013-06-19 16:58:07', null, 'no', null);
INSERT INTO `users_history` VALUES ('229', '姚革', '大数据时代', 'It', '2013-06-19 17:00:17', '2013-11-29 11:14:35', 'ok', '233445');
INSERT INTO `users_history` VALUES ('230', '姚革', '三国演义', 'It', '2013-06-19 17:00:24', '2013-06-20 08:29:33', 'ok', '0');
INSERT INTO `users_history` VALUES ('231', '姚革', '倚天屠龙记', 'tool', '2013-06-19 17:02:10', '2013-06-20 08:20:18', 'ok', '15');
INSERT INTO `users_history` VALUES ('232', '姚革', '11111', 'tool', '2013-06-19 17:07:46', null, 'no', null);
INSERT INTO `users_history` VALUES ('238', '一回眸', 'C语言设计', 'It', '2013-06-19 20:00:35', '2013-06-19 20:06:02', 'ok', '0');
INSERT INTO `users_history` VALUES ('239', '一回眸', '高等数学', 'it', '2013-06-19 20:01:26', '2013-06-19 20:03:04', 'ok', '0');
INSERT INTO `users_history` VALUES ('240', '一回眸', '123', 'it', '2013-06-19 20:03:38', '2013-06-19 20:13:18', 'ok', '10');
INSERT INTO `users_history` VALUES ('241', 'czxczx', '逐鹿', 'it', '2013-06-19 20:15:09', '2013-06-19 20:15:10', 'ok', '19');
INSERT INTO `users_history` VALUES ('243', 'zhangwenya', 'HIERNATE框架', 'literature', '2013-06-19 20:16:32', '2013-06-20 09:05:09', 'ok', '7');
INSERT INTO `users_history` VALUES ('244', 'zhangwenya', '高等数学', 'Math', '2013-06-19 20:18:02', '2013-06-19 20:18:31', 'ok', '0');
INSERT INTO `users_history` VALUES ('245', 'zhangwenya', '资本论', 'economy', '2013-06-19 20:21:23', null, 'no', null);
INSERT INTO `users_history` VALUES ('246', '江边流客', '资本论', 'math', '2013-06-19 20:29:10', '2013-06-19 20:29:35', 'ok', '0');
INSERT INTO `users_history` VALUES ('247', '江边流客', '高等数学', 'Math', '2013-06-19 20:43:26', '2013-06-19 20:43:59', 'ok', '8');
INSERT INTO `users_history` VALUES ('248', '江边流客', 'ewewe', 'Math', '2013-06-19 20:43:52', '2013-06-19 20:43:56', 'ok', '0');
INSERT INTO `users_history` VALUES ('249', '江边流客', '高等数学教育', 'math', '2013-06-19 20:48:47', '2013-06-19 20:48:49', 'ok', '0');
INSERT INTO `users_history` VALUES ('250', '游客', '三国演义', 'tool', '2013-06-19 20:57:21', '2013-06-20 09:26:27', 'ok', '0');
INSERT INTO `users_history` VALUES ('251', '游客', 'hibernate', 'literature', '2013-06-19 20:58:23', '2013-06-22 10:55:13', 'ok', '0');
INSERT INTO `users_history` VALUES ('252', '游客', 'C语言设计', 'it', '2013-06-19 20:58:38', '2013-06-19 20:59:10', 'ok', '0');
INSERT INTO `users_history` VALUES ('253', '江边流客', 'C语言程序设计', 'it', '2013-06-19 21:02:08', null, 'no', null);
INSERT INTO `users_history` VALUES ('254', '2284510458', 'C语言设计', 'it', '2013-06-19 21:32:21', null, 'no', null);
INSERT INTO `users_history` VALUES ('255', '游客', 'C语言程序设计', 'it', '2013-06-19 22:31:25', '2013-11-29 11:13:19', 'ok', '0');
INSERT INTO `users_history` VALUES ('256', '姚革', 'HIERNATE框架', 'tool', '2013-06-20 08:03:41', '2013-11-29 11:14:14', 'ok', '233452');
INSERT INTO `users_history` VALUES ('257', '姚革', '逐鹿', 'fiction', '2013-06-20 08:11:49', '2013-06-20 08:11:51', 'ok', '0');
INSERT INTO `users_history` VALUES ('258', '姚革', 'baomin', 'tool', '2013-06-20 08:12:08', null, 'no', null);
INSERT INTO `users_history` VALUES ('259', 'yaoge22', '倚天屠龙记', 'fiction', '2013-06-20 08:23:18', '2013-06-22 01:31:56', 'ok', '1487');
INSERT INTO `users_history` VALUES ('260', '游客', '大数据时代', 'scientist', '2013-06-20 09:01:24', '2013-06-20 11:12:04', 'ok', '106');
INSERT INTO `users_history` VALUES ('261', 'zhangwenya', '大数据时代', 'scientist', '2013-06-20 09:04:45', null, 'no', null);
INSERT INTO `users_history` VALUES ('262', 'zhangwenya', '三国演义', 'literature', '2013-06-20 09:05:14', null, 'no', null);
INSERT INTO `users_history` VALUES ('263', 'zhangwenya', 'C语言设计', 'it', '2013-06-20 09:05:20', null, 'no', null);
INSERT INTO `users_history` VALUES ('264', 'zhangwenya', 'C语言程序设计', 'it', '2013-06-20 09:06:15', '2013-06-20 09:06:21', 'ok', '0');
INSERT INTO `users_history` VALUES ('265', '游客', '倚天屠龙记', 'fiction', '2013-06-20 09:25:22', null, 'no', null);
INSERT INTO `users_history` VALUES ('266', '游客', '逐鹿', 'tool', '2013-06-20 10:44:01', null, 'no', null);
INSERT INTO `users_history` VALUES ('267', 'yaoge22', '高等数学', 'math', '2013-06-20 11:13:13', null, 'no', null);
INSERT INTO `users_history` VALUES ('268', 'yaoge22', 'HIERNATE框架', 'tool', '2013-06-20 11:13:21', '2013-06-21 00:20:55', 'ok', '0');
INSERT INTO `users_history` VALUES ('269', 'yaoge22', '大数据时代', 'scientist', '2013-06-15 11:13:26', '2013-06-22 11:37:17', 'ok', '10730');
INSERT INTO `users_history` VALUES ('270', '张三', 'C语言程序设计', 'it', '2013-06-21 00:22:18', '2013-06-21 00:24:10', 'ok', '0');
INSERT INTO `users_history` VALUES ('271', '张三', 'C语言设计', 'it', '2013-06-21 00:23:29', null, 'no', null);
INSERT INTO `users_history` VALUES ('272', '张三', 'HIERNATE框架', 'tool', '2013-06-21 00:23:37', null, 'no', null);
INSERT INTO `users_history` VALUES ('273', '李四', 'C语言设计', 'it', '2013-06-21 00:26:43', null, 'no', null);
INSERT INTO `users_history` VALUES ('274', 'yaoge22', '11111', 'tool', '2013-06-18 00:35:06', '2013-06-18 00:35:09', 'ok', '0');
INSERT INTO `users_history` VALUES ('275', 'yaoge22', '高等数学教育', 'Math', '2013-06-17 00:37:26', '2013-06-17 00:38:26', 'ok', '0');
INSERT INTO `users_history` VALUES ('277', 'yaoge22', '资本论', 'Economy', '2013-06-16 00:39:58', '2013-12-21 20:58:15', 'ok', '264247');
INSERT INTO `users_history` VALUES ('278', 'yaoge22', 'zzz', 'It', '2013-06-21 00:45:51', null, 'no', null);
INSERT INTO `users_history` VALUES ('279', '游客', 'undefined', 'literature', '2013-06-22 10:55:03', null, 'no', null);
INSERT INTO `users_history` VALUES ('280', '游客', '123', 'fiction', '2013-06-22 10:55:08', null, 'no', null);
INSERT INTO `users_history` VALUES ('281', '姚革', '资本论', 'tool', '2013-06-23 00:48:53', '2013-06-23 00:48:55', 'ok', '0');
INSERT INTO `users_history` VALUES ('282', '姚革', 'C语言设计', 'It', '2013-06-23 00:49:11', '2013-06-23 00:50:48', 'ok', '0');
INSERT INTO `users_history` VALUES ('283', '游客', '????C??????', 'it', '2013-11-29 11:10:31', null, 'no', null);
INSERT INTO `users_history` VALUES ('284', '游客', '呼啸山庄', 'fiction', '2013-11-29 11:13:34', null, 'no', null);
INSERT INTO `users_history` VALUES ('285', '游客', '唐诗三百首', 'literature', '2013-11-29 11:13:39', null, 'no', null);
INSERT INTO `users_history` VALUES ('286', '游客', 'ewewe', 'math', '2013-12-21 20:55:14', null, 'no', null);

-- ----------------------------
-- Table structure for `users_log`
-- ----------------------------
DROP TABLE IF EXISTS `users_log`;
CREATE TABLE `users_log` (
  `com_id` varchar(255) NOT NULL,
  `com_time` varchar(255) DEFAULT NULL,
  `com_again` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_log
-- ----------------------------
INSERT INTO `users_log` VALUES ('0:0:0:0:0:0:0:1', '2013-06-17 22:52:20', '2014-04-28 15:58:39');
INSERT INTO `users_log` VALUES ('113.251.221.7', '2013-06-18 14:18:22', '0');
INSERT INTO `users_log` VALUES ('113.251.222.158', '2013-06-19 09:25:12', '2013-06-19 09:31:59');
INSERT INTO `users_log` VALUES ('123', '2013-06-17 22:46:31', '2013-06-17 22:51:50');
INSERT INTO `users_log` VALUES ('125.87.116.82', '2013-12-21 20:57:09', '0');
INSERT INTO `users_log` VALUES ('127.0.0.1', '2014-04-28 15:41:48', '2014-04-28 15:42:07');
INSERT INTO `users_log` VALUES ('172.18.130.200', '2013-06-18 12:43:50', '2013-06-18 13:19:34');
INSERT INTO `users_log` VALUES ('172.18.92.222', '2013-06-18 16:30:25', '2013-06-18 19:16:20');
INSERT INTO `users_log` VALUES ('172.18.93.94', '2013-06-18 12:27:47', '0');
INSERT INTO `users_log` VALUES ('172.31.40.246', '2013-06-18 10:28:33', '2013-06-18 10:58:43');
INSERT INTO `users_log` VALUES ('222.182.97.11', '2013-06-19 16:58:03', '0');
INSERT INTO `users_log` VALUES ('80', '2013-06-17 23:00:38', '0');

-- ----------------------------
-- Table structure for `users_music`
-- ----------------------------
DROP TABLE IF EXISTS `users_music`;
CREATE TABLE `users_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_name` varchar(25) DEFAULT '',
  `music_time` varchar(25) DEFAULT NULL,
  `music_name` varchar(11) DEFAULT NULL,
  `music_songer` varchar(11) DEFAULT NULL,
  `books_name` varchar(11) DEFAULT NULL,
  `books_leibie` varchar(11) DEFAULT NULL,
  `music_exit` varchar(255) DEFAULT NULL,
  `beijing_music` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_music
-- ----------------------------
INSERT INTO `users_music` VALUES ('23', 'yaoge', '2013-05-03', '冰雨', '刘德华', 'zhulu', 'fiction', 'ok', 'ok');
INSERT INTO `users_music` VALUES ('25', 'yaoge22', '2013-05-03', '传奇', '王菲', 'zhulu', 'fiction', 'ok', 'ok');
INSERT INTO `users_music` VALUES ('29', 'yaoge22', '2013-05-04', '青藏高原', '韩红', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('30', 'yaoge22', '2013-05-06', '那些年', '胡夏', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('32', 'yaoge22', '2013-05-06', '断桥残雪', '许嵩', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('33', 'yaoge22', '2013-05-06', '素颜', '许嵩', 'zhulu', 'fiction', 'no', 'no');
INSERT INTO `users_music` VALUES ('34', 'yaoge22', '2013-05-06', '生如夏花', '朴树', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('35', 'yaoge22', '2013-05-06', '流年', '王菲', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('36', 'yaoge', '2013-05-07', '烟花易冷', '周杰伦', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('37', 'yaoge', '2013-05-09', '素颜', '何曼婷', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('38', 'yaoge', '2013-05-09', '断桥残雪', '许嵩', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('39', 'yaoge', '2013-05-09', '风吹麦浪', '李健', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('41', 'yaoge', '2013-05-09', 'My Love', 'WestLife', 'zhulu', 'fiction', 'no', 'no');
INSERT INTO `users_music` VALUES ('43', 'yaoge', '2013-05-09', '相见不如怀念', '那英', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('44', '123321', '2013-05-09', '断桥残雪', '许嵩', 'zhulu', 'fiction', 'no', 'no');
INSERT INTO `users_music` VALUES ('45', '123321', '2013-05-09', '冰雨', '刘德华', 'zhulu', 'fiction', 'ok', 'ok');
INSERT INTO `users_music` VALUES ('46', '789987', '2013-05-09', '断桥残雪', '许嵩', '123', 'it', 'ok', 'ok');
INSERT INTO `users_music` VALUES ('47', 'czxcz', '2013-05-11', '光棍', '胡歌', '123', 'scientist', 'ok', 'no');
INSERT INTO `users_music` VALUES ('48', 'czxcz', '2013-05-11', '逍遥', '霍建华', '123', 'scientist', 'ok', 'ok');
INSERT INTO `users_music` VALUES ('49', 'yaoge', '2013-05-11', '流年', '王菲', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('50', 'yaoge', '2013-05-11', '忘记时间', '胡歌', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('51', '', '2013-05-11', '活着', '谢霆锋', '456654', 'it', 'no', 'no');
INSERT INTO `users_music` VALUES ('52', '', '2013-05-11', '活着viva', '谢霆锋', '456654', 'it', 'no', 'no');
INSERT INTO `users_music` VALUES ('53', '', '2013-05-11', '逍遥', '霍建华', '456654', 'it', 'ok', 'no');
INSERT INTO `users_music` VALUES ('54', 'yaoge', '2013-05-21', '半城烟沙', '许嵩', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('55', 'yaoge', '2013-05-23', '生如夏花', '朴树', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('56', 'yaoge22', '2013-05-24', '刘德华', '冰雨', 'zhulu', 'fiction', 'no', 'no');
INSERT INTO `users_music` VALUES ('57', 'yaoge22', '2013-05-24', '冰雨', '刘德华', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('58', 'yaoge22', '2013-06-04', '逍遥', '霍建华', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('59', 'zhangwenya', '2013-06-06', '勇气', '', 'zhulu', 'fiction', 'ok', 'ok');
INSERT INTO `users_music` VALUES ('60', 'zhangwenya', '2013-06-06', '', '梁静茹', 'zhulu', 'fiction', 'no', 'no');
INSERT INTO `users_music` VALUES ('61', '000000', '2013-06-08', '风吹麦浪', '李建', 'gfh', '', 'ok', 'no');
INSERT INTO `users_music` VALUES ('62', '000000', '2013-06-08', '断桥残雪', '许嵩', 'gfh', '', 'ok', 'no');
INSERT INTO `users_music` VALUES ('63', '000000', '2013-06-08', '冰雨', 'l刘德华', 'zhulu', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('64', '000000', '2013-06-09', 'sdf', 'sdf', 'baomin', '', 'no', 'no');
INSERT INTO `users_music` VALUES ('65', '000000', '2013-06-09', '', '', 'baomin', '', 'no', 'no');
INSERT INTO `users_music` VALUES ('66', '000000', '2013-06-09', '彩虹', '周杰伦', 'ereds', '', 'ok', 'no');
INSERT INTO `users_music` VALUES ('67', '000000', '2013-06-11', '雨一直下', '张宇', '123', 'It', 'ok', 'no');
INSERT INTO `users_music` VALUES ('68', '000000', '2013-06-17', '江湖笑', '黄晓明', '逐鹿', 'fiction', 'ok', 'no');
INSERT INTO `users_music` VALUES ('69', '000000', '2013-06-18', 'ds', 'l刘德华', 'dswds', 'fiction', 'no', 'no');
INSERT INTO `users_music` VALUES ('70', '000000', '2013-06-18', '发生山顶上的', '刘德华', '三国演义', 'literature', 'no', 'no');
INSERT INTO `users_music` VALUES ('71', '000000', '2013-06-18', 'ewe', 'ewe', 'C语言程序设计', 'it', 'no', 'no');
INSERT INTO `users_music` VALUES ('72', 'yaoge22', '2013-06-18', 'dsd', 'dsds', '逐鹿', 'fiction', 'no', 'no');
INSERT INTO `users_music` VALUES ('73', 'yaoge22', '2013-06-18', '牛郎', '刘德华', 'C语言程序设计', 'it', 'no', 'no');
INSERT INTO `users_music` VALUES ('74', 'czxczx', '2013-06-18', '逍遥', '霍建华', 'C语言程序设计', null, 'ok', 'no');
INSERT INTO `users_music` VALUES ('75', 'yaoge22', '2013-06-21', '', '', 'C语言程序设计', 'it', 'no', 'no');

-- ----------------------------
-- Table structure for `users_tags`
-- ----------------------------
DROP TABLE IF EXISTS `users_tags`;
CREATE TABLE `users_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `books_name` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `users_tag` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `users_yeshu` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `tag_time` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `tag_amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_tags
-- ----------------------------
INSERT INTO `users_tags` VALUES ('2', '12345', 'zzz', '/save_files/zzz.txt', '1', '2013-04-15', '1');
INSERT INTO `users_tags` VALUES ('3', 'hello', 'zzz', '/save_files/zzz.txt', '1', '2013-04-15', '1');
INSERT INTO `users_tags` VALUES ('4', 'czxcz', '123', '/save_files/123.txt', '1', '2013-05-11', '1');
INSERT INTO `users_tags` VALUES ('6', 'yaoge', 'nihao', '/save_files/nihao.txt', '1', '2013-05-24', '1');
INSERT INTO `users_tags` VALUES ('8', 'undefined', 'undefined', 'undefined', 'undefined', '2013-06-08', '1');
INSERT INTO `users_tags` VALUES ('9', 'yaoge22', '123', '/save_files/123.doc', '9', '2013-06-11', '10');
INSERT INTO `users_tags` VALUES ('10', 'yaoge22', 'hello', '/save_files/hello.txt', '1', '2013-06-11', '10');
INSERT INTO `users_tags` VALUES ('11', 'yaoge22', 'hibernate', '/save_files/hibernate.pdf', '13', '2013-06-13', '10');
INSERT INTO `users_tags` VALUES ('12', 'yaoge22', 'whisp', '/save_files/whisp.txt', '2', '2013-06-11', '10');
INSERT INTO `users_tags` VALUES ('13', '游客', 'zhuluzhu', '/save_files/zhuluzhu.txt', '5', '2013-06-12', '3');
INSERT INTO `users_tags` VALUES ('14', 'yaoge22', 'zhulu', '/save_files/zhulu.txt', '8', '2013-06-13', '10');
INSERT INTO `users_tags` VALUES ('16', '姚革', '逐鹿', '/save_files/逐鹿.txt', '4', '2013-06-17', '7');
INSERT INTO `users_tags` VALUES ('17', 'yaoge22', 'HIERNATE框架', '/save_files/HIERNATE框架.txt', '4', '2013-06-18', '10');
INSERT INTO `users_tags` VALUES ('18', '姚革', '大数据时代', '/save_files/大数据时代.txt', '3454546', '2013-06-18', '7');
INSERT INTO `users_tags` VALUES ('19', '姚革', 'dswds', '/save_files/dswds.txt', '45467', '2013-06-18', '7');
INSERT INTO `users_tags` VALUES ('20', '姚革', 'rwrfa', '/save_files/rwrfa.txt', '3', '2013-06-18', '7');
INSERT INTO `users_tags` VALUES ('21', '姚革', '三国演义', '/save_files/三国演义.txt', '8', '2013-06-20', '7');
INSERT INTO `users_tags` VALUES ('22', 'yaoge22', 'C语言程序设计', '/save_files/C语言程序设计.txt', '2', '2013-06-18', '10');
INSERT INTO `users_tags` VALUES ('23', '游客', '谁Ccd解决方', '/save_files/谁Ccd解决方.txt', '2', '2013-06-18', '3');
INSERT INTO `users_tags` VALUES ('24', '游客', 'C语言程序设计', '/save_files/C语言程序设计.txt', '3', '2013-06-18', '3');
INSERT INTO `users_tags` VALUES ('25', 'yaoge22', '逐鹿', '/save_files/逐鹿.txt', '2', '2013-06-19', '10');
INSERT INTO `users_tags` VALUES ('26', '姚革', 'C语言程序设计', '/save_files/C语言程序设计.txt', '5', '2013-06-19', '7');
INSERT INTO `users_tags` VALUES ('27', '一回眸', 'C语言设计', '/save_files/C语言设计.txt', '6', '2013-06-19', '3');
INSERT INTO `users_tags` VALUES ('28', '一回眸', '高等数学', '/save_files/高等数学.txt', '4', '2013-06-19', '3');
INSERT INTO `users_tags` VALUES ('29', '一回眸', '123', '/save_files/123.doc', '7', '2013-06-19', '3');
INSERT INTO `users_tags` VALUES ('30', '姚革', '倚天屠龙记', '/save_files/倚天屠龙记.txt', '3', '2013-06-20', '7');
INSERT INTO `users_tags` VALUES ('31', 'yaoge22', '倚天屠龙记', '/save_files/倚天屠龙记.txt', '3', '2013-06-21', '10');
INSERT INTO `users_tags` VALUES ('32', 'yaoge22', 'C语言设计', '/save_files/C语言设计.txt', '6', '2013-06-21', '10');

-- ----------------------------
-- Table structure for `word_records`
-- ----------------------------
DROP TABLE IF EXISTS `word_records`;
CREATE TABLE `word_records` (
  `books_name` varchar(255) NOT NULL DEFAULT '',
  `book_bool` varchar(255) DEFAULT NULL,
  `books_amount` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `leibie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`books_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of word_records
-- ----------------------------
INSERT INTO `word_records` VALUES ('', 'ok', '11', '2013-06-21 00:45:50', 'fiction');
INSERT INTO `word_records` VALUES ('1', 'ok', '14', '2013-06-21 00:35:03', 'it');
INSERT INTO `word_records` VALUES ('12', 'no', '5', '2013-06-13 23:17:00', 'Math');
INSERT INTO `word_records` VALUES ('c', 'ok', '14', '2013-06-23 00:49:09', 'It');
INSERT INTO `word_records` VALUES ('C++', 'no', '1', '2013-06-19 16:59:57', 'It');
INSERT INTO `word_records` VALUES ('CSS', 'no', '2', '2013-06-21 00:51:53', 'It');
INSERT INTO `word_records` VALUES ('dsderre', 'no', '3', '2013-06-17 18:29:53', 'It');
INSERT INTO `word_records` VALUES ('dsderreds', 'no', '1', '2013-06-17 18:30:46', 'tool');
INSERT INTO `word_records` VALUES ('h', 'ok', '10', '2013-06-20 08:13:04', 'tool');
INSERT INTO `word_records` VALUES ('HIERNATE框架', 'ok', '2', '2013-06-19 20:17:33', 'tool');
INSERT INTO `word_records` VALUES ('JAVA', 'ok', '2', '2013-06-21 00:50:55', 'It');
INSERT INTO `word_records` VALUES ('z', 'ok', '9', '2013-06-18 20:51:13', 'fiction');
INSERT INTO `word_records` VALUES ('zhu', 'ok', '5', '2013-06-14 12:29:03', 'fiction');
INSERT INTO `word_records` VALUES ('倚天', 'ok', '11', '2013-06-21 00:34:42', 'fiction');
INSERT INTO `word_records` VALUES ('大数据', 'ok', '7', '2013-06-17 17:23:19', 'scientist');
INSERT INTO `word_records` VALUES ('天龙八部', 'no', '4', '2013-06-19 08:08:21', 'fiction');
INSERT INTO `word_records` VALUES ('尹', 'no', '3', '2013-06-20 08:11:43', 'fiction');
INSERT INTO `word_records` VALUES ('数据', 'ok', '2', '2013-06-21 00:46:34', 'scientist');
INSERT INTO `word_records` VALUES ('测试', 'ok', '1', '2013-06-13 23:07:38', 'it');
INSERT INTO `word_records` VALUES ('资', 'ok', '3', '2013-06-23 00:48:49', 'Economy');
INSERT INTO `word_records` VALUES ('资本', 'ok', '4', '2013-06-21 00:44:36', 'Economy');
INSERT INTO `word_records` VALUES ('逐鹿', 'ok', '93', '2013-06-20 08:10:44', 'fiction');
INSERT INTO `word_records` VALUES ('那些年', 'no', '7', '2013-06-19 08:07:16', 'fiction');
INSERT INTO `word_records` VALUES ('高', 'ok', '7', '2013-06-21 00:37:24', 'Math');
INSERT INTO `word_records` VALUES ('高数', 'no', '4', '2013-06-21 00:37:15', 'Math');
INSERT INTO `word_records` VALUES ('黑瞳', 'no', '1', '2013-06-19 17:01:31', 'scientist');
