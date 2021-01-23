/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : course

 Target Server Type    : MySQL
 Target Server Version : 50710
 File Encoding         : 65001

 Date: 23/01/2021 15:24:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adverts
-- ----------------------------
DROP TABLE IF EXISTS `adverts`;
CREATE TABLE `adverts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '广告标题',
  `thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片链接',
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '跳转链接',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `position_id` int(11) NOT NULL COMMENT '位置ID',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '广告描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '资讯ID',
  `tag_id` int(11) NOT NULL COMMENT '标签ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `keywords` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '关键词',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  `thumb` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缩略图',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
BEGIN;
INSERT INTO `articles` VALUES (1, 1, '是多福多', '1艾弗森发放', '阿斯顿范德萨发', '<p>大师傅暗示法爱上</p>', 258, NULL, '2021-01-10 18:33:37', '2021-01-19 01:12:59');
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, '俞芳', 0, 0, '2021-01-10 18:32:46', '2021-01-10 18:32:46');
COMMIT;

-- ----------------------------
-- Table structure for districts
-- ----------------------------
DROP TABLE IF EXISTS `districts`;
CREATE TABLE `districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '行政编码',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名字',
  `center` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '经纬度',
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '级别',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for icons
-- ----------------------------
DROP TABLE IF EXISTS `icons`;
CREATE TABLE `icons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unicode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'unicode 字符',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类名',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of icons
-- ----------------------------
BEGIN;
INSERT INTO `icons` VALUES (1, '&#xe6c9;', 'layui-icon-rate-half', '半星', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (2, '&#xe67b;', 'layui-icon-rate', '星星-空心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (3, '&#xe67a;', 'layui-icon-rate-solid', '星星-实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (4, '&#xe678;', 'layui-icon-cellphone', '手机', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (5, '&#xe679;', 'layui-icon-vercode', '验证码', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (6, '&#xe677;', 'layui-icon-login-wechat', '微信', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (7, '&#xe676;', 'layui-icon-login-qq', 'QQ', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (8, '&#xe675;', 'layui-icon-login-weibo', '微博', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (9, '&#xe673;', 'layui-icon-password', '密码', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (10, '&#xe66f;', 'layui-icon-username', '用户名', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (11, '&#xe9aa;', 'layui-icon-refresh-3', '刷新-粗', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (12, '&#xe672;', 'layui-icon-auz', '授权', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (13, '&#xe66b;', 'layui-icon-spread-left', '左向右伸缩菜单', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (14, '&#xe668;', 'layui-icon-shrink-right', '右向左伸缩菜单', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (15, '&#xe6b1;', 'layui-icon-snowflake', '雪花', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (16, '&#xe702;', 'layui-icon-tips', '提示说明', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (17, '&#xe66e;', 'layui-icon-note', '便签', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (18, '&#xe68e;', 'layui-icon-home', '主页', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (19, '&#xe674;', 'layui-icon-senior', '高级', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (20, '&#xe669;', 'layui-icon-refresh', '刷新', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (21, '&#xe666;', 'layui-icon-refresh-1', '刷新', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (22, '&#xe66c;', 'layui-icon-flag', '旗帜', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (23, '&#xe66a;', 'layui-icon-theme', '主题', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (24, '&#xe667;', 'layui-icon-notice', '消息-通知', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (25, '&#xe7ae;', 'layui-icon-website', '网站', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (26, '&#xe665;', 'layui-icon-console', '控制台', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (27, '&#xe664;', 'layui-icon-face-surprised', '表情-惊讶', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (28, '&#xe716;', 'layui-icon-set', '设置-空心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (29, '&#xe656;', 'layui-icon-template-1', '模板', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (30, '&#xe653;', 'layui-icon-app', '应用', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (31, '&#xe663;', 'layui-icon-template', '模板', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (32, '&#xe6c6;', 'layui-icon-praise', '赞', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (33, '&#xe6c5;', 'layui-icon-tread', '踩', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (34, '&#xe662;', 'layui-icon-male', '男', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (35, '&#xe661;', 'layui-icon-female', '女', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (36, '&#xe660;', 'layui-icon-camera', '相机-空心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (37, '&#xe65d;', 'layui-icon-camera-fill', '相机-实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (38, '&#xe65f;', 'layui-icon-more', '菜单-水平', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (39, '&#xe671;', 'layui-icon-more-vertical', '菜单-垂直', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (40, '&#xe65e;', 'layui-icon-rmb', '金额-人民币', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (41, '&#xe659;', 'layui-icon-dollar', '金额-美元', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (42, '&#xe735;', 'layui-icon-diamond', '钻石-等级', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (43, '&#xe756;', 'layui-icon-fire', '火', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (44, '&#xe65c;', 'layui-icon-return', '返回', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (45, '&#xe715;', 'layui-icon-location', '位置-地图', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (46, '&#xe705;', 'layui-icon-read', '办公-阅读', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (47, '&#xe6b2;', 'layui-icon-survey', '调查', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (48, '&#xe6af;', 'layui-icon-face-smile', '表情-微笑', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (49, '&#xe69c;', 'layui-icon-face-cry', '表情-哭泣', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (50, '&#xe698;', 'layui-icon-cart-simple', '购物车', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (51, '&#xe657;', 'layui-icon-cart', '购物车', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (52, '&#xe65b;', 'layui-icon-next', '下一页', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (53, '&#xe65a;', 'layui-icon-prev', '上一页', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (54, '&#xe681;', 'layui-icon-upload-drag', '上传-空心-拖拽', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (55, '&#xe67c;', 'layui-icon-upload', '上传-实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (56, '&#xe601;', 'layui-icon-download-circle', '下载-圆圈', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (57, '&#xe857;', 'layui-icon-component', '组件', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (58, '&#xe655;', 'layui-icon-file-b', '文件-粗', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (59, '&#xe770;', 'layui-icon-user', '用户', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (60, '&#xe670;', 'layui-icon-find-fill', '发现-实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (61, '&#xe63d;', 'layui-icon-loading', 'loading', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (62, '&#xe63e;', 'layui-icon-loading-1', 'loading', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (63, '&#xe654;', 'layui-icon-add-1', '添加', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (64, '&#xe652;', 'layui-icon-play', '播放', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (65, '&#xe651;', 'layui-icon-pause', '暂停', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (66, '&#xe6fc;', 'layui-icon-headset', '音频-耳机', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (67, '&#xe6ed;', 'layui-icon-video', '视频', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (68, '&#xe688;', 'layui-icon-voice', '语音-声音', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (69, '&#xe645;', 'layui-icon-speaker', '消息-通知-喇叭', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (70, '&#xe64f;', 'layui-icon-fonts-del', '删除线', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (71, '&#xe64e;', 'layui-icon-fonts-code', '代码', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (72, '&#xe64b;', 'layui-icon-fonts-html', 'HTML', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (73, '&#xe62b;', 'layui-icon-fonts-strong', '字体加粗', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (74, '&#xe64d;', 'layui-icon-unlink', '删除链接', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (75, '&#xe64a;', 'layui-icon-picture', '图片', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (76, '&#xe64c;', 'layui-icon-link', '链接', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (77, '&#xe650;', 'layui-icon-face-smile-b', '表情-笑-粗', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (78, '&#xe649;', 'layui-icon-align-left', '左对齐', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (79, '&#xe648;', 'layui-icon-align-right', '右对齐', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (80, '&#xe647;', 'layui-icon-align-center', '居中对齐', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (81, '&#xe646;', 'layui-icon-fonts-u', '字体-下划线', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (82, '&#xe644;', 'layui-icon-fonts-i', '字体-斜体', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (83, '&#xe62a;', 'layui-icon-tabs', 'Tabs 选项卡', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (84, '&#xe643;', 'layui-icon-radio', '单选框-选中', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (85, '&#xe63f;', 'layui-icon-circle', '单选框-候选', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (86, '&#xe642;', 'layui-icon-edit', '编辑', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (87, '&#xe641;', 'layui-icon-share', '分享', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (88, '&#xe640;', 'layui-icon-delete', '删除', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (89, '&#xe63c;', 'layui-icon-form', '表单', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (90, '&#xe63b;', 'layui-icon-cellphone-fine', '手机-细体', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (91, '&#xe63a;', 'layui-icon-dialogue', '聊天 对话 沟通', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (92, '&#xe639;', 'layui-icon-fonts-clear', '文字格式化', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (93, '&#xe638;', 'layui-icon-layer', '窗口', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (94, '&#xe637;', 'layui-icon-date', '日期', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (95, '&#xe636;', 'layui-icon-water', '水 下雨', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (96, '&#xe635;', 'layui-icon-code-circle', '代码-圆圈', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (97, '&#xe634;', 'layui-icon-carousel', '轮播组图', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (98, '&#xe633;', 'layui-icon-prev-circle', '翻页', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (99, '&#xe632;', 'layui-icon-layouts', '布局', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (100, '&#xe631;', 'layui-icon-util', '工具', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (101, '&#xe630;', 'layui-icon-templeate-1', '选择模板', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (102, '&#xe62f;', 'layui-icon-upload-circle', '上传-圆圈', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (103, '&#xe62e;', 'layui-icon-tree', '树', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (104, '&#xe62d;', 'layui-icon-table', '表格', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (105, '&#xe62c;', 'layui-icon-chart', '图表', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (106, '&#xe629;', 'layui-icon-chart-screen', '图标 报表 屏幕', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (107, '&#xe628;', 'layui-icon-engine', '引擎', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (108, '&#xe625;', 'layui-icon-triangle-d', '下三角', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (109, '&#xe623;', 'layui-icon-triangle-r', '右三角', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (110, '&#xe621;', 'layui-icon-file', '文件', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (111, '&#xe620;', 'layui-icon-set-sm', '设置-小型', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (112, '&#xe61f;', 'layui-icon-add-circle', '添加-圆圈', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (113, '&#xe61c;', 'layui-icon-404', '404', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (114, '&#xe60b;', 'layui-icon-about', '关于', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (115, '&#xe619;', 'layui-icon-up', '箭头 向上', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (116, '&#xe61a;', 'layui-icon-down', '箭头 向下', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (117, '&#xe603;', 'layui-icon-left', '箭头 向左', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (118, '&#xe602;', 'layui-icon-right', '箭头 向右', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (119, '&#xe617;', 'layui-icon-circle-dot', '圆点', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (120, '&#xe615;', 'layui-icon-search', '搜索', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (121, '&#xe614;', 'layui-icon-set-fill', '设置-实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (122, '&#xe613;', 'layui-icon-group', '群组', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (123, '&#xe612;', 'layui-icon-friends', '好友', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (124, '&#xe611;', 'layui-icon-reply-fill', '回复 评论 实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (125, '&#xe60f;', 'layui-icon-menu-fill', '菜单 隐身 实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (126, '&#xe60e;', 'layui-icon-log', '记录', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (127, '&#xe60d;', 'layui-icon-picture-fine', '图片-细体', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (128, '&#xe60c;', 'layui-icon-face-smile-fine', '表情-笑-细体', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (129, '&#xe60a;', 'layui-icon-list', '列表', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (130, '&#xe609;', 'layui-icon-release', '发布 纸飞机', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (131, '&#xe605;', 'layui-icon-ok', '对 OK', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (132, '&#xe607;', 'layui-icon-help', '帮助', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (133, '&#xe606;', 'layui-icon-chat', '客服', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (134, '&#xe604;', 'layui-icon-top', 'top 置顶', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (135, '&#xe600;', 'layui-icon-star', '收藏-空心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (136, '&#xe658;', 'layui-icon-star-fill', '收藏-实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (137, '&#x1007;', 'layui-icon-close-fill', '关闭-实心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (138, '&#x1006;', 'layui-icon-close', '关闭-空心', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (139, '&#x1005;', 'layui-icon-ok-circle', '正确', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `icons` VALUES (140, '&#xe608;', 'layui-icon-add-circle-fine', '添加-圆圈-细体', 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
COMMIT;

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `remember_token` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '记住我',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '消息内容',
  `read` int(11) NOT NULL DEFAULT '1' COMMENT '1-未读，2-已读',
  `send_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '消息发送者UUID，1表示系统发送',
  `accept_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息接收者UUID',
  `flag` int(11) NOT NULL COMMENT '消息对应关系：12-系统推送给后台，13-系统推送给前台,22-后台推送给后台，23-后台推送给前台，32-前台推送给后台，33-前台推送给前台，',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2018_04_26_171101_create_district_table', 1);
INSERT INTO `migrations` VALUES (4, '2018_05_04_090903_create_members_table', 1);
INSERT INTO `migrations` VALUES (5, '2018_05_04_103656_create_tags_table', 1);
INSERT INTO `migrations` VALUES (6, '2018_05_04_134703_create_categories_table', 1);
INSERT INTO `migrations` VALUES (7, '2018_05_04_135258_create_articles_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_05_07_160110_create_article_tag_table', 1);
INSERT INTO `migrations` VALUES (9, '2018_05_14_091108_create_sites_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_05_14_115332_create_table_positions', 1);
INSERT INTO `migrations` VALUES (11, '2018_05_14_115355_create_table_adverts', 1);
INSERT INTO `migrations` VALUES (12, '2018_05_31_162020_create_icons_table', 1);
INSERT INTO `migrations` VALUES (13, '2018_06_07_092825_create_messages_table', 1);
INSERT INTO `migrations` VALUES (14, '2018_06_25_014048_create_permission_tables', 1);
COMMIT;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `model_has_permissions` VALUES (1, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (2, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (3, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (4, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (5, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (6, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (7, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (8, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (9, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (10, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (11, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (12, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (13, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (14, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (15, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (16, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (17, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (18, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (19, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (20, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (21, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (22, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (23, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (24, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (25, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (26, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (27, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (28, 1, 'App\\Models\\User');
INSERT INTO `model_has_permissions` VALUES (29, 1, 'App\\Models\\User');
COMMIT;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
BEGIN;
INSERT INTO `model_has_roles` VALUES (1, 1, 'App\\Models\\User');
INSERT INTO `model_has_roles` VALUES (2, 1, 'App\\Models\\User');
INSERT INTO `model_has_roles` VALUES (7, 1, 'App\\Models\\User');
INSERT INTO `model_has_roles` VALUES (8, 1, 'App\\Models\\User');
INSERT INTO `model_has_roles` VALUES (1, 2, 'App\\Models\\User');
INSERT INTO `model_has_roles` VALUES (8, 19, 'App\\Models\\User');
INSERT INTO `model_has_roles` VALUES (9, 20, 'App\\Models\\User');
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路由名称',
  `icon_id` int(11) DEFAULT NULL COMMENT '图标ID',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (1, 'system.manage', 'web', '系统管理', '', 100, 0, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (2, 'system.user', 'web', '用户管理', 'admin.user', 123, 1, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (3, 'system.user.create', 'web', '添加用户', 'admin.user.create', 1, 2, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (4, 'system.user.edit', 'web', '编辑用户', 'admin.user.edit', 1, 2, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (5, 'system.user.destroy', 'web', '删除用户', 'admin.user.destroy', 1, 2, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (6, 'system.user.role', 'web', '分配角色', 'admin.user.role', 1, 2, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (7, 'system.user.permission', 'web', '分配权限', 'admin.user.permission', 1, 2, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (8, 'system.role', 'web', '角色管理', 'admin.role', 121, 1, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (9, 'system.role.create', 'web', '添加角色', 'admin.role.create', 1, 8, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (10, 'system.role.edit', 'web', '编辑角色', 'admin.role.edit', 1, 8, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (11, 'system.role.destroy', 'web', '删除角色', 'admin.role.destroy', 1, 8, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (12, 'system.role.permission', 'web', '分配权限', 'admin.role.permission', 1, 8, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (13, 'system.permission', 'web', '权限管理', 'admin.permission', 12, 1, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (14, 'system.permission.create', 'web', '添加权限', 'admin.permission.create', 1, 13, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (15, 'system.permission.edit', 'web', '编辑权限', 'admin.permission.edit', 1, 13, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (16, 'system.permission.destroy', 'web', '删除权限', 'admin.permission.destroy', 1, 13, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (17, 'zixun.manage', 'web', '资讯管理', '', 100, 0, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (18, 'zixun.category', 'web', '分类管理', 'admin.category', 29, 17, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (19, 'zixun.category.create', 'web', '添加分类', 'admin.category.create', 1, 18, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (20, 'zixun.category.edit', 'web', '编辑分类', 'admin.category.edit', 1, 18, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (21, 'zixun.category.destroy', 'web', '删除分类', 'admin.category.destroy', 1, 18, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (22, 'zixun.tag', 'web', '标签管理', 'admin.tag', 15, 17, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (23, 'zixun.tag.create', 'web', '添加标签', 'admin.tag.create', 1, 22, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (24, 'zixun.tag.edit', 'web', '编辑标签', 'admin.tag.edit', 1, 22, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (25, 'zixun.tag.destroy', 'web', '删除标签', 'admin.tag.destroy', 1, 22, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (26, 'zixun.article', 'web', '文章管理', 'admin.article', 89, 17, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (27, 'zixun.article.create', 'web', '添加文章', 'admin.article.create', 1, 26, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (28, 'zixun.article.edit', 'web', '编辑文章', 'admin.article.edit', 1, 26, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (29, 'zixun.article.destroy', 'web', '删除文章', 'admin.article.destroy', 1, 26, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (30, 'config.manage', 'web', '配置管理', '', 28, 0, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (31, 'config.site', 'web', '站点配置', 'admin.site', 25, 30, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (32, 'config.site.update', 'web', '更新配置', 'admin.site.update', 1, 31, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (33, 'config.position', 'web', '广告位置', 'admin.position', 30, 30, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (34, 'config.position.create', 'web', '添加广告位', 'admin.position.create', 1, 33, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (35, 'config.position.edit', 'web', '编辑广告位', 'admin.position.edit', 1, 33, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (36, 'config.position.destroy', 'web', '删除广告位', 'admin.position.destroy', 1, 33, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (37, 'config.advert', 'web', '广告信息', 'admin.advert', 107, 30, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (38, 'config.advert.create', 'web', '添加信息', 'admin.advert.create', 1, 37, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (39, 'config.advert.edit', 'web', '编辑信息', 'admin.advert.edit', 1, 37, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (40, 'config.advert.destroy', 'web', '删除信息', 'admin.advert.destroy', 1, 37, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (41, 'member.manage', 'web', '会员管理', '', 59, 0, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (42, 'member.member', 'web', '账号管理', 'admin.member', 10, 41, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (43, 'member.member.create', 'web', '添加账号', 'admin.member.create', 1, 42, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (44, 'member.member.edit', 'web', '编辑账号', 'admin.member.edit', 1, 42, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (45, 'member.member.destroy', 'web', '删除账号', 'admin.member.destroy', 1, 42, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (46, 'message.manage', 'web', '消息管理', '', 24, 0, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (47, 'message.message.mine', 'web', '我的消息', 'admin.message.mine', 124, 46, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (48, 'message.message', 'web', '消息管理', 'admin.message', 24, 46, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (49, 'message.message.create', 'web', '推送消息', 'admin.message.create', 1, 48, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (50, 'message.message.destroy', 'web', '删除消息', 'admin.message.destroy', 1, 48, 0, '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `permissions` VALUES (51, 'teacher.manage', 'web', '教师', NULL, 10, 0, 0, '2021-01-10 13:25:08', '2021-01-10 21:04:13');
INSERT INTO `permissions` VALUES (52, 'teacher.teacher', 'web', '教师管理', 'admin.teacher', NULL, 51, 0, '2021-01-10 13:37:58', '2021-01-10 13:44:53');
INSERT INTO `permissions` VALUES (53, 'teacher.teacher.create', 'web', '添加教师', 'admin.teacher.create', NULL, 52, 0, '2021-01-10 13:47:30', '2021-01-10 13:47:30');
INSERT INTO `permissions` VALUES (55, 'teacher.teacher.destroy', 'web', '删除教师', 'admin.teacher.destroy', NULL, 52, 0, '2021-01-10 18:53:43', '2021-01-10 18:53:43');
INSERT INTO `permissions` VALUES (57, 'teacher.teacher.edit', 'web', '编辑教师', 'admin.teacher.edit', NULL, 52, 0, '2021-01-10 21:03:49', '2021-01-10 21:03:49');
INSERT INTO `permissions` VALUES (58, 'student.manage', 'web', '学生', NULL, NULL, 0, 0, '2021-01-19 00:40:25', '2021-01-19 00:40:51');
INSERT INTO `permissions` VALUES (59, 'student.student', 'web', '学生管理', 'admin.student', 10, 58, 0, '2021-01-19 00:43:34', '2021-01-19 00:43:34');
INSERT INTO `permissions` VALUES (60, 'student.student.create', 'web', '添加学生', 'admin.student.create', 10, 59, 0, '2021-01-19 00:44:25', '2021-01-19 00:44:25');
INSERT INTO `permissions` VALUES (61, 'student.student.destroy', 'web', '删除学生', 'admin.student.destroy', NULL, 59, 0, '2021-01-19 00:45:39', '2021-01-19 00:45:39');
INSERT INTO `permissions` VALUES (62, 'student.student.edit', 'web', '编辑教师', 'admin.student.edit', NULL, 59, 0, '2021-01-19 00:46:24', '2021-01-19 00:46:24');
INSERT INTO `permissions` VALUES (63, 'teacher.timetable', 'web', '课程表管理', 'admin.timetable', NULL, 51, 0, '2021-01-19 22:08:57', '2021-01-19 22:12:15');
INSERT INTO `permissions` VALUES (64, 'teacher.timetable.create', 'web', '添加课程', 'admin.timetable.create', NULL, 63, 0, '2021-01-19 22:13:49', '2021-01-19 22:14:09');
INSERT INTO `permissions` VALUES (65, 'teacher.timetable.destroy', 'web', '删除课程', 'admin.timetable.destroy', NULL, 63, 0, '2021-01-19 22:15:06', '2021-01-19 22:15:06');
INSERT INTO `permissions` VALUES (66, 'teacher.timetable.edit', 'web', '编辑课程', 'admin.timetable.edit', NULL, 63, 0, '2021-01-19 22:15:42', '2021-01-19 22:15:42');
INSERT INTO `permissions` VALUES (67, 'student.studentcourse', 'web', '学生选课', 'admin.studentcourse', NULL, 58, 0, '2021-01-20 13:43:59', '2021-01-20 13:44:19');
INSERT INTO `permissions` VALUES (68, 'student.studentcourse.create', 'web', '学生选择这门课', 'admin.studentcourse.create', NULL, 67, 0, '2021-01-20 13:45:32', '2021-01-20 13:45:39');
INSERT INTO `permissions` VALUES (69, 'student.studentcourse.destroy', 'web', '学生取消这门课', 'admin.studentcourse.destroy', NULL, 67, 0, '2021-01-20 13:46:18', '2021-01-20 13:51:58');
COMMIT;

-- ----------------------------
-- Table structure for positions
-- ----------------------------
DROP TABLE IF EXISTS `positions`;
CREATE TABLE `positions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置名称',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);
INSERT INTO `role_has_permissions` VALUES (3, 1);
INSERT INTO `role_has_permissions` VALUES (4, 1);
INSERT INTO `role_has_permissions` VALUES (5, 1);
INSERT INTO `role_has_permissions` VALUES (6, 1);
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (9, 1);
INSERT INTO `role_has_permissions` VALUES (10, 1);
INSERT INTO `role_has_permissions` VALUES (11, 1);
INSERT INTO `role_has_permissions` VALUES (12, 1);
INSERT INTO `role_has_permissions` VALUES (13, 1);
INSERT INTO `role_has_permissions` VALUES (14, 1);
INSERT INTO `role_has_permissions` VALUES (15, 1);
INSERT INTO `role_has_permissions` VALUES (16, 1);
INSERT INTO `role_has_permissions` VALUES (1, 7);
INSERT INTO `role_has_permissions` VALUES (2, 7);
INSERT INTO `role_has_permissions` VALUES (3, 7);
INSERT INTO `role_has_permissions` VALUES (4, 7);
INSERT INTO `role_has_permissions` VALUES (5, 7);
INSERT INTO `role_has_permissions` VALUES (6, 7);
INSERT INTO `role_has_permissions` VALUES (7, 7);
INSERT INTO `role_has_permissions` VALUES (8, 7);
INSERT INTO `role_has_permissions` VALUES (9, 7);
INSERT INTO `role_has_permissions` VALUES (10, 7);
INSERT INTO `role_has_permissions` VALUES (11, 7);
INSERT INTO `role_has_permissions` VALUES (12, 7);
INSERT INTO `role_has_permissions` VALUES (13, 7);
INSERT INTO `role_has_permissions` VALUES (14, 7);
INSERT INTO `role_has_permissions` VALUES (15, 7);
INSERT INTO `role_has_permissions` VALUES (16, 7);
INSERT INTO `role_has_permissions` VALUES (51, 7);
INSERT INTO `role_has_permissions` VALUES (52, 7);
INSERT INTO `role_has_permissions` VALUES (53, 7);
INSERT INTO `role_has_permissions` VALUES (55, 7);
INSERT INTO `role_has_permissions` VALUES (57, 7);
INSERT INTO `role_has_permissions` VALUES (63, 7);
INSERT INTO `role_has_permissions` VALUES (64, 7);
INSERT INTO `role_has_permissions` VALUES (65, 7);
INSERT INTO `role_has_permissions` VALUES (66, 7);
INSERT INTO `role_has_permissions` VALUES (58, 8);
INSERT INTO `role_has_permissions` VALUES (59, 8);
INSERT INTO `role_has_permissions` VALUES (60, 8);
INSERT INTO `role_has_permissions` VALUES (61, 8);
INSERT INTO `role_has_permissions` VALUES (62, 8);
INSERT INTO `role_has_permissions` VALUES (67, 8);
INSERT INTO `role_has_permissions` VALUES (68, 8);
INSERT INTO `role_has_permissions` VALUES (69, 8);
INSERT INTO `role_has_permissions` VALUES (58, 9);
INSERT INTO `role_has_permissions` VALUES (67, 9);
INSERT INTO `role_has_permissions` VALUES (68, 9);
INSERT INTO `role_has_permissions` VALUES (69, 9);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'root', 'web', '超级管理员', '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `roles` VALUES (2, 'business', 'web', '商务', '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `roles` VALUES (3, 'assessor', 'web', '审核员', '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `roles` VALUES (4, 'channel', 'web', '渠道专员', '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `roles` VALUES (5, 'editor', 'web', '编辑人员', '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `roles` VALUES (6, 'admin', 'web', '管理员', '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `roles` VALUES (7, 'teachermanager', 'web', '教师管理员', '2021-01-10 13:56:58', '2021-01-22 23:30:34');
INSERT INTO `roles` VALUES (8, 'studentmanager', 'web', '学生管理员', '2021-01-19 00:39:25', '2021-01-22 23:30:28');
INSERT INTO `roles` VALUES (9, 'student', 'web', '学生', '2021-01-22 23:30:43', '2021-01-22 23:30:43');
COMMIT;

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for studentcourse
-- ----------------------------
DROP TABLE IF EXISTS `studentcourse`;
CREATE TABLE `studentcourse` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `student_id` int(10) NOT NULL COMMENT '学生ID',
  `timetable_id` int(10) NOT NULL COMMENT '课程表ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`student_id`,`timetable_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of studentcourse
-- ----------------------------
BEGIN;
INSERT INTO `studentcourse` VALUES (33, 12, 6);
COMMIT;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) DEFAULT NULL COMMENT '编号',
  `name` varchar(191) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(4) DEFAULT NULL COMMENT '性别',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `class` varchar(20) DEFAULT NULL COMMENT '班级',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL COMMENT '外键，用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of students
-- ----------------------------
BEGIN;
INSERT INTO `students` VALUES (12, 'Ln123', '林楠', '男', 12, '八年级', '2021-01-19 00:57:34', '2021-01-19 11:20:12', 19);
INSERT INTO `students` VALUES (13, 'Ln321', 'jn', '男', 12, '九年级', '2021-01-22 23:40:12', '2021-01-22 23:40:12', 20);
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) DEFAULT NULL COMMENT '编号',
  `name` varchar(191) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(4) DEFAULT NULL COMMENT '性别',
  `age` int(10) DEFAULT NULL COMMENT '年龄',
  `title` varchar(20) DEFAULT NULL COMMENT '职称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL COMMENT '外键，用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of teachers
-- ----------------------------
BEGIN;
INSERT INTO `teachers` VALUES (1, '123', '林楠', '男', 12, '高级老师', '2021-01-10 13:53:20', '2021-01-10 13:53:22', 1);
INSERT INTO `teachers` VALUES (8, 'Ln123456', '林楠1', '男', 12, '高级教师', '2021-01-11 14:54:53', '2021-01-11 14:54:53', 11);
INSERT INTO `teachers` VALUES (9, 'Ln1234567', '林楠2', '男', 12, '高级教师', '2021-01-18 16:13:10', '2021-01-18 16:13:10', 12);
INSERT INTO `teachers` VALUES (11, 'Ln123456', '林楠3', '男', 12, '高级教师', '2021-01-18 22:58:07', '2021-01-19 11:20:39', 15);
COMMIT;

-- ----------------------------
-- Table structure for timetable
-- ----------------------------
DROP TABLE IF EXISTS `timetable`;
CREATE TABLE `timetable` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '课程名称',
  `period` int(10) DEFAULT NULL COMMENT '课时',
  `day` varchar(10) DEFAULT NULL COMMENT '星期几',
  `lessonnum` int(5) DEFAULT NULL COMMENT '第几节',
  `classroom` varchar(10) DEFAULT NULL COMMENT '教室',
  `teacher_name` varchar(10) DEFAULT NULL COMMENT '教师名字',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of timetable
-- ----------------------------
BEGIN;
INSERT INTO `timetable` VALUES (1, '语文', 12, '星期四', 3, '八非', '林楠3', '2021-01-10 13:53:20', '2021-01-20 02:03:57');
INSERT INTO `timetable` VALUES (4, '数学', 12, '三', 4, '八非', '林楠3', '2021-01-20 01:40:47', '2021-01-20 02:09:20');
INSERT INTO `timetable` VALUES (5, '英语', 12, '三', 4, '八非', '林楠', '2021-01-20 01:41:52', '2021-01-20 02:09:10');
INSERT INTO `timetable` VALUES (6, '体育', 12, '三', 4, '八非', '林楠2', '2021-01-20 02:00:07', '2021-01-20 02:09:03');
INSERT INTO `timetable` VALUES (7, '数学', 12, '三', 4, '八非', '林楠3', '2021-01-20 02:01:39', '2021-01-20 02:08:57');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'root', '18908221080', '超级管理员', 'root@dgg.net', '$2y$10$J02EoW1ksHMAArw//Lwo0O4pizECniVJMmlwlzNNlBN5DY5tK8GEq', 'ZTSUCUKvDdj7bytgE6CgZk6fOqexxyUphMkb9WeAyDoYHUxdrFIJ8I254Igo', '034ffbf0-5360-336e-b0d9-10917a901c8b', '2021-01-09 15:17:44', '2021-01-09 15:17:44');
INSERT INTO `users` VALUES (2, 'weijinna', '18826792373', '金娜', '790972663@qq.com', '$2y$10$8SrBxbY/04weoJGFkkjgP.6zZx1NahQ3gYAXuqm89Nvop1StgtzwK', NULL, 'b6f2e1bb-1ad2-3990-8a21-84e9caabd402', '2021-01-09 21:00:27', '2021-01-09 21:00:27');
INSERT INTO `users` VALUES (15, 'Ln123456', '18826792372', 'ln', '79097263@qq.com', '$2y$10$QvU4FG2SVm.W4U0X8kqZqO8EWaUA1KT0OesjaaTeyMofPgOUq9WR6', 'wYPh52t0FbyeMpw9tLKBrDEGcRg05qDtTWmMK5aOqg9M9bhaqQ6mR5LGDwP8', '406ca7f1-b094-3df8-8dfe-e071d4c8ee95', '2021-01-18 22:58:07', '2021-01-19 01:13:45');
INSERT INTO `users` VALUES (19, 'Ln123', NULL, '林楠', NULL, '$2y$10$sATAJmj1h3ii7ytqStEj6ep5t6/sOh1.PkcaN7vLy.cDzqyeRyNVa', NULL, 'ce511281-c94b-3612-bbee-449672415d6a', '2021-01-19 00:57:34', '2021-01-19 00:57:34');
INSERT INTO `users` VALUES (20, 'Ln321', NULL, 'jn', NULL, '$2y$10$UnqMrGvLVW.zg5xOBsyeiOuSxC9PyiHItSNFoSNBhhdrW11EGPU3K', NULL, 'ee5d1548-b80b-3cbe-99d7-ba347dd7dcc6', '2021-01-22 23:40:12', '2021-01-22 23:40:12');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
