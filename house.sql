/*
 Navicat Premium Data Transfer

 Source Server         : ty-mysql
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : house

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 05/08/2021 16:15:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `apply_id` int NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` double(255, 0) NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int NOT NULL,
  PRIMARY KEY (`apply_id`, `house_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (4, 'c3', '菊花园1-364', 60, 23.00, '申请中', 11);
INSERT INTO `apply` VALUES (5, 'b5', '穗石村18号', 60, 8000.00, '申请中', 12);

-- ----------------------------
-- Table structure for applyout
-- ----------------------------
DROP TABLE IF EXISTS `applyout`;
CREATE TABLE `applyout`  (
  `aoid` int NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`aoid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of applyout
-- ----------------------------
INSERT INTO `applyout` VALUES (3, 'b1', '桃源居', '已拒绝', 10);
INSERT INTO `applyout` VALUES (6, 'k2', '贝岗街18号', '已拒绝', 15);
INSERT INTO `applyout` VALUES (8, 'k8', '穗石村1号', '申请中', 12);

-- ----------------------------
-- Table structure for checkout
-- ----------------------------
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout`  (
  `cid` int NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkout
-- ----------------------------
INSERT INTO `checkout` VALUES (2, 'k2', '贝岗街18号', '已退租', 15);

-- ----------------------------
-- Table structure for hetong
-- ----------------------------
DROP TABLE IF EXISTS `hetong`;
CREATE TABLE `hetong`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `chuzu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chuzu_idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zuke` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zuke_idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fromdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `todate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `payday` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hetong
-- ----------------------------
INSERT INTO `hetong` VALUES (5, '张三', '440411199208018201', '李四', '440421199509088888', '2017-11-09', '2018-09-14', 900.00, '菊花园', 'c3', 2);
INSERT INTO `hetong` VALUES (10, '张三', '420666200011112711', '王五', '621022200312112711', '2021-08-05', '2021-08-06', 11110.00, '人民路口', 'c3', 12);
INSERT INTO `hetong` VALUES (11, '收到', '420666200011112711', '王五', '621022200312112711', '2021-08-05', '2021-08-07', 1212.00, '人民路口', 'c3', 12);
INSERT INTO `hetong` VALUES (12, '收到', '420666200011112711', '王五', '621022200312112711', '2021-08-05', '2021-08-07', 1212.00, '人民路口', 'c3', 12);
INSERT INTO `hetong` VALUES (13, '收到', '420666200011112711', '王五', '621022200312112711', '2021-08-05', '2021-08-07', 1212.00, '东风街13号', 'c3', 12);
INSERT INTO `hetong` VALUES (14, '收到', '420666200011112711', '王五', '621022200312112711', '2021-08-05', '2021-08-07', 1212.00, '菊花园1-364', 'c3', 12);
INSERT INTO `hetong` VALUES (15, '张三', '440411199208018201', '王五', '621022200312112711', '2021-08-05', '2021-08-07', 1212.00, '菊花园1-364', 'c3', 12);
INSERT INTO `hetong` VALUES (16, '张三', '440411199208018201', '王五', '621022200312112711', '2021-08-04', '2021-08-07', 9990.00, '人民路口', 'k8', 12);

-- ----------------------------
-- Table structure for houselist
-- ----------------------------
DROP TABLE IF EXISTS `houselist`;
CREATE TABLE `houselist`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `houseid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `area` double NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `houseid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of houselist
-- ----------------------------
INSERT INTO `houselist` VALUES (16, 'c3', '菊花园1-364', 60, 23.00, '已被申请');
INSERT INTO `houselist` VALUES (20, 'b5', '穗石村18号', 60, 8000.00, '已被申请');
INSERT INTO `houselist` VALUES (21, 'k8', '穗石村1号', 66, 800.00, '已租赁');

-- ----------------------------
-- Table structure for paid
-- ----------------------------
DROP TABLE IF EXISTS `paid`;
CREATE TABLE `paid`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `paydate` date NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paid
-- ----------------------------
INSERT INTO `paid` VALUES (5, 'c1', '广药1-364', 500.00, '2017-09-14', '2017-09-27', '赵颖欣', 10, '租金已缴');
INSERT INTO `paid` VALUES (6, 'c3', '菊花园1-364', 700.00, '2017-09-30', '2017-09-28', '李四', 12, '租金已缴');
INSERT INTO `paid` VALUES (7, 'c2', '碧桂园1-364', 4365.00, '2017-10-31', '2017-10-08', '张三', 14, '租金已缴');
INSERT INTO `paid` VALUES (8, 'k2', '贝岗街18号', 700.00, '2017-10-31', '2017-10-10', '张思', 15, '租金已缴');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES (2, '2017-09-08', '收数12');
INSERT INTO `schedule` VALUES (3, '2017-09-20', '今天是收租日');

-- ----------------------------
-- Table structure for solve
-- ----------------------------
DROP TABLE IF EXISTS `solve`;
CREATE TABLE `solve`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of solve
-- ----------------------------
INSERT INTO `solve` VALUES (4, 'c1', '广药1-364', '2017-09-08', 'kk', '赵颖欣', 10, '已处理');
INSERT INTO `solve` VALUES (6, 'c2', '碧桂园1-364', '2017-10-08', '窗户坏了', '张三', 14, '已处理');
INSERT INTO `solve` VALUES (7, 'k2', '贝岗街18号', '2017-10-10', '天花板漏水', '张思', 15, '已处理');

-- ----------------------------
-- Table structure for topaid
-- ----------------------------
DROP TABLE IF EXISTS `topaid`;
CREATE TABLE `topaid`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topaid
-- ----------------------------
INSERT INTO `topaid` VALUES (5, 'c3', '菊花园1-364', 8000.00, '2021-08-18', '李四', 12, '租金未缴');
INSERT INTO `topaid` VALUES (6, 'k8', '穗石村1号', 12.00, '2021-08-19', '李四', 12, '租金未缴');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', 'admin');
INSERT INTO `user` VALUES (2, 'user', '1111', 'zuke');
INSERT INTO `user` VALUES (3, 'zyx', '12345', 'zuke');
INSERT INTO `user` VALUES (5, 'cwy', '12345', 'zuke');

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`, `idcard`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES (11, 'user', '4202221999090921111', '187000038933', 2);
INSERT INTO `userlist` VALUES (12, '李四', '440421199509088888', '18826107777', 3);
INSERT INTO `userlist` VALUES (15, '张思', '441601199312214414', '159192134000', 5);

-- ----------------------------
-- Table structure for wrong
-- ----------------------------
DROP TABLE IF EXISTS `wrong`;
CREATE TABLE `wrong`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wrong
-- ----------------------------
INSERT INTO `wrong` VALUES (1, 'k2', '贝岗街18号', '2021-08-06', '天花板漏水', '张思', 15, '待处理');
INSERT INTO `wrong` VALUES (4, 'k8', '穗石村1号', '2021-08-11', '12', '李四', 12, '待处理');

-- ----------------------------
-- Table structure for zulist
-- ----------------------------
DROP TABLE IF EXISTS `zulist`;
CREATE TABLE `zulist`  (
  `zid` int NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double(10, 2) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userlist_id` int NOT NULL,
  `contract_id` int NOT NULL,
  PRIMARY KEY (`zid`, `house_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zulist
-- ----------------------------
INSERT INTO `zulist` VALUES (7, 'c3', 700.00, '菊花园1-364', 12, 5);
INSERT INTO `zulist` VALUES (10, 'k8', 23.00, '穗石村1号', 12, 16);

SET FOREIGN_KEY_CHECKS = 1;
