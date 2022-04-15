-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 01:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$Y1oLBP0cbhGC4f6lnAqoHD$Qi2BgRSvVsr9v2YyvbnRUCel84lXQQ4dr6uUzDBz3sk=', '2022-03-11 11:14:41.907530', 1, 'anhvu', '', '', 'theanhvu06@gmail.com', 1, 1, '2022-03-05 02:11:02.587593');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-03-05 03:16:00.541441', '1', 'Bia,10000,bia ha noi', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-03-05 03:16:51.922821', '1', 'Bia,10000,bia ha noi', 2, '[]', 7, 1),
(3, '2022-03-05 03:17:16.282936', '2', 'Máy tính,25000000,lap top DELL', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-03-05 03:17:52.801237', '3', 'Điện thoại IP 13,33000000,Hãng Apple', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-03-05 03:18:11.604554', '1', 'Bia Sài Gòn,10000,bia ha noi', 2, '[{\"changed\": {\"fields\": [\"Ten\"]}}]', 7, 1),
(6, '2022-03-05 03:18:37.566105', '4', 'Nồi cơm điện,1000000,Hàng Nhật Bản', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-03-11 09:09:56.145126', '4', 'Nồi cơm điện,1000000,Hàng Nhật Bản,images/cachlicovid.png', 2, '[{\"changed\": {\"fields\": [\"Anh\"]}}]', 7, 1),
(8, '2022-03-11 11:20:30.035036', '10', 'anh,1,s,images/cachlicovid_dWvccPi.png', 3, '', 7, 1),
(9, '2022-03-11 11:20:30.038996', '9', 'anh,1,s,images/cachlicovid_AvGdiHl.png', 3, '', 7, 1),
(10, '2022-03-11 11:20:30.041859', '8', 'địa lý,11,a,images/anh.jpg', 3, '', 7, 1),
(11, '2022-03-11 11:20:30.046974', '7', 'lịch sử 1,22,aaaaaaa,images/dk2.jpg', 3, '', 7, 1),
(12, '2022-03-11 11:20:30.049221', '6', 'khoa học,1,a,images/cc2.jpg', 3, '', 7, 1),
(13, '2022-03-11 11:20:47.687606', '3', 'Điện thoại IP 13,33000000,Hãng Apple,images/tải_xuống.jpg', 2, '[{\"changed\": {\"fields\": [\"Anh\"]}}]', 7, 1),
(14, '2022-03-11 11:20:54.230293', '2', 'Máy tính,25000000,lap top DELL,images/huấn_rose.jpg', 2, '[{\"changed\": {\"fields\": [\"Anh\"]}}]', 7, 1),
(15, '2022-03-11 11:21:05.048092', '1', 'Bia Sài Gòn,10000,bia ha noi,images/243741740_3070205899908162_2333297010107410340_n.jpg', 2, '[{\"changed\": {\"fields\": [\"Anh\"]}}]', 7, 1),
(16, '2022-03-13 02:28:20.332016', '1', 'Điện thoại,điện thoại thông minh', 1, '[{\"added\": {}}]', 8, 1),
(17, '2022-03-13 02:28:38.628341', '2', 'Máy tính,pc, laptop, tablet', 1, '[{\"added\": {}}]', 8, 1),
(18, '2022-03-13 02:28:54.073875', '3', 'Phụ kiện,các loại phụ kiện', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'product', 'category'),
(7, 'product', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-03-05 02:02:58.076590'),
(2, 'auth', '0001_initial', '2022-03-05 02:02:58.661453'),
(3, 'admin', '0001_initial', '2022-03-05 02:02:58.791009'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-05 02:02:58.798988'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-05 02:02:58.810031'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-05 02:02:58.874613'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-05 02:02:58.930514'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-05 02:02:58.952452'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-05 02:02:58.962052'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-05 02:02:59.011118'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-05 02:02:59.014062'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-05 02:02:59.023038'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-05 02:02:59.042024'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-05 02:02:59.062931'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-05 02:02:59.085499'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-05 02:02:59.095474'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-05 02:02:59.112428'),
(18, 'sessions', '0001_initial', '2022-03-05 02:02:59.205063'),
(19, 'product', '0001_initial', '2022-03-05 02:52:14.002768'),
(20, 'product', '0002_product_anh', '2022-03-11 09:08:45.005304'),
(21, 'product', '0003_category', '2022-03-13 02:25:58.769329'),
(22, 'product', '0004_product_cate_id', '2022-03-13 02:32:40.073227');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6x8diti40lyf7nhfcdepd00pb9nzfz3w', '.eJxVjDsOwjAQBe_iGlnZzcYfSvqcIdp1bBxAtpRPhbg7iZQC2pl5760G3tY8bEuch2lUVwXq8suEwzOWQ4wPLveqQy3rPIk-En3aRfd1jK_b2f4dZF7yvjbICYgMWiAmIICuJXTS7DC5piNpxRiLrkuBPBiMyXtP4i0ySiL1-QKUXzYi:1nQJt4:2m5qFmflg1e6FcEkKRmosKX3NzxNLgIUXllrH7Yz-vY', '2022-03-19 02:11:14.133797'),
('khymumb91zh4pzzekf82mxhsh0lgpy4g', '.eJxVjDsOwjAQBe_iGlnZzcYfSvqcIdp1bBxAtpRPhbg7iZQC2pl5760G3tY8bEuch2lUVwXq8suEwzOWQ4wPLveqQy3rPIk-En3aRfd1jK_b2f4dZF7yvjbICYgMWiAmIICuJXTS7DC5piNpxRiLrkuBPBiMyXtP4i0ySiL1-QKUXzYi:1nSdEH:Rjl-0bV88pr6pUYhiPJUjPt71Cy4rKch57BUjwYJ3Os', '2022-03-25 11:14:41.912069');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `ten`, `mota`) VALUES
(1, 'Điện thoại', 'điện thoại thông minh'),
(2, 'Máy tính', 'pc, laptop, tablet'),
(3, 'Phụ kiện', 'các loại phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

CREATE TABLE `product_product` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `gia` varchar(30) NOT NULL,
  `mota` varchar(30) NOT NULL,
  `anh` varchar(100) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `ten`, `gia`, `mota`, `anh`, `cate_id`) VALUES
(2, 'Máy tính', '25000000', 'lap top DELL', 'images/a.jpg', 2),
(3, 'Điện thoại IP 13 promax', '330000051', 'Hãng Apple xin', 'images/Táo_9NfhUWN.png', 1),
(17, 'Tai nghe', '1500000', 'tai nghe iphone', 'images/243741740_3070205899908162_2333297010107410340_n_yYCePcu.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_product`
--
ALTER TABLE `product_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_product`
--
ALTER TABLE `product_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
