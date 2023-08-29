-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 03:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentinformation`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `aid` int(11) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `subcode` varchar(10) NOT NULL,
  `subname` varchar(30) DEFAULT NULL,
  `facultyname` varchar(30) DEFAULT NULL,
  `attpercent` float DEFAULT NULL,
  `ia1` float DEFAULT NULL,
  `ia2` float DEFAULT NULL,
  `ia3` float DEFAULT NULL,
  `assignment` float DEFAULT NULL,
  `finalia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`aid`, `usn`, `subcode`, `subname`, `facultyname`, `attpercent`, `ia1`, `ia2`, `ia3`, `assignment`, `finalia`) VALUES
(22, '4MW20CS062', '18CS51', 'ME', 'abc', 100, 29, 30, 30, 10, 40),
(23, '4MW20CS062', '18CS52', 'CNS', 'cn', 96, 25, 26, 28, 10, 37),
(24, '4MW20CS062', '18CS53', 'DBMS', 'db', 89, 27, 29, 30, 10, 39),
(25, '4MW20CS062', '18CS54', 'ATC', 'at', 95, 28, 29.5, 30, 10, 40),
(26, '4MW20CS062', '18CS55', 'ADP', 'adp', 90, 22, 30, 30, 10, 38),
(27, '4MW20CS062', '18CS56', 'USP', 'usp', 91, 29, 27, 24, 8.6, 36),
(29, '4MW20CS074', '18CS51', 'ME', 'abc', 100, 30, 29, 29, 10, 40),
(30, '4MW20CS074', '18CS52', 'CNS', 'cn', 89, 28, 21, 20, 10, 33),
(31, '4MW20CS074', '18CS53', 'DBMS', 'db', 85, 29, 24, 30, 9, 37),
(32, '4MW20CS074', '18CS54', 'ATC', 'at', 95, 25, 26, 27, 10, 36),
(33, '4MW20CS074', '18CS55', 'ADP', 'adp', 92, 20, 25, 27, 9, 33),
(34, '4MW20CS074', '18CS56', 'USP', 'usp', 88, 25, 24, 30, 8.6, 35);

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
(25, 'Can add auth group', 8, 'add_authgroup'),
(26, 'Can change auth group', 8, 'change_authgroup'),
(27, 'Can delete auth group', 8, 'delete_authgroup'),
(28, 'Can view auth group', 8, 'view_authgroup'),
(29, 'Can add auth group permissions', 9, 'add_authgrouppermissions'),
(30, 'Can change auth group permissions', 9, 'change_authgrouppermissions'),
(31, 'Can delete auth group permissions', 9, 'delete_authgrouppermissions'),
(32, 'Can view auth group permissions', 9, 'view_authgrouppermissions'),
(33, 'Can add auth permission', 10, 'add_authpermission'),
(34, 'Can change auth permission', 10, 'change_authpermission'),
(35, 'Can delete auth permission', 10, 'delete_authpermission'),
(36, 'Can view auth permission', 10, 'view_authpermission'),
(37, 'Can add auth user groups', 11, 'add_authusergroups'),
(38, 'Can change auth user groups', 11, 'change_authusergroups'),
(39, 'Can delete auth user groups', 11, 'delete_authusergroups'),
(40, 'Can view auth user groups', 11, 'view_authusergroups'),
(41, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
(42, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
(43, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
(44, 'Can view auth user user permissions', 12, 'view_authuseruserpermissions'),
(45, 'Can add django admin log', 13, 'add_djangoadminlog'),
(46, 'Can change django admin log', 13, 'change_djangoadminlog'),
(47, 'Can delete django admin log', 13, 'delete_djangoadminlog'),
(48, 'Can view django admin log', 13, 'view_djangoadminlog'),
(49, 'Can add django content type', 14, 'add_djangocontenttype'),
(50, 'Can change django content type', 14, 'change_djangocontenttype'),
(51, 'Can delete django content type', 14, 'delete_djangocontenttype'),
(52, 'Can view django content type', 14, 'view_djangocontenttype'),
(53, 'Can add django migrations', 15, 'add_djangomigrations'),
(54, 'Can change django migrations', 15, 'change_djangomigrations'),
(55, 'Can delete django migrations', 15, 'delete_djangomigrations'),
(56, 'Can view django migrations', 15, 'view_djangomigrations'),
(57, 'Can add django session', 16, 'add_djangosession'),
(58, 'Can change django session', 16, 'change_djangosession'),
(59, 'Can delete django session', 16, 'delete_djangosession'),
(60, 'Can view django session', 16, 'view_djangosession'),
(61, 'Can add auth user', 17, 'add_authuser'),
(62, 'Can change auth user', 17, 'change_authuser'),
(63, 'Can delete auth user', 17, 'delete_authuser'),
(64, 'Can view auth user', 17, 'view_authuser'),
(65, 'Can add student', 18, 'add_student'),
(66, 'Can change student', 18, 'change_student'),
(67, 'Can delete student', 18, 'delete_student'),
(68, 'Can view student', 18, 'view_student'),
(69, 'Can add auth group', 19, 'add_authgroup'),
(70, 'Can change auth group', 19, 'change_authgroup'),
(71, 'Can delete auth group', 19, 'delete_authgroup'),
(72, 'Can view auth group', 19, 'view_authgroup'),
(73, 'Can add auth group permissions', 20, 'add_authgrouppermissions'),
(74, 'Can change auth group permissions', 20, 'change_authgrouppermissions'),
(75, 'Can delete auth group permissions', 20, 'delete_authgrouppermissions'),
(76, 'Can view auth group permissions', 20, 'view_authgrouppermissions'),
(77, 'Can add auth permission', 21, 'add_authpermission'),
(78, 'Can change auth permission', 21, 'change_authpermission'),
(79, 'Can delete auth permission', 21, 'delete_authpermission'),
(80, 'Can view auth permission', 21, 'view_authpermission'),
(81, 'Can add auth user groups', 22, 'add_authusergroups'),
(82, 'Can change auth user groups', 22, 'change_authusergroups'),
(83, 'Can delete auth user groups', 22, 'delete_authusergroups'),
(84, 'Can view auth user groups', 22, 'view_authusergroups'),
(85, 'Can add auth user user permissions', 23, 'add_authuseruserpermissions'),
(86, 'Can change auth user user permissions', 23, 'change_authuseruserpermissions'),
(87, 'Can delete auth user user permissions', 23, 'delete_authuseruserpermissions'),
(88, 'Can view auth user user permissions', 23, 'view_authuseruserpermissions'),
(89, 'Can add django admin log', 24, 'add_djangoadminlog'),
(90, 'Can change django admin log', 24, 'change_djangoadminlog'),
(91, 'Can delete django admin log', 24, 'delete_djangoadminlog'),
(92, 'Can view django admin log', 24, 'view_djangoadminlog'),
(93, 'Can add django content type', 25, 'add_djangocontenttype'),
(94, 'Can change django content type', 25, 'change_djangocontenttype'),
(95, 'Can delete django content type', 25, 'delete_djangocontenttype'),
(96, 'Can view django content type', 25, 'view_djangocontenttype'),
(97, 'Can add django migrations', 26, 'add_djangomigrations'),
(98, 'Can change django migrations', 26, 'change_djangomigrations'),
(99, 'Can delete django migrations', 26, 'delete_djangomigrations'),
(100, 'Can view django migrations', 26, 'view_djangomigrations'),
(101, 'Can add django session', 27, 'add_djangosession'),
(102, 'Can change django session', 27, 'change_djangosession'),
(103, 'Can delete django session', 27, 'delete_djangosession'),
(104, 'Can view django session', 27, 'view_djangosession'),
(105, 'Can add auth user', 28, 'add_authuser'),
(106, 'Can change auth user', 28, 'change_authuser'),
(107, 'Can delete auth user', 28, 'delete_authuser'),
(108, 'Can view auth user', 28, 'view_authuser'),
(109, 'Can add student', 29, 'add_student'),
(110, 'Can change student', 29, 'change_student'),
(111, 'Can delete student', 29, 'delete_student'),
(112, 'Can view student', 29, 'view_student'),
(113, 'Can add auth group', 30, 'add_authgroup'),
(114, 'Can change auth group', 30, 'change_authgroup'),
(115, 'Can delete auth group', 30, 'delete_authgroup'),
(116, 'Can view auth group', 30, 'view_authgroup'),
(117, 'Can add auth group permissions', 31, 'add_authgrouppermissions'),
(118, 'Can change auth group permissions', 31, 'change_authgrouppermissions'),
(119, 'Can delete auth group permissions', 31, 'delete_authgrouppermissions'),
(120, 'Can view auth group permissions', 31, 'view_authgrouppermissions'),
(121, 'Can add auth permission', 32, 'add_authpermission'),
(122, 'Can change auth permission', 32, 'change_authpermission'),
(123, 'Can delete auth permission', 32, 'delete_authpermission'),
(124, 'Can view auth permission', 32, 'view_authpermission'),
(125, 'Can add auth user groups', 33, 'add_authusergroups'),
(126, 'Can change auth user groups', 33, 'change_authusergroups'),
(127, 'Can delete auth user groups', 33, 'delete_authusergroups'),
(128, 'Can view auth user groups', 33, 'view_authusergroups'),
(129, 'Can add auth user user permissions', 34, 'add_authuseruserpermissions'),
(130, 'Can change auth user user permissions', 34, 'change_authuseruserpermissions'),
(131, 'Can delete auth user user permissions', 34, 'delete_authuseruserpermissions'),
(132, 'Can view auth user user permissions', 34, 'view_authuseruserpermissions'),
(133, 'Can add django admin log', 35, 'add_djangoadminlog'),
(134, 'Can change django admin log', 35, 'change_djangoadminlog'),
(135, 'Can delete django admin log', 35, 'delete_djangoadminlog'),
(136, 'Can view django admin log', 35, 'view_djangoadminlog'),
(137, 'Can add django content type', 36, 'add_djangocontenttype'),
(138, 'Can change django content type', 36, 'change_djangocontenttype'),
(139, 'Can delete django content type', 36, 'delete_djangocontenttype'),
(140, 'Can view django content type', 36, 'view_djangocontenttype'),
(141, 'Can add django migrations', 37, 'add_djangomigrations'),
(142, 'Can change django migrations', 37, 'change_djangomigrations'),
(143, 'Can delete django migrations', 37, 'delete_djangomigrations'),
(144, 'Can view django migrations', 37, 'view_djangomigrations'),
(145, 'Can add django session', 38, 'add_djangosession'),
(146, 'Can change django session', 38, 'change_djangosession'),
(147, 'Can delete django session', 38, 'delete_djangosession'),
(148, 'Can view django session', 38, 'view_djangosession'),
(149, 'Can add student', 7, 'add_student'),
(150, 'Can change student', 7, 'change_student'),
(151, 'Can delete student', 7, 'delete_student'),
(152, 'Can view student', 7, 'view_student'),
(153, 'Can add auth user', 39, 'add_authuser'),
(154, 'Can change auth user', 39, 'change_authuser'),
(155, 'Can delete auth user', 39, 'delete_authuser'),
(156, 'Can view auth user', 39, 'view_authuser'),
(157, 'Can add marks', 40, 'add_marks'),
(158, 'Can change marks', 40, 'change_marks'),
(159, 'Can delete marks', 40, 'delete_marks'),
(160, 'Can view marks', 40, 'view_marks'),
(161, 'Can add studentloginrel', 41, 'add_studentloginrel'),
(162, 'Can change studentloginrel', 41, 'change_studentloginrel'),
(163, 'Can delete studentloginrel', 41, 'delete_studentloginrel'),
(164, 'Can view studentloginrel', 41, 'view_studentloginrel'),
(165, 'Can add attendence', 42, 'add_attendence'),
(166, 'Can change attendence', 42, 'change_attendence'),
(167, 'Can delete attendence', 42, 'delete_attendence'),
(168, 'Can view attendence', 42, 'view_attendence'),
(169, 'Can add marks', 43, 'add_marks'),
(170, 'Can change marks', 43, 'change_marks'),
(171, 'Can delete marks', 43, 'delete_marks'),
(172, 'Can view marks', 43, 'view_marks'),
(173, 'Can add studentloginrel', 44, 'add_studentloginrel'),
(174, 'Can change studentloginrel', 44, 'change_studentloginrel'),
(175, 'Can delete studentloginrel', 44, 'delete_studentloginrel'),
(176, 'Can view studentloginrel', 44, 'view_studentloginrel'),
(177, 'Can add attendence', 45, 'add_attendence'),
(178, 'Can change attendence', 45, 'change_attendence'),
(179, 'Can delete attendence', 45, 'delete_attendence'),
(180, 'Can view attendence', 45, 'view_attendence'),
(181, 'Can add marks', 46, 'add_marks'),
(182, 'Can change marks', 46, 'change_marks'),
(183, 'Can delete marks', 46, 'delete_marks'),
(184, 'Can view marks', 46, 'view_marks'),
(185, 'Can add attendence', 47, 'add_attendence'),
(186, 'Can change attendence', 47, 'change_attendence'),
(187, 'Can delete attendence', 47, 'delete_attendence'),
(188, 'Can view attendence', 47, 'view_attendence'),
(189, 'Can add studentloginrel', 48, 'add_studentloginrel'),
(190, 'Can change studentloginrel', 48, 'change_studentloginrel'),
(191, 'Can delete studentloginrel', 48, 'delete_studentloginrel'),
(192, 'Can view studentloginrel', 48, 'view_studentloginrel');

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
(8, 'pbkdf2_sha256$390000$zpcJ9XL54KI755tHqDd3lI$MtXLKEYcb3m+vc9F1yYU89WQAX4ax9Cj+WrH5VJhfZI=', '2023-02-05 18:14:44.956645', 1, 'rat', '', '', 'rathannayak300@gmail.com', 1, 1, '2023-01-13 12:55:49.332418'),
(29, 'pbkdf2_sha256$390000$YFEDjb4xqA3YD9k04fiF88$1kWODuLtkowOiZBbtYoOq7/9VCGfAwDeZAMr+x2qByc=', '2023-02-05 18:27:49.821249', 0, 'rathan', '', '', 'afs', 0, 1, '2023-02-05 18:27:35.673656'),
(41, 'pbkdf2_sha256$390000$E3LAL6QSc9QrsLqC1TmnW7$6sRrHUmh2W8NgSDIer4nIMJnNP2w7WneT0ei8rObj6M=', '2023-02-05 18:25:02.315535', 0, 'pradwin', '', '', 'pradwinmadhav6931@gmail.com', 0, 1, '2023-02-05 18:24:46.377947'),
(45, 'pbkdf2_sha256$390000$RGYzNtwBOtE7AXDusspZJq$Qb3RCn9qoTBVKiaMN/n1BbINYmh71gCIUgnr/ATVkCk=', NULL, 1, 'pradwin s', '', '', 'pradwin1234@gmail.com', 1, 1, '2023-02-03 05:01:59.012612'),
(48, 'pbkdf2_sha256$390000$5KEKD6OsHol5Hd5HxrROoA$kD0aeCzm/u5bvVLAAjaQKhybdipiY8c8cVA40UXsdFw=', '2023-02-05 18:25:38.594398', 0, 'sainath', '', '', 'sainath.20cs075@sode-edu.in ', 0, 1, '2023-02-05 10:13:08.986863');

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
(1, '2023-01-13 19:39:40.828207', '9', 'Student object (9)', 1, '[{\"added\": {}}]', 7, 8),
(2, '2023-01-13 19:47:23.418009', '9', '4MW20CS067', 2, '[{\"changed\": {\"fields\": [\"Usn\"]}}]', 7, 8),
(3, '2023-01-13 19:47:36.651093', '9', '4MW20CS066', 2, '[{\"changed\": {\"fields\": [\"Usn\"]}}]', 7, 8),
(4, '2023-01-14 12:29:22.387286', '10', '4MW20CS075', 1, '[{\"added\": {}}]', 7, 8),
(5, '2023-01-16 06:35:58.311299', '14', '4MW20CS074', 1, '[{\"added\": {}}]', 7, 8),
(6, '2023-01-16 06:36:25.330731', '12', '4MW20CS066', 1, '[{\"added\": {}}]', 7, 8),
(7, '2023-01-16 06:39:45.585460', '16', '4MW20CS066', 1, '[{\"added\": {}}]', 7, 8),
(8, '2023-01-16 06:42:45.387461', '16', '4MW20CS066', 1, '[{\"added\": {}}]', 7, 8),
(9, '2023-01-16 06:46:03.383561', '16', '4MW20CS066', 1, '[{\"added\": {}}]', 7, 8),
(10, '2023-01-16 06:50:32.376767', '16', '4MW20CS066', 1, '[{\"added\": {}}]', 7, 8),
(11, '2023-01-16 06:53:49.907757', '13', '4MW20CS075', 1, '[{\"added\": {}}]', 7, 8),
(12, '2023-01-16 06:56:21.792378', '13', '4MW20CS075', 1, '[{\"added\": {}}]', 7, 8);

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
(47, 'facultyapp', 'attendence'),
(30, 'facultyapp', 'authgroup'),
(31, 'facultyapp', 'authgrouppermissions'),
(32, 'facultyapp', 'authpermission'),
(39, 'facultyapp', 'authuser'),
(33, 'facultyapp', 'authusergroups'),
(34, 'facultyapp', 'authuseruserpermissions'),
(35, 'facultyapp', 'djangoadminlog'),
(36, 'facultyapp', 'djangocontenttype'),
(37, 'facultyapp', 'djangomigrations'),
(38, 'facultyapp', 'djangosession'),
(46, 'facultyapp', 'marks'),
(7, 'facultyapp', 'student'),
(48, 'facultyapp', 'studentloginrel'),
(6, 'sessions', 'session'),
(45, 'studentapp', 'attendence'),
(19, 'studentapp', 'authgroup'),
(20, 'studentapp', 'authgrouppermissions'),
(21, 'studentapp', 'authpermission'),
(28, 'studentapp', 'authuser'),
(22, 'studentapp', 'authusergroups'),
(23, 'studentapp', 'authuseruserpermissions'),
(24, 'studentapp', 'djangoadminlog'),
(25, 'studentapp', 'djangocontenttype'),
(26, 'studentapp', 'djangomigrations'),
(27, 'studentapp', 'djangosession'),
(43, 'studentapp', 'marks'),
(29, 'studentapp', 'student'),
(44, 'studentapp', 'studentloginrel'),
(42, 'welcomeapp', 'attendence'),
(8, 'welcomeapp', 'authgroup'),
(9, 'welcomeapp', 'authgrouppermissions'),
(10, 'welcomeapp', 'authpermission'),
(17, 'welcomeapp', 'authuser'),
(11, 'welcomeapp', 'authusergroups'),
(12, 'welcomeapp', 'authuseruserpermissions'),
(13, 'welcomeapp', 'djangoadminlog'),
(14, 'welcomeapp', 'djangocontenttype'),
(15, 'welcomeapp', 'djangomigrations'),
(16, 'welcomeapp', 'djangosession'),
(40, 'welcomeapp', 'marks'),
(18, 'welcomeapp', 'student'),
(41, 'welcomeapp', 'studentloginrel');

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
(1, 'contenttypes', '0001_initial', '2023-01-12 08:17:40.828952'),
(2, 'auth', '0001_initial', '2023-01-12 08:17:41.659868'),
(3, 'admin', '0001_initial', '2023-01-12 08:17:41.912393'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-12 08:17:41.958254'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-12 08:17:41.971350'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-12 08:17:42.058349'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-12 08:17:42.115864'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-12 08:17:42.146846'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-12 08:17:42.154911'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-12 08:17:42.208512'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-12 08:17:42.212846'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-12 08:17:42.222902'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-12 08:17:42.249865'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-12 08:17:42.279222'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-12 08:17:42.307031'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-12 08:17:42.316122'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-12 08:17:42.335699'),
(18, 'sessions', '0001_initial', '2023-01-12 08:17:42.375631'),
(19, 'facultyapp', '0001_initial', '2023-01-13 19:23:57.696036'),
(20, 'studentapp', '0001_initial', '2023-01-13 19:23:57.718168'),
(21, 'welcomeapp', '0001_initial', '2023-01-13 19:23:57.748009'),
(22, 'facultyapp', '0002_attendence_marks_studentloginrel', '2023-01-17 16:19:52.730954'),
(23, 'studentapp', '0002_attendence_marks_studentloginrel', '2023-01-17 16:19:52.754158'),
(24, 'welcomeapp', '0002_attendence_marks_studentloginrel', '2023-01-17 16:19:52.768167');

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
('4nt2dlg6qzmm961lyc01h54a8rr9vyh8', '.eJxVjDsOwjAQBe_iGlkb_01JnzNY67WNA8iR4qRC3J1ESgHtzLz3ZgG3tYat5yVMiV2Z0OzyCyPSM7fDpAe2-8xpbusyRX4k_LSdj3PKr9vZ_h1U7HVfK3KASAPmJMlZKYosEaxWoI00CnwGUYwpQkHeAUQrnfKJRPSDBY_s8wX8mDc-:1pHVOs:XJp0vrG_COnEI4mqHUMDZj5a6LgiPbROWciw606nxb8', '2023-01-30 19:44:10.468682'),
('7avb90p6i04f9mz5t5u22vhgdult04a9', '.eJxVjMsOwiAQRf-FtSGAPF267zeQYRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZhdm2Ol3S4APajvId2i3zrG3dZkT3xV-0MGnnul5Pdy_gwqjfmtrdHEkkwdS2mPQQUulBDnyNoBTaKSjIlCBxXPO0gIYCsIWki54J9j7A9asN4c:1pHJpa:41g166fCUvUYP6-OyuX76ON6eMXhBb0T_IfnpwMzIxo', '2023-01-30 07:22:58.577992'),
('dyyttawpyvwnyba0be71h822x8zwaff8', '.eJxVjEEOwiAQRe_C2pDCQHFcuvcMZGBAqgaS0q6MdzckXej2v_f-W3jat-L3nla_sLgIZcTpdwwUn6kOwg-q9yZjq9u6BDkUedAub43T63q4fweFehk15uQMEWmtsgqKABidNhrA6uBIGeNsQM7OTmebokV2lOKEALOdM4rPFwSTN6w:1pHKSC:r0m5BNGlXQ5ElUzg7IOTkBKyUOE58EzamTj1yJmYzms', '2023-01-30 08:02:52.026529'),
('gwpxezojmlawjt2i027kl19jnvjr1t3h', '.eJxVjMsOwiAQRf-FtSEw0AFcuvcbyPCSqoGktCvjv2uTLnR7zzn3xTxta_XbyIufEzszcOz0OwaKj9x2ku7Ubp3H3tZlDnxX-EEHv_aUn5fD_TuoNOq3LpKCcHZSE8qsiojFaQxorYhWo4FkpS6ZHChFSSQgA0ZSdAFQaRSGvT_32zdM:1pIpK8:_pCreg-88prZlDUIFBJj5eS2wWi6Kblq10kmYp1m6Eo', '2023-02-03 11:12:44.627485'),
('xpzyh43p0imnh70pwycr1zli1thpcauk', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w1kgBmpGkhKuzL-uzbpQrf3nHNfLMK21rgNXOJc2JmpwE6_Y4L8wLaTcod26zz3ti5z4rvCDzr4tRd8Xg7376DCqN_agxZKmZAJjRRJB-ftFLzOiEoaQjRGuKJB-AkDaiNBkhfZWSJnHRF7fwDw2Te-:1pI9Rl:_Z4vpjQxeUhHlVgrKEc38TzP2KLWUiaYbsLd8-4ruYc', '2023-02-01 14:29:49.722368'),
('y8hjm4nigfae74xe7m78593m4nrx5v80', '.eJxVjDsOwjAQBe_iGln-fyjpOYO13rVxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7MxUZKffMQM-St8J3aHfZo5zX5cp813hBx38OlN5Xg7376DBaN8alYOgMMSqURSvlZNRyyhJV7DVBDRkNSjrsgXKAouuBUX2xgqqHit7fwAHjTiV:1pOjjx:qx2S7D5nAM1CM7CdLKBcVH0SGKAMoLbrTSavbT7dHeA', '2023-02-19 18:27:49.840870');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mid` int(11) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `totalmarks` int(11) DEFAULT NULL,
  `obtmarks` int(11) DEFAULT NULL,
  `sgpa` float DEFAULT NULL,
  `backlogs` int(11) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mid`, `usn`, `totalmarks`, `obtmarks`, `sgpa`, `backlogs`, `sem`) VALUES
(10, '4MW20CS062', 800, 731, 9.7, 0, 1),
(11, '4MW20CS062', 800, 751, 10, 0, 2),
(12, '4MW20CS074', 800, 710, 9.5, 0, 1),
(15, '4MW20CS062', 900, 709, 8.29, 0, 3),
(16, '4MW20CS062', 900, 755, 8.54, 0, 4),
(17, '4MW20CS074', 800, 730, 9.7, 0, 2),
(18, '4MW20CS074', 900, 650, 8, 0, 3),
(19, '4MW20CS074', 900, 700, 8.1, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usn` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `dob` date NOT NULL,
  `branch` varchar(20) NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `name`, `age`, `dob`, `branch`, `sem`) VALUES
('4MW20CS062', 'Rathan R Nayak', 19, '2003-04-11', 'cse', 5),
('4MW20CS074', 'Sherigar Pradwin Madhava', 20, '2002-05-04', 'cse', 5),
('4MW20CS075', 'Shetty Sainath Bhaskar', 21, '2002-05-07', 'cse', 3);

-- --------------------------------------------------------

--
-- Table structure for table `studentloginrel`
--

CREATE TABLE `studentloginrel` (
  `id` int(11) NOT NULL,
  `usn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentloginrel`
--

INSERT INTO `studentloginrel` (`id`, `usn`) VALUES
(29, '4MW20CS062'),
(41, '4MW20CS074'),
(48, '4MW20CS075');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`aid`,`usn`,`subcode`),
  ADD KEY `usn` (`usn`);

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
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mid`,`usn`),
  ADD KEY `usn` (`usn`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`usn`);

--
-- Indexes for table `studentloginrel`
--
ALTER TABLE `studentloginrel`
  ADD PRIMARY KEY (`id`,`usn`),
  ADD KEY `usn` (`usn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendence`
--
ALTER TABLE `attendence`
  ADD CONSTRAINT `attendence_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`) ON DELETE CASCADE;

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

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`) ON DELETE CASCADE;

--
-- Constraints for table `studentloginrel`
--
ALTER TABLE `studentloginrel`
  ADD CONSTRAINT `studentloginrel_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`) ON DELETE CASCADE,
  ADD CONSTRAINT `studentloginrel_ibfk_2` FOREIGN KEY (`id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
