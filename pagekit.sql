-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2017 at 12:20 AM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pagekit`
--

-- --------------------------------------------------------

--
-- Table structure for table `pk_blog_comment`
--

CREATE TABLE IF NOT EXISTS `pk_blog_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pk_BLOG_COMMENT_AUTHOR` (`author`),
  KEY `pk_BLOG_COMMENT_CREATED` (`created`),
  KEY `pk_BLOG_COMMENT_STATUS` (`status`),
  KEY `pk_BLOG_COMMENT_POST_ID` (`post_id`),
  KEY `pk_BLOG_COMMENT_POST_ID_STATUS` (`post_id`,`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pk_blog_comment`
--

INSERT INTO `pk_blog_comment` (`id`, `parent_id`, `post_id`, `user_id`, `author`, `email`, `url`, `ip`, `created`, `content`, `status`) VALUES
(1, 0, 30, '1', 'admin', 'yg1008lj@yandex.com', '', '127.0.0.1', '2017-03-19 13:55:27', 'srqwerwer', 1),
(2, 1, 30, '1', 'admin', 'yg1008lj@yandex.com', '', '127.0.0.1', '2017-03-19 13:58:54', 'werwerwer', 1),
(3, 0, 30, '1', 'admin', 'yg1008lj@yandex.com', '', '127.0.0.1', '2017-03-19 13:58:58', 'asdfasdf', 1),
(4, 3, 30, '1', 'admin', 'yg1008lj@yandex.com', '', '127.0.0.1', '2017-03-20 16:30:54', 'sdfasdfsdaf', 1),
(5, 3, 30, '1', 'admin', 'yg1008lj@yandex.com', '', '127.0.0.1', '2017-03-20 16:31:06', 'uyweri239847239hwierhwiery 23hiweroiwe 23 29i3', 1),
(6, 5, 30, '1', 'admin', 'yg1008lj@yandex.com', '', '127.0.0.1', '2017-03-20 16:59:55', 'dsfjkhasdlfjyweoiruhwelrjewr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pk_blog_post`
--

CREATE TABLE IF NOT EXISTS `pk_blog_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `date` datetime DEFAULT NULL,
  `modified` datetime NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment_status` tinyint(1) NOT NULL DEFAULT '0',
  `comment_count` int(11) NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_BLOG_POST_SLUG` (`slug`),
  KEY `pk_BLOG_POST_TITLE` (`title`),
  KEY `pk_BLOG_POST_USER_ID` (`user_id`),
  KEY `pk_BLOG_POST_DATE` (`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `pk_blog_post`
--

INSERT INTO `pk_blog_post` (`id`, `user_id`, `slug`, `title`, `status`, `date`, `modified`, `content`, `excerpt`, `comment_status`, `comment_count`, `data`, `roles`) VALUES
(2, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered', 2, '2017-03-16 10:08:16', '2017-03-16 10:40:57', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog2.jpg","alt":""}}', NULL),
(3, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-2', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered', 2, '2017-03-16 10:40:28', '2017-03-16 10:42:17', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog3.jpg","alt":""}}', NULL),
(4, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-3', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered', 2, '2017-03-16 10:40:32', '2017-03-16 10:42:19', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog4.jpg","alt":""}}', NULL),
(5, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-4', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered', 2, '2017-03-16 10:40:32', '2017-03-16 10:42:18', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog5.jpg","alt":""}}', NULL),
(7, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-5', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered', 2, '2017-03-16 10:43:36', '2017-03-16 10:43:56', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog1.jpg","alt":""}}', NULL),
(8, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-6', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy', 2, '2017-03-17 14:30:30', '2017-03-17 14:38:33', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog1.jpg","alt":""}}', NULL),
(9, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-7', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy', 2, '2017-03-17 14:30:30', '2017-03-17 14:38:34', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog4.jpg","alt":""}}', NULL),
(10, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-8', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy', 2, '2017-03-17 14:30:30', '2017-03-17 14:38:35', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog5.jpg","alt":""}}', NULL),
(11, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-9', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy', 2, '2017-03-17 14:30:30', '2017-03-17 14:38:35', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog3.jpg","alt":""}}', NULL),
(12, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-10', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy', 2, '2017-03-17 14:30:30', '2017-03-17 14:38:36', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog2.jpg","alt":""}}', NULL),
(22, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-20', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy', 2, '2017-03-17 14:30:44', '2017-03-17 14:38:31', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog2.jpg","alt":""}}', NULL),
(23, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-11', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy - Copy', 2, '2017-03-17 14:59:10', '2017-03-17 14:59:12', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog2.jpg","alt":""}}', NULL),
(24, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-12', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy - Copy', 2, '2017-03-17 14:59:10', '2017-03-17 14:59:13', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog1.jpg","alt":""}}', NULL),
(25, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-13', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy - Copy', 2, '2017-03-17 14:59:10', '2017-03-17 14:59:14', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog4.jpg","alt":""}}', NULL),
(26, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-14', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy - Copy - Copy', 2, '2017-03-17 15:00:29', '2017-03-17 15:00:30', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog2.jpg","alt":""}}', NULL),
(27, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-15', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy - Copy - Copy', 2, '2017-03-17 15:00:29', '2017-03-17 15:00:30', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog1.jpg","alt":""}}', NULL),
(28, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-16', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy - Copy - Copy', 2, '2017-03-17 15:00:29', '2017-03-17 15:00:32', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog4.jpg","alt":""}}', NULL),
(29, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-17', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy - Copy', 2, '2017-03-17 15:00:29', '2017-03-17 15:00:32', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 0, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog2.jpg","alt":""}}', NULL),
(30, 1, 'there-are-many-variations-of-passages-of-lorem-lpsum-avaiable,-but-the-majority-have-suffered-18', 'There are many variations of passages of Lorem Lpsum avaiable, but the majority have suffered - Copy - Copy', 2, '2017-03-17 15:00:29', '2017-03-17 15:00:33', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. the point of using Lorem ipsum distribution of letters, as opposed to using ''Content here, content here'', making it look like', '', 1, 6, '{"title":null,"markdown":true,"image":{"src":"http:\\/\\/localhost\\/source\\/Vektor\\/Pagekit-blog\\/storage\\/blogs\\/blog1.jpg","alt":""}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pk_system_auth`
--

CREATE TABLE IF NOT EXISTS `pk_system_auth` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `access` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pk_system_auth`
--

INSERT INTO `pk_system_auth` (`id`, `user_id`, `access`, `status`, `data`) VALUES
('0cc3f73a0b5e915cc8f7001cc45b0391fa1347ec', 1, '2017-03-21 10:59:51', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('29f3e25b2f22c8025bff04e60aaa3903a197851b', 1, '2017-03-17 15:15:51', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('3de0423c56aeae7c4bbe602b14441dae426ebac6', 1, '2017-03-20 10:34:43', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('5902146a64fbeb00cce456a793276ab7135a20ee', 1, '2017-03-17 08:36:32', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('70f471c8f8b189159ad1a94c3a06f5be65166aad', 1, '2017-03-20 03:40:46', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('8938fc0da883dca5193ef7533c081259d3982ccf', 1, '2017-03-16 15:31:08', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('8d959ecfe43fe463aa174eb4b318f28fb326b6a1', 1, '2017-03-17 03:47:21', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('abaceb76c7bf05f829cac7dbdbe002a773e86376', 1, '2017-03-20 10:51:04', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('ae1b5b107ae6a4c77bd8a2fbd0d21fe289e8f383', 1, '2017-03-20 20:41:37', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}'),
('e6f9986ec7927697422a42ea293df67389d4f7cd', 1, '2017-03-19 20:08:07', 1, '{"ip":"127.0.0.1","user-agent":"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/54.0.2840.59 Safari\\/537.36"}');

-- --------------------------------------------------------

--
-- Table structure for table `pk_system_config`
--

CREATE TABLE IF NOT EXISTS `pk_system_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_SYSTEM_CONFIG_NAME` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `pk_system_config`
--

INSERT INTO `pk_system_config` (`id`, `name`, `value`) VALUES
(1, 'system/dashboard', '{"55dda578e93b5":{"type":"location","column":1,"idx":0,"units":"metric","id":"55dda578e93b5","uid":2911298,"city":"Hamburg","country":"DE","coords":{"lon":10,"lat":53.549999}},"55dda581d5781":{"type":"feed","column":2,"idx":0,"count":5,"content":"1","id":"55dda581d5781","title":"Pagekit News","url":"http:\\/\\/pagekit.com\\/blog\\/feed"},"55dda6e3dd661":{"type":"user","column":0,"idx":100,"show":"registered","display":"thumbnail","total":"1","count":12,"id":"55dda6e3dd661"}}'),
(2, 'system/site', '{"menus":{"main":{"id":"main","label":"Main"}},"title":"Blog","frontpage":1,"view":{"logo":"storage\\/logo.png"},"description":"","maintenance":{"enabled":false,"logo":"","msg":""},"icons":{"favicon":false,"appicon":false},"code":{"header":"","footer":""}}'),
(3, 'system', '{"admin":{"locale":"en_US"},"site":{"locale":"en_US","theme":"theme-one"},"version":"1.0.11","packages":{"blog":"1.0.3","theme-one":"1.0.0"},"extensions":["blog"]}'),
(6, 'theme-one', '{"logo_contrast":"storage\\/pagekit-logo-contrast.svg","_menus":{"main":"main","offcanvas":"main"},"_positions":{"hero":[1],"footer":[2]},"_widgets":{"1":{"title_hide":true,"title_size":"uk-panel-title","alignment":true,"html_class":"","panel":""},"2":{"title_hide":true,"title_size":"uk-panel-title","alignment":"true","html_class":"","panel":""}},"_nodes":{"1":{"title_hide":true,"title_large":false,"alignment":true,"html_class":"","sidebar_first":false,"hero_image":"storage\\/home-hero.jpg","hero_viewport":true,"hero_contrast":true,"navbar_transparent":true}},"logo_offcanvas":""}'),
(10, 'blog', '{"comments":{"autoclose":false,"autoclose_days":14,"blacklist":"","comments_per_page":20,"gravatar":true,"max_depth":5,"maxlinks":2,"minidle":120,"nested":true,"notifications":"always","order":"ASC","replymail":true,"require_email":true},"posts":{"posts_per_page":"3","comments_enabled":true,"markdown_enabled":true},"permalink":{"type":"","custom":"{slug}"},"feed":{"type":"rss2","limit":20}}');

-- --------------------------------------------------------

--
-- Table structure for table `pk_system_node`
--

CREATE TABLE IF NOT EXISTS `pk_system_node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `status` smallint(6) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(1023) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pk_system_node`
--

INSERT INTO `pk_system_node` (`id`, `parent_id`, `priority`, `status`, `title`, `slug`, `path`, `link`, `type`, `menu`, `roles`, `data`) VALUES
(1, 0, 1, 1, 'Home', 'home', '/home', '@page/1', 'page', 'main', NULL, '{"defaults":{"id":1}}'),
(2, 0, 2, 1, 'Blog', 'blog', '/blog', '@blog', 'blog', 'main', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pk_system_page`
--

CREATE TABLE IF NOT EXISTS `pk_system_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pk_system_page`
--

INSERT INTO `pk_system_page` (`id`, `title`, `content`, `data`) VALUES
(1, 'Home', '<div class="uk-width-medium-3-4 uk-container-center">\n    \n<h3 class="uk-h1 uk-margin-large-bottom">Uniting fresh design and clean code<br class="uk-hidden-small"> to create beautiful websites.</h3>\n\n<p class="uk-width-medium-4-6 uk-container-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\n\n</div>', '{"title":true}');

-- --------------------------------------------------------

--
-- Table structure for table `pk_system_role`
--

CREATE TABLE IF NOT EXISTS `pk_system_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `permissions` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_SYSTEM_ROLE_NAME` (`name`),
  KEY `pk_SYSTEM_ROLE_NAME_PRIORITY` (`name`,`priority`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pk_system_role`
--

INSERT INTO `pk_system_role` (`id`, `name`, `priority`, `permissions`) VALUES
(1, 'Anonymous', 0, NULL),
(2, 'Authenticated', 1, 'blog: post comments'),
(3, 'Administrator', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pk_system_session`
--

CREATE TABLE IF NOT EXISTS `pk_system_session` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pk_system_session`
--

INSERT INTO `pk_system_session` (`id`, `time`, `data`) VALUES
('2njtk2elh8aopkmd03alqmcnb4', '2017-03-17 15:37:05', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNmI3ZDQ4YjI5ODEwYjdhOTk1NzZiM2ZkYjgxM2NlOTE0MTlmZTRjOCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk3NjUwMjQ7czoxOiJjIjtpOjE0ODk3NTkyOTk7czoxOiJsIjtzOjE6IjAiO30='),
('2q69too8ukp8lqr2v5jaqso8e2', '2017-03-20 18:38:24', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNGQ0N2JkZDM2OGU1NGI2MDdkMDdkNGE0NzYxZmJlNzdjZjc2ZjcwZiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwMzUxMDQ7czoxOiJjIjtpOjE0OTAwMDcxOTk7czoxOiJsIjtzOjE6IjAiO30='),
('4aroqdunvvdi30re8j7mocj0v6', '2017-03-20 20:41:37', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNGQ0N2JkZDM2OGU1NGI2MDdkMDdkNGE0NzYxZmJlNzdjZjc2ZjcwZiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwNDI0OTc7czoxOiJjIjtpOjE0OTAwMDcxOTk7czoxOiJsIjtzOjE6IjAiO30='),
('4kqvke8rbup99gnhk03q9igrk7', '2017-03-17 03:47:12', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMjM5MjBkOGM3OWFmNmZiZDZkNTJmMzdkNzQxNzg2N2I4ZTcxMDgwZCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk3MjI0MzE7czoxOiJjIjtpOjE0ODk3MjIzODA7czoxOiJsIjtzOjE6IjAiO30='),
('5t6hse9a5rfqh5oflphek93js4', '2017-03-20 10:26:20', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZjEyYzBmNzNlMjkzYmIxMTZmYjU3MWI4NmY0NDUyZTBmOWI0OGU3NiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTI2ODM3MTU7czoxOiJjIjtpOjE0ODk5OTg5ODY7czoxOiJsIjtzOjE6IjAiO30='),
('5ulmrlsomvkvmgkgk8l77rn9i2', '2017-03-20 08:36:29', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZjEyYzBmNzNlMjkzYmIxMTZmYjU3MWI4NmY0NDUyZTBmOWI0OGU3NiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk5OTg5ODg7czoxOiJjIjtpOjE0ODk5OTg5ODY7czoxOiJsIjtzOjE6IjAiO30='),
('6a47ebdg7o3j8c15vkpmbgqk05', '2017-03-20 03:59:50', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNmFmZmEyZWVjMzVkMjMyNzhkYjUzODI2YTgwOGE4MzEyMGU1NDE0YiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk5ODIzODk7czoxOiJjIjtpOjE0ODk5Nzg3NDQ7czoxOiJsIjtzOjE6IjAiO30='),
('6ra9sn3bgp3nkl4qfdhnt6im52', '2017-03-21 08:54:38', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZTgyZDY2OTkzYzIwNmE5NjA2MGE4NTFlZmQxNjgwMTgyMDJhNDExNyI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwODY0Nzc7czoxOiJjIjtpOjE0OTAwODY0NzA7czoxOiJsIjtzOjE6IjAiO30='),
('72051nb3o0s586tv4qd74gabs7', '2017-03-21 14:36:29', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZTgyZDY2OTkzYzIwNmE5NjA2MGE4NTFlZmQxNjgwMTgyMDJhNDExNyI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAxMDY5ODg7czoxOiJjIjtpOjE0OTAwODY0NzA7czoxOiJsIjtzOjE6IjAiO30='),
('7o9sdl771d1rpl1s0oi6qcfj54', '2017-03-20 10:34:44', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZjEyYzBmNzNlMjkzYmIxMTZmYjU3MWI4NmY0NDUyZTBmOWI0OGU3NiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTI2ODM3MTU7czoxOiJjIjtpOjE0ODk5OTg5ODY7czoxOiJsIjtzOjE6IjAiO30='),
('96qmgi5eri6aan0pgc8pr71lb1', '2017-03-20 10:43:32', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiOGIzMmIzMzkwNmEwMzY3OGRkOTBiMTE3OTRkNTVhZDFhNmEwNjJjNCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwMDY2MTI7czoxOiJjIjtpOjE0OTAwMDYxMTc7czoxOiJsIjtzOjE6IjAiO30='),
('9vmbngvi4mcqlodhhp2r2db951', '2017-03-21 10:51:56', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZTgyZDY2OTkzYzIwNmE5NjA2MGE4NTFlZmQxNjgwMTgyMDJhNDExNyI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwOTM1MTY7czoxOiJjIjtpOjE0OTAwODY0NzA7czoxOiJsIjtzOjE6IjAiO30='),
('acdn3261fvmheimggcl17ipv27', '2017-03-20 02:59:11', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNmFmZmEyZWVjMzVkMjMyNzhkYjUzODI2YTgwOGE4MzEyMGU1NDE0YiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk5Nzg3NTA7czoxOiJjIjtpOjE0ODk5Nzg3NDQ7czoxOiJsIjtzOjE6IjAiO30='),
('ah296f96i2nprvk54abj84apm2', '2017-03-20 10:48:53', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMGY3OTY0NjU2ZTNhN2M0OWE1NjgwYzc1NjlmMDJjOTg3MGJjZjliNSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwMDY5MzI7czoxOiJjIjtpOjE0OTAwMDY2NjE7czoxOiJsIjtzOjE6IjAiO30='),
('avnmc4jiutnildv2tkmvbdvcv4', '2017-03-19 19:48:25', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZGUzNDVlNzIyMmEwYmRjZjgxZGQ2YTBmYThmYzE1YjZjYTZmODJjOCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk5NTI5MDQ7czoxOiJjIjtpOjE0ODk5MzE3MDI7czoxOiJsIjtzOjE6IjAiO30='),
('b47ckssfu7g0c4qtho880diko4', '2017-03-17 14:01:45', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNmI3ZDQ4YjI5ODEwYjdhOTk1NzZiM2ZkYjgxM2NlOTE0MTlmZTRjOCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk3NTkzMDQ7czoxOiJjIjtpOjE0ODk3NTkyOTk7czoxOiJsIjtzOjE6IjAiO30='),
('bple55992gn2t6qhiaa93badu2', '2017-03-20 02:59:04', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMzgyMDhiNWYyOWMyZTZlOWQ5YWFiY2RmMzA0MDQxYTBkNDEzYzY1MiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk5Nzg3NDQ7czoxOiJjIjtpOjE0ODk5Nzg3NDQ7czoxOiJsIjtzOjE6IjAiO30='),
('cbcu2gaotsc9klnmcnj2u4d3f3', '2017-03-20 15:55:32', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNGQ0N2JkZDM2OGU1NGI2MDdkMDdkNGE0NzYxZmJlNzdjZjc2ZjcwZiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwMjUzMzE7czoxOiJjIjtpOjE0OTAwMDcxOTk7czoxOiJsIjtzOjE6IjAiO30='),
('cgv8s2sl9t342t1iuvpra5aeq4', '2017-03-16 12:45:58', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiODE1ZTZlYzFkNzg0ODk5Y2M0YTA4ZDA2YjNkMjIzYWVlMzkzYjU2YSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk2NjgzNTc7czoxOiJjIjtpOjE0ODk2NTg3NTY7czoxOiJsIjtzOjE6IjAiO30='),
('eldvh9385jst0nh1mhr2em3582', '2017-03-17 08:36:24', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMzMzOGQ2NWIyMTU5YjU0MzA2OThiMjU2ZmU1MTY3ZjEwODhiNDYzNCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk3Mzk3ODM7czoxOiJjIjtpOjE0ODk3Mzk3NzY7czoxOiJsIjtzOjE6IjAiO30='),
('eo7i7kup8clu2e697o9hghk0s5', '2017-03-16 10:39:51', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiODE1ZTZlYzFkNzg0ODk5Y2M0YTA4ZDA2YjNkMjIzYWVlMzkzYjU2YSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk2NjA3OTE7czoxOiJjIjtpOjE0ODk2NTg3NTY7czoxOiJsIjtzOjE6IjAiO30='),
('etq5jc2e6bb61dc93j15tl4va0', '2017-03-20 08:36:27', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMmFmYmZkNWQxODljMWQ4ZGFmMDZiODM0YzVmZTI0MDcxZmYwMWJjYyI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk5OTg5ODY7czoxOiJjIjtpOjE0ODk5OTg5ODY7czoxOiJsIjtzOjE6IjAiO30='),
('flfrpsm32b50bkg0hb4t5e6k60', '2017-03-17 08:36:33', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMzMzOGQ2NWIyMTU5YjU0MzA2OThiMjU2ZmU1MTY3ZjEwODhiNDYzNCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk3Mzk3OTI7czoxOiJjIjtpOjE0ODk3Mzk3NzY7czoxOiJsIjtzOjE6IjAiO30='),
('grv394mgdmmgcv1876uktfe493', '2017-03-17 03:48:23', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMjM5MjBkOGM3OWFmNmZiZDZkNTJmMzdkNzQxNzg2N2I4ZTcxMDgwZCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk3MjI0Mzc7czoxOiJjIjtpOjE0ODk3MjIzODA7czoxOiJsIjtzOjE6IjAiO30='),
('hkuq6k4fs1csvkso86g6t1phg1', '2017-03-16 13:53:17', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiODE1ZTZlYzFkNzg0ODk5Y2M0YTA4ZDA2YjNkMjIzYWVlMzkzYjU2YSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk2NzIzOTY7czoxOiJjIjtpOjE0ODk2NTg3NTY7czoxOiJsIjtzOjE6IjAiO30='),
('i3ejvnggmcfbn9vhg0jvm6s902', '2017-03-20 16:26:17', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNGQ0N2JkZDM2OGU1NGI2MDdkMDdkNGE0NzYxZmJlNzdjZjc2ZjcwZiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwMjcxNzY7czoxOiJjIjtpOjE0OTAwMDcxOTk7czoxOiJsIjtzOjE6IjAiO30='),
('itekbavm20p4vofkniha9hodo2', '2017-03-16 10:05:57', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiODE1ZTZlYzFkNzg0ODk5Y2M0YTA4ZDA2YjNkMjIzYWVlMzkzYjU2YSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk2NTg3NTY7czoxOiJjIjtpOjE0ODk2NTg3NTY7czoxOiJsIjtzOjE6IjAiO30='),
('nf7q2q7jhr1col8hph938n6ke5', '2017-03-20 15:38:42', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNGQ0N2JkZDM2OGU1NGI2MDdkMDdkNGE0NzYxZmJlNzdjZjc2ZjcwZiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwMjQzMjE7czoxOiJjIjtpOjE0OTAwMDcxOTk7czoxOiJsIjtzOjE6IjAiO30='),
('npf2393ibc85kdmn911jlnciv2', '2017-03-20 10:51:05', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiMGY3OTY0NjU2ZTNhN2M0OWE1NjgwYzc1NjlmMDJjOTg3MGJjZjliNSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwMDcwNjQ7czoxOiJjIjtpOjE0OTAwMDY2NjE7czoxOiJsIjtzOjE6IjAiO30='),
('oqs52ldjnn7fek4caj4q9nkco5', '2017-03-20 14:23:34', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiNGQ0N2JkZDM2OGU1NGI2MDdkMDdkNGE0NzYxZmJlNzdjZjc2ZjcwZiI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0OTAwMTk4MTM7czoxOiJjIjtpOjE0OTAwMDcxOTk7czoxOiJsIjtzOjE6IjAiO30='),
('q8mshg5kjq56u09jthtts2tqs4', '2017-03-19 13:55:12', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZGUzNDVlNzIyMmEwYmRjZjgxZGQ2YTBmYThmYzE1YjZjYTZmODJjOCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk5MzE3MTE7czoxOiJjIjtpOjE0ODk5MzE3MDI7czoxOiJsIjtzOjE6IjAiO30='),
('qdi1rmkg6v7snmt3v1t5acked3', '2017-03-16 21:17:00', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiODE1ZTZlYzFkNzg0ODk5Y2M0YTA4ZDA2YjNkMjIzYWVlMzkzYjU2YSI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk2OTkwMTk7czoxOiJjIjtpOjE0ODk2NTg3NTY7czoxOiJsIjtzOjE6IjAiO30='),
('uj7rn5kgqor7d917qfv0uiqic1', '2017-03-17 14:01:38', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZThkNGVmZWMxOWRlYWQ2OGZjZDg5ZGRhYmM4Y2Y3ZWJiNTIzZDZiOCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk3NTkyOTc7czoxOiJjIjtpOjE0ODk3NTkyOTc7czoxOiJsIjtzOjE6IjAiO30='),
('vjostd5hevkd49o8dud7vu9ns7', '2017-03-19 20:57:32', 'X3NmMl9hdHRyaWJ1dGVzfGE6MTp7czo1OiJfY3NyZiI7czo0MDoiZGUzNDVlNzIyMmEwYmRjZjgxZGQ2YTBmYThmYzE1YjZjYTZmODJjOCI7fV9zZjJfZmxhc2hlc3xhOjA6e31fcGtfbWVzc2FnZXN8YToyOntzOjc6ImRpc3BsYXkiO2E6MDp7fXM6MzoibmV3IjthOjA6e319X3NmMl9tZXRhfGE6Mzp7czoxOiJ1IjtpOjE0ODk5NTcwNTE7czoxOiJjIjtpOjE0ODk5MzE3MDI7czoxOiJsIjtzOjE6IjAiO30=');

-- --------------------------------------------------------

--
-- Table structure for table `pk_system_user`
--

CREATE TABLE IF NOT EXISTS `pk_system_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '0',
  `registered` datetime NOT NULL,
  `login` datetime DEFAULT NULL,
  `activation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_SYSTEM_USER_USERNAME` (`username`),
  UNIQUE KEY `pk_SYSTEM_USER_EMAIL` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pk_system_user`
--

INSERT INTO `pk_system_user` (`id`, `name`, `username`, `email`, `password`, `url`, `status`, `registered`, `login`, `activation`, `roles`, `data`) VALUES
(1, 'admin', 'admin', 'yg1008lj@yandex.com', '$2y$10$kB70ndpuKprCXZ3O5gpM2Omg4ytRixYFaTZoT35XdYyTQir2mNEzK', '', 1, '2017-03-16 10:05:50', '2017-03-21 10:51:56', NULL, '2,3', '{"admin":{"menu":{"dashboard":0,"site":1,"blog":2,"user":3,"system: system":4,"system: marketplace":5}}}');

-- --------------------------------------------------------

--
-- Table structure for table `pk_system_widget`
--

CREATE TABLE IF NOT EXISTS `pk_system_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `nodes` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `roles` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:simple_array)',
  `data` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pk_system_widget`
--

INSERT INTO `pk_system_widget` (`id`, `title`, `type`, `status`, `nodes`, `roles`, `data`) VALUES
(1, 'Hello, I''m Pagekit', 'system/text', 1, '1', NULL, '{"content":"<h1 class=\\"uk-heading-large uk-margin-large-bottom\\">Hello, I''m Pagekit,<br class=\\"uk-hidden-small\\"> your new favorite CMS.<\\/h1>\\n\\n<a class=\\"uk-button uk-button-large\\" href=\\"http:\\/\\/www.pagekit.com\\">Get started<\\/a>"}'),
(2, 'Powered by Pagekit', 'system/text', 1, NULL, NULL, '{"content":"<ul class=\\"link uk-grid uk-grid-medium uk-flex\\">\\n    <li ><a href=\\"\\">Contact<\\/a><\\/li>\\n    <li ><a href=\\"\\">Privacy Policy<\\/a><\\/li>\\n<\\/ul>\\n<ul class=\\"socials uk-grid uk-grid-medium uk-flex uk-flex-center\\">\\n    <li><a href=\\"https:\\/\\/twitter.com\\/pagekit\\"><p class=\\"icon icon-twitter\\"><\\/p><\\/a><\\/li>\\n    <li><a href=\\"https:\\/\\/plus.google.com\\/communities\\/104125443335488004107\\"><p class=\\"icon icon-facebook\\"><\\/p><\\/a><\\/li>\\n<\\/ul>\\n"}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
