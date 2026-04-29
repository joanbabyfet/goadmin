/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80046 (8.0.46)
 Source Host           : localhost:3306
 Source Schema         : goadmin

 Target Server Type    : MySQL
 Target Server Version : 80046 (8.0.46)
 File Encoding         : 65001

 Date: 29/04/2026 13:36:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goadmin_menu
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_menu`;
CREATE TABLE `goadmin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plugin_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uuid` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_menu
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_menu` (`id`, `parent_id`, `type`, `order`, `title`, `icon`, `uri`, `header`, `plugin_name`, `uuid`, `created_at`, `updated_at`) VALUES (1, 0, 1, 2, 'Admin', 'fa-tasks', '', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` (`id`, `parent_id`, `type`, `order`, `title`, `icon`, `uri`, `header`, `plugin_name`, `uuid`, `created_at`, `updated_at`) VALUES (2, 1, 1, 2, 'Users', 'fa-users', '/info/manager', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` (`id`, `parent_id`, `type`, `order`, `title`, `icon`, `uri`, `header`, `plugin_name`, `uuid`, `created_at`, `updated_at`) VALUES (3, 1, 1, 3, 'Roles', 'fa-user', '/info/roles', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` (`id`, `parent_id`, `type`, `order`, `title`, `icon`, `uri`, `header`, `plugin_name`, `uuid`, `created_at`, `updated_at`) VALUES (4, 1, 1, 4, 'Permission', 'fa-ban', '/info/permission', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` (`id`, `parent_id`, `type`, `order`, `title`, `icon`, `uri`, `header`, `plugin_name`, `uuid`, `created_at`, `updated_at`) VALUES (5, 1, 1, 5, 'Menu', 'fa-bars', '/menu', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` (`id`, `parent_id`, `type`, `order`, `title`, `icon`, `uri`, `header`, `plugin_name`, `uuid`, `created_at`, `updated_at`) VALUES (6, 1, 1, 6, 'Operation log', 'fa-history', '/info/op', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_menu` (`id`, `parent_id`, `type`, `order`, `title`, `icon`, `uri`, `header`, `plugin_name`, `uuid`, `created_at`, `updated_at`) VALUES (7, 0, 1, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_operation_log`;
CREATE TABLE `goadmin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_operation_log
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (1, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:15:58', '2026-04-29 06:15:58');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (2, 1, '/admin/logout', 'GET', '::1', '', '2026-04-29 06:20:14', '2026-04-29 06:20:14');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (3, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:20:22', '2026-04-29 06:20:22');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (4, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:20:25', '2026-04-29 06:20:25');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (5, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:20:34', '2026-04-29 06:20:34');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (6, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:20:35', '2026-04-29 06:20:35');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (7, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:20:36', '2026-04-29 06:20:36');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (8, 1, '/admin/logout', 'GET', '::1', '', '2026-04-29 06:21:08', '2026-04-29 06:21:08');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (9, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:21:15', '2026-04-29 06:21:15');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (10, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:21:17', '2026-04-29 06:21:17');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (11, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:21:33', '2026-04-29 06:21:33');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (12, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:21:36', '2026-04-29 06:21:36');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (13, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:21:36', '2026-04-29 06:21:36');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (14, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:21:46', '2026-04-29 06:21:46');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (15, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:23:18', '2026-04-29 06:23:18');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (16, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:23:23', '2026-04-29 06:23:23');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (17, 1, '/admin/info/roles', 'GET', '::1', '', '2026-04-29 06:23:24', '2026-04-29 06:23:24');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (18, 1, '/admin/info/permission', 'GET', '::1', '', '2026-04-29 06:23:24', '2026-04-29 06:23:24');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (19, 1, '/admin/menu', 'GET', '::1', '', '2026-04-29 06:23:25', '2026-04-29 06:23:25');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (20, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:23:27', '2026-04-29 06:23:27');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (21, 1, '/admin/info/manager/detail', 'GET', '::1', '', '2026-04-29 06:26:01', '2026-04-29 06:26:01');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (22, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:26:03', '2026-04-29 06:26:03');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (23, 1, '/admin/info/manager/edit', 'GET', '::1', '', '2026-04-29 06:26:05', '2026-04-29 06:26:05');
INSERT INTO `goadmin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (24, 1, '/admin/info/manager', 'GET', '::1', '', '2026-04-29 06:26:07', '2026-04-29 06:26:07');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_permissions`;
CREATE TABLE `goadmin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_permissions
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (1, 'All permission', '*', '', '*', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (2, 'Dashboard', 'dashboard', 'GET,PUT,POST,DELETE', '/', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_menu`;
CREATE TABLE `goadmin_role_menu` (
  `role_id` int unsigned NOT NULL,
  `menu_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES (1, 7, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES (2, 7, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES (1, 8, '2019-09-11 10:20:55', '2019-09-11 10:20:55');
INSERT INTO `goadmin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES (2, 8, '2019-09-11 10:20:55', '2019-09-11 10:20:55');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_permissions`;
CREATE TABLE `goadmin_role_permissions` (
  `role_id` int unsigned NOT NULL,
  `permission_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_role_permissions` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_role_permissions
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES (1, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES (2, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_role_users`;
CREATE TABLE `goadmin_role_users` (
  `role_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_user_roles` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_role_users
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES (2, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_roles
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_roles`;
CREATE TABLE `goadmin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_roles
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Administrator', 'administrator', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (2, 'Operator', 'operator', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_session
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_session`;
CREATE TABLE `goadmin_session` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `values` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goadmin_session
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_session` (`id`, `sid`, `values`, `created_at`, `updated_at`) VALUES (3, 'a3792d33-81f8-4ea6-903b-feda09bd2f2b', '{\"user_id\":1}', '2026-04-29 06:21:08', '2026-04-29 06:21:08');
INSERT INTO `goadmin_session` (`id`, `sid`, `values`, `created_at`, `updated_at`) VALUES (4, '8235b3ae-6dea-4470-ae63-fea07708c80d', '__csrf_token__', '2026-04-29 06:23:25', '2026-04-29 06:23:25');
INSERT INTO `goadmin_session` (`id`, `sid`, `values`, `created_at`, `updated_at`) VALUES (5, '97e1c311-6b0f-4811-b484-37a39984120f', '__csrf_token__', '2026-04-29 06:26:05', '2026-04-29 06:26:05');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_site
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_site`;
CREATE TABLE `goadmin_site` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_site
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (1, 'extra', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (2, 'site_off', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (3, 'hide_tool_entrance', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (4, 'info_log_off', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (5, 'logger_rotate_max_size', '0', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (6, 'color_scheme', 'skin-black', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (7, 'bootstrap_file_path', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (8, 'allow_del_operation_log', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (9, 'mini_logo', '<b>G</b>A', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (10, 'logger_level', '0', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (11, 'login_logo', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (12, 'logo', '<b>Go</b>Admin', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (13, 'logger_rotate_max_backups', '0', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (14, 'footer_info', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (15, 'logger_encoder_caller', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (16, 'animation_delay', '0.00', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (17, 'app_id', 'In9U7oxImsfP', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (18, 'login_url', '/login', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (19, 'logger_encoder_level', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (20, 'custom_head_html', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (21, 'custom_500_html', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (22, 'index_url', '/info/manager', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (23, 'logger_encoder_level_key', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (24, 'session_life_time', '7200', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (25, 'hide_app_info_entrance', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (26, 'go_mod_file_path', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (27, 'asset_root_path', './public/', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (28, 'file_upload_engine', '{\"name\":\"local\"}', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (29, 'error_log_path', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (30, 'access_log_off', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (31, 'logger_encoder_time_key', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (32, 'access_log_path', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (33, 'logger_rotate_compress', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (34, 'open_admin_api', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (35, 'login_title', 'GoAdmin', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (36, 'hide_config_center_entrance', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (37, 'custom_403_html', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (38, 'logger_encoder_caller_key', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (39, 'logger_encoder_encoding', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (40, 'asset_url', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (41, 'logger_encoder_duration', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (42, 'custom_foot_html', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (43, 'hide_plugin_entrance', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (44, 'prohibit_config_modification', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (45, 'exclude_theme_components', 'null', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (46, 'url_prefix', 'admin', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (47, 'env', 'prod', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (48, 'sql_log', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (49, 'error_log_off', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (50, 'logger_rotate_max_age', '0', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (51, 'auth_user_table', 'goadmin_users', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (52, 'no_limit_login_ip', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (53, 'operation_log_off', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (54, 'language', 'en', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (55, 'info_log_path', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (56, 'access_assets_log_off', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (57, 'debug', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (58, 'logger_encoder_message_key', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (59, 'animation_duration', '0.00', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (60, 'custom_404_html', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (61, 'domain', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (62, 'title', 'GoAdmin', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (63, 'animation_type', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (64, 'logger_encoder_time', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (65, 'hide_visitor_user_center_entrance', 'false', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (66, 'theme', 'adminlte', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (67, 'logger_encoder_name_key', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
INSERT INTO `goadmin_site` (`id`, `key`, `value`, `description`, `state`, `created_at`, `updated_at`) VALUES (68, 'logger_encoder_stacktrace_key', '', NULL, 1, '2026-04-29 06:02:19', '2026-04-29 06:02:19');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_user_permissions`;
CREATE TABLE `goadmin_user_permissions` (
  `user_id` int unsigned NOT NULL,
  `permission_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_user_permissions` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_user_permissions
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES (1, 1, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES (2, 2, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
COMMIT;

-- ----------------------------
-- Table structure for goadmin_users
-- ----------------------------
DROP TABLE IF EXISTS `goadmin_users`;
CREATE TABLE `goadmin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goadmin_users
-- ----------------------------
BEGIN;
INSERT INTO `goadmin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'admin', '$2a$10$Ee68PNxJObGBtqaD.Mj8HOLGqac0qgswqCbHpzREPUnm29F.ViFwK', 'admin', '', 'tlNcBVK9AvfYH7WEnwB1RKvocJu8FfRy4um3DJtwdHuJy0dwFsLOgAc0xUfh', '2019-09-10 00:00:00', '2019-09-10 00:00:00');
INSERT INTO `goadmin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES (2, 'operator', '$2a$10$rVqkOzHjN2MdlEprRflb1eGP0oZXuSrbJLOmJagFsCd81YZm0bsh.', 'Operator', '', NULL, '2019-09-10 00:00:00', '2019-09-10 00:00:00');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
