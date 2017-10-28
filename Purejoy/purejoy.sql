/*
Navicat MySQL Data Transfer

Source Server         : zcy
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : purejoy

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2017-10-28 16:40:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(32) NOT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` varchar(30) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '【撕裂者鸡胸肉+7天速瘦营】吃到嗨翻，瘦成闪电！', 'articles/img1.png', 'articles/article1.html');
INSERT INTO `articles` VALUES ('2', '【情人节专题】你的礼物已上线', 'articles/img2.gif', 'articles/article2.html');
INSERT INTO `articles` VALUES ('3', '减肥的你，却还没用过「它」？终于明白你的问题出在哪里！', 'articles/img3.jpeg', 'articles/article3.html');
INSERT INTO `articles` VALUES ('4', 'BRM 无添加进口燕麦系列 | 纯悦生活推荐', 'articles/img4.jpeg', 'articles/article4.html');
INSERT INTO `articles` VALUES ('5', '腹愁蛋白月饼 | 听说有一款月饼：美味、低脂、高颜值', 'articles/img5.jpg', 'articles/article5.html');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `calories` double DEFAULT NULL,
  `protein` double DEFAULT NULL,
  `fat` double DEFAULT NULL,
  `carbohydrate` double DEFAULT NULL,
  `heating_time` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1001', '三文鱼沙拉', '288.05', '10.07', '10.6', '36.64', '0');
INSERT INTO `food` VALUES ('1002', '鸡胸橙子沙拉', '311.02', '24.12', '11.16', '28.54', '0');
INSERT INTO `food` VALUES ('1003', '主厨沙拉', '297.94', '30.32', '8.4', '23.57', '0');
INSERT INTO `food` VALUES ('1004', '牛排沙拉', '336.15', '34.31', '14.51', '16.53', '0');
INSERT INTO `food` VALUES ('1005', '鸡胸三明治', '361.05', '28.88', '8.4', '39.24', '1');
INSERT INTO `food` VALUES ('1006', '彩虹科布沙拉', '360.9', '34.8', '16.2', '18.29', '0');
INSERT INTO `food` VALUES ('1007', '彩色螺丝面沙拉', '365.45', '11.2', '6.46', '62.54', '2');
INSERT INTO `food` VALUES ('1008', '金枪鱼三明治', '358.8', '28.68', '2.3', '41.3', '1');
INSERT INTO `food` VALUES ('1009', '蘑菇沙拉', '354.6', '19.4', '10.01', '46.37', '0');
INSERT INTO `food` VALUES ('1010', '牛肉蘑菇塔可饼', '523.93', '35.98', '14.79', '58.18', '2');
INSERT INTO `food` VALUES ('2001', '龙利鱼配薏米与南瓜', '506.4', '50.19', '14.25', '43.28', '2');
INSERT INTO `food` VALUES ('2002', '煎鲷鱼菠菜配土豆泥', '467.8', '44.95', '11.37', '38.3', '2');
INSERT INTO `food` VALUES ('2003', '法式白烩牛肉', '487.2', '37.32', '27.22', '19.92', '3');
INSERT INTO `food` VALUES ('2004', '鸡胸配蘑菇与糙米饭', '503.5', '48.76', '13.67', '41.75', '3');
INSERT INTO `food` VALUES ('2005', '菠菜鱼圆配豆饭', '530.6', '56.69', '15.66', '37.84', '2');
INSERT INTO `food` VALUES ('2006', '煎龙利鱼配紫甘蓝与土豆', '466.74', '49', '13.45', '33.24', '2');
INSERT INTO `food` VALUES ('2007', '牛肉配煮蔬菜与土豆泥', '478.5', '53.05', '11.43', '36.06', '2');
INSERT INTO `food` VALUES ('2008', '鸡腿肉煮蔬菜糙米饭', '443.95', '31.09', '25.85', '19.38', '3');
INSERT INTO `food` VALUES ('2009', '墨西哥鱼卷', '564.6', '44.13', '16.97', '54.38', '2');
INSERT INTO `food` VALUES ('2010', '鸡腿肉配蜜豆与玉米', '466.4', '34.52', '21.64', '27.47', '3');
INSERT INTO `food` VALUES ('3001', '虾仁蘑菇煎土豆块', '403.4', '27.2', '13.79', '39.65', '2');
INSERT INTO `food` VALUES ('3002', '鸡胸配薏米沙拉', '437.9', '40.22', '11.16', '42.01', '3');
INSERT INTO `food` VALUES ('3003', '龙利鱼配沙拉与通心粉', '414.1', '40.52', '11.17', '36.61', '2');
INSERT INTO `food` VALUES ('3004', '煎鲷鱼西葫芦玉米段', '403.45', '43.31', '7.14', '37.57', '2');
INSERT INTO `food` VALUES ('3005', '苹果薏米配沙拉', '353.7', '9.91', '2.83', '70.45', '2');
INSERT INTO `food` VALUES ('3006', '鸡胸配鹰嘴豆与紫薯泥', '432', '45.82', '11.46', '37.4', '3');
INSERT INTO `food` VALUES ('3007', '鸡胸配苹果豆饭', '390', '38.38', '10.15', '33.75', '3');
INSERT INTO `food` VALUES ('3008', '地中海龙利鱼', '415.6', '41.62', '11.71', '33.48', '2');
INSERT INTO `food` VALUES ('3009', '鸡胸配蘑菇与南瓜', '344.4', '44.76', '10.94', '16', '3');
INSERT INTO `food` VALUES ('3010', '煎鲷鱼配煮蔬菜与糙米饭', '342.9', '44.03', '6.69', '23.86', '2');
INSERT INTO `food` VALUES ('4001', '紫薯泥配盐焗大杏仁', '284.8', '7.42', '9.67', '42.15', '1');
INSERT INTO `food` VALUES ('4002', '玉米沙拉', '248.25', '11.2', '9.46', '24.48', '1');
INSERT INTO `food` VALUES ('4003', '黑豆沙拉', '300.4', '25.9', '11.29', '19.89', '1');
INSERT INTO `food` VALUES ('4004', '土豆泥配开心果', '215.9', '5.12', '10.87', '22.95', '0');
INSERT INTO `food` VALUES ('4005', '蜂蜜烤吐司配腰果', '254.8', '7.05', '8.06', '39.1', '0');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `cycle` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `thumb_img` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('11', '专业健身减脂餐 3日装', '3日装', '414', null, '每日 新鲜制作，免费配送到家', '健康饮食习惯的养成需要时间，自律并没有那么困难，坚信自己值得更好。', null, '男', null, null, null);
INSERT INTO `goods` VALUES ('12', '专业健身减脂餐 周套餐', '周套餐', '690', null, '每日 新鲜制作，免费配送到家', '坚持1周，身体会感到明显变化，小腹逐渐变得平坦，身体体脂率开始下降，对自己更有信心。', null, '男', null, null, null);
INSERT INTO `goods` VALUES ('13', '专业健身减脂餐 月套餐', '月套餐', '2699', null, '每日 新鲜制作，免费配送到家', '坚持1个月，身体会感受到健康饮食带来的好处。配合锻炼，梦寐以求的完美线条就在眼前。', null, '男', null, null, null);
INSERT INTO `goods` VALUES ('14', '专业健身减脂餐 季套餐', '季套餐', '7999', null, '每日 新鲜制作，免费配送到家', '坚持3个月完整的减脂周期，你的体态将获得脱胎换骨般的改变！体重、身体质量指数、体脂率等各项身体指标将有飞跃般的改善！', null, '男', null, null, null);
INSERT INTO `goods` VALUES ('15', '专业健身减脂餐 3日装', '3日装', '384', '', '每日 新鲜制作，免费配送到家', '健康饮食习惯的养成需要时间，自律并没有那么困难，坚信自己值得更好。', null, '女', '', null, null);
INSERT INTO `goods` VALUES ('16', '专业健身减脂餐 周套餐', '周套餐', '640', '', '每日 新鲜制作，免费配送到家', '坚持1周，身体会感到明显变化，小腹逐渐变得平坦，身体体脂率开始下降，对自己更有信心。', null, '女', '', null, null);
INSERT INTO `goods` VALUES ('17', '专业健身减脂餐 月套餐', '月套餐', '2499', '', '每日 新鲜制作，免费配送到家', '坚持1个月，身体会感受到健康饮食带来的好处。配合锻炼，梦寐以求的完美线条就在眼前。', null, '女', '', null, null);
INSERT INTO `goods` VALUES ('18', '专业健身减脂餐 季套餐', '季套餐', '7400', '', '每日 新鲜制作，免费配送到家', '坚持3个月完整的减脂周期，你的体态将获得脱胎换骨般的改变！体重、身体质量指数、体脂率等各项身体指标将有飞跃般的改善！', null, '女', '', null, null);
INSERT INTO `goods` VALUES ('21', '撕裂者经典原味鸡胸肉', '原味套餐', '96.6', 'img/ripper_1.jpg', '7份装', '撩动款：撩衣见腹肌，乍现马甲线。\r\n', null, '', '', 'img/ripper_1(2).jpg', null);
INSERT INTO `goods` VALUES ('22', '撕裂者辛香黑椒鸡胸肉', '黑椒套装', '96.6', 'img/ripper_2.jpg', '7份装', 'D杯款：推举得D杯，深蹲出翘臀。', null, '', '', 'img/ripper_2(2).jpg', null);

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemid` varchar(32) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` varchar(32) DEFAULT NULL,
  `oid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_0001` (`pid`),
  KEY `fk_0002` (`oid`),
  CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`),
  CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` varchar(32) NOT NULL,
  `ordertime` datetime DEFAULT NULL,
  `total` double DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `freight_charge` double DEFAULT NULL,
  `uid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FK58x4l9shxmkb7pismj4ilt7pj` (`uid`),
  CONSTRAINT `FK58x4l9shxmkb7pismj4ilt7pj` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for pure_advice
-- ----------------------------
DROP TABLE IF EXISTS `pure_advice`;
CREATE TABLE `pure_advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advice_date` date DEFAULT NULL,
  `advice_username` varchar(50) DEFAULT NULL,
  `advice_title` varchar(50) DEFAULT NULL,
  `advice_type` varchar(50) DEFAULT NULL,
  `oid` varchar(32) DEFAULT NULL,
  `phonenumber` varchar(11) DEFAULT NULL,
  `advice_description` varchar(255) NOT NULL DEFAULT '',
  `advice_fileuppath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pure_advice
-- ----------------------------

-- ----------------------------
-- Table structure for pure_recipe
-- ----------------------------
DROP TABLE IF EXISTS `pure_recipe`;
CREATE TABLE `pure_recipe` (
  `id` varchar(10) NOT NULL,
  `recipe_weekday` varchar(20) DEFAULT NULL,
  `recipe_total_calories` double DEFAULT NULL,
  `recipe_advice` varchar(50) DEFAULT NULL,
  `recipe_operation` varchar(50) DEFAULT NULL,
  `recipe_breakfast` varchar(20) DEFAULT NULL,
  `recipe_lunch` varchar(20) DEFAULT NULL,
  `recipe_dinner` varchar(20) DEFAULT NULL,
  `recipe_extra` varchar(20) DEFAULT NULL,
  `recipe_type` varchar(10) DEFAULT NULL,
  `recipe_flag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pure_recipe
-- ----------------------------
INSERT INTO `pure_recipe` VALUES ('1001', 'MONDAY 周一', '1514.44', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '彩虹科布沙拉', '煎龙利鱼配紫甘蓝与土豆', '鸡胸配鹰嘴豆与紫薯泥', '蜂蜜烤吐司配腰果', '男', '1');
INSERT INTO `pure_recipe` VALUES ('1002', 'MONDAY 周一', '1226.54', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '彩虹科布沙拉', '煎龙利鱼配紫甘蓝与土豆', '鸡胸配鹰嘴豆与紫薯泥', '蜂蜜烤吐司配腰果', '女', '1');
INSERT INTO `pure_recipe` VALUES ('1003', 'TUESDAY 周二', '1482.2', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '彩色螺丝面沙拉', '牛肉配煮蔬菜与土豆泥', '鸡胸配苹果豆饭', '玉米沙拉', '男', '1');
INSERT INTO `pure_recipe` VALUES ('1004', 'TUESDAY 周二', '1215.84', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '彩色螺丝面沙拉', '牛肉配煮蔬菜与土豆泥', '鸡胸配苹果豆饭', '玉米沙拉', '女', '1');
INSERT INTO `pure_recipe` VALUES ('1005', 'WEDNESDAY 周三', '1503.15', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '金枪鱼三明治', '鸡腿肉煮蔬菜糙米饭', '地中海龙利鱼', '紫薯泥配盐焗大杏仁', '男', '1');
INSERT INTO `pure_recipe` VALUES ('1006', 'WEDNESDAY 周三', '1200.03', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '金枪鱼三明治', '鸡腿肉煮蔬菜糙米饭', '地中海龙利鱼', '紫薯泥配盐焗大杏仁', '女', '1');
INSERT INTO `pure_recipe` VALUES ('1007', 'THURSDAY 周四', '1564', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '蘑菇沙拉', '墨西哥鱼卷', '鸡胸配蘑菇与南瓜', '黑豆沙拉', '男', '1');
INSERT INTO `pure_recipe` VALUES ('1008', 'THURSDAY 周四', '1178.9', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '蘑菇沙拉', '墨西哥鱼卷', '鸡胸配蘑菇与南瓜', '黑豆沙拉', '女', '1');
INSERT INTO `pure_recipe` VALUES ('1009', 'FRIDAY 周五', '1549.13', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '牛肉蘑菇塔可饼', '鸡腿肉配蜜豆与玉米', '煎鲷鱼配煮蔬菜与糙米饭', '土豆泥配开心果', '男', '1');
INSERT INTO `pure_recipe` VALUES ('1010', 'FRIDAY 周五', '1549.13', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '牛肉蘑菇塔可饼', '鸡腿肉配蜜豆与玉米', '煎鲷鱼配煮蔬菜与糙米饭', '土豆泥配开心果', '女', '1');
INSERT INTO `pure_recipe` VALUES ('1011', 'MONDAY 周一', '1482.65', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '三文鱼沙拉', '龙利鱼配薏米与南瓜', '虾仁蘑菇煎土豆块', '紫薯泥配盐焗大杏仁', '男', '2');
INSERT INTO `pure_recipe` VALUES ('1012', 'MONDAY 周一', '1173', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '三文鱼沙拉', '龙利鱼配薏米与南瓜', '虾仁蘑菇煎土豆块', '紫薯泥配盐焗大杏仁', '女', '2');
INSERT INTO `pure_recipe` VALUES ('1013', 'TUESDAY 周二', '1464.97', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '鸡胸橙子沙拉', '煎鲷鱼菠菜配土豆泥', '鸡胸配薏米沙拉', '玉米沙拉', '男', '2');
INSERT INTO `pure_recipe` VALUES ('1014', 'TUESDAY 周二', '1219.43', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '鸡胸橙子沙拉', '煎鲷鱼菠菜配土豆泥', '鸡胸配薏米沙拉', '玉米沙拉', '女', '2');
INSERT INTO `pure_recipe` VALUES ('1015', 'WEDNESDAY 周三', '1499.64', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '主厨沙拉', '法式白烩牛肉', '龙利鱼配沙拉与通心粉', '黑豆沙拉', '男', '2');
INSERT INTO `pure_recipe` VALUES ('1016', 'WEDNESDAY 周三', '1214.14', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '主厨沙拉', '法式白烩牛肉', '龙利鱼配沙拉与通心粉', '黑豆沙拉', '女', '2');
INSERT INTO `pure_recipe` VALUES ('1017', 'THURSDAY 周四', '1459', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '牛排沙拉', '鸡胸配蘑菇与糙米饭', '煎鲷鱼西葫芦玉米段', '土豆泥配开心果', '男', '2');
INSERT INTO `pure_recipe` VALUES ('1018', 'THURSDAY 周四', '1230.95', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '牛排沙拉', '鸡胸配蘑菇与糙米饭', '煎鲷鱼西葫芦玉米段', '土豆泥配开心果', '女', '2');
INSERT INTO `pure_recipe` VALUES ('1019', 'FRIDAY 周五', '1500.15', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '鸡胸三明治', '菠菜鱼圆配豆饭', '苹果薏米配沙拉', '蜂蜜烤吐司配腰果', '男', '2');
INSERT INTO `pure_recipe` VALUES ('1020', 'FRIDAY 周五', '1178.82', '微波中火加热1分钟（建议）', '请取出调料盒后再加热', '鸡胸三明治', '菠菜鱼圆配豆饭', '苹果薏米配沙拉', '蜂蜜烤吐司配腰果', '女', '2');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(50) NOT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `no` varchar(30) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `parent_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2jrf4gb0gjqi8882gxytpxnhe` (`parent_id`),
  CONSTRAINT `FK2jrf4gb0gjqi8882gxytpxnhe` FOREIGN KEY (`parent_id`) REFERENCES `sys_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', 'icon-cogs', '系统管理', null, null, '0', null);
INSERT INTO `sys_menu` VALUES ('2', 'icon-user', '用户', null, 'control/user/list', '0', '1');
INSERT INTO `sys_menu` VALUES ('3', 'icon-male', '商品', null, 'control/goods/list', '0', '1');
INSERT INTO `sys_menu` VALUES ('5', 'icon-info-circle', '文章信息', null, 'control/articles/list', '0', '1');
INSERT INTO `sys_menu` VALUES ('6', 'icon-info-circle', '食谱', null, 'control/recipe/list', '0', '1');
INSERT INTO `sys_menu` VALUES ('7', 'icon-info-circle', '食物', null, 'control/food/list', '0', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(50) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `score` double(11,0) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `data2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zcy', 'zcy', '123', '123', '132', '132', '132', null);
INSERT INTO `user` VALUES ('10001', null, 'aaa', '231', null, null, null, null, null);
INSERT INTO `user` VALUES ('b1f5d2e8-5359-400c-97ea-6f76dd04118b', null, '123', '123', null, null, null, null, null);
