-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- โฮสต์: localhost
-- เวอร์ชั่นของเซิร์ฟเวอร์: 5.1.73-log
-- รุ่นของ PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `{prefix}_edocument`
--

CREATE TABLE `{prefix}_edocument` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `reciever` text COLLATE utf8_unicode_ci NOT NULL,
  `last_update` int(11) UNSIGNED NOT NULL,
  `document_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `size` double UNSIGNED NOT NULL,
  `file` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `{prefix}_edocument`
--

INSERT INTO `{prefix}_edocument` (`id`, `sender_id`, `reciever`, `last_update`, `document_no`, `detail`, `topic`, `ext`, `size`, `file`, `ip`) VALUES
(1, 1, ',0,1,2,', 1500739418, '0001', 'ไฟล์ทดสอบการส่งเอกสาร', 'ERP07-08-How-It-Work-Sample', 'pdf', 1112035, '1500562268.pdf', '110.171.14.193'),
(2, 1, ',0,1,2,', 1500793117, '0002', 'ทดสอบการส่งโดยสมาชิก', 'ตำแหน่งในภาษาอังกฤษ', 'pdf', 445657, '1500563400.pdf', '27.145.96.29'),
(3, 2, ',0,', 1500807147, 'ที่ ศธ1234/0004', 'ทดสอบอัปโหลดรูปภาพ', 'sea2', 'jpg', 426987, '1500563930.jpg', '171.6.192.253');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `{prefix}_edocument_download`
--

CREATE TABLE `{prefix}_edocument_download` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `document_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `downloads` int(10) UNSIGNED NOT NULL,
  `last_update` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- โครงสร้างตาราง `{prefix}_user`
--

CREATE TABLE `{prefix}_user` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `permission` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinceID` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visited` int(11) UNSIGNED DEFAULT '0',
  `lastvisited` int(11) DEFAULT '0',
  `session_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `social` tinyint(1) NOT NULL DEFAULT '0',
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- dump ตาราง `{prefix}_user`
--

INSERT INTO `{prefix}_user` (`id`, `username`, `salt`, `password`, `status`, `permission`, `name`, `sex`, `id_card`, `address`, `phone`, `provinceID`, `zipcode`, `visited`, `lastvisited`, `session_id`, `ip`, `create_date`) VALUES
(1, 'admin@localhost', 'admin@localhost', 'b620e8b83d7fcf7278148d21b088511917762014', 1, ',can_config,can_handle_all_edocument,can_upload_edocument,', 'แอดมิน', 'm', '', '1 หมู่ 1 ตำบล ลาดหญ้า อำเภอ เมือง', '08080808', '102', '71190', 138, 1500887470, '', '', '0000-00-00 00:00:00'),
(2, 'demo@localhost', 'demo@localhost', 'db75cdf3d5e77181ec3ed6072b56a8870eb6822d', 2, ',can_upload_edocument,', 'ช่างซ่อม 1', 'f', '', '', '0123456788', '101', '', 83, 1500887481, '', '', '2017-07-02 08:10:30');
