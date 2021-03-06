/*
MySQL Data Transfer
Source Host: localhost
Source Database: sms
Target Host: localhost
Target Database: sms
Date: 2013/10/18 10:38:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sms_send
-- ----------------------------
DROP TABLE IF EXISTS `sms_send`;
CREATE TABLE `sms_send` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `message_body` varchar(4000) NOT NULL,
  `receiverphone` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sms_sent
-- ----------------------------
DROP TABLE IF EXISTS `sms_sent`;
CREATE TABLE `sms_sent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message_body` varchar(4000) NOT NULL,
  `receiverphone` varchar(255) NOT NULL,
  `createtime` datetime NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `sms_send` VALUES ('91', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('92', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('93', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('94', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('95', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('96', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有24天', '13121829903', '未发送', '一天');
INSERT INTO `sms_send` VALUES ('97', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-10-08,离上一次润滑有7天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('98', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-10-08,离上一次润滑有7天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('99', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-10-08,离上一次润滑有7天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('100', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-10-08,离上一次润滑有7天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('101', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-10-08,离上一次润滑有7天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('102', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-10-08,离上一次的润滑有7天', '13121829903', '未发送', '一天');
INSERT INTO `sms_send` VALUES ('103', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-08,离上一次润滑有37天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('104', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-08,离上一次润滑有37天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('105', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-08,离上一次润滑有37天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('106', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-08,离上一次润滑有37天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('107', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-08,离上一次润滑有37天', '13121829903', '未发送', '一周');
INSERT INTO `sms_send` VALUES ('108', '您的设备需要润滑了', '0', '2013-10-15 00:00:00', '超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-08,离上一次的润滑有37天', '13121829903', '未发送', '一天');
INSERT INTO `sms_sent` VALUES ('82', '您好!您的设备需要润滑了', '具体的需要润滑的项为:变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有5天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有5天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有5天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有5天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有5天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有5天.', '13121829903', '2013-09-26 00:00:00', '0');
INSERT INTO `sms_sent` VALUES ('83', '您好!您的设备需要润滑了', '具体的需要润滑的项为:变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.', '13121829903', '2013-10-14 00:00:00', '0');
INSERT INTO `sms_sent` VALUES ('84', '您好!您的设备需要润滑了', '具体的需要润滑的项为:变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.', '13121829903', '2013-10-14 00:00:00', '0');
INSERT INTO `sms_sent` VALUES ('85', '您好!您的设备需要润滑了', '具体的需要润滑的项为:变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.', '13121829903', '2013-10-14 00:00:00', '0');
INSERT INTO `sms_sent` VALUES ('86', '您好!您的设备需要润滑了', '具体的需要润滑的项为:变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.', '13121829903', '2013-10-14 00:00:00', '0');
INSERT INTO `sms_sent` VALUES ('87', '您好!您的设备需要润滑了', '具体的需要润滑的项为:变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.', '13121829903', '2013-10-14 00:00:00', '0');
INSERT INTO `sms_sent` VALUES ('88', '您好!您的设备需要润滑了', '具体的需要润滑的项为:变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有23天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有23天.', '13121829903', '2013-10-14 00:00:00', '0');
INSERT INTO `sms_sent` VALUES ('89', '您好!您的设备需要润滑了', '具体的需要润滑的项为:变幅、起升减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天.行走减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天.旋转行星减速箱,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天.起升、变幅及行走液压推杆油泵,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天.行走制动器杠杆铰点,润滑周期:一周,上一次润滑的时间为:2013-09-21,离上一次润滑有24天.超负荷限制器杠杆,润滑周期为:一天,上一次润滑的时间为:2013-09-21,离上一次的润滑有24天.', '13121829903', '2013-10-15 00:00:00', '0');
