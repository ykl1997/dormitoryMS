/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : dormdb

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 09/07/2020 16:33:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_login
-- ----------------------------
DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gmt_created` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_login
-- ----------------------------
INSERT INTO `admin_login` VALUES (1, '8888000000', '8888000000', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (2, '8888000001', '8888000001', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (3, '8888000002', '8888000002', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (4, '8888000003', '8888000003', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (5, '8888000004', '8888000004', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (6, '8888000005', '8888000005', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (7, '8888000006', '8888000006', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (8, '8888000007', '8888000007', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (9, '8888000008', '8888000008', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (10, '8888000009', '8888000009', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (11, '8888000010', '8888000010', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (12, '8888000011', '8888000011', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (13, '8888000012', '8888000012', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (14, '8888000013', '8888000013', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (15, '8888000014', '8888000014', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (16, '8888000015', '8888000015', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (17, '8888000016', '8888000016', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (18, '8888000017', '8888000017', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (19, '8888000018', '8888000018', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `admin_login` VALUES (20, '8888000019', '8888000019', '2020-03-28 00:00:00', '2020-03-28 00:00:00');

-- ----------------------------
-- Table structure for build_info
-- ----------------------------
DROP TABLE IF EXISTS `build_info`;
CREATE TABLE `build_info`  (
  `build_id` int(11) NOT NULL AUTO_INCREMENT,
  `build_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `build_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`build_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of build_info
-- ----------------------------
INSERT INTO `build_info` VALUES (1, '01#', '男生宿舍');
INSERT INTO `build_info` VALUES (2, '02#', '男生宿舍');
INSERT INTO `build_info` VALUES (3, '03#', '女生宿舍');
INSERT INTO `build_info` VALUES (4, '04#', '女生宿舍');
INSERT INTO `build_info` VALUES (5, '05#', '女生宿舍');
INSERT INTO `build_info` VALUES (6, '06#', '男生宿舍');
INSERT INTO `build_info` VALUES (7, '07#', '男生宿舍');
INSERT INTO `build_info` VALUES (8, '08#', '男生宿舍');
INSERT INTO `build_info` VALUES (9, '09#', '女生宿舍');
INSERT INTO `build_info` VALUES (10, '10#', '男生宿舍');
INSERT INTO `build_info` VALUES (11, '11#', '女生宿舍');
INSERT INTO `build_info` VALUES (12, '12#', '女生宿舍');
INSERT INTO `build_info` VALUES (13, '13#', '男生宿舍');
INSERT INTO `build_info` VALUES (14, '14#', '男生宿舍');
INSERT INTO `build_info` VALUES (15, '15#', '男生宿舍');
INSERT INTO `build_info` VALUES (16, '16#', '男生宿舍');
INSERT INTO `build_info` VALUES (17, '17#', '女生宿舍');
INSERT INTO `build_info` VALUES (18, '18#', '男生宿舍');
INSERT INTO `build_info` VALUES (19, '19#', '男生宿舍');
INSERT INTO `build_info` VALUES (20, '20#', '女生宿舍');
INSERT INTO `build_info` VALUES (21, '21#', '男生宿舍');

