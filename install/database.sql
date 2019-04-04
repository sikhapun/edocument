-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2019 at 09:45 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




-- --------------------------------------------------------
--
-- Table structure for table `{prefix}_language`
--

CREATE TABLE `{prefix}_language` (
  `id` int(11) NOT NULL,
  `key` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `js` tinyint(1) NOT NULL,
  `th` text COLLATE utf8_unicode_ci,
  `en` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_edocument`
--

CREATE TABLE `{prefix}_edocument` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_id` int(11) UNSIGNED NOT NULL,
  `reciever` text COLLATE utf8_unicode_ci NOT NULL,
  `last_update` int(11) UNSIGNED NOT NULL,
  `document_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `size` double UNSIGNED NOT NULL,
  `file` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
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
-- Table structure for table `{prefix}_edocument_download`
--

CREATE TABLE `{prefix}_edocument_download` (
  `id` int(11) UNSIGNED NOT NULL,
  `document_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `downloads` int(10) UNSIGNED NOT NULL,
  `last_update` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `{prefix}_user`
--

CREATE TABLE `{prefix}_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `permission` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinceID` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visited` int(11) UNSIGNED DEFAULT 0,
  `lastvisited` int(11) DEFAULT 0,
  `session_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `social` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `{prefix}_user`
--

INSERT INTO `{prefix}_user` (`id`, `username`, `salt`, `password`, `token`, `status`, `permission`, `name`, `sex`, `id_card`, `address`, `phone`, `provinceID`, `zipcode`, `visited`, `lastvisited`, `session_id`, `ip`, `create_date`, `active`, `social`) VALUES
(1, 'admin@localhost', '5c218d7d9ea4b', '6a397c750a3046e8b9873e9b7dd517bd070ba79c', NULL, 1, ',can_config,can_manage_room,can_approve_room,', 'แอดมิน', 'm', '', '1 หมู่ 1 ตำบล ลาดหญ้า อำเภอ เมือง', '08080808', '102', '71190', 0, 0, '', '::1', NOW(), 1, 0),
(2, 'demo@localhost', '5c13b4c610781', 'd61303ebed15f6448dd3ebadd7e416b5350b4d1d', NULL, 0, '', 'ตัวอย่าง', 'f', '', '', '0123456788', '102', '', 0, 0, '', '::1', NOW(), 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `{prefix}_edocument`
--
ALTER TABLE `{prefix}_edocument`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `{prefix}_language`
--
ALTER TABLE `{prefix}_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `{prefix}_edocument_download`
--
ALTER TABLE `{prefix}_edocument_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `{prefix}_user`
--
ALTER TABLE `{prefix}_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `{prefix}_edocument`
--
ALTER TABLE `{prefix}_edocument`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `{prefix}_edocument_download`
--
ALTER TABLE `{prefix}_edocument_download`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `{prefix}_language`
--
ALTER TABLE `{prefix}_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `{prefix}_user`
--
ALTER TABLE `{prefix}_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;