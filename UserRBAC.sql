-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `gender` tinyint(1) NOT NULL DEFAULT 0 COMMENT '用户性别(0,未定义,1,男,2女)',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户头像',
  `intro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个人简介',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `register_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '注册ip',
  `register_type` tinyint NOT NULL COMMENT '注册方式(0邮箱/姓名 1Gitee 2Github)',
  `register_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '注册地址',
  `login_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最近登录ip',
  `login_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最近登录地址',
  `login_type` tinyint NULL DEFAULT NULL COMMENT '最近登录类型(0邮箱/姓名 1Gitee 2Github)',
  `login_time` datetime NOT NULL COMMENT '用户最近登录时间',
  `is_disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用 (0否 1是)',
  `create_time` datetime NOT NULL COMMENT '用户创建时间',
  `update_time` datetime NOT NULL COMMENT '用户更新时间',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除（0：未删除，1：已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88066036 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'Admin', 'Admin', 0, '$2a$10$VyFtQ3T943p3NY5R0IxzIONjdqABmuCSGiHe5uV8d1ujLGYuS2KZe', 'https://image.kuailemao.xyz/blog/user/avatar/ce7998d8-43b5-4457-bc5c-4fa849160b3c.jpg', '我是一个伟大的站主~~', 'ruyusan@qq.com', '127.0.0.1', 0, '内网IP', '127.0.0.1', 'XX XX', 0, '2024-10-21 08:52:51', 0, '2023-10-13 15:16:01', '2024-10-21 08:52:51', 0);
INSERT INTO `sys_user` VALUES (88065990, '测试用户', 'Test', 0, '$2a$10$VyFtQ3T943p3NY5R0IxzIONjdqABmuCSGiHe5uV8d1ujLGYuS2KZe', 'https://image.kuailemao.xyz/blog/user/avatar/ce7998d8-43b5-4457-bc5c-4fa849160b3c.jpg', '这是测试用户', NULL, '127.0.0.1', 0, '未知', '127.0.0.1', '未知', 0, '2024-10-21 16:29:53', 0, '2024-03-01 11:10:31', '2024-10-21 16:29:53', 0);





-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色字符',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '状态（0：正常，1：停用）',
  `order_num` bigint NOT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除（0：未删除，1：已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'ADMIN', 0, 0, '最高管理者', '2023-11-17 15:19:01', '2023-12-14 16:47:07', 0);
INSERT INTO `sys_role` VALUES (2, '测试角色', 'Test', 0, 1, '测试的用户，没有任何操作权限', '2023-11-17 15:19:06', '2024-07-31 08:41:49', 0);
INSERT INTO `sys_role` VALUES (3, '普通用户', 'USER', 0, 3, '前台普通用户（前台用户默认角色）', '2023-12-03 21:12:24', '2023-12-14 17:15:52', 0);




-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NOT NULL COMMENT '用户id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, '1');
INSERT INTO `sys_user_role` VALUES (44, 88065990, '2');


-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '权限表id',
  `permission_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '描述',
  `permission_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限字符',
  `menu_id` bigint NOT NULL COMMENT '菜单id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除（0：未删除，1：已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 159 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (5, '获取菜单', 'system:menu:list', 2, '2023-12-06 08:41:49', '2023-12-14 17:21:57', 0);
INSERT INTO `sys_permission` VALUES (6, '查询菜单', 'system:menu:select', 2, '2023-12-05 08:41:54', '2023-12-07 12:02:31', 0);
INSERT INTO `sys_permission` VALUES (7, '修改菜单', 'system:menu:update', 2, '2023-12-04 08:41:54', '2023-12-12 20:36:49', 0);
INSERT INTO `sys_permission` VALUES (8, '删除菜单', 'system:menu:delete', 2, '2023-12-04 08:41:54', '2023-12-11 21:03:10', 0);
INSERT INTO `sys_permission` VALUES (9, '添加菜单', 'system:menu:add', 2, '2023-12-02 08:41:54', '2023-12-04 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (10, '修改菜单角色列表', 'system:menu:role:list', 2, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (11, '获取所有角色', 'system:role:list', 23, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (12, '更新角色状态', 'system:role:status:update', 23, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (13, '获取对应角色信息', 'system:role:get', 23, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (14, '修改角色信息', 'system:role:update', 23, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (15, '根据id删除角色', 'system:role:delete', 23, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (16, '根据条件搜索角色', 'system:role:search', 23, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (17, '查询拥有角色的用户列表', 'system:user:role:list', 23, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (18, '查询未拥有角色的用户列表', 'system:not:role:user:list', 23, '2023-12-02 08:41:54', '2023-12-06 10:43:49', 0);
INSERT INTO `sys_permission` VALUES (19, '添加用户角色关系', 'system:user:role:add', 23, '2023-12-05 08:41:54', '2023-12-11 21:02:51', 0);
INSERT INTO `sys_permission` VALUES (20, '删除用户角色关系', 'system:user:role:delete', 23, '2023-12-02 08:41:54', '2023-12-02 08:41:54', 0);
INSERT INTO `sys_permission` VALUES (21, '所有权限', 'system:permission:list', 24, '2023-12-06 10:34:21', '2023-12-06 10:34:24', 0);
INSERT INTO `sys_permission` VALUES (22, '查询所有权限所在菜单', 'system:permission:menu:list', 24, '2023-12-06 14:26:28', '2023-12-06 14:26:31', 0);
INSERT INTO `sys_permission` VALUES (23, '搜索权限', 'system:permission:search', 24, '2023-12-06 15:18:29', '2023-12-06 15:18:33', 0);
INSERT INTO `sys_permission` VALUES (24, '添加权限', 'system:permission:add', 24, '2023-12-06 19:12:47', '2023-12-06 19:12:50', 0);
INSERT INTO `sys_permission` VALUES (27, '获取要修改的权限信息', 'system:permission:get', 24, '2023-12-06 20:48:33', '2023-12-06 20:48:33', 0);
INSERT INTO `sys_permission` VALUES (28, '修改权限字符信息', 'system:permission:update', 24, '2023-12-07 12:01:34', '2023-12-07 12:01:36', 0);
INSERT INTO `sys_permission` VALUES (30, '删除权限', 'system:permission:delete', 24, '2023-12-07 12:14:14', '2023-12-07 12:14:14', 0);
INSERT INTO `sys_permission` VALUES (31, '查询权限的角色列表', 'system:permission:role:list', 65, '2023-12-07 15:02:03', '2023-12-07 15:02:03', 0);
INSERT INTO `sys_permission` VALUES (33, '查询没有该权限的角色列表', 'system:permission:role:not:list', 65, '2023-12-07 17:41:38', '2023-12-07 17:41:38', 0);
INSERT INTO `sys_permission` VALUES (34, '单个/批量添加角色权限关系', 'system:permission:role:add', 65, '2023-12-07 20:53:14', '2023-12-08 10:51:10', 0);
INSERT INTO `sys_permission` VALUES (35, '删除角色权限关系', 'system:permission:role:delete', 65, '2023-12-07 21:00:55', '2023-12-07 21:00:55', 0);
INSERT INTO `sys_permission` VALUES (36, '显示所有登录日志', 'system:log:login:list', 27, '2023-12-11 16:20:00', '2023-12-14 17:48:07', 0);
INSERT INTO `sys_permission` VALUES (37, '登录日志搜索', 'system:log:login:search', 27, '2023-12-11 19:51:27', '2023-12-11 19:51:27', 0);
INSERT INTO `sys_permission` VALUES (38, '删除/清空登录日志', 'system:log:login:delete', 27, '2023-12-11 20:19:08', '2023-12-11 20:19:08', 0);
INSERT INTO `sys_permission` VALUES (45, '显示所有操作日志', 'system:log:list', 26, '2023-12-13 16:13:41', '2023-12-13 16:13:41', 0);
INSERT INTO `sys_permission` VALUES (87, '添加角色信息', 'system:role:add', 23, '2023-12-13 17:23:42', '2023-12-13 17:23:42', 0);
INSERT INTO `sys_permission` VALUES (91, '搜索操作日志', 'system:log:search', 26, '2023-12-13 20:43:04', '2023-12-13 20:43:04', 0);
INSERT INTO `sys_permission` VALUES (92, '删除/清空操作日志', 'system:log:delete', 26, '2023-12-14 08:45:38', '2023-12-14 08:45:38', 0);
INSERT INTO `sys_permission` VALUES (93, 'id查询操作日志', 'system:log:select:id', 26, '2023-12-14 09:00:53', '2023-12-14 09:00:53', 0);
INSERT INTO `sys_permission` VALUES (94, '获取服务监控数据', 'monitor:server:list', 44, '2023-12-14 15:21:21', '2023-12-14 15:21:21', 0);
INSERT INTO `sys_permission` VALUES (97, '获取用户列表', 'system:user:list', 3, '2023-12-18 12:07:00', '2023-12-18 12:07:00', 0);
INSERT INTO `sys_permission` VALUES (98, '搜索用户列表', 'system:user:search', 3, '2023-12-18 14:15:46', '2023-12-18 14:15:46', 0);
INSERT INTO `sys_permission` VALUES (99, '更新用户状态', 'system:user:status:update', 3, '2023-12-18 15:11:34', '2023-12-18 15:11:34', 0);
INSERT INTO `sys_permission` VALUES (100, '获取用户详细信息', 'system:user:details', 3, '2023-12-18 16:40:52', '2023-12-18 16:40:52', 0);
INSERT INTO `sys_permission` VALUES (101, '删除用户&用户角色关系', 'system:user:delete', 3, '2023-12-19 10:11:46', '2023-12-19 10:12:15', 0);
INSERT INTO `sys_permission` VALUES (102, '查询没有该用户的角色列表', 'system:user:role:not:list', 23, '2023-12-19 11:10:11', '2023-12-19 11:10:11', 0);
INSERT INTO `sys_permission` VALUES (103, '查询拥有用户的角色列表', 'system:role:user:list', 23, '2023-12-19 11:17:55', '2023-12-19 11:17:55', 0);
INSERT INTO `sys_permission` VALUES (104, '搜索管理菜单列表', 'system:search:menu:list', 2, '2023-12-25 11:48:02', '2023-12-25 11:48:02', 0);
INSERT INTO `sys_permission` VALUES (105, '添加或修改站长信息', 'blog:update:websiteInfo', 29, '2023-12-27 16:19:23', '2024-01-04 10:49:12', 0);
INSERT INTO `sys_permission` VALUES (106, '查看网站信息-后台', 'blog:get:websiteInfo', 29, '2023-12-29 08:52:51', '2024-01-22 22:18:56', 0);
INSERT INTO `sys_permission` VALUES (107, '新增标签', 'blog:tag:add', 33, '2024-01-04 10:55:39', '2024-01-04 10:55:39', 0);
INSERT INTO `sys_permission` VALUES (108, '新增分类', 'blog:category:add', 34, '2024-01-04 11:17:12', '2024-01-04 11:17:12', 0);
INSERT INTO `sys_permission` VALUES (109, '发布文章相关', 'blog:publish:article', 31, '2024-01-05 15:01:54', '2024-01-05 15:01:54', 0);
INSERT INTO `sys_permission` VALUES (110, '获取文章列表', 'blog:article:list', 32, '2024-01-07 11:28:14', '2024-01-07 11:28:14', 0);
INSERT INTO `sys_permission` VALUES (111, '搜索文章', 'blog:article:search', 32, '2024-01-07 19:30:10', '2024-01-07 19:30:10', 0);
INSERT INTO `sys_permission` VALUES (112, '修改文章', 'blog:article:update', 32, '2024-01-07 19:56:37', '2024-01-07 19:56:37', 0);
INSERT INTO `sys_permission` VALUES (113, '回显文章数据', 'blog:article:echo', 31, '2024-01-08 09:24:01', '2024-01-08 09:24:01', 0);
INSERT INTO `sys_permission` VALUES (114, '删除文章', 'blog:article:delete', 30, '2024-01-08 11:29:23', '2024-01-08 11:29:23', 0);
INSERT INTO `sys_permission` VALUES (115, '后台留言列表', 'blog:leaveword:list', 36, '2024-01-12 21:14:18', '2024-01-12 21:14:18', 0);
INSERT INTO `sys_permission` VALUES (116, '搜索后台留言列表', 'blog:leaveword:search', 36, '2024-01-16 08:50:46', '2024-01-16 08:50:46', 0);
INSERT INTO `sys_permission` VALUES (117, '修改留言是否通过', 'blog:leaveword:isCheck', 36, '2024-01-16 10:02:20', '2024-01-16 10:02:20', 0);
INSERT INTO `sys_permission` VALUES (118, '删除留言', 'blog:leaveword:delete', 36, '2024-01-16 11:11:59', '2024-01-16 11:11:59', 0);
INSERT INTO `sys_permission` VALUES (119, '获取标签列表', 'blog:tag:list', 33, '2024-01-18 14:30:10', '2024-01-18 14:30:10', 0);
INSERT INTO `sys_permission` VALUES (120, '搜索标签列表', 'blog:tag:search', 33, '2024-01-18 14:47:10', '2024-01-18 14:47:10', 0);
INSERT INTO `sys_permission` VALUES (121, '修改标签', 'blog:tag:update', 33, '2024-01-18 15:56:45', '2024-01-18 15:56:45', 0);
INSERT INTO `sys_permission` VALUES (122, '删除标签', 'blog:tag:delete', 33, '2024-01-18 16:16:41', '2024-01-18 16:16:41', 0);
INSERT INTO `sys_permission` VALUES (123, '获取分类列表', 'blog:category:list', 34, '2024-01-18 22:42:29', '2024-01-18 22:43:28', 0);
INSERT INTO `sys_permission` VALUES (124, '搜索分类列表', 'blog:category:search', 34, '2024-01-18 22:43:06', '2024-01-18 22:43:06', 0);
INSERT INTO `sys_permission` VALUES (125, '修改分类', 'blog:category:update', 34, '2024-01-18 22:44:21', '2024-01-18 22:44:21', 0);
INSERT INTO `sys_permission` VALUES (126, '删除分类', 'blog:category:delete', 34, '2024-01-18 22:44:51', '2024-01-18 22:44:51', 0);
INSERT INTO `sys_permission` VALUES (127, '后台树洞列表', 'blog:treeHole:list', 37, '2024-01-19 21:25:39', '2024-01-19 21:25:39', 0);
INSERT INTO `sys_permission` VALUES (128, '搜索后台树洞列表', 'blog:treeHole:search', 37, '2024-01-19 21:26:03', '2024-01-19 21:26:03', 0);
INSERT INTO `sys_permission` VALUES (129, '修改树洞是否通过', 'blog:treeHole:isCheck', 37, '2024-01-19 21:26:28', '2024-01-19 21:26:28', 0);
INSERT INTO `sys_permission` VALUES (130, '删除树洞', 'blog:treeHole:delete', 37, '2024-01-19 21:27:20', '2024-01-19 21:27:20', 0);
INSERT INTO `sys_permission` VALUES (131, '搜索后台收藏列表', 'blog:favorite:search', 43, '2024-01-21 09:36:25', '2024-01-21 09:36:25', 0);
INSERT INTO `sys_permission` VALUES (132, '修改收藏是否通过', 'blog:favorite:isCheck', 43, '2024-01-21 09:36:47', '2024-01-21 09:36:47', 0);
INSERT INTO `sys_permission` VALUES (133, '删除收藏', 'blog:favorite:delete', 43, '2024-01-21 09:37:11', '2024-01-21 09:37:11', 0);
INSERT INTO `sys_permission` VALUES (134, '后台收藏列表', 'blog:favorite:list', 43, '2024-01-21 09:39:35', '2024-01-21 09:39:35', 0);
INSERT INTO `sys_permission` VALUES (136, '后台聊天列表', 'blog:chatGpt:list', 38, '2024-01-21 11:06:39', '2024-01-21 11:06:39', 0);
INSERT INTO `sys_permission` VALUES (137, '搜索后台聊天列表', 'blog:chatGpt:search', 38, '2024-01-21 11:07:18', '2024-01-21 11:07:18', 0);
INSERT INTO `sys_permission` VALUES (138, '修改聊天是否通过', 'blog:chatGpt:isCheck', 38, '2024-01-21 11:07:53', '2024-01-21 11:07:53', 0);
INSERT INTO `sys_permission` VALUES (139, '删除聊天', 'blog:chatGpt:delete', 38, '2024-01-21 11:08:18', '2024-01-21 11:08:18', 0);
INSERT INTO `sys_permission` VALUES (140, '后台评论列表', 'blog:comment:list', 35, '2024-01-22 09:40:40', '2024-01-22 09:40:40', 0);
INSERT INTO `sys_permission` VALUES (141, '搜索后台评论列表', 'blog:comment:search', 35, '2024-01-22 11:02:58', '2024-01-22 11:02:58', 0);
INSERT INTO `sys_permission` VALUES (142, '修改评论是否通过', 'blog:comment:isCheck', 35, '2024-01-22 20:01:50', '2024-01-22 20:01:50', 0);
INSERT INTO `sys_permission` VALUES (143, '删除评论', 'blog:comment:delete', 35, '2024-01-22 20:02:20', '2024-01-22 20:02:20', 0);
INSERT INTO `sys_permission` VALUES (144, '后台友链列表', 'blog:link:list', 39, '2024-01-22 21:03:24', '2024-01-22 21:03:24', 0);
INSERT INTO `sys_permission` VALUES (145, '搜索后台友链列表', 'blog:link:search', 39, '2024-01-22 21:03:46', '2024-01-22 21:03:46', 0);
INSERT INTO `sys_permission` VALUES (146, '修改友链是否通过', 'blog:link:isCheck', 39, '2024-01-22 21:04:18', '2024-01-22 21:04:18', 0);
INSERT INTO `sys_permission` VALUES (147, '删除友链', 'blog:link:delete', 39, '2024-01-22 21:04:46', '2024-01-22 21:04:46', 0);
INSERT INTO `sys_permission` VALUES (150, '后台获取所有前台首页Banner图片', 'blog:banner:list', 29, '2024-09-02 11:44:19', '2024-09-02 11:44:19', 0);
INSERT INTO `sys_permission` VALUES (151, '删除前台首页Banner图片', 'blog:banner:delete', 29, '2024-09-02 11:44:34', '2024-09-02 11:44:34', 0);
INSERT INTO `sys_permission` VALUES (152, '添加前台首页Banner图片', 'blog:banner:add', 29, '2024-09-02 11:44:50', '2024-09-02 11:44:50', 0);
INSERT INTO `sys_permission` VALUES (153, '更新前台首页Banner图片顺序', 'blog:banner:update', 29, '2024-09-02 11:45:07', '2024-09-02 11:45:07', 0);
INSERT INTO `sys_permission` VALUES (154, '添加黑名单', 'blog:black:add', 71, '2024-10-11 17:41:07', '2024-10-11 17:41:07', 0);
INSERT INTO `sys_permission` VALUES (155, '修改黑名单', 'blog:black:update', 71, '2024-10-11 17:41:21', '2024-10-11 17:41:21', 0);
INSERT INTO `sys_permission` VALUES (156, '查询黑名单', 'blog:black:select', 71, '2024-10-11 17:41:35', '2024-10-11 17:41:35', 0);
INSERT INTO `sys_permission` VALUES (157, '删除黑名单', 'blog:black:delete', 71, '2024-10-11 17:41:47', '2024-10-11 17:41:47', 0);



-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '关系表id',
  `role_id` bigint NOT NULL COMMENT '角色id',
  `permission_id` bigint NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 327 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;


-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (162, 1, 7);
INSERT INTO `sys_role_permission` VALUES (163, 1, 8);
INSERT INTO `sys_role_permission` VALUES (164, 1, 9);
INSERT INTO `sys_role_permission` VALUES (165, 1, 10);
INSERT INTO `sys_role_permission` VALUES (166, 1, 11);
INSERT INTO `sys_role_permission` VALUES (167, 1, 12);
INSERT INTO `sys_role_permission` VALUES (168, 1, 13);
INSERT INTO `sys_role_permission` VALUES (170, 1, 15);
INSERT INTO `sys_role_permission` VALUES (171, 1, 16);
INSERT INTO `sys_role_permission` VALUES (172, 1, 17);
INSERT INTO `sys_role_permission` VALUES (173, 1, 18);
INSERT INTO `sys_role_permission` VALUES (174, 1, 19);
INSERT INTO `sys_role_permission` VALUES (175, 1, 20);
INSERT INTO `sys_role_permission` VALUES (176, 1, 21);
INSERT INTO `sys_role_permission` VALUES (177, 1, 22);
INSERT INTO `sys_role_permission` VALUES (178, 1, 23);
INSERT INTO `sys_role_permission` VALUES (179, 1, 24);
INSERT INTO `sys_role_permission` VALUES (180, 1, 27);
INSERT INTO `sys_role_permission` VALUES (181, 1, 28);
INSERT INTO `sys_role_permission` VALUES (182, 1, 30);
INSERT INTO `sys_role_permission` VALUES (183, 1, 31);
INSERT INTO `sys_role_permission` VALUES (184, 1, 33);
INSERT INTO `sys_role_permission` VALUES (185, 1, 34);
INSERT INTO `sys_role_permission` VALUES (186, 1, 35);
INSERT INTO `sys_role_permission` VALUES (192, 1, 5);
INSERT INTO `sys_role_permission` VALUES (193, 1, 6);
INSERT INTO `sys_role_permission` VALUES (198, 1, 36);
INSERT INTO `sys_role_permission` VALUES (199, 1, 37);
INSERT INTO `sys_role_permission` VALUES (200, 1, 38);
INSERT INTO `sys_role_permission` VALUES (201, 1, 14);
INSERT INTO `sys_role_permission` VALUES (211, 1, 87);
INSERT INTO `sys_role_permission` VALUES (212, 1, 45);
INSERT INTO `sys_role_permission` VALUES (213, 1, 91);
INSERT INTO `sys_role_permission` VALUES (214, 1, 92);
INSERT INTO `sys_role_permission` VALUES (215, 1, 93);
INSERT INTO `sys_role_permission` VALUES (216, 1, 94);
INSERT INTO `sys_role_permission` VALUES (217, 1, 97);
INSERT INTO `sys_role_permission` VALUES (218, 1, 98);
INSERT INTO `sys_role_permission` VALUES (219, 1, 99);
INSERT INTO `sys_role_permission` VALUES (220, 1, 100);
INSERT INTO `sys_role_permission` VALUES (223, 1, 101);
INSERT INTO `sys_role_permission` VALUES (224, 1, 103);
INSERT INTO `sys_role_permission` VALUES (225, 1, 102);
INSERT INTO `sys_role_permission` VALUES (226, 1, 104);
INSERT INTO `sys_role_permission` VALUES (227, 1, 105);
INSERT INTO `sys_role_permission` VALUES (228, 1, 106);
INSERT INTO `sys_role_permission` VALUES (229, 1, 107);
INSERT INTO `sys_role_permission` VALUES (230, 1, 108);
INSERT INTO `sys_role_permission` VALUES (231, 1, 109);
INSERT INTO `sys_role_permission` VALUES (232, 1, 110);
INSERT INTO `sys_role_permission` VALUES (233, 1, 111);
INSERT INTO `sys_role_permission` VALUES (234, 1, 112);
INSERT INTO `sys_role_permission` VALUES (235, 1, 113);
INSERT INTO `sys_role_permission` VALUES (236, 1, 114);
INSERT INTO `sys_role_permission` VALUES (237, 1, 115);
INSERT INTO `sys_role_permission` VALUES (238, 1, 116);
INSERT INTO `sys_role_permission` VALUES (239, 1, 117);
INSERT INTO `sys_role_permission` VALUES (240, 1, 118);
INSERT INTO `sys_role_permission` VALUES (241, 1, 119);
INSERT INTO `sys_role_permission` VALUES (242, 1, 120);
INSERT INTO `sys_role_permission` VALUES (243, 1, 121);
INSERT INTO `sys_role_permission` VALUES (244, 1, 122);
INSERT INTO `sys_role_permission` VALUES (245, 1, 123);
INSERT INTO `sys_role_permission` VALUES (246, 1, 124);
INSERT INTO `sys_role_permission` VALUES (247, 1, 125);
INSERT INTO `sys_role_permission` VALUES (248, 1, 126);
INSERT INTO `sys_role_permission` VALUES (249, 1, 127);
INSERT INTO `sys_role_permission` VALUES (250, 1, 128);
INSERT INTO `sys_role_permission` VALUES (251, 1, 129);
INSERT INTO `sys_role_permission` VALUES (252, 1, 130);
INSERT INTO `sys_role_permission` VALUES (253, 1, 131);
INSERT INTO `sys_role_permission` VALUES (254, 1, 132);
INSERT INTO `sys_role_permission` VALUES (255, 1, 133);
INSERT INTO `sys_role_permission` VALUES (256, 1, 134);
INSERT INTO `sys_role_permission` VALUES (257, 1, 136);
INSERT INTO `sys_role_permission` VALUES (258, 1, 137);
INSERT INTO `sys_role_permission` VALUES (259, 1, 138);
INSERT INTO `sys_role_permission` VALUES (260, 1, 139);
INSERT INTO `sys_role_permission` VALUES (261, 1, 140);
INSERT INTO `sys_role_permission` VALUES (262, 1, 141);
INSERT INTO `sys_role_permission` VALUES (263, 1, 142);
INSERT INTO `sys_role_permission` VALUES (264, 1, 143);
INSERT INTO `sys_role_permission` VALUES (265, 1, 144);
INSERT INTO `sys_role_permission` VALUES (266, 1, 145);
INSERT INTO `sys_role_permission` VALUES (268, 1, 146);
INSERT INTO `sys_role_permission` VALUES (269, 1, 147);
INSERT INTO `sys_role_permission` VALUES (271, 2, 5);
INSERT INTO `sys_role_permission` VALUES (272, 2, 6);
INSERT INTO `sys_role_permission` VALUES (273, 2, 11);
INSERT INTO `sys_role_permission` VALUES (274, 2, 13);
INSERT INTO `sys_role_permission` VALUES (275, 2, 16);
INSERT INTO `sys_role_permission` VALUES (276, 2, 17);
INSERT INTO `sys_role_permission` VALUES (277, 2, 18);
INSERT INTO `sys_role_permission` VALUES (278, 2, 21);
INSERT INTO `sys_role_permission` VALUES (279, 2, 22);
INSERT INTO `sys_role_permission` VALUES (280, 2, 23);
INSERT INTO `sys_role_permission` VALUES (281, 2, 27);
INSERT INTO `sys_role_permission` VALUES (282, 2, 31);
INSERT INTO `sys_role_permission` VALUES (283, 2, 33);
INSERT INTO `sys_role_permission` VALUES (284, 2, 36);
INSERT INTO `sys_role_permission` VALUES (285, 2, 37);
INSERT INTO `sys_role_permission` VALUES (286, 2, 45);
INSERT INTO `sys_role_permission` VALUES (287, 2, 91);
INSERT INTO `sys_role_permission` VALUES (288, 2, 93);
INSERT INTO `sys_role_permission` VALUES (289, 2, 94);
INSERT INTO `sys_role_permission` VALUES (290, 2, 97);
INSERT INTO `sys_role_permission` VALUES (291, 2, 98);
INSERT INTO `sys_role_permission` VALUES (292, 2, 100);
INSERT INTO `sys_role_permission` VALUES (293, 2, 102);
INSERT INTO `sys_role_permission` VALUES (294, 2, 103);
INSERT INTO `sys_role_permission` VALUES (295, 2, 104);
INSERT INTO `sys_role_permission` VALUES (296, 2, 106);
INSERT INTO `sys_role_permission` VALUES (297, 2, 110);
INSERT INTO `sys_role_permission` VALUES (298, 2, 111);
INSERT INTO `sys_role_permission` VALUES (299, 2, 113);
INSERT INTO `sys_role_permission` VALUES (300, 2, 115);
INSERT INTO `sys_role_permission` VALUES (301, 2, 116);
INSERT INTO `sys_role_permission` VALUES (302, 2, 119);
INSERT INTO `sys_role_permission` VALUES (303, 2, 120);
INSERT INTO `sys_role_permission` VALUES (304, 2, 123);
INSERT INTO `sys_role_permission` VALUES (305, 2, 124);
INSERT INTO `sys_role_permission` VALUES (306, 2, 127);
INSERT INTO `sys_role_permission` VALUES (307, 2, 128);
INSERT INTO `sys_role_permission` VALUES (308, 2, 131);
INSERT INTO `sys_role_permission` VALUES (309, 2, 134);
INSERT INTO `sys_role_permission` VALUES (310, 2, 136);
INSERT INTO `sys_role_permission` VALUES (311, 2, 137);
INSERT INTO `sys_role_permission` VALUES (312, 2, 140);
INSERT INTO `sys_role_permission` VALUES (313, 2, 141);
INSERT INTO `sys_role_permission` VALUES (314, 2, 144);
INSERT INTO `sys_role_permission` VALUES (315, 2, 145);
INSERT INTO `sys_role_permission` VALUES (317, 1, 150);
INSERT INTO `sys_role_permission` VALUES (318, 1, 151);
INSERT INTO `sys_role_permission` VALUES (319, 1, 152);
INSERT INTO `sys_role_permission` VALUES (320, 1, 153);
INSERT INTO `sys_role_permission` VALUES (321, 2, 150);
INSERT INTO `sys_role_permission` VALUES (322, 1, 154);
INSERT INTO `sys_role_permission` VALUES (323, 1, 155);
INSERT INTO `sys_role_permission` VALUES (324, 1, 156);
INSERT INTO `sys_role_permission` VALUES (325, 1, 157);
INSERT INTO `sys_role_permission` VALUES (326, 2, 156);






-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` bigint NOT NULL COMMENT '角色id',
  `menu_id` bigint NOT NULL COMMENT '菜单id',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除（0：未删除，1：已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1431 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1292, 1, 29, 0);
INSERT INTO `sys_role_menu` VALUES (1295, 1, 31, 0);
INSERT INTO `sys_role_menu` VALUES (1296, 1, 32, 0);
INSERT INTO `sys_role_menu` VALUES (1297, 1, 33, 0);
INSERT INTO `sys_role_menu` VALUES (1298, 1, 34, 0);
INSERT INTO `sys_role_menu` VALUES (1299, 1, 43, 0);
INSERT INTO `sys_role_menu` VALUES (1300, 1, 35, 0);
INSERT INTO `sys_role_menu` VALUES (1301, 1, 37, 0);
INSERT INTO `sys_role_menu` VALUES (1306, 1, 1, 0);
INSERT INTO `sys_role_menu` VALUES (1307, 1, 3, 0);
INSERT INTO `sys_role_menu` VALUES (1308, 1, 64, 0);
INSERT INTO `sys_role_menu` VALUES (1310, 1, 2, 0);
INSERT INTO `sys_role_menu` VALUES (1311, 1, 23, 0);
INSERT INTO `sys_role_menu` VALUES (1312, 1, 24, 0);
INSERT INTO `sys_role_menu` VALUES (1313, 1, 25, 0);
INSERT INTO `sys_role_menu` VALUES (1314, 1, 26, 0);
INSERT INTO `sys_role_menu` VALUES (1315, 1, 27, 0);
INSERT INTO `sys_role_menu` VALUES (1316, 1, 44, 0);
INSERT INTO `sys_role_menu` VALUES (1382, 1, 30, 0);
INSERT INTO `sys_role_menu` VALUES (1384, 1, 36, 0);
INSERT INTO `sys_role_menu` VALUES (1386, 1, 39, 0);
INSERT INTO `sys_role_menu` VALUES (1392, 1, 42, 0);
INSERT INTO `sys_role_menu` VALUES (1396, 1, 68, 0);
INSERT INTO `sys_role_menu` VALUES (1398, 1, 65, 0);
INSERT INTO `sys_role_menu` VALUES (1401, 2, 29, 0);
INSERT INTO `sys_role_menu` VALUES (1402, 2, 31, 0);
INSERT INTO `sys_role_menu` VALUES (1403, 2, 32, 0);
INSERT INTO `sys_role_menu` VALUES (1404, 2, 33, 0);
INSERT INTO `sys_role_menu` VALUES (1405, 2, 34, 0);
INSERT INTO `sys_role_menu` VALUES (1406, 2, 43, 0);
INSERT INTO `sys_role_menu` VALUES (1407, 2, 35, 0);
INSERT INTO `sys_role_menu` VALUES (1408, 2, 37, 0);
INSERT INTO `sys_role_menu` VALUES (1410, 2, 1, 0);
INSERT INTO `sys_role_menu` VALUES (1411, 2, 3, 0);
INSERT INTO `sys_role_menu` VALUES (1412, 2, 64, 0);
INSERT INTO `sys_role_menu` VALUES (1413, 2, 2, 0);
INSERT INTO `sys_role_menu` VALUES (1414, 2, 23, 0);
INSERT INTO `sys_role_menu` VALUES (1415, 2, 24, 0);
INSERT INTO `sys_role_menu` VALUES (1416, 2, 25, 0);
INSERT INTO `sys_role_menu` VALUES (1417, 2, 27, 0);
INSERT INTO `sys_role_menu` VALUES (1418, 2, 44, 0);
INSERT INTO `sys_role_menu` VALUES (1420, 2, 30, 0);
INSERT INTO `sys_role_menu` VALUES (1421, 2, 36, 0);
INSERT INTO `sys_role_menu` VALUES (1422, 2, 39, 0);
INSERT INTO `sys_role_menu` VALUES (1423, 2, 42, 0);
INSERT INTO `sys_role_menu` VALUES (1424, 2, 68, 0);
INSERT INTO `sys_role_menu` VALUES (1425, 2, 65, 0);
INSERT INTO `sys_role_menu` VALUES (1427, 1, 21, 0);
INSERT INTO `sys_role_menu` VALUES (1428, 2, 21, 0);
INSERT INTO `sys_role_menu` VALUES (1429, 1, 28, 0);
INSERT INTO `sys_role_menu` VALUES (1430, 2, 28, 0);