-- ----------------------------
-- Table structure for dormitory
-- ----------------------------
DROP TABLE IF EXISTS `dormitory`;
CREATE TABLE `dormitory`  (
  `dormitory_id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sushez` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dormitory_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dormitory_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`dormitory_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 289 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dormitory
-- ----------------------------
INSERT INTO `dormitory` VALUES (217, '1', '毛欣', '四人寝', '301', '18979920069');
INSERT INTO `dormitory` VALUES (218, '1', '肖清华', '四人寝', '302', '15070853621');
INSERT INTO `dormitory` VALUES (219, '1', '符卓亮', '四人寝', '303', '18507013373');
INSERT INTO `dormitory` VALUES (220, '1', '徐齐齐', '四人寝', '304', '15070850032');
INSERT INTO `dormitory` VALUES (221, '1', '辛鄢放', '四人寝', '305', '18296897841');
INSERT INTO `dormitory` VALUES (222, '1', '孙寅杰', '四人寝', '306', '18797918106');
INSERT INTO `dormitory` VALUES (223, '1', '王欣怡', '四人寝', '307', '15879662874');
INSERT INTO `dormitory` VALUES (224, '1', '邓依依', '四人寝', '308', '18797812112');
INSERT INTO `dormitory` VALUES (225, '1', '纪嵚崟 ', '四人寝', '309', '13479558563');
INSERT INTO `dormitory` VALUES (226, '1', '潘乔峰', '四人寝', '310', '18702626739');
INSERT INTO `dormitory` VALUES (227, '1', '胡梦玲 ', '四人寝', '311', '18379141904');
INSERT INTO `dormitory` VALUES (228, '1', '刘轶鹏', '四人寝', '312', '15079434718');
INSERT INTO `dormitory` VALUES (229, '2', '王宏午', '四人寝', '301', '15679165047');
INSERT INTO `dormitory` VALUES (230, '2', '揭剑', '四人寝', '302', '18507063816');
INSERT INTO `dormitory` VALUES (231, '2', '徐子龙', '四人寝', '303', '13767023410');
INSERT INTO `dormitory` VALUES (232, '2', '柴世琪', '四人寝', '304', '18170562295');
INSERT INTO `dormitory` VALUES (233, '2', '叶颖文', '四人寝', '305', '18702505570');
INSERT INTO `dormitory` VALUES (234, '2', '言文俊', '四人寝', '306', '15279188661');
INSERT INTO `dormitory` VALUES (235, '2', '陆俊名 ', '四人寝', '307', '18702627215');
INSERT INTO `dormitory` VALUES (236, '2', '周启帆', '四人寝', '308', '15779672439');
INSERT INTO `dormitory` VALUES (237, '2', '郭咏梅', '四人寝', '309', '15779113459');
INSERT INTO `dormitory` VALUES (238, '2', '谭泽华', '四人寝', '310', '18702502145');
INSERT INTO `dormitory` VALUES (239, '2', '邓立', '四人寝', '311', '15179110533');
INSERT INTO `dormitory` VALUES (240, '2', '李佳', '四人寝', '312', '18770813193');
INSERT INTO `dormitory` VALUES (241, '3', '李诗椿', '四人寝', '301', '18797817156');
INSERT INTO `dormitory` VALUES (242, '3', '陈志明', '四人寝', '302', '15270914833');
INSERT INTO `dormitory` VALUES (243, '3', '王鑫', '四人寝', '303', '18720933583');
INSERT INTO `dormitory` VALUES (244, '3', '刘鑫', '四人寝', '304', '13667914165');
INSERT INTO `dormitory` VALUES (245, '3', '罗志成', '四人寝', '305', '13879173767');
INSERT INTO `dormitory` VALUES (246, '3', '王冲', '四人寝', '306', '13979925090');
INSERT INTO `dormitory` VALUES (247, '3', '王国雄', '四人寝', '307', '18720933031');
INSERT INTO `dormitory` VALUES (248, '3', '桑诚', '四人寝', '308', '18816405758');
INSERT INTO `dormitory` VALUES (249, '3', '袁国庆', '四人寝', '309', '18702629244');
INSERT INTO `dormitory` VALUES (250, '3', '吴萍', '四人寝', '310', '15297713360');
INSERT INTO `dormitory` VALUES (251, '3', '敖良', '四人寝', '311', '18797817807');
INSERT INTO `dormitory` VALUES (252, '3', '廖高兴', '四人寝', '312', '18797817918');
INSERT INTO `dormitory` VALUES (253, '4', '欧阳龙平', '四人寝', '301', '13047901290');
INSERT INTO `dormitory` VALUES (254, '4', '万程和', '四人寝', '302', '15779181368');
INSERT INTO `dormitory` VALUES (255, '4', '王丽凤', '四人寝', '303', '13177851656');
INSERT INTO `dormitory` VALUES (256, '4', '胡文星', '四人寝', '304', '18679651258');
INSERT INTO `dormitory` VALUES (257, '4', '万胜华', '四人寝', '305', '18770154903');
INSERT INTO `dormitory` VALUES (258, '4', '周衍琨', '四人寝', '306', '18797957415');
INSERT INTO `dormitory` VALUES (259, '4', '洪家伟', '四人寝', '307', '15070099896');
INSERT INTO `dormitory` VALUES (260, '4', '徐礼飞', '四人寝', '308', '18170058940');
INSERT INTO `dormitory` VALUES (261, '4', '谢章康', '四人寝', '309', '15270093171');
INSERT INTO `dormitory` VALUES (262, '4', '谢小波', '四人寝', '310', '18797816882');
INSERT INTO `dormitory` VALUES (263, '4', '刘义贤', '四人寝', '311', '13672219281');
INSERT INTO `dormitory` VALUES (264, '4', ' 宋子繁 ', '四人寝', '312', '13732999774');
INSERT INTO `dormitory` VALUES (265, '5', '胡师坤', '四人寝', '301', '18279159258');
INSERT INTO `dormitory` VALUES (266, '5', '张志刚', '四人寝', '302', '15870032939');
INSERT INTO `dormitory` VALUES (267, '5', '王军', '四人寝', '303', '18296164357');
INSERT INTO `dormitory` VALUES (268, '5', '陈贞颖', '四人寝', '304', '18070543661');
INSERT INTO `dormitory` VALUES (269, '5', '汪亦文', '四人寝', '305', '18279159423');
INSERT INTO `dormitory` VALUES (270, '5', '尹明', '四人寝', '306', '18720946098');
INSERT INTO `dormitory` VALUES (271, '5', '李勤', '四人寝', '307', '13247760867');
INSERT INTO `dormitory` VALUES (272, '5', ' 傅文杰', '四人寝', '308', '18296166009');
INSERT INTO `dormitory` VALUES (273, '5', '周易伟', '四人寝', '309', '15079037056');
INSERT INTO `dormitory` VALUES (274, '5', '艾佳明', '四人寝', '310', '18702629412');
INSERT INTO `dormitory` VALUES (275, '5', '吴革', '四人寝', '311', '18279196196');
INSERT INTO `dormitory` VALUES (276, '5', '胡文雍', '四人寝', '312', '18720932007');
INSERT INTO `dormitory` VALUES (277, '6', '郭继聪', '六人寝', '301', '15070093523');
INSERT INTO `dormitory` VALUES (278, '6', '廖鑫明', '六人寝', '302', '13307089590');
INSERT INTO `dormitory` VALUES (279, '6', '刘帅', '六人寝', '303', '13876986321');
INSERT INTO `dormitory` VALUES (280, '6', '汤启华', '六人寝', '304', '15279182182');
INSERT INTO `dormitory` VALUES (281, '6', '徐畅', '六人寝', '305', '18702502528');
INSERT INTO `dormitory` VALUES (282, '6', '刘啸可', '六人寝', '306', '18879209391');
INSERT INTO `dormitory` VALUES (283, '6', '万云锋', '六人寝', '307', '18279159421');
INSERT INTO `dormitory` VALUES (284, '6', '宋玉成', '六人寝', '308', '18870915750');
INSERT INTO `dormitory` VALUES (285, '6', '李雯慧', '六人寝', '309', '15170790932');
INSERT INTO `dormitory` VALUES (286, '6', '彭普原', '六人寝', '310', '18296169424');
INSERT INTO `dormitory` VALUES (287, '6', '赵丹晟宇', '六人寝', '311', '18702626790');
INSERT INTO `dormitory` VALUES (288, '6', '王好燚鹰', '六人寝', '312', '18702505196');

-- ----------------------------
-- Table structure for forget_recording
-- ----------------------------
DROP TABLE IF EXISTS `forget_recording`;
CREATE TABLE `forget_recording`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recorder_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `build` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `record_date` date DEFAULT NULL,
  `record_time` time DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of forget_recording
-- ----------------------------
INSERT INTO `forget_recording` VALUES (1, '毛欣', '16#', '301', '2020-04-02', '11:50:40', '13344054635');
INSERT INTO `forget_recording` VALUES (2, '肖清华', '16#', '302', '2020-04-02', '11:50:45', '13344054636');
INSERT INTO `forget_recording` VALUES (3, '符卓亮', '16#', '303', '2020-04-02', '11:50:48', '13344054637');
INSERT INTO `forget_recording` VALUES (4, '徐齐齐', '16#', '304', '2020-04-02', '11:50:50', '13344054638');
INSERT INTO `forget_recording` VALUES (5, '辛鄢放', '20#', '305', '2020-04-02', '11:50:52', '13344054639');
INSERT INTO `forget_recording` VALUES (6, '孙寅杰', '16#', '306', '2020-04-02', '11:50:54', '13344054640');
INSERT INTO `forget_recording` VALUES (7, '王欣怡', '20#', '307', '2020-04-02', '11:51:05', '13344054641');
INSERT INTO `forget_recording` VALUES (8, '邓依依', '20#', '308', '2020-04-02', '11:51:06', '13344054642');
INSERT INTO `forget_recording` VALUES (9, '纪嵚崟 ', '16#', '309', '2020-04-02', '11:51:08', '13344054643');
INSERT INTO `forget_recording` VALUES (10, '潘乔峰', '16#', '310', '2020-04-02', '11:51:12', '13344054644');
INSERT INTO `forget_recording` VALUES (11, '胡梦玲 ', '20#', '311', '2020-04-02', '11:51:09', '13344054645');
INSERT INTO `forget_recording` VALUES (12, '刘轶鹏', '16#', '312', '2020-04-02', '11:51:14', '13344054646');
INSERT INTO `forget_recording` VALUES (13, '王宏午', '16#', '301', '2020-04-02', '11:51:15', '13344054647');
INSERT INTO `forget_recording` VALUES (14, '揭剑', '16#', '302', '2020-04-02', '11:51:19', '13344054648');
INSERT INTO `forget_recording` VALUES (15, '徐子龙', '16#', '303', '2020-04-02', '11:51:22', '13344054649');
INSERT INTO `forget_recording` VALUES (16, '柴世琪', '16#', '304', '2020-04-02', '11:51:24', '13344054650');
INSERT INTO `forget_recording` VALUES (17, '叶颖文', '20#', '305', '2020-04-02', '11:51:26', '13344054651');
INSERT INTO `forget_recording` VALUES (18, '言文俊', '16#', '306', '2020-04-02', '11:51:30', '13344054652');
INSERT INTO `forget_recording` VALUES (19, '陆俊名 ', '16#', '307', '2020-04-02', '11:51:32', '13344054653');
INSERT INTO `forget_recording` VALUES (20, '周启帆', '16#', '308', '2020-04-02', '11:51:35', '13344054654');
INSERT INTO `forget_recording` VALUES (21, '郭咏梅', '16#', '309', '2020-04-02', '11:51:37', '13344054655');
INSERT INTO `forget_recording` VALUES (22, '谭泽华', '16#', '310', '2020-04-02', '11:51:39', '13344054656');
INSERT INTO `forget_recording` VALUES (23, '邓立', '16#', '311', '2020-04-02', '11:51:41', '13344054657');
INSERT INTO `forget_recording` VALUES (24, '李佳', '16#', '312', '2020-04-02', '11:51:43', '13344054658');
INSERT INTO `forget_recording` VALUES (25, '李诗椿', '20#', '313', '2020-04-02', '11:51:45', '13344054659');
INSERT INTO `forget_recording` VALUES (26, '朱润秋 ', '16#', '303', '2020-06-25', '15:38:42', '123256987456');
INSERT INTO `forget_recording` VALUES (27, '朱润秋 ', '16#', '303', '2020-06-25', '15:39:36', '123256987456');
INSERT INTO `forget_recording` VALUES (28, '朱润秋 ', '16#', '303', '2020-06-25', '15:43:18', '123256987456');
INSERT INTO `forget_recording` VALUES (29, '朱润秋 ', '16#', '303', '2020-06-25', '15:43:22', '123256987456');
INSERT INTO `forget_recording` VALUES (30, '朱润秋 ', '16#', '303', '2020-06-25', '15:43:25', '123256987456');

-- ----------------------------
-- Table structure for repair_record
-- ----------------------------
DROP TABLE IF EXISTS `repair_record`;
CREATE TABLE `repair_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `build` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `from_repair_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `repair_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `from_repair_time` date DEFAULT NULL,
  `to_repair_time` date DEFAULT NULL,
  `repair_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of repair_record
-- ----------------------------
INSERT INTO `repair_record` VALUES (1, '16#', '301', '王灵鑫 ', '水龙头坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (2, '16#', '302', '娄洋 ', '水龙头坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (3, '16#', '303', '赵阳 ', '水龙头坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (4, '16#', '304', '颜名堂 ', '水龙头坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (5, '16#', '305', '熊学理 ', '水龙头坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (6, '16#', '306', '龚智强 ', '水龙头坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (7, '16#', '307', '李志龙 ', '水龙头坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (8, '16#', '308', '喻雪葵 ', '水龙头坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (9, '16#', '309', '李煜 ', '水龙头坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (10, '16#', '310', '张千通 ', '水龙头坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (11, '16#', '311', '郭章琼 ', '水龙头坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (12, '16#', '312', '杨德志 ', '水龙头坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (13, '16#', '313', '吴宇健 ', '空调坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (14, '16#', '314', '宋宇 ', '空调坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (15, '16#', '315', '赖碧瑞 ', '空调坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (16, '16#', '316', '欧阳强 ', '空调坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (17, '16#', '317', '刘德煌 ', '空调坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (18, '16#', '318', '朱润秋 ', '空调坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (19, '20#', '301', '彭嘉成 ', '空调坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (20, '20#', '302', '彭彬 ', '空调坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (21, '20#', '303', '欧阳辉 ', '空调坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (22, '20#', '304', '姚典 ', '空调坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (23, '20#', '305', '甘宏 ', '空调坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (24, '20#', '306', '王乐飞 ', '门坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (25, '20#', '307', '叶皓杰 ', '门坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (26, '20#', '308', '柳雄 ', '门坏了', '2020-04-03', '2020-04-04', '已修');
INSERT INTO `repair_record` VALUES (27, '20#', '309', '蒋子良 ', '门坏了', '2020-04-03', '2020-04-04', '未修');
INSERT INTO `repair_record` VALUES (28, '20#', '310', '熊学理 ', '门坏了', '2020-04-03', '2020-04-04', '已修');

-- ----------------------------
-- Table structure for student_health
-- ----------------------------
DROP TABLE IF EXISTS `student_health`;
CREATE TABLE `student_health`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `build` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `body_temperature` double(3, 1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `body_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_health
-- ----------------------------
INSERT INTO `student_health` VALUES (1, '2017211001000701', '王灵鑫 ', '2017软件工程1班', '20#', '301', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (2, '2017211001000702', '娄洋 ', '2017软件工程1班', '20#', '301', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (3, '2017211001000703', '赵阳 ', '2017软件工程1班', '20#', '301', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (4, '2017211001000704', '颜名堂 ', '2017软件工程1班', '20#', '301', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (5, '2017211001000705', '熊学理 ', '2017软件工程1班', '20#', '301', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (6, '2017211001000706', '龚智强 ', '2017软件工程1班', '20#', '301', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (7, '2017211001000708', '李志龙 ', '2017软件工程1班', '20#', '302', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (8, '2017211001000709', '喻雪葵 ', '2017软件工程1班', '20#', '302', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (9, '2017211001000710', '李煜 ', '2017软件工程1班', '20#', '302', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (10, '2017211001000711', '张千通 ', '2017软件工程1班', '20#', '302', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (11, '2017211001000712', '郭章琼 ', '2017软件工程1班', '20#', '302', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (12, '2017211001000713', '杨德志 ', '2017软件工程1班', '20#', '302', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (13, '2017211001000714', '吴宇健 ', '2017软件工程1班', '20#', '303', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (14, '2017211001000715', '宋宇 ', '2017软件工程1班', '20#', '303', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (15, '2017211001000716', '赖碧瑞 ', '2017软件工程1班', '20#', '303', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (16, '2017211001000717', '欧阳强 ', '2017软件工程1班', '20#', '303', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (17, '2017211001000718', '刘德煌 ', '2017软件工程1班', '20#', '303', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (18, '2017211001000719', '朱润秋 ', '2017软件工程1班', '20#', '303', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (19, '2017211001000720', '彭嘉成 ', '2017软件工程1班', '20#', '304', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (20, '2017211001000721', '彭彬 ', '2017软件工程1班', '20#', '304', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (21, '2017211001000722', '欧阳辉 ', '2017软件工程1班', '20#', '304', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (22, '2017211001000723', '姚典 ', '2017软件工程1班', '20#', '304', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (23, '2017211001000724', '甘宏 ', '2017软件工程1班', '20#', '304', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (24, '2017211001000725', '王乐飞 ', '2017软件工程1班', '20#', '304', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (25, '2017211001000726', '叶皓杰 ', '2017软件工程1班', '20#', '305', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (26, '2017211001000727', '柳雄 ', '2017软件工程1班', '20#', '305', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (27, '2017211001000728', '蒋子良 ', '2017软件工程1班', '20#', '305', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (28, '2017211001000729', '蒋俊豪 ', '2017软件工程1班', '20#', '305', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (29, '2017211001000730', '肖昀 ', '2017软件工程1班', '20#', '305', 36.8, '2020-04-03 12:56:41', '正常');
INSERT INTO `student_health` VALUES (30, '2017211001000731', '刘昊杨 ', '2017软件工程1班', '20#', '305', 36.8, '2020-04-03 12:56:41', '正常');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `build` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `room` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gmt_created` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `sno`(`sno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES (9, '2017211001000710', '李煜 ', '男 ', '2017软件工程1班', '13359653431', '16#', '302', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (10, '2017211001000711', '张千通 ', '男', '2017软件工程1班', '13659653432', '16#', '302', '入住', '2020-03-31 00:00:00', '2020-04-16 00:01:08');
INSERT INTO `student_info` VALUES (11, '2017211001000712', '郭章琼 ', '男 ', '2017软件工程1班', '13659653433', '16#', '302', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (13, '2017211001000714', '吴宇健 ', '男 ', '2017软件工程1班', '13659653435', '16#', '303', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (15, '2017211001000716', '赖碧瑞 ', '男 ', '2017软件工程1班', '13359853437', '16#', '303', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (16, '2017211001000717', '欧阳强 ', '男 ', '2017软件工程1班', '17659653438', '16#', '303', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (17, '2017211001000718', '刘德煌 ', '男 ', '2017软件工程1班', '13659653439', '16#', '303', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (18, '2017211001000719', '朱润秋 ', '男 ', '2017软件工程1班', '13659653440', '16#', '303', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (19, '2017211001000720', '彭嘉成 ', '男 ', '2017软件工程1班', '15659653441', '16#', '304', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (21, '2017211001000722', '欧阳辉 ', '男 ', '2017软件工程1班', '13659653443', '16#', '304', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (22, '2017211001000723', '姚典 ', '男 ', '2017软件工程1班', '13659653444', '16#', '304', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (23, '2017211001000724', '甘宏 ', '男 ', '2017软件工程1班', '17659653445', '16#', '304', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (24, '2017211001000725', '王乐飞 ', '男 ', '2017软件工程1班', '13659653446', '16#', '304', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (25, '2017211001000726', '叶皓杰 ', '男 ', '2017软件工程1班', '18659653447', '16#', '305', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (26, '2017211001000727', '柳雄 ', '男 ', '2017软件工程1班', '13659653448', '16#', '305', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (27, '2017211001000728', '蒋子良 ', '男 ', '2017软件工程1班', '13659653449', '16#', '305', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (28, '2017211001000729', '蒋俊豪 ', '男 ', '2017软件工程1班', '13659653450', '16#', '305', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (29, '2017211001000730', '肖昀 ', '男 ', '2017软件工程1班', '13659653451', '16#', '305', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (30, '2017211001000731', '刘昊杨 ', '男 ', '2017软件工程1班', '13659653452', '16#', '305', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (31, '2017211001000732', '谢青保', '男 ', '2017软件工程1班', '13659653453', '16#', '306', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (33, '2017211001000801', '廖宝斌', '男 ', '2017软件工程2班', '13659653455', '16#', '306', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (34, '2017211001000802', '周理吉', '男 ', '2017软件工程2班', '18659653456', '16#', '306', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (35, '2017211001000803', '熊家友', '男 ', '2017软件工程2班', '13659653457', '16#', '306', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (36, '2017211001000804', '邓曦颖 ', '女 ', '2017软件工程2班', '13659653458', '20#', '406', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (37, '2017211001000805', '朱毓情 ', '女 ', '2017软件工程2班', '13659653459', '20#', '406', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (38, '2017211001000806', '周航 ', '男 ', '2017软件工程2班', '13659653460', '16#', '306', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (39, '2017211001000807', '李岳强 ', '男 ', '2017软件工程2班', '13659653461', '16#', '307', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (40, '2017211001000808', '崔健 ', '男 ', '2017软件工程2班', '13659653462', '16#', '307', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (41, '2017211001000809', '尚龙翔 ', '男 ', '2017软件工程2班', '13659653463', '16#', '307', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (42, '2017211001000810', '夏江南 ', '男 ', '2017软件工程2班', '13659653464', '16#', '307', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (43, '2017211001000811', '贺振翔 ', '男 ', '2017软件工程2班', '13659653465', '16#', '307', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (44, '2017211001000812', '舒杰 ', '男 ', '2017软件工程2班', '13659653466', '16#', '307', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (45, '2017211001000813', '万亮 ', '男 ', '2017软件工程2班', '13659653467', '16#', '308', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (46, '2017211001000814', '胡琤 ', '男 ', '2017软件工程2班', '13659653468', '16#', '308', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (47, '2017211001000815', '郑志强 ', '男 ', '2017软件工程2班', '13659653469', '16#', '308', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (48, '2017211001000816', '潘江祚 ', '男 ', '2017软件工程2班', '13659653470', '16#', '308', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (49, '2017211001000817', '胡生东 ', '男 ', '2017软件工程2班', '13659653471', '16#', '308', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (50, '2017211001000818', '袁松 ', '男 ', '2017软件工程2班', '13659653472', '16#', '308', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (51, '2017211001000819', '彭宗智 ', '男 ', '2017软件工程2班', '13659653473', '16#', '309', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (52, '2017211001000820', '谢思军 ', '男 ', '2017软件工程2班', '13659653474', '16#', '309', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (53, '2017211001000821', '周建明 ', '男 ', '2017软件工程2班', '13659653475', '16#', '309', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (54, '2017211001000822', '梁乐 ', '男 ', '2017软件工程2班', '13659653476', '16#', '309', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (55, '2017211001000823', '陈起昌 ', '男 ', '2017软件工程2班', '13659653477', '16#', '309', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (56, '2017211001000824', '郑金任 ', '男 ', '2017软件工程2班', '13659653478', '16#', '309', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (57, '2017211001000825', '朱小明 ', '男 ', '2017软件工程2班', '13659653479', '16#', '310', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (58, '2017211001000826', '陈宪周 ', '男 ', '2017软件工程2班', '13659653480', '16#', '310', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (59, '2017211001000827', '周俊豪 ', '男 ', '2017软件工程2班', '13659653481', '16#', '310', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (60, '2017211001000828', '程博文 ', '男 ', '2017软件工程2班', '13659653482', '16#', '310', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (61, '2017211001000829', '王海 ', '男 ', '2017软件工程2班', '13659653483', '16#', '310', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (62, '2017211001000830', '闫文铠 ', '男 ', '2017软件工程2班', '13659653484', '16#', '310', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (63, '2017211001000831', '邬鸣 ', '男 ', '2017软件工程2班', '13659653485', '16#', '311', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (64, '2017211001000832', '梁吉尧 ', '男 ', '2017软件工程3班', '13659653486', '16#', '311', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (65, '2017211001000833', '张怡辉', '男', '2017软件工程3班', '13659653487', '20#', '311', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (66, '2017211001000901', '李金辉', '男 ', '2017软件工程3班', '13659653488', '16#', '311', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (67, '2017211001000902', '许耕硕 ', '男 ', '2017软件工程3班', '13659653489', '16#', '311', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (68, '2017211001000903', '邵立三', '男', '2017软件工程3班', '13659653490', '20#', '311', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (69, '2017211001000904', '戴泽韵', '男', '2017软件工程3班', '13659653491', '20#', '312', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (70, '2017211001000905', '晏澍瑞', '男 ', '2017软件工程3班', '13659653492', '16#', '312', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (72, '2017211001000907', '吴迎迎 ', '女 ', '2017软件工程3班', '13659653494', '20#', '406', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (73, '2017211001000908', '叶珍珍 ', '女 ', '2017软件工程3班', '13659653495', '20#', '406', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (74, '2017211001000909', '陈清梅 ', '女 ', '2017软件工程3班', '13659653496', '20#', '406', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (75, '2017211001000910', '朱静怡 ', '女 ', '2017软件工程3班', '13659653497', '20#', '406', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (76, '2017211001000911', '马玉 ', '男 ', '2017软件工程3班', '13659653498', '16#', '312', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (77, '2017211001000912', '冯金兴 ', '男 ', '2017软件工程3班', '13659653499', '16#', '312', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (78, '2017211001000913', '汤仲训 ', '男 ', '2017软件工程3班', '13659653500', '16#', '312', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (79, '2017211001000914', '朱煜铭 ', '男 ', '2017软件工程3班', '13659653501', '16#', '313', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (81, '2017211001000916', '徐涛 ', '男 ', '2017软件工程3班', '13659653503', '16#', '313', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (82, '2017211001000917', '徐骏铎 ', '男 ', '2017软件工程3班', '13659653504', '16#', '313', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (83, '2017211001000918', '裘艺 ', '男 ', '2017软件工程3班', '13659653505', '16#', '313', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (84, '2017211001000919', '吴天乐 ', '男 ', '2017软件工程3班', '13659653506', '16#', '313', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (85, '2017211001000920', '万尚俊 ', '男 ', '2017软件工程3班', '13659653507', '16#', '314', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (86, '2017211001000921', '周裕 ', '男 ', '2017软件工程3班', '13659653508', '16#', '314', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (87, '2017211001000922', '柯璋 ', '男 ', '2017软件工程3班', '13659653509', '16#', '314', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (88, '2017211001000923', '蓝天飞 ', '男 ', '2017软件工程3班', '13659653510', '16#', '314', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (89, '2017211001000924', '刘生林 ', '男 ', '2017软件工程3班', '13659653511', '16#', '314', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (90, '2017211001000925', '聂自立 ', '男 ', '2017软件工程3班', '13659653512', '16#', '314', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (91, '2017211001000926', '龙齐明 ', '男 ', '2017软件工程3班', '13659653513', '16#', '315', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (92, '2017211001000927', '罗顺龙 ', '男 ', '2017软件工程3班', '13659653514', '16#', '315', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (93, '2017211001000928', '易芳 ', '男 ', '2017软件工程3班', '13659653515', '16#', '315', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (94, '2017211001000929', '林佳剑 ', '男 ', '2017软件工程3班', '13659653516', '16#', '315', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (95, '2017211001000930', '李志雄 ', '男 ', '2017软件工程3班', '13659653517', '16#', '315', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (96, '2017211001000931', '金谱 ', '男 ', '2017软件工程3班', '13659653518', '16#', '316', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (97, '2017211001000933', '邹鹿鹿 ', '男 ', '2017软件工程4班', '15659653519', '16#', '316', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (98, '2017211001001001', '雷鸣宇 ', '男 ', '2017软件工程4班', '13659653520', '16#', '316', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (99, '2017211001001002', '汤归华 ', '男 ', '2017软件工程4班', '13659653521', '16#', '316', '入住', '2020-03-31 00:00:00', '2020-03-31 00:00:00');
INSERT INTO `student_info` VALUES (100, '2017211001001003', '郑鸿翔 ', '男 ', '2017软件工程4班', '15659653522', '16#', '316', '迁出', '2020-03-31 00:00:00', '2020-03-31 00:00:00');

-- ----------------------------
-- Table structure for student_login
-- ----------------------------
DROP TABLE IF EXISTS `student_login`;
CREATE TABLE `student_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gmt_created` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_login
-- ----------------------------
INSERT INTO `student_login` VALUES (1, '2017211001000701', '123456', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (2, '2017211001000702', '2017211001000702', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (3, '2017211001000703', '2017211001000703', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (4, '2017211001000704', '2017211001000704', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (5, '2017211001000705', '2017211001000705', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (6, '2017211001000706', '2017211001000706', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (7, '2017211001000708', '2017211001000708', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (8, '2017211001000709', '2017211001000709', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (9, '2017211001000710', '2017211001000710', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (10, '2017211001000711', '2017211001000711', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (11, '2017211001000712', '2017211001000712', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (12, '2017211001000713', '2017211001000713', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (13, '2017211001000714', '2017211001000714', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (14, '2017211001000715', '2017211001000715', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (15, '2017211001000716', '2017211001000716', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (16, '2017211001000717', '2017211001000717', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (17, '2017211001000718', '2017211001000718', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (18, '2017211001000719', '2017211001000719', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (19, '2017211001000720', '2017211001000720', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (20, '2017211001000721', '2017211001000721', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (21, '2017211001000722', '2017211001000722', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (22, '2017211001000723', '2017211001000723', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (23, '2017211001000724', '2017211001000724', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (24, '2017211001000725', '2017211001000725', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (25, '2017211001000726', '2017211001000726', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (26, '2017211001000727', '2017211001000727', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (27, '2017211001000728', '2017211001000728', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (28, '2017211001000729', '2017211001000729', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (29, '2017211001000730', '2017211001000730', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (30, '2017211001000731', '2017211001000731', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (31, '2017211001000732', '2017211001000732', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (32, '2017211001000733', '2017211001000733', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (33, '2017211001000801', '2017211001000801', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (34, '2017211001000802', '2017211001000802', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (35, '2017211001000803', '2017211001000803', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (36, '2017211001000804', '2017211001000804', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (37, '2017211001000805', '2017211001000805', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (38, '2017211001000806', '2017211001000806', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (39, '2017211001000807', '2017211001000807', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (40, '2017211001000808', '2017211001000808', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (41, '2017211001000809', '2017211001000809', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (42, '2017211001000810', '2017211001000810', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (43, '2017211001000811', '2017211001000811', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (44, '2017211001000812', '2017211001000812', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (45, '2017211001000813', '2017211001000813', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (46, '2017211001000814', '2017211001000814', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (47, '2017211001000815', '2017211001000815', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (48, '2017211001000816', '2017211001000816', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (49, '2017211001000817', '2017211001000817', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (50, '2017211001000818', '2017211001000818', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (51, '2017211001000819', '2017211001000819', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (52, '2017211001000820', '2017211001000820', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (53, '2017211001000821', '2017211001000821', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (54, '2017211001000822', '2017211001000822', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (55, '2017211001000823', '2017211001000823', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (56, '2017211001000824', '2017211001000824', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (57, '2017211001000825', '2017211001000825', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (58, '2017211001000826', '2017211001000826', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (59, '2017211001000827', '2017211001000827', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (60, '2017211001000828', '2017211001000828', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (61, '2017211001000829', '2017211001000829', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (62, '2017211001000830', '2017211001000830', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (63, '2017211001000831', '2017211001000831', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (64, '2017211001000832', '2017211001000832', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (65, '2017211001000833', '2017211001000833', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (66, '2017211001000901', '2017211001000901', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (67, '2017211001000902', '2017211001000902', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (68, '2017211001000903', '2017211001000903', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (69, '2017211001000904', '2017211001000904', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (70, '2017211001000905', '2017211001000905', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (71, '2017211001000906', '2017211001000906', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (72, '2017211001000907', '2017211001000907', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (73, '2017211001000908', '2017211001000908', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (74, '2017211001000909', '2017211001000909', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (75, '2017211001000910', '2017211001000910', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (76, '2017211001000911', '2017211001000911', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (77, '2017211001000912', '2017211001000912', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (78, '2017211001000913', '2017211001000913', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (79, '2017211001000914', '2017211001000914', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (80, '2017211001000915', '2017211001000915', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (81, '2017211001000916', '2017211001000916', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (82, '2017211001000917', '2017211001000917', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (83, '2017211001000918', '2017211001000918', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (84, '2017211001000919', '2017211001000919', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (85, '2017211001000920', '2017211001000920', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (86, '2017211001000921', '2017211001000921', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (87, '2017211001000922', '2017211001000922', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (88, '2017211001000923', '2017211001000923', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (89, '2017211001000924', '2017211001000924', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (90, '2017211001000925', '2017211001000925', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (91, '2017211001000926', '2017211001000926', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (92, '2017211001000927', '2017211001000927', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (93, '2017211001000928', '2017211001000928', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (94, '2017211001000929', '2017211001000929', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (95, '2017211001000930', '2017211001000930', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (96, '2017211001000931', '2017211001000931', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (97, '2017211001000933', '2017211001000933', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (98, '2017211001001001', '2017211001001001', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (99, '2017211001001002', '2017211001001002', '2020-03-28 00:00:00', '2020-03-28 00:00:00');
INSERT INTO `student_login` VALUES (100, '2017211001001003', '2017211001001003', '2020-03-28 00:00:00', '2020-03-28 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
