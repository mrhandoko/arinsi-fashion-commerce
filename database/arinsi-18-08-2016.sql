-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2016 at 01:36 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `so-shoppystore`
--
DROP DATABASE `so-shoppystore`;
CREATE DATABASE IF NOT EXISTS `so-shoppystore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `so-shoppystore`;

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 2, 'nga', 'nt', 'youtech', 'thai ha', 'ha noi', 'ha noi', '12345', 230, 3776, ''),
(5, 7, 'Hoang', 'David', 'YouTech Company', 'Nguyen Phuc Lai - Ha Noi', '', 'Ha Noi', '04084', 230, 3776, ''),
(6, 8, 'nguyen', 'phuong', '', 'fksajdhfxcjkfmsd', '', 'faiusdzkxjfmkc,ád', '1500', 211, 3271, ''),
(7, 9, 'nguyen', 'hoa', 'vbb', 'bhnb', 'bbbbn', 'bnn', '92126', 38, 603, ''),
(8, 10, 'Tinh', 'Manh', '', 'ha noi', '', 'ha noi', '1000000', 222, 3527, ''),
(9, 11, 'phuong', 'phuong', 'skdjhfikajd,', 'fksjdxhfik', 'kfjaskdjfm', 'filkjasdxmfk,', '15000', 214, 3302, ''),
(10, 12, 'nguyen', 'phuong', 'csdhfixckj', 'jhnskdzx,fjm,', 'kfjsdnkf,j,m', 'kk,sdxjmc', '15000', 8, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'API Sample', 'N1ALWc1fDjhvQQ5RJCJ48zTIUTQfLSL34rPerQIueFoyzZ6cZaREMtNKIfF5YkiMMy1X5h76cVE6bS4xXSbSmkwY2mGONO568rNVMVVPBD6rRyCzDdHtLOANOZ0ucM2ww8DtQPlyJFEEXhJst8IbZVBGTCuOUMwsYTOehrv42qJwKxwEGmB24vdoXzkqbnddB3zuX6C1f1z7NFmIwsjDbtxUwPth2vb3mSPRdWWuMqtJwiP5ReaZeLnYg7Rgizg5', 1, '2015-12-23 14:53:48', '2015-12-23 14:55:15'),
(2, 'Default', 'SHA4sHFTa224gdhSE9bdVuwzVZTmKS00UPx29LLqgo5dG746frJnEes2ienxCLNc4n0FtoQyKqVYn7nImvUdmyjVAAwA9YTZ0RC6G57QL2hZPh7PpGuvTAe7IuQV4HkEN0205inl1xbl9w424PBaQRfFkZpDspFQy0HOI91cuWsDbuQ8N0X5xjq6l7ayeTwTrEwdINNKCMEEteL6DhyWmDyCmkj1jzA0mrh2zaor3cEUH0sGLmCrlDLyLGwbwkW7', 1, '2015-12-29 10:53:59', '2015-12-29 10:53:59'),
(3, 'Default', '713pIlNnZkJveKDiffs6PtXqZ8fkq41oDs7ACxZh2we3qi0CxfbTwiQIJdWeWjJkoPzhtoTgmAoYXIFlvH5C34YEHjZQVZLf7a4oJtvvW283jRIXRLjuwLXwIEiklKBvevfTVLy3CUtqR8J6mCIAGe9ngSy6b3bZbigvhSWajDdwDDkwCh4RSkQwgrwq0roS8xsSgqeRpqxgi95NTCKs4LLc7Rep7K4ZCmptwQBFDu8DBxhbQtPh4ZiXBcabGPgF', 1, '2015-12-30 02:07:00', '2015-12-30 02:07:00'),
(4, 'Default', 'ynsfXKBznEaDJbhG8z2iSl93F8livCxBoU55PBjv96pB10oJxNxmc3ylE7ltJo2szLuSnsWwhLyu0VKQBYyt2Fgp1kMfUC10GRzTwZUkiuzV5uIBIFFqpRIVQ9szGl1y69dRPXSOvCh32YlLjsEgFBjfOYbB9OnSoTkNNnFmIeDmtJdLwmZqO6qMplMj3mxpc8vK1jpi8omlMstV0wJRXaeUGsT51Rw3HZFj4qnuShwqeoCTWCnIQOHT4VdRgA8C', 1, '2016-08-10 06:51:25', '2016-08-10 06:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(2, 1, '::1'),
(3, 1, '192.168.1.43');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(1, 1, 'JBJbOTbWrHKEpG3tFU9g0AbVxVeq7jH9', '9v4s1rc71hn0m7o7tjm6lsbo15', 'temp_session_567a5340cfbba', '::1', '2015-12-23 14:54:29', '2015-12-23 14:54:38'),
(2, 1, 'TGiwZ4EdTepR1ymMQWyDXfReTrZi1XwM', '9v4s1rc71hn0m7o7tjm6lsbo15', 'temp_session_567a5374421cc', '::1', '2015-12-23 14:55:19', '2015-12-23 14:55:19'),
(3, 1, 'wzKkpbvQDAGrYn7yAsxtL7iRfTT2ldRL', '9v4s1rc71hn0m7o7tjm6lsbo15', 'temp_session_567a53755791f', '::1', '2015-12-23 14:55:20', '2015-12-23 14:55:27'),
(4, 1, 'ld0TjrMZsD7UskCj2OrwQeq8DITzJqBL', '9v4s1rc71hn0m7o7tjm6lsbo15', 'temp_session_567a537dca3fd', '::1', '2015-12-23 14:55:28', '2015-12-23 14:55:33'),
(5, 1, 'C3hsIElYkBP91HOwsyi4vf0P1zgm5rZE', '9v4s1rc71hn0m7o7tjm6lsbo15', 'temp_session_567a538353475', '::1', '2015-12-23 14:55:34', '2015-12-23 14:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(7, 'Slideshow Home 2', 1),
(10, 'Home Page Slideshow', 1),
(11, 'Slideshow Home 3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1052 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(1050, 7, '#', 'catalog/demo/banners/03-1920x559.jpg', 0),
(1049, 7, '#', 'catalog/demo/banners/02-1920x559.jpg', 0),
(1048, 10, '#', 'catalog/demo/banners/slider-3.jpg', 0),
(1047, 10, '#', 'catalog/demo/banners/slider-2.jpg', 0),
(1046, 10, '#', 'catalog/demo/banners/slider-1.jpg', 0),
(1045, 11, '#', 'catalog/demo/banners/sl31.jpg', 0),
(1044, 11, '#', 'catalog/demo/banners/sl32.jpg', 0),
(1043, 11, '#', 'catalog/demo/banners/sl33.jpg', 0),
(1051, 7, '#', 'catalog/demo/banners/01-1920x559.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(1051, 2, 7, 'slider1'),
(1051, 1, 7, 'slider1'),
(1050, 2, 7, 'slider3'),
(1050, 1, 7, 'slider3'),
(1049, 2, 7, 'slider2'),
(1049, 1, 7, 'slider2'),
(1048, 2, 10, 'slider3'),
(1048, 1, 10, 'slider3'),
(1047, 2, 10, 'slider2'),
(1047, 1, 10, 'slider2'),
(1046, 2, 10, 'slider1'),
(1046, 1, 10, 'slider1'),
(1045, 2, 11, 'Banner 1'),
(1045, 1, 11, 'Banner 1'),
(1044, 2, 11, 'Banner 2'),
(1044, 1, 11, 'Banner 2'),
(1043, 2, 11, 'Banner 3'),
(1043, 1, 11, 'Banner 3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(6, 6, 'm2jv1adsaimotc352mn4bu5ia0', 44, 0, '[]', 2, '2015-11-06 09:27:19'),
(11, 6, 'm2jv1adsaimotc352mn4bu5ia0', 36, 0, '{"235":"41"}', 5, '2015-12-14 16:42:26'),
(35, 8, 'ju5neord1qlo4hmfrqgnpm48u1', 46, 0, '[]', 1, '2015-12-24 09:53:33'),
(52, 9, '854m7f4sedb343i6camv5p4g04', 50, 0, '[]', 1, '2015-12-25 16:28:51'),
(53, 9, '854m7f4sedb343i6camv5p4g04', 82, 0, '[]', 2, '2015-12-25 16:28:51'),
(96, 11, '8r5nbr1pvio6u49qi6a6f64093', 43, 0, '[]', 1, '2015-12-28 11:48:33'),
(97, 11, '8r5nbr1pvio6u49qi6a6f64093', 50, 0, '[]', 1, '2015-12-28 11:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/category/sports-outdoors.jpg', 0, 0, 4, 3, 1, '2009-01-31 01:04:25', '2015-12-22 10:46:44'),
(27, '', 20, 0, 4, 2, 1, '2009-01-31 01:55:34', '2015-12-22 10:44:41'),
(20, 'catalog/category/jewelry-watches.jpg', 0, 1, 4, 1, 1, '2009-01-05 21:49:43', '2015-12-22 10:44:12'),
(24, 'catalog/category/health-beauty.jpg', 0, 0, 4, 5, 1, '2009-01-20 02:36:26', '2015-12-22 10:43:17'),
(18, 'catalog/category/electronics.jpg', 0, 1, 4, 2, 1, '2009-01-05 21:49:15', '2015-12-22 10:42:06'),
(17, 'catalog/category/bags-holiday-supplies-gifts.jpg', 0, 1, 4, 4, 1, '2009-01-03 21:08:57', '2015-12-22 10:39:43'),
(28, '', 25, 0, 4, 1, 1, '2009-02-02 13:11:12', '2015-12-22 10:47:38'),
(26, '', 20, 0, 4, 1, 1, '2009-01-31 01:55:14', '2015-12-22 10:44:51'),
(29, '', 25, 0, 4, 1, 1, '2009-02-02 13:11:37', '2015-12-22 10:47:28'),
(30, '', 18, 0, 4, 1, 1, '2009-02-02 13:11:59', '2015-12-22 10:42:41'),
(31, '', 25, 0, 4, 1, 1, '2009-02-03 14:17:24', '2015-12-22 10:47:16'),
(32, '', 18, 0, 4, 1, 1, '2009-02-03 14:17:34', '2015-12-22 10:42:53'),
(33, 'catalog/category/automotive-motocrycle.jpg', 0, 1, 4, 6, 1, '2015-09-11 14:17:55', '2015-12-22 10:38:15'),
(34, 'catalog/category/smartphone-tablets.jpg', 0, 0, 4, 7, 1, '2009-02-03 14:18:11', '2015-12-25 11:37:36'),
(35, '', 25, 0, 4, 0, 1, '2010-09-17 10:06:48', '2015-12-22 10:46:57'),
(68, '', 17, 0, 1, 0, 1, '2015-08-10 15:28:55', '2015-12-22 10:39:56'),
(67, '', 24, 0, 1, 0, 1, '2015-08-10 15:28:13', '2015-12-22 10:43:50'),
(66, '', 24, 0, 1, 0, 1, '2015-08-10 15:27:51', '2015-12-22 10:43:39'),
(65, '', 24, 0, 1, 0, 1, '2015-08-10 15:27:22', '2015-12-22 10:44:00'),
(64, '', 24, 0, 1, 0, 1, '2015-08-10 15:26:58', '2015-12-22 10:43:29'),
(43, '', 34, 0, 4, 0, 1, '2010-09-18 14:06:49', '2015-12-22 10:46:03'),
(44, '', 34, 0, 4, 0, 1, '2010-09-21 15:39:21', '2015-12-22 10:45:53'),
(45, '', 18, 0, 4, 0, 1, '2010-09-24 18:29:16', '2015-12-22 10:42:31'),
(46, '', 18, 0, 4, 0, 1, '2010-09-24 18:29:31', '2015-12-22 10:42:19'),
(47, '', 34, 0, 4, 0, 1, '2010-11-07 11:13:16', '2015-12-22 10:46:30'),
(76, '', 20, 0, 1, 0, 1, '2015-08-10 15:34:16', '2015-12-22 10:44:26'),
(75, '', 57, 0, 1, 0, 1, '2015-08-10 15:31:58', '2015-12-22 10:48:32'),
(73, '', 57, 0, 1, 0, 1, '2015-08-10 15:31:16', '2015-12-22 10:48:19'),
(72, '', 57, 0, 1, 0, 1, '2015-08-10 15:30:57', '2015-12-22 10:48:55'),
(71, '', 17, 0, 1, 0, 1, '2015-08-10 15:30:15', '2015-12-22 10:40:47'),
(70, '', 17, 0, 1, 0, 1, '2015-08-10 15:29:53', '2015-12-22 10:40:32'),
(69, '', 17, 0, 1, 0, 1, '2015-08-10 15:29:14', '2015-12-22 10:40:08'),
(57, 'catalog/category/-toys-hobbies.jpg', 0, 0, 4, 3, 1, '2011-04-26 08:53:16', '2015-12-22 10:48:05'),
(74, '', 57, 0, 1, 0, 1, '2015-08-10 15:31:34', '2015-12-22 10:48:44'),
(60, '', 63, 0, 1, 0, 1, '2015-08-10 15:12:38', '2015-12-22 10:39:13'),
(61, '', 33, 0, 1, 0, 1, '2015-08-10 15:13:01', '2015-12-22 10:38:32'),
(62, '', 33, 0, 1, 0, 1, '2015-08-10 15:13:24', '2015-12-22 10:38:45'),
(63, '', 33, 0, 1, 0, 1, '2015-08-10 15:13:44', '2015-12-22 10:38:59'),
(77, '', 0, 0, 1, 0, 1, '2015-08-18 15:24:42', '2015-12-30 15:27:51'),
(78, '', 0, 0, 1, 0, 1, '2015-08-18 15:25:30', '2015-12-22 10:37:59'),
(79, '', 0, 0, 1, 0, 1, '2015-08-18 15:25:47', '2015-12-22 10:49:05'),
(80, '', 0, 0, 1, 0, 1, '2015-08-18 15:26:10', '2015-11-21 08:22:18'),
(81, '', 0, 0, 1, 0, 1, '2015-08-18 15:26:26', '2015-12-22 10:45:05'),
(82, '', 0, 0, 1, 0, 1, '2015-08-21 14:54:44', '2015-12-22 10:41:16'),
(83, 'catalog/category/s1.jpg', 0, 0, 1, 0, 1, '2015-11-20 09:11:12', '2015-12-01 17:53:51'),
(85, 'catalog/category/mobile.png', 83, 0, 1, 0, 1, '2015-11-21 08:27:05', '2015-11-21 08:27:05'),
(84, 'catalog/category/electronic.png', 83, 0, 4, 0, 1, '2015-11-21 08:25:40', '2015-11-21 08:25:40'),
(86, 'catalog/category/computer.png', 83, 0, 4, 0, 1, '2015-11-21 08:28:24', '2015-11-21 08:28:24'),
(87, 'catalog/category/sport.png', 83, 0, 4, 0, 1, '2015-11-21 08:29:28', '2015-11-21 08:29:28'),
(88, 'catalog/category/accsec.png', 83, 0, 1, 0, 1, '2015-11-21 08:31:56', '2015-11-21 08:31:56'),
(89, 'catalog/category/men.png', 83, 0, 1, 0, 1, '2015-11-21 08:33:04', '2015-12-07 10:52:44'),
(90, 'catalog/category/women.png', 83, 0, 4, 0, 1, '2015-11-21 08:34:00', '2015-11-21 08:34:00'),
(91, 'catalog/category/fashion.png', 83, 0, 4, 0, 1, '2015-11-21 08:34:53', '2015-11-21 08:34:53'),
(92, 'catalog/category/mouse.png', 83, 0, 4, 0, 1, '2015-11-21 08:35:56', '2015-11-21 08:35:56'),
(93, 'catalog/category/watches.png', 83, 0, 4, 0, 1, '2015-11-21 08:36:51', '2015-11-21 08:36:51'),
(94, 'catalog/category/shoes.jpg', 0, 0, 1, 0, 1, '2015-12-05 10:51:54', '2015-12-07 12:04:21'),
(95, '', 0, 0, 1, 0, 1, '2015-12-05 11:41:11', '2015-12-07 10:18:36'),
(96, '', 0, 0, 1, 0, 1, '2015-12-05 12:14:43', '2015-12-07 10:18:13'),
(97, '', 0, 0, 1, 0, 1, '2015-12-05 12:29:59', '2015-12-05 12:29:59'),
(98, '', 94, 0, 1, 0, 1, '2015-12-07 13:54:27', '2015-12-07 13:54:27'),
(99, '', 94, 0, 1, 0, 1, '2015-12-07 13:55:05', '2015-12-07 13:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `promo` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `icon` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `html_top` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `html_right` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `html_bottom` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `promo`, `icon`, `html_top`, `html_right`, `html_bottom`) VALUES
(20, 1, 'Jewelry &amp; Watches', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Jewelry &amp; Watches', 'Example of category description', '', '', '', '', '', ''),
(20, 2, 'Jewelry &amp; Watches', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Jewelry &amp; Watches', 'Example of category description', '', '', '', '', '', ''),
(64, 1, 'Bath &amp; Body', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Bath &amp; Body', '', '', '', '', '', '', ''),
(44, 2, 'Accessories for i Pad', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories for i Pad', '', '', '', '', '', '', ''),
(43, 2, 'Accessories for iPhone', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories for iPhone', '', '', '', '', '', '', ''),
(18, 1, 'Electronics', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Electronics', '', '', '', '', '', '', ''),
(46, 1, 'Battereries &amp; Chargers', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Battereries &amp; Chargers', '', '', '', '', '', '', ''),
(45, 2, 'Headphones, Headsets', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Headphones, Headsets', '', '', '', '', '', '', ''),
(28, 1, 'Outdoor &amp; Traveling', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Outdoor &amp; Traveling', '', '', '', '', '', '', ''),
(33, 2, 'Automotive', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Automotive &amp; Motocrycle', '', '', '', '', '', '', ''),
(32, 1, 'Mp3 Players &amp; Accessories', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Mp3 Players &amp; Accessories', '', '', '', '', '', '', ''),
(31, 1, 'Fishing', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Fishing', '', '', '', '', '', '', ''),
(30, 1, 'Home Audio', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Home Audio', '', '', '', '', '', '', ''),
(29, 1, 'Golf Supplies', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Golf Supplies', '', '', '', '', '', '', ''),
(27, 1, 'Men Watches', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Men Watches', '', '', '', '', '', '', ''),
(26, 1, 'Wedding Rings', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Wedding Rings', '', '', '', '', '', '', ''),
(72, 2, 'Walkera', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Walkera', '', '', '', '', '', '', ''),
(61, 1, 'Car Alarms and Security', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Car Alarms and Security', '', '', '', '', '', '', ''),
(61, 2, 'Car Alarms and Security', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Car Alarms and Security', '', '', '', '', '', '', ''),
(62, 2, 'Car Audio &amp; Speakers', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Car Audio &amp; Speakers', '', '', '', '', '', '', ''),
(63, 1, 'Gadgets &amp; Auto Parts', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Gadgets &amp; Auto Parts', '', '', '', '', '', '', ''),
(63, 2, 'Gadgets &amp; Auto Parts', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Gadgets &amp; Auto Parts', '', '', '', '', '', '', ''),
(74, 2, 'RC Cars &amp; Parts', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'RC Cars &amp; Parts', '', '', '', '', '', '', ''),
(25, 2, 'Sports &amp; Outdoors', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Sports &amp; Outdoors', '', '', '', '', '', '', ''),
(35, 2, 'Camping &amp; Hiking', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Camping &amp; Hiking', '', '', '', '', '', '', ''),
(31, 2, 'Fishing', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Fishing', '', '', '', '', '', '', ''),
(29, 2, 'Golf Supplies', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Golf Supplies', '', '', '', '', '', '', ''),
(28, 2, 'Outdoor &amp; Traveling', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Outdoor &amp; Traveling', '', '', '', '', '', '', ''),
(57, 2, 'Toys &amp; Hobbies', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Toys &amp; Hobbies', '', '', '', '', '', '', ''),
(73, 2, 'FPV System &amp; Parts', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'FPV System &amp; Parts', '', '', '', '', '', '', ''),
(75, 2, 'Helicopters &amp; Parts', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Helicopters &amp; Parts', '', '', '', '', '', '', ''),
(35, 1, 'Camping &amp; Hiking', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Camping &amp; Hiking', '', '', '', '', '', '', ''),
(24, 1, 'Health &amp; Beauty', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Health &amp; Beauty', '', '', '', '', '', '', ''),
(30, 2, 'Home Audio', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Home Audio', '', '', '', '', '', '', ''),
(32, 2, 'Mp3 Players &amp; Accessories', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Mp3 Players &amp; Accessories', '', '', '', '', '', '', ''),
(66, 2, 'Fragrances', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Fragrances', '', '', '', '', '', '', ''),
(44, 1, 'Accessories for i Pad', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories for i Pad', '', '', '', '', '', '', ''),
(45, 1, 'Headphones, Headsets', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Headphones, Headsets', '', '', '', '', '', '', ''),
(46, 2, 'Battereries &amp; Chargers', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Battereries &amp; Chargers', '', '', '', '', '', '', ''),
(47, 1, 'Accessories for Tablet PC', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories for Tablet PC', '', '', '', '', '', '', ''),
(65, 1, 'Shaving &amp; Hair Removal', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Shaving &amp; Hair Removal', '', '', '', '', '', '', ''),
(43, 1, 'Accessories for iPhone', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories for iPhone', '', '', '', '', '', '', ''),
(60, 2, 'More Car Accessories', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'More Car Accessories', '', '', '', '', '', '', ''),
(60, 1, 'More Car Accessories', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'More Car Accessories', '', '', '', '', '', '', ''),
(62, 1, 'Car Audio &amp; Speakers', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Car Audio &amp; Speakers', '', '', '', '', '', '', ''),
(17, 1, 'Bags, Holiday Supplies', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Bags, Holiday Supplies &amp;', '', '', '', '', '', '', ''),
(68, 2, 'Gift &amp; Lifestyle Gadgets', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Gift &amp; Lifestyle Gadgets', '', '', '', '', '', '', ''),
(47, 2, 'Accessories for Tablet PC', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories for Tablet PC', '', '', '', '', '', '', ''),
(69, 2, 'Gift for Man', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Gift for Man', '', '', '', '', '', '', ''),
(69, 1, 'Gift for Man', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Gift for Man', '', '', '', '', '', '', ''),
(67, 1, 'Salon &amp; Spa Equipment', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Salon &amp; Spa Equipment', '', '', '', '', '', '', ''),
(68, 1, 'Gift &amp; Lifestyle Gadgets', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Gift &amp; Lifestyle Gadgets', '', '', '', '', '', '', ''),
(70, 1, 'Gift for Woman', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Gift for Woman', '', '', '', '', '', '', ''),
(71, 1, 'Lighter &amp; Cigar Supplies', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Lighter &amp; Cigar Supplies', '', '', '', '', '', '', ''),
(57, 1, 'Toys &amp; Hobbies', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Toys &amp; Hobbies', '', '', '', '', '', '', ''),
(72, 1, 'Walkera', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Walkera', '', '', '', '', '', '', ''),
(73, 1, 'FPV System &amp; Parts', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'FPV System &amp; Parts', '', '', '', '', '', '', ''),
(74, 1, 'RC Cars &amp; Parts', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'RC Cars &amp; Parts', '', '', '', '', '', '', ''),
(75, 1, 'Helicopters &amp; Parts', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/banner-cate1.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Helicopters &amp; Parts', '', '', '', '', '', '', ''),
(76, 1, 'Earings', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Earings', '', '', '', '', '', '', ''),
(77, 2, 'Cables &amp; Connectors', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Cables &amp; Connectors', '', '', '', '', '', '', ''),
(79, 1, 'Video Games', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Configurable Product', '', '', '', '', '', '', ''),
(80, 1, 'Flashlights &amp; Lamps', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Product Types', '', '', '', '', '', '', ''),
(82, 2, 'Cameras &amp; Photo', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Cameras &amp; Photo', '', '', '', '', '', '', ''),
(33, 1, 'Automotive', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Automotive &amp; Motocrycle', '', '', '', '', '', '', ''),
(81, 1, 'Mobile Accessories', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Mobile Accessories', '', '', '', '', '', '', ''),
(66, 1, 'Fragrances', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Fragrances', '', '', '', '', '', '', ''),
(67, 2, 'Salon &amp; Spa Equipment', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Salon &amp; Spa Equipment', '', '', '', '', '', '', ''),
(65, 2, 'Shaving &amp; Hair Removal', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Shaving &amp; Hair Removal', '', '', '', '', '', '', ''),
(76, 2, 'Earings', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Earings', '', '', '', '', '', '', ''),
(27, 2, 'Men Watches', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Men Watches', '', '', '', '', '', '', ''),
(26, 2, 'Wedding Rings', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Wedding Rings', '', '', '', '', '', '', ''),
(81, 2, 'Mobile Accessories', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Mobile Accessories', '', '', '', '', '', '', ''),
(80, 2, 'Flashlights &amp; Lamps', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Product Types', '', '', '', '', '', '', ''),
(70, 2, 'Gift for Woman', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Gift for Woman', '', '', '', '', '', '', ''),
(71, 2, 'Lighter &amp; Cigar Supplies', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Lighter &amp; Cigar Supplies', '', '', '', '', '', '', ''),
(77, 1, 'Cables &amp; Connectors', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Cables &amp; Connectors', '', '', '', '', '', '', ''),
(82, 1, 'Cameras &amp; Photo', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Cameras &amp; Photo', '', '', '', '', '', '', ''),
(79, 2, 'Video Games', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Configurable Product', '', '', '', '', '', '', ''),
(24, 2, 'Health &amp; Beauty', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Health &amp; Beauty', 'Example of category description', '', '', '', '', '', ''),
(64, 2, 'Bath &amp; Body', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/image-cat-1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Bath &amp; Body', '', '', '', '', '', '', ''),
(78, 2, 'Apparel', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/mobile-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Simple Product', '', '', '', '', '', '', ''),
(34, 1, 'Smartphone &amp; Tablets', '[content_slider item_lg=''1'' item_sm=''1'' item_xs=''1'' margin='''' arrow=''yes'' pagination=''no'' loop=''no'']	[content_slider_item] &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;image/catalog/category/electronic-cat.png&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][content_slider_item]  &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;image/catalog/category/mobile-cat.png&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][content_slider_item]  &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;image/catalog/category/image-cat-1.jpg&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][/content_slider]', 'Smartphone &amp; Tablets', '', '', '', '', '', '', ''),
(34, 2, 'Smartphone &amp; Tablets', '[content_slider item_lg=''1'' item_sm=''1'' item_xs=''1'' margin='''' arrow=''yes'' pagination=''no'' loop=''no'']	[content_slider_item] &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;image/catalog/category/electronic-cat.png&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][content_slider_item]  &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;image/catalog/category/mobile-cat.png&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][content_slider_item]  &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;image/catalog/category/image-cat-1.jpg&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][/content_slider]', 'Smartphone &amp; Tablets', '', '', '', '', '', '', ''),
(83, 1, 'Top Selling', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(83, 2, 'Top Selling', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(17, 2, 'Bags, Holiday Supplies', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Bags, Holiday Supplies &amp;', 'Example of category description', '', '', '', '', '', ''),
(18, 2, 'Electronics', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/electronic-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Electronics', '', '', '', '', '', '', ''),
(84, 1, 'Electronics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(84, 2, 'Electronics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(85, 1, 'Mobiles', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(85, 2, 'Mobiles', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mobiles', '', '', '', '', '', '', ''),
(86, 1, 'Computers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(86, 2, 'Computers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(87, 1, 'Sports', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(87, 2, 'Sports', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(88, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(88, 2, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(89, 2, 'Men', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(89, 1, 'Men', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(90, 1, 'Women', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(90, 2, 'Women', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(91, 1, 'Fashion', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(91, 2, 'Fashion', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(92, 1, 'Mouse', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(92, 2, 'Mouse', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(93, 1, 'Watches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(93, 2, 'Watches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(94, 1, 'Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shoes', '', '', '', '', '', '', ''),
(94, 2, 'Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shoes', '', '', '', '', '', '', ''),
(95, 2, 'Clothings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Clothings', '', '', '', '', '', '', ''),
(95, 1, 'Clothings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Clothings', '', '', '', '', '', '', ''),
(96, 2, 'Women', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Women', '', '', '', '', '', '', ''),
(96, 1, 'Women', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Women', '', '', '', '', '', '', ''),
(97, 1, 'Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bags', '', '', '', '', '', '', ''),
(97, 2, 'Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bags', '', '', '', '', '', '', ''),
(25, 1, 'Sports &amp; Outdoors', '&lt;p&gt;&lt;img src=&quot;image/catalog/category/fashion-cat.png&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Sports &amp; Outdoors', '', '', '', '', '', '', ''),
(98, 1, 'Morbi congue', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(98, 2, 'Morbi congue', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(99, 1, 'Aliquam', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(99, 2, 'Aliquam', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'smartaddons', '', '', '', '', '', '', ''),
(78, 1, 'Apparel', '[content_slider item_lg=''1'' item_sm=''1'' item_xs=''1'' margin='''' arrow=''yes'' pagination=''no'' loop=''no'']	[content_slider_item] &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;https://placeholdit.imgix.net/~text?txtsize=36&amp;amp;txt=870%C3%97260&amp;amp;w=870&amp;amp;h=260&amp;amp;c=dd4949&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][content_slider_item]  &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;https://placeholdit.imgix.net/~text?txtsize=36&amp;amp;txt=870%C3%97260&amp;amp;w=870&amp;amp;h=260&amp;amp;c=dd4949&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][content_slider_item]  &lt;img style=&quot;-webkit-user-select: none; cursor: zoom-in;&quot; src=&quot;https://placeholdit.imgix.net/~text?txtsize=36&amp;amp;txt=870%C3%97260&amp;amp;w=870&amp;amp;h=260&amp;amp;c=dd4949&quot; height=&quot;260&quot; width=&quot;870&quot;&gt;	[/content_slider_item][/content_slider]', 'Simple Product', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(33, 1),
(33, 2),
(33, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 28, 1),
(28, 25, 0),
(35, 35, 1),
(35, 25, 0),
(29, 29, 1),
(29, 25, 0),
(30, 30, 1),
(30, 18, 0),
(31, 31, 1),
(31, 25, 0),
(32, 32, 1),
(32, 18, 0),
(20, 20, 0),
(27, 27, 1),
(27, 20, 0),
(26, 26, 1),
(26, 20, 0),
(24, 24, 0),
(18, 18, 0),
(45, 45, 1),
(45, 18, 0),
(46, 46, 1),
(46, 18, 0),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(68, 17, 0),
(68, 68, 1),
(69, 69, 1),
(70, 70, 1),
(67, 24, 0),
(67, 67, 1),
(66, 24, 0),
(66, 66, 1),
(65, 24, 0),
(65, 65, 1),
(64, 24, 0),
(64, 64, 1),
(43, 43, 1),
(43, 34, 0),
(44, 44, 1),
(44, 34, 0),
(47, 47, 1),
(47, 34, 0),
(76, 20, 0),
(76, 76, 1),
(75, 57, 0),
(75, 75, 1),
(74, 57, 0),
(74, 74, 1),
(73, 57, 0),
(73, 73, 1),
(72, 57, 0),
(72, 72, 1),
(71, 17, 0),
(71, 71, 1),
(70, 17, 0),
(69, 17, 0),
(57, 57, 0),
(60, 60, 2),
(60, 63, 1),
(61, 61, 1),
(61, 33, 0),
(62, 62, 1),
(63, 63, 1),
(63, 33, 0),
(77, 77, 0),
(78, 78, 0),
(79, 79, 0),
(80, 80, 0),
(81, 81, 0),
(82, 82, 0),
(60, 33, 0),
(62, 33, 0),
(83, 83, 0),
(90, 90, 1),
(87, 87, 1),
(87, 83, 0),
(86, 86, 1),
(86, 83, 0),
(85, 85, 1),
(85, 83, 0),
(90, 83, 0),
(89, 89, 1),
(89, 83, 0),
(88, 88, 1),
(88, 83, 0),
(84, 84, 1),
(84, 83, 0),
(91, 83, 0),
(91, 91, 1),
(92, 83, 0),
(92, 92, 1),
(93, 83, 0),
(93, 93, 1),
(94, 94, 0),
(95, 95, 0),
(96, 96, 0),
(97, 97, 0),
(98, 94, 0),
(98, 98, 1),
(99, 94, 0),
(99, 99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(33, 3, 0),
(25, 2, 0),
(25, 3, 0),
(43, 3, 0),
(43, 0, 0),
(20, 2, 0),
(20, 4, 0),
(60, 4, 0),
(60, 2, 0),
(61, 2, 0),
(61, 3, 0),
(62, 3, 0),
(62, 2, 0),
(63, 2, 0),
(63, 3, 0),
(18, 2, 0),
(18, 4, 0),
(46, 4, 0),
(46, 2, 0),
(45, 0, 0),
(45, 3, 0),
(30, 0, 0),
(30, 3, 0),
(32, 0, 0),
(32, 3, 0),
(29, 0, 0),
(29, 3, 0),
(28, 0, 0),
(28, 3, 0),
(35, 0, 0),
(35, 3, 0),
(31, 0, 0),
(31, 3, 0),
(34, 3, 0),
(34, 2, 0),
(44, 0, 0),
(44, 3, 0),
(47, 0, 0),
(47, 3, 0),
(24, 3, 0),
(64, 0, 0),
(64, 3, 0),
(65, 0, 0),
(65, 3, 0),
(66, 3, 0),
(66, 4, 0),
(67, 0, 0),
(67, 3, 0),
(17, 3, 0),
(17, 0, 0),
(68, 0, 0),
(68, 3, 0),
(69, 3, 0),
(69, 2, 0),
(70, 0, 0),
(70, 3, 0),
(71, 0, 0),
(71, 3, 0),
(57, 3, 0),
(57, 0, 0),
(72, 0, 0),
(72, 3, 0),
(73, 0, 0),
(73, 3, 0),
(74, 0, 0),
(74, 3, 0),
(75, 0, 0),
(75, 3, 0),
(27, 0, 0),
(27, 3, 0),
(26, 0, 0),
(26, 3, 0),
(76, 3, 0),
(76, 0, 0),
(77, 3, 0),
(78, 0, 0),
(78, 2, 0),
(79, 0, 0),
(79, 2, 0),
(80, 0, 0),
(80, 3, 0),
(81, 2, 0),
(81, 3, 0),
(82, 4, 0),
(82, 3, 0),
(33, 0, 0),
(24, 0, 0),
(77, 2, 0),
(77, 0, 0),
(82, 2, 0),
(82, 0, 0),
(79, 3, 0),
(79, 4, 0),
(81, 0, 0),
(81, 4, 0),
(66, 2, 0),
(66, 0, 0),
(67, 4, 0),
(67, 2, 0),
(65, 4, 0),
(65, 2, 0),
(20, 0, 0),
(20, 3, 0),
(76, 4, 0),
(76, 2, 0),
(27, 4, 0),
(27, 2, 0),
(26, 4, 0),
(26, 2, 0),
(80, 4, 0),
(80, 2, 0),
(78, 3, 0),
(78, 4, 0),
(34, 0, 0),
(44, 4, 0),
(44, 2, 0),
(43, 4, 0),
(43, 2, 0),
(47, 4, 0),
(47, 2, 0),
(25, 4, 0),
(25, 0, 0),
(35, 4, 0),
(35, 2, 0),
(31, 4, 0),
(31, 2, 0),
(29, 4, 0),
(29, 2, 0),
(28, 4, 0),
(28, 2, 0),
(57, 4, 0),
(57, 2, 0),
(73, 4, 0),
(73, 2, 0),
(75, 4, 0),
(75, 2, 0),
(74, 4, 0),
(74, 2, 0),
(72, 4, 0),
(72, 2, 0),
(33, 4, 0),
(33, 2, 0),
(61, 0, 0),
(61, 4, 0),
(62, 4, 0),
(62, 0, 0),
(60, 0, 3),
(60, 3, 0),
(63, 0, 0),
(63, 4, 0),
(17, 4, 0),
(17, 2, 0),
(68, 4, 0),
(68, 2, 0),
(69, 0, 0),
(69, 4, 0),
(70, 4, 0),
(70, 2, 0),
(71, 4, 0),
(71, 2, 0),
(18, 0, 0),
(18, 3, 0),
(46, 0, 0),
(46, 3, 0),
(45, 4, 0),
(45, 2, 0),
(30, 4, 0),
(30, 2, 0),
(32, 4, 0),
(32, 2, 0),
(24, 4, 0),
(24, 2, 0),
(64, 4, 0),
(64, 2, 0),
(83, 0, 0),
(83, 2, 0),
(83, 3, 0),
(83, 4, 0),
(84, 0, 0),
(84, 2, 0),
(84, 3, 0),
(84, 4, 0),
(85, 0, 0),
(85, 2, 0),
(85, 3, 0),
(85, 4, 0),
(86, 0, 0),
(86, 2, 0),
(86, 3, 0),
(86, 4, 0),
(87, 0, 0),
(87, 2, 0),
(87, 3, 0),
(87, 4, 0),
(88, 0, 0),
(88, 2, 0),
(88, 3, 0),
(88, 4, 0),
(89, 4, 0),
(89, 3, 0),
(89, 2, 0),
(89, 0, 0),
(90, 0, 0),
(90, 2, 0),
(90, 3, 0),
(90, 4, 0),
(91, 0, 0),
(91, 2, 0),
(91, 3, 0),
(91, 4, 0),
(92, 0, 0),
(92, 2, 0),
(92, 3, 0),
(92, 4, 0),
(93, 0, 0),
(93, 2, 0),
(93, 3, 0),
(93, 4, 0),
(94, 0, 0),
(94, 2, 0),
(94, 3, 0),
(94, 4, 0),
(95, 4, 0),
(95, 3, 0),
(95, 2, 0),
(95, 0, 0),
(96, 4, 0),
(96, 3, 0),
(96, 2, 0),
(96, 0, 0),
(97, 0, 0),
(97, 2, 0),
(97, 3, 0),
(97, 4, 0),
(98, 0, 0),
(98, 2, 0),
(98, 3, 0),
(98, 4, 0),
(99, 0, 0),
(99, 2, 0),
(99, 3, 0),
(99, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(17, 2),
(17, 3),
(18, 0),
(18, 2),
(18, 3),
(20, 0),
(20, 2),
(20, 3),
(24, 0),
(24, 2),
(24, 3),
(25, 0),
(25, 2),
(25, 3),
(26, 0),
(26, 2),
(26, 3),
(27, 0),
(27, 2),
(27, 3),
(28, 0),
(28, 2),
(28, 3),
(29, 0),
(29, 2),
(29, 3),
(30, 0),
(30, 2),
(30, 3),
(31, 0),
(31, 2),
(31, 3),
(32, 0),
(32, 2),
(32, 3),
(33, 0),
(33, 2),
(33, 3),
(34, 0),
(34, 2),
(34, 3),
(35, 0),
(35, 2),
(35, 3),
(43, 0),
(43, 2),
(43, 3),
(44, 0),
(44, 2),
(44, 3),
(45, 0),
(45, 2),
(45, 3),
(46, 0),
(46, 2),
(46, 3),
(47, 0),
(47, 2),
(47, 3),
(57, 0),
(57, 2),
(57, 3),
(60, 0),
(60, 2),
(60, 3),
(61, 0),
(61, 2),
(61, 3),
(62, 0),
(62, 2),
(62, 3),
(63, 0),
(63, 2),
(63, 3),
(64, 0),
(64, 2),
(64, 3),
(65, 0),
(65, 2),
(65, 3),
(66, 0),
(66, 2),
(66, 3),
(67, 0),
(67, 2),
(67, 3),
(68, 0),
(68, 2),
(68, 3),
(69, 0),
(69, 2),
(69, 3),
(70, 0),
(70, 2),
(70, 3),
(71, 0),
(71, 2),
(71, 3),
(72, 0),
(72, 2),
(72, 3),
(73, 0),
(73, 2),
(73, 3),
(74, 0),
(74, 2),
(74, 3),
(75, 0),
(75, 2),
(75, 3),
(76, 0),
(76, 2),
(76, 3),
(77, 0),
(77, 2),
(77, 3),
(78, 0),
(78, 2),
(78, 3),
(79, 0),
(79, 3),
(80, 0),
(81, 0),
(81, 2),
(81, 3),
(82, 0),
(82, 3),
(83, 0),
(83, 3),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(89, 2),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(94, 3),
(95, 2),
(96, 0),
(96, 2),
(97, 0),
(98, 3),
(99, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=258 ;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pounds', 'GBP', '£', '', '2', 0.00010000, 0, '2016-08-18 13:22:05'),
(2, 'US Dollar', 'USD', '$', '', '2', 0.00010000, 0, '2016-08-18 13:22:05'),
(3, 'Euro', 'EUR', '', '€', '2', 0.00010000, 0, '2016-08-18 13:22:05'),
(4, 'Rupiah', 'IDR', 'Rp ', '', '', 1.00000000, 1, '2016-08-18 13:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL,
  `address_id` int(11) NOT NULL,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(6, 1, 0, 'Wash', 'upito', 'luannt@ytcvn.com', '12345678', 'luannt@ytcvn.com', 'd480956610d6618d8ee8f05531e1a0eee492dd9c', '1jrPMOnR3', NULL, NULL, 1, 0, '', '::1', 1, 1, 1, '', '2015-11-06 09:25:44'),
(7, 1, 0, 'Hoang', 'David', 'sakurahm@gmail.com', '+84986456836', '', 'a1ce9de68482f774b8591d3f79e59e654639717e', 'n46lnJmTv', NULL, NULL, 1, 5, '', '118.71.224.135', 1, 1, 0, '', '2015-12-17 09:49:38'),
(8, 1, 0, 'nguyen', 'phuong', 'phuongnt@ytcvn.com', '5452121212', '32456789', '7972d4793bdf41322ad94edb288fa0c3995e96a3', 'zzCznxWPZ', NULL, NULL, 0, 6, '', '118.71.224.135', 1, 1, 0, '', '2015-12-23 22:39:25'),
(9, 1, 0, 'nguyen', 'hoa', 'hoa@gmail.com', '44646', '', 'c8001bd0e13605c72666ef044240dac23656fffc', 'geC2a2zCk', NULL, NULL, 0, 7, '', '118.71.224.135', 1, 1, 0, '', '2015-12-25 16:27:58'),
(10, 1, 0, 'Tinh', 'Manh', 'tinhpv@ytcvn.com', '0987654546', '', 'bb65801d98bdc11a92239cbec0ddde55facf1d1e', 'BN79pwVlS', NULL, NULL, 0, 8, '', '::1', 1, 1, 0, '', '2015-12-26 14:02:38'),
(11, 1, 0, 'phuong', 'phuong', 'phuong@gmail.com', '4567890', '4567890', 'f2d65a80e1f3c1fdc2d657d0255959595e1cc6d0', '9GCOJMwhl', NULL, NULL, 0, 9, '', '192.168.1.14', 1, 1, 0, '', '2015-12-28 11:48:32'),
(12, 1, 0, 'nguyen', 'phuong', 'phuong@ytcvn.com', '1234567', '12345678', '74cdcbb3f9a5259ffb439dcc161a0df3c02914c6', 'CU2t12gtd', NULL, NULL, 0, 10, '', '192.168.1.14', 1, 1, 0, '', '2015-12-29 11:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 6, 'login', '{"customer_id":"6","name":"Wash upito"}', '::1', '2015-11-06 09:25:49'),
(2, 6, 'login', '{"customer_id":"6","name":"Wash upito"}', '::1', '2015-11-06 10:16:36'),
(3, 6, 'login', '{"customer_id":"6","name":"Wash upito"}', '::1', '2015-12-14 16:42:26'),
(4, 7, 'register', '{"customer_id":7,"name":"Hoang David"}', '118.71.224.135', '2015-12-17 09:49:39'),
(5, 7, 'order_account', '{"customer_id":"7","name":"Hoang David","order_id":8}', '118.71.224.135', '2015-12-17 09:49:57'),
(6, 7, 'forgotten', '{"customer_id":"7","name":"Hoang David"}', '118.71.224.135', '2015-12-19 14:50:50'),
(7, 6, 'login', '{"customer_id":"6","name":"Wash upito"}', '::1', '2015-12-23 11:54:03'),
(8, 8, 'register', '{"customer_id":8,"name":"nguyen phuong"}', '100.64.201.150', '2015-12-23 22:39:27'),
(9, 8, 'login', '{"customer_id":"8","name":"nguyen phuong"}', '100.64.201.150', '2015-12-23 22:40:28'),
(10, 8, 'edit', '{"customer_id":"8","name":"nguyen phuong"}', '100.64.201.150', '2015-12-23 22:45:47'),
(11, 8, 'password', '{"customer_id":"8","name":"nguyen phuong"}', '100.64.201.150', '2015-12-23 22:46:15'),
(12, 8, 'address_edit', '{"customer_id":"8","name":"nguyen phuong"}', '100.64.201.150', '2015-12-23 22:46:52'),
(13, 8, 'order_account', '{"customer_id":"8","name":"nguyen phuong","order_id":9}', '100.64.201.150', '2015-12-23 22:56:36'),
(14, 8, 'order_account', '{"customer_id":"8","name":"nguyen phuong","order_id":10}', '100.64.201.150', '2015-12-24 02:16:51'),
(15, 8, 'login', '{"customer_id":"8","name":"nguyen phuong"}', '100.64.201.150', '2015-12-24 02:54:35'),
(16, 9, 'register', '{"customer_id":9,"name":"nguyen hoa"}', '118.71.224.135', '2015-12-25 16:28:50'),
(17, 10, 'register', '{"customer_id":10,"name":"Tinh Manh"}', '192.168.1.39', '2015-12-26 14:02:39'),
(18, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.39', '2015-12-26 16:07:28'),
(19, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '172.20.10.3', '2015-12-27 12:43:21'),
(20, 10, 'order_account', '{"customer_id":"10","name":"Tinh Manh","order_id":11}', '172.20.10.3', '2015-12-27 13:08:39'),
(21, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '172.20.10.1', '2015-12-27 13:28:25'),
(22, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '172.20.10.3', '2015-12-27 13:34:20'),
(23, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.20', '2015-12-28 11:17:09'),
(24, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.15', '2015-12-28 11:18:02'),
(25, 11, 'register', '{"customer_id":11,"name":"phuong phuong"}', '192.168.1.14', '2015-12-28 11:48:33'),
(26, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.15', '2015-12-28 15:18:42'),
(27, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.15', '2015-12-28 15:24:20'),
(28, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.15', '2015-12-28 15:46:08'),
(29, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.15', '2015-12-28 16:08:30'),
(30, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.12', '2015-12-28 16:37:36'),
(31, 10, 'login', '{"customer_id":"10","name":"Tinh Manh"}', '192.168.1.15', '2015-12-29 09:58:29'),
(32, 12, 'register', '{"customer_id":12,"name":"nguyen phuong"}', '192.168.1.14', '2015-12-29 11:37:11'),
(33, 12, 'login', '{"customer_id":"12","name":"nguyen phuong"}', '192.168.1.18', '2015-12-29 11:40:41'),
(34, 12, 'login', '{"customer_id":"12","name":"nguyen phuong"}', '192.168.1.14', '2015-12-29 11:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(2, 2, '::1', '2015-08-05 19:00:14'),
(11, 6, '::1', '2015-11-06 09:25:49'),
(12, 7, '118.71.224.135', '2015-12-17 09:49:39'),
(13, 8, '100.64.201.150', '2015-12-23 22:39:27'),
(14, 8, '118.71.224.135', '2015-12-24 08:59:56'),
(15, 9, '118.71.224.135', '2015-12-25 16:28:50'),
(16, 10, '192.168.1.39', '2015-12-26 14:02:39'),
(17, 10, '172.20.10.3', '2015-12-27 12:43:21'),
(18, 10, '172.20.10.1', '2015-12-27 13:28:25'),
(19, 10, '192.168.1.20', '2015-12-28 11:17:09'),
(20, 10, '192.168.1.15', '2015-12-28 11:18:02'),
(21, 11, '192.168.1.14', '2015-12-28 11:48:33'),
(22, 10, '192.168.1.12', '2015-12-28 16:37:36'),
(23, 10, '::1', '2015-12-29 10:26:52'),
(24, 12, '192.168.1.14', '2015-12-29 11:37:11'),
(25, 12, '192.168.1.18', '2015-12-29 11:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '::1', 4, '2015-08-05 06:41:45', '2016-08-10 12:32:42'),
(3, 'nguyennga.ictu@gmail.com', '127.0.0.1', 2, '2015-08-29 04:33:02', '2015-08-29 04:33:08'),
(5, 'nguyennga.ictu@gmail.com', '192.168.1.212', 4, '2015-09-11 07:03:33', '2015-09-11 07:03:52'),
(9, 'phuong5@gmail.com', '100.66.131.185', 5, '2015-10-09 01:19:01', '2015-10-09 01:19:22'),
(10, 'admin', '100.66.131.185', 2, '2015-10-09 01:59:40', '2015-10-12 19:42:45'),
(11, 'phuong5@gmail.com', '118.71.224.135', 1, '2015-10-09 06:18:27', '2015-10-09 06:18:27'),
(14, 'admin', '127.0.0.1', 1, '2015-12-12 03:54:35', '2015-12-12 03:54:35'),
(15, 'ngant@ytcvn.com', '127.0.0.1', 2, '2015-12-19 08:17:38', '2015-12-19 08:19:03'),
(16, 'haucv@ytcvn.com', '118.71.224.135', 4, '2015-12-19 08:49:38', '2015-12-19 08:50:18'),
(17, 'sakurahm@gmail.com', '118.71.224.135', 5, '2015-12-19 08:50:58', '2015-12-19 08:51:13'),
(19, 'admin', '192.168.1.14', 1, '2015-12-28 05:47:48', '2015-12-28 05:47:48'),
(20, 'phuongnt@ytcvn.com', '192.168.1.14', 1, '2015-12-29 05:35:59', '2015-12-29 05:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('::1', 0, 'http://localhost/arinsifashion/index.php?route=product/product&amp;product_id=31', '', '2016-08-18 13:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `points` int(8) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(6, 48, '2015-11-06 10:16:36'),
(6, 52, '2015-12-23 11:54:20'),
(6, 44, '2015-11-06 10:16:36'),
(6, 42, '2015-11-06 10:16:36'),
(6, 43, '2015-12-14 16:42:26'),
(8, 50, '2015-12-23 23:12:50'),
(8, 55, '2015-12-24 09:53:51'),
(8, 77, '2015-12-24 02:45:31'),
(8, 57, '2015-12-23 22:41:26'),
(8, 76, '2015-12-24 02:41:49'),
(8, 54, '2015-12-23 22:41:36'),
(10, 74, '2015-12-29 10:27:34'),
(10, 70, '2015-12-29 10:29:31'),
(10, 57, '2015-12-29 09:59:00'),
(10, 50, '2015-12-29 09:58:29'),
(10, 29, '2015-12-29 09:58:29'),
(10, 71, '2015-12-29 10:29:18'),
(10, 43, '2015-12-28 16:08:42'),
(12, 47, '2015-12-29 11:40:41'),
(12, 30, '2015-12-29 11:40:41'),
(12, 52, '2015-12-29 11:40:41'),
(12, 57, '2015-12-29 11:40:41'),
(12, 81, '2015-12-29 11:40:41'),
(12, 43, '2015-12-29 11:40:41'),
(12, 29, '2015-12-29 11:47:38'),
(12, 50, '2015-12-29 11:47:34'),
(12, 55, '2015-12-29 11:54:22'),
(12, 62, '2015-12-29 11:54:22'),
(12, 59, '2015-12-29 11:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=541 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(449, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(450, 'module', 'category'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(448, 'module', 'featured'),
(477, 'module', 'special'),
(534, 'module', 'newsletters'),
(479, 'module', 'html'),
(455, 'module', 'bestseller'),
(454, 'module', 'filter'),
(456, 'module', 'latest'),
(457, 'module', 'banner'),
(537, 'module', 'so_popular_tags'),
(536, 'module', 'so_listing_tabs'),
(475, 'module', 'simple_blog_category'),
(474, 'module', 'simple_blog'),
(532, 'module', 'so_basic_products'),
(533, 'module', 'manufacturers'),
(489, 'module', 'so_latest_blog'),
(491, 'module', 'so_category_slider'),
(535, 'module', 'so_html'),
(497, 'module', 'account'),
(531, 'module', 'so_deals'),
(530, 'module', 'so_extra_slider'),
(529, 'module', 'so_searchpro'),
(538, 'module', 'so_megamenu'),
(539, 'module', 'soconfig'),
(540, 'module', 'so_related_tabs');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(3, 1, 3),
(2, 1, 1),
(1, 1, 2),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 1, 4),
(8, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(3, 1, 1, 'green'),
(2, 1, 1, 'blue'),
(1, 1, 1, 'brown'),
(4, 1, 2, '$0 - $100'),
(5, 1, 2, '$101 - $200'),
(6, 1, 2, '$201 - $500'),
(7, 1, 1, 'red'),
(8, 1, 1, 'violet');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Color'),
(2, 1, 'Price');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 5, 1),
(8, 0, 6, 1),
(9, 0, 7, 1),
(11, 0, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(3, 1, 'Pricing Tables', '&lt;h3 class=&quot;text-center&quot;&gt;Pricing Table 1&lt;/h3&gt;[pricing_tables type=&quot;style1&quot; columns=&quot;4&quot; ][pricing_tables_item title=&quot;Premium&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;Buy Now&quot; price=&quot;$39/month&quot; featured=&quot;no&quot; text=&quot;&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [pricing_tables_item title=&quot;Professional&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;Buy Now&quot; price=&quot;$59/month&quot; featured=&quot;yes&quot; text=&quot;popular&quot; background=&quot;#4BB185&quot; color=&quot;#fff&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [pricing_tables_item title=&quot;Plus&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;Buy Now&quot; price=&quot;$99/month&quot; featured=&quot;no&quot; text=&quot;&quot;  ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [pricing_tables_item title=&quot;Maximum&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;Buy Now&quot; price=&quot;$199/month&quot; featured=&quot;no&quot; text=&quot;&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [/pricing_tables]&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 class=&quot;text-center&quot;&gt;Pricing Table 2&lt;/h3&gt;[pricing_tables type=&quot;style2&quot; columns=&quot;3&quot; ] [pricing_tables_item title=&quot;Standard&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;SIGN UP NOW&quot; price=&quot;$5/month&quot; featured=&quot;yes&quot; text=&quot;Classic Plan&quot; background=&quot;#4cbf8d&quot; color=&quot;#fff&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [pricing_tables_item title=&quot;Premium&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;SIGN UP NOW&quot; price=&quot;$39/month&quot;  featured=&quot;yes&quot; text=&quot;Best choise&quot; background=&quot;#e74847&quot; color=&quot;#fff&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [pricing_tables_item title=&quot;Professional&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;SIGN UP NOW&quot; price=&quot;$59/month&quot;  featured=&quot;yes&quot; text=&quot;unlimated features&quot; background=&quot;#50c1e9&quot; color=&quot;#fff&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [/pricing_tables]&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3 class=&quot;text-center&quot;&gt;Pricing Table 3&lt;/h3&gt;[pricing_tables type=&quot;style3&quot; columns=&quot;3&quot; ] [pricing_tables_item title=&quot;Standard&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;SIGN UP NOW&quot; price=&quot;$5/month&quot; featured=&quot;yes&quot; text=&quot;Classic Plan&quot; background=&quot;#e74847&quot; color=&quot;#fff&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [pricing_tables_item title=&quot;Premium&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;SIGN UP NOW&quot; price=&quot;$39/month&quot;  featured=&quot;yes&quot; text=&quot;Best choise&quot; background=&quot;#e74847&quot; color=&quot;#fff&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [pricing_tables_item title=&quot;Professional&quot; icon_name=&quot;icon: angle-double-right&quot; button_link=&quot;http://smartaddons.com&quot; button_label=&quot;SIGN UP NOW&quot; price=&quot;$59/month&quot;  featured=&quot;yes&quot; text=&quot;unlimated features&quot; background=&quot;#e74847&quot; color=&quot;#fff&quot; ]&lt;ul&gt;&lt;li&gt;Disk Space 10 GB&lt;/li&gt;&lt;li&gt;Bandwidth Unlimited&lt;/li&gt;&lt;li&gt;Setup Free (?)&lt;/li&gt;&lt;li&gt;1 Free Email Accounts (?)&lt;/li&gt;&lt;li&gt;1 FTP Accounts&lt;/li&gt;&lt;li&gt;Half Privacy&lt;/li&gt;&lt;/ul&gt;[/pricing_tables_item] [/pricing_tables]', 'Pricing Tables', '', ''),
(4, 1, 'About Us', '&lt;div class=&quot;about-us about-demo-1&quot;&gt;	&lt;div class=&quot;row&quot;&gt;		&lt;div class=&quot;col-lg-5 col-md-5 about-image&quot;&gt;			&lt;img src=&quot;image/catalog/about/wellcometoshop.png&quot; alt=&quot;About Us&quot;&gt;		&lt;/div&gt;\r\n				&lt;div class=&quot;col-lg-7 col-md-7 about-info&quot;&gt;			&lt;h2 class=&quot;about-title&quot;&gt;&lt;span&gt;About Us&lt;/span&gt;&lt;/h2&gt;\r\n			&lt;div class=&quot;about-text&quot;&gt;				&lt;p&gt;					Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.				&lt;/p&gt;\r\n				&lt;p&gt;					Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.&lt;br&gt;					Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.				&lt;/p&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n		&lt;div class=&quot;row&quot;&gt;		&lt;div class=&quot;col-lg-12 col-md-12 what-client-say&quot;&gt;					&lt;div class=&quot;client-say-content&quot;&gt;						&lt;h2 class=&quot;about-title line-hori&quot;&gt;&lt;span&gt;What Clients Say&lt;/span&gt;&lt;/h2&gt;\r\n								&lt;div class=&quot;client-say-slider&quot;&gt;												[content_slider items=''1'' item_lg=''1'' item_sm=''1'' margin=''30'' pagination=''yes'' arrows=''no'' loop=''no'']					[content_slider_item]					&lt;div class=&quot;item&quot;&gt;						&lt;p class=&quot;des-member des-client&quot;&gt;“Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.”&lt;/p&gt;\r\n						&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n						&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][content_slider_item]										&lt;div class=&quot;item&quot;&gt;						&lt;p class=&quot;des-member des-client&quot;&gt;“Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.”&lt;/p&gt;\r\n						&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n						&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][content_slider_item]										&lt;div class=&quot;item&quot;&gt;						&lt;p class=&quot;des-member des-client&quot;&gt;“Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.”&lt;/p&gt;\r\n						&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n						&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][content_slider_item]										&lt;div class=&quot;item&quot;&gt;						&lt;p class=&quot;des-member des-client&quot;&gt;“Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.”&lt;/p&gt;\r\n						&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n						&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][/content_slider]				&lt;/div&gt;\r\n											&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n		&lt;div class=&quot;row&quot;&gt;		&lt;div class=&quot;col-lg-12 col-md-12 our-team&quot;&gt;			&lt;div class=&quot;our-team-content&quot;&gt;				&lt;h2 class=&quot;about-title line-hori&quot;&gt;&lt;span&gt;Our Team&lt;/span&gt;&lt;/h2&gt;\r\n								&lt;div class=&quot;our-team-slider&quot;&gt;					[content_slider items=''4'' margin=''30'' arrow=''yes'' pagination=''no'' loop=''no'']					[content_slider_item]					&lt;div class=&quot;item&quot;&gt;						&lt;div class=&quot;member&quot;&gt;							&lt;div class=&quot;member-image&quot;&gt;								&lt;img src=&quot;image/catalog/about/ourmember01.png&quot; alt=&quot;Image Client&quot;&gt;							&lt;/div&gt;\r\n														&lt;div class=&quot;member-info&quot;&gt;								&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n								&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n								&lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;\r\n								&lt;ul class=&quot;social-member&quot;&gt;\r\n									&lt;li class=&quot;social-icon rss&quot;&gt;&lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;&lt;span&gt;RSS&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon facebook&quot;&gt;&lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon twitter&quot;&gt;&lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;&lt;span&gt;Twitter&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon google&quot;&gt;&lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;&lt;span&gt;Google&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][content_slider_item]										&lt;div class=&quot;item&quot;&gt;						&lt;div class=&quot;member&quot;&gt;							&lt;div class=&quot;member-image&quot;&gt;								&lt;img src=&quot;image/catalog/about/ourmember02.png&quot; alt=&quot;Image Client&quot;&gt;							&lt;/div&gt;\r\n														&lt;div class=&quot;member-info&quot;&gt;								&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n								&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n								&lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;\r\n								&lt;ul class=&quot;social-member&quot;&gt;\r\n									&lt;li class=&quot;social-icon rss&quot;&gt;&lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;&lt;span&gt;RSS&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon facebook&quot;&gt;&lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon twitter&quot;&gt;&lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;&lt;span&gt;Twitter&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon google&quot;&gt;&lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;&lt;span&gt;Google&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][content_slider_item]										&lt;div class=&quot;item&quot;&gt;						&lt;div class=&quot;member&quot;&gt;							&lt;div class=&quot;member-image&quot;&gt;								&lt;img src=&quot;image/catalog/about/ourmember03.png&quot; alt=&quot;Image Client&quot;&gt;							&lt;/div&gt;\r\n														&lt;div class=&quot;member-info&quot;&gt;								&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n								&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n								&lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;\r\n								&lt;ul class=&quot;social-member&quot;&gt;\r\n									&lt;li class=&quot;social-icon rss&quot;&gt;&lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;&lt;span&gt;RSS&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon facebook&quot;&gt;&lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon twitter&quot;&gt;&lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;&lt;span&gt;Twitter&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon google&quot;&gt;&lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;&lt;span&gt;Google&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][content_slider_item]										&lt;div class=&quot;item&quot;&gt;						&lt;div class=&quot;member&quot;&gt;							&lt;div class=&quot;member-image&quot;&gt;								&lt;img src=&quot;image/catalog/about/ourmember04.png&quot; alt=&quot;Image Client&quot;&gt;							&lt;/div&gt;\r\n														&lt;div class=&quot;member-info&quot;&gt;								&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n								&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n								&lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;\r\n								&lt;ul class=&quot;social-member&quot;&gt;\r\n									&lt;li class=&quot;social-icon rss&quot;&gt;&lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;&lt;span&gt;RSS&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon facebook&quot;&gt;&lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon twitter&quot;&gt;&lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;&lt;span&gt;Twitter&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon google&quot;&gt;&lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;&lt;span&gt;Google&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][content_slider_item]										&lt;div class=&quot;item&quot;&gt;						&lt;div class=&quot;member&quot;&gt;							&lt;div class=&quot;member-image&quot;&gt;								&lt;img src=&quot;image/catalog/about/ourmember01.png&quot; alt=&quot;Image Client&quot;&gt;							&lt;/div&gt;\r\n														&lt;div class=&quot;member-info&quot;&gt;								&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n								&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n								&lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;\r\n								&lt;ul class=&quot;social-member&quot;&gt;\r\n									&lt;li class=&quot;social-icon rss&quot;&gt;&lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;&lt;span&gt;RSS&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon facebook&quot;&gt;&lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon twitter&quot;&gt;&lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;&lt;span&gt;Twitter&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon google&quot;&gt;&lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;&lt;span&gt;Google&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][content_slider_item]										&lt;div class=&quot;item&quot;&gt;						&lt;div class=&quot;member&quot;&gt;							&lt;div class=&quot;member-image&quot;&gt;								&lt;img src=&quot;image/catalog/about/ourmember03.png&quot; alt=&quot;Image Client&quot;&gt;							&lt;/div&gt;\r\n														&lt;div class=&quot;member-info&quot;&gt;								&lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;\r\n								&lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;\r\n								&lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;\r\n								&lt;ul class=&quot;social-member&quot;&gt;\r\n									&lt;li class=&quot;social-icon rss&quot;&gt;&lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;&lt;span&gt;RSS&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon facebook&quot;&gt;&lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;&lt;span&gt;Facebook&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon twitter&quot;&gt;&lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;&lt;span&gt;Twitter&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n									&lt;li class=&quot;social-icon google&quot;&gt;&lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;&lt;span&gt;Google&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;/ul&gt;\r\n							&lt;/div&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\r\n[/content_slider_item][/content_slider]				&lt;/div&gt;\r\n															&lt;/div&gt;\r\n		&lt;/div&gt;\r\n	&lt;/div&gt;\r\n	&lt;/div&gt;', 'About Us', 'em ipsum dolor sit amet', 'em ipsum dolor sit amet'),
(5, 1, 'Terms Conditions', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. ', 'Terms &amp; Conditions', '', ''),
(6, 1, 'FAQ', '&lt;h3&gt;Got Questions? We’ve Got Answers!&lt;/h3&gt;&lt;p&gt;Asunt in anim uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. Allamco laboris nisi ut aliquip ex ea commodo consequat. Aser velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;col-sm-12&quot;&gt;[accordion] [acc_item title=&quot;Lorem ipsum dolor sit amet, consectetuer adipiscing elit&quot;]&lt;p&gt;Fusce eu dui. Integer vel nibh sit amet turpis vulputate aliquet. Phasellus id nisi vitae odio pretium aliquam. Pellentesque a leo. Donec consequat lectus sed felis. Quisque vestibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. &lt;/p&gt;&lt;p&gt;Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi.&lt;/p&gt;[/acc_item] [acc_item title=&quot;Donec eros tellus scelerisque nec rhoncus eget laoreet sit amet&quot;]&lt;p&gt;Fusce eu dui. Integer vel nibh sit amet turpis vulputate aliquet. Phasellus id nisi vitae odio pretium aliquam. Pellentesque a leo. Donec consequat lectus sed felis. Quisque vestibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. &lt;/p&gt;&lt;p&gt;Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi.&lt;/p&gt;[/acc_item] [acc_item title=&quot;Curabitur molestie euismod erat. Proin eros odio?&quot;] &lt;p&gt;Fusce eu dui. Integer vel nibh sit amet turpis vulputate aliquet. Phasellus id nisi vitae odio pretium aliquam. Pellentesque a leo. Donec consequat lectus sed felis. Quisque vestibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque.&lt;/p&gt;&lt;p&gt; Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi.&lt;/p&gt;[/acc_item] [acc_item title=&quot;In scelerisque sem at dolor. Maecenas mattis&quot;]&lt;p&gt;Fusce eu dui. Integer vel nibh sit amet turpis vulputate aliquet. Phasellus id nisi vitae odio pretium aliquam. Pellentesque a leo. Donec consequat lectus sed felis. Quisque vestibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi.&lt;/p&gt;[/acc_item] [acc_item title=&quot;Nunc feugiat mi a tellus consequat imperdiet&quot;]&lt;p&gt;Fusce eu dui. Integer vel nibh sit amet turpis vulputate aliquet. Phasellus id nisi vitae odio pretium aliquam. Pellentesque a leo. Donec consequat lectus sed felis. Quisque vestibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi.&lt;/p&gt;[/acc_item]  [acc_item title=&quot;Vestibulum ante ipsum primis in faucibus orci luctus &quot;]&lt;p&gt;Fusce eu dui. Integer vel nibh sit amet turpis vulputate aliquet. Phasellus id nisi vitae odio pretium aliquam. Pellentesque a leo. Donec consequat lectus sed felis. Quisque vestibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi.&lt;/p&gt;[/acc_item]  [acc_item title=&quot;SmartAddons membership fee is one-time fee, or I have to pay extra?&quot;]&lt;p&gt;Fusce eu dui. Integer vel nibh sit amet turpis vulputate aliquet. Phasellus id nisi vitae odio pretium aliquam. Pellentesque a leo. Donec consequat lectus sed felis. Quisque vestibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi.&lt;/p&gt;[/acc_item]    [/accordion] &lt;/div&gt;&lt;/div&gt;', 'fqa', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(7, 1, 'About 2', '&lt;div class=&quot;about-us about-demo-2&quot;&gt;    &lt;div class=&quot;row&quot;&gt;        &lt;div class=&quot;col-lg-12 col-md-12 about-us-center&quot;&gt;            &lt;div class=&quot;about-image-slider&quot;&gt;                	[content_slider item_lg=''1'' item_sm=''1'' item_xs=''1'' margin='''' arrow=''yes'' pagination=''no'' loop=''no'']			[content_slider_item]                &lt;img src=&quot;image/catalog/about/about-1.jpg&quot; alt=&quot;About Us&quot;&gt;		[/content_slider_item][content_slider_item]                    &lt;img src=&quot;image/catalog/about/about-2.jpg&quot; alt=&quot;About Us&quot;&gt;		[/content_slider_item][content_slider_item]                        &lt;img src=&quot;image/catalog/about/about-3.jpg&quot; alt=&quot;About Us&quot;&gt;		[/content_slider_item][/content_slider]&lt;/div&gt;                        &lt;div class=&quot;content-description&quot;&gt;                            &lt;h2 class=&quot;about-title&quot;&gt;About Us&lt;/h2&gt;                            &lt;p&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. &lt;/p&gt;                            &lt;p&gt;Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.&lt;/p&gt;                        &lt;/div&gt;                    &lt;/div&gt;                &lt;/div&gt;                &lt;div class=&quot;row&quot;&gt;                    &lt;div class=&quot;col-lg-12 col-md-12 our-team&quot;&gt;                        &lt;div class=&quot;our-team-content&quot;&gt;                            &lt;div class=&quot;our-team-slider&quot;&gt;							[content_slider items=''4'' margin=''30'' arrow=''yes'' pagination=''no'' loop=''no'']							[content_slider_item]                                                                &lt;div class=&quot;item&quot;&gt;                                    &lt;div class=&quot;member&quot;&gt;                                        &lt;div class=&quot;member-image&quot;&gt;                                            &lt;img src=&quot;image/catalog/about/ourmember01.png&quot; alt=&quot;Image Client&quot;&gt;                                            &lt;/div&gt;                                            &lt;div class=&quot;member-info&quot;&gt;                                                &lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;                                                &lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;                                                &lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;                                                &lt;ul class=&quot;social-member&quot;&gt;                                                    &lt;li class=&quot;social-icon rss&quot;&gt;                                                        &lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;                                                            &lt;span&gt;RSS&lt;/span&gt;                                                        &lt;/a&gt;                                                    &lt;/li&gt;                                                    &lt;li class=&quot;social-icon facebook&quot;&gt;                                                        &lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;                                                            &lt;span&gt;Facebook&lt;/span&gt;                                                        &lt;/a&gt;                                                    &lt;/li&gt;                                                    &lt;li class=&quot;social-icon twitter&quot;&gt;                                                        &lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;                                                            &lt;span&gt;Twitter&lt;/span&gt;                                                        &lt;/a&gt;                                                    &lt;/li&gt;                                                    &lt;li class=&quot;social-icon google&quot;&gt;                                                        &lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;                                                            &lt;span&gt;Google&lt;/span&gt;                                                        &lt;/a&gt;                                                    &lt;/li&gt;                                                &lt;/ul&gt;                                            &lt;/div&gt;                                        &lt;/div&gt;                                    &lt;/div&gt;									[/content_slider_item][content_slider_item]                                                                        &lt;div class=&quot;item&quot;&gt;                                        &lt;div class=&quot;member&quot;&gt;                                            &lt;div class=&quot;member-image&quot;&gt;                                                &lt;img src=&quot;image/catalog/about/ourmember02.png&quot; alt=&quot;Image Client&quot;&gt;                                                &lt;/div&gt;                                                &lt;div class=&quot;member-info&quot;&gt;                                                    &lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;                                                    &lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;                                                    &lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;                                                    &lt;ul class=&quot;social-member&quot;&gt;                                                        &lt;li class=&quot;social-icon rss&quot;&gt;                                                            &lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;                                                                &lt;span&gt;RSS&lt;/span&gt;                                                            &lt;/a&gt;                                                        &lt;/li&gt;                                                        &lt;li class=&quot;social-icon facebook&quot;&gt;                                                            &lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;                                                                &lt;span&gt;Facebook&lt;/span&gt;                                                            &lt;/a&gt;                                                        &lt;/li&gt;                                                        &lt;li class=&quot;social-icon twitter&quot;&gt;                                                            &lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;                                                                &lt;span&gt;Twitter&lt;/span&gt;                                                            &lt;/a&gt;                                                        &lt;/li&gt;                                                        &lt;li class=&quot;social-icon google&quot;&gt;                                                            &lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;                                                                &lt;span&gt;Google&lt;/span&gt;                                                            &lt;/a&gt;                                                        &lt;/li&gt;                                                    &lt;/ul&gt;                                                &lt;/div&gt;                                            &lt;/div&gt;                                        &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                                &lt;div class=&quot;item&quot;&gt;                                            &lt;div class=&quot;member&quot;&gt;                                                &lt;div class=&quot;member-image&quot;&gt;                                                    &lt;img src=&quot;image/catalog/about/ourmember03.png&quot; alt=&quot;Image Client&quot;&gt;                                                    &lt;/div&gt;                                                    &lt;div class=&quot;member-info&quot;&gt;                                                        &lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;                                                        &lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;                                                        &lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;                                                        &lt;ul class=&quot;social-member&quot;&gt;                                                            &lt;li class=&quot;social-icon rss&quot;&gt;                                                                &lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;                                                                    &lt;span&gt;RSS&lt;/span&gt;                                                                &lt;/a&gt;                                                            &lt;/li&gt;                                                            &lt;li class=&quot;social-icon facebook&quot;&gt;                                                                &lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;                                                                    &lt;span&gt;Facebook&lt;/span&gt;                                                                &lt;/a&gt;                                                            &lt;/li&gt;                                                            &lt;li class=&quot;social-icon twitter&quot;&gt;                                                                &lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;                                                                    &lt;span&gt;Twitter&lt;/span&gt;                                                                &lt;/a&gt;                                                            &lt;/li&gt;                                                            &lt;li class=&quot;social-icon google&quot;&gt;                                                                &lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;                                                                    &lt;span&gt;Google&lt;/span&gt;                                                                &lt;/a&gt;                                                            &lt;/li&gt;                                                        &lt;/ul&gt;                                                    &lt;/div&gt;                                                &lt;/div&gt;                                            &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                                        &lt;div class=&quot;item&quot;&gt;                                                &lt;div class=&quot;member&quot;&gt;                                                    &lt;div class=&quot;member-image&quot;&gt;                                                        &lt;img src=&quot;image/catalog/about/ourmember04.png&quot; alt=&quot;Image Client&quot;&gt;                                                        &lt;/div&gt;                                                        &lt;div class=&quot;member-info&quot;&gt;                                                            &lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;                                                            &lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;                                                            &lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;                                                            &lt;ul class=&quot;social-member&quot;&gt;                                                                &lt;li class=&quot;social-icon rss&quot;&gt;                                                                    &lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;                                                                        &lt;span&gt;RSS&lt;/span&gt;                                                                    &lt;/a&gt;                                                                &lt;/li&gt;                                                                &lt;li class=&quot;social-icon facebook&quot;&gt;                                                                    &lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;                                                                        &lt;span&gt;Facebook&lt;/span&gt;                                                                    &lt;/a&gt;                                                                &lt;/li&gt;                                                                &lt;li class=&quot;social-icon twitter&quot;&gt;                                                                    &lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;                                                                        &lt;span&gt;Twitter&lt;/span&gt;                                                                    &lt;/a&gt;                                                                &lt;/li&gt;                                                                &lt;li class=&quot;social-icon google&quot;&gt;                                                                    &lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;                                                                        &lt;span&gt;Google&lt;/span&gt;                                                                    &lt;/a&gt;                                                                &lt;/li&gt;                                                            &lt;/ul&gt;                                                        &lt;/div&gt;                                                    &lt;/div&gt;                                                &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                                                &lt;div class=&quot;item&quot;&gt;                                                    &lt;div class=&quot;member&quot;&gt;                                                        &lt;div class=&quot;member-image&quot;&gt;                                                            &lt;img src=&quot;image/catalog/about/ourmember01.png&quot; alt=&quot;Image Client&quot;&gt;                                                            &lt;/div&gt;                                                            &lt;div class=&quot;member-info&quot;&gt;                                                                &lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;                                                                &lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;                                                                &lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;                                                                &lt;ul class=&quot;social-member&quot;&gt;                                                                    &lt;li class=&quot;social-icon rss&quot;&gt;                                                                        &lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;                                                                            &lt;span&gt;RSS&lt;/span&gt;                                                                        &lt;/a&gt;                                                                    &lt;/li&gt;                                                                    &lt;li class=&quot;social-icon facebook&quot;&gt;                                                                        &lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;                                                                            &lt;span&gt;Facebook&lt;/span&gt;                                                                        &lt;/a&gt;                                                                    &lt;/li&gt;                                                                    &lt;li class=&quot;social-icon twitter&quot;&gt;                                                                        &lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;                                                                            &lt;span&gt;Twitter&lt;/span&gt;                                                                        &lt;/a&gt;                                                                    &lt;/li&gt;                                                                    &lt;li class=&quot;social-icon google&quot;&gt;                                                                        &lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;                                                                            &lt;span&gt;Google&lt;/span&gt;                                                                        &lt;/a&gt;                                                                    &lt;/li&gt;                                                                &lt;/ul&gt;                                                            &lt;/div&gt;                                                        &lt;/div&gt;                                                    &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                                                        &lt;div class=&quot;item&quot;&gt;                                                        &lt;div class=&quot;member&quot;&gt;                                                            &lt;div class=&quot;member-image&quot;&gt;                                                                &lt;img src=&quot;image/catalog/about/ourmember03.png&quot; alt=&quot;Image Client&quot;&gt;                                                                &lt;/div&gt;                                                                &lt;div class=&quot;member-info&quot;&gt;                                                                    &lt;h3 class=&quot;name-member&quot;&gt;Jennifer lawrence&lt;/h3&gt;                                                                    &lt;p class=&quot;job-member&quot;&gt;Co Founder&lt;/p&gt;                                                                    &lt;p class=&quot;des-member&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer condimentum&lt;/p&gt;                                                                    &lt;ul class=&quot;social-member&quot;&gt;                                                                        &lt;li class=&quot;social-icon rss&quot;&gt;                                                                            &lt;a class=&quot;fa fa-rss&quot; href=&quot;#&quot; title=&quot;RSS&quot;&gt;                                                                                &lt;span&gt;RSS&lt;/span&gt;                                                                            &lt;/a&gt;                                                                        &lt;/li&gt;                                                                        &lt;li class=&quot;social-icon facebook&quot;&gt;                                                                            &lt;a class=&quot;fa fa-facebook&quot; href=&quot;#&quot; title=&quot;Facebook&quot;&gt;                                                                                &lt;span&gt;Facebook&lt;/span&gt;                                                                            &lt;/a&gt;                                                                        &lt;/li&gt;                                                                        &lt;li class=&quot;social-icon twitter&quot;&gt;                                                                            &lt;a class=&quot;fa fa-twitter&quot; href=&quot;#&quot; title=&quot;Twitter&quot;&gt;                                                                                &lt;span&gt;Twitter&lt;/span&gt;                                                                            &lt;/a&gt;                                                                        &lt;/li&gt;                                                                        &lt;li class=&quot;social-icon google&quot;&gt;                                                                            &lt;a class=&quot;fa fa-google&quot; href=&quot;#&quot; title=&quot;Google&quot;&gt;                                                                                &lt;span&gt;Google&lt;/span&gt;                                                                            &lt;/a&gt;                                                                        &lt;/li&gt;                                                                    &lt;/ul&gt;                                                                &lt;/div&gt;                                                            &lt;/div&gt;                                                        &lt;/div&gt;[/content_slider_item][/content_slider]                                                                                                        &lt;/div&gt;                                                &lt;/div&gt;                                            &lt;/div&gt;                                        &lt;/div&gt;                                        &lt;div class=&quot;row&quot;&gt;                                            &lt;div class=&quot;col-lg-12 col-md-12 client-logo&quot;&gt;                                                &lt;div class=&quot;client-logo-content&quot;&gt;                                                    &lt;h2 class=&quot;about-title&quot;&gt;Our Happy Clients&lt;/h2&gt;                                                    &lt;div class=&quot;client-logo-slider&quot;&gt;													[content_slider items=''6'' margin=''30'' arrow=''yes'' pagination=''no'' loop=''no'']													[content_slider_item]                                                        &lt;div class=&quot;item&quot;&gt;                                                            &lt;a href=&quot;#&quot; title=&quot;Client&quot;&gt;                                                                &lt;img src=&quot;image/catalog/about/about-client-1.png&quot; alt=&quot;Client&quot;&gt;                                                                &lt;/a&gt;                                                            &lt;/div&gt;[/content_slider_item][content_slider_item]                                                            &lt;div class=&quot;item&quot;&gt;                                                                &lt;a href=&quot;#&quot; title=&quot;Client&quot;&gt;                                                                    &lt;img src=&quot;image/catalog/about/about-client-2.png&quot; alt=&quot;Client&quot;&gt;                                                                    &lt;/a&gt;                                                                &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                &lt;div class=&quot;item&quot;&gt;                                                                    &lt;a href=&quot;#&quot; title=&quot;Client&quot;&gt;                                                                        &lt;img src=&quot;image/catalog/about/about-client-3.png&quot; alt=&quot;Client&quot;&gt;                                                                        &lt;/a&gt;                                                                    &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                    &lt;div class=&quot;item&quot;&gt;                                                                        &lt;a href=&quot;#&quot; title=&quot;Client&quot;&gt;                                                                            &lt;img src=&quot;image/catalog/about/about-client-4.png&quot; alt=&quot;Client&quot;&gt;                                                                            &lt;/a&gt;                                                                        &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                        &lt;div class=&quot;item&quot;&gt;                                                                            &lt;a href=&quot;#&quot; title=&quot;Client&quot;&gt;                                                                                &lt;img src=&quot;image/catalog/about/about-client-5.png&quot; alt=&quot;Client&quot;&gt;                                                                                &lt;/a&gt;                                                                            &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                            &lt;div class=&quot;item&quot;&gt;                                                                                &lt;a href=&quot;#&quot; title=&quot;Client&quot;&gt;                                                                                    &lt;img src=&quot;image/catalog/about/about-client-6.png&quot; alt=&quot;Client&quot;&gt;                                                                                    &lt;/a&gt;                                                                                &lt;/div&gt;[/content_slider_item][content_slider_item]                                                                                &lt;div class=&quot;item&quot;&gt;                                                                                    &lt;a href=&quot;#&quot; title=&quot;Client&quot;&gt;                                                                                        &lt;img src=&quot;image/catalog/about/about-client-1.png&quot; alt=&quot;Client&quot;&gt;                                                                                        &lt;/a&gt;                                                                                    &lt;/div&gt;[/content_slider_item][/content_slider]                                                                                &lt;/div&gt;                                                                            &lt;/div&gt;                                                                        &lt;/div&gt;                                                                    &lt;/div&gt;                                                                &lt;/div&gt;', 'about us', '', ''),
(8, 1, 'About 3', '&lt;div class=&quot;about-us about-demo-3&quot;&gt;	&lt;div class=&quot;row&quot;&gt;		&lt;div class=&quot;col-lg-6 col-md-6 about-image&quot;&gt;			&lt;img src=&quot;image/catalog/about/about-us-demo3.jpg&quot; alt=&quot;About Us&quot;&gt;		&lt;/div&gt;				&lt;div class=&quot;col-lg-6 col-md-6 about-info&quot;&gt;			&lt;h2 class=&quot;about-title&quot;&gt;About Us&lt;/h2&gt;			&lt;div class=&quot;about-text&quot;&gt;				&lt;p&gt;					Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. 				&lt;/p&gt;				&lt;p&gt;Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.&lt;/p&gt;			&lt;/div&gt;		&lt;/div&gt;	&lt;/div&gt;	&lt;div class=&quot;row&quot;&gt;		&lt;div class=&quot;col-lg-6 col-md-6 skills-description&quot;&gt;			&lt;h2 class=&quot;about-title&quot;&gt;Our Skills&lt;/h2&gt;			&lt;p&gt;Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.&lt;br&gt; 				Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,			&lt;/p&gt;		&lt;/div&gt;				&lt;div class=&quot;col-lg-6 col-md-6 skills-value&quot;&gt;			&lt;ul class=&quot;value-list&quot;&gt;				&lt;li class=&quot;item&quot;&gt;					&lt;p class=&quot;label-skill&quot;&gt;Skill Lorem ipsum:&lt;/p&gt;					&lt;div class=&quot;range-value&quot; style=&quot;background-color:#d9d9d9&quot;&gt;						&lt;span class=&quot;rating-skills skill-1&quot; style=&quot;width:85%;&quot;&gt;85%&lt;/span&gt;					&lt;/div&gt;				&lt;/li&gt;								&lt;li class=&quot;item&quot;&gt;					&lt;p class=&quot;label-skill&quot;&gt;Skill donec pede:&lt;/p&gt;					&lt;div class=&quot;range-value&quot; style=&quot;background-color:#d9d9d9&quot;&gt;						&lt;span class=&quot;rating-skills skill-2&quot; style=&quot;width:74%;&quot;&gt;74%&lt;/span&gt;					&lt;/div&gt;				&lt;/li&gt;								&lt;li class=&quot;item&quot;&gt;					&lt;p class=&quot;label-skill&quot;&gt;Skill nulla consequat:&lt;/p&gt;					&lt;div class=&quot;range-value&quot; style=&quot;background-color:#d9d9d9&quot;&gt;						&lt;span class=&quot;rating-skills skill-3&quot; style=&quot;width:89%;&quot;&gt;89%&lt;/span&gt;					&lt;/div&gt;				&lt;/li&gt;			&lt;/ul&gt;		&lt;/div&gt;	&lt;/div&gt;	&lt;/div&gt;', 'about us', '', ''),
(9, 1, 'About 4', '&lt;div class=&quot;about-us about-demo-4&quot;&gt;	&lt;div class=&quot;row&quot;&gt;		&lt;div class=&quot;col-lg-6 col-md-6 about-us-content&quot;&gt;			&lt;div class=&quot;content-about&quot;&gt;				&lt;h2 class=&quot;about-title&quot;&gt;About Us&lt;/h2&gt;				&lt;img src=&quot;image/catalog/about/about-us-demo4.jpg&quot; alt=&quot;About Us&quot;&gt;				&lt;p class=&quot;description-about&quot;&gt;					Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.&lt;br&gt;					Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec vulputate				&lt;/p&gt;			&lt;/div&gt;		&lt;/div&gt;				&lt;div class=&quot;col-lg-6 col-md-6 faq-about-us&quot;&gt;			&lt;h2 class=&quot;about-title&quot;&gt;Faqs&lt;/h2&gt;			&lt;div class=&quot;content-faq&quot;&gt;				&lt;div id=&quot;accordion&quot; role=&quot;tablist&quot; aria-multiselectable=&quot;true&quot;&gt;				  &lt;div class=&quot;panel&quot;&gt;					&lt;div class=&quot;panel-head&quot; role=&quot;tab&quot; id=&quot;headingOne&quot;&gt;					  &lt;h4 class=&quot;panel-title&quot;&gt;						&lt;a role=&quot;button&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseOne&quot; aria-expanded=&quot;false&quot; aria-controls=&quot;collapseOne&quot; class=&quot;collapsed&quot;&gt;						  &lt;span&gt;Etharums ser quidem rerum?&lt;/span&gt;						&lt;/a&gt;					  &lt;/h4&gt;					&lt;/div&gt;					&lt;div id=&quot;collapseOne&quot; class=&quot;panel-collapse collapse&quot; role=&quot;tabpanel&quot; aria-labelledby=&quot;headingOne&quot; aria-expanded=&quot;false&quot; style=&quot;height: 0px;&quot;&gt;					  &lt;div class=&quot;panel-body&quot;&gt;						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 					  &lt;/div&gt;					&lt;/div&gt;				  &lt;/div&gt;				  				  &lt;div class=&quot;panel&quot;&gt;					&lt;div class=&quot;panel-head&quot; role=&quot;tab&quot; id=&quot;headingTwo&quot;&gt;					  &lt;h4 class=&quot;panel-title&quot;&gt;						&lt;a class=&quot;collapsed&quot; role=&quot;button&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseTwo&quot; aria-expanded=&quot;false&quot; aria-controls=&quot;collapseTwo&quot;&gt;						  &lt;span&gt;Lorem ipsum dolor sit amet?&lt;/span&gt;						&lt;/a&gt;					  &lt;/h4&gt;					&lt;/div&gt;					&lt;div id=&quot;collapseTwo&quot; class=&quot;panel-collapse collapse&quot; role=&quot;tabpanel&quot; aria-labelledby=&quot;headingTwo&quot; aria-expanded=&quot;false&quot; style=&quot;height: 0px;&quot;&gt;					  &lt;div class=&quot;panel-body&quot;&gt;						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 					  &lt;/div&gt;					&lt;/div&gt;				  &lt;/div&gt;				  				  &lt;div class=&quot;panel&quot;&gt;					&lt;div class=&quot;panel-head&quot; role=&quot;tab&quot; id=&quot;headingThree&quot;&gt;					  &lt;h4 class=&quot;panel-title&quot;&gt;						&lt;a class=&quot;collapsed&quot; role=&quot;button&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseThree&quot; aria-expanded=&quot;false&quot; aria-controls=&quot;collapseThree&quot;&gt;						  &lt;span&gt;Nam vitae felis pretium, euismod ipsum nec?&lt;/span&gt;						&lt;/a&gt;					  &lt;/h4&gt;					&lt;/div&gt;					&lt;div id=&quot;collapseThree&quot; class=&quot;panel-collapse collapse&quot; role=&quot;tabpanel&quot; aria-labelledby=&quot;headingThree&quot; aria-expanded=&quot;false&quot; style=&quot;height: 0px;&quot;&gt;					  &lt;div class=&quot;panel-body&quot;&gt;						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 					  &lt;/div&gt;					&lt;/div&gt;				  &lt;/div&gt;				  				  &lt;div class=&quot;panel&quot;&gt;					&lt;div class=&quot;panel-head&quot; role=&quot;tab&quot; id=&quot;headingFour&quot;&gt;					  &lt;h4 class=&quot;panel-title&quot;&gt;						&lt;a class=&quot;collapsed&quot; role=&quot;button&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseFour&quot; aria-expanded=&quot;false&quot; aria-controls=&quot;collapseFour&quot;&gt;						  &lt;span&gt;Quisque posuere dolor in malesuada?&lt;/span&gt;						&lt;/a&gt;					  &lt;/h4&gt;					&lt;/div&gt;					&lt;div id=&quot;collapseFour&quot; class=&quot;panel-collapse collapse&quot; role=&quot;tabpanel&quot; aria-labelledby=&quot;headingFour&quot; aria-expanded=&quot;false&quot; style=&quot;height: 0px;&quot;&gt;					  &lt;div class=&quot;panel-body&quot;&gt;						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 					  &lt;/div&gt;					&lt;/div&gt;				  &lt;/div&gt;				  				  &lt;div class=&quot;panel&quot;&gt;					&lt;div class=&quot;panel-head&quot; role=&quot;tab&quot; id=&quot;headingFive&quot;&gt;					  &lt;h4 class=&quot;panel-title&quot;&gt;						&lt;a class=&quot;collapsed&quot; role=&quot;button&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseFive&quot; aria-expanded=&quot;false&quot; aria-controls=&quot;collapseFive&quot;&gt;						  &lt;span&gt;Quisque posuere dolor in malesuada?&lt;/span&gt;						&lt;/a&gt;					  &lt;/h4&gt;					&lt;/div&gt;					&lt;div id=&quot;collapseFive&quot; class=&quot;panel-collapse collapse&quot; role=&quot;tabpanel&quot; aria-labelledby=&quot;headingFive&quot; aria-expanded=&quot;false&quot; style=&quot;height: 0px;&quot;&gt;					  &lt;div class=&quot;panel-body&quot;&gt;						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 					  &lt;/div&gt;					&lt;/div&gt;				  &lt;/div&gt;				  				  &lt;div class=&quot;panel&quot;&gt;					&lt;div class=&quot;panel-head&quot; role=&quot;tab&quot; id=&quot;headingSix&quot;&gt;					  &lt;h4 class=&quot;panel-title&quot;&gt;						&lt;a class=&quot;&quot; role=&quot;button&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseSix&quot; aria-expanded=&quot;true&quot; aria-controls=&quot;collapseSix&quot;&gt;						  &lt;span&gt;Lorem ipsum dolor sit amet?&lt;/span&gt;						&lt;/a&gt;					  &lt;/h4&gt;					&lt;/div&gt;					&lt;div id=&quot;collapseSix&quot; class=&quot;panel-collapse collapse in&quot; role=&quot;tabpanel&quot; aria-labelledby=&quot;headingSix&quot; aria-expanded=&quot;true&quot;&gt;					  &lt;div class=&quot;panel-body&quot;&gt;						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. 					  &lt;/div&gt;					&lt;/div&gt;				  &lt;/div&gt;				&lt;/div&gt;			&lt;/div&gt;		&lt;/div&gt;	&lt;/div&gt;&lt;/div&gt;', 'about us', '', ''),
(11, 1, 'Gallery', '[gallery columns=&quot;4&quot; width=&quot;278&quot; height=&quot;180&quot; ] [gallery_item tag=&quot;Joomla&quot; title=&quot;Title gallery 1&quot; src=&quot;catalog/about/about-1.jpg&quot; video_addr=&quot;&quot; ] Image Description 1 [/gallery_item] [gallery_item tag=&quot;Joomla&quot; title=&quot;Title gallery 2 &quot; src=&quot;catalog/about/about-2.jpg&quot; video_addr=&quot;&quot; ] Image Description 2 [/gallery_item] [gallery_item tag=&quot;Wordpress&quot; title=&quot;Title gallery 3&quot; src=&quot;catalog/about/about-3.jpg&quot; video_addr=&quot;&quot; ] Image Description 3 [/gallery_item] [gallery_item tag=&quot;Magento&quot; title=&quot;Title gallery 4 &quot; src=&quot;catalog/about/about-1.jpg&quot; video_addr=&quot;&quot; ] Image Description 4 [/gallery_item] [gallery_item tag=&quot;Magento&quot; title=&quot;Title gallery 5&quot; src=&quot;catalog/about/about-2.jpg&quot; video_addr=&quot;&quot; ] Image Description 5 [/gallery_item]   [gallery_item tag=&quot;Magento&quot; title=&quot;Title gallery 6&quot; src=&quot;catalog/about/about-1.jpg&quot; video_addr=&quot;&quot; ] Image Description 6 [/gallery_item]    [gallery_item tag=&quot;Magento&quot; title=&quot;Title gallery 7&quot; src=&quot;catalog/about/about-3.jpg&quot; video_addr=&quot;&quot; ] Image Description 7 [/gallery_item]       [gallery_item tag=&quot;Magento&quot; title=&quot;Title gallery 8&quot; src=&quot;catalog/about/about-2.jpg&quot; video_addr=&quot;&quot; ] Image Description 8 [/gallery_item]  [/gallery]', 'gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 3, 0),
(3, 2, 0),
(3, 0, 0),
(5, 3, 0),
(5, 4, 0),
(4, 2, 0),
(4, 3, 0),
(6, 2, 0),
(6, 0, 0),
(3, 3, 0),
(5, 2, 0),
(5, 0, 0),
(7, 3, 0),
(7, 2, 0),
(7, 0, 0),
(8, 0, 0),
(8, 2, 0),
(8, 3, 0),
(9, 0, 0),
(9, 2, 0),
(9, 3, 0),
(11, 3, 0),
(11, 2, 0),
(11, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Arabic', 'ar', 'ar_LB', 'lb.png', 'arabic', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(16, 'Home2'),
(17, 'Home3'),
(29, 'Special'),
(35, 'Product Layout 2'),
(31, 'Simple Blog'),
(32, 'Category Layout2'),
(33, 'Category Layout3'),
(37, 'product Layout 3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4126 ;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(4113, 1, 'so_deals.142', 'column_left', 2),
(4112, 1, 'so_latest_blog.164', 'content_block3', 1),
(4111, 1, 'so_megamenu.119', 'column_left', 0),
(4110, 1, 'so_listing_tabs.140', 'content_block2', 2),
(4109, 1, 'so_searchpro.94', 'content_search', 0),
(4108, 1, 'manufacturers', 'content_block4', 0),
(4107, 1, 'so_html.147', 'content_block3', 0),
(4106, 1, 'so_html.136', 'content_block1', 0),
(4105, 1, 'so_html.138', 'content_block2', 1),
(3591, 13, 'so_popular_tags.133', 'content_block6', 0),
(3695, 7, 'so_megamenu.119', 'content_block1', 0),
(3600, 10, 'so_searchpro.94', 'content_search', 0),
(3691, 5, 'so_megamenu.118', 'content_menu', 0),
(3590, 13, 'so_megamenu.118', 'content_menu', 0),
(3498, 32, 'so_searchpro.94', 'content_search', 0),
(3458, 3, 'so_html.132', 'content_block5', 0),
(3725, 11, 'so_html.132', 'content_block5', 0),
(3596, 9, 'so_megamenu.118', 'content_menu', 0),
(3599, 10, 'so_megamenu.118', 'content_menu', 0),
(3686, 6, 'so_popular_tags.133', 'content_block6', 0),
(2186, 29, 'so_searchpro.94', 'content_search', 0),
(3455, 3, 'latest.96', 'column_left', 1),
(3497, 32, 'so_html.132', 'content_block5', 0),
(3431, 17, 'so_category_slider.155', 'content_top', 4),
(4124, 2, 'so_megamenu.118', 'content_menu', 0),
(3425, 17, 'so_html.132', 'content_block5', 0),
(3426, 17, 'so_megamenu.118', 'content_menu', 0),
(3685, 6, 'so_searchpro.94', 'content_search', 0),
(3457, 3, 'so_megamenu.119', 'content_block1', 0),
(4025, 16, 'so_html.138', 'content_block2', 1),
(3432, 17, 'so_category_slider.154', 'content_top', 3),
(3433, 17, 'so_html.157', 'content_block3', 1),
(3728, 11, 'so_megamenu.119', 'content_block1', 0),
(3430, 17, 'so_megamenu.119', 'content_block1', 0),
(3503, 33, 'category', 'column_left', 0),
(3502, 33, 'so_searchpro.94', 'content_search', 0),
(3429, 17, 'so_html.150', 'content_top', 1),
(3427, 17, 'manufacturers', 'content_top', 5),
(3456, 3, 'so_popular_tags.133', 'content_block6', 0),
(3454, 3, 'so_megamenu.118', 'content_menu', 2),
(3544, 37, 'so_searchpro.94', 'content_search', 0),
(3817, 31, 'account', 'column_left', 1),
(3682, 6, 'account', 'column_right', 0),
(3301, 8, 'so_html.132', 'content_block5', 0),
(4123, 2, 'so_html.132', 'content_block5', 0),
(4122, 2, 'so_megamenu.119', 'content_block1', 0),
(3598, 10, 'so_popular_tags.133', 'content_block6', 0),
(3694, 7, 'so_html.132', 'content_block5', 0),
(3693, 7, 'so_searchpro.94', 'content_search', 0),
(3733, 12, 'so_html.132', 'content_block5', 0),
(3732, 12, 'so_popular_tags.133', 'content_block6', 0),
(3300, 8, 'so_popular_tags.133', 'content_block6', 0),
(3299, 8, 'so_megamenu.118', 'content_menu', 0),
(3298, 8, 'so_megamenu.119', 'content_block1', 0),
(3297, 8, 'so_searchpro.94', 'content_search', 0),
(3684, 6, 'so_html.132', 'content_block5', 0),
(3453, 3, 'so_searchpro.94', 'content_search', 0),
(3689, 5, 'so_popular_tags.133', 'content_block6', 0),
(3690, 5, 'so_megamenu.119', 'content_block1', 0),
(3589, 13, 'so_megamenu.119', 'content_block1', 0),
(3588, 13, 'so_html.132', 'content_block5', 0),
(3586, 13, 'so_searchpro.94', 'content_search', 0),
(3816, 31, 'so_html.132', 'content_block5', 0),
(3815, 31, 'so_megamenu.118', 'content_menu', 0),
(3595, 9, 'so_megamenu.119', 'content_block1', 0),
(3594, 9, 'so_html.132', 'content_block5', 0),
(3592, 9, 'so_searchpro.94', 'content_search', 0),
(4037, 16, 'so_listing_tabs.141', 'content_block2', 0),
(4036, 16, 'so_html.132', 'content_block5', 0),
(4035, 16, 'so_deals.142', 'column_left', 2),
(4034, 16, 'so_searchpro.94', 'content_search', 0),
(4033, 16, 'so_listing_tabs.140', 'content_block2', 2),
(4032, 16, 'manufacturers', 'content_block4', 0),
(4029, 16, 'so_html.136', 'content_block1', 0),
(4030, 16, 'so_html.143', 'column_left', 3),
(3496, 32, 'so_popular_tags.133', 'content_block6', 0),
(3451, 3, 'category', 'column_left', 0),
(3692, 7, 'so_popular_tags.133', 'content_block6', 0),
(3688, 5, 'so_html.132', 'content_block5', 0),
(3428, 17, 'banner.149', 'content_top', 0),
(3424, 17, 'so_deals.151', 'content_top', 2),
(3422, 17, 'so_html.156', 'content_block3', 0),
(3423, 17, 'so_popular_tags.133', 'content_block6', 0),
(3421, 17, 'so_searchpro.94', 'content_search', 0),
(3499, 32, 'so_megamenu.118', 'content_menu', 0),
(3500, 32, 'category', 'column_left', 0),
(3501, 32, 'latest.96', 'column_left', 1),
(3504, 33, 'so_html.132', 'content_block5', 0),
(3505, 33, 'latest.96', 'column_left', 1),
(3506, 33, 'so_megamenu.119', 'content_block1', 0),
(3507, 33, 'so_megamenu.118', 'content_menu', 0),
(3508, 33, 'so_popular_tags.133', 'content_block6', 0),
(4121, 2, 'so_related_tabs.165', 'content_bottom', 0),
(4120, 2, 'so_searchpro.94', 'content_search', 0),
(3683, 6, 'so_megamenu.118', 'content_menu', 0),
(3542, 37, 'so_megamenu.119', 'content_block1', 0),
(3541, 37, 'so_megamenu.118', 'content_menu', 0),
(3540, 37, 'so_html.132', 'content_block5', 0),
(3539, 37, 'so_popular_tags.133', 'content_block6', 0),
(4117, 35, 'so_popular_tags.133', 'content_block6', 0),
(4116, 35, 'so_searchpro.94', 'content_search', 0),
(4115, 35, 'so_megamenu.118', 'content_menu', 0),
(4114, 35, 'account', 'content_bottom', 0),
(3681, 6, 'so_megamenu.119', 'content_block1', 0),
(3814, 31, 'so_megamenu.119', 'content_block1', 0),
(3597, 9, 'so_popular_tags.133', 'content_block6', 0),
(3602, 10, 'so_html.132', 'content_block5', 0),
(3603, 10, 'so_megamenu.119', 'content_block1', 0),
(3731, 12, 'so_megamenu.118', 'content_menu', 0),
(3730, 12, 'so_megamenu.119', 'content_block1', 0),
(3687, 5, 'so_searchpro.94', 'content_search', 0),
(3727, 11, 'so_popular_tags.133', 'content_block6', 0),
(3696, 7, 'so_megamenu.118', 'content_menu', 0),
(3724, 11, 'so_searchpro.94', 'content_search', 0),
(3712, 4, 'so_searchpro.94', 'content_search', 0),
(3711, 4, 'so_megamenu.118', 'content_menu', 0),
(3713, 4, 'so_megamenu.119', 'content_block1', 0),
(3714, 4, 'so_popular_tags.133', 'content_block6', 0),
(3715, 4, 'so_html.132', 'content_block5', 0),
(3813, 31, 'simple_blog_category', 'column_left', 0),
(3812, 31, 'latest.96', 'column_left', 2),
(3729, 11, 'so_megamenu.118', 'content_menu', 0),
(3734, 12, 'so_searchpro.94', 'content_search', 0),
(4031, 16, 'so_megamenu.119', 'column_left', 0),
(4028, 16, 'so_popular_tags.133', 'content_block6', 0),
(4027, 16, 'so_megamenu.118', 'content_menu', 0),
(4026, 16, 'banner.135', 'content_top', 0),
(3818, 31, 'so_searchpro.94', 'content_search', 0),
(3819, 31, 'so_popular_tags.133', 'content_block6', 0),
(4104, 1, 'so_html.143', 'column_left', 3),
(4103, 1, 'so_popular_tags.133', 'content_block6', 0),
(4102, 1, 'so_megamenu.118', 'content_menu', 0),
(4101, 1, 'so_listing_tabs.141', 'content_block2', 0),
(4100, 1, 'banner.135', 'content_top', 0),
(4099, 1, 'so_html.132', 'content_block5', 0),
(4098, 1, 'newsletters', 'column_left', 1),
(4118, 35, 'so_html.132', 'content_block5', 0),
(4119, 35, 'so_related_tabs.165', 'content_bottom', 0),
(4125, 2, 'so_popular_tags.133', 'content_block6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1162 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(1067, 10, 0, 'affiliate/%'),
(1110, 5, 2, 'product/manufacturer/%'),
(1154, 16, 2, 'common/home'),
(1136, 12, 3, 'product/compare'),
(1115, 7, 3, 'checkout/%'),
(1127, 4, 2, ''),
(1029, 17, 3, 'common/home'),
(1064, 9, 0, 'information/sitemap'),
(1126, 4, 0, ''),
(1159, 1, 0, 'common/home'),
(1161, 2, 0, 'product/product'),
(1114, 7, 2, 'checkout/%'),
(789, 29, 2, 'product/special'),
(788, 29, 3, 'product/special'),
(1133, 11, 2, 'information/information'),
(1160, 35, 2, 'product/product'),
(1032, 3, 0, 'product/category'),
(1107, 6, 3, 'account/%'),
(1066, 10, 3, 'affiliate/%'),
(1135, 12, 2, 'product/compare'),
(1108, 5, 0, 'product/manufacturer/%'),
(1063, 9, 3, 'information/sitemap'),
(1139, 31, 2, 'simple_blog%'),
(1061, 13, 2, 'product/search'),
(1035, 32, 2, 'product/category'),
(1036, 33, 3, 'product/category'),
(1042, 37, 3, 'product/product'),
(1060, 13, 3, 'product/search'),
(790, 29, 0, 'product/special'),
(1007, 8, 2, 'information/contact'),
(1131, 11, 0, 'information/information'),
(1106, 6, 2, 'account/%'),
(1113, 7, 0, 'checkout/%'),
(1006, 8, 3, 'information/contact'),
(1059, 13, 0, 'product/search'),
(1062, 9, 2, 'information/sitemap'),
(1065, 10, 2, 'affiliate/%'),
(1134, 12, 0, 'product/compare'),
(1009, 8, 0, 'information/contact'),
(1109, 5, 3, 'product/manufacturer/%'),
(1105, 6, 0, 'account/%'),
(1138, 31, 3, 'simple_blog%'),
(1132, 11, 3, 'information/information'),
(1125, 4, 3, ''),
(1140, 31, 0, 'simple_blog%');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/brands/themeforest.jpg', 0),
(6, 'Palm', 'catalog/brands/3docean.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/brands/photodune.jpg', 0),
(8, 'Apple', 'catalog/brands/3docean.jpg', 0),
(9, 'Canon', 'catalog/brands/audiojungle.jpg', 0),
(10, 'Sony', 'catalog/brands/3docean.jpg', 0),
(11, '3docean', 'catalog/brands/3docean.jpg', 0),
(12, 'audiojungle', 'catalog/brands/audiojungle.jpg', 0),
(13, 'photodune', 'catalog/brands/photodune.jpg', 0),
(14, 'themeforest', 'catalog/brands/themeforest.jpg', 0),
(15, 'Seller', 'catalog/brands/audiojungle.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(5, 2),
(5, 3),
(5, 4),
(6, 0),
(6, 2),
(6, 3),
(6, 4),
(7, 0),
(7, 2),
(7, 3),
(7, 4),
(8, 0),
(8, 2),
(8, 3),
(8, 4),
(9, 0),
(9, 2),
(9, 3),
(9, 4),
(10, 0),
(10, 2),
(10, 3),
(10, 4),
(11, 0),
(11, 2),
(11, 3),
(11, 4),
(12, 0),
(12, 2),
(12, 3),
(12, 4),
(13, 0),
(13, 2),
(13, 3),
(13, 4),
(14, 0),
(14, 2),
(14, 3),
(15, 0),
(15, 2),
(15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_mega_menu`
--

DROP TABLE IF EXISTS `oc_mega_menu`;
CREATE TABLE IF NOT EXISTS `oc_mega_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `rang` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT '',
  `name` text,
  `type_link` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `link` text,
  `description` text,
  `new_window` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `submenu_width` text,
  `submenu_type` int(11) NOT NULL DEFAULT '0',
  `content_width` int(11) NOT NULL DEFAULT '12',
  `content_type` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `label_item` varchar(255) NOT NULL DEFAULT '',
  `icon_font` varchar(255) NOT NULL DEFAULT '',
  `class_menu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=182 ;

--
-- Dumping data for table `oc_mega_menu`
--

INSERT INTO `oc_mega_menu` (`id`, `parent_id`, `rang`, `icon`, `name`, `type_link`, `module_id`, `link`, `description`, `new_window`, `status`, `position`, `submenu_width`, `submenu_type`, `content_width`, `content_type`, `content`, `label_item`, `icon_font`, `class_menu`) VALUES
(156, 0, 20, 'catalog/dot.png', 'a:2:{i:1;s:21:"Jewelry &amp; Watches";i:2;s:21:"Jewelry &amp; Watches";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"20";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '30%', 0, 4, 2, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:3:{i:0;a:2:{s:4:"name";s:42:"Automotive  >  Car Alarms and Security";s:2:"id";i:61;}i:1;a:3:{s:4:"name";s:11:"Electronics";s:2:"id";i:18;s:8:"children";a:4:{i:0;a:2:{s:4:"name";s:33:"Jewelry & Watches  >  Earings";s:2:"id";i:76;}i:1;a:2:{s:4:"name";s:19:"Flashlights & Lamps";s:2:"id";i:80;}i:2;a:2:{s:4:"name";s:34:"Health & Beauty  >  Fragrances";s:2:"id";i:66;}i:3;a:2:{s:4:"name";s:27:"Top Selling  >  Fashion";s:2:"id";i:91;}}}i:2;a:2:{s:4:"name";s:41:"Toys & Hobbies  >  FPV System & Parts";s:2:"id";i:73;}}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', '  css-menu'),
(153, 0, 15, 'catalog/dot.png', 'a:2:{i:1;s:32:"Outdoor &amp; Traveling Supplies";i:2;s:32:"Outdoor &amp; Traveling Supplies";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"72";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(154, 0, 16, 'catalog/dot.png', 'a:2:{i:1;s:19:"Health &amp; Beauty";i:2;s:19:"Health &amp; Beauty";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"24";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(155, 0, 17, 'catalog/dot.png', 'a:2:{i:1;s:19:"Toys &amp; Hobbies ";i:2;s:19:"Toys &amp; Hobbies ";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"57";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '58%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ' vertical-style2'),
(150, 0, 11, 'catalog/dot.png', 'a:2:{i:1;s:23:"Flashlights &amp; Lamps";i:2;s:23:"Flashlights &amp; Lamps";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"80";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(151, 0, 12, 'catalog/dot.png', 'a:2:{i:1;s:18:"Camera &amp; Photo";i:2;s:18:"Camera &amp; Photo";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"82";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '30%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ' css-menu'),
(173, 0, 23, 'catalog/dot.png', 'a:2:{i:1;s:11:"Frangrances";i:2;s:11:"Frangrances";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"66";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(152, 0, 14, 'catalog/dot.png', 'a:2:{i:1;s:24:"Smartphone &amp; Tablets";i:2;s:24:"Smartphone &amp; Tablets";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"34";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(148, 0, 10, 'catalog/dot.png', 'a:2:{i:1;s:24:"Smartphone &amp; Tablets";i:2;s:24:"Smartphone &amp; Tablets";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"34";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '50%', 0, 4, 2, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:5:{i:0;a:2:{s:2:"id";i:45;s:4:"name";s:40:"Electronics  >  Headphones, Headsets";}i:1;a:2:{s:2:"id";i:30;s:4:"name";s:30:"Electronics  >  Home Audio";}i:2;a:2:{s:2:"id";i:24;s:4:"name";s:15:"Health & Beauty";}i:3;a:2:{s:2:"id";i:75;s:4:"name";s:42:"Toys & Hobbies  >  Helicopters & Parts";}i:4;a:2:{s:2:"id";i:75;s:4:"name";s:42:"Toys & Hobbies  >  Helicopters & Parts";}}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(147, 146, 9, 'http://localhost/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:9:"Sub menu1";i:2;s:9:"Sub menu1";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"24";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 12, 2, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:6:{i:0;a:3:{s:2:"id";i:61;s:4:"name";s:42:"Automotive  >  Car Alarms and Security";s:8:"children";a:4:{i:0;a:2:{s:2:"id";i:62;s:4:"name";s:39:"Automotive  >  Car Audio & Speakers";}i:1;a:2:{s:2:"id";i:63;s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";}i:2;a:2:{s:2:"id";i:29;s:4:"name";s:39:"Sports & Outdoors  >  Golf Supplies";}i:3;a:2:{s:2:"id";i:45;s:4:"name";s:40:"Electronics  >  Headphones, Headsets";}}}i:1;a:3:{s:2:"id";i:24;s:4:"name";s:15:"Health & Beauty";s:8:"children";a:3:{i:0;a:2:{s:2:"id";i:30;s:4:"name";s:30:"Electronics  >  Home Audio";}i:1;a:2:{s:2:"id";i:28;s:4:"name";s:45:"Sports & Outdoors  >  Outdoor & Traveling";}i:2;a:2:{s:2:"id";i:57;s:4:"name";s:14:"Toys & Hobbies";}}}i:2;a:3:{s:2:"id";i:18;s:4:"name";s:11:"Electronics";s:8:"children";a:4:{i:0;a:2:{s:2:"id";i:76;s:4:"name";s:33:"Jewelry & Watches  >  Earings";}i:1;a:2:{s:2:"id";i:67;s:4:"name";s:45:"Health & Beauty  >  Salon & Spa Equipment";}i:2;a:2:{s:2:"id";i:65;s:4:"name";s:46:"Health & Beauty  >  Shaving & Hair Removal";}i:3;a:2:{s:2:"id";i:34;s:4:"name";s:20:"Smartphone & Tablets";}}}i:3;a:3:{s:2:"id";i:25;s:4:"name";s:17:"Sports & Outdoors";s:8:"children";a:4:{i:0;a:2:{s:2:"id";i:80;s:4:"name";s:19:"Flashlights & Lamps";}i:1;a:2:{s:2:"id";i:66;s:4:"name";s:34:"Health & Beauty  >  Fragrances";}i:2;a:2:{s:2:"id";i:31;s:4:"name";s:33:"Sports & Outdoors  >  Fishing";}i:3;a:2:{s:2:"id";i:73;s:4:"name";s:41:"Toys & Hobbies  >  FPV System & Parts";}}}i:4;a:3:{s:2:"id";i:60;s:4:"name";s:68:"Automotive  >  Gadgets & Auto Parts  >  More Car Accessories";s:8:"children";a:4:{i:0;a:2:{s:2:"id";i:71;s:4:"name";s:55:"Bags, Holiday Supplies  >  Lighter & Cigar Supplies";}i:1;a:2:{s:2:"id";i:32;s:4:"name";s:45:"Electronics  >  Mp3 Players & Accessories";}i:2;a:2:{s:2:"id";i:27;s:4:"name";s:37:"Jewelry & Watches  >  Men Watches";}i:3;a:2:{s:2:"id";i:81;s:4:"name";s:18:"Mobile Accessories";}}}i:5;a:3:{s:2:"id";i:63;s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";s:8:"children";a:4:{i:0;a:2:{s:2:"id";i:68;s:4:"name";s:55:"Bags, Holiday Supplies  >  Gift & Lifestyle Gadgets";}i:1;a:2:{s:2:"id";i:69;s:4:"name";s:43:"Bags, Holiday Supplies  >  Gift for Man";}i:2;a:2:{s:2:"id";i:70;s:4:"name";s:45:"Bags, Holiday Supplies  >  Gift for Woman";}i:3;a:2:{s:2:"id";i:29;s:4:"name";s:39:"Sports & Outdoors  >  Golf Supplies";}}}}s:7:"columns";s:1:"3";s:7:"submenu";s:1:"2";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(127, 126, 4, 'http://localhost/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:6:"Banner";i:2;s:6:"Banner";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 12, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:600:"&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-4 img img1&quot;&gt;	\r\n&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cms/img1.jpg&quot; alt=&quot;banner1&quot;&gt;&lt;/a&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-4 img img2&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cms/img2.jpg&quot; alt=&quot;banner2&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-4 img img3&quot;&gt;	\r\n&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cms/img3.jpg&quot; alt=&quot;banner3&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/div&gt;";i:2;s:600:"&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-4 img img1&quot;&gt;	\r\n&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cms/img1.jpg&quot; alt=&quot;banner1&quot;&gt;&lt;/a&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-4 img img2&quot;&gt;\r\n&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cms/img2.jpg&quot; alt=&quot;banner2&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-4 img img3&quot;&gt;	\r\n&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/cms/img3.jpg&quot; alt=&quot;banner3&quot;&gt;&lt;/a&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/div&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(128, 126, 5, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:21:"Jewelry &amp; Watches";i:2;s:21:"Jewelry &amp; Watches";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 5, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:2:"20";s:13:"limit_level_1";s:1:"3";s:13:"limit_level_2";s:1:"0";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"0";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:1:{i:0;a:2:{s:2:"id";i:33;s:4:"name";s:10:"Automotive";}}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(129, 126, 6, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:10:"Electronic";i:2;s:10:"Electronic";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 5, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:2:"18";s:13:"limit_level_1";s:1:"3";s:13:"limit_level_2";s:1:"3";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"0";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(130, 126, 7, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:10:"Automotive";i:2;s:10:"Automotive";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 5, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:2:"33";s:13:"limit_level_1";s:1:"3";s:13:"limit_level_2";s:0:"";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"0";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(170, 140, 2, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:4:"HTML";i:2;s:4:"HTML";}', 0, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 12, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:146:"&lt;div class=&quot;image-position&quot;&gt;&lt;img src=&quot;image/catalog/demo/banners/menu1-bg.jpg&quot; alt=&quot;banner&quot;&gt;&lt;/div&gt;";i:2;s:146:"&lt;div class=&quot;image-position&quot;&gt;&lt;img src=&quot;image/catalog/demo/banners/menu1-bg.jpg&quot; alt=&quot;banner&quot;&gt;&lt;/div&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(132, 0, 8, 'http://172.20.10.3/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:11:"Accessories";i:2;s:11:"Accessories";}', 0, 118, 'a:2:{s:3:"url";s:44:"index.php?route=product/category&amp;path=33";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(133, 132, 9, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:10:"Electronic";i:2;s:10:"Electronic";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 5, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:2:"18";s:13:"limit_level_1";s:1:"5";s:13:"limit_level_2";s:1:"0";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"0";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:8:{i:0;a:3:{s:2:"id";i:33;s:4:"name";s:10:"Automotive";s:8:"children";a:3:{i:0;a:2:{s:2:"id";i:61;s:4:"name";s:42:"Automotive  >  Car Alarms and Security";}i:1;a:2:{s:2:"id";i:61;s:4:"name";s:42:"Automotive  >  Car Alarms and Security";}i:2;a:2:{s:2:"id";i:63;s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";}}}i:1;a:2:{s:2:"id";i:34;s:4:"name";s:20:"Smartphone & Tablets";}i:2;a:2:{s:2:"id";i:34;s:4:"name";s:20:"Smartphone & Tablets";}i:3;a:2:{s:2:"id";i:25;s:4:"name";s:17:"Sports & Outdoors";}i:4;a:2:{s:2:"id";i:66;s:4:"name";s:34:"Health & Beauty  >  Fragrances";}i:5;a:2:{s:2:"id";i:31;s:4:"name";s:33:"Sports & Outdoors  >  Fishing";}i:6;a:2:{s:2:"id";i:80;s:4:"name";s:39:"Top Selling  >  Flashlights & Lamps";}i:7;a:2:{s:2:"id";i:73;s:4:"name";s:41:"Toys & Hobbies  >  FPV System & Parts";}}s:7:"columns";s:1:"2";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(176, 132, 10, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:18:"Toys &amp; Hobbies";i:2;s:18:"Toys &amp; Hobbies";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 5, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:2:"57";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"0";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"0";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"2";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(177, 132, 11, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:21:"Sports &amp; Outdoors";i:2;s:21:"Sports &amp; Outdoors";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 5, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:2:"25";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"0";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"0";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"2";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(135, 0, 13, 'http://localhost/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:4:"Blog";i:2;s:4:"Blog";}', 0, 118, 'a:2:{s:3:"url";s:66:"index.php?route=simple_blog/category&amp;simple_blog_category_id=1";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(136, 0, 14, 'http://172.20.10.3/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:5:"Pages";i:2;s:5:"Pages";}', 0, 118, 'a:2:{s:3:"url";s:35:"index.php?route=information/contact";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '320px', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ' fix-non-full-width css-menu'),
(137, 136, 15, 'http://192.168.1.15/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:10:"List pages";i:2;s:10:"List pages";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 6, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:1051:"&lt;ul class=&quot;row-list&quot;&gt;\r\n\r\n\r\n\r\n		&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=6'';&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=6&quot;&gt;FAQs&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=3'';&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=3&quot;&gt;Pricing Tables&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n		&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=11'';&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=11&quot;&gt;Gallery&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n		&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; href=&quot;index.php?route=information/contact&quot;&gt;Contact us&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n		&lt;/ul&gt;";i:2;s:1051:"&lt;ul class=&quot;row-list&quot;&gt;\r\n\r\n\r\n\r\n		&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=6'';&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=6&quot;&gt;FAQs&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=3'';&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=3&quot;&gt;Pricing Tables&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n		&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=11'';&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=11&quot;&gt;Gallery&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n		&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; href=&quot;index.php?route=information/contact&quot;&gt;Contact us&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n		&lt;/ul&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(138, 136, 16, 'http://192.168.1.15/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:8:"About us";i:2;s:8:"About us";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 6, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:1208:"&lt;ul class=&quot;row-list&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=4'';&quot;  href=&quot;index.php?route=information/information&amp;amp;information_id=4&quot;&gt;About Us 1&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=7'';&quot;  href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;About Us 2&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=8'';&quot;  href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;About Us 3&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=9'';&quot;  href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;About Us 4&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/ul&gt;";i:2;s:1208:"&lt;ul class=&quot;row-list&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=4'';&quot;  href=&quot;index.php?route=information/information&amp;amp;information_id=4&quot;&gt;About Us 1&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=7'';&quot;  href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;About Us 2&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=8'';&quot;  href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;About Us 3&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n\r\n	&lt;li&gt;&lt;a class=&quot;subcategory_item&quot; onclick=&quot;window.location = ''index.php?route=information/information&amp;amp;information_id=9'';&quot;  href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;About Us 4&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/ul&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(139, 0, 17, 'http://localhost/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:10:"Contact us";i:2;s:10:"Contact us";}', 0, 118, 'a:2:{s:3:"url";s:35:"index.php?route=information/contact";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(140, 0, 0, 'catalog/dot.png', 'a:2:{i:1;s:27:"Automotive &amp; Motocrycle";i:2;s:27:"Automotive &amp; Motocrycle";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"33";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ' vertical-style3'),
(141, 140, 1, '', 'a:2:{i:1;s:12:"Sub category";i:2;s:12:"Sub category";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"34";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 12, 2, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:5:{i:0;a:3:{s:2:"id";i:78;s:4:"name";s:7:"Apparel";s:8:"children";a:6:{i:0;a:2:{s:2:"id";i:34;s:4:"name";s:20:"Smartphone & Tablets";}i:1;a:2:{s:2:"id";i:47;s:4:"name";s:54:"Smartphone & Tablets  >  Accessories for Tablet PC";}i:2;a:2:{s:2:"id";i:44;s:4:"name";s:50:"Smartphone & Tablets  >  Accessories for i Pad";}i:3;a:2:{s:2:"id";i:43;s:4:"name";s:51:"Smartphone & Tablets  >  Accessories for iPhone";}i:4;a:2:{s:2:"id";i:61;s:4:"name";s:42:"Automotive  >  Car Alarms and Security";}i:5;a:2:{s:2:"id";i:62;s:4:"name";s:39:"Automotive  >  Car Audio & Speakers";}}}i:1;a:3:{s:2:"id";i:77;s:4:"name";s:19:"Cables & Connectors";s:8:"children";a:3:{i:0;a:2:{s:2:"id";i:82;s:4:"name";s:15:"Cameras & Photo";}i:1;a:2:{s:2:"id";i:28;s:4:"name";s:45:"Sports & Outdoors  >  Outdoor & Traveling";}i:2;a:2:{s:2:"id";i:18;s:4:"name";s:11:"Electronics";}}}i:2;a:3:{s:2:"id";i:35;s:4:"name";s:42:"Sports & Outdoors  >  Camping & Hiking";s:8:"children";a:3:{i:0;a:2:{s:2:"id";i:76;s:4:"name";s:33:"Jewelry & Watches  >  Earings";}i:1;a:2:{s:2:"id";i:65;s:4:"name";s:46:"Health & Beauty  >  Shaving & Hair Removal";}i:2;a:2:{s:2:"id";i:67;s:4:"name";s:45:"Health & Beauty  >  Salon & Spa Equipment";}}}i:3;a:3:{s:2:"id";i:34;s:4:"name";s:20:"Smartphone & Tablets";s:8:"children";a:3:{i:0;a:2:{s:2:"id";i:64;s:4:"name";s:35:"Health & Beauty  >  Bath & Body";}i:1;a:2:{s:2:"id";i:63;s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";}i:2;a:2:{s:2:"id";i:25;s:4:"name";s:17:"Sports & Outdoors";}}}i:4;a:3:{s:2:"id";i:17;s:4:"name";s:22:"Bags, Holiday Supplies";s:8:"children";a:4:{i:0;a:2:{s:2:"id";i:46;s:4:"name";s:42:"Electronics  >  Battereries & Chargers";}i:1;a:2:{s:2:"id";i:64;s:4:"name";s:35:"Health & Beauty  >  Bath & Body";}i:2;a:2:{s:2:"id";i:45;s:4:"name";s:40:"Electronics  >  Headphones, Headsets";}i:3;a:2:{s:2:"id";i:30;s:4:"name";s:30:"Electronics  >  Home Audio";}}}}s:7:"columns";s:1:"3";s:7:"submenu";s:1:"2";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(142, 0, 3, 'catalog/dot.png', 'a:2:{i:1;s:10:"Electronic";i:2;s:10:"Electronic";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"25";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(143, 0, 4, 'catalog/dot.png', 'a:2:{i:1;s:21:"Sports &amp; Outdoors";i:2;s:21:"Sports &amp; Outdoors";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"25";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '70%', 0, 8, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ' vertical-style1'),
(144, 143, 5, 'http://localhost/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:7:"Submenu";i:2;s:7:"Submenu";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"18";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 8, 2, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:4:{i:0;a:3:{s:2:"id";i:81;s:4:"name";s:18:"Mobile Accessories";s:8:"children";a:6:{i:0;a:2:{s:2:"id";i:17;s:4:"name";s:22:"Bags, Holiday Supplies";}i:1;a:2:{s:2:"id";i:63;s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";}i:2;a:2:{s:2:"id";i:64;s:4:"name";s:35:"Health & Beauty  >  Bath & Body";}i:3;a:2:{s:2:"id";i:65;s:4:"name";s:46:"Health & Beauty  >  Shaving & Hair Removal";}i:4;a:2:{s:2:"id";i:63;s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";}i:5;a:2:{s:2:"id";i:29;s:4:"name";s:39:"Sports & Outdoors  >  Golf Supplies";}}}i:1;a:3:{s:2:"id";i:18;s:4:"name";s:11:"Electronics";s:8:"children";a:6:{i:0;a:2:{s:2:"id";i:69;s:4:"name";s:43:"Bags, Holiday Supplies  >  Gift for Man";}i:1;a:2:{s:2:"id";i:28;s:4:"name";s:45:"Sports & Outdoors  >  Outdoor & Traveling";}i:2;a:2:{s:2:"id";i:80;s:4:"name";s:19:"Flashlights & Lamps";}i:3;a:2:{s:2:"id";i:66;s:4:"name";s:34:"Health & Beauty  >  Fragrances";}i:4;a:2:{s:2:"id";i:66;s:4:"name";s:34:"Health & Beauty  >  Fragrances";}i:5;a:2:{s:2:"id";i:67;s:4:"name";s:45:"Health & Beauty  >  Salon & Spa Equipment";}}}i:2;a:3:{s:2:"id";i:31;s:4:"name";s:33:"Sports & Outdoors  >  Fishing";s:8:"children";a:6:{i:0;a:2:{s:2:"id";i:73;s:4:"name";s:41:"Toys & Hobbies  >  FPV System & Parts";}i:1;a:2:{s:2:"id";i:18;s:4:"name";s:11:"Electronics";}i:2;a:2:{s:2:"id";i:76;s:4:"name";s:33:"Jewelry & Watches  >  Earings";}i:3;a:2:{s:2:"id";i:60;s:4:"name";s:68:"Automotive  >  Gadgets & Auto Parts  >  More Car Accessories";}i:4;a:2:{s:2:"id";i:66;s:4:"name";s:34:"Health & Beauty  >  Fragrances";}i:5;a:2:{s:2:"id";i:73;s:4:"name";s:41:"Toys & Hobbies  >  FPV System & Parts";}}}i:3;a:3:{s:2:"id";i:30;s:4:"name";s:30:"Electronics  >  Home Audio";s:8:"children";a:6:{i:0;a:2:{s:2:"id";i:45;s:4:"name";s:40:"Electronics  >  Headphones, Headsets";}i:1;a:2:{s:2:"id";i:75;s:4:"name";s:42:"Toys & Hobbies  >  Helicopters & Parts";}i:2;a:2:{s:2:"id";i:74;s:4:"name";s:38:"Toys & Hobbies  >  RC Cars & Parts";}i:3;a:2:{s:2:"id";i:76;s:4:"name";s:33:"Jewelry & Watches  >  Earings";}i:4;a:2:{s:2:"id";i:26;s:4:"name";s:39:"Jewelry & Watches  >  Wedding Rings";}i:5;a:2:{s:2:"id";i:72;s:4:"name";s:30:"Toys & Hobbies  >  Walkera";}}}}s:7:"columns";s:1:"2";s:7:"submenu";s:1:"2";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(145, 143, 6, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:4:"HTML";i:2;s:4:"HTML";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"18";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:85:"&lt;img src=&quot;image/catalog/demo/banners/t10.jpg&quot; alt=&quot;banner&quot;&gt;";i:2;s:85:"&lt;img src=&quot;image/catalog/demo/banners/t10.jpg&quot; alt=&quot;banner&quot;&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(146, 0, 8, 'catalog/dot.png', 'a:2:{i:1;s:19:"Health &amp; Beauty";i:2;s:19:"Health &amp; Beauty";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"24";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(122, 0, 0, 'http://172.20.10.3/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:8:"Features";i:2;s:8:"Features";}', 0, 118, 'a:2:{s:3:"url";s:1:"#";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ' features-menu');
INSERT INTO `oc_mega_menu` (`id`, `parent_id`, `rang`, `icon`, `name`, `type_link`, `module_id`, `link`, `description`, `new_window`, `status`, `position`, `submenu_width`, `submenu_type`, `content_width`, `content_type`, `content`, `label_item`, `icon_font`, `class_menu`) VALUES
(124, 122, 1, 'http://192.168.1.15/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:12:"Theme Colors";i:2;s:12:"Theme Colors";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 3, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:1219:"&lt;div class=&quot;column layout-color&quot;&gt; &lt;h3&gt;Theme Colors&lt;/h3&gt;\r\n\r\n\r\n			&lt;div&gt;				&lt;ul class=&quot;row-list&quot;&gt;\r\n\r\n\r\n\r\n\r\n 					&lt;li class=&quot;color orange&quot;&gt;&lt;a href=&quot;index.php?scheme=orange&quot; onclick=&quot;window.location = ''index.php?scheme=orange'';&quot;&gt;Orange Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n					&lt;li class=&quot;color green&quot;&gt;&lt;a href=&quot;index.php?scheme=green&quot; onclick=&quot;window.location = ''index.php?scheme=green'';&quot;&gt;Green Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n					&lt;li class=&quot;color pink&quot;&gt;&lt;a href=&quot;index.php?scheme=pink&quot; onclick=&quot;window.location = ''index.php?scheme=pink'';&quot;&gt;Pink Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n					&lt;li class=&quot;color red&quot;&gt;&lt;a href=&quot;index.php?scheme=red&quot; onclick=&quot;window.location = ''index.php?scheme=red'';&quot;&gt;Red Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n					&lt;li class=&quot;color blue&quot;&gt;&lt;a href=&quot;index.php?scheme=blue&quot; onclick=&quot;window.location = ''index.php?scheme=blue'';&quot;&gt;Blue Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n 								&lt;/ul&gt;\r\n\r\n\r\n\r\n\r\n			&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n									&lt;/div&gt;";i:2;s:1219:"&lt;div class=&quot;column layout-color&quot;&gt; &lt;h3&gt;Theme Colors&lt;/h3&gt;\r\n\r\n\r\n			&lt;div&gt;				&lt;ul class=&quot;row-list&quot;&gt;\r\n\r\n\r\n\r\n\r\n 					&lt;li class=&quot;color orange&quot;&gt;&lt;a href=&quot;index.php?scheme=orange&quot; onclick=&quot;window.location = ''index.php?scheme=orange'';&quot;&gt;Orange Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n					&lt;li class=&quot;color green&quot;&gt;&lt;a href=&quot;index.php?scheme=green&quot; onclick=&quot;window.location = ''index.php?scheme=green'';&quot;&gt;Green Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n					&lt;li class=&quot;color pink&quot;&gt;&lt;a href=&quot;index.php?scheme=pink&quot; onclick=&quot;window.location = ''index.php?scheme=pink'';&quot;&gt;Pink Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n					&lt;li class=&quot;color red&quot;&gt;&lt;a href=&quot;index.php?scheme=red&quot; onclick=&quot;window.location = ''index.php?scheme=red'';&quot;&gt;Red Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n					&lt;li class=&quot;color blue&quot;&gt;&lt;a href=&quot;index.php?scheme=blue&quot; onclick=&quot;window.location = ''index.php?scheme=blue'';&quot;&gt;Blue Color&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n 								&lt;/ul&gt;\r\n\r\n\r\n\r\n\r\n			&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n									&lt;/div&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(125, 122, 2, 'http://192.168.1.15/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:7:"Layouts";i:2;s:7:"Layouts";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 9, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:1453:"&lt;div class=&quot;column&quot;&gt;	\r\n		&lt;h3&gt;Layouts&lt;/h3&gt;\r\n\r\n		\r\n		&lt;ul class=&quot;row&quot;&gt;\r\n\r\n\r\n			&lt;li class=&quot;col-sm-4&quot;&gt;\r\n				&lt;a href=&quot;http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/&quot; onclick=&quot;window.location = ''http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/'';&quot;&gt;\r\n				\r\n				&lt;img src=&quot;image/catalog/demo/banners/layout1.jpg&quot; alt=&quot;img-layout1&quot;&gt;\r\n				&lt;span&gt;Home Layout 1&lt;/span&gt;\r\n				&lt;/a&gt;\r\n			&lt;/li&gt;\r\n\r\n\r\n			&lt;li class=&quot;col-sm-4&quot;&gt;\r\n				&lt;a href=&quot; 	http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/layout2/&quot; onclick=&quot;window.location = ''http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/layout2/'';&quot;&gt;\r\n					\r\n					&lt;img src=&quot;image/catalog/demo/banners/layout2.jpg&quot; alt=&quot;img-layout2&quot;&gt;\r\n					&lt;span&gt;Home Layout 2&lt;/span&gt;\r\n				&lt;/a&gt;\r\n			&lt;/li&gt;\r\n\r\n\r\n			&lt;li class=&quot;col-sm-4&quot;&gt;\r\n				&lt;a href=&quot; 	http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/layout3/&quot; onclick=&quot;window.location = ''http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/layout3/'';&quot;&gt;\r\n					\r\n					&lt;img src=&quot;image/catalog/demo/banners/layout3.jpg&quot; alt=&quot;img-layout3&quot;&gt;\r\n					&lt;span&gt;Home Layout 3&lt;/span&gt;\r\n				&lt;/a&gt;\r\n			&lt;/li&gt;\r\n\r\n\r\n		&lt;/ul&gt;\r\n\r\n\r\n&lt;/div&gt;";i:2;s:1453:"&lt;div class=&quot;column&quot;&gt;	\r\n		&lt;h3&gt;Layouts&lt;/h3&gt;\r\n\r\n		\r\n		&lt;ul class=&quot;row&quot;&gt;\r\n\r\n\r\n			&lt;li class=&quot;col-sm-4&quot;&gt;\r\n				&lt;a href=&quot;http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/&quot; onclick=&quot;window.location = ''http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/'';&quot;&gt;\r\n				\r\n				&lt;img src=&quot;image/catalog/demo/banners/layout1.jpg&quot; alt=&quot;img-layout1&quot;&gt;\r\n				&lt;span&gt;Home Layout 1&lt;/span&gt;\r\n				&lt;/a&gt;\r\n			&lt;/li&gt;\r\n\r\n\r\n			&lt;li class=&quot;col-sm-4&quot;&gt;\r\n				&lt;a href=&quot; 	http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/layout2/&quot; onclick=&quot;window.location = ''http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/layout2/'';&quot;&gt;\r\n					\r\n					&lt;img src=&quot;image/catalog/demo/banners/layout2.jpg&quot; alt=&quot;img-layout2&quot;&gt;\r\n					&lt;span&gt;Home Layout 2&lt;/span&gt;\r\n				&lt;/a&gt;\r\n			&lt;/li&gt;\r\n\r\n\r\n			&lt;li class=&quot;col-sm-4&quot;&gt;\r\n				&lt;a href=&quot; 	http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/layout3/&quot; onclick=&quot;window.location = ''http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/layout3/'';&quot;&gt;\r\n					\r\n					&lt;img src=&quot;image/catalog/demo/banners/layout3.jpg&quot; alt=&quot;img-layout3&quot;&gt;\r\n					&lt;span&gt;Home Layout 3&lt;/span&gt;\r\n				&lt;/a&gt;\r\n			&lt;/li&gt;\r\n\r\n\r\n		&lt;/ul&gt;\r\n\r\n\r\n&lt;/div&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(126, 0, 3, 'http://172.20.10.3/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:10:"Categories";i:2;s:10:"Categories";}', 0, 118, 'a:2:{s:3:"url";s:44:"index.php?route=product/category&amp;path=33";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(157, 0, 22, 'catalog/dot.png', 'a:2:{i:1;s:22:"Bags, Holiday Supplies";i:2;s:22:"Bags, Holiday Supplies";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"17";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 4, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(181, 132, 12, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:4:"HTML";i:2;s:4:"HTML";}', 0, 118, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 12, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:154:"&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/banners/t23.jpg&quot; style=&quot;width: 100%;&quot; alt=&quot;banner&quot;&gt;&lt;/a&gt;";i:2;s:154:"&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;image/catalog/demo/banners/t23.jpg&quot; style=&quot;width: 100%;&quot; alt=&quot;banner&quot;&gt;&lt;/a&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(161, 143, 7, 'http://localhost/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:4:"HTML";i:2;s:4:"HTML";}', 0, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 12, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:505:"&lt;strong&gt;Quicklinks:&lt;/strong&gt; &lt;a href=&quot;#&quot; title=&quot;Blazers&quot;&gt;Blazers, &lt;/a&gt;&lt;a href=&quot;#&quot; title=&quot;Jackets&quot;&gt;Jackets, &lt;/a&gt;&lt;a href=&quot;#&quot; title=&quot;Shoes&quot;&gt;Shoes, &lt;/a&gt;&lt;a href=&quot;#&quot; title=&quot;Bags&quot;&gt;Bags, &lt;/a&gt;&lt;a href=&quot;#&quot; title=&quot;Special offers&quot;&gt;Special offers, &lt;/a&gt;&lt;a href=&quot;#&quot; title=&quot;Sales and discounts&quot;&gt;Sales and discounts&lt;/a&gt;";i:2;s:806:"&lt;p&gt;&lt;strong&gt;Quicklinks:&lt;/strong&gt; &lt;a href=&quot;http://localhost/opencart/so_shoppystore/admin/#&quot; title=&quot;Blazers&quot;&gt;Blazers, &lt;/a&gt;&lt;a href=&quot;http://localhost/opencart/so_shoppystore/admin/#&quot; title=&quot;Jackets&quot;&gt;Jackets, &lt;/a&gt;&lt;a href=&quot;http://localhost/opencart/so_shoppystore/admin/#&quot; title=&quot;Shoes&quot;&gt;Shoes, &lt;/a&gt;&lt;a href=&quot;http://localhost/opencart/so_shoppystore/admin/#&quot; title=&quot;Bags&quot;&gt;Bags, &lt;/a&gt;&lt;a href=&quot;http://localhost/opencart/so_shoppystore/admin/#&quot; title=&quot;Special offers&quot;&gt;Special offers, &lt;/a&gt;&lt;a href=&quot;http://localhost/opencart/so_shoppystore/admin/#&quot; title=&quot;Sales and discounts&quot;&gt;Sales and discounts&lt;/a&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', 'quicklink-vertical'),
(163, 155, 18, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:7:"Submenu";i:2;s:7:"Submenu";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"24";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 5, 2, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:2:{i:0;a:3:{s:2:"id";i:33;s:4:"name";s:10:"Automotive";s:8:"children";a:6:{i:0;a:2:{s:2:"id";i:61;s:4:"name";s:42:"Automotive  >  Car Alarms and Security";}i:1;a:2:{s:2:"id";i:62;s:4:"name";s:39:"Automotive  >  Car Audio & Speakers";}i:2;a:2:{s:2:"id";i:63;s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";}i:3;a:2:{s:2:"id";i:68;s:4:"name";s:55:"Bags, Holiday Supplies  >  Gift & Lifestyle Gadgets";}i:4;a:2:{s:2:"id";i:70;s:4:"name";s:45:"Bags, Holiday Supplies  >  Gift for Woman";}i:5;a:2:{s:2:"id";i:66;s:4:"name";s:34:"Health & Beauty  >  Fragrances";}}}i:1;a:3:{s:2:"id";i:24;s:4:"name";s:15:"Health & Beauty";s:8:"children";a:7:{i:0;a:2:{s:2:"id";i:45;s:4:"name";s:40:"Electronics  >  Headphones, Headsets";}i:1;a:2:{s:2:"id";i:75;s:4:"name";s:42:"Toys & Hobbies  >  Helicopters & Parts";}i:2;a:2:{s:2:"id";i:66;s:4:"name";s:34:"Health & Beauty  >  Fragrances";}i:3;a:2:{s:2:"id";i:31;s:4:"name";s:33:"Sports & Outdoors  >  Fishing";}i:4;a:2:{s:2:"id";i:73;s:4:"name";s:41:"Toys & Hobbies  >  FPV System & Parts";}i:5;a:2:{s:2:"id";i:47;s:4:"name";s:54:"Smartphone & Tablets  >  Accessories for Tablet PC";}i:6;a:2:{s:2:"id";i:44;s:4:"name";s:50:"Smartphone & Tablets  >  Accessories for i Pad";}}}}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"2";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(164, 155, 19, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:4:"HTML";i:2;s:0:"";}', 0, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:0:"";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '100%', 0, 7, 0, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:85:"&lt;img src=&quot;image/catalog/demo/banners/t11.jpg&quot; alt=&quot;banner&quot;&gt;";i:2;s:85:"&lt;img src=&quot;image/catalog/demo/banners/t11.jpg&quot; alt=&quot;banner&quot;&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:0:{}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(174, 156, 21, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:7:"Submenu";i:2;s:7:"Submenu";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"20";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '', 0, 12, 2, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:5:{i:0;a:3:{s:4:"name";s:42:"Automotive  >  Car Alarms and Security";s:2:"id";i:61;s:8:"children";a:4:{i:0;a:2:{s:4:"name";s:40:"Electronics  >  Headphones, Headsets";s:2:"id";i:45;}i:1;a:2:{s:4:"name";s:42:"Toys & Hobbies  >  Helicopters & Parts";s:2:"id";i:75;}i:2;a:2:{s:4:"name";s:30:"Electronics  >  Home Audio";s:2:"id";i:30;}i:3;a:2:{s:4:"name";s:15:"Health & Beauty";s:2:"id";i:24;}}}i:1;a:3:{s:4:"name";s:39:"Automotive  >  Car Audio & Speakers";s:2:"id";i:62;s:8:"children";a:4:{i:0;a:2:{s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";s:2:"id";i:63;}i:1;a:2:{s:4:"name";s:43:"Bags, Holiday Supplies  >  Gift for Man";s:2:"id";i:69;}i:2;a:2:{s:4:"name";s:55:"Bags, Holiday Supplies  >  Gift & Lifestyle Gadgets";s:2:"id";i:68;}i:3;a:2:{s:4:"name";s:39:"Sports & Outdoors  >  Golf Supplies";s:2:"id";i:29;}}}i:2;a:2:{s:4:"name";s:39:"Automotive  >  Gadgets & Auto Parts";s:2:"id";i:63;}i:3;a:3:{s:4:"name";s:22:"Bags, Holiday Supplies";s:2:"id";i:17;s:8:"children";a:4:{i:0;a:2:{s:4:"name";s:42:"Automotive  >  Car Alarms and Security";s:2:"id";i:61;}i:1;a:2:{s:4:"name";s:39:"Automotive  >  Car Audio & Speakers";s:2:"id";i:62;}i:2;a:2:{s:4:"name";s:19:"Cables & Connectors";s:2:"id";i:77;}i:3;a:2:{s:4:"name";s:15:"Cameras & Photo";s:2:"id";i:82;}}}i:4;a:3:{s:4:"name";s:4:"Bags";s:2:"id";i:97;s:8:"children";a:4:{i:0;a:2:{s:4:"name";s:19:"Flashlights & Lamps";s:2:"id";i:80;}i:1;a:2:{s:4:"name";s:34:"Health & Beauty  >  Fragrances";s:2:"id";i:66;}i:2;a:2:{s:4:"name";s:33:"Sports & Outdoors  >  Fishing";s:2:"id";i:31;}i:3;a:2:{s:4:"name";s:27:"Top Selling  >  Fashion";s:2:"id";i:91;}}}}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', ''),
(175, 151, 13, 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/image/cache/no_image-100x100.png', 'a:2:{i:1;s:7:"Submenu";i:2;s:7:"Submenu";}', 1, 119, 'a:2:{s:3:"url";s:0:"";s:8:"category";s:2:"82";}', 'a:2:{i:1;s:0:"";i:2;s:0:"";}', 0, 0, 0, '', 0, 12, 2, 'a:6:{s:4:"html";a:1:{s:4:"text";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}}s:7:"product";a:2:{s:2:"id";s:0:"";s:4:"name";s:0:"";}s:5:"image";a:2:{s:4:"link";s:12:"no_image.png";s:10:"show_title";s:1:"1";}s:11:"subcategory";a:8:{s:8:"category";s:0:"";s:13:"limit_level_1";s:1:"4";s:13:"limit_level_2";s:1:"4";s:10:"show_title";s:1:"1";s:10:"show_image";s:1:"1";s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}s:11:"productlist";a:4:{s:5:"limit";s:0:"";s:4:"type";s:3:"new";s:10:"show_title";s:1:"1";s:3:"col";s:1:"1";}s:10:"categories";a:4:{s:10:"categories";a:5:{i:0;a:3:{s:2:"id";i:18;s:4:"name";s:11:"Electronics";s:8:"children";a:5:{i:0;a:2:{s:2:"id";i:45;s:4:"name";s:40:"Electronics  >  Headphones, Headsets";}i:1;a:2:{s:2:"id";i:30;s:4:"name";s:30:"Electronics  >  Home Audio";}i:2;a:2:{s:2:"id";i:75;s:4:"name";s:42:"Toys & Hobbies  >  Helicopters & Parts";}i:3;a:2:{s:2:"id";i:81;s:4:"name";s:18:"Mobile Accessories";}i:4;a:2:{s:2:"id";i:98;s:4:"name";s:26:"Shoes  >  Morbi congue";}}}i:1;a:3:{s:2:"id";i:78;s:4:"name";s:7:"Apparel";s:8:"children";a:5:{i:0;a:2:{s:2:"id";i:61;s:4:"name";s:42:"Automotive  >  Car Alarms and Security";}i:1;a:2:{s:2:"id";i:62;s:4:"name";s:39:"Automotive  >  Car Audio & Speakers";}i:2;a:2:{s:2:"id";i:77;s:4:"name";s:19:"Cables & Connectors";}i:3;a:2:{s:2:"id";i:82;s:4:"name";s:15:"Cameras & Photo";}i:4;a:2:{s:2:"id";i:57;s:4:"name";s:14:"Toys & Hobbies";}}}i:2;a:3:{s:2:"id";i:33;s:4:"name";s:10:"Automotive";s:8:"children";a:5:{i:0;a:2:{s:2:"id";i:80;s:4:"name";s:19:"Flashlights & Lamps";}i:1;a:2:{s:2:"id";i:66;s:4:"name";s:34:"Health & Beauty  >  Fragrances";}i:2;a:2:{s:2:"id";i:31;s:4:"name";s:33:"Sports & Outdoors  >  Fishing";}i:3;a:2:{s:2:"id";i:91;s:4:"name";s:27:"Top Selling  >  Fashion";}i:4;a:2:{s:2:"id";i:73;s:4:"name";s:41:"Toys & Hobbies  >  FPV System & Parts";}}}i:3;a:3:{s:2:"id";i:97;s:4:"name";s:4:"Bags";s:8:"children";a:5:{i:0;a:2:{s:2:"id";i:17;s:4:"name";s:22:"Bags, Holiday Supplies";}i:1;a:2:{s:2:"id";i:46;s:4:"name";s:42:"Electronics  >  Battereries & Chargers";}i:2;a:2:{s:2:"id";i:64;s:4:"name";s:35:"Health & Beauty  >  Bath & Body";}i:3;a:2:{s:2:"id";i:62;s:4:"name";s:39:"Automotive  >  Car Audio & Speakers";}i:4;a:2:{s:2:"id";i:61;s:4:"name";s:42:"Automotive  >  Car Alarms and Security";}}}i:4;a:3:{s:2:"id";i:81;s:4:"name";s:18:"Mobile Accessories";s:8:"children";a:5:{i:0;a:2:{s:2:"id";i:60;s:4:"name";s:68:"Automotive  >  Gadgets & Auto Parts  >  More Car Accessories";}i:1;a:2:{s:2:"id";i:32;s:4:"name";s:45:"Electronics  >  Mp3 Players & Accessories";}i:2;a:2:{s:2:"id";i:27;s:4:"name";s:37:"Jewelry & Watches  >  Men Watches";}i:3;a:2:{s:2:"id";i:71;s:4:"name";s:55:"Bags, Holiday Supplies  >  Lighter & Cigar Supplies";}i:4;a:2:{s:2:"id";i:74;s:4:"name";s:38:"Toys & Hobbies  >  RC Cars & Parts";}}}}s:7:"columns";s:1:"1";s:7:"submenu";s:1:"1";s:15:"submenu_columns";s:1:"1";}}', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 'Backup and Restore fix', 'backup_and_restore_fix', 'John', '1.0', 'opencart.com', '<modification>\r\n	<name>Backup and Restore fix</name>\r\n	<version>1.0</version>\r\n	<author>John</author>\r\n	<link>opencart.com</link>\r\n	<code>backup_and_restore_fix</code>\r\n	<file path="admin/view/template/tool/backup.tpl">\r\n		<operation info="Replace the incorrect variable">\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label"><?php echo $entry_export; ?></label>]]>\r\n			</search>\r\n\r\n			<add position="replace"><![CDATA[					\r\n				<label class="col-sm-2 control-label"><?php echo "Database Tables"; ?></label>\r\n			]]>\r\n		</add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-11-05 16:24:09'),
(2, 'Local copy OCMOD by iSenseLabs', 'isensealabs_quickfix_ocmod', 'iSenseLabs', '1.2', 'http://isenselabs.com', '<modification>\r\n    <name>Local copy OCMOD by iSenseLabs</name>\r\n	<version>1.2</version>\r\n	<link>http://isenselabs.com</link>\r\n	<author>iSenseLabs</author>\r\n	<code>isensealabs_quickfix_ocmod</code>\r\n\r\n	<file path="admin/controller/extension/installer.php">\r\n		<operation>\r\n			<search ><![CDATA[''url''  => str_replace(''&amp;'', ''&'', $this->url->link(''extension/installer/ftp'', ''token='' . $this->session->data[''token''], ''SSL'')),]]></search>\r\n			<add position="replace"><![CDATA[''url''  => str_replace(''&amp;'', ''&'', $this->url->link(''extension/installer/localcopy'', ''token='' . $this->session->data[''token''], ''SSL'')),]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[public function unzip() {]]></search>\r\n			<add position="before"><![CDATA[			\r\n	public function localcopy() {\r\n		$this->load->language(''extension/installer'');\r\n\r\n		$json = array();\r\n\r\n		if (!$this->user->hasPermission(''modify'', ''extension/installer'')) {\r\n			$json[''error''] = $this->language->get(''error_permission'');\r\n		}\r\n\r\n		if (VERSION == ''2.0.0.0'') {\r\n		    $directory = DIR_DOWNLOAD  . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->post[''path'']) . ''/upload/'';\r\n		} else {\r\n		    $directory = DIR_UPLOAD  . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->post[''path'']) . ''/upload/'';\r\n		}\r\n\r\n		if (!is_dir($directory)) {\r\n			$json[''error''] = $this->language->get(''error_directory'');\r\n		}\r\n\r\n		if (!$json) {\r\n			// Get a list of files ready to upload\r\n			$files = array();\r\n\r\n			$path = array($directory . ''*'');\r\n\r\n			while (count($path) != 0) {\r\n				$next = array_shift($path);\r\n\r\n				foreach (glob($next) as $file) {\r\n					if (is_dir($file)) {\r\n						$path[] = $file . ''/*'';\r\n					}\r\n\r\n					$files[] = $file;\r\n				}\r\n			}\r\n\r\n			$root = dirname(DIR_APPLICATION).''/'';\r\n\r\n			foreach ($files as $file) {\r\n				// Upload everything in the upload directory\r\n				$destination = substr($file, strlen($directory));\r\n\r\n				// Update from newer OpenCart versions:\r\n				if (substr($destination, 0, 5) == ''admin'') {\r\n					$destination = DIR_APPLICATION . substr($destination, 5);\r\n				} else if (substr($destination, 0, 7) == ''catalog'') {\r\n					$destination = DIR_CATALOG . substr($destination, 7);\r\n				} else if (substr($destination, 0, 5) == ''image'') {\r\n					$destination = DIR_IMAGE . substr($destination, 5);\r\n				} else if (substr($destination, 0, 6) == ''system'') {\r\n					$destination = DIR_SYSTEM . substr($destination, 6);\r\n				} else {\r\n					$destination = $root.$destination;\r\n				}\r\n\r\n				if (is_dir($file)) {\r\n					if (!file_exists($destination)) {\r\n						if (!mkdir($destination)) {\r\n							$json[''error''] = sprintf($this->language->get(''error_ftp_directory''), $destination);\r\n						}\r\n					}\r\n				}\r\n\r\n				if (is_file($file)) {\r\n					if (!copy($file, $destination)) {\r\n						$json[''error''] = sprintf($this->language->get(''error_ftp_file''), $file);\r\n					}\r\n				}\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(''Content-Type: application/json'');\r\n		$this->response->setOutput(json_encode($json));\r\n	}]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>\r\n', 1, '2015-12-08 15:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(147, 'So HTML Content 4 Home 2', 'so_html', '{"name":"So HTML Content 4 Home 2","module_description":{"1":{"title":"","description":"&lt;div id=&quot;carousel-example-generic&quot; class=&quot;carousel slide&quot; data-ride=&quot;carousel&quot;&gt;\\r\\n  &lt;!-- Indicators --&gt;\\r\\n  &lt;!-- Wrapper for slides --&gt;\\r\\n  &lt;div class=&quot;carousel-inner&quot; role=&quot;listbox&quot;&gt;\\r\\n    &lt;div class=&quot;item&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/about\\/t1.jpg&quot; alt=&quot;customer&quot;&gt;\\r\\n      &lt;div class=&quot;carousel-caption&quot;&gt;\\r\\n        &lt;p&gt;Donec sit amet vulputate velit. Aenean tempus nisl ac fermentum tincidunt. Nam aliquet enim ac quam scelerisque rutrum. Aliquam ante dolor, posuere nec mattis id, suscipit ac mi. Praesent luctus ex massa, nec feugiat est eleifend nec. Cras viverra purus a mauris malesuada aliquam. Integer purus lectus, volutpat quis gravida porttitor, venenatis ut tortor. Phasellus a sapien lorem.&lt;\\/p&gt;\\r\\n\\r\\n\\r\\n\\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;div class=&quot;item&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/about\\/t2.jpg&quot; alt=&quot;customer&quot;&gt;\\r\\n      &lt;div class=&quot;carousel-caption&quot;&gt;\\r\\n        &lt;p&gt;Donec sit amet vulputate velit. Aenean tempus nisl ac fermentum tincidunt. Nam aliquet enim ac quam scelerisque rutrum. Aliquam ante dolor, posuere nec mattis id, suscipit ac mi. Praesent luctus ex massa, nec feugiat est eleifend nec. Cras viverra purus a mauris malesuada aliquam. Integer purus lectus, volutpat quis gravida porttitor, venenatis ut tortor. Phasellus a sapien lorem.&lt;\\/p&gt;\\r\\n\\r\\n\\r\\n\\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;div class=&quot;item active&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/about\\/t3.jpg&quot; alt=&quot;customer&quot;&gt;\\r\\n      &lt;div class=&quot;carousel-caption&quot;&gt;\\r\\n        &lt;p&gt;Donec sit amet vulputate velit. Aenean tempus nisl ac fermentum tincidunt. Nam aliquet enim ac quam scelerisque rutrum. Aliquam ante dolor, posuere nec mattis id, suscipit ac mi. Praesent luctus ex massa, nec feugiat est eleifend nec. Cras viverra purus a mauris malesuada aliquam. Integer purus lectus, volutpat quis gravida porttitor, venenatis ut tortor. Phasellus a sapien lorem.&lt;\\/p&gt;\\r\\n\\r\\n\\r\\n\\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n  &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n  &lt;!-- Controls --&gt;\\r\\n  &lt;a class=&quot;left carousel-control&quot; href=&quot;#carousel-example-generic&quot; role=&quot;button&quot; data-slide=&quot;prev&quot;&gt;\\r\\n    &lt;span class=&quot;glyphicon glyphicon-chevron-left&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/span&gt;\\r\\n    &lt;span class=&quot;sr-only&quot;&gt;Previous&lt;\\/span&gt;\\r\\n  &lt;\\/a&gt;\\r\\n  &lt;a class=&quot;right carousel-control&quot; href=&quot;#carousel-example-generic&quot; role=&quot;button&quot; data-slide=&quot;next&quot;&gt;\\r\\n    &lt;span class=&quot;glyphicon glyphicon-chevron-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/span&gt;\\r\\n    &lt;span class=&quot;sr-only&quot;&gt;Next&lt;\\/span&gt;\\r\\n  &lt;\\/a&gt;\\r\\n&lt;\\/div&gt;"},"2":{"title":"","description":"&lt;div id=&quot;carousel-example-generic&quot; class=&quot;carousel slide&quot; data-ride=&quot;carousel&quot;&gt;\\r\\n  &lt;!-- Indicators --&gt;\\r\\n  &lt;!-- Wrapper for slides --&gt;\\r\\n  &lt;div class=&quot;carousel-inner&quot; role=&quot;listbox&quot;&gt;\\r\\n    &lt;div class=&quot;item&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/about\\/t1.jpg&quot; alt=&quot;customer&quot;&gt;\\r\\n      &lt;div class=&quot;carousel-caption&quot;&gt;\\r\\n        &lt;p&gt;Donec sit amet vulputate velit. Aenean tempus nisl ac fermentum tincidunt. Nam aliquet enim ac quam scelerisque rutrum. Aliquam ante dolor, posuere nec mattis id, suscipit ac mi. Praesent luctus ex massa, nec feugiat est eleifend nec. Cras viverra purus a mauris malesuada aliquam. Integer purus lectus, volutpat quis gravida porttitor, venenatis ut tortor. Phasellus a sapien lorem.&lt;\\/p&gt;\\r\\n\\r\\n\\r\\n\\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;div class=&quot;item&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/about\\/t2.jpg&quot; alt=&quot;customer&quot;&gt;\\r\\n      &lt;div class=&quot;carousel-caption&quot;&gt;\\r\\n        &lt;p&gt;Donec sit amet vulputate velit. Aenean tempus nisl ac fermentum tincidunt. Nam aliquet enim ac quam scelerisque rutrum. Aliquam ante dolor, posuere nec mattis id, suscipit ac mi. Praesent luctus ex massa, nec feugiat est eleifend nec. Cras viverra purus a mauris malesuada aliquam. Integer purus lectus, volutpat quis gravida porttitor, venenatis ut tortor. Phasellus a sapien lorem.&lt;\\/p&gt;\\r\\n\\r\\n\\r\\n\\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;div class=&quot;item active&quot;&gt;\\r\\n      &lt;img src=&quot;image\\/catalog\\/about\\/t3.jpg&quot; alt=&quot;customer&quot;&gt;\\r\\n      &lt;div class=&quot;carousel-caption&quot;&gt;\\r\\n        &lt;p&gt;Donec sit amet vulputate velit. Aenean tempus nisl ac fermentum tincidunt. Nam aliquet enim ac quam scelerisque rutrum. Aliquam ante dolor, posuere nec mattis id, suscipit ac mi. Praesent luctus ex massa, nec feugiat est eleifend nec. Cras viverra purus a mauris malesuada aliquam. Integer purus lectus, volutpat quis gravida porttitor, venenatis ut tortor. Phasellus a sapien lorem.&lt;\\/p&gt;\\r\\n\\r\\n\\r\\n\\r\\n      &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n    &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n  &lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n  &lt;!-- Controls --&gt;\\r\\n  &lt;a class=&quot;left carousel-control&quot; href=&quot;#carousel-example-generic&quot; role=&quot;button&quot; data-slide=&quot;prev&quot;&gt;\\r\\n    &lt;span class=&quot;glyphicon glyphicon-chevron-left&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/span&gt;\\r\\n    &lt;span class=&quot;sr-only&quot;&gt;Previous&lt;\\/span&gt;\\r\\n  &lt;\\/a&gt;\\r\\n  &lt;a class=&quot;right carousel-control&quot; href=&quot;#carousel-example-generic&quot; role=&quot;button&quot; data-slide=&quot;next&quot;&gt;\\r\\n    &lt;span class=&quot;glyphicon glyphicon-chevron-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/span&gt;\\r\\n    &lt;span class=&quot;sr-only&quot;&gt;Next&lt;\\/span&gt;\\r\\n  &lt;\\/a&gt;\\r\\n&lt;\\/div&gt;"}},"class_suffix":" customer-about-dev","status":"1"}'),
(136, '  So HTML Content 1 Home 2', 'so_html', '{"name":"  So HTML Content 1 Home 2","module_description":{"1":{"title":"","description":"&lt;ul class=&quot;men-women-acc&quot;&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;li class=&quot;item&quot;&gt;                 &lt;a href=&quot;#&quot; title=&quot;men&quot;&gt;\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/men.jpg&quot; alt=&quot;banner&quot;&gt;\\t\\t&lt;span&gt;Men&lt;\\/span&gt;&lt;\\/a&gt;\\t&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;li class=&quot;item&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;women&quot;&gt;\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/women.jpg&quot; alt=&quot;banner&quot;&gt;\\t\\t&lt;span&gt;Women&lt;\\/span&gt;&lt;\\/a&gt;\\t&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;li class=&quot;item&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;acc&quot;&gt;\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/acc.jpg&quot; alt=&quot;banner&quot;&gt;\\t\\t&lt;span&gt;Accessories&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;&lt;li class=&quot;item&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;acc&quot;&gt;&lt;span&gt;&lt;img src=&quot;http:\\/\\/localhost\\/arinsifashion\\/image\\/catalog\\/demo\\/banners\\/acc.jpg&quot;&gt;&lt;br&gt;&lt;\\/span&gt;&lt;\\/a&gt;\\t&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n\\r\\n&lt;\\/ul&gt;"},"2":{"title":"","description":"&lt;ul class=&quot;men-women-acc&quot;&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;li class=&quot;item&quot;&gt;                 &lt;a href=&quot;#&quot; title=&quot;men&quot;&gt;\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/men.jpg&quot; alt=&quot;banner&quot;&gt;\\t\\t&lt;span&gt;Men&lt;\\/span&gt;&lt;\\/a&gt;\\t&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;li class=&quot;item&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;women&quot;&gt;\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/women.jpg&quot; alt=&quot;banner&quot;&gt;\\t\\t&lt;span&gt;Women&lt;\\/span&gt;&lt;\\/a&gt;\\t&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;li class=&quot;item&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;acc&quot;&gt;\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/acc.jpg&quot; alt=&quot;banner&quot;&gt;\\t\\t&lt;span&gt;Accessories&lt;\\/span&gt;&lt;\\/a&gt;\\t&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n\\r\\n&lt;\\/ul&gt;"}},"class_suffix":"banner","status":"1"}'),
(143, 'So HTML Content 3 Home 2', 'so_html', '{"name":"So HTML Content 3 Home 2","module_description":{"1":{"title":"","description":"&lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/t18.jpg&quot; alt=&quot;banner&quot; style=&quot;width: 100%;&quot;&gt;&lt;\\/a&gt;"},"2":{"title":"","description":"&lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/t18.jpg&quot; alt=&quot;banner&quot; style=&quot;width: 100%;&quot;&gt;&lt;\\/a&gt;"}},"class_suffix":"banner hidden-sm hidden-xs","status":"1"}'),
(133, 'So Popular Tags', 'so_popular_tags', '{"action":"save_edit","moduleid":"133","name":"So Popular Tags","module_description":{"1":{"head_name":"Hot Tags"},"2":{"head_name":"Hot Tags"}},"head_name":"Hot Tags","disp_title_module":"1","status":"1","class_suffix":" style-dev-so-tags","item_link_target":"_self","limit_tags":"70","min_font_size":"12","max_font_size":"12","font_weight":"lighter"}'),
(118, 'So Megamenu Horizontal', 'so_megamenu', '{"button-save":"","moduleid":"118","name":"So Megamenu Horizontal","head_name":{"1":"So Megamenu Horizontal","2":""},"disp_title_module":"0","status":"1","orientation":"0","show_itemver":"5","navigation_text":{"1":"","2":""},"full_width":"1","home_item":"text","home_text":{"1":"Home","2":""},"animation":"slide","animation_time":"500","layout_id":100,"position":"menu","sort_order":0,"label_item":"hot","icon_font":"fa fa-camera-retro","class_menu":"","search_bar":0}'),
(135, 'Slideshow Home 2', 'banner', '{"name":"Slideshow Home 2","banner_id":"7","width":"1920","height":"559","status":"1"}'),
(141, 'So Listing Tabs 1 Home 2', 'so_listing_tabs', '{"action":"save_edit","name":"So Listing Tabs 1 Home 2","module_description":{"1":{"head_name":"So Listing Tabs 1 Home 2"},"2":{"head_name":"So Listing Tabs 1 Home 2"}},"head_name":"So Listing Tabs 1 Home 2","disp_title_module":"0","status":"1","class_suffix":"style-dev-so-listing-tabs","item_link_target":"_blank","nb_column0":"3","nb_column1":"2","nb_column2":"2","nb_column3":"2","nb_column4":"1","type_show":"slider","nb_rows":"1","type_source":"1","category":["33","20"],"child_category":"1","category_depth":"1","product_sort":"p.price","product_ordering":"ASC","source_limit":"6","catid_preload":"95","field_product_tab":["p_price","rating","sales"],"field_preload":"sales","tab_all_display":"0","tab_max_characters":"25","tab_icon_display":"1","cat_order_by":"name","imgcfgcat_width":"30","imgcfgcat_height":"30","display_title":"1","title_maxlength":"100","display_description":"0","description_maxlength":"100","display_price":"1","display_add_to_cart":"1","display_wishlist":"1","display_compare":"1","product_image":"1","product_get_image_data":"1","product_get_image_image":"1","width":"270","height":"200","product_placeholder_path":"nophoto.png","display_banner_image":"0","banner_image":"no_image.png","banner_width":"150","banner_height":"250","banner_image_url":"","effect":"starwars","duration":"800","delay":"500","autoplay":"0","display_nav":"1","display_loop":"0","touchdrag":"1","mousedrag":"1","pausehover":"0","autoplayTimeout":"5000","autoplaySpeed":"1000","moduleid":"141"}'),
(138, 'So HTML Content 2 Home 2', 'so_html', '{"name":"So HTML Content 2 Home 2","module_description":{"1":{"title":"","description":"&lt;div class=&quot;custom-main-home&quot;&gt;\\r\\n\\t&lt;div class=&quot;main-left&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;\\r\\n\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/t15.jpg&quot; alt=&quot;banner&quot;&gt;\\r\\n\\t\\t&lt;\\/a&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;div class=&quot;main-right&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;item&quot;&gt;\\r\\n\\t\\t&lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;\\r\\n\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/t16.jpg&quot; alt=&quot;banner&quot;&gt;\\r\\n\\t\\t\\t&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\t\\t&lt;div class=&quot;item&quot;&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;\\r\\n\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/t17.jpg&quot; alt=&quot;banner&quot;&gt;\\r\\n\\t\\t\\t&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n&lt;\\/div&gt;"},"2":{"title":"","description":"&lt;div class=&quot;custom-main-home&quot;&gt;\\r\\n\\t&lt;div class=&quot;main-left&quot;&gt;\\r\\n\\t&lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;\\r\\n\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/t15.jpg&quot; alt=&quot;banner&quot;&gt;\\r\\n\\t\\t&lt;\\/a&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;div class=&quot;main-right&quot;&gt;\\r\\n\\t\\t&lt;div class=&quot;item&quot;&gt;\\r\\n\\t\\t&lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;\\r\\n\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/t16.jpg&quot; alt=&quot;banner&quot;&gt;\\r\\n\\t\\t\\t&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\t\\t&lt;div class=&quot;item&quot;&gt;\\r\\n\\t\\t\\t&lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;\\r\\n\\t\\t\\t&lt;img src=&quot;image\\/catalog\\/demo\\/banners\\/t17.jpg&quot; alt=&quot;banner&quot;&gt;\\r\\n\\t\\t\\t&lt;\\/a&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\t&lt;\\/div&gt;\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n&lt;\\/div&gt;"}},"class_suffix":"banner","status":"1"}'),
(119, 'So Megamenu  Vertical', 'so_megamenu', '{"button-save":"","moduleid":"119","name":"So Megamenu  Vertical","head_name":{"1":"Categories","2":""},"disp_title_module":"0","status":"1","orientation":"1","show_itemver":"13","navigation_text":{"1":"Categories","2":""},"full_width":"0","home_item":"icon","home_text":{"1":"","2":""},"animation":"none","animation_time":"","layout_id":100,"position":"menu","sort_order":0,"label_item":"hot","icon_font":"fa fa-camera-retro","class_menu":"","search_bar":0}'),
(140, 'Special Products - Home Layout 2', 'so_listing_tabs', '{"action":"save_edit","name":"Special Products - Home Layout 2","module_description":{"1":{"head_name":"Special Products"},"2":{"head_name":" \\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u062e\\u0627\\u0635\\u0629"}},"head_name":"Special Products","disp_title_module":"1","status":"1","class_suffix":"style-dev-so-listing-tabs style2","item_link_target":"_self","nb_column0":"3","nb_column1":"2","nb_column2":"2","nb_column3":"2","nb_column4":"1","type_show":"slider","nb_rows":"2","type_source":"0","category":["95","89","96","18"],"child_category":"1","category_depth":"1","product_sort":"p.price","product_ordering":"ASC","source_limit":"18","catid_preload":"95","field_product_tab":["p_price","rating"],"field_preload":"p_price","tab_all_display":"0","tab_max_characters":"25","tab_icon_display":"0","cat_order_by":"name","imgcfgcat_width":"30","imgcfgcat_height":"30","display_title":"1","title_maxlength":"100","display_description":"0","description_maxlength":"100","display_price":"1","display_add_to_cart":"1","display_wishlist":"1","display_compare":"1","product_image":"1","product_get_image_data":"1","product_get_image_image":"1","width":"270","height":"200","product_placeholder_path":"nophoto.png","display_banner_image":"0","banner_image":"no_image.png","banner_width":"150","banner_height":"250","banner_image_url":"","effect":"starwars","duration":"800","delay":"500","autoplay":"0","display_nav":"1","display_loop":"1","touchdrag":"1","mousedrag":"1","pausehover":"0","autoplayTimeout":"5000","autoplaySpeed":"1000","moduleid":"140"}'),
(94, 'Search pro', 'so_searchpro', '{"moduleid":"94","name":"Search pro","module_description":{"1":{"head_name":"Search pro"},"2":{"head_name":"Search pro"}},"head_name":"Search pro","disp_title_module":"0","class":"so-search search-pro","width":"100","height":"100","limit":"10","character":"1","showcategory":"1","showimage":"1","showprice":"1","showaddtocart":"0","showaddtowishlist":"0","showaddtocompare":"0","status":"1"}'),
(96, 'Latest Product', 'latest', '{"name":"Latest Product","limit":"3","width":"100","height":"100","status":"1"}'),
(142, 'Latest Deals - Home Layout 2', 'so_deals', '{"action":"save_edit","name":"Latest Deals - Home Layout 2","module_description":{"1":{"head_name":"Latest Deals"},"2":{"head_name":"Latest Deals"}},"head_name":"Latest Deals","disp_title_module":"1","status":"1","class_suffix":"style-dev-so-deals","item_link_target":"_self","nb_column0":"1","nb_column1":"1","nb_column2":"1","nb_column3":"2","nb_column4":"1","category":["33"],"child_category":"1","category_depth":"1","product_sort":"p.price","product_ordering":"ASC","source_limit":"6","display_title":"1","title_maxlength":"50","display_description":"0","description_maxlength":"100","display_price":"1","display_add_to_cart":"1","display_wishlist":"1","display_compare":"1","product_image":"1","product_get_image_data":"1","product_get_image_image":"1","width":"270","height":"200","placeholder_path":"nophoto.png","margin":"5","slideBy":"1","autoplay":"0","autoplayTimeout":"5000","autoplayHoverPause":"0","autoplaySpeed":"1000","startPosition":"0","mouseDrag":"1","touchDrag":"1","loop":"0","button_page":"under","dots":"0","dotsSpeed":"500","navs":"1","navSpeed":"500","effect":"none","duration":"800","delay":"500","moduleid":"142"}'),
(132, 'HTML Footer', 'so_html', '{"name":"HTML Footer","module_description":{"1":{"title":"","description":"&lt;div class=&quot;row&quot;&gt;\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/quality.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;High Quality&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/support.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;Awesome Support&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/ship.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;Really Fast Deliveries&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/returns.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;14-Day Returns&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/secure.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;Secure Checkout&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;"},"2":{"title":"","description":"&lt;div class=&quot;row&quot;&gt;\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/quality.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;High Quality&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/support.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;Awesome Support&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/ship.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;Really Fast Deliveries&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/returns.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;14-Day Returns&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;div class=&quot;col-lg-15&quot;&gt;\\t\\t&lt;div class=&quot;item&quot;&gt;\\t\\t\\t&lt;span class=&quot;icon&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/secure.png&quot; alt=&quot;icon&quot;&gt;&lt;\\/span&gt;\\t\\t\\t&lt;h3 class=&quot;title&quot;&gt;Secure Checkout&lt;\\/h3&gt;\\r\\n\\t\\t\\t&lt;p class=&quot;content&quot;&gt;Nullam sed sollicitudin maurisvelit id venenatis morbi&lt;\\/p&gt;\\r\\n\\t\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;\\r\\n\\t&lt;\\/div&gt;"}},"class_suffix":"custom-html-footer","status":"1"}'),
(164, 'New Blog', 'so_latest_blog', '{"action":"saveedit","moduleid":"164","name":"New Blog","module_description":{"1":{"head_name":"New Blog"},"2":{"head_name":""}},"head_name":"New Blog","disp_title_module":"1","status":"1","class_suffix":"","item_link_target":"_blank","limit":"2","button_page":"top","nb_column0":"1","nb_column1":"1","nb_column2":"1","nb_column3":"1","nb_column4":"1","type_show":"simple","nb_row":"1","display_title":"1","title_maxlength":"40","display_description":"1","description_maxlength":"300","display_author":"0","display_comment":"0","display_view":"0","display_date_added":"0","display_readmore":"0","readmore_text":"Read more","blog_image":"1","blog_get_featured_image":"1","width":"220","height":"165","blog_placeholder_path":"nophoto.png","margin":"5","slideBy":"1","autoplay":"1","autoplay_timeout":"5000","pausehover":"1","autoplaySpeed":"1000","smartSpeed":"1000","startPosition":"0","mouseDrag":"1","touchDrag":"1","effect":"starwars","dots":"1","dotsSpeed":"500","navs":"1","navSpeed":"500","duration":"600","delay":"300"}'),
(165, 'Other Product', 'so_related_tabs', '{"action":"","name":"Other Product","module_description":{"1":{"head_name":"Other Product"},"2":{"head_name":""}},"head_name":"Other Product","disp_title_module":"1","status":"1","class_suffix":"style-dev-so-listing-tabs","item_link_target":"_blank","nb_column0":"3","nb_column1":"3","nb_column2":"3","nb_column3":"2","nb_column4":"1","type_show":"slider","nb_rows":"1","type_source":"0","category":["78","33","61","62","63","34","25","18","90","96"],"child_category":"0","category_depth":"1","product_sort":"pd.name","product_ordering":"ASC","source_limit":"4","catid_preload":"78","field_product_tab":["pd_name"],"field_preload":"pd_name","tab_all_display":"0","tab_max_characters":"25","tab_icon_display":"0","cat_order_by":"name","imgcfgcat_width":"30","imgcfgcat_height":"30","display_title":"1","title_maxlength":"50","display_description":"1","description_maxlength":"100","display_price":"1","display_add_to_cart":"1","display_wishlist":"1","display_compare":"1","product_image":"1","product_get_image_data":"1","product_get_image_image":"1","width":"250","height":"250","product_placeholder_path":"nophoto.png","display_banner_image":"0","banner_image":"no_image.png","banner_width":"150","banner_height":"250","banner_image_url":"","effect":"starwars","duration":"800","delay":"500","autoplay":"0","display_nav":"1","display_loop":"1","touchdrag":"1","mousedrag":"1","pausehover":"0","autoplayTimeout":"5000","autoplaySpeed":"1000","moduleid":"165"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_newsletter`
--

DROP TABLE IF EXISTS `oc_newsletter`;
CREATE TABLE IF NOT EXISTS `oc_newsletter` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_email` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11),
(13, 'image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size'),
(13, 1, 'Colors');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(52, 13, 'catalog/colors/red.jpg', 4),
(51, 13, 'catalog/colors/green.jpg', 3),
(50, 13, 'catalog/colors/brown.jpg', 2),
(49, 13, 'catalog/colors/blue.jpg', 1),
(53, 13, 'catalog/colors/violet.jpg', 5),
(54, 13, 'catalog/red-100x100.jpg', 0),
(55, 13, 'catalog/blue-100x100.jpg', 0),
(56, 13, 'catalog/brown-100x100.jpg', 0),
(57, 13, 'catalog/green-100x100.jpg', 0),
(58, 13, 'catalog/violet-100x100.jpg', 0),
(59, 13, 'catalog/red-100x100.jpg', 0),
(60, 13, 'catalog/blue-100x100.jpg', 0),
(61, 13, 'catalog/brown-100x100.jpg', 0),
(62, 13, 'catalog/green-100x100.jpg', 0),
(63, 13, 'catalog/violet-100x100.jpg', 0),
(64, 13, 'catalog/red-100x100.jpg', 0),
(65, 13, 'catalog/blue-100x100.jpg', 0),
(66, 13, 'catalog/brown-100x100.jpg', 0),
(67, 13, 'catalog/green-100x100.jpg', 0),
(68, 13, 'catalog/violet-100x100.jpg', 0),
(69, 13, 'catalog/red-100x100.jpg', 0),
(70, 13, 'catalog/blue-100x100.jpg', 0),
(71, 13, 'catalog/brown-100x100.jpg', 0),
(72, 13, 'catalog/green-100x100.jpg', 0),
(73, 13, 'catalog/violet-100x100.jpg', 0),
(74, 13, 'catalog/red-100x100.jpg', 0),
(75, 13, 'catalog/blue-100x100.jpg', 0),
(76, 13, 'catalog/brown-100x100.jpg', 0),
(77, 13, 'catalog/green-100x100.jpg', 0),
(78, 13, 'catalog/violet-100x100.jpg', 0),
(79, 13, 'catalog/red-100x100.jpg', 0),
(80, 13, 'catalog/blue-100x100.jpg', 0),
(81, 13, 'catalog/brown-100x100.jpg', 0),
(82, 13, 'catalog/green-100x100.jpg', 0),
(83, 13, 'catalog/violet-100x100.jpg', 0),
(84, 13, 'catalog/red-100x100.jpg', 0),
(85, 13, 'catalog/blue-100x100.jpg', 0),
(86, 13, 'catalog/brown-100x100.jpg', 0),
(87, 13, 'catalog/green-100x100.jpg', 0),
(88, 13, 'catalog/violet-100x100.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(53, 1, 13, 'violet'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small'),
(52, 1, 13, 'red'),
(51, 1, 13, 'green'),
(50, 1, 13, 'brown'),
(49, 1, 13, 'blue'),
(54, 1, 13, 'Red'),
(55, 1, 13, 'Blue'),
(56, 1, 13, 'Brown'),
(57, 1, 13, 'Green'),
(58, 1, 13, 'Violet'),
(59, 1, 13, 'Red'),
(60, 1, 13, 'Blue'),
(61, 1, 13, 'Brown'),
(62, 1, 13, 'Green'),
(63, 1, 13, 'Violet'),
(64, 1, 13, 'Red'),
(65, 1, 13, 'Blue'),
(66, 1, 13, 'Brown'),
(67, 1, 13, 'Green'),
(68, 1, 13, 'Violet'),
(69, 1, 13, 'Red'),
(70, 1, 13, 'Blue'),
(71, 1, 13, 'Brown'),
(72, 1, 13, 'Green'),
(73, 1, 13, 'Violet'),
(74, 1, 13, 'Red'),
(75, 1, 13, 'Blue'),
(76, 1, 13, 'Brown'),
(77, 1, 13, 'Green'),
(78, 1, 13, 'Violet'),
(79, 1, 13, 'Red'),
(80, 1, 13, 'Blue'),
(81, 1, 13, 'Brown'),
(82, 1, 13, 'Green'),
(83, 1, 13, 'Violet'),
(84, 1, 13, 'Red'),
(85, 1, 13, 'Blue'),
(86, 1, 13, 'Brown'),
(87, 1, 13, 'Green'),
(88, 1, 13, 'Violet');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(6, 0, 'INV-2013-00', 0, 'Your Store', 'http://dev.ytcvn.com/ytc_templates/opencart/so_market/', 5, 1, 'fsdf', 'dfxgv', 'dfxgc@gmail.com', '24532', '', 'b:0;', 'fsdf', 'dfxgv', 'fsdf', 'fasdzxc', 'fasdzxc', 'fascdc', '15000', 'United Kingdom', 222, 'Caerphilly', 3524, '', 'b:0;', 'Cash On Delivery', 'cod', 'fsdf', 'dfxgv', 'fsdf', 'fasdzxc', 'fasdzxc', 'fascdc', '15000', 'United Kingdom', 222, 'Caerphilly', 3524, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '1270.0000', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '118.71.224.135', '', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0)', 'en-US', '2015-10-09 11:19:09', '2015-10-09 11:19:09'),
(9, 0, 'INV-2013-00', 0, 'Your Store', 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/', 8, 1, 'nguyen', 'phuong', 'phuongnt@ytcvn.com', '5452121212', '32456789', '', 'nguyen', 'phuong', '', 'fksajdhfxcjkfmsd', '', 'faiusdzkxjfmkc,ád', '1500', 'Tokelau', 211, 'Fakaofo', 3271, '', '[]', 'Cash On Delivery', 'cod', 'nguyen', 'phuong', '', 'fksajdhfxcjkfmsd', '', 'faiusdzkxjfmkc,ád', '1500', 'Tokelau', 211, 'Fakaofo', 3271, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '460.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '100.64.201.150', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2015-12-23 22:56:31', '2015-12-23 22:56:35'),
(10, 0, 'INV-2013-00', 0, 'Your Store', 'http://dev.ytcvn.com/ytc_templates/opencart/so_shoppystore/', 8, 1, 'nguyen', 'phuong', 'phuongnt@ytcvn.com', '5452121212', '32456789', '', 'nguyen', 'phuong', '', 'fksajdhfxcjkfmsd', '', 'faiusdzkxjfmkc,ád', '1500', 'Tokelau', 211, 'Fakaofo', 3271, '', '[]', 'الدفع نقدا عند التسليم', 'cod', 'nguyen', 'phuong', '', 'fksajdhfxcjkfmsd', '', 'faiusdzkxjfmkc,ád', '1500', 'Tokelau', 211, 'Fakaofo', 3271, '', '[]', 'السعر الموحد للشحن', 'flat.flat', '', '94.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '100.64.201.150', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2015-12-24 02:16:43', '2015-12-24 02:16:48'),
(11, 0, 'INV-2013-00', 0, 'Your Store', 'http://172.20.10.3/ytc_templates/opencart/so_shoppystore/', 10, 1, 'Tinh', 'Manh', 'tinhpv@ytcvn.com', '0987654546', '', '', 'Tinh', 'Manh', '', 'ha noi', '', 'ha noi', '1000000', 'United Kingdom', 222, 'Carmarthenshire', 3527, '', '[]', 'Cash On Delivery', 'cod', 'Tinh', 'Manh', '', 'ha noi', '', 'ha noi', '1000000', 'United Kingdom', 222, 'Carmarthenshire', 3527, '', '[]', 'Flat Shipping Rate', 'flat.flat', 'Please select the preferred payment method to use on this order.', '74.4000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '172.20.10.3', '', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', 'vi-VN,vi;q=0.8,en-US;q=0.5,en;q=0.3', '2015-12-27 13:08:33', '2015-12-27 13:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(16, 10, 1, 0, '', '2015-12-24 02:16:48'),
(15, 9, 1, 0, '', '2015-12-23 22:56:35'),
(17, 11, 1, 0, '', '2015-12-27 13:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(7, 6, 30, 'Canon EOS 5D', 'Product 3', 1, '60.0000', '60.0000', '0.0000', 200),
(8, 6, 44, 'Filet Mign', 'Product 17', 1, '1000.0000', '1000.0000', '202.0000', 700),
(21, 10, 43, 'Fuzan suma mipon kitem', 'Product 16', 1, '52.0000', '52.0000', '0.0000', 600),
(19, 9, 54, 'Ruma huren chuma pikam', 'bag', 7, '65.0000', '455.0000', '0.0000', 0),
(20, 10, 29, 'Hazen dima polan mikam', 'Product 2', 1, '37.0000', '37.0000', '0.0000', 0),
(22, 11, 29, 'Hazen dima polan mikam', 'Product 2', 1, '37.0000', '37.0000', '9.4000', 0),
(23, 11, 50, 'Etiam nec interdum dolor', 'ring', 1, '20.0000', '20.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(44, 10, 'total', 'الإجمالي', '94.0000', 9),
(43, 10, 'shipping', 'السعر الموحد للشحن', '5.0000', 3),
(26, 6, 'sub_total', 'Sub-Total', '1060.0000', 1),
(27, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(28, 6, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(29, 6, 'tax', 'VAT (20%)', '201.0000', 5),
(30, 6, 'total', 'Total', '1270.0000', 9),
(42, 10, 'sub_total', 'المجموع الفرعي', '89.0000', 1),
(41, 9, 'total', 'Total', '460.0000', 9),
(40, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(39, 9, 'sub_total', 'Sub-Total', '455.0000', 1),
(45, 11, 'sub_total', 'Sub-Total', '57.0000', 1),
(46, 11, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(47, 11, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(48, 11, 'tax', 'VAT (20%)', '8.4000', 5),
(49, 11, 'total', 'Total', '74.4000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog`
--

DROP TABLE IF EXISTS `oc_pavblog_blog`;
CREATE TABLE IF NOT EXISTS `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_pavblog_blog`
--

INSERT INTO `oc_pavblog_blog` (`blog_id`, `category_id`, `position`, `created`, `status`, `user_id`, `hits`, `image`, `meta_keyword`, `meta_description`, `meta_title`, `date_modified`, `video_code`, `params`, `tags`, `featured`, `keyword`) VALUES
(7, 21, 2, '2013-03-09', 1, 1, 47, 'catalog/blog/blog8.jpg', '', '', '', '2015-08-28', '', '', 'joomla, prestashop, magento', 1, ''),
(9, 21, 0, '2013-03-09', 1, 1, 181, 'catalog/blog/blog9.jpg', '', '', '', '2015-08-28', '', '', 'prestashop, magento', 0, ''),
(10, 21, 0, '2013-03-09', 1, 1, 238, 'catalog/blog/blog4.jpg', 'test test', '', 'Custom SEO Titlte', '2015-08-28', '&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;http://www.youtube.com/embed/-ZsFrs2O8pI&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;', '', 'prestashop', 0, ''),
(11, 21, 0, '2013-03-11', 1, 1, 58, 'catalog/blog/blog6.jpg', '', '', '', '2015-08-28', '', '', 'opencart', 0, ''),
(12, 21, 0, '2015-07-27', 1, 1, 1, 'catalog/blog/blog1.jpg', '', '', '', '2015-08-28', '', '', 'opencart, market, blog', 0, ''),
(13, 21, 0, '2015-07-27', 1, 1, 0, 'catalog/blog/blog7.jpg', '', '', '', '2015-08-28', '', '', '', 0, ''),
(14, 21, 0, '2015-07-27', 1, 1, 94, 'catalog/blog/blog5.jpg', '', '', '', '2015-08-28', '', '', 'opencart, blog, news', 0, ''),
(15, 21, 0, '2015-07-27', 1, 1, 28, 'catalog/blog/blog2.jpg', '', '', '', '2015-08-28', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog_description`
--

DROP TABLE IF EXISTS `oc_pavblog_blog_description`;
CREATE TABLE IF NOT EXISTS `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

INSERT INTO `oc_pavblog_blog_description` (`blog_id`, `language_id`, `title`, `description`, `content`) VALUES
(15, 1, 'Kire tuma demonstraverunt lector', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Morbi tempus, non ullamcorper euismod, erat odio suscipit purus, nec ornare lacus turpis ac purus. Mauris cursus in mi vel dignissim. Morbi mollis elit ipsum, a feugiat lectus gravida non. Aenean molestie justo sed aliquam euismod. Maecenas laoreet bibendum laoreet. Morbi tempor massa sit amet purus lobortis, non porta tellus dignissim. Proin dictum justo a nisl pellentesque egestas.Nulla commodo euismod nisi ac bibendum. Mauris in pellentesque tellus, in cursus magna. Sed volutpat dui bibendum mi molestie, at volutpat nunc dictum. Fusce sagittis massa id eros scelerisque, eget accumsan magna lacinia. Nullam posuere neque at neque dictum interdum&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Morbi tempus, non ullamcorper euismod, erat odio suscipit purus, nec ornare lacus turpis ac purus. Mauris cursus in mi vel dignissim. Morbi mollis elit ipsum, a feugiat lectus gravida non. Aenean molestie justo sed aliquam euismod. Maecenas laoreet bibendum laoreet. Morbi tempor massa sit amet purus lobortis, non porta tellus dignissim. Proin dictum justo a nisl pellentesque egestas.Nulla commodo euismod nisi ac bibendum. Mauris in pellentesque tellus, in cursus magna. Sed volutpat dui bibendum mi molestie, at volutpat nunc dictum. Fusce sagittis massa id eros scelerisque, eget accumsan magna lacinia. Nullam posuere neque at neque dictum interdum. &lt;/p&gt;&lt;p&gt;Etiam sagittis, sem non dictum pretium, mi nisi viverra nunc, id gravida enim augue sit amet eros. Praesent eget tristique ligula, vitae auctor lectus. Maecenas ipsum diam, aliquet et hendrerit vel, tincidunt id dolor. Aliquam erat volutpat. Vestibulum quis pharetra dui, id placerat mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc ultricies augue molestie fermentum auctor. Quisque vulputate mollis lacus pulvinar posuere. Proin ultrices, tortor non ullamcorper pretium, sapien nunc consectetur massa, ut porta turpis metus at sapien. Pellentesque ultricies metus id urna hendrerit vestibulum.Donec ut viverra ante. Quisque ligula purus, sollicitudin ac dignissim nec, aliquam a velit.&lt;/p&gt;&lt;p&gt; In feugiat, nunc id iaculis semper, eros dui suscipit arcu, eu molestie nunc risus non neque. Vestibulum in rhoncus arcu. Aliquam elementum varius est faucibus commodo. Nam tempus lorem scelerisque risus pulvinar, posuere malesuada purus dignissim. Quisque congue interdum enim eget vehicula. Integer blandit condimentum gravida.&lt;/p&gt;'),
(15, 2, 'Kire tuma demonstraverunt lector', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Morbi tempus, non ullamcorper euismod, erat odio suscipit purus, nec ornare lacus turpis ac purus. Mauris cursus in mi vel dignissim. Morbi mollis elit ipsum, a feugiat lectus gravida non. Aenean molestie justo sed aliquam euismod. Maecenas laoreet bibendum laoreet. Morbi tempor massa sit amet purus lobortis, non porta tellus dignissim. Proin dictum justo a nisl pellentesque egestas.Nulla commodo euismod nisi ac bibendum. Mauris in pellentesque tellus, in cursus magna. Sed volutpat dui bibendum mi molestie, at volutpat nunc dictum. Fusce sagittis massa id eros scelerisque, eget accumsan magna lacinia. Nullam posuere neque at neque dictum interdum&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Morbi tempus, non ullamcorper euismod, erat odio suscipit purus, nec ornare lacus turpis ac purus. Mauris cursus in mi vel dignissim. Morbi mollis elit ipsum, a feugiat lectus gravida non. Aenean molestie justo sed aliquam euismod. Maecenas laoreet bibendum laoreet. Morbi tempor massa sit amet purus lobortis, non porta tellus dignissim. Proin dictum justo a nisl pellentesque egestas.Nulla commodo euismod nisi ac bibendum. Mauris in pellentesque tellus, in cursus magna. Sed volutpat dui bibendum mi molestie, at volutpat nunc dictum. Fusce sagittis massa id eros scelerisque, eget accumsan magna lacinia. Nullam posuere neque at neque dictum interdum.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Etiam sagittis, sem non dictum pretium, mi nisi viverra nunc, id gravida enim augue sit amet eros. Praesent eget tristique ligula, vitae auctor lectus. Maecenas ipsum diam, aliquet et hendrerit vel, tincidunt id dolor. Aliquam erat volutpat. Vestibulum quis pharetra dui, id placerat mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc ultricies augue molestie fermentum auctor. Quisque vulputate mollis lacus pulvinar posuere. Proin ultrices, tortor non ullamcorper pretium, sapien nunc consectetur massa, ut porta turpis metus at sapien. Pellentesque ultricies metus id urna hendrerit vestibulum.Donec ut viverra ante. Quisque ligula purus, sollicitudin ac dignissim nec, aliquam a velit.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;In feugiat, nunc id iaculis semper, eros dui suscipit arcu, eu molestie nunc risus non neque. Vestibulum in rhoncus arcu. Aliquam elementum varius est faucibus commodo. Nam tempus lorem scelerisque risus pulvinar, posuere malesuada purus dignissim. Quisque congue interdum enim eget vehicula. Integer blandit condimentum gravida.&lt;/p&gt;'),
(14, 1, 'Biten demonstraverunt lector legere legunt saepius', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 15.5844163894653px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844163894653px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844163894653px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844163894653px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(14, 2, 'Biten demonstraverunt lector legere legunt saepius', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 15.5844163894653px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844163894653px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844163894653px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844163894653px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(9, 1, 'Commodo laoreet semper tincidunt lorem ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(9, 2, 'Commodo laoreet semper tincidunt lorem ', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(11, 1, 'Donec tellus Nulla lorem Nullam elit id ut', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(11, 2, 'Donec tellus Nulla lorem Nullam elit id ut', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;'),
(10, 1, 'Neque porro quisquam est, qui dolorem ipsum', '&lt;p&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;\r\n', '&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;'),
(10, 2, 'Neque porro quisquam est, qui dolorem ipsum', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(13, 1, 'Nire tmas kite traverunt lector legere legunt', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;padding: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Regular; line-height: 18px;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ''Open Sans'', sans-serif; line-height: 15.5844163894653px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(13, 2, 'Nire tmas kite traverunt lector legere legunt', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(12, 1, 'Nure caten raverunt lector legere', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;padding: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Regular; line-height: 18px;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ''Open Sans'', sans-serif; line-height: 15.5844163894653px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(12, 2, 'Nure caten raverunt lector legere', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(7, 1, 'Ac tincidunt Suspendisse malesuada', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n'),
(7, 2, 'Ac tincidunt Suspendisse malesuada', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844163894653px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.142858505249px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category`
--

DROP TABLE IF EXISTS `oc_pavblog_category`;
CREATE TABLE IF NOT EXISTS `oc_pavblog_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `oc_pavblog_category`
--

INSERT INTO `oc_pavblog_category` (`category_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `meta_keyword`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `meta_description`, `meta_title`, `level`, `left`, `right`, `keyword`) VALUES
(1, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47, ''),
(20, 'data/pavblog/pav-c3.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 3, 0, NULL, NULL, 0, 'top', 'test test', NULL, '', '', 0, 0, 0, ''),
(21, 'data/pavblog/pav-c1.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, '1'),
(22, 'data/demo/canon_eos_5d_1.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(23, 'data/pavblog/pav-c2.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(24, 'data/logo.png', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category_description`
--

DROP TABLE IF EXISTS `oc_pavblog_category_description`;
CREATE TABLE IF NOT EXISTS `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category_description`
--

INSERT INTO `oc_pavblog_category_description` (`category_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'ROOT', 'Menu Root'),
(20, 1, 'Demo Category 4', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),
(23, 1, 'Demo Category 2', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(21, 1, 'Our Blog', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/p&gt;\r\n'),
(21, 2, 'Our Blog', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(22, 1, 'Demo Category 1', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(23, 2, 'Demo Category 2', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(24, 1, 'Demo Category 3', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n'),
(22, 2, 'Demo Category 1', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(24, 2, 'Demo Category 3', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(20, 2, 'Demo Category 4', '&lt;p&gt;&lt;span style=&quot;line-height: 17.142858505249px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/span&gt;&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_comment`
--

DROP TABLE IF EXISTS `oc_pavblog_comment`;
CREATE TABLE IF NOT EXISTS `oc_pavblog_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_blog_comment` (`blog_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_pavblog_comment`
--

INSERT INTO `oc_pavblog_comment` (`comment_id`, `blog_id`, `comment`, `status`, `created`, `user`, `email`) VALUES
(6, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:23:09', 'ha cong tien', 'hatuhn@gmail.com'),
(7, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:25:19', 'ha cong tien', 'hatuhn@gmail.com'),
(8, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:30:17', 'Test Test ', 'ngoisao@aa.com'),
(9, 9, 'sdfasdf', 0, '2015-07-24 21:05:35', 'ngant', 'ngant@ytcvn.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL,
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL,
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `viewed` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/layout2/11.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2016-08-10 18:32:11'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 7, 'catalog/layout2/5.jpg', 6, 1, '279.9900', 0, 9, '2015-12-08', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 1, '2009-02-03 16:42:17', '2016-08-10 18:11:35'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/layout2/1.jpg', 9, 1, '145.0000', 3, 0, '2015-08-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2009-02-03 16:59:00', '2016-08-10 18:16:13'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 7, 'catalog/layout2/1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 12, '2009-02-03 17:00:10', '2016-08-10 18:21:21'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/layout2/7.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2009-02-03 17:07:26', '2016-08-10 18:20:38'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 7, 'catalog/placeholder.png', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2015-12-12 09:15:35'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 7, 'catalog/layout2/7.jpg', 15, 1, '260000.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 66, '2009-02-03 18:07:54', '2016-08-16 05:37:07'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, 'catalog/layout2/11.jpg', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2016-08-10 18:27:30'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 7, 'catalog/layout2/3.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 2, '2009-02-03 18:09:19', '2016-08-10 18:19:34'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 7, 'catalog/layout2/8.jpg', 15, 1, '101.0000', 0, 9, '2014-10-10', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 33, '2009-02-03 21:07:12', '2016-08-16 05:47:26'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/placeholder.png', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2015-12-05 10:25:39'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/layout2/4.jpg', 8, 1, '100.0000', 400, 9, '2015-07-27', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 0, 0, 1, 1, '2009-02-03 21:07:37', '2016-08-10 18:14:40'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/layout2/10.jpg', 8, 0, '500.0000', 0, 9, '2014-10-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 21:07:49', '2016-08-10 18:10:12'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 7, 'catalog/layout2/11.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 21:08:00', '2016-08-10 18:13:06'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 7, 'catalog/placeholder.png', 8, 1, '2000.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2015-12-17 15:59:21'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/layout2/14.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2016-08-10 18:24:53'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 7, 'catalog/layout2/2.jpg', 7, 1, '100.0000', 400, 0, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, '2009-02-03 21:08:40', '2016-08-10 18:22:43'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 7, 'catalog/layout2/13.jpg', 15, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 31, '2009-02-08 17:21:51', '2016-08-16 20:42:24'),
(49, 'SAM1', '', '', '', '', '', '', '', 100, 8, 'catalog/layout2/14.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2011-04-26 08:57:34', '2016-08-10 18:29:45'),
(50, 'ring', '', '', '', '', '', '', '', 54, 6, 'catalog/layout2/9.jpg', 15, 1, '43.0000', 0, 0, '2015-11-24', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 35, '2015-08-28 15:23:40', '2016-08-16 20:42:09'),
(51, 'banla', '', '', '', '', '', '', '', 12, 6, 'catalog/layout2/6.jpg', 0, 1, '123.0000', 0, 0, '2015-08-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-08-28 15:25:30', '2016-08-10 18:29:23'),
(52, 'watch', '', '', '', '', '', '', '', 54, 7, 'catalog/layout2/13.jpg', 0, 1, '78.0000', 0, 0, '2015-08-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-08-28 15:27:54', '2016-08-10 18:26:41'),
(53, 'watch', '', '', '', '', '', '', '', 79, 7, 'catalog/placeholder.png', 0, 1, '90.0000', 0, 0, '2015-08-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-08-28 15:29:58', '2015-12-12 09:18:44'),
(54, 'bag', '', '', '', '', '', '', '', 10, 7, 'catalog/placeholder.png', 0, 1, '99.0000', 0, 0, '2015-08-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-08-28 15:32:04', '2015-12-17 16:06:47'),
(55, 'tulanh', '', '', '', '', '', '', '', 32, 6, 'catalog/placeholder.png', 0, 1, '100.0000', 0, 0, '2015-08-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-08-28 15:36:08', '2015-12-17 16:06:06'),
(56, 'kevin', '', '', '', '', '', '', '', 65, 7, 'catalog/layout2/5.jpg', 0, 1, '245.0000', 0, 0, '2015-08-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-08-28 15:38:08', '2016-08-10 18:31:41'),
(57, 'mama', '', '', '', '', '', '', '', 35, 7, 'catalog/placeholder.png', 0, 1, '59.0000', 0, 0, '2015-08-28', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-08-28 16:00:28', '2015-12-05 10:07:19'),
(58, 'D00007', '', '', '', '', '', '', '', 233, 7, 'catalog/placeholder.png', 0, 1, '134.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:14:21', '2015-12-17 16:15:11'),
(59, 'V00066', 'S00066', '', '', '', '', '', '', 144, 7, 'catalog/placeholder.png', 0, 1, '732.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:17:22', '2015-12-17 16:02:14'),
(60, 'C00007', 'D00777', '', '', '', '', '', '', 166, 7, 'catalog/placeholder.png', 0, 1, '788.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:22:53', '2015-12-12 09:19:17'),
(61, 'G9999', 'D0000077', '', '', '', '', '', '', 164, 7, 'catalog/placeholder.png', 0, 1, '774.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:25:13', '2015-12-12 09:19:39'),
(62, 'C00088', 'D000077', '', '', '', '', '', '', 156, 7, 'catalog/placeholder.png', 0, 1, '93.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:28:07', '2015-12-17 16:10:17'),
(63, 'C000906', 'S000077', '', '', '', '', '', '', 153, 7, 'catalog/placeholder.png', 0, 1, '82.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:30:33', '2015-12-17 16:11:17'),
(64, 'B000078', 'V000066', '', '', '', '', '', '', 166, 7, 'catalog/placeholder.png', 0, 1, '72.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:33:24', '2015-12-17 16:16:35'),
(65, 'V909995', 'D0066', '', '', '', '', '', '', 133, 7, 'catalog/placeholder.png', 0, 1, '66.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:40:38', '2015-12-05 11:42:34'),
(66, 'C00009078', 'B000777', '', '', '', '', '', '', 155, 7, 'catalog/placeholder.png', 0, 1, '77.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:44:47', '2015-12-17 16:16:58'),
(67, 'D00989', 'S00666', '', '', '', '', '', '', 133, 7, 'catalog/placeholder.png', 0, 1, '85.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:46:55', '0000-00-00 00:00:00'),
(68, 'C00077', 'D00888888', '', '', '', '', '', '', 1, 7, 'catalog/placeholder.png', 0, 1, '93.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:49:32', '0000-00-00 00:00:00'),
(69, 'C00007', 'F0000077', '', '', '', '', '', '', 1444, 7, 'catalog/placeholder.png', 0, 1, '82.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:51:59', '0000-00-00 00:00:00'),
(70, 'C00008', 'F000007777', '', '', '', '', '', '', 74, 7, 'catalog/placeholder.png', 0, 1, '73.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:54:07', '0000-00-00 00:00:00'),
(71, 'D00088', 'F0000077', '', '', '', '', '', '', 55, 7, 'catalog/placeholder.png', 0, 1, '74.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:56:19', '2015-12-17 16:16:04'),
(72, 'C000777', 'F0009767', '', '', '', '', '', '', 555, 7, 'catalog/placeholder.png', 0, 1, '677.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 11:58:42', '0000-00-00 00:00:00'),
(73, 'C00007', 'G000066655', '', '', '', '', '', '', 555, 7, 'catalog/placeholder.png', 0, 1, '145.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 12:00:37', '2015-12-19 17:16:25'),
(74, 'C000666', 'F0009787', '', '', '', '', '', '', 655, 7, 'catalog/layout2/2.jpg', 0, 1, '43.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 12:03:36', '2016-08-10 18:26:15'),
(75, 'F000978', 'F0006666', '', '', '', '', '', '', 333, 6, 'catalog/layout2/6.jpg', 0, 1, '55.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 12:06:47', '2016-08-10 18:25:31'),
(76, 'V00007', 'G000555', '', '', '', '', '', '', 444, 7, 'catalog/placeholder.png', 0, 1, '89.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 12:09:49', '2015-12-19 17:17:00'),
(77, 'F9999', 'F00888', '', '', '', '', '', '', 55, 7, 'catalog/placeholder.png', 0, 1, '75.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 12:14:14', '2015-12-05 12:15:08'),
(78, 'V0009', 'G00077', '', '', '', '', '', '', 443, 7, 'catalog/placeholder.png', 0, 1, '86.0000', 0, 0, '2015-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-05 12:17:33', '2015-12-19 17:16:07'),
(79, 'C0000555', 'F0044442', '', '', '', '', '', '', 23, 7, 'catalog/placeholder.png', 0, 1, '81.0000', 0, 0, '2015-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-06 18:14:05', '2015-12-17 16:17:50'),
(80, 'V000077', 'G006666', '', '', '', '', '', '', 45, 7, 'catalog/placeholder.png', 0, 1, '69.0000', 0, 0, '2015-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-06 18:17:09', '2015-12-17 16:01:39'),
(81, 'C00077', 'F00998', '', '', '', '', '', '', 123, 7, 'catalog/placeholder.png', 0, 1, '79.0000', 0, 0, '2015-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-06 18:27:20', '2015-12-17 16:00:57'),
(82, 'C00888', 'G008888', '', '', '', '', '', '', 1, 7, 'catalog/layout2/12.jpg', 0, 1, '80.0000', 0, 0, '2015-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-12-06 18:33:05', '2016-08-10 18:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 2, '1'),
(47, 4, 2, '16GB'),
(47, 4, 1, '16GB'),
(47, 2, 2, '4'),
(47, 2, 1, '4'),
(43, 4, 1, '8gb'),
(43, 2, 1, '1'),
(43, 4, 2, '8gb');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `video1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `html_product_right` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `html_product_tab` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tab_title` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `video1`, `html_product_right`, `html_product_tab`, `tab_title`) VALUES
(28, 2, 'Pokan mitren mazen duma', '&lt;p&gt;Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.&lt;/p&gt;\r\n&lt;p&gt;Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. &lt;/p&gt;\r\n&lt;p&gt;Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum&lt;/p&gt;', 'Smartphone', 'electronic, fashion, market', '', '', '', '', '', ''),
(28, 1, 'Pokan mitren mazen duma', '&lt;p&gt;Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.&lt;/p&gt;&lt;p&gt;Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. &lt;/p&gt;&lt;p&gt;Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum&lt;/p&gt;', 'Smartphone', 'electronic, fashion, market', '', '', '', '', '', ''),
(78, 1, 'Rima jema facem pokem', '&lt;p&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. &lt;/p&gt;&lt;p&gt;Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero&lt;/p&gt;', 'Maecenas ', 'Rima jema facem pokem', '', '', '', '', '', ''),
(42, 2, 'Lorem ipsum dolor sit ', '&lt;p&gt;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam \r\nnonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, \r\nsed diam voluptua. &lt;/p&gt;&lt;p&gt;At vero eos et accusam et justo duo dolores et\r\n ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem \r\nipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing \r\nelitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna \r\naliquyam erat, sed diam voluptua. &lt;/p&gt;&lt;p&gt;At vero eos et accusam et justo\r\n duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata \r\nsanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, \r\nconsetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut \r\nlabore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et \r\naccusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no \r\nsea takimata sanctus est Lorem ipsum dolor sit amet.&lt;br&gt;&lt;/p&gt;', 'Monitor,Apple', 'Apple ', '', '', '', '', '', ''),
(42, 1, 'Lorem ipsum dolor sit ', '&lt;p&gt;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. &lt;/p&gt;&lt;p&gt;At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. &lt;/p&gt;&lt;p&gt;At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.&lt;br&gt;&lt;/p&gt;', 'Monitor,Apple', 'Apple ', '', '', '', '', '', ''),
(45, 2, 'Hazem mazem duma pola irure qui sint jerky', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;Cupidatat do boudin ball tip ham aliquip.  Adipisicing id venison \r\nshankle, short loin cow rump sausage esse hamburger.  Aliqua in et tail \r\ncupidatat chicken, spare ribs dolore ipsum exercitation incididunt \r\nlabore t-bone turducken pastrami.  Incididunt in ea eiusmod, kevin pork \r\nchop laborum ullamco veniam tail sausage.  Bresaola mollit brisket \r\nalcatra est pork ut.&lt;/p&gt;&lt;p&gt;Jowl aliqua dolor ham hock kielbasa chuck.  \r\nPorchetta rump landjaeger cupidatat, shank ground round occaecat quis.  \r\nAnim flank ball tip, enim eiusmod meatball rump.  Spare ribs boudin \r\ndoner pork strip steak.  Picanha leberkas pancetta, eiusmod quis tail \r\nanim boudin pastrami.  Kielbasa bresaola alcatra consectetur ea sirloin \r\npork chop shank ipsum eu.  Frankfurter aliqua landjaeger officia, \r\nhamburger sausage exercitation eu sirloin reprehenderit cupidatat.&lt;/p&gt;&lt;p&gt;Alcatra\r\n do aute venison meatball, sint est culpa aliquip nostrud.  Enim aliquip\r\n ex, qui et ground round occaecat ut ipsum ad turducken.  Est sausage \r\nipsum kevin cupim, do reprehenderit sunt meatloaf labore nisi esse \r\nofficia.  Drumstick meatloaf shoulder cillum, irure qui sint jerky \r\nlabore ribeye ex do officia porchetta consequat.  Biltong enim cow, \r\ndoner lorem minim ex venison ball tip shankle flank meatball laboris.  \r\nEsse officia ground round anim biltong brisket laborum turkey et \r\nvoluptate dolor beef t-bone in doner.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', ' Porchetta ', 'Jowl Pliq', '', '', '', '', '', ''),
(29, 2, 'Hazen dima polan mikam', '&lt;p&gt;Felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. &lt;/p&gt;&lt;p&gt;Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. &lt;/p&gt;&lt;p&gt;Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales&lt;/p&gt;', 'Phone,Mobile', 'Palm Treo Pro', '', '', '', '', '', ''),
(31, 2, 'Mikan dima polam chuma', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon''s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon''s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera''s new features. The D300 features a new 51-point autofocus system with Nikon''s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera''s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon''s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'Tracking ', 'canon', '', '', '', '', '', ''),
(36, 1, 'Andouille eu cupidatat caze', '&lt;div&gt;\r\n	&lt;p&gt;Andouille eu cupidatat pork belly kevin, picanha sunt hamburger \r\nkielbasa.  Tail pancetta sausage, spare ribs flank beef anim.  \r\nLandjaeger doner est id cow turkey dolore, short loin pastrami \r\nadipisicing.  Fatback veniam andouille magna in aliqua aute pig eu \r\naliquip filet mignon consectetur.  Culpa pork loin est, turducken \r\nalcatra quis andouille pancetta deserunt ex chicken salami officia \r\noccaecat lorem.  Dolor ham hock ad tongue, cupidatat fatback pastrami \r\npork belly ullamco.  Lorem cow voluptate in shank incididunt corned beef\r\n alcatra adipisicing nostrud.&lt;/p&gt;&lt;p&gt;Deserunt short ribs spare ribs, \r\nshort loin meatball in cupim chicken ut.  Anim tongue sint beef eu, non \r\nbiltong ea nulla mollit.  Dolore dolor drumstick lorem chuck, alcatra \r\nshort loin salami pastrami pig exercitation filet mignon porchetta.  \r\nPariatur dolore sint, mollit strip steak in swine ad ea boudin sausage \r\naliquip sed capicola.  Landjaeger culpa corned beef aliqua in pork loin \r\nporchetta sunt consectetur turducken.  Sint cupim consectetur labore.&lt;/p&gt;&lt;p&gt;Ullamco\r\n occaecat tongue doner flank kielbasa.  Culpa frankfurter duis do et, \r\ndolore turducken dolor commodo.  Salami proident shank, excepteur \r\nshoulder spare ribs commodo ham hock ground round rump.  Tongue \r\nexcepteur fugiat chuck strip steak, brisket biltong bacon leberkas \r\naliqua.  Pig qui anim, chicken in venison ham ex ullamco t-bone ut.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'iPod Magentech', 'Lorem Cow', '', '', '', '', '', ''),
(43, 1, 'Fuzan suma mipon kitem', '&lt;p&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. &lt;/p&gt;&lt;p&gt;Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. &lt;/p&gt;&lt;p&gt;Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', 'Macbook', 'MacBook', '', '', '', '', '', ''),
(43, 2, 'Fuzan suma mipon kitem', '&lt;div&gt;\r\n	&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'Macbook', 'MacBook', '', '', '', '', '', ''),
(36, 2, 'Andouille eu cupidatat caze', '&lt;div&gt;\r\n	&lt;p&gt;Andouille eu cupidatat pork belly kevin, picanha sunt hamburger \r\nkielbasa.  Tail pancetta sausage, spare ribs flank beef anim.  \r\nLandjaeger doner est id cow turkey dolore, short loin pastrami \r\nadipisicing.  Fatback veniam andouille magna in aliqua aute pig eu \r\naliquip filet mignon consectetur.  Culpa pork loin est, turducken \r\nalcatra quis andouille pancetta deserunt ex chicken salami officia \r\noccaecat lorem.  Dolor ham hock ad tongue, cupidatat fatback pastrami \r\npork belly ullamco.  Lorem cow voluptate in shank incididunt corned beef\r\n alcatra adipisicing nostrud.&lt;/p&gt;&lt;p&gt;Deserunt short ribs spare ribs, \r\nshort loin meatball in cupim chicken ut.  Anim tongue sint beef eu, non \r\nbiltong ea nulla mollit.  Dolore dolor drumstick lorem chuck, alcatra \r\nshort loin salami pastrami pig exercitation filet mignon porchetta.  \r\nPariatur dolore sint, mollit strip steak in swine ad ea boudin sausage \r\naliquip sed capicola.  Landjaeger culpa corned beef aliqua in pork loin \r\nporchetta sunt consectetur turducken.  Sint cupim consectetur labore.&lt;/p&gt;&lt;p&gt;Ullamco\r\n occaecat tongue doner flank kielbasa.  Culpa frankfurter duis do et, \r\ndolore turducken dolor commodo.  Salami proident shank, excepteur \r\nshoulder spare ribs commodo ham hock ground round rump.  Tongue \r\nexcepteur fugiat chuck strip steak, brisket biltong bacon leberkas \r\naliqua.  Pig qui anim, chicken in venison ham ex ullamco t-bone ut.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'iPod', 'Lorem Cow', '', '', '', '', '', ''),
(48, 1, 'Cupim bite rima sukem', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;Drumstick kielbasa bresaola landjaeger beef ribs.  Sirloin boudin \r\nflank cupim leberkas tongue salami meatball shoulder.  Brisket salami \r\npork belly short loin ham meatball turducken.  Tail ham hock pancetta \r\nbeef t-bone.  Cupim brisket pastrami strip steak shank tenderloin ham \r\nhock shankle prosciutto chicken sirloin.  Spare ribs ham ball tip, \r\nsirloin kielbasa tri-tip meatball.&lt;/p&gt;&lt;p&gt;Rump frankfurter chuck, pork \r\nloin tail drumstick ham hock salami pancetta t-bone turducken boudin \r\nprosciutto cow sausage.  Meatball beef pork kevin boudin tri-tip.  Strip\r\n steak meatloaf flank, spare ribs ribeye alcatra cow fatback jerky \r\nkevin.  Turkey beef ribs turducken, filet mignon rump andouille jowl \r\npork belly.  Doner ball tip porchetta, cow turkey hamburger pastrami.&lt;/p&gt;&lt;p&gt;Shankle\r\n hamburger fatback, beef boudin spare ribs meatball landjaeger \r\nprosciutto ground round capicola kielbasa.  Shank kielbasa pastrami jowl\r\n doner corned beef frankfurter porchetta chuck beef.  Meatball ground \r\nround salami jowl strip steak cupim shank jerky t-bone.  Strip steak \r\ndrumstick pork chop venison.  Prosciutto ground round tri-tip shank rump\r\n pig.  Tri-tip frankfurter landjaeger boudin venison turducken.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'iPod', 'Cupim bris', '', '', '', '', '', ''),
(41, 1, 'Lirem tuma chuma loten', '&lt;p&gt;Phasellus ut vehicula mi. Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis. &lt;/p&gt;&lt;p&gt;Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. &lt;/p&gt;&lt;p&gt;Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;', 'Laptop,iMac', 'imac', '', '', '', '', '', ''),
(41, 2, 'Lirem tuma chuma loten', '&lt;p&gt;Phasellus ut vehicula mi. Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis. &lt;/p&gt;\r\n&lt;p&gt;Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. &lt;/p&gt;\r\n&lt;p&gt;Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;', 'Laptop,iMac', 'imac', '', '', '', '', '', ''),
(29, 1, 'Hazen dima polan mikam', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', 'Phone,Mobile', 'Palm Treo Pro', '', '', '', '', '', ''),
(47, 2, 'Duis faucibus rutrum malesua', '&lt;p&gt;Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis.&lt;/p&gt;&lt;p&gt; Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis,&lt;/p&gt;', 'Cool,Laptop,Usefull', 'market, fashion', '', '', '', '', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', 'Mobile', 'samsung', '', '', '', '', '', ''),
(48, 2, 'Cupim bite rima sukem', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;Drumstick kielbasa bresaola landjaeger beef ribs.  Sirloin boudin \r\nflank cupim leberkas tongue salami meatball shoulder.  Brisket salami \r\npork belly short loin ham meatball turducken.  Tail ham hock pancetta \r\nbeef t-bone.  Cupim brisket pastrami strip steak shank tenderloin ham \r\nhock shankle prosciutto chicken sirloin.  Spare ribs ham ball tip, \r\nsirloin kielbasa tri-tip meatball.&lt;/p&gt;&lt;p&gt;Rump frankfurter chuck, pork \r\nloin tail drumstick ham hock salami pancetta t-bone turducken boudin \r\nprosciutto cow sausage.  Meatball beef pork kevin boudin tri-tip.  Strip\r\n steak meatloaf flank, spare ribs ribeye alcatra cow fatback jerky \r\nkevin.  Turkey beef ribs turducken, filet mignon rump andouille jowl \r\npork belly.  Doner ball tip porchetta, cow turkey hamburger pastrami.&lt;/p&gt;&lt;p&gt;Shankle\r\n hamburger fatback, beef boudin spare ribs meatball landjaeger \r\nprosciutto ground round capicola kielbasa.  Shank kielbasa pastrami jowl\r\n doner corned beef frankfurter porchetta chuck beef.  Meatball ground \r\nround salami jowl strip steak cupim shank jerky t-bone.  Strip steak \r\ndrumstick pork chop venison.  Prosciutto ground round tri-tip shank rump\r\n pig.  Tri-tip frankfurter landjaeger boudin venison turducken.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'iPod', 'Cupim bris', '', '', '', '', '', ''),
(32, 1, 'Giren mazen duma lokan', '&lt;p&gt;Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. &lt;/p&gt;&lt;p&gt;Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. &lt;/p&gt;&lt;p&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', 'Curabitur', 'iPod Touch', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur nec dolor commodo, tempus turpis vitae, maximus sapien. Aenean lobortis purus in efficitur bibendum. Vestibulum interdum magna pellentesque neque sagitti', '', '', '', '', ''),
(35, 2, 'Enim vacen ruma potrem  incididunt strip steak', '&lt;p&gt;Biltong in voluptate, ea et boudin meatball.  Turkey mollit tongue, \r\ndeserunt meatloaf meatball magna.  Est dolor incididunt minim, meatloaf \r\net short ribs ea.  Labore aliquip prosciutto, officia dolor biltong elit\r\n veniam shankle laborum.&lt;/p&gt;&lt;p&gt;Enim tempor eiusmod kielbasa cupim.  \r\nMeatloaf pig ea, elit rump ad swine leberkas nostrud.  Sed deserunt \r\ndolore, in do esse leberkas hamburger enim veniam quis ground round.  \r\nPig dolor porchetta ipsum, short ribs non esse ut.&lt;/p&gt;&lt;p&gt;Pariatur non \r\nlaboris pork belly doner qui lorem.  Minim ad ut incididunt strip steak \r\nvenison.  Ipsum doner landjaeger nisi.  Cupidatat porchetta sed eu, \r\ntri-tip drumstick laborum pork chop jerky.  Cupidatat cupim sausage in, \r\nelit ham hock chicken hamburger.  Aliquip deserunt jerky irure \r\ntenderloin.  Dolore beef qui proident picanha spare ribs.&lt;/p&gt;&lt;p&gt;Occaecat\r\n pig chicken shankle capicola drumstick, alcatra esse nulla irure cupim \r\ntempor non frankfurter dolor.  Drumstick pastrami frankfurter est magna \r\neu.  Ribeye pork loin ipsum beef ribs biltong in salami aute turducken. \r\n Filet mignon adipisicing ham hock eu pork.&lt;/p&gt;\r\n', 'Cool,modern', 'Enim Tem', '', '', '', '', '', ''),
(34, 2, 'Bikum masen dumas chuka', '&lt;div&gt;&lt;p&gt;Ipsum non t-bone sausage fugiat in kielbasa consequat landjaeger \r\nfrankfurter.  Frankfurter excepteur shankle eu turducken andouille ad \r\ntail spare ribs meatloaf chuck aliquip tri-tip kevin.  Consectetur \r\npicanha doner duis anim aliqua, culpa nisi brisket.  Proident \r\nconsectetur alcatra sausage ea.  Shank qui nulla cupim ham hock sausage \r\nesse dolor cillum labore non pork belly est bacon.  Est chicken tongue, \r\nbresaola ut sed ea chuck quis.  Doner labore adipisicing ut meatloaf \r\nmeatball salami ground round commodo qui.&lt;/p&gt;&lt;p&gt;Qui labore chicken lorem\r\n t-bone cupim nostrud strip steak tempor ground round.  Tenderloin pork \r\nbelly voluptate in short ribs, kielbasa sint landjaeger esse strip steak\r\n swine.  Velit ball tip chuck ham hock, sunt flank kevin kielbasa beef \r\noccaecat duis ut strip steak fatback.  Duis consequat doner anim cow \r\nmeatloaf tenderloin ham tongue.  Turkey non drumstick shank brisket \r\ndolore.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'iPod,Phone  Tenderloin ', 'Irure Exer', '', '', '', '', '', ''),
(33, 2, 'Gima nazen mipon chuma vehicula sed ante', '&lt;div&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Phasellus ut vehicula mi. Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;&lt;/div&gt;\r\n', 'Monitor,Laptop', 'Samsung SyncMaster 941BW', '', '', '', '', '', ''),
(35, 1, 'Enim vacen ruma potrem  incididunt strip steak', '&lt;p&gt;Biltong in voluptate, ea et boudin meatball.  Turkey mollit tongue, \r\ndeserunt meatloaf meatball magna.  Est dolor incididunt minim, meatloaf \r\net short ribs ea.  Labore aliquip prosciutto, officia dolor biltong elit\r\n veniam shankle laborum.&lt;/p&gt;&lt;p&gt;Enim tempor eiusmod kielbasa cupim.  \r\nMeatloaf pig ea, elit rump ad swine leberkas nostrud.  Sed deserunt \r\ndolore, in do esse leberkas hamburger enim veniam quis ground round.  \r\nPig dolor porchetta ipsum, short ribs non esse ut.&lt;/p&gt;&lt;p&gt;Pariatur non \r\nlaboris pork belly doner qui lorem.  Minim ad ut incididunt strip steak \r\nvenison.  Ipsum doner landjaeger nisi.  Cupidatat porchetta sed eu, \r\ntri-tip drumstick laborum pork chop jerky.  Cupidatat cupim sausage in, \r\nelit ham hock chicken hamburger.  Aliquip deserunt jerky irure \r\ntenderloin.  Dolore beef qui proident picanha spare ribs.&lt;/p&gt;&lt;p&gt;Occaecat\r\n pig chicken shankle capicola drumstick, alcatra esse nulla irure cupim \r\ntempor non frankfurter dolor.  Drumstick pastrami frankfurter est magna \r\neu.  Ribeye pork loin ipsum beef ribs biltong in salami aute turducken. \r\n Filet mignon adipisicing ham hock eu pork.&lt;/p&gt;\r\n', 'Cool,modern', 'Enim Tem', '', '', '', '', '', ''),
(31, 1, 'Mikan dima polam chuma', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon''s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon''s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera''s new features. The D300 features a new 51-point autofocus system with Nikon''s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera''s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon''s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'Tracking ', 'canon', '', '', '', '', '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', 'Mobile', 'samsung', '', '', '', '', '', ''),
(50, 1, 'Etiam nec interdum dolor', '&lt;p&gt;Aliquip ut ut sausage ball tip tri-tip doner hamburger cupidatat \r\nt-bone duis pig pork belly.  Velit tempor exercitation do boudin corned \r\nbeef dolore pork, shank drumstick bacon tenderloin laboris quis.  Nisi \r\nturkey corned beef mollit bacon tri-tip.  Commodo pork chop salami \r\ndolore.  Veniam picanha sint anim.  Culpa meatball picanha capicola \r\npancetta.  Nostrud qui occaecat chicken corned beef jerky cow.&lt;/p&gt;&lt;p&gt;Ham\r\n hock aute eiusmod pastrami.  In ex consectetur bacon drumstick mollit \r\nlaborum turkey.  Drumstick pancetta filet mignon tenderloin, ut \r\nexcepteur tempor consectetur jowl alcatra tri-tip sausage.  Frankfurter \r\nmeatloaf beef ribs ut esse capicola ut ground round irure velit laborum \r\nadipisicing.  Laborum jerky pork loin, dolore spare ribs in occaecat est\r\n venison cillum ham cow.&lt;/p&gt;', ' Drumstick pancetta', 'Sint Beef', '', '', '', '', '', ''),
(51, 1, 'Laborum Com facem mirem', '&lt;p&gt;Ribeye pork pork loin exercitation alcatra.  Enim kevin short loin, \r\nfatback ipsum eu sausage kielbasa hamburger voluptate ad filet mignon.  \r\nTurkey dolore ut occaecat alcatra.  Pork chop do jowl, doner cillum in \r\neiusmod nulla aliquip jerky magna bresaola rump.  Biltong tail swine \r\npork loin pig mollit est velit do in chuck minim voluptate turducken \r\nfrankfurter.  Beef do chuck enim, pariatur pork belly strip steak pork \r\nreprehenderit brisket.&lt;/p&gt;&lt;p&gt;Qui aliquip officia incididunt, alcatra \r\nvoluptate doner kevin cillum consequat shank.  Chuck tenderloin velit \r\nexcepteur.  Sint t-bone leberkas velit.  Chuck flank aliquip, sed dolore\r\n qui labore consequat ground round rump incididunt veniam pig.&lt;/p&gt;&lt;p&gt;Labore\r\n ipsum beef andouille.  Laborum commodo jerky sirloin, proident corned \r\nbeef boudin tri-tip t-bone cow rump chicken.  Eu filet mignon in \r\nexercitation kevin spare ribs.  Fugiat nostrud pariatur sausage.  \r\nUllamco ut irure, eiusmod aliquip pork shankle ground round anim.&lt;/p&gt;&lt;p&gt;Velit\r\n pancetta est jerky exercitation pork, excepteur andouille quis ground \r\nround pork belly sirloin leberkas tail.  Swine ea consequat venison cow \r\nfrankfurter eu corned beef fugiat magna commodo picanha esse.  Flank pig\r\n ut, ribeye sunt quis irure short ribs incididunt meatball t-bone ball \r\ntip pork loin dolor dolore.  Do quis consectetur ex.  Tempor magna \r\ncommodo voluptate, ut kielbasa deserunt excepteur ham ut ball tip.  \r\nCupidatat turducken dolore labore, rump incididunt porchetta.&lt;/p&gt;', 'Labore ', 'Laborum Com', '', '', '', '', '', ''),
(53, 2, 'Mazen dima lokem chuma minim tongue repre', '&lt;p&gt;Sint t-bone tongue bresaola nisi.  Fatback bresaola beef ribs \r\nmeatloaf, cupim pastrami dolor et.  Brisket short ribs dolore velit, \r\naliqua sirloin biltong.  Anim ut consectetur, chuck duis incididunt pork\r\n chop tail.  Alcatra exercitation sirloin, voluptate ut ullamco boudin \r\ntongue turducken nostrud shank bresaola mollit.&lt;/p&gt;&lt;p&gt;Tri-tip laboris \r\nturkey anim, ut minim tongue reprehenderit voluptate sed ex sausage in \r\nchuck consectetur.  Beef strip steak fatback proident alcatra kielbasa \r\naute do id, corned beef pork loin porchetta rump capicola.  Spare ribs \r\nlandjaeger filet mignon ham.  Filet mignon in aute tail, veniam ball tip\r\n ad incididunt quis.&lt;/p&gt;&lt;p&gt;Shank shoulder spare ribs, chicken quis chuck\r\n tail.  Exercitation boudin commodo, meatloaf doner aliquip minim elit \r\ncorned beef do tri-tip ground round sed fatback in.  Duis in andouille \r\ncorned beef ad brisket.  Et aute shankle id, shank excepteur swine \r\ndrumstick labore.  Deserunt jowl lorem culpa beef ribs exercitation, \r\nandouille aute nisi fugiat.  Filet mignon rump ut proident jerky corned \r\nbeef sed tail pork belly bacon.&lt;/p&gt;&lt;p&gt;Jowl doner alcatra tempor mollit. \r\n Salami short loin biltong adipisicing.  Minim laborum dolor biltong \r\njowl salami.  Flank incididunt aliqua capicola, adipisicing pork boudin \r\nshort ribs anim eu.&lt;/p&gt;', '', 'Tri-tip Labor', '', '', '', '', '', ''),
(54, 2, 'Ruma huren chuma pikam', '&lt;p&gt;Anim cillum meatball et, shoulder cow pork belly flank tri-tip pig.  \r\nOccaecat culpa ut sint.  Rump tongue dolore pork chop mollit alcatra \r\nhamburger.  In filet mignon laboris pig cupidatat.  Officia veniam ut \r\nqui sirloin, spare ribs shoulder short loin dolore andouille minim \r\nchicken ham.  Shank capicola laboris labore do ex adipisicing elit \r\ncommodo ut officia strip steak tri-tip.&lt;/p&gt;&lt;p&gt;Salami incididunt doner \r\ndo, turkey shankle meatball ad pancetta enim nostrud aute in beef ribs. \r\n Ham hock andouille labore, prosciutto reprehenderit ut alcatra \r\nporchetta kevin commodo.  Ut cupidatat nisi picanha, ex id turducken.  \r\nCillum sint porchetta tri-tip veniam chicken spare ribs consectetur \r\nvelit in ex et.  Et laboris prosciutto consectetur tail ex salami do \r\nshort loin sunt pastrami labore biltong.  Strip steak culpa aliquip est \r\njerky, ex pork loin kevin lorem beef chuck chicken.&lt;/p&gt;', ' Occaecat ', 'Et Spare', '', '', '', '', '', ''),
(53, 1, 'Mazen dima lokem chuma minim tongue repre', '&lt;p&gt;Sint t-bone tongue bresaola nisi.  Fatback bresaola beef ribs \r\nmeatloaf, cupim pastrami dolor et.  Brisket short ribs dolore velit, \r\naliqua sirloin biltong.  Anim ut consectetur, chuck duis incididunt pork\r\n chop tail.  Alcatra exercitation sirloin, voluptate ut ullamco boudin \r\ntongue turducken nostrud shank bresaola mollit.&lt;/p&gt;&lt;p&gt;Tri-tip laboris \r\nturkey anim, ut minim tongue reprehenderit voluptate sed ex sausage in \r\nchuck consectetur.  Beef strip steak fatback proident alcatra kielbasa \r\naute do id, corned beef pork loin porchetta rump capicola.  Spare ribs \r\nlandjaeger filet mignon ham.  Filet mignon in aute tail, veniam ball tip\r\n ad incididunt quis.&lt;/p&gt;&lt;p&gt;Shank shoulder spare ribs, chicken quis chuck\r\n tail.  Exercitation boudin commodo, meatloaf doner aliquip minim elit \r\ncorned beef do tri-tip ground round sed fatback in.  Duis in andouille \r\ncorned beef ad brisket.  Et aute shankle id, shank excepteur swine \r\ndrumstick labore.  Deserunt jowl lorem culpa beef ribs exercitation, \r\nandouille aute nisi fugiat.  Filet mignon rump ut proident jerky corned \r\nbeef sed tail pork belly bacon.&lt;/p&gt;&lt;p&gt;Jowl doner alcatra tempor mollit. \r\n Salami short loin biltong adipisicing.  Minim laborum dolor biltong \r\njowl salami.  Flank incididunt aliqua capicola, adipisicing pork boudin \r\nshort ribs anim eu.&lt;/p&gt;', '', 'Tri-tip Labor', '', '', '', '', '', ''),
(55, 2, 'Mazen dima polam rima Kielbasa aliquip doner ', '&lt;p&gt;Reprehenderit anim brisket pig cow, doner dolor hamburger mollit \r\ncorned beef nostrud chuck.  Salami aute fatback chicken t-bone jerky ex \r\nnisi in swine in drumstick pork belly proident.  Non jowl beef ribs aute\r\n sint pig corned beef bresaola strip steak labore.  Meatloaf fatback \r\ndolore, bacon jowl shank voluptate bresaola ground round corned beef \r\nnulla.  Labore t-bone prosciutto short ribs swine, andouille frankfurter\r\n cupidatat aliquip.&lt;/p&gt;&lt;p&gt;Duis deserunt short loin, rump et brisket \r\ntail.  Kielbasa aliquip drumstick pork belly mollit shoulder laboris \r\njowl nostrud tempor officia cow beef ribs rump.  Hamburger cillum nisi \r\nea ribeye swine short ribs.  Mollit jowl et shoulder elit adipisicing, \r\nbiltong ad ribeye tenderloin pariatur sed.  Alcatra dolore spare ribs, \r\nminim leberkas strip steak ut chuck consequat eu.&lt;/p&gt;&lt;p&gt;Sunt voluptate \r\nirure brisket, spare ribs short ribs est in.  Ut consectetur bacon, \r\nturkey esse in sunt porchetta ham hock.  Brisket laborum pork chop est, \r\nconsectetur quis corned beef alcatra nulla laboris ham hock irure mollit\r\n chuck.  Meatloaf sirloin incididunt aliquip jerky.  Swine shank non \r\npancetta lorem tongue.  Aute ut ea ut filet mignon, ullamco cupim pork \r\nloin ribeye est dolore commodo picanha magna.  Veniam est corned beef \r\nullamco flank id cupim nostrud occaecat sed prosciutto.&lt;/p&gt;', ' Hamburger ', 'Sunt Molup', '', '', '', '', '', ''),
(52, 1, 'Dail miren tukan potrem', '&lt;p&gt;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.&lt;/p&gt;&lt;p&gt;At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.&lt;/p&gt;&lt;p&gt;At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.&lt;/p&gt;', 'Lorem ipsum', 'Tail Lulpa', '', '', '', '', '', ''),
(56, 1, 'Quiten ruma caten mipem', '&lt;div id=&quot;main&quot;&gt;\r\n\r\n	&lt;div id=&quot;container&quot;&gt;\r\n		&lt;div id=&quot;content&quot; role=&quot;main&quot;&gt;\r\n			\r\n\r\n				&lt;div id=&quot;post-4&quot; class=&quot;post-4 page type-page status-publish hentry&quot;&gt;\r\n					\r\n					&lt;div class=&quot;entry-content&quot;&gt;\r\n\r\n						&lt;div class=&quot;anyipsum-output&quot;&gt;&lt;p&gt;Quis ball tip culpa eiusmod chuck,\r\n in nulla.  Porchetta consectetur bresaola, aliqua sunt fugiat aute \r\nexercitation pork chop qui.  Meatball officia porchetta deserunt pork, \r\nin pancetta.  Meatloaf nulla biltong pork loin lorem.  Beef ribs lorem \r\npariatur prosciutto ipsum, cupidatat do et tongue fatback ham jerky \r\nmeatloaf.&lt;/p&gt;&lt;p&gt;Jowl pig nisi bacon alcatra.  Kevin laboris beef ribs \r\ndrumstick, aliqua id tail salami.  Culpa officia meatloaf laboris.  \r\nDrumstick pastrami chicken, swine esse prosciutto in lorem minim.&lt;/p&gt;&lt;p&gt;Sunt\r\n ham hock consequat, ullamco beef ribs qui beef rump incididunt turkey \r\npastrami picanha proident.  Spare ribs dolore ham hock, eiusmod duis \r\nground round veniam chuck strip steak nulla ball tip jerky sunt tempor. \r\n Qui enim salami andouille filet mignon adipisicing.  Kevin mollit \r\nsausage dolore velit excepteur aliquip consequat drumstick sed turducken\r\n filet mignon.  Minim cow chuck ex nostrud anim drumstick meatball.  \r\nAnim veniam aute capicola strip steak adipisicing corned beef, \r\nconsectetur irure.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', ' Exercitation ', 'Kevin Labor', '', '', '', '', '', ''),
(57, 2, 'Phasellus ut vehicula mi', '&lt;p&gt;Meatloaf swine pork, alcatra anim dolor ullamco enim sirloin elit.  \r\nDolore short loin kevin filet mignon.  Chuck boudin proident cupim \r\nnostrud beef ribs meatball ipsum andouille ullamco.  Rump id pork loin \r\net.  Short ribs pork belly aute occaecat, jowl nisi tail tempor.&lt;/p&gt;&lt;p&gt;Andouille\r\n aliquip in ut.  Shankle flank velit corned beef t-bone est.  Pig \r\nexcepteur pork belly picanha flank est jowl eiusmod rump.  Biltong \r\nvenison cupidatat ribeye consectetur swine.  Nisi chicken meatball eu \r\nvoluptate magna.  Ut excepteur ad, sirloin commodo prosciutto et.&lt;/p&gt;&lt;p&gt;Jowl\r\n pariatur leberkas drumstick shoulder.  Salami jowl dolor, pancetta \r\nexercitation meatloaf aliqua irure.  Pork chop elit doner tongue id, \r\ntri-tip tenderloin short ribs duis ad qui incididunt.  Nostrud alcatra \r\nturkey commodo porchetta sausage ribeye eu meatloaf venison.  Tail \r\nt-bone chicken, cillum picanha irure ham turkey.  Dolore tail salami \r\nculpa quis.&lt;/p&gt;&lt;p&gt;Kielbasa drumstick tongue beef, aliquip pancetta ut \r\nvoluptate short loin ad.  Meatball laborum velit flank doner labore \r\nsirloin landjaeger bacon minim.  Qui magna rump, beef labore pig et \r\nlaborum duis exercitation do brisket meatloaf flank.  Short loin \r\nbresaola shankle eu.  Sint ribeye ut aliqua sirloin, dolore cupim ut.&lt;/p&gt;', '', 'Nisi Chicken', '', '', '', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `video1`, `html_product_right`, `html_product_tab`, `tab_title`) VALUES
(57, 1, 'Phasellus ut vehicula mi', '&lt;p&gt;Meatloaf swine pork, alcatra anim dolor ullamco enim sirloin elit.  \r\nDolore short loin kevin filet mignon.  Chuck boudin proident cupim \r\nnostrud beef ribs meatball ipsum andouille ullamco.  Rump id pork loin \r\net.  Short ribs pork belly aute occaecat, jowl nisi tail tempor.&lt;/p&gt;&lt;p&gt;Andouille\r\n aliquip in ut.  Shankle flank velit corned beef t-bone est.  Pig \r\nexcepteur pork belly picanha flank est jowl eiusmod rump.  Biltong \r\nvenison cupidatat ribeye consectetur swine.  Nisi chicken meatball eu \r\nvoluptate magna.  Ut excepteur ad, sirloin commodo prosciutto et.&lt;/p&gt;&lt;p&gt;Jowl\r\n pariatur leberkas drumstick shoulder.  Salami jowl dolor, pancetta \r\nexercitation meatloaf aliqua irure.  Pork chop elit doner tongue id, \r\ntri-tip tenderloin short ribs duis ad qui incididunt.  Nostrud alcatra \r\nturkey commodo porchetta sausage ribeye eu meatloaf venison.  Tail \r\nt-bone chicken, cillum picanha irure ham turkey.  Dolore tail salami \r\nculpa quis.&lt;/p&gt;&lt;p&gt;Kielbasa drumstick tongue beef, aliquip pancetta ut \r\nvoluptate short loin ad.  Meatball laborum velit flank doner labore \r\nsirloin landjaeger bacon minim.  Qui magna rump, beef labore pig et \r\nlaborum duis exercitation do brisket meatloaf flank.  Short loin \r\nbresaola shankle eu.  Sint ribeye ut aliqua sirloin, dolore cupim ut.&lt;/p&gt;', '', 'Nisi Chicken', '', '', '', '', '', ''),
(51, 2, 'Laborum Com facem mirem', '&lt;p&gt;Ribeye pork pork loin exercitation alcatra.  Enim kevin short loin, \r\nfatback ipsum eu sausage kielbasa hamburger voluptate ad filet mignon.  \r\nTurkey dolore ut occaecat alcatra.  Pork chop do jowl, doner cillum in \r\neiusmod nulla aliquip jerky magna bresaola rump.  Biltong tail swine \r\npork loin pig mollit est velit do in chuck minim voluptate turducken \r\nfrankfurter.  Beef do chuck enim, pariatur pork belly strip steak pork \r\nreprehenderit brisket.&lt;/p&gt;&lt;p&gt;Qui aliquip officia incididunt, alcatra \r\nvoluptate doner kevin cillum consequat shank.  Chuck tenderloin velit \r\nexcepteur.  Sint t-bone leberkas velit.  Chuck flank aliquip, sed dolore\r\n qui labore consequat ground round rump incididunt veniam pig.&lt;/p&gt;&lt;p&gt;Labore\r\n ipsum beef andouille.  Laborum commodo jerky sirloin, proident corned \r\nbeef boudin tri-tip t-bone cow rump chicken.  Eu filet mignon in \r\nexercitation kevin spare ribs.  Fugiat nostrud pariatur sausage.  \r\nUllamco ut irure, eiusmod aliquip pork shankle ground round anim.&lt;/p&gt;&lt;p&gt;Velit\r\n pancetta est jerky exercitation pork, excepteur andouille quis ground \r\nround pork belly sirloin leberkas tail.  Swine ea consequat venison cow \r\nfrankfurter eu corned beef fugiat magna commodo picanha esse.  Flank pig\r\n ut, ribeye sunt quis irure short ribs incididunt meatball t-bone ball \r\ntip pork loin dolor dolore.  Do quis consectetur ex.  Tempor magna \r\ncommodo voluptate, ut kielbasa deserunt excepteur ham ut ball tip.  \r\nCupidatat turducken dolore labore, rump incididunt porchetta.&lt;/p&gt;', 'Labore ', 'Laborum Com', '', '', '', '', '', ''),
(30, 1, 'Sed elementum urna ligula', '&lt;p&gt;\r\n	Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', 'Compared ', 'Canon EOS 5D', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur nec dolor commodo, tempus turpis vitae, maximus sapien. Aenean lobortis purus in efficitur bibendum. Vestibulum interdum magna pellentesque neque sagitti', '', '', '', '', ''),
(52, 2, 'Dail miren tukan potrem', '&lt;p&gt;Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.&lt;/p&gt;&lt;p&gt;At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.&lt;/p&gt;&lt;p&gt;At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.&lt;/p&gt;', 'Lorem ipsum', 'Tail Lulpa', '', '', '', '', '', ''),
(44, 1, 'Juren tima chukam mopen', '&lt;div&gt;&lt;p&gt;Qui labore chicken lorem t-bone cupim nostrud strip steak tempor ground round.  Tenderloin pork belly voluptate in short ribs, kielbasa sint landjaeger esse strip steak swine.  Velit ball tip chuck ham hock, sunt flank kevin kielbasa beef occaecat duis ut strip steak fatback.  Duis consequat doner anim cow meatloaf tenderloin ham tongue.  Turkey non drumstick shank brisket dolore.&lt;/p&gt;&lt;p&gt;Ea frankfurter pork chop, ground round tenderloin occaecat consectetur shank est brisket reprehenderit.  Kielbasa mollit consectetur, excepteur doner nulla pork loin corned beef ut ad jerky salami turducken in.  Ut tenderloin laborum shank.  Salami sunt t-bone et.  Sausage frankfurter deserunt kielbasa pork belly ham hock excepteur nostrud andouille turducken in dolor eiusmod pork loin.  Tempor boudin leberkas sunt ut fatback veniam, culpa ut nostrud incididunt cupidatat ex sint.&lt;/p&gt;&lt;p&gt;Bresaola pork belly dolore, meatball alcatra sed qui beef ribs porchetta minim boudin.  Eiusmod nulla ground round pig.  Filet mignon tail id esse anim ea veniam sunt velit dolor sint beef lorem kevin bresaola.  Brisket ut prosciutto short ribs commodo kevin pig pork dolore.  Bacon andouille fatback capicola ipsum dolor cupim ut sirloin pork short loin.  Turducken drumstick mollit officia, tail aute chuck pariatur nisi dolor ham hock.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;col-sm-12&quot;&gt;[accordion] [acc_item title=&quot;Lorem ipsum dolor sit amet, consectetuer adipiscing elit&quot;]&lt;p&gt;Fusce eu dui. Integer vel nibh sit amet turpis vulputate aliquet. Phasellus id nisi vitae odio pretium aliquam. Pellentesque a leo. Donec consequat lectus sed felis. Quisque vestibulum massa. Nulla ornare. Nulla libero. Donec et mi eu massa ultrices scelerisque. &lt;/p&gt;&lt;p&gt;Nullam ac nisi non eros gravida venenatis. Ut euismod, turpis sollicitudin lobortis pellentesque, libero massa dapibus dui, eu dictum justo urna et mi. Integer dictum est vitae sem. Vestibulum justo. Nulla mauris ipsum, convallis ut, vestibulum eu, tincidunt vel, nisi.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;', ' Eiusmod ', 'Filet Mign', '', '', '', '', '', ''),
(30, 2, 'Sed elementum urna ligula', '&lt;p&gt;\r\n	Canon''s press material for the EOS 5D states that it ''defines (a) new D-SLR category'', while we''re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably ''chunkier''). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR''s, an important difference when compared to the latter is that the EOS 5D doesn''t have any environmental seals. While Canon don''t specifically refer to the EOS 5D as a ''professional'' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they''ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', 'Compared ', 'Canon EOS 5D', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur nec dolor commodo, tempus turpis vitae, maximus sapien. Aenean lobortis purus in efficitur bibendum. Vestibulum interdum magna pellentesque neque sagitti', '', '', '', '', ''),
(54, 1, 'Ruma huren chuma pikam', '&lt;p&gt;Anim cillum meatball et, shoulder cow pork belly flank tri-tip pig.  \r\nOccaecat culpa ut sint.  Rump tongue dolore pork chop mollit alcatra \r\nhamburger.  In filet mignon laboris pig cupidatat.  Officia veniam ut \r\nqui sirloin, spare ribs shoulder short loin dolore andouille minim \r\nchicken ham.  Shank capicola laboris labore do ex adipisicing elit \r\ncommodo ut officia strip steak tri-tip.&lt;/p&gt;&lt;p&gt;Salami incididunt doner \r\ndo, turkey shankle meatball ad pancetta enim nostrud aute in beef ribs. \r\n Ham hock andouille labore, prosciutto reprehenderit ut alcatra \r\nporchetta kevin commodo.  Ut cupidatat nisi picanha, ex id turducken.  \r\nCillum sint porchetta tri-tip veniam chicken spare ribs consectetur \r\nvelit in ex et.  Et laboris prosciutto consectetur tail ex salami do \r\nshort loin sunt pastrami labore biltong.  Strip steak culpa aliquip est \r\njerky, ex pork loin kevin lorem beef chuck chicken.&lt;/p&gt;', ' Occaecat ', 'Et Spare', '', '', '', '', '', ''),
(44, 2, 'Juren tima chukam mopen', '&lt;div&gt;&lt;p&gt;Qui labore chicken lorem t-bone cupim nostrud strip steak tempor \r\nground round.  Tenderloin pork belly voluptate in short ribs, kielbasa \r\nsint landjaeger esse strip steak swine.  Velit ball tip chuck ham hock, \r\nsunt flank kevin kielbasa beef occaecat duis ut strip steak fatback.  \r\nDuis consequat doner anim cow meatloaf tenderloin ham tongue.  Turkey \r\nnon drumstick shank brisket dolore.&lt;/p&gt;&lt;p&gt;Ea frankfurter pork chop, \r\nground round tenderloin occaecat consectetur shank est brisket \r\nreprehenderit.  Kielbasa mollit consectetur, excepteur doner nulla pork \r\nloin corned beef ut ad jerky salami turducken in.  Ut tenderloin laborum\r\n shank.  Salami sunt t-bone et.  Sausage frankfurter deserunt kielbasa \r\npork belly ham hock excepteur nostrud andouille turducken in dolor \r\neiusmod pork loin.  Tempor boudin leberkas sunt ut fatback veniam, culpa\r\n ut nostrud incididunt cupidatat ex sint.&lt;/p&gt;&lt;p&gt;Bresaola pork belly \r\ndolore, meatball alcatra sed qui beef ribs porchetta minim boudin.  \r\nEiusmod nulla ground round pig.  Filet mignon tail id esse anim ea \r\nveniam sunt velit dolor sint beef lorem kevin bresaola.  Brisket ut \r\nprosciutto short ribs commodo kevin pig pork dolore.  Bacon andouille \r\nfatback capicola ipsum dolor cupim ut sirloin pork short loin.  \r\nTurducken drumstick mollit officia, tail aute chuck pariatur nisi dolor \r\nham hock.&lt;/p&gt;&lt;/div&gt;\r\n', 'Macbook,Laptop', 'Filet Mign', '', '', '', '', '', ''),
(47, 1, 'Duis faucibus rutrum malesua', '&lt;p&gt;Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. &lt;/p&gt;&lt;p&gt;Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. &lt;/p&gt;&lt;p&gt;Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis,&lt;/p&gt;', 'Cool,Laptop,Usefull', 'market, fashion', 'Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably', '', '', '', '', ''),
(32, 2, 'Giren mazen duma lokan', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;\r\n', 'iPod', 'iPod Touch', '', '', '', '', '', ''),
(34, 1, 'Bikum masen dumas chuka', '&lt;div&gt;&lt;p&gt;Ipsum non t-bone sausage fugiat in kielbasa consequat landjaeger \r\nfrankfurter.  Frankfurter excepteur shankle eu turducken andouille ad \r\ntail spare ribs meatloaf chuck aliquip tri-tip kevin.  Consectetur \r\npicanha doner duis anim aliqua, culpa nisi brisket.  Proident \r\nconsectetur alcatra sausage ea.  Shank qui nulla cupim ham hock sausage \r\nesse dolor cillum labore non pork belly est bacon.  Est chicken tongue, \r\nbresaola ut sed ea chuck quis.  Doner labore adipisicing ut meatloaf \r\nmeatball salami ground round commodo qui.&lt;/p&gt;&lt;p&gt;Qui labore chicken lorem\r\n t-bone cupim nostrud strip steak tempor ground round.  Tenderloin pork \r\nbelly voluptate in short ribs, kielbasa sint landjaeger esse strip steak\r\n swine.  Velit ball tip chuck ham hock, sunt flank kevin kielbasa beef \r\noccaecat duis ut strip steak fatback.  Duis consequat doner anim cow \r\nmeatloaf tenderloin ham tongue.  Turkey non drumstick shank brisket \r\ndolore.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'iPod,Phone  Tenderloin ', 'Irure Exer', '', '', '', '', '', ''),
(56, 2, 'Quiten ruma caten mipem', '&lt;div id=&quot;main&quot;&gt;\r\n\r\n	&lt;div id=&quot;container&quot;&gt;\r\n		&lt;div id=&quot;content&quot; role=&quot;main&quot;&gt;\r\n			\r\n\r\n				&lt;div id=&quot;post-4&quot; class=&quot;post-4 page type-page status-publish hentry&quot;&gt;\r\n					\r\n					&lt;div class=&quot;entry-content&quot;&gt;\r\n\r\n						&lt;div class=&quot;anyipsum-output&quot;&gt;&lt;p&gt;Quis ball tip culpa eiusmod chuck,\r\n in nulla.  Porchetta consectetur bresaola, aliqua sunt fugiat aute \r\nexercitation pork chop qui.  Meatball officia porchetta deserunt pork, \r\nin pancetta.  Meatloaf nulla biltong pork loin lorem.  Beef ribs lorem \r\npariatur prosciutto ipsum, cupidatat do et tongue fatback ham jerky \r\nmeatloaf.&lt;/p&gt;&lt;p&gt;Jowl pig nisi bacon alcatra.  Kevin laboris beef ribs \r\ndrumstick, aliqua id tail salami.  Culpa officia meatloaf laboris.  \r\nDrumstick pastrami chicken, swine esse prosciutto in lorem minim.&lt;/p&gt;&lt;p&gt;Sunt\r\n ham hock consequat, ullamco beef ribs qui beef rump incididunt turkey \r\npastrami picanha proident.  Spare ribs dolore ham hock, eiusmod duis \r\nground round veniam chuck strip steak nulla ball tip jerky sunt tempor. \r\n Qui enim salami andouille filet mignon adipisicing.  Kevin mollit \r\nsausage dolore velit excepteur aliquip consequat drumstick sed turducken\r\n filet mignon.  Minim cow chuck ex nostrud anim drumstick meatball.  \r\nAnim veniam aute capicola strip steak adipisicing corned beef, \r\nconsectetur irure.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', ' Exercitation ', 'Kevin Labor', '', '', '', '', '', ''),
(33, 1, 'Gima nazen mipon chuma vehicula sed ante', '&lt;p&gt;Phasellus ut vehicula mi. Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.&lt;/p&gt;&lt;p&gt;Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;', 'Monitor,Laptop', 'Samsung SyncMaster 941BW', '', '', '', '', '', ''),
(46, 1, 'Bazeb duma cuka litrem convallis vitae ligula', '&lt;p&gt;Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. &lt;/p&gt;&lt;p&gt;Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. &lt;/p&gt;&lt;p&gt;Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum&lt;/p&gt;', 'Laptop,Sony', 'Sony VAIO', '', '', '', '', '', ''),
(46, 2, 'Bazeb duma cuka litrem convallis vitae ligula', '&lt;div&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum&lt;/p&gt;&lt;/div&gt;\r\n', 'Laptop,Sony', 'Sony VAIO', '', '', '', '', '', ''),
(58, 1, 'Gazem dima polam pusen', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum.&lt;/span&gt;&lt;/p&gt;', 'Fusce eget', 'Gazem dima polam pusen', '', '', '', '', '', ''),
(58, 2, 'Gazem dima polam pusen', '&lt;p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Fusce eget', 'Gazem dima polam pusen', '', '', '', '', '', ''),
(59, 2, 'Wuren mipos chuma xite gravida libero massa', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/span&gt;&lt;/p&gt;', 'Praesent ', 'Wuren mipos chuma xite', '', '', '', '', '', ''),
(60, 2, 'Tima furem nitrem pola molestie erat ultricies', '&lt;p&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. &lt;/p&gt;&lt;p&gt;Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. &lt;/p&gt;&lt;p&gt;Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', '', 'Tima furem nitrem pola', '', '', '', '', '', ''),
(61, 1, 'Vitum mazen duma culam venenatis tincidunt erat', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Phasellus ut vehicula mi. Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;', '', 'Vitum mazen duma culam', '', '', '', '', '', ''),
(61, 2, 'Vitum mazen duma culam venenatis tincidunt erat', '&lt;p&gt;Phasellus ut vehicula mi. Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.&lt;/p&gt;&lt;p&gt;Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. &lt;/p&gt;&lt;p&gt;Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;', '', 'Vitum mazen duma culam', '', '', '', '', '', ''),
(50, 2, 'Etiam nec interdum dolor', '&lt;p&gt;Aliquip ut ut sausage ball tip tri-tip doner hamburger cupidatat \r\nt-bone duis pig pork belly.  Velit tempor exercitation do boudin corned \r\nbeef dolore pork, shank drumstick bacon tenderloin laboris quis.  Nisi \r\nturkey corned beef mollit bacon tri-tip.  Commodo pork chop salami \r\ndolore.  Veniam picanha sint anim.  Culpa meatball picanha capicola \r\npancetta.  Nostrud qui occaecat chicken corned beef jerky cow.&lt;/p&gt;&lt;p&gt;Ham\r\n hock aute eiusmod pastrami.  In ex consectetur bacon drumstick mollit \r\nlaborum turkey.  Drumstick pancetta filet mignon tenderloin, ut \r\nexcepteur tempor consectetur jowl alcatra tri-tip sausage.  Frankfurter \r\nmeatloaf beef ribs ut esse capicola ut ground round irure velit laborum \r\nadipisicing.  Laborum jerky pork loin, dolore spare ribs in occaecat est\r\n venison cillum ham cow.&lt;/p&gt;', ' Drumstick pancetta', 'Sint Beef', '', '', '', '', '', ''),
(63, 2, 'Jima suma pola natem finibus ipsum eget', '&lt;p&gt;Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. &lt;/p&gt;&lt;p&gt;Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. &lt;/p&gt;&lt;p&gt;Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam.&lt;/p&gt;', 'Accumsan', 'Jima suma pola natem', '', '', '', '', '', ''),
(64, 2, 'Gima chuma polam bazen eget molestie erat', '&lt;p&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales.&lt;/p&gt;&lt;p&gt; Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', 'Elementum pellentesque', 'Gima chuma polam bazen', '', '', '', '', '', ''),
(60, 1, 'Tima furem nitrem pola molestie erat ultricies', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', '', 'Tima furem nitrem pola', '', '', '', '', '', ''),
(65, 1, 'Pilam mazem duma chukam', '&lt;p&gt;Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor.&lt;/p&gt;&lt;p&gt; Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. &lt;/p&gt;&lt;p&gt;Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. &lt;/p&gt;', '', 'Pilam mazem duma chukam', '', '', '', '', '', ''),
(65, 2, 'Pilam mazem duma chukam', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam.&lt;/p&gt;', '', 'Pilam mazem duma chukam', '', '', '', '', '', ''),
(66, 1, 'Gima suma chuma pokem', '&lt;p&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. &lt;/p&gt;&lt;p&gt;Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', 'Maecenas lorem', 'Gima suma chuma pokem', '', '', '', '', '', ''),
(66, 2, 'Gima suma chuma pokem', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', 'Maecenas lorem', 'Gima suma chuma pokem', '', '', '', '', '', ''),
(67, 1, 'Vizan duma mipon chumase', '&lt;p&gt;Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. &lt;/p&gt;&lt;p&gt;Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', '', 'Vizan duma mipon chumase', '', '', '', '', '', ''),
(67, 2, 'Vizan duma mipon chumase', '&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin-bottom: 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.&lt;/p&gt;&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin-bottom: 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;&lt;p style=&quot;text-align: justify; font-size: 11px; line-height: 14px; margin-bottom: 14px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans;&quot;&gt;Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', '', 'Vizan duma mipon chumase', '', '', '', '', '', ''),
(68, 1, 'Gima suma polen rimas', '&lt;p&gt;Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa. Donec finibus metus a laoreet facilisis. &lt;/p&gt;&lt;p&gt;Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. &lt;/p&gt;&lt;p&gt;Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis&lt;/p&gt;', '', 'Gima suma polen rimas', '', '', '', '', '', ''),
(68, 2, 'Gima suma polen rimas', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa. Donec finibus metus a laoreet facilisis.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis&lt;/p&gt;', '', 'Gima suma polen rimas', '', '', '', '', '', ''),
(69, 1, 'Xazem mipen ruma pokem', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', '', 'Xazem mipen ruma pokem', '', '', '', '', '', ''),
(69, 2, 'Xazem mipen ruma pokem', '&lt;p&gt;Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi. &lt;/p&gt;&lt;p&gt;Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. &lt;/p&gt;&lt;p&gt;Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', '', 'Xazem mipen ruma pokem', '', '', '', '', '', ''),
(70, 1, 'Vazem dima kolam chuma', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', '', 'Vazem dima kolam chuma', '', '', '', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `video1`, `html_product_right`, `html_product_tab`, `tab_title`) VALUES
(70, 2, 'Vazem dima kolam chuma', '&lt;p&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. &lt;/p&gt;&lt;p&gt;Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', '', 'Vazem dima kolam chuma', '', '', '', '', '', ''),
(71, 1, 'Gazen mipon chuma dokem', '&lt;p&gt;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. &lt;/p&gt;&lt;p&gt;Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. &lt;/p&gt;&lt;p&gt;Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', 'consequat ', 'Gazen mipon chuma dokem', '', '', '', '', '', ''),
(71, 2, 'Gazen mipon chuma dokem', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', 'consequat ', 'Gazen mipon chuma dokem', '', '', '', '', '', ''),
(72, 1, 'Vazem duma pokem chuma', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo,&lt;/span&gt;&lt;/p&gt;', '', 'Vazem duma pokem chuma', '', '', '', '', '', ''),
(72, 2, 'Vazem duma pokem chuma', '&lt;p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti. &lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo,&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Vazem duma pokem chuma', '', '', '', '', '', ''),
(73, 2, 'Samza rema chuma polem', '&lt;p&gt;Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. &lt;/p&gt;&lt;p&gt;Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. &amp;nbsp;&lt;/p&gt;&lt;p&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potent&lt;/p&gt;', '', 'Samza rema chuma polem', '', '', '', '', '', ''),
(74, 1, 'Cazen duma chuma polam', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Phasellus ut vehicula mi. Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;', '', 'Cazen duma chuma polam', '', '', '', '', '', ''),
(74, 2, 'Cazen duma chuma polam', '&lt;p&gt;Phasellus ut vehicula mi. Etiam eu urna in mi ullamcorper posuere. Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis.&lt;/p&gt;&lt;p&gt; Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;', '', 'Cazen duma chuma polam', '', '', '', '', '', ''),
(75, 1, 'Bima zuma pokem dukes', 'Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales.\r\n\r\nDonec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies.\r\n\r\nCurabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum', '', 'Bima zuma pokem dukes', '', '', '', '', '', ''),
(75, 2, 'Bima zuma pokem dukes', '&lt;p&gt;Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. &lt;/p&gt;&lt;p&gt;Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. &lt;/p&gt;&lt;p&gt;Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum&lt;/p&gt;', '', 'Bima zuma pokem dukes', '', '', '', '', '', ''),
(76, 1, 'Tuma sima kitrem mopem', '&lt;p&gt;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi. Sed erat felis, placerat in euismod at, porttitor eu ex. &lt;/p&gt;&lt;p&gt;Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', '', 'Tuma sima kitrem mopem', '', '', '', '', '', ''),
(76, 2, 'Tuma sima kitrem mopem', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi. Sed erat felis, placerat in euismod at, porttitor eu ex.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.&lt;/p&gt;', '', 'Tuma sima kitrem mopem', '', '', '', '', '', ''),
(77, 2, 'Vuma nutre facem pikem', '&lt;p&gt;Gorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. &amp;nbsp;&lt;/p&gt;&lt;p&gt;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.&lt;/p&gt;', '', 'Vuma nutre facem pikem', '', '', '', '', '', ''),
(77, 1, 'Vuma nutre facem pikem', 'Gorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus. Etiam nec interdum dolor. &amp;nbsp;Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.', '', 'Vuma nutre facem pikem', '', '', '', '', '', ''),
(78, 2, 'Rima jema facem pokem', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero&lt;/p&gt;', 'Maecenas ', 'Rima jema facem pokem', '', '', '', '', '', ''),
(79, 2, 'Gire tima pokem rumas', '&lt;p&gt;Mauris scelerisque, lacus ut laoreet lacinia, arcu nisl mollis tellus, ut vestibulum justo velit a nunc. Phasellus blandit vestibulum leo eu tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. &lt;/p&gt;&lt;p&gt;Nam convallis porta magna sed congue. Pellentesque et elit in ipsum maximus venenatis.Pellentesque malesuada neque vitae neque venenatis consectetur. Proin sed metus rhoncus, egestas turpis ut, rhoncus enim. &lt;/p&gt;&lt;p&gt;Sed vitae lorem a neque blandit mollis quis et quam. Nulla facilisi. Aliquam erat volutpat. Nulla facilisi. Integer ac iaculis risus, ac lobortis sapien. Ut hendrerit lacus nec pellentesque tempor.&lt;/p&gt;', 'Nulla facilisi', 'Gire tima pokem rumas', '', '', '', '', '', ''),
(79, 1, 'Gire tima pokem rumas', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Mauris scelerisque, lacus ut laoreet lacinia, arcu nisl mollis tellus, ut vestibulum justo velit a nunc. Phasellus blandit vestibulum leo eu tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Nam convallis porta magna sed congue. Pellentesque et elit in ipsum maximus venenatis.Pellentesque malesuada neque vitae neque venenatis consectetur. Proin sed metus rhoncus, egestas turpis ut, rhoncus enim.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Sed vitae lorem a neque blandit mollis quis et quam. Nulla facilisi. Aliquam erat volutpat. Nulla facilisi. Integer ac iaculis risus, ac lobortis sapien. Ut hendrerit lacus nec pellentesque tempor.&lt;/p&gt;', 'Nulla facilisi', 'Gire tima pokem rumas', '', '', '', '', '', ''),
(80, 2, 'Vazen mire mitren pokem', '&lt;p&gt;Nam vestibulum accumsan erat, vel vehicula velit porta eget. Mauris scelerisque, lacus ut laoreet lacinia, arcu nisl mollis tellus, ut vestibulum justo velit a nunc. Phasellus blandit vestibulum leo eu tincidunt. &lt;/p&gt;&lt;p&gt;Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam convallis porta magna sed congue. Pellentesque et elit in ipsum maximus venenatis.Pellentesque malesuada neque vitae neque venenatis consectetur. &lt;/p&gt;&lt;p&gt;Proin sed metus rhoncus, egestas turpis ut, rhoncus enim. Sed vitae lorem a neque blandit mollis quis et quam. Nulla facilisi. Aliquam erat volutpat. Nulla facilisi. Integer ac iaculis risus, ac lobortis sapien. Ut hendrerit lacus nec pellentesque tempor.&lt;/p&gt;', 'Mauris ', 'Vazen mire mitren pokem', '', '', '', '', '', ''),
(81, 2, 'Goken ruma nitren pikame', '&lt;p&gt;Proin sed metus rhoncus, egestas turpis ut, rhoncus enim. Sed vitae lorem a neque blandit mollis quis et quam. Nulla facilisi. Aliquam erat volutpat. Nulla facilisi. Integer ac iaculis risus, ac lobortis sapien. Ut hendrerit lacus nec pellentesque tempor.&lt;/p&gt;&lt;p&gt;Pellentesque enim sem, rutrum sit amet molestie vitae, dignissim vitae nisi. Fusce in ligula sit amet augue sodales fermentum faucibus eget lacus. Donec a vulputate mi, fermentum sagittis purus. Donec in justo lectus. In hac habitasse platea dictumst. &lt;/p&gt;&lt;p&gt;Donec dignissim dictum odio id rhoncus. Suspendisse eu efficitur odio, quis tincidunt orci. Maecenas consectetur dignissim purus. Quisque neque massa, accumsan ut ornare vitae, varius non eros. Duis at ligula arcu. Sed mollis, nunc vitae consequat ullamcorper, magna massa finibus metus, nec hendrerit nisi nibh a quam. Ut elit orci, consequat non lacus eu, dapibus pulvinar turpis. Sed sodales venenatis auctor. Proin et vulputate metus.&lt;/p&gt;', 'Aliquam ', 'Goken ruma nitren pikame', '', '', '', '', '', ''),
(82, 2, 'Bore fimas dacen rumas', '&lt;p&gt;Ut felis augue, vehicula sit amet enim eget, iaculis pellentesque erat. Proin condimentum pulvinar volutpat. Maecenas cursus nisl vel dui cursus, et auctor urna porttitor. Maecenas quis porttitor felis, vel mollis ante. Vestibulum a magna sit amet ex vehicula laoreet sed ut odio. &lt;/p&gt;&lt;p&gt;Donec varius et purus tristique pellentesque. Mauris bibendum, felis in tempus blandit, quam lorem dignissim lorem, sit amet molestie tellus tellus at urna. Nam vestibulum accumsan erat, vel vehicula velit porta eget. &lt;/p&gt;&lt;p&gt;Mauris scelerisque, lacus ut laoreet lacinia, arcu nisl mollis tellus, ut vestibulum justo velit a nunc. Phasellus blandit vestibulum leo eu tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam convallis porta magna sed congue. Pellentesque et elit in ipsum maximus venenatis.Pellentesque malesuada neque vitae neque venenatis consectetur. Proin sed metus rhoncus, egestas turpis ut, rhoncus enim. Sed vitae lorem a neque blandit mollis quis et quam. Nulla facilisi. Aliquam erat volutpat. Nulla facilisi. Integer ac iaculis risus, ac lobortis sapien. Ut hendrerit lacus nec pellentesque tempor.&lt;/p&gt;', 'Pellentesque ', 'Bore fimas dacen rumas', '', '', '', '', '', ''),
(82, 1, 'Bore fimas dacen rumas', '&lt;p&gt;Ut felis augue, vehicula sit amet enim eget, iaculis pellentesque erat. Proin condimentum pulvinar volutpat. Maecenas cursus nisl vel dui cursus, et auctor urna porttitor. Maecenas quis porttitor felis, vel mollis ante. &lt;/p&gt;&lt;p&gt;Vestibulum a magna sit amet ex vehicula laoreet sed ut odio. Donec varius et purus tristique pellentesque. Mauris bibendum, felis in tempus blandit, quam lorem dignissim lorem, sit amet molestie tellus tellus at urna. Nam vestibulum accumsan erat, vel vehicula velit porta eget. Mauris scelerisque, lacus ut laoreet lacinia, arcu nisl mollis tellus, ut vestibulum justo velit a nunc. Phasellus blandit vestibulum leo eu tincidunt. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam convallis porta magna sed congue. &lt;/p&gt;&lt;p&gt;Pellentesque et elit in ipsum maximus venenatis.Pellentesque malesuada neque vitae neque venenatis consectetur. Proin sed metus rhoncus, egestas turpis ut, rhoncus enim. Sed vitae lorem a neque blandit mollis quis et quam. Nulla facilisi. Aliquam erat volutpat. Nulla facilisi. Integer ac iaculis risus, ac lobortis sapien. Ut hendrerit lacus nec pellentesque tempor.&lt;/p&gt;', 'Pellentesque ', 'Bore fimas dacen rumas', '', '', '', '', '', ''),
(80, 1, 'Vazen mire mitren pokem', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Nam vestibulum accumsan erat, vel vehicula velit porta eget. Mauris scelerisque, lacus ut laoreet lacinia, arcu nisl mollis tellus, ut vestibulum justo velit a nunc. Phasellus blandit vestibulum leo eu tincidunt.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam convallis porta magna sed congue. Pellentesque et elit in ipsum maximus venenatis.Pellentesque malesuada neque vitae neque venenatis consectetur.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Proin sed metus rhoncus, egestas turpis ut, rhoncus enim. Sed vitae lorem a neque blandit mollis quis et quam. Nulla facilisi. Aliquam erat volutpat. Nulla facilisi. Integer ac iaculis risus, ac lobortis sapien. Ut hendrerit lacus nec pellentesque tempor.&lt;/p&gt;', 'Mauris ', 'Vazen mire mitren pokem', '', '', '', '', '', ''),
(81, 1, 'Goken ruma nitren pikame', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Proin sed metus rhoncus, egestas turpis ut, rhoncus enim. Sed vitae lorem a neque blandit mollis quis et quam. Nulla facilisi. Aliquam erat volutpat. Nulla facilisi. Integer ac iaculis risus, ac lobortis sapien. Ut hendrerit lacus nec pellentesque tempor.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Pellentesque enim sem, rutrum sit amet molestie vitae, dignissim vitae nisi. Fusce in ligula sit amet augue sodales fermentum faucibus eget lacus. Donec a vulputate mi, fermentum sagittis purus. Donec in justo lectus. In hac habitasse platea dictumst.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec dignissim dictum odio id rhoncus. Suspendisse eu efficitur odio, quis tincidunt orci. Maecenas consectetur dignissim purus. Quisque neque massa, accumsan ut ornare vitae, varius non eros. Duis at ligula arcu. Sed mollis, nunc vitae consequat ullamcorper, magna massa finibus metus, nec hendrerit nisi nibh a quam. Ut elit orci, consequat non lacus eu, dapibus pulvinar turpis. Sed sodales venenatis auctor. Proin et vulputate metus.&lt;/p&gt;', 'Aliquam ', 'Goken ruma nitren pikame', '', '', '', '', '', ''),
(73, 1, 'Samza rema chuma polem', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur. Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. &amp;nbsp;&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potent&lt;/p&gt;', '', 'Samza rema chuma polem', '', '', '', '', '', ''),
(40, 2, 'Berun mazem polam mite', '&lt;p&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. &lt;/p&gt;&lt;p&gt;Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. &lt;/p&gt;&lt;p&gt;Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', 'iPhone,Mobile', 'iphone', '', '', '', '', '', ''),
(64, 1, 'Gima chuma polam bazen eget molestie erat', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', 'Elementum pellentesque', 'Gima chuma polam bazen', '', '', '', '', '', ''),
(45, 1, 'Hazem mazem duma pola irure qui sint jerky', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;Cupidatat do boudin ball tip ham aliquip.  Adipisicing id venison \r\nshankle, short loin cow rump sausage esse hamburger.  Aliqua in et tail \r\ncupidatat chicken, spare ribs dolore ipsum exercitation incididunt \r\nlabore t-bone turducken pastrami.  Incididunt in ea eiusmod, kevin pork \r\nchop laborum ullamco veniam tail sausage.  Bresaola mollit brisket \r\nalcatra est pork ut.&lt;/p&gt;&lt;p&gt;Jowl aliqua dolor ham hock kielbasa chuck.  \r\nPorchetta rump landjaeger cupidatat, shank ground round occaecat quis.  \r\nAnim flank ball tip, enim eiusmod meatball rump.  Spare ribs boudin \r\ndoner pork strip steak.  Picanha leberkas pancetta, eiusmod quis tail \r\nanim boudin pastrami.  Kielbasa bresaola alcatra consectetur ea sirloin \r\npork chop shank ipsum eu.  Frankfurter aliqua landjaeger officia, \r\nhamburger sausage exercitation eu sirloin reprehenderit cupidatat.&lt;/p&gt;&lt;p&gt;Alcatra\r\n do aute venison meatball, sint est culpa aliquip nostrud.  Enim aliquip\r\n ex, qui et ground round occaecat ut ipsum ad turducken.  Est sausage \r\nipsum kevin cupim, do reprehenderit sunt meatloaf labore nisi esse \r\nofficia.  Drumstick meatloaf shoulder cillum, irure qui sint jerky \r\nlabore ribeye ex do officia porchetta consequat.  Biltong enim cow, \r\ndoner lorem minim ex venison ball tip shankle flank meatball laboris.  \r\nEsse officia ground round anim biltong brisket laborum turkey et \r\nvoluptate dolor beef t-bone in doner.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', ' Porchetta ', 'Jowl Pliq', '', '', '', '', '', ''),
(63, 1, 'Jima suma pola natem finibus ipsum eget', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Vivamus pretium, arcu vel semper molestie, lorem neque mollis sem, eget pharetra velit ante pretium lacus. Vestibulum nunc lorem, pulvinar id laoreet ac, tincidunt vitae risus. In sed congue neque. Praesent ut leo massa.Donec finibus metus a laoreet facilisis. Etiam consectetur lectus eu diam semper finibus.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Etiam nec interdum dolor. Donec scelerisque, felis ac eleifend accumsan, ipsum augue dapibus enim, ut dignissim nibh odio eu quam. Suspendisse sit amet enim et ex euismod mollis. Curabitur ornare quam leo, non aliquam risus ultricies nec. Aliquam ullamcorper rutrum mi.Sed erat felis, placerat in euismod at, porttitor eu ex. Nullam tincidunt cursus dui sed placerat. Etiam ac elementum mauris, iaculis euismod neque. Phasellus venenatis tincidunt erat. Nunc vehicula sed ante sit amet consectetur.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Nunc pulvinar eu purus quis rutrum. Nunc finibus ipsum eget justo finibus ullamcorper. Sed nec magna tellus.Sed et hendrerit orci. Sed elementum urna ligula, a ullamcorper odio facilisis vitae. Fusce at tortor eu massa sollicitudin egestas. Proin mauris lectus, ornare ac metus sed, sagittis placerat diam. Vestibulum est risus, auctor eleifend semper vel, hendrerit quis lacus. Fusce consectetur nibh ex, vitae aliquam ligula luctus vitae. Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam.&lt;/p&gt;', 'Accumsan', 'Jima suma pola natem', '', '', '', '', '', ''),
(55, 1, 'Mazen dima polam rima Kielbasa aliquip doner ', '&lt;p&gt;Reprehenderit anim brisket pig cow, doner dolor hamburger mollit \r\ncorned beef nostrud chuck.  Salami aute fatback chicken t-bone jerky ex \r\nnisi in swine in drumstick pork belly proident.  Non jowl beef ribs aute\r\n sint pig corned beef bresaola strip steak labore.  Meatloaf fatback \r\ndolore, bacon jowl shank voluptate bresaola ground round corned beef \r\nnulla.  Labore t-bone prosciutto short ribs swine, andouille frankfurter\r\n cupidatat aliquip.&lt;/p&gt;&lt;p&gt;Duis deserunt short loin, rump et brisket \r\ntail.  Kielbasa aliquip drumstick pork belly mollit shoulder laboris \r\njowl nostrud tempor officia cow beef ribs rump.  Hamburger cillum nisi \r\nea ribeye swine short ribs.  Mollit jowl et shoulder elit adipisicing, \r\nbiltong ad ribeye tenderloin pariatur sed.  Alcatra dolore spare ribs, \r\nminim leberkas strip steak ut chuck consequat eu.&lt;/p&gt;&lt;p&gt;Sunt voluptate \r\nirure brisket, spare ribs short ribs est in.  Ut consectetur bacon, \r\nturkey esse in sunt porchetta ham hock.  Brisket laborum pork chop est, \r\nconsectetur quis corned beef alcatra nulla laboris ham hock irure mollit\r\n chuck.  Meatloaf sirloin incididunt aliquip jerky.  Swine shank non \r\npancetta lorem tongue.  Aute ut ea ut filet mignon, ullamco cupim pork \r\nloin ribeye est dolore commodo picanha magna.  Veniam est corned beef \r\nullamco flank id cupim nostrud occaecat sed prosciutto.&lt;/p&gt;', ' Hamburger ', 'Sunt Molup', '', '', '', '', '', ''),
(59, 1, 'Wuren mipos chuma xite gravida libero massa', '&lt;p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/span&gt;&lt;/p&gt;', 'Praesent ', 'Wuren mipos chuma xite', '', '', '', '', '', ''),
(62, 1, 'Xima mazem dima polamn mattis sapien eu aliquet', '&lt;p&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. &lt;/p&gt;&lt;p&gt;Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. &lt;/p&gt;&lt;p&gt;Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', 'Maecenas ', 'Xima mazem dima polamn', '', '', '', '', '', ''),
(62, 2, 'Xima mazem dima polamn mattis sapien eu aliquet', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum. Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada. Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;', 'Maecenas ', 'Xima mazem dima polamn', '', '', '', '', '', ''),
(40, 1, 'Berun mazem polam mite', '&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Fusce eget consequat turpis. Maecenas lorem massa, convallis vitae ligula mollis, dapibus egestas quam. Curabitur tempus eros eu magna pharetra molestie. Etiam commodo ornare nulla in sodales. Donec iaculis leo at libero interdum elementum.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Praesent pretium, metus congue fermentum gravida, est lacus porta ligula, eu gravida libero massa quis magna. Suspendisse potenti.Duis faucibus rutrum malesuada. Sed mattis sapien eu aliquet pretium. Ut commodo velit eu arcu blandit, eget molestie erat ultricies. Curabitur scelerisque lorem ut molestie malesuada.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1428px;&quot;&gt;Aliquam mauris ex, blandit id ex in, pellentesque dignissim mauris. Morbi in lectus eros. In hac habitasse platea dictumst. Etiam dignissim, est ac accumsan cursus, diam nulla molestie ligula, quis rutrum ipsum ante vel est. Sed tempus vestibulum leo, elementum pellentesque libero maximus eget. Donec in erat sed dolor vestibulum fringilla.&lt;/p&gt;\r\n', 'iPhone,Mobile', 'iphone ipad', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=538 ;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(537, 48, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(536, 48, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00'),
(531, 33, 1, 0, 0, '92.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(20, 1),
(20, 2),
(20, 3),
(28, 1),
(28, 2),
(28, 3),
(28, 7),
(28, 8),
(42, 1),
(42, 2),
(42, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5561 ;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(5465, 31, 'catalog/placeholder.png', 0),
(5525, 28, 'catalog/placeholder.png', 0),
(4678, 41, 'catalog/placeholder.png', 0),
(5545, 40, 'catalog/placeholder.png', 0),
(5455, 36, 'catalog/placeholder.png', 0),
(5535, 34, 'catalog/placeholder.png', 0),
(5534, 34, 'catalog/placeholder.png', 0),
(5425, 43, 'catalog/placeholder.png', 0),
(5464, 31, 'catalog/placeholder.png', 0),
(5463, 31, 'catalog/placeholder.png', 0),
(5430, 29, 'catalog/placeholder.png', 0),
(5475, 46, 'catalog/placeholder.png', 0),
(5474, 46, 'catalog/placeholder.png', 0),
(5544, 40, 'catalog/placeholder.png', 0),
(5470, 47, 'catalog/placeholder.png', 0),
(5524, 28, 'catalog/placeholder.png', 0),
(4677, 41, 'catalog/placeholder.png', 0),
(5454, 36, 'catalog/placeholder.png', 0),
(5533, 34, 'catalog/placeholder.png', 0),
(5532, 34, 'catalog/placeholder.png', 0),
(5424, 43, 'catalog/placeholder.png', 0),
(5560, 48, 'catalog/placeholder.png', 0),
(5462, 31, 'catalog/placeholder.png', 0),
(5461, 31, 'catalog/placeholder.png', 0),
(5429, 29, 'catalog/placeholder.png', 0),
(5515, 49, 'catalog/placeholder.png', 0),
(5514, 49, 'catalog/placeholder.png', 0),
(5513, 49, 'catalog/placeholder.png', 0),
(5440, 42, 'catalog/placeholder.png', 0),
(5445, 30, 'catalog/placeholder.png', 5),
(5423, 43, 'catalog/placeholder.png', 0),
(5439, 42, 'catalog/placeholder.png', 0),
(5523, 28, 'catalog/placeholder.png', 0),
(5522, 28, 'catalog/placeholder.png', 0),
(5521, 28, 'catalog/placeholder.png', 0),
(5444, 30, 'catalog/placeholder.png', 4),
(5443, 30, 'catalog/placeholder.png', 0),
(5460, 32, 'catalog/placeholder.png', 0),
(5459, 32, 'catalog/placeholder.png', 0),
(5438, 42, 'catalog/placeholder.png', 0),
(4676, 41, 'catalog/placeholder.png', 0),
(4675, 41, 'catalog/placeholder.png', 0),
(5453, 36, 'catalog/placeholder.png', 0),
(5437, 42, 'catalog/placeholder.png', 0),
(5442, 30, 'catalog/placeholder.png', 0),
(5469, 47, 'catalog/placeholder.png', 0),
(4674, 41, 'catalog/placeholder.png', 0),
(5458, 32, 'catalog/placeholder.png', 0),
(5422, 43, 'catalog/placeholder.png', 0),
(5512, 49, 'catalog/placeholder.png', 0),
(5531, 34, 'catalog/placeholder.png', 0),
(5435, 44, 'catalog/placeholder.png', 0),
(5559, 48, 'catalog/placeholder.png', 0),
(5473, 46, 'catalog/placeholder.png', 0),
(5120, 33, 'catalog/placeholder.png', 0),
(5119, 33, 'catalog/placeholder.png', 0),
(5118, 33, 'catalog/placeholder.png', 0),
(5117, 33, 'catalog/placeholder.png', 0),
(5116, 33, 'catalog/placeholder.png', 0),
(5505, 35, 'catalog/placeholder.png', 0),
(5504, 35, 'catalog/placeholder.png', 0),
(5503, 35, 'catalog/placeholder.png', 0),
(5502, 35, 'catalog/placeholder.png', 0),
(5501, 35, 'catalog/placeholder.png', 0),
(5543, 40, 'catalog/placeholder.png', 0),
(5457, 32, 'catalog/placeholder.png', 0),
(5421, 43, 'catalog/placeholder.png', 0),
(5555, 50, 'catalog/placeholder.png', 0),
(5554, 50, 'catalog/placeholder.png', 0),
(5553, 50, 'catalog/placeholder.png', 0),
(5552, 50, 'catalog/placeholder.png', 0),
(5551, 50, 'catalog/placeholder.png', 0),
(5510, 51, 'catalog/placeholder.png', 0),
(5509, 51, 'catalog/placeholder.png', 0),
(5508, 51, 'catalog/placeholder.png', 0),
(5507, 51, 'catalog/placeholder.png', 0),
(5506, 51, 'catalog/placeholder.png', 0),
(5500, 52, 'catalog/placeholder.png', 0),
(5499, 52, 'catalog/placeholder.png', 0),
(5498, 52, 'catalog/placeholder.png', 0),
(5497, 52, 'catalog/placeholder.png', 0),
(5145, 53, 'catalog/placeholder.png', 0),
(5144, 53, 'catalog/placeholder.png', 0),
(5270, 54, 'catalog/placeholder.png', 0),
(5269, 54, 'catalog/placeholder.png', 0),
(5268, 54, 'catalog/placeholder.png', 0),
(5267, 54, 'catalog/placeholder.png', 0),
(5496, 52, 'catalog/placeholder.png', 0),
(5143, 53, 'catalog/placeholder.png', 0),
(5472, 46, 'catalog/placeholder.png', 0),
(5265, 55, 'catalog/placeholder.png', 0),
(5264, 55, 'catalog/placeholder.png', 0),
(5263, 55, 'catalog/placeholder.png', 0),
(5262, 55, 'catalog/placeholder.png', 0),
(5520, 56, 'catalog/placeholder.png', 0),
(5519, 56, 'catalog/placeholder.png', 0),
(5518, 56, 'catalog/placeholder.png', 0),
(5517, 56, 'catalog/placeholder.png', 0),
(5516, 56, 'catalog/placeholder.png', 0),
(5436, 42, 'catalog/placeholder.png', 0),
(5441, 30, 'catalog/placeholder.png', 0),
(4633, 57, 'catalog/placeholder.png', 0),
(4632, 57, 'catalog/placeholder.png', 0),
(4631, 57, 'catalog/placeholder.png', 0),
(4630, 57, 'catalog/placeholder.png', 0),
(4629, 57, 'catalog/placeholder.png', 0),
(5456, 32, 'catalog/placeholder.png', 0),
(5266, 54, 'catalog/placeholder.png', 0),
(5558, 48, 'catalog/placeholder.png', 0),
(5452, 36, 'catalog/placeholder.png', 0),
(5428, 29, 'catalog/placeholder.png', 0),
(5471, 46, 'catalog/placeholder.png', 0),
(5557, 48, 'catalog/placeholder.png', 0),
(5468, 47, 'catalog/placeholder.png', 0),
(5427, 29, 'catalog/placeholder.png', 0),
(5467, 47, 'catalog/placeholder.png', 0),
(5556, 48, 'catalog/placeholder.png', 0),
(5434, 44, 'catalog/placeholder.png', 0),
(5433, 44, 'catalog/placeholder.png', 0),
(5432, 44, 'catalog/placeholder.png', 0),
(5431, 44, 'catalog/placeholder.png', 0),
(5466, 47, 'catalog/placeholder.png', 0),
(5542, 40, 'catalog/placeholder.png', 0),
(5426, 29, 'catalog/placeholder.png', 0),
(5142, 53, 'catalog/placeholder.png', 0),
(5451, 36, 'catalog/placeholder.png', 0),
(5220, 45, 'catalog/placeholder.png', 0),
(5219, 45, 'catalog/placeholder.png', 0),
(5218, 45, 'catalog/placeholder.png', 0),
(5217, 45, 'catalog/placeholder.png', 0),
(5216, 45, 'catalog/placeholder.png', 0),
(5261, 55, 'catalog/placeholder.png', 0),
(5141, 53, 'catalog/placeholder.png', 0),
(5305, 58, 'catalog/placeholder.png', 0),
(5304, 58, 'catalog/placeholder.png', 0),
(5303, 58, 'catalog/placeholder.png', 0),
(5302, 58, 'catalog/placeholder.png', 0),
(5301, 58, 'catalog/placeholder.png', 0),
(5245, 59, 'catalog/placeholder.png', 0),
(5244, 59, 'catalog/placeholder.png', 0),
(5243, 59, 'catalog/placeholder.png', 0),
(5242, 59, 'catalog/placeholder.png', 0),
(5241, 59, 'catalog/placeholder.png', 0),
(5150, 60, 'catalog/placeholder.png', 0),
(5149, 60, 'catalog/placeholder.png', 0),
(5148, 60, 'catalog/placeholder.png', 0),
(5147, 60, 'catalog/placeholder.png', 0),
(5146, 60, 'catalog/placeholder.png', 0),
(5155, 61, 'catalog/placeholder.png', 0),
(5154, 61, 'catalog/placeholder.png', 0),
(5153, 61, 'catalog/placeholder.png', 0),
(5152, 61, 'catalog/placeholder.png', 0),
(5151, 61, 'catalog/placeholder.png', 0),
(5285, 62, 'catalog/placeholder.png', 0),
(5284, 62, 'catalog/placeholder.png', 0),
(5283, 62, 'catalog/placeholder.png', 0),
(5282, 62, 'catalog/placeholder.png', 0),
(5281, 62, 'catalog/placeholder.png', 0),
(5290, 63, 'catalog/placeholder.png', 0),
(5289, 63, 'catalog/placeholder.png', 0),
(5288, 63, 'catalog/placeholder.png', 0),
(5287, 63, 'catalog/placeholder.png', 0),
(5286, 63, 'catalog/placeholder.png', 0),
(5315, 64, 'catalog/placeholder.png', 0),
(5314, 64, 'catalog/placeholder.png', 0),
(5313, 64, 'catalog/placeholder.png', 0),
(5312, 64, 'catalog/placeholder.png', 0),
(5311, 64, 'catalog/placeholder.png', 0),
(4911, 65, 'catalog/placeholder.png', 0),
(4912, 65, 'catalog/placeholder.png', 0),
(4913, 65, 'catalog/placeholder.png', 0),
(4914, 65, 'catalog/placeholder.png', 0),
(4915, 65, 'catalog/placeholder.png', 0),
(5320, 66, 'catalog/placeholder.png', 0),
(5319, 66, 'catalog/placeholder.png', 0),
(5318, 66, 'catalog/placeholder.png', 0),
(5317, 66, 'catalog/placeholder.png', 0),
(5316, 66, 'catalog/placeholder.png', 0),
(4921, 67, 'catalog/placeholder.png', 0),
(4922, 67, 'catalog/placeholder.png', 0),
(4923, 67, 'catalog/placeholder.png', 0),
(4924, 67, 'catalog/placeholder.png', 0),
(4925, 67, 'catalog/placeholder.png', 0),
(4926, 68, 'catalog/placeholder.png', 0),
(4927, 68, 'catalog/placeholder.png', 0),
(4928, 68, 'catalog/placeholder.png', 0),
(4929, 68, 'catalog/placeholder.png', 0),
(4930, 68, 'catalog/placeholder.png', 0),
(4931, 69, 'catalog/placeholder.png', 0),
(4932, 69, 'catalog/placeholder.png', 0),
(4933, 69, 'catalog/placeholder.png', 0),
(4934, 69, 'catalog/placeholder.png', 0),
(4935, 69, 'catalog/placeholder.png', 0),
(4936, 70, 'catalog/placeholder.png', 0),
(4937, 70, 'catalog/placeholder.png', 0),
(4938, 70, 'catalog/placeholder.png', 0),
(4939, 70, 'catalog/placeholder.png', 0),
(4940, 70, 'catalog/placeholder.png', 0),
(5310, 71, 'catalog/placeholder.png', 0),
(5309, 71, 'catalog/placeholder.png', 0),
(5308, 71, 'catalog/placeholder.png', 0),
(5307, 71, 'catalog/placeholder.png', 0),
(5306, 71, 'catalog/placeholder.png', 0),
(4946, 72, 'catalog/placeholder.png', 0),
(4947, 72, 'catalog/placeholder.png', 0),
(4948, 72, 'catalog/placeholder.png', 0),
(4949, 72, 'catalog/placeholder.png', 0),
(4950, 72, 'catalog/placeholder.png', 0),
(5360, 73, 'catalog/placeholder.png', 0),
(5359, 73, 'catalog/placeholder.png', 0),
(5358, 73, 'catalog/placeholder.png', 0),
(5357, 73, 'catalog/placeholder.png', 0),
(5356, 73, 'catalog/placeholder.png', 0),
(5495, 74, 'catalog/placeholder.png', 0),
(5494, 74, 'catalog/placeholder.png', 0),
(5493, 74, 'catalog/placeholder.png', 0),
(5492, 74, 'catalog/placeholder.png', 0),
(5491, 74, 'catalog/placeholder.png', 0),
(5485, 75, 'catalog/placeholder.png', 0),
(5484, 75, 'catalog/placeholder.png', 0),
(5483, 75, 'catalog/placeholder.png', 0),
(5482, 75, 'catalog/placeholder.png', 0),
(5481, 75, 'catalog/placeholder.png', 0),
(5365, 76, 'catalog/placeholder.png', 0),
(5364, 76, 'catalog/placeholder.png', 0),
(5363, 76, 'catalog/placeholder.png', 0),
(5362, 76, 'catalog/placeholder.png', 0),
(5361, 76, 'catalog/placeholder.png', 0),
(4995, 77, 'catalog/placeholder.png', 0),
(4994, 77, 'catalog/placeholder.png', 0),
(4993, 77, 'catalog/placeholder.png', 0),
(4992, 77, 'catalog/placeholder.png', 0),
(4991, 77, 'catalog/placeholder.png', 0),
(5355, 78, 'catalog/placeholder.png', 0),
(5354, 78, 'catalog/placeholder.png', 0),
(5353, 78, 'catalog/placeholder.png', 0),
(5352, 78, 'catalog/placeholder.png', 0),
(5351, 78, 'catalog/placeholder.png', 0),
(5325, 79, 'catalog/placeholder.png', 0),
(5324, 79, 'catalog/placeholder.png', 0),
(5323, 79, 'catalog/placeholder.png', 0),
(5322, 79, 'catalog/placeholder.png', 0),
(5321, 79, 'catalog/placeholder.png', 0),
(5240, 80, 'catalog/placeholder.png', 0),
(5239, 80, 'catalog/placeholder.png', 0),
(5238, 80, 'catalog/placeholder.png', 0),
(5237, 80, 'catalog/placeholder.png', 0),
(5236, 80, 'catalog/placeholder.png', 0),
(5235, 81, 'catalog/placeholder.png', 0),
(5234, 81, 'catalog/placeholder.png', 0),
(5233, 81, 'catalog/placeholder.png', 0),
(5232, 81, 'catalog/placeholder.png', 0),
(5231, 81, 'catalog/placeholder.png', 0),
(5490, 82, 'catalog/placeholder.png', 0),
(5489, 82, 'catalog/placeholder.png', 0),
(5488, 82, 'catalog/placeholder.png', 0),
(5487, 82, 'catalog/placeholder.png', 0),
(5486, 82, 'catalog/placeholder.png', 0),
(5541, 40, 'catalog/placeholder.png', 0),
(5511, 49, 'catalog/placeholder.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=236 ;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(230, 40, 13, '', 1),
(229, 47, 13, '', 1),
(228, 30, 13, '', 1),
(227, 28, 13, '', 1),
(235, 36, 13, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(32, 230, 40, 13, 49, 10, 1, '5.0000', '-', 0, '+', '0.00000000', '+'),
(31, 230, 40, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(30, 230, 40, 13, 51, 10, 1, '5.0000', '-', 0, '+', '0.00000000', '+'),
(29, 230, 40, 13, 52, 10, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(28, 230, 40, 13, 53, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(27, 229, 47, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(26, 229, 47, 13, 51, 10, 1, '5.0000', '-', 0, '+', '0.00000000', '+'),
(25, 229, 47, 13, 52, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(24, 229, 47, 13, 53, 10, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(23, 228, 30, 13, 49, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(22, 228, 30, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(21, 227, 28, 13, 53, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(20, 227, 28, 13, 52, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(19, 227, 28, 13, 51, 10, 1, '0.0000', '-', 0, '+', '0.00000000', '+'),
(18, 227, 28, 13, 50, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(17, 227, 28, 13, 49, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(41, 235, 36, 13, 56, 10, 1, '10.0000', '+', 10, '+', '0.00000000', '+'),
(42, 235, 36, 13, 67, 10, 1, '10.0000', '+', 10, '+', '0.00000000', '+'),
(40, 235, 36, 13, 55, 10, 1, '10.0000', '+', 10, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 30),
(28, 32),
(28, 48),
(28, 50),
(29, 30),
(30, 28),
(30, 29),
(30, 32),
(30, 43),
(30, 44),
(30, 50),
(30, 57),
(32, 28),
(32, 30),
(32, 41),
(32, 43),
(32, 47),
(41, 32),
(43, 30),
(43, 32),
(44, 30),
(44, 57),
(47, 32),
(48, 28),
(48, 50),
(50, 28),
(50, 30),
(50, 48),
(50, 57),
(57, 30),
(57, 44),
(57, 50);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `points` int(8) NOT NULL,
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=789 ;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(784, 42, 1, 100),
(786, 47, 1, 300),
(788, 28, 1, 400),
(782, 43, 1, 600),
(785, 30, 1, 200),
(783, 44, 1, 700),
(773, 45, 1, 800),
(787, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=779 ;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(755, 42, 1, 1, '60.0000', '2015-11-17', '2016-04-28'),
(761, 47, 1, 1, '60.0000', '2015-12-01', '2016-01-27'),
(756, 30, 1, 1, '60.0000', '2015-07-29', '2016-09-16'),
(778, 48, 1, 1, '80.0000', '2015-12-01', '2016-01-30'),
(766, 52, 1, 0, '30.0000', '0000-00-00', '0000-00-00'),
(768, 51, 1, 0, '80.0000', '2015-12-01', '2016-01-23'),
(777, 50, 1, 0, '20.0000', '2015-12-01', '2016-01-14'),
(603, 57, 1, 0, '43.0000', '2015-11-29', '2017-06-29'),
(767, 35, 1, 0, '80.0000', '0000-00-00', '0000-00-00'),
(754, 44, 1, 0, '94.0000', '2015-11-29', '2016-09-01'),
(771, 28, 1, 0, '93.0000', '0000-00-00', '0000-00-00'),
(611, 41, 1, 0, '80.0000', '0000-00-00', '0000-00-00'),
(775, 40, 1, 0, '87.0000', '0000-00-00', '0000-00-00'),
(759, 32, 1, 0, '82.0000', '0000-00-00', '0000-00-00'),
(773, 34, 1, 0, '230000.0000', '0000-00-00', '0000-00-00'),
(770, 56, 1, 0, '63.0000', '0000-00-00', '0000-00-00'),
(752, 43, 1, 0, '52.0000', '0000-00-00', '0000-00-00'),
(753, 29, 1, 0, '37.0000', '0000-00-00', '0000-00-00'),
(760, 31, 1, 0, '76.0000', '0000-00-00', '0000-00-00'),
(758, 36, 1, 0, '73.0000', '0000-00-00', '0000-00-00'),
(712, 45, 1, 0, '73.0000', '0000-00-00', '0000-00-00'),
(692, 33, 1, 0, '42.0000', '0000-00-00', '0000-00-00'),
(721, 54, 1, 2, '65.0000', '2015-12-06', '2016-11-01'),
(769, 49, 1, 0, '93.0000', '2015-11-29', '2016-10-06'),
(762, 46, 1, 0, '60.0000', '0000-00-00', '0000-00-00'),
(720, 55, 1, 5, '54.0000', '2015-11-29', '2016-10-20'),
(697, 53, 1, 3, '54.0000', '2015-11-29', '2017-03-21'),
(728, 58, 1, 0, '86.0000', '0000-00-00', '0000-00-00'),
(717, 59, 1, 0, '93.0000', '2015-11-29', '2016-07-07'),
(698, 60, 1, 0, '97.0000', '2015-11-29', '2017-05-03'),
(724, 62, 1, 3, '43.0000', '2015-12-07', '2017-06-01'),
(725, 63, 1, 0, '64.0000', '0000-00-00', '0000-00-00'),
(730, 64, 1, 0, '43.0000', '0000-00-00', '0000-00-00'),
(653, 65, 1, 0, '41.0000', '2015-12-01', '2016-10-26'),
(731, 66, 1, 0, '52.0000', '0000-00-00', '0000-00-00'),
(655, 67, 1, 0, '65.0000', '0000-00-00', '0000-00-00'),
(656, 68, 1, 2, '90.0000', '2015-11-29', '2017-10-26'),
(657, 69, 1, 3, '34.0000', '2015-11-29', '2017-06-02'),
(658, 70, 1, 0, '45.0000', '0000-00-00', '0000-00-00'),
(729, 71, 1, 0, '32.0000', '0000-00-00', '0000-00-00'),
(660, 72, 1, 0, '84.0000', '0000-00-00', '0000-00-00'),
(739, 73, 1, 0, '120.0000', '2015-12-08', '2016-03-31'),
(765, 74, 1, 0, '32.0000', '0000-00-00', '0000-00-00'),
(764, 75, 1, 0, '31.0000', '0000-00-00', '0000-00-00'),
(740, 76, 1, 0, '21.0000', '2015-11-29', '2017-03-02'),
(699, 61, 1, 0, '45.0000', '2015-11-29', '2016-09-29'),
(669, 77, 1, 0, '31.0000', '2015-11-29', '2015-12-25'),
(738, 78, 1, 2, '43.0000', '2015-11-29', '2017-02-02'),
(732, 79, 1, 2, '25.0000', '2015-11-29', '2017-06-30'),
(716, 80, 1, 0, '45.0000', '2015-11-29', '2017-07-13'),
(715, 81, 1, 0, '52.0000', '2015-11-29', '2017-05-19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 18),
(28, 32),
(28, 34),
(28, 43),
(28, 44),
(28, 45),
(28, 46),
(28, 47),
(28, 77),
(28, 81),
(28, 82),
(29, 18),
(29, 30),
(29, 32),
(29, 33),
(29, 34),
(29, 46),
(29, 57),
(29, 74),
(29, 77),
(29, 78),
(29, 79),
(29, 81),
(29, 82),
(29, 85),
(30, 18),
(30, 61),
(30, 74),
(30, 77),
(30, 80),
(30, 82),
(30, 84),
(31, 18),
(31, 33),
(31, 63),
(31, 79),
(31, 82),
(32, 18),
(32, 32),
(32, 34),
(32, 44),
(32, 77),
(32, 81),
(32, 82),
(32, 85),
(33, 94),
(34, 18),
(34, 34),
(34, 62),
(34, 80),
(34, 84),
(35, 94),
(36, 18),
(36, 34),
(36, 82),
(40, 18),
(40, 34),
(40, 43),
(40, 77),
(40, 81),
(40, 82),
(40, 92),
(41, 34),
(41, 43),
(41, 44),
(41, 77),
(41, 81),
(41, 82),
(42, 18),
(42, 25),
(42, 33),
(42, 34),
(42, 43),
(42, 44),
(42, 46),
(42, 47),
(42, 61),
(42, 62),
(42, 77),
(42, 80),
(42, 84),
(42, 86),
(43, 18),
(43, 30),
(43, 34),
(43, 43),
(43, 44),
(43, 45),
(43, 47),
(43, 61),
(43, 65),
(43, 78),
(43, 79),
(43, 81),
(43, 82),
(43, 84),
(43, 85),
(44, 18),
(44, 33),
(44, 62),
(44, 78),
(44, 80),
(45, 94),
(46, 87),
(46, 94),
(47, 18),
(47, 30),
(47, 81),
(47, 82),
(47, 86),
(48, 17),
(48, 20),
(48, 67),
(48, 70),
(48, 90),
(48, 91),
(49, 33),
(49, 34),
(49, 45),
(49, 57),
(49, 60),
(49, 72),
(49, 77),
(49, 78),
(49, 79),
(49, 81),
(49, 85),
(50, 18),
(50, 82),
(50, 84),
(51, 18),
(51, 33),
(51, 57),
(51, 60),
(51, 61),
(51, 63),
(51, 73),
(51, 75),
(51, 80),
(51, 84),
(52, 17),
(52, 20),
(52, 24),
(52, 26),
(52, 27),
(52, 64),
(52, 69),
(52, 71),
(52, 72),
(52, 73),
(52, 76),
(52, 78),
(52, 79),
(52, 88),
(52, 89),
(52, 90),
(52, 91),
(52, 93),
(53, 25),
(54, 17),
(54, 20),
(54, 70),
(54, 76),
(54, 90),
(54, 91),
(55, 94),
(56, 18),
(56, 34),
(56, 82),
(57, 20),
(57, 24),
(57, 26),
(57, 66),
(57, 68),
(57, 90),
(57, 91),
(58, 25),
(59, 25),
(60, 25),
(61, 25),
(62, 25),
(63, 25),
(64, 25),
(65, 95),
(66, 95),
(67, 95),
(68, 95),
(69, 95),
(70, 95),
(71, 95),
(72, 95),
(73, 95),
(73, 96),
(74, 95),
(74, 96),
(75, 95),
(75, 96),
(76, 95),
(76, 96),
(77, 90),
(77, 96),
(78, 95),
(78, 96),
(79, 17),
(79, 97),
(80, 17),
(80, 97),
(81, 20),
(82, 20);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 2, 0),
(48, 2, 0),
(48, 3, 0),
(30, 2, 0),
(47, 3, 0),
(41, 2, 0),
(31, 2, 0),
(28, 0, 0),
(33, 2, 0),
(33, 3, 0),
(32, 2, 0),
(40, 2, 0),
(43, 3, 0),
(29, 3, 0),
(28, 3, 0),
(36, 3, 0),
(36, 2, 0),
(49, 0, 0),
(49, 2, 0),
(47, 2, 0),
(41, 3, 0),
(34, 0, 0),
(34, 3, 0),
(43, 0, 0),
(44, 2, 0),
(45, 3, 0),
(45, 2, 0),
(31, 3, 0),
(35, 2, 0),
(35, 0, 0),
(46, 3, 0),
(46, 0, 0),
(34, 2, 0),
(44, 0, 0),
(44, 3, 0),
(45, 0, 0),
(45, 4, 0),
(46, 2, 0),
(33, 4, 0),
(33, 0, 0),
(35, 3, 0),
(42, 3, 0),
(42, 0, 0),
(30, 0, 35),
(30, 3, 0),
(48, 0, 0),
(47, 0, 0),
(28, 2, 0),
(41, 4, 0),
(41, 0, 0),
(40, 0, 0),
(40, 3, 0),
(32, 0, 0),
(32, 3, 0),
(36, 0, 0),
(43, 2, 0),
(31, 0, 0),
(29, 2, 0),
(29, 0, 0),
(49, 3, 0),
(50, 2, 0),
(50, 0, 0),
(50, 3, 0),
(51, 3, 0),
(51, 2, 0),
(51, 0, 0),
(52, 3, 0),
(52, 2, 0),
(52, 0, 0),
(53, 3, 0),
(53, 2, 0),
(53, 4, 0),
(53, 0, 0),
(54, 2, 0),
(54, 3, 0),
(54, 0, 0),
(54, 4, 0),
(55, 0, 0),
(55, 2, 0),
(55, 3, 0),
(55, 4, 0),
(56, 0, 0),
(56, 3, 0),
(56, 2, 0),
(57, 2, 0),
(57, 4, 0),
(57, 3, 0),
(57, 0, 0),
(58, 4, 0),
(58, 3, 0),
(58, 2, 0),
(58, 0, 0),
(59, 4, 0),
(59, 3, 0),
(59, 2, 0),
(59, 0, 0),
(60, 0, 0),
(60, 2, 0),
(60, 3, 0),
(60, 4, 0),
(61, 4, 0),
(61, 3, 0),
(61, 2, 0),
(61, 0, 0),
(62, 4, 0),
(62, 3, 0),
(62, 2, 0),
(62, 0, 0),
(63, 0, 0),
(63, 2, 0),
(63, 3, 0),
(63, 4, 0),
(64, 4, 0),
(64, 3, 0),
(64, 2, 0),
(64, 0, 0),
(65, 4, 0),
(65, 3, 0),
(65, 2, 0),
(65, 0, 0),
(66, 4, 0),
(66, 3, 0),
(66, 2, 0),
(66, 0, 0),
(67, 0, 0),
(67, 2, 0),
(67, 3, 0),
(67, 4, 0),
(68, 0, 0),
(68, 2, 0),
(68, 3, 0),
(68, 4, 0),
(69, 0, 0),
(69, 2, 0),
(69, 3, 0),
(69, 4, 0),
(70, 0, 0),
(70, 2, 0),
(70, 3, 0),
(70, 4, 0),
(71, 4, 0),
(71, 3, 0),
(71, 2, 0),
(71, 0, 0),
(72, 0, 0),
(72, 2, 0),
(72, 3, 0),
(72, 4, 0),
(73, 0, 0),
(73, 2, 0),
(73, 3, 0),
(73, 4, 0),
(74, 0, 0),
(74, 2, 0),
(74, 3, 0),
(75, 0, 0),
(75, 2, 0),
(75, 3, 0),
(76, 4, 0),
(76, 3, 0),
(76, 2, 0),
(76, 0, 0),
(77, 4, 0),
(77, 3, 0),
(77, 2, 0),
(77, 0, 0),
(78, 0, 0),
(78, 2, 0),
(78, 3, 0),
(78, 4, 0),
(79, 4, 0),
(79, 3, 0),
(79, 2, 0),
(79, 0, 0),
(80, 0, 0),
(80, 2, 0),
(80, 3, 0),
(80, 4, 0),
(81, 0, 0),
(81, 2, 0),
(81, 3, 0),
(81, 4, 0),
(82, 3, 0),
(82, 2, 0),
(82, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(31, 2),
(31, 3),
(32, 0),
(33, 0),
(33, 3),
(34, 0),
(35, 0),
(35, 3),
(36, 0),
(40, 0),
(40, 2),
(41, 0),
(42, 0),
(43, 0),
(43, 2),
(44, 0),
(44, 2),
(44, 3),
(45, 0),
(45, 3),
(46, 0),
(46, 3),
(47, 0),
(48, 0),
(48, 2),
(48, 3),
(49, 0),
(49, 2),
(49, 3),
(50, 0),
(50, 2),
(51, 0),
(52, 0),
(53, 3),
(54, 0),
(55, 0),
(55, 3),
(56, 0),
(57, 0),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 0),
(80, 2),
(81, 0),
(82, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) NOT NULL,
  `cycle` int(10) NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) NOT NULL,
  `trial_cycle` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 30, 0, 'ngant', 'There are no reviews for this product.', 3, 1, '2015-07-29 01:00:34', '2015-07-29 01:14:22'),
(2, 42, 0, 'Super Administrator', 'Best  this product opencart', 4, 1, '2015-07-29 16:36:38', '2015-07-29 16:36:58'),
(3, 48, 0, 'ácdvfbgmnh', 'cxvbngmhj,./aS ZXD HBDCH SRBFCVG SGRFHBXFCGBXDFGAEZRDGVAERDF', 2, 0, '2015-10-08 23:03:49', '0000-00-00 00:00:00'),
(4, 62, 0, 'Eker', 'Xima mazem dima polamn mattis sapien ', 4, 1, '2015-12-12 09:53:16', '2015-12-12 10:03:04'),
(5, 53, 0, 'Eker', 'Shank shoulder spare ribs, chicken quis chuck tail. Exercitation boudin commodo, meatloaf doner aliquip minim elit corned beef do tri-tip ground round sed fatback in. Duis in andouille corned beef ad brisket. Et aute shankle id, shank excepteur swine drumstick labore. Deserunt jowl lorem culpa beef ribs exercitation, andouille aute nisi fugiat. Filet mignon rump ut proident jerky corned beef sed tail pork belly bacon', 5, 1, '2015-12-12 09:55:02', '2015-12-12 10:02:51'),
(6, 50, 8, 'nguyen', 'flajskdxfkjncakdsjfmkc,aksjdmxfkc,dsx', 5, 0, '2015-12-23 23:13:39', '0000-00-00 00:00:00'),
(7, 77, 8, 'dsfdghj', 'jfhdsnkjfncksjd,mhnfkcjasdhnfkcjmsdx', 4, 0, '2015-12-24 02:45:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` longtext NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39484 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(30565, 0, 'filter', 'filter_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(3940, 0, 'category', 'category_status', '1', 0),
(1768, 0, 'customisation', 'customisation_contentbg', '', 0),
(1769, 0, 'customisation', 'customisation_delimeter', '', 0),
(1770, 0, 'customisation', 'customisation_headerpattern', '', 0),
(1771, 0, 'customisation', 'customisation_decoration', '', 0),
(1772, 0, 'customisation', 'customisation_topslider', '{"rev_full_status":"1","1":{"rev_full_html":"&lt;ul&gt;\\r\\n        &lt;li&gt;\\r\\n            &lt;a href=&quot;index.php&quot;&gt;&lt;img src=&quot;image\\/catalog\\/TopSlider\\/slider-main-back-01.jpg&quot; data-rw-slider=&quot;main: true; move: true;&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;\\r\\n            &lt;a href=&quot;index.php&quot; class=&quot;title-slide-01&quot;&gt;\\r\\n                &lt;span class=&quot;big&quot;&gt;Sale&lt;\\/span&gt;\\r\\n                &lt;span class=&quot;middle&quot;&gt;up to 40% OFF&lt;\\/span&gt;\\r\\n            &lt;\\/a&gt;\\r\\n        &lt;\\/li&gt;\\r\\n        &lt;li&gt;\\r\\n            &lt;a href=&quot;index.php&quot;&gt;&lt;img src=&quot;image\\/catalog\\/TopSlider\\/slider-main-back-02s.jpg&quot; data-rw-slider=&quot;main: true; move: true;&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;\\r\\n            &lt;a href=&quot;index.php&quot; class=&quot;title-slide-02&quot;&gt;\\r\\n                &lt;span class=&quot;big&quot;&gt;New&lt;\\/span&gt;\\r\\n                &lt;span class=&quot;small&quot;&gt;collection&lt;\\/span&gt;\\r\\n                &lt;span class=&quot;middle&quot;&gt;AUTUMN 2015&lt;\\/span&gt;\\r\\n            &lt;\\/a&gt;\\r\\n        &lt;\\/li&gt;\\r\\n        &lt;li&gt;\\r\\n            &lt;a href=&quot;index.php&quot;&gt;&lt;img src=&quot;image\\/catalog\\/TopSlider\\/slider-main-back-03.jpg&quot; data-rw-slider=&quot;main: true; move: true;&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;\\r\\n            &lt;a href=&quot;index.php&quot; class=&quot;title-slide-03&quot;&gt;\\r\\n                &lt;span class=&quot;big&quot;&gt;Special offer&lt;\\/span&gt;\\r\\n                &lt;span class=&quot;middle&quot;&gt;Save money with Lingerie SALE&lt;\\/span&gt;\\r\\n                &lt;span class=&quot;small&quot;&gt;Up to 50% OFF&lt;\\/span&gt;\\r\\n            &lt;\\/a&gt;\\r\\n        &lt;\\/li&gt;\\r\\n    &lt;\\/ul&gt;\\r\\n&lt;a class=&quot;control prev animate-scale&quot;&gt;&lt;span class=&quot;icon-arrow-left-5&quot;&gt;&amp;nbsp;&lt;\\/span&gt;&lt;\\/a&gt;\\r\\n&lt;a class=&quot;control next animate-scale&quot;&gt;&lt;span class=&quot;icon-untitled&quot;&gt;&amp;nbsp;&lt;\\/span&gt;&lt;\\/a&gt;\\r\\n&lt;a class=&quot;scroll-down animate-move-down&quot;&gt;&lt;span class=&quot;icon icon-arrow-down&quot;&gt;&amp;nbsp;&lt;\\/span&gt; scroll to view content &lt;\\/a&gt;","rev_boxed_html":"&lt;ul&gt;\\r\\n    &lt;li data-masterspeed=&quot;300&quot; data-slotamount=&quot;2&quot; data-transition=&quot;fade&quot;&gt;\\r\\n        &lt;img alt=&quot;&quot; src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider1.jpg&quot;&gt;\\r\\n        &lt;div class=&quot;tp-caption sfr&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;600&quot; data-x=&quot;830&quot; data-y=&quot;80&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-01&quot;&gt; &lt;span class=&quot;big&quot;&gt;Sale&lt;\\/span&gt;&lt;\\/a&gt; &lt;\\/div&gt;\\r\\n        &lt;div class=&quot;tp-caption sfr&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1000&quot; data-x=&quot;830&quot; data-y=&quot;185&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-01&quot;&gt;&lt;span class=&quot;middle&quot;&gt;up to 40% OFF&lt;\\/span&gt; &lt;\\/a&gt; &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n    &lt;li data-masterspeed=&quot;300&quot; data-slotamount=&quot;2&quot; data-transition=&quot;fade&quot;&gt;\\r\\n        &lt;img alt=&quot;&quot; src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider2.jpg&quot;&gt;\\r\\n        &lt;div class=&quot;tp-caption sfl&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;600&quot; data-x=&quot;50&quot; data-y=&quot;90&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-02&quot;&gt;&lt;span class=&quot;big&quot;&gt;New&lt;\\/span&gt; &lt;\\/a&gt; &lt;\\/div&gt;\\r\\n        &lt;div class=&quot;tp-caption sfl&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1000&quot; data-x=&quot;50&quot; data-y=&quot;170&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-02&quot;&gt;&lt;span class=&quot;small&quot;&gt;collection&lt;\\/span&gt; &lt;\\/a&gt; &lt;\\/div&gt;\\r\\n        &lt;div class=&quot;tp-caption sfl&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1400&quot; data-x=&quot;50&quot; data-y=&quot;210&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-02&quot;&gt; &lt;span class=&quot;middle&quot;&gt;AUTUMN 2015&lt;\\/span&gt;&lt;\\/a&gt; &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n    &lt;li data-masterspeed=&quot;300&quot; data-slotamount=&quot;2&quot; data-transition=&quot;fade&quot;&gt;\\r\\n        &lt;img alt=&quot;&quot; src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider3.jpg&quot;&gt;\\r\\n        &lt;div class=&quot;tp-caption sft&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;600&quot; data-x=&quot;800&quot; data-y=&quot;40&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-03&quot;&gt;&lt;span class=&quot;big&quot;&gt;Special&lt;br&gt;\\r\\n                offer&lt;\\/span&gt; &lt;\\/a&gt; &lt;\\/div&gt;\\r\\n        &lt;div class=&quot;tp-caption sfb&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1000&quot; data-x=&quot;800&quot; data-y=&quot;160&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-03&quot;&gt;&lt;span class=&quot;middle&quot;&gt;Save money with &lt;br&gt;\\r\\n                Lingerie SALE&lt;\\/span&gt;&lt;\\/a&gt; &lt;\\/div&gt;\\r\\n        &lt;div class=&quot;tp-caption sfb&quot; data-easing=&quot;easeOutExpo&quot; data-speed=&quot;700&quot; data-start=&quot;1200&quot; data-x=&quot;800&quot; data-y=&quot;265&quot;&gt;&lt;a href=&quot;index.html&quot; class=&quot;title-slide-03&quot;&gt;&lt;span class=&quot;small&quot;&gt;UP TO 50% OFF&lt;\\/span&gt;&lt;\\/a&gt; &lt;\\/div&gt;\\r\\n    &lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;","simple_html":"&lt;div class=&quot;item&quot;&gt;\\r\\n                &lt;img src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider1.jpg&quot; alt=&quot;&quot;&gt;\\r\\n                &lt;a href=&quot;index.php&quot; class=&quot;title-slide-01&quot;&gt;\\r\\n                    &lt;span class=&quot;big&quot;&gt;Sale&lt;\\/span&gt;\\r\\n                    &lt;span class=&quot;middle&quot;&gt;up to 40% OFF&lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;item&quot;&gt;\\r\\n                &lt;img src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider2.jpg&quot; alt=&quot;&quot;&gt;\\r\\n                &lt;a href=&quot;index.php&quot; class=&quot;title-slide-02&quot;&gt;\\r\\n                    &lt;span class=&quot;big&quot;&gt;New&lt;\\/span&gt;\\r\\n                    &lt;span class=&quot;small&quot;&gt;collection&lt;\\/span&gt;\\r\\n                    &lt;span class=&quot;middle&quot;&gt;AUTUMN 2015&lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;item&quot;&gt;\\r\\n                &lt;img src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider3.jpg&quot; alt=&quot;&quot;&gt;\\r\\n                &lt;a href=&quot;index.php&quot; class=&quot;title-slide-03&quot;&gt;\\r\\n                    &lt;span class=&quot;big&quot;&gt;Special offer&lt;\\/span&gt;\\r\\n                    &lt;span class=&quot;middle&quot;&gt;Save money with Lingerie SALE&lt;\\/span&gt;\\r\\n                    &lt;span class=&quot;small&quot;&gt;UP TO 50% OFF&lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;","simple_banners_html":"&lt;div class=&quot;owl-slider-outer&quot;&gt;\\r\\n    &lt;a class=&quot;owl-slider-prev&quot;&gt;&lt;\\/a&gt;\\r\\n    &lt;a class=&quot;owl-slider-next&quot;&gt;&lt;\\/a&gt;\\r\\n    &lt;div class=&quot;owl-slider&quot;&gt;\\r\\n        &lt;div class=&quot;item&quot;&gt;&lt;img src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider1.jpg&quot; alt=&quot;&quot;&gt; &lt;a href=&quot;index.php&quot; class=&quot;title-slide-01&quot;&gt; &lt;span class=&quot;big&quot;&gt;Sale&lt;\\/span&gt; &lt;span class=&quot;middle&quot;&gt;up to 40% OFF&lt;\\/span&gt; &lt;\\/a&gt;&lt;\\/div&gt;\\r\\n        &lt;div class=&quot;item&quot;&gt;&lt;img src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider2.jpg&quot; alt=&quot;&quot;&gt; &lt;a href=&quot;index.php&quot; class=&quot;title-slide-02&quot;&gt; &lt;span class=&quot;big&quot;&gt;New&lt;\\/span&gt; &lt;span class=&quot;small&quot;&gt;collection&lt;\\/span&gt; &lt;span class=&quot;middle&quot;&gt;AUTUMN 2015&lt;\\/span&gt; &lt;\\/a&gt; &lt;\\/div&gt;\\r\\n        &lt;div class=&quot;item&quot;&gt;&lt;img src=&quot;image\\/catalog\\/TopSlider\\/home_boxed_slider3.jpg&quot; alt=&quot;&quot;&gt; &lt;a href=&quot;index.php&quot; class=&quot;title-slide-03&quot;&gt; &lt;span class=&quot;big&quot;&gt;Special offer&lt;\\/span&gt; &lt;span class=&quot;middle&quot;&gt;Save money with Lingerie SALE&lt;\\/span&gt; &lt;\\/a&gt;&lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;banners-block&quot;&gt;\\r\\n    &lt;div class=&quot;item&quot;&gt;\\r\\n        &lt;a href=&quot;index.php&quot;&gt;\\r\\n            &lt;img src=&quot;image\\/catalog\\/TopSlider\\/banner1.jpg&quot; alt=&quot;&quot;&gt;\\r\\n            &lt;div class=&quot;banner-text black&quot;&gt;\\r\\n                100%&lt;br&gt;\\r\\n                RETINA READY\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/a&gt;\\r\\n    &lt;\\/div&gt;\\r\\n    &lt;div class=&quot;item&quot;&gt;\\r\\n        &lt;a href=&quot;index.php&quot;&gt;\\r\\n            &lt;img src=&quot;image\\/catalog\\/TopSlider\\/banner2.jpg&quot; alt=&quot;&quot;&gt;\\r\\n            &lt;div class=&quot;banner-text&quot;&gt;\\r\\n                &lt;div class=&quot;inside&quot;&gt;RESPONSIVE&lt;br&gt;\\r\\n                    LAYOUT\\r\\n                &lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/a&gt;\\r\\n    &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;"},"rev_boxed_status":"0","simple_status":"0","simple_banner_status":"0"}', 1),
(1762, 0, 'account', 'account_status', '1', 0),
(1763, 0, 'upsells', 'upsells_status', '1', 0),
(1764, 0, 'customisation', 'customisation_rightimg', 'catalog/icon-optimus.png', 0),
(1765, 0, 'customisation', 'customisation_bgall', 'catalog/back-bg.jpg', 0),
(1766, 0, 'customisation', 'customisation_slider', '{"slider_type":"isotope_categories","sliders_isotope_status":"1","sliders_row_status":"1","featured_type":"horizontal","featured_quick_type":"inline","latest_type":"vertical","latest_quick_type":"popup","bestseller_type":"vertical","bestseller_quick_type":"popup","popular_type":"horizontal","popular_quick_type":"popup","special_type":"vertical","special_quick_type":"popup"}', 1),
(1767, 0, 'customisation', 'customisation_colors', '{"layout_skin":"default","general_bgcolor":"","content_bg_mode":"no-repeat","general_themecolor":"","general_input":"","general_text":"","general_link":"","general_linkhover":"","captions_font":"-","captions_text":"","topline_bgcolor":"","topline_shadow":"1","topline_phonecolor":"","dd_ink":"","dd_linkhover":"","dd_bgcolor":"","dd_border":"","headernav_text":"","headernav_linkhover":"","headernav_link":"","top_menu_bgcolor":"","headernav_bgcolor":"","content_border_color":"","product_border":"1px solid","product_shadow":"0","footerinfo_text":"","footerinfo_link":"","footerinfo_captions":"","footerinfo_bgcolor":"","footer_text":"","footer_link":"","footer_link_hover":"","footer_bgcolor":"","footerpopup_captions":"","footerpopup_link":"","footerpopup_linkhover":"","footerpopup_bgcolor":"","price_font":"-","price_regular":"","price_new":"","price_old":""}', 1),
(3571, 0, 'pavblog', 'pavblog', '{"general_lwidth":"600","general_lheight":"350","general_swidth":"270","general_sheight":"180","general_xwidth":"80","general_xheight":"80","rss_limit_item":"12","keyword_listing_blogs_page":"blogs","children_columns":"1","general_cwidth":"250","general_cheight":"250","cat_limit_leading_blog":"0","cat_limit_secondary_blog":"5","cat_leading_image_type":"l","cat_secondary_image_type":"s","cat_columns_leading_blog":"1","cat_columns_secondary_blogs":"1","cat_show_title":"1","cat_show_description":"1","cat_show_readmore":"0","cat_show_image":"1","cat_show_author":"1","cat_show_category":"0","cat_show_created":"1","cat_show_hits":"0","cat_show_comment_counter":"1","blog_image_type":"l","blog_show_title":"1","blog_show_image":"1","blog_show_author":"1","blog_show_category":"1","blog_show_created":"1","blog_show_comment_counter":"1","blog_show_hits":"1","blog_show_comment_form":"1","comment_engine":"local","diquis_account":"pavothemes","facebook_appid":"100858303516","comment_limit":"10","facebook_width":"600","auto_publish_comment":"1","enable_recaptcha":"0"}', 1),
(1773, 0, 'customisation', 'customisation_products', '{"product_catalog_mode":"0","listing_quick_type":"popup","product_listing_type":"big_with_column","bs_products_listing_images_sizes":"small","izotope_number":"2","limit_description_inline":"2600","limit_description_popup":"1500","sale_status":"1","sale_label_bg":"","new_status":"1","days":"100","new_label_bg":"","discount_label_bg":"","quick_status":"1","discount_status":"1","countdown_status":"1","popup_small_status":"1","thumbnails_position":"bottom","tabs_position":"1","related":"enable","product_page_images_sizes":"big","cloudzoom_mode":"right","product_page_button":"&lt;div class=&quot;share addthis_toolbox addthis_default_style &quot;&gt;\\r\\n                    &lt;div class=&quot;addthis_default_style&quot;&gt;\\r\\n                        &lt;a class=&quot;addthis_button_compact&quot;&gt;Share&lt;\\/a&gt;\\r\\n                        &lt;a class=&quot;addthis_button_email&quot;&gt;&lt;\\/a&gt;\\r\\n                        &lt;a class=&quot;addthis_button_print&quot;&gt;&lt;\\/a&gt;\\r\\n                        &lt;a class=&quot;addthis_button_facebook&quot;&gt;&lt;\\/a&gt;\\r\\n                        &lt;a class=&quot;addthis_button_twitter&quot;&gt;&lt;\\/a&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;script type=&quot;text\\/javascript&quot; src=&quot;\\/\\/s7.addthis.com\\/js\\/250\\/addthis_widget.js&quot;&gt;&lt;\\/script&gt;\\r\\n                &lt;\\/div&gt;"}', 1),
(1774, 0, 'customisation', 'customisation_general', '{"homepage_mode":"full","bg_image_status":"0","headertopline":"1","quickpanel":"1","header_account":"1","footerpopup":"1","css_file":"0","headerspy":"1","spy_type":"1","1":{"welcome_message":"Default welcome message!","mobile_menu_title":"MENU","customitem_item_title1":"buynow","blog_link_title":"blog","pages_link_title":"pages","contact_map_title":"contact","footer_socials_title":"FIND US ON","custom_html_title":"CUSTOM HTML BLOCK","customblock_html":"&lt;ul class=&quot;menu&quot;&gt;\\r\\n\\t&lt;li&gt;&lt;span class=&quot;icon icon-house&quot;&gt;&amp;nbsp;&lt;\\/span&gt; 7563 St. Vincent Place, Glasgow&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;span class=&quot;icon icon-phone-4&quot;&gt;&amp;nbsp;&lt;\\/span&gt; 321321321, 321321321&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;span class=&quot;icon icon-envelop&quot;&gt;&amp;nbsp;&lt;\\/span&gt; &lt;a href=&quot;mailto:info@mydomain.com&quot;&gt;info@mydomain.com&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;span class=&quot;icon icon-skype-2&quot;&gt;&amp;nbsp;&lt;\\/span&gt; &lt;a href=&quot;index.php&quot;&gt;shop.test&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;","newsletter_title":"Newsletter signup","newsletter_promo":"Enter your email and we''ll send you a coupon with 10% off your next order.","newsletter_placeholder":"Your E-mail...","sale_text":"sale","new_text":"new","quick_view_text":"Quick View"},"header_type":"4","menu_type":"1","homebutton":"1","customitem_item_url1":"index.php","blog_link_status":"0","blog_link_url":"index.php?route=simple_blog\\/article","pages_link_url":"index.php","pages_status":"1","contact_map_status":"1","additional_page_id":{"4":"4","6":"6","3":"3","5":"5"},"additional_page_status":{"4":"1","6":"1","3":"1","5":"1"},"additional_page_checkout_status":"1","additional_page_account_status":"1","footercopyright":"&amp;copy; 2015 &lt;a href=&quot;index.php&quot;&gt;Optimus&lt;\\/a&gt;. All Rights Reserved.","socials":"&lt;ul class=&quot;find-us&quot;&gt;\\r\\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;\\/\\/www.facebook.com\\/&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-facebook-3&quot;&gt;&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;\\/\\/twitter.com&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-twitter-3&quot;&gt;&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;\\/\\/www.linkedin.com&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-linkedin-2&quot;&gt;&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;\\/\\/www.youtube.com&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-youtube-3&quot;&gt;&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;\\/\\/www.pinterest.com\\/&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-pinterest-2&quot;&gt;&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n        &lt;li class=&quot;divider&quot;&gt;&lt;a href=&quot;\\/\\/plus.google.com&quot; target=&quot;_blank&quot; class=&quot;animate-scale&quot;&gt;&lt;span class=&quot;icon icon-googleplus-2&quot;&gt;&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n    &lt;\\/ul&gt;","socials_status":"1","footerpayment":"&lt;ul class=&quot;payment-list pull-right&quot;&gt;\\r\\n    &lt;li&gt;&lt;img src=&quot;image\\/catalog\\/blocks\\/icon-payment-01.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;\\/li&gt;\\r\\n    &lt;li&gt;&lt;img src=&quot;image\\/catalog\\/blocks\\/icon-payment-02.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;\\/li&gt;\\r\\n    &lt;li&gt;&lt;img src=&quot;image\\/catalog\\/blocks\\/icon-payment-03.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;\\/li&gt;\\r\\n    &lt;li&gt;&lt;img src=&quot;image\\/catalog\\/blocks\\/icon-payment-04.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;\\/li&gt;\\r\\n    &lt;li&gt;&lt;img src=&quot;image\\/catalog\\/blocks\\/icon-payment-05.png&quot; width=&quot;36&quot; height=&quot;22&quot; alt=&quot;&quot;&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;","footerpayment_status":"1","customblock_status":"1","twitter":"envato","facebook":"envato","video_code":"HhEPvNx0OYw","chat_code":"","chat_code_status":"1","apikey":"","list_unique_id":"","newsletter_status":"1"}', 1),
(1775, 0, 'customisation', 'customisation_translation', '{"1":{"view_details":"view details","tags_tab_title":"tags","countdown_title":"THIS LIMITER OFFER ENDS IN:","countdown_title_day":"Day","countdown_title_hour":"Hour","countdown_title_minute":"Minute","countdown_title_second":"Second"}}', 1),
(32219, 0, 'newsletters', 'newsletters_status', '1', 0),
(39459, 0, 'simple_blog_category', 'simple_blog_category_module', '{"g4qcyhzkjrtchaor":{"status":"1","sort_order":"2"}}', 1),
(38634, 3, 'config', 'config_secure', '0', 0),
(38531, 2, 'config', 'config_meta_title', 'SO Shoppystore - Responsive Multipurpose OpenCart Theme', 0),
(38532, 2, 'config', 'config_meta_description', 'SO Shoppystore is a premium responsive OpenCart theme that is the combination of a modern design and a powerful backend interface.', 0),
(38574, 2, 'config', 'config_image_location_width', '180', 0),
(38575, 2, 'config', 'config_image_location_height', '70', 0),
(38576, 2, 'config', 'config_secure', '0', 0),
(38573, 2, 'config', 'config_image_cart_height', '74', 0),
(38572, 2, 'config', 'config_image_cart_width', '74', 0),
(38570, 2, 'config', 'config_image_wishlist_width', '47', 0),
(38571, 2, 'config', 'config_image_wishlist_height', '47', 0),
(38569, 2, 'config', 'config_image_compare_height', '90', 0),
(38566, 2, 'config', 'config_image_related_width', '72', 0),
(38567, 2, 'config', 'config_image_related_height', '72', 0),
(38568, 2, 'config', 'config_image_compare_width', '90', 0),
(38565, 2, 'config', 'config_image_additional_height', '470', 0),
(39442, 0, 'config', 'config_error_display', '1', 0),
(39443, 0, 'config', 'config_error_log', '1', 0),
(39444, 0, 'config', 'config_error_filename', 'error.log', 0),
(39483, 0, 'simple_blog', 'simple_blog_module', '{"b3913bd42fxjytz5vfyo80k9":{"article_limit":"3","category_id":"all","status":"1","sort_order":""}}', 1),
(39441, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(39439, 0, 'config', 'config_file_max_size', '300000', 0),
(39440, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(39413, 0, 'config', 'config_image_cart_width', '60', 0),
(39414, 0, 'config', 'config_image_cart_height', '60', 0),
(39415, 0, 'config', 'config_image_location_width', '180', 0),
(39416, 0, 'config', 'config_image_location_height', '70', 0),
(39417, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(39418, 0, 'config', 'config_ftp_port', '21', 0),
(39419, 0, 'config', 'config_ftp_username', '', 0),
(39420, 0, 'config', 'config_ftp_password', '', 0),
(39421, 0, 'config', 'config_ftp_root', '', 0),
(39422, 0, 'config', 'config_ftp_status', '0', 0),
(39423, 0, 'config', 'config_mail_protocol', 'mail', 0),
(39424, 0, 'config', 'config_mail_parameter', '', 0),
(39425, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(39426, 0, 'config', 'config_mail_smtp_username', '', 0),
(39427, 0, 'config', 'config_mail_smtp_password', '', 0),
(39428, 0, 'config', 'config_mail_smtp_port', '25', 0),
(39429, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(39430, 0, 'config', 'config_mail_alert', '', 0),
(39431, 0, 'config', 'config_maintenance', '0', 0),
(39432, 0, 'config', 'config_seo_url', '0', 0),
(39433, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(39434, 0, 'config', 'config_compression', '6', 0),
(39435, 0, 'config', 'config_secure', '0', 0),
(39436, 0, 'config', 'config_password', '1', 0),
(39437, 0, 'config', 'config_shared', '0', 0),
(39438, 0, 'config', 'config_encryption', 'tbhnk89AsHWo28rh6wsNRcjjCs5wvd0I3fecz842DvyM3O3InPrUTTpNV0u1GbeELI1cxV0NpqLn8qvxqIlgw29jLf7horZHLKzHPfGuiADpCjRDHAWJuJQYDnifRXxrR38EpPL8F5xxej8lvgMAqgs56u3nzBgrtgdIIdc3VtgBKIIZa68nkuQCrLIapdPTyttSMqnrpHxGKPbhAhf645LJmI4zetbQc8hUYLlmqeQAgVLyRAo4UsYt2YKXhAevyN6vsLRKfwa9BAkkYluAs7rdatyrQb0EVAXp1ryteGfYt93Qn6Z1ij1TqRJgsVQufnwenDrjNbUOWmEpEGRwxKSGnRm6VxBYxMLTC8G3WvZaYxq5gWK3KnBplTb8A9i2mqtOdIyuYz7DKjvO7VpIgpi3LbhdBJp1sW96Vyzv9EnVwjKMMcOQKR9NsKvuqHgIVEMFEEI3mawLckf9xB2keqroDBPGdlXpDw9Sb8woKMyxF9dmpQPSCwqGs6bxn08FursnXEmT8bKxORnxEogoXl0nLfpP8RvV9jVqqOzqaZ5XiSc1BnlfrKjREbh9tQF1PSSXt1GJgc5GpHoX4Xy6F9IEqhdfO58i3M94kOfM5LQHysT0zH1RGFlPMDto2QtrgbKy4Alj2IkRUJTHG8Qzb6VIlRLyXpC7mkcWWmzPOclVPn9mQCL6GwhY89FDQ2GjpJn0SBmCfxekJOj8ouKXY8ZodvkNoira0u6s9WEDUBgZiN8hXtDORI7lFdQRcDNeS4acQJFbPHXu2sFBgLNU8k2wwYN5YEsEEjwoWazvw32Xt9vgNKt2il7E88rIpFqrcsGsr690Ig9LqH0Rf9h40NE0SffaeRyjLLvkfiYaTfsrLHKhdBbkXWlRlwQA49ZP2K2R4rwN66k3ivqeddPmExYwaouHDKG5KsbCRpQ86UpsKKXBQWPsepRDz86QD7vkIOklL0K9vDUwVqAM72vtFVAIJav3jDZD5poPjYMCo8D1WF9o5tVPFec7mmolBUuA', 0),
(39412, 0, 'config', 'config_image_wishlist_height', '47', 0),
(39411, 0, 'config', 'config_image_wishlist_width', '47', 0),
(39102, 0, 'soconfig', 'soconfig_jsfile_store', '{"2":"catalog\\/view\\/theme\\/so-shoppystore2\\/js\\/custom.js","3":"catalog\\/view\\/theme\\/so-shoppystore2\\/js\\/custom.js"}', 1),
(39100, 0, 'soconfig', 'soconfig_custom_store', '{"2":{"cssinput_status":"0","cssfile_status":"0","jsinput_status":"0","jsfile_status":"0"},"custom_css":"","custom_js":"","3":{"cssinput_status":"0","cssfile_status":"0","jsinput_status":"0","jsfile_status":"0"}}', 1),
(39101, 0, 'soconfig', 'soconfig_cssfile_store', '{"2":"catalog\\/view\\/theme\\/so-shoppystore2\\/css\\/custom.css","3":"catalog\\/view\\/theme\\/so-shoppystore2\\/css\\/custom.css"}', 1),
(39099, 0, 'soconfig', 'soconfig_social_store', '{"2":{"social_status":"0","facebook":"","twitter":"","video_code":""},"3":{"social_status":"0","facebook":"","twitter":"","video_code":""}}', 1),
(39097, 0, 'soconfig', 'soconfig_pages_store', '{"2":{"product_catalog_refine":"0","product_catalog_refine_col_lg":"1","product_catalog_refine_col_sm":"1","product_catalog_refine_col_xs":"1","lsttitle_cate_status":"0","lstimg_cate_status":"0","lstcompare_status":"0","product_catalog_mode":"0","product_catalog_column_lg":"1","product_catalog_column_sm":"1","product_catalog_column_xs":"1","secondimg":"1","rating_status":"0","lstdescription_status":"0","sale_status":"0","2":{"sale_text":"","new_text":"","quick_view_text":""},"new_status":"0","days":"","quick_status":"0","discount_status":"0","countdown_status":"0","thumbnails_position":"bottom","product_enablezoom":"0","product_zoommode":"basic","product_zoomlenssize":"","tabs_position":"1","related_status":"0","product_page_button":"","3":{"sale_text":"","new_text":"","quick_view_text":""}},"1":{"2":{"sale_text":"","new_text":"","quick_view_text":""},"3":{"sale_text":"","new_text":"","quick_view_text":""}},"3":{"product_catalog_refine":"0","product_catalog_refine_col_lg":"1","product_catalog_refine_col_sm":"1","product_catalog_refine_col_xs":"1","lsttitle_cate_status":"0","lstimg_cate_status":"0","lstcompare_status":"0","product_catalog_mode":"0","product_catalog_column_lg":"1","product_catalog_column_sm":"1","product_catalog_column_xs":"1","secondimg":"1","rating_status":"0","lstdescription_status":"0","sale_status":"0","new_status":"0","days":"","quick_status":"0","discount_status":"0","countdown_status":"0","thumbnails_position":"bottom","product_enablezoom":"0","product_zoommode":"basic","product_zoomlenssize":"","tabs_position":"1","related_status":"0","product_page_button":""}}', 1),
(39098, 0, 'soconfig', 'soconfig_fonts_store', '{"2":{"body_status":"google","normal_body":"inherit","url_body":"","family_body":"","selector_body":"","menu_status":"google","normal_menu":"inherit","url_menu":"","family_menu":"","selector_menu":"","heading_status":"google","normal_heading":"inherit","url_heading":"","family_heading":"","selector_heading":""},"3":{"body_status":"google","normal_body":"inherit","url_body":"","family_body":"","selector_body":"","menu_status":"google","normal_menu":"inherit","url_menu":"","family_menu":"","selector_menu":"","heading_status":"google","normal_heading":"inherit","url_heading":"","family_heading":"","selector_heading":""}}', 1),
(39096, 0, 'soconfig', 'soconfig_layout_store', '{"2":{"layoutstyle":"full","general_bgcolor":"","pattern":"none","soconfig_contentbg":"","content_bg_mode":"repeat","content_attachment":"scroll"},"3":{"layoutstyle":"full","general_bgcolor":"","pattern":"none","soconfig_contentbg":"","content_bg_mode":"repeat","content_attachment":"scroll"}}', 1),
(38865, 0, 'newsletters', 'newsletters_status', '1', 0),
(38866, 0, 'manufacturers', 'manufacturers_status', '1', 0),
(39095, 0, 'soconfig', 'soconfig_lang_store', '{"1":{"2":{"view_details":"","tags_tab_title":"","brands_title":"","countdown_title":"","countdown_title_day":"","countdown_title_hour":"","countdown_title_minute":"","countdown_title_second":""},"3":{"view_details":"","tags_tab_title":"","brands_title":"","countdown_title":"","countdown_title_day":"","countdown_title_hour":"","countdown_title_minute":"","countdown_title_second":""}},"2":{"2":{"view_details":"","tags_tab_title":"","brands_title":"","countdown_title":"","countdown_title_day":"","countdown_title_hour":"","countdown_title_minute":"","countdown_title_second":""},"3":{"view_details":"","tags_tab_title":"","brands_title":"","countdown_title":"","countdown_title_day":"","countdown_title_hour":"","countdown_title_minute":"","countdown_title_second":""}}}', 1),
(39089, 0, 'soconfig', 'soconfig_fonts', '{"body_status":"google","normal_body":"Arial, Helvetica, sans-serif","url_body":"https:\\/\\/fonts.googleapis.com\\/css?family=Roboto","family_body":"Roboto, sans-serif","selector_body":"body","menu_status":"google","normal_menu":"inherit","url_menu":"https:\\/\\/fonts.googleapis.com\\/css?family=Rajdhani","family_menu":"Rajdhani, sans-serif","selector_menu":".so-deal .item-timer .time-item","heading_status":"standard","normal_heading":"inherit","url_heading":"http:\\/\\/fonts.googleapis.com\\/css?family=Lobster+Two","family_heading":"Lobster Two","selector_heading":""}', 1),
(39090, 0, 'soconfig', 'soconfig_social', '{"social_status":"0","facebook":"","twitter":"","video_code":""}', 1),
(38843, 0, 'newsletters', 'newsletters_status', '1', 0),
(38844, 0, 'manufacturers', 'manufacturers_status', '1', 0),
(39094, 0, 'soconfig', 'soconfig_general_store', '{"2":{"themecolor":"pink","layouts":"0","cpanel":"0","backtop":"0","scroll_animation":"0","copyright":"","logo_position":"left","searchbox":"0","toppanel_status":"0","toppanel_type":"1","phone_status":"0","2":{"contact_number":"","welcome_message":"","footer_socials_title":"","footer_socials":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","custom_html_title":"","customblock_html":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"welcome_message_status":"0","wishlist_status":"0","checkout_status":"0","lang_status":"0","socials_status":"0","footerpayment_status":"0","footerpayment":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;","customblock_status":"0","3":{"contact_number":"","welcome_message":"","footer_socials_title":"","footer_socials":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","custom_html_title":"","customblock_html":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"}},"soconfig_toppanel":"","1":{"2":{"contact_number":"","welcome_message":"","footer_socials_title":"","footer_socials":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","custom_html_title":"","customblock_html":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"},"3":{"contact_number":"","welcome_message":"","footer_socials_title":"","footer_socials":"\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","custom_html_title":"","customblock_html":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;"}},"3":{"themecolor":"red","layouts":"0","cpanel":"0","backtop":"0","scroll_animation":"0","copyright":"","logo_position":"left","searchbox":"0","toppanel_status":"0","toppanel_type":"1","phone_status":"0","welcome_message_status":"0","wishlist_status":"0","checkout_status":"0","lang_status":"0","socials_status":"0","footerpayment_status":"0","footerpayment":"&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;","customblock_status":"0"}}', 1),
(38887, 0, 'newsletters', 'newsletters_status', '1', 0),
(38888, 0, 'manufacturers', 'manufacturers_status', '1', 0),
(39091, 0, 'soconfig', 'soconfig_custom', '{"cssinput_status":"0","custom_css":"","cssfile_status":"0","jsinput_status":"0","custom_js":"","jsfile_status":"0"}', 1),
(39092, 0, 'soconfig', 'soconfig_cssfile', '["catalog\\/view\\/theme\\/so-market\\/css\\/custom.css"]', 1),
(39093, 0, 'soconfig', 'soconfig_jsfile', '["catalog\\/view\\/theme\\/so-market\\/js\\/custom.js"]', 1),
(38667, 0, 'newsletters', 'newsletters_status', '1', 0),
(38668, 0, 'manufacturers', 'manufacturers_status', '1', 0),
(38564, 2, 'config', 'config_image_additional_width', '470', 0),
(38562, 2, 'config', 'config_image_product_width', '130', 0),
(38563, 2, 'config', 'config_image_product_height', '130', 0),
(38561, 2, 'config', 'config_image_popup_height', '550', 0),
(38632, 3, 'config', 'config_image_location_width', '180', 0),
(38629, 3, 'config', 'config_image_wishlist_height', '47', 0),
(38630, 3, 'config', 'config_image_cart_width', '74', 0),
(38631, 3, 'config', 'config_image_cart_height', '74', 0),
(38627, 3, 'config', 'config_image_compare_height', '90', 0),
(38628, 3, 'config', 'config_image_wishlist_width', '47', 0),
(39458, 0, 'simple_blog_category', 'simple_blog_category_search_article', '1', 0),
(39457, 0, 'simple_blog_category', 'simple_blog_category_status', '1', 0),
(39482, 0, 'simple_blog', 'simple_blog_share_social_site', '1', 0),
(39481, 0, 'simple_blog', 'simple_blog_related_articles', '1', 0),
(39480, 0, 'simple_blog', 'simple_blog_author_information', '1', 0),
(39479, 0, 'simple_blog', 'simple_blog_comment_auto_approval', '1', 0),
(39478, 0, 'simple_blog', 'simple_blog_display_category', '1', 0),
(39477, 0, 'simple_blog', 'simple_blog_comment_related_heading', 'Our Blog', 0),
(39476, 0, 'simple_blog', 'simple_blog_product_related_heading', 'Our Blog', 0),
(39475, 0, 'simple_blog', 'simple_blog_heading', 'Our Blog', 0),
(39474, 0, 'simple_blog', 'simple_blog_footer_heading', 'Our Blog', 0),
(39473, 0, 'simple_blog', 'simple_blog_seo_keyword', 'Our Blog', 0),
(39472, 0, 'simple_blog', 'simple_blog_status', '1', 0),
(38560, 2, 'config', 'config_image_popup_width', '600', 0),
(38559, 2, 'config', 'config_image_thumb_height', '447', 0),
(38625, 3, 'config', 'config_image_related_height', '72', 0),
(38626, 3, 'config', 'config_image_compare_width', '90', 0),
(38558, 2, 'config', 'config_image_thumb_width', '447', 0),
(38557, 2, 'config', 'config_image_category_height', '140', 0),
(38556, 2, 'config', 'config_image_category_width', '140', 0),
(38555, 2, 'config', 'config_icon', 'catalog/theme_favicon.png', 0),
(38624, 3, 'config', 'config_image_related_width', '72', 0),
(38554, 2, 'config', 'config_logo', 'catalog/theme_logo_white.png', 0),
(38553, 2, 'config', 'config_stock_checkout', '0', 0),
(38552, 2, 'config', 'config_stock_display', '0', 0),
(38550, 2, 'config', 'config_checkout_id', '0', 0),
(38623, 3, 'config', 'config_image_additional_height', '470', 0),
(38620, 3, 'config', 'config_image_product_width', '130', 0),
(38622, 3, 'config', 'config_image_additional_width', '470', 0),
(38621, 3, 'config', 'config_image_product_height', '130', 0),
(38619, 3, 'config', 'config_image_popup_height', '550', 0),
(38617, 3, 'config', 'config_image_thumb_height', '447', 0),
(38618, 3, 'config', 'config_image_popup_width', '600', 0),
(38615, 3, 'config', 'config_image_category_height', '140', 0),
(38616, 3, 'config', 'config_image_thumb_width', '447', 0),
(38614, 3, 'config', 'config_image_category_width', '140', 0),
(38613, 3, 'config', 'config_icon', 'catalog/theme_favicon.png', 0),
(38612, 3, 'config', 'config_logo', 'catalog/theme_logo_white.png', 0),
(38611, 3, 'config', 'config_stock_checkout', '0', 0),
(38610, 3, 'config', 'config_stock_display', '0', 0),
(38609, 3, 'config', 'config_order_status_id', '7', 0),
(38542, 2, 'config', 'config_tax', '0', 0),
(38543, 2, 'config', 'config_tax_default', '', 0),
(38544, 2, 'config', 'config_tax_customer', '', 0),
(38545, 2, 'config', 'config_customer_group_id', '1', 0),
(39410, 0, 'config', 'config_image_compare_height', '90', 0),
(39409, 0, 'config', 'config_image_compare_width', '90', 0),
(39408, 0, 'config', 'config_image_related_height', '72', 0),
(39407, 0, 'config', 'config_image_related_width', '72', 0),
(39406, 0, 'config', 'config_image_additional_height', '470', 0),
(39405, 0, 'config', 'config_image_additional_width', '470', 0),
(39404, 0, 'config', 'config_image_product_height', '130', 0),
(39403, 0, 'config', 'config_image_product_width', '130', 0),
(39402, 0, 'config', 'config_image_popup_height', '550', 0),
(39401, 0, 'config', 'config_image_popup_width', '600', 0),
(39400, 0, 'config', 'config_image_thumb_height', '447', 0),
(39399, 0, 'config', 'config_image_thumb_width', '447', 0),
(39398, 0, 'config', 'config_image_category_height', '140', 0),
(39397, 0, 'config', 'config_image_category_width', '140', 0),
(39396, 0, 'config', 'config_icon', 'catalog/theme_favicon.png', 0),
(39395, 0, 'config', 'config_logo', 'catalog/logo2.png', 0),
(39394, 0, 'config', 'config_captcha', '', 0),
(39393, 0, 'config', 'config_return_status_id', '2', 0),
(39392, 0, 'config', 'config_return_id', '0', 0),
(39391, 0, 'config', 'config_affiliate_mail', '0', 0),
(39390, 0, 'config', 'config_affiliate_id', '4', 0),
(39389, 0, 'config', 'config_affiliate_commission', '5', 0),
(39388, 0, 'config', 'config_affiliate_auto', '0', 0),
(32220, 0, 'manufacturers', 'manufacturers_status', '1', 0),
(39387, 0, 'config', 'config_affiliate_approval', '0', 0),
(39386, 0, 'config', 'config_stock_checkout', '0', 0),
(39385, 0, 'config', 'config_stock_warning', '0', 0),
(39384, 0, 'config', 'config_stock_display', '0', 0),
(39382, 0, 'config', 'config_order_mail', '0', 0),
(39383, 0, 'config', 'config_api_id', '4', 0),
(39381, 0, 'config', 'config_fraud_status_id', '7', 0),
(39380, 0, 'config', 'config_complete_status', '["5"]', 1),
(39379, 0, 'config', 'config_processing_status', '["2"]', 1),
(39378, 0, 'config', 'config_order_status_id', '1', 0),
(39377, 0, 'config', 'config_checkout_id', '5', 0),
(39376, 0, 'config', 'config_checkout_guest', '1', 0),
(39375, 0, 'config', 'config_cart_weight', '1', 0),
(39374, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(39373, 0, 'config', 'config_account_mail', '1', 0),
(39372, 0, 'config', 'config_account_id', '3', 0),
(39371, 0, 'config', 'config_login_attempts', '5', 0),
(39370, 0, 'config', 'config_customer_price', '0', 0),
(39369, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(38551, 2, 'config', 'config_order_status_id', '7', 0),
(38549, 2, 'config', 'config_checkout_guest', '0', 0),
(38541, 2, 'config', 'config_product_description_length', '100', 0),
(38548, 2, 'config', 'config_cart_weight', '0', 0),
(38547, 2, 'config', 'config_account_id', '0', 0),
(38546, 2, 'config', 'config_customer_price', '0', 0),
(38536, 2, 'config', 'config_country_id', '222', 0),
(38537, 2, 'config', 'config_zone_id', '3563', 0),
(38538, 2, 'config', 'config_language', 'en', 0),
(38539, 2, 'config', 'config_currency', 'USD', 0),
(38540, 2, 'config', 'config_product_limit', '16', 0),
(38608, 3, 'config', 'config_checkout_id', '0', 0),
(38598, 3, 'config', 'config_product_limit', '16', 0),
(38607, 3, 'config', 'config_checkout_guest', '0', 0),
(38606, 3, 'config', 'config_cart_weight', '0', 0),
(38605, 3, 'config', 'config_account_id', '0', 0),
(38604, 3, 'config', 'config_customer_price', '0', 0),
(38602, 3, 'config', 'config_tax_customer', '', 0),
(38603, 3, 'config', 'config_customer_group_id', '1', 0),
(38601, 3, 'config', 'config_tax_default', '', 0),
(38600, 3, 'config', 'config_tax', '0', 0),
(38599, 3, 'config', 'config_product_description_length', '100', 0),
(38592, 3, 'config', 'config_template', 'so-shoppystore3', 0),
(38593, 3, 'config', 'config_layout_id', '6', 0),
(38594, 3, 'config', 'config_country_id', '222', 0),
(38595, 3, 'config', 'config_zone_id', '3563', 0),
(38534, 2, 'config', 'config_template', 'so-shoppystore2', 0),
(38535, 2, 'config', 'config_layout_id', '6', 0),
(39368, 0, 'config', 'config_customer_group_id', '1', 0),
(38597, 3, 'config', 'config_currency', 'USD', 0),
(38596, 3, 'config', 'config_language', 'en', 0),
(38591, 3, 'config', 'config_meta_keyword', 'opencart theme, responsive opencart theme, market store, clean design theme, multipurpose theme, opencart responsive theme, opencart themes, premium opencart theme\r\n', 0),
(39367, 0, 'config', 'config_customer_online', '1', 0),
(39365, 0, 'config', 'config_tax_default', 'shipping', 0),
(39366, 0, 'config', 'config_tax_customer', 'shipping', 0),
(39363, 0, 'config', 'config_voucher_max', '1000', 0),
(39364, 0, 'config', 'config_tax', '1', 0),
(39362, 0, 'config', 'config_voucher_min', '1', 0),
(39361, 0, 'config', 'config_review_mail', '0', 0),
(39360, 0, 'config', 'config_review_guest', '1', 0),
(39359, 0, 'config', 'config_review_status', '1', 0),
(39358, 0, 'config', 'config_limit_admin', '20', 0),
(39355, 0, 'config', 'config_product_count', '0', 0),
(39356, 0, 'config', 'config_product_limit', '16', 0),
(39357, 0, 'config', 'config_product_description_length', '100', 0),
(38533, 2, 'config', 'config_meta_keyword', 'opencart theme, responsive opencart theme, market store, clean design theme, multipurpose theme, opencart responsive theme, opencart themes, premium opencart theme', 0),
(38528, 2, 'config', 'config_image', '', 0),
(38529, 2, 'config', 'config_open', '', 0),
(38530, 2, 'config', 'config_comment', 'Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.', 0),
(38526, 2, 'config', 'config_telephone', 'Phone : 0123456789', 0),
(38589, 3, 'config', 'config_meta_title', 'SO Shoppystore - Responsive Multipurpose OpenCart Theme', 0),
(38590, 3, 'config', 'config_meta_description', 'SO Shoppystore is a premium responsive OpenCart theme that is the combination of a modern design and a powerful backend interface.', 0),
(38585, 3, 'config', 'config_fax', '', 0),
(38586, 3, 'config', 'config_image', '', 0),
(38587, 3, 'config', 'config_open', '', 0),
(38588, 3, 'config', 'config_comment', 'Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.', 0),
(39354, 0, 'config', 'config_weight_class_id', '1', 0),
(38584, 3, 'config', 'config_telephone', 'Phone : 0123456789', 0),
(38581, 3, 'config', 'config_address', 'My Company, 42 avenue des Champs Elysées 75000 Paris France', 0);
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(39353, 0, 'config', 'config_length_class_id', '1', 0),
(39352, 0, 'config', 'config_currency_auto', '1', 0),
(39351, 0, 'config', 'config_currency', 'IDR', 0),
(39350, 0, 'config', 'config_admin_language', 'en', 0),
(39349, 0, 'config', 'config_language', 'en', 0),
(39348, 0, 'config', 'config_zone_id', '1529', 0),
(39347, 0, 'config', 'config_country_id', '100', 0),
(39346, 0, 'config', 'config_comment', 'Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.', 0),
(39345, 0, 'config', 'config_open', '', 0),
(39344, 0, 'config', 'config_image', '', 0),
(39343, 0, 'config', 'config_fax', '', 0),
(39342, 0, 'config', 'config_telephone', 'Phone : 0123456789', 0),
(39341, 0, 'config', 'config_email', 'admin@development.com', 0),
(39334, 0, 'config', 'config_cookie', 'dark-bottom', 0),
(39335, 0, 'config', 'config_template', 'so-shoppystore2', 0),
(39336, 0, 'config', 'config_layout_id', '4', 0),
(39337, 0, 'config', 'config_name', 'Arinsi Fashion', 0),
(39338, 0, 'config', 'config_owner', 'Your Store', 0),
(39339, 0, 'config', 'config_address', 'My Company, 42 avenue des Champs Elysées 75000 Paris France', 0),
(39340, 0, 'config', 'config_geocode', '40.705423,-74.008616', 0),
(39333, 0, 'config', 'config_meta_keyword', 'opencart theme, responsive opencart theme, market store, clean design theme, multipurpose theme, opencart responsive theme, opencart themes, premium opencart theme\r\n', 0),
(38527, 2, 'config', 'config_fax', '', 0),
(38524, 2, 'config', 'config_geocode', '40.705423,-74.008616', 0),
(38522, 2, 'config', 'config_owner', 'SO Shoppystore - Layout 2', 0),
(38523, 2, 'config', 'config_address', 'My Company, 42 avenue des Champs Elysées 75000 Paris France', 0),
(38582, 3, 'config', 'config_geocode', '40.705423,-74.008616', 0),
(38580, 3, 'config', 'config_owner', 'SO Shoppystore - Layout 3', 0),
(38578, 3, 'config', 'config_ssl', '', 0),
(38579, 3, 'config', 'config_name', 'SO Shoppystore - Layout 3', 0),
(39084, 0, 'soconfig', 'soconfig_toppanel', '', 0),
(39085, 0, 'soconfig', 'soconfig_lang', '{"1":{"view_details":"Add To Cart ","tags_tab_title":"Tabs","brands_title":"","countdown_title":"This limited offer ends","countdown_title_day":"Days","countdown_title_hour":"Hour","countdown_title_minute":"Min","countdown_title_second":"Sec"},"2":{"view_details":"\\u0623\\u0636\\u0641 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0633\\u0644\\u0629","tags_tab_title":"\\u0639\\u0644\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u0628\\u0648\\u064a\\u0628","brands_title":"","countdown_title":"","countdown_title_day":"","countdown_title_hour":"","countdown_title_minute":"","countdown_title_second":""}}', 1),
(39086, 0, 'soconfig', 'soconfig_layout', '{"layoutstyle":"full","general_bgcolor":"","pattern":"none","content_bg_mode":"repeat","content_attachment":"scroll"}', 1),
(39087, 0, 'soconfig', 'soconfig_contentbg', '', 0),
(39088, 0, 'soconfig', 'soconfig_pages', '{"product_catalog_refine":"2","product_catalog_refine_col_lg":"3","product_catalog_refine_col_sm":"3","product_catalog_refine_col_xs":"2","lsttitle_cate_status":"0","lstimg_cate_status":"0","lstcompare_status":"0","product_catalog_mode":"0","product_catalog_column_lg":"4","product_catalog_column_sm":"2","product_catalog_column_xs":"2","secondimg":"1","rating_status":"1","lstdescription_status":"0","sale_status":"1","1":{"sale_text":"Sale","new_text":"New","quick_view_text":"Quick View"},"2":{"sale_text":"\\u062a\\u062e\\u0641\\u064a\\u0636","new_text":"\\u062c\\u062f\\u064a\\u062f","quick_view_text":"\\u0646\\u0638\\u0631\\u0629 \\u0633\\u0631\\u064a\\u0639\\u0629"},"new_status":"0","days":"35","quick_status":"1","discount_status":"0","countdown_status":"1","thumbnails_position":"left","product_enablezoom":"1","product_zoommode":"inner","product_zoomlenssize":"200","tabs_position":"2","related_status":"1","product_page_button":"&lt;!-- Go to www.addthis.com\\/dashboard to customize your tools --&gt;\\r\\n&lt;script type=&quot;text\\/javascript&quot; src=&quot;\\/\\/s7.addthis.com\\/js\\/300\\/addthis_widget.js#pubid=ra-4f89a9d74637536f&quot; async=&quot;async&quot;&gt;&lt;\\/script&gt;\\r\\n&lt;!-- Go to www.addthis.com\\/dashboard to customize your tools --&gt;\\r\\n&lt;div class=&quot;addthis_native_toolbox&quot;&gt;&lt;\\/div&gt;"}', 1),
(39083, 0, 'soconfig', 'soconfig_general', '{"themecolor":"pink","layouts":"1","cpanel":"0","backtop":"1","scroll_animation":"0","copyright":"\\u00a9 2015 SO Shoppystore. All Rights Reserved.","logo_position":"left","searchbox":"1","toppanel_status":"0","toppanel_type":"1","phone_status":"1","1":{"contact_number":"0123 456 7891","welcome_message":"Email: Contact@domain.com","footer_socials_title":"Contact Us","footer_socials":"&lt;p&gt;Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.&lt;\\/p&gt;\\r\\n\\r\\n&lt;ul class=&quot;contact-address&quot;&gt;\\r\\n\\r\\n&lt;li&gt;&lt;span class=&quot;fa fa-map-marker&quot;&gt;&amp;nbsp;&lt;\\/span&gt; No 304, Sky Tower, New York, USA&lt;\\/li&gt;\\r\\n\\r\\n&lt;li&gt;&lt;span class=&quot;fa fa-mobile&quot;&gt;&amp;nbsp;&lt;\\/span&gt;(+800) 1234 5678 90&lt;\\/li&gt;\\r\\n\\r\\n&lt;li&gt;&lt;span class=&quot;fa fa-envelope-o&quot;&gt;&amp;nbsp;&lt;\\/span&gt; Email: &lt;a href=&quot;#&quot;&gt; Contact@gmail.com&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;","custom_html_title":"Why Choose Us","customblock_html":"&lt;ul class=&quot;list-links menu&quot;&gt;\\r\\n\\r\\n\\r\\n&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;link&quot;&gt;About us&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;link&quot;&gt;Blog&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;link&quot;&gt;Company&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;link&quot;&gt;Investor Relations&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;#&quot; title=&quot;link&quot;&gt;Typography&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\r\\n\\r\\n&lt;\\/ul&gt;"},"2":{"contact_number":"0123 456 7891","welcome_message":"Email: Contact@domain.com","footer_socials_title":"Contact Us","footer_socials":"&lt;p&gt;Maecenas euismod felis et purus consectetur, quis fermentum velition. Aenean egestas quis turpis vehicula.&lt;\\/p&gt;\\r\\n\\r\\n&lt;ul class=&quot;contact-address&quot;&gt;&lt;li&gt;&lt;span class=&quot;fa fa-map-marker&quot;&gt;&amp;nbsp;&lt;\\/span&gt; No 304, Sky Tower, New York, USA&lt;\\/li&gt;&lt;li&gt;&lt;span class=&quot;fa fa-mobile&quot;&gt;&amp;nbsp;&lt;\\/span&gt;(+800) 1234 5678 90&lt;\\/li&gt;&lt;li&gt;&lt;span class=&quot;fa fa-envelope-o&quot;&gt;&amp;nbsp;&lt;\\/span&gt; Email: &lt;a href=&quot;http:\\/\\/localhost\\/opencart\\/so_shoppystore\\/admin\\/#&quot;&gt; Contact@gmail.com&lt;\\/a&gt;&lt;\\/li&gt;&lt;\\/ul&gt;","custom_html_title":"Why Choose Us","customblock_html":"&lt;ul class=&quot;list-links menu&quot;&gt;&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;http:\\/\\/localhost\\/opencart\\/so_shoppystore\\/admin\\/#&quot; title=&quot;link&quot;&gt;About us&lt;\\/a&gt;&lt;\\/li&gt;&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;http:\\/\\/localhost\\/opencart\\/so_shoppystore\\/admin\\/#&quot; title=&quot;link&quot;&gt;Blog&lt;\\/a&gt;&lt;\\/li&gt;&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;http:\\/\\/localhost\\/opencart\\/so_shoppystore\\/admin\\/#&quot; title=&quot;link&quot;&gt;Company&lt;\\/a&gt;&lt;\\/li&gt;&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;http:\\/\\/localhost\\/opencart\\/so_shoppystore\\/admin\\/#&quot; title=&quot;link&quot;&gt;Investor Relations&lt;\\/a&gt;&lt;\\/li&gt;&lt;li class=&quot;item-links&quot;&gt;&lt;a href=&quot;http:\\/\\/localhost\\/opencart\\/so_shoppystore\\/admin\\/#&quot; title=&quot;link&quot;&gt;Typography&lt;\\/a&gt;&lt;\\/li&gt;&lt;\\/ul&gt;"},"welcome_message_status":"1","wishlist_status":"1","checkout_status":"0","lang_status":"1","socials_status":"1","footerpayment_status":"1","footerpayment":"&lt;div class=&quot;block-payment&quot;&gt;&lt;img src=&quot;image\\/catalog\\/demo\\/icon\\/payment.png&quot; alt=&quot;payment&quot;&gt;&lt;\\/div&gt;","customblock_status":"1"}', 1),
(38521, 2, 'config', 'config_name', 'SO Shoppystore- Layout 2', 0),
(38520, 2, 'config', 'config_ssl', '', 0),
(38633, 3, 'config', 'config_image_location_height', '70', 0),
(39332, 0, 'config', 'config_meta_description', ' SO Shoppystore is a premium responsive OpenCart theme that is the combination of a modern design and a powerful backend interface.', 0),
(39331, 0, 'config', 'config_meta_title', 'SO Shoppystore - Responsive Multipurpose OpenCart Theme', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_article`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article` (
  `simple_blog_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `image` text NOT NULL,
  `featured_image` text NOT NULL,
  `article_related_method` varchar(64) NOT NULL,
  `article_related_option` text NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_article_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_simple_blog_article`
--

INSERT INTO `oc_simple_blog_article` (`simple_blog_article_id`, `simple_blog_author_id`, `allow_comment`, `image`, `featured_image`, `article_related_method`, `article_related_option`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 1, '', 'catalog/blog/blog6.jpg', 'product_wise', '', 0, 1, '2015-10-01 09:00:16', '2015-10-03 08:56:28'),
(2, 1, 1, '', 'catalog/blog/blog5.jpg', 'product_wise', '', 0, 1, '2015-10-01 11:08:58', '2015-10-03 08:56:47'),
(3, 1, 1, '', 'catalog/blog/blog9.jpg', 'product_wise', '', 0, 1, '2015-10-01 11:16:48', '2015-10-03 08:56:59'),
(4, 1, 1, '', 'catalog/blog/blog4.jpg', 'product_wise', '', 0, 1, '2015-10-01 11:37:24', '2015-10-03 08:57:27'),
(5, 1, 1, '', 'catalog/blog/blog8.jpg', 'product_wise', '', 0, 1, '2015-10-01 11:42:40', '2015-10-03 08:57:41'),
(6, 1, 1, '', 'catalog/blog/blog7.jpg', 'product_wise', '', 0, 1, '2015-10-01 11:45:26', '2015-10-03 08:57:54'),
(7, 1, 1, '', 'catalog/blog/blog7.jpg', 'product_wise', '', 0, 1, '2015-10-01 11:50:51', '2015-10-03 08:58:09'),
(8, 1, 1, '', 'catalog/blog/blog2.jpg', 'product_wise', '', 0, 1, '2015-10-01 11:53:01', '2015-10-03 08:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description` (
  `simple_blog_article_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_article_description_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `oc_simple_blog_article_description`
--

INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(21, 1, 1, 'Kire tuma demonstraverunt lector', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844px;&quot;&gt;Morbi tempus, non ullamcorper euismod, erat odio suscipit purus, nec ornare lacus turpis ac purus. Mauris cursus in mi vel dignissim. Morbi mollis elit ipsum, a feugiat lectus gravida non. Aenean molestie justo sed aliquam euismod. Maecenas laoreet bibendum laoreet. Morbi tempor massa sit amet purus lobortis, non porta tellus dignissim. Proin dictum justo a nisl pellentesque egestas.Nulla commodo euismod nisi ac bibendum. Mauris in pellentesque tellus, in cursus magna. Sed volutpat dui bibendum mi molestie, at volutpat nunc dictum. Fusce sagittis massa id eros scelerisque, eget accumsan magna lacinia. Nullam posuere neque at neque dictum interdum&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(22, 1, 2, 'Kire tuma demonstraverunt lector', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844px;&quot;&gt;Morbi tempus, non ullamcorper euismod, erat odio suscipit purus, nec ornare lacus turpis ac purus. Mauris cursus in mi vel dignissim. Morbi mollis elit ipsum, a feugiat lectus gravida non. Aenean molestie justo sed aliquam euismod. Maecenas laoreet bibendum laoreet. Morbi tempor massa sit amet purus lobortis, non porta tellus dignissim. Proin dictum justo a nisl pellentesque egestas.Nulla commodo euismod nisi ac bibendum. Mauris in pellentesque tellus, in cursus magna. Sed volutpat dui bibendum mi molestie, at volutpat nunc dictum. Fusce sagittis massa id eros scelerisque, eget accumsan magna lacinia. Nullam posuere neque at neque dictum interdum&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(23, 2, 1, 'Biten demonstraverunt lector legere legunt saepius', '&lt;p style=&quot;line-height: 15.5844px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;', '', ''),
(24, 2, 2, 'Biten demonstraverunt lector legere legunt saepius', '&lt;p style=&quot;line-height: 15.5844px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 15.5844px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;', '', ''),
(25, 3, 1, 'Commodo laoreet semper tincidunt lorem ', '&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;', '', ''),
(26, 3, 2, 'Commodo laoreet semper tincidunt lorem ', '&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;', '', ''),
(27, 4, 1, 'Donec tellus Nulla lorem Nullam elit id ut', '&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;', '', ''),
(28, 4, 2, 'Donec tellus Nulla lorem Nullam elit id ut', '&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p style=&quot;line-height: 17.1429px;&quot;&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;', '', ''),
(29, 5, 1, 'Neque porro quisquam est, qui dolorem ipsum', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1429px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(30, 5, 2, 'Neque porro quisquam est, qui dolorem ipsum', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1429px;&quot;&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(31, 6, 1, 'Nire tmas kite traverunt lector legere legunt', '&lt;p style=&quot;padding: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Regular;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ''Open Sans'', sans-serif; line-height: 15.5844163894653px;&quot;&gt;Neque\r\n porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,\r\n adipisci velit, sed quia non numquam eius modi tempora incidunt ut \r\nlabore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima \r\nveniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, \r\nnisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure \r\nreprehenderit qui in ea voluptate velit esse quam nihil molestiae \r\nconsequatur, vel illum qui dolorem eum fugiat quo voluptas nulla \r\npariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \r\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis \r\nsuscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis \r\nautem vel eum iure reprehenderit qui in ea voluptate velit esse quam \r\nnihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(32, 6, 2, 'Nire tmas kite traverunt lector legere legunt', '&lt;p style=&quot;padding: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Roboto, Regular;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ''Open Sans'', sans-serif; line-height: 15.5844163894653px;&quot;&gt;Neque\r\n porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,\r\n adipisci velit, sed quia non numquam eius modi tempora incidunt ut \r\nlabore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima \r\nveniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, \r\nnisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure \r\nreprehenderit qui in ea voluptate velit esse quam nihil molestiae \r\nconsequatur, vel illum qui dolorem eum fugiat quo voluptas nulla \r\npariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \r\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis \r\nsuscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis \r\nautem vel eum iure reprehenderit qui in ea voluptate velit esse quam \r\nnihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(33, 7, 1, 'Nure caten raverunt lector legere', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844px;&quot;&gt;Neque\r\n porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,\r\n adipisci velit, sed quia non numquam eius modi tempora incidunt ut \r\nlabore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima \r\nveniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, \r\nnisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure \r\nreprehenderit qui in ea voluptate velit esse quam nihil molestiae \r\nconsequatur, vel illum qui dolorem eum fugiat quo voluptas nulla \r\npariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \r\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis \r\nsuscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis \r\nautem vel eum iure reprehenderit qui in ea voluptate velit esse quam \r\nnihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(34, 7, 2, 'Nure caten raverunt lector legere', '&lt;p&gt;&lt;span style=&quot;line-height: 15.5844px;&quot;&gt;Neque\r\n porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,\r\n adipisci velit, sed quia non numquam eius modi tempora incidunt ut \r\nlabore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima \r\nveniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, \r\nnisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure \r\nreprehenderit qui in ea voluptate velit esse quam nihil molestiae \r\nconsequatur, vel illum qui dolorem eum fugiat quo voluptas nulla \r\npariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \r\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis \r\nsuscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis \r\nautem vel eum iure reprehenderit qui in ea voluptate velit esse quam \r\nnihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum \r\nquia dolor sit amet, consectetur, adipisci velit, sed quia non numquam \r\neius modi tempora incidunt ut labore et dolore magnam aliquam quaerat \r\nvoluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam \r\ncorporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?\r\n Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse \r\nquam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo \r\nvoluptas nulla pariatur?&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(35, 8, 1, 'Ac tincidunt Suspendisse malesuada', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In \r\nCurabitur magna. Euismod euismod Suspendisse tortor ante adipiscing \r\nrisus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum \r\nconsequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique\r\n auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna \r\ntortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue\r\n eget dapibus congue tincidunt senectus nibh risus Phasellus tristique \r\njusto. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent \r\nmauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus\r\n nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis \r\nvitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit \r\nipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus \r\nligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam \r\nVivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium \r\neros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id \r\nauctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum\r\n faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum \r\nornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit \r\nVestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac \r\nsed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum\r\n auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit \r\nVestibulum.&lt;/p&gt;\r\n&lt;/div&gt;', '', ''),
(36, 8, 2, 'Ac tincidunt Suspendisse malesuada', '&lt;div class=&quot;itemFullText&quot;&gt;\r\n&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In \r\nCurabitur magna. Euismod euismod Suspendisse tortor ante adipiscing \r\nrisus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum \r\nconsequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique\r\n auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna \r\ntortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;\r\n\r\n&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue\r\n eget dapibus congue tincidunt senectus nibh risus Phasellus tristique \r\njusto. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent \r\nmauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus\r\n nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis \r\nvitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit \r\nipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus \r\nligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam \r\nVivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium \r\neros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id \r\nauctor nascetur ut. Ac elit vitae.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum\r\n faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum \r\nornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit \r\nVestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac \r\nsed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum\r\n auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit \r\nVestibulum.&lt;/p&gt;\r\n&lt;/div&gt;', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_description_additional`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description_additional`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_description_additional` (
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `additional_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_product_related`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_product_related`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_product_related` (
  `simple_blog_article_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_category`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_category` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_simple_blog_article_to_category`
--

INSERT INTO `oc_simple_blog_article_to_category` (`simple_blog_article_id`, `simple_blog_category_id`) VALUES
(1, 5),
(1, 2),
(1, 3),
(1, 4),
(1, 1),
(2, 5),
(2, 2),
(2, 3),
(2, 4),
(2, 1),
(3, 5),
(3, 2),
(3, 3),
(3, 4),
(3, 1),
(4, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 1),
(5, 5),
(5, 2),
(5, 3),
(5, 4),
(5, 1),
(6, 5),
(6, 2),
(6, 3),
(6, 4),
(6, 1),
(7, 5),
(7, 2),
(7, 3),
(7, 4),
(7, 1),
(8, 5),
(8, 2),
(8, 3),
(8, 4),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_layout` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_store`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_article_to_store` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_simple_blog_article_to_store`
--

INSERT INTO `oc_simple_blog_article_to_store` (`simple_blog_article_id`, `store_id`) VALUES
(1, 0),
(1, 2),
(1, 3),
(1, 4),
(2, 0),
(2, 2),
(2, 3),
(2, 4),
(3, 0),
(3, 2),
(3, 3),
(3, 4),
(4, 0),
(4, 2),
(4, 3),
(4, 4),
(5, 0),
(5, 2),
(5, 3),
(5, 4),
(6, 0),
(6, 2),
(6, 3),
(6, 4),
(7, 0),
(7, 2),
(7, 3),
(7, 4),
(8, 0),
(8, 2),
(8, 3),
(8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_author`
--

DROP TABLE IF EXISTS `oc_simple_blog_author`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_author` (
  `simple_blog_author_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_simple_blog_author`
--

INSERT INTO `oc_simple_blog_author` (`simple_blog_author_id`, `name`, `image`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Admin', '', 1, '2015-10-01 08:58:07', '2015-10-01 15:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_author_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_author_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_author_description` (
  `simple_blog_author_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_description_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_simple_blog_author_description`
--

INSERT INTO `oc_simple_blog_author_description` (`simple_blog_author_description_id`, `simple_blog_author_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `date_added`) VALUES
(3, 1, 1, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(4, 1, 2, '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_category`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_simple_blog_category`
--

INSERT INTO `oc_simple_blog_category` (`simple_blog_category_id`, `image`, `parent_id`, `top`, `blog_category_column`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, '', 0, 0, 2, 6, 0, 1, '2015-10-01 09:01:25', '2015-11-06 06:01:12'),
(2, '', 0, 0, 0, 5, 0, 1, '2015-10-01 16:12:40', '2015-10-07 15:29:07'),
(3, '', 0, 0, 0, 5, 0, 1, '2015-10-01 16:13:05', '2015-10-07 15:33:04'),
(4, '', 0, 0, 0, 5, 0, 1, '2015-10-01 16:13:27', '2015-10-07 15:33:18'),
(5, '', 0, 0, 0, 5, 0, 1, '2015-10-01 16:45:07', '2015-10-07 15:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_description`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_category_description_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `oc_simple_blog_category_description`
--

INSERT INTO `oc_simple_blog_category_description` (`simple_blog_category_description_id`, `simple_blog_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(27, 5, 1, 'Demo Category 1', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(28, 5, 2, 'Demo Category 1', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(29, 2, 1, 'Demo Category 2', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(30, 2, 2, 'Demo Category 2', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(31, 3, 1, 'Demo Category 3', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(32, 3, 2, 'Demo Category 3', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(33, 4, 1, 'Demo Category 4', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(34, 4, 2, 'Demo Category 4', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(37, 1, 1, 'Our Blog', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(38, 1, 2, 'Our Blog', '&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 22px;&quot;&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_layout` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_category_to_store` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_simple_blog_category_to_store`
--

INSERT INTO `oc_simple_blog_category_to_store` (`simple_blog_category_id`, `store_id`) VALUES
(5, 0),
(5, 2),
(5, 3),
(5, 4),
(2, 0),
(2, 2),
(2, 3),
(2, 4),
(3, 0),
(3, 2),
(3, 3),
(3, 4),
(4, 0),
(4, 2),
(4, 3),
(4, 4),
(1, 0),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_comment`
--

DROP TABLE IF EXISTS `oc_simple_blog_comment`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_comment` (
  `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_simple_blog_comment`
--

INSERT INTO `oc_simple_blog_comment` (`simple_blog_comment_id`, `simple_blog_article_id`, `simple_blog_article_reply_id`, `author`, `comment`, `status`, `date_added`, `date_modified`) VALUES
(1, 8, 0, 'ngant', 'Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet V', 1, '2015-10-02 06:38:54', '2015-10-06 17:20:26'),
(2, 8, 0, 'ngant', 'ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentu', 1, '2015-10-02 06:57:52', '2015-10-06 17:19:23'),
(3, 8, 2, 'admin', ' Vestibulum consequat convallis fringilla Vestibulum ', 1, '2015-10-06 17:19:23', '2015-10-06 17:19:23'),
(4, 7, 0, 'phuong', 'sdfghjml;,.ãzDCFGHJKLÃZdfghjkl', 1, '2015-10-08 23:31:49', '2015-10-08 23:31:49'),
(5, 7, 4, 'phuong1', 'jfkasjhdfjksdxnvkz,dmxnck', 1, '2015-10-08 23:32:20', '2015-10-08 23:32:20'),
(6, 7, 0, 'phuong2', 'jdksahfdkjszndxfkcj,szmx', 1, '2015-10-08 23:32:38', '2015-10-08 23:32:38'),
(7, 8, 0, 'fsadfgcxvb', 'dfsdzgdhjkluoi', 1, '2015-10-08 23:39:11', '2015-10-08 23:39:11'),
(8, 8, 0, 'zXSDcfbghjk', 'sfdmhj,knlk;m', 1, '2015-10-09 05:55:49', '2015-10-09 05:55:49'),
(9, 8, 8, 'nguyennguyen', 'ljasnfkcjsdmflkcjmsdkzfjxncks,dMHznfck,sdNZFkc,smdx', 1, '2015-12-24 00:18:01', '2015-12-24 00:18:01'),
(10, 8, 0, 'nguyenphuong', 'kfsjzdfmlkasmdfl.ckamszdl.fxcmlsdkz,', 1, '2015-12-24 00:18:33', '2015-12-24 00:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_related_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_related_article`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_related_article` (
  `simple_blog_related_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_related_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_related_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_view`
--

DROP TABLE IF EXISTS `oc_simple_blog_view`;
CREATE TABLE IF NOT EXISTS `oc_simple_blog_view` (
  `simple_blog_view_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `view` int(16) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_view_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_simple_blog_view`
--

INSERT INTO `oc_simple_blog_view` (`simple_blog_view_id`, `simple_blog_article_id`, `view`, `date_added`, `date_modified`) VALUES
(1, 1, 2, '2015-10-01 09:54:37', '2015-12-23 17:05:19'),
(2, 8, 175, '2015-10-01 14:01:41', '2016-08-10 19:53:21'),
(3, 7, 9, '2015-10-06 17:18:18', '2015-12-25 10:41:57'),
(4, 6, 6, '2015-10-06 17:18:19', '2015-12-25 12:47:06'),
(5, 5, 3, '2015-10-06 17:18:21', '2015-12-26 12:34:38'),
(6, 4, 1, '2015-12-19 15:50:43', '2015-12-19 15:50:43'),
(7, 3, 1, '2015-12-19 15:52:18', '2015-12-19 15:52:18'),
(8, 2, 2, '2015-12-24 02:13:03', '2015-12-24 02:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_store`
--

INSERT INTO `oc_store` (`store_id`, `name`, `url`, `ssl`) VALUES
(2, 'SO Shoppystore- Layout 2', 'http://192.168.1.15/ytc_templates/opencart/so_shoppystore/layout2/', ''),
(3, 'SO Shoppystore - Layout 3', 'http://192.168.1.15/ytc_templates/opencart/so_shoppystore/layout3/', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1787 ;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(1786, 'product_id=48', 'ipod-classic'),
(1741, 'category_id=20', 'desktops'),
(1743, 'category_id=26', 'pc'),
(1742, 'category_id=27', 'mac'),
(1622, 'manufacturer_id=8', 'apple'),
(1758, 'information_id=4', 'about_us'),
(1770, 'product_id=42', 'test'),
(1754, 'category_id=34', 'mp3-players'),
(1735, 'category_id=18', 'laptop-notebook'),
(1736, 'category_id=46', 'macs'),
(1737, 'category_id=45', 'windows'),
(1748, 'category_id=25', 'component'),
(1751, 'category_id=29', 'mouse'),
(1752, 'category_id=28', 'monitor'),
(1749, 'category_id=35', 'test1'),
(1738, 'category_id=30', 'printer'),
(1750, 'category_id=31', 'scanner'),
(1739, 'category_id=32', 'web-camera'),
(1753, 'category_id=57', 'tablet'),
(1734, 'category_id=17', 'software'),
(1740, 'category_id=24', 'Health-Beauty'),
(1733, 'category_id=33', 'Automotive &amp; Motocrycle'),
(1746, 'category_id=43', 'test11'),
(1745, 'category_id=44', 'test12'),
(1747, 'category_id=47', 'test15'),
(1771, 'product_id=30', 'canon-eos-5d'),
(1775, 'product_id=47', 'hp-lp3065'),
(1780, 'product_id=28', 'htc-touch-hd'),
(1767, 'product_id=43', 'macbook'),
(1769, 'product_id=44', 'macbook-air'),
(1723, 'product_id=45', 'macbook-pro'),
(1774, 'product_id=31', 'nikon-d300'),
(1768, 'product_id=29', 'palm-treo-pro'),
(1778, 'product_id=35', 'product-8'),
(1779, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(1713, 'product_id=33', 'samsung-syncmaster-941bw'),
(1776, 'product_id=46', 'sony-vaio'),
(1647, 'product_id=41', 'imac'),
(1785, 'product_id=40', 'iphone'),
(1772, 'product_id=36', 'ipod-nano'),
(1783, 'product_id=34', 'ipod-shuffle'),
(1773, 'product_id=32', 'ipod-touch'),
(1623, 'manufacturer_id=9', 'canon'),
(1625, 'manufacturer_id=5', 'htc'),
(1624, 'manufacturer_id=7', 'hewlett-packard'),
(1626, 'manufacturer_id=6', 'palm'),
(1629, 'manufacturer_id=10', 'sony'),
(1759, 'information_id=6', 'delivery'),
(1760, 'information_id=3', 'privacy'),
(1463, 'information_id=5', 'terms'),
(1106, 'pavblog/category=21', '1'),
(1177, 'pavblog/blog=7', ''),
(1172, 'pavblog/blog=9', ''),
(1173, 'pavblog/blog=11', ''),
(1107, 'pavblog/category=22', ''),
(1108, 'pavblog/category=23', ''),
(1110, 'pavblog/category=20', ''),
(1109, 'pavblog/category=24', ''),
(1174, 'pavblog/blog=10', ''),
(1176, 'pavblog/blog=12', ''),
(1175, 'pavblog/blog=13', ''),
(1171, 'pavblog/blog=14', ''),
(1170, 'pavblog/blog=15', ''),
(1495, 'simple_blog_author_id=1', 'market'),
(1507, 'simple_blog_article_id=1', 'market'),
(1579, 'simple_blog_category_id=1', 'market'),
(1508, 'simple_blog_article_id=2', 'Biten demonstraverunt lector legere legunt saepius'),
(1509, 'simple_blog_article_id=3', 'Commodo laoreet semper tincidunt lorem '),
(1510, 'simple_blog_article_id=4', 'Donec tellus Nulla lorem Nullam elit id ut'),
(1511, 'simple_blog_article_id=5', 'Neque porro quisquam est, qui dolorem ipsum'),
(1512, 'simple_blog_article_id=6', 'Nire tmas kite traverunt lector legere legunt'),
(1513, 'simple_blog_article_id=7', 'Nure caten raverunt lector legere'),
(1514, 'simple_blog_article_id=8', 'Ac tincidunt Suspendisse malesuada'),
(1517, 'simple_blog_category_id=2', 'Demo Category2'),
(1518, 'simple_blog_category_id=3', 'Demo Category3'),
(1519, 'simple_blog_category_id=4', 'Demo Category4'),
(1516, 'simple_blog_category_id=5', 'Demo Category1'),
(1603, 'category_id=84', ''),
(1604, 'category_id=85', ''),
(1605, 'category_id=86', ''),
(1606, 'category_id=87', ''),
(1607, 'category_id=88', ''),
(1704, 'category_id=99', ''),
(1609, 'category_id=90', ''),
(1610, 'category_id=91', ''),
(1611, 'category_id=92', ''),
(1612, 'category_id=93', ''),
(1703, 'category_id=98', ''),
(1680, 'product_id=67', ''),
(1681, 'product_id=68', ''),
(1682, 'product_id=69', ''),
(1683, 'product_id=70', ''),
(1685, 'product_id=72', ''),
(1693, 'category_id=97', ''),
(1781, 'manufacturer_id=15', 'Seller');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'c163a541852fd4982861dabc0b316194b68a9d0a', 'vFow3p0U7', 'John', 'Doe', 'admin@development.com', '', '', '::1', 1, '2016-08-10 06:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/mcategory","catalog\\/mproduct","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/newsletter","common\\/profile","common\\/sass","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/layout","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_button","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/category_menu","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/manufacturers","module\\/newsletters","module\\/pp_button","module\\/pp_login","module\\/simple_blog","module\\/simple_blog_category","module\\/slideshow","module\\/so_basic_products","module\\/so_category_slider","module\\/so_deals","module\\/so_extra_slider","module\\/so_html","module\\/so_latest_blog","module\\/so_listing_tabs","module\\/so_megamenu","module\\/so_popular_tags","module\\/so_searchpro","module\\/soconfig","module\\/special","module\\/store","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_checkout","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/custom_field","sale\\/customer","sale\\/customer_ban_ip","sale\\/customer_group","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","simple_blog\\/article","simple_blog\\/author","simple_blog\\/category","simple_blog\\/comment","simple_blog\\/install","simple_blog\\/report","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/soconfig","module\\/soconfig","module\\/so_related_tabs"],"modify":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/mcategory","catalog\\/mproduct","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/newsletter","common\\/profile","common\\/sass","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/layout","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_button","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/category_menu","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/manufacturers","module\\/newsletters","module\\/pp_button","module\\/pp_login","module\\/simple_blog","module\\/simple_blog_category","module\\/slideshow","module\\/so_basic_products","module\\/so_category_slider","module\\/so_deals","module\\/so_extra_slider","module\\/so_html","module\\/so_latest_blog","module\\/so_listing_tabs","module\\/so_megamenu","module\\/so_popular_tags","module\\/so_searchpro","module\\/soconfig","module\\/special","module\\/store","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_checkout","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/custom_field","sale\\/customer","sale\\/customer_ban_ip","sale\\/customer_group","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","simple_blog\\/article","simple_blog\\/author","simple_blog\\/category","simple_blog\\/comment","simple_blog\\/install","simple_blog\\/report","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","module\\/soconfig","module\\/soconfig","module\\/so_related_tabs"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4231 ;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_article`
--

DROP TABLE IF EXISTS `simple_blog_article`;
CREATE TABLE IF NOT EXISTS `simple_blog_article` (
  `simple_blog_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `image` text NOT NULL,
  `featured_image` text NOT NULL,
  `article_related_method` varchar(64) NOT NULL,
  `article_related_option` text NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_article_description`
--

DROP TABLE IF EXISTS `simple_blog_article_description`;
CREATE TABLE IF NOT EXISTS `simple_blog_article_description` (
  `simple_blog_article_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_article_description_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_article_description_additional`
--

DROP TABLE IF EXISTS `simple_blog_article_description_additional`;
CREATE TABLE IF NOT EXISTS `simple_blog_article_description_additional` (
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `additional_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_article_product_related`
--

DROP TABLE IF EXISTS `simple_blog_article_product_related`;
CREATE TABLE IF NOT EXISTS `simple_blog_article_product_related` (
  `simple_blog_article_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_article_to_category`
--

DROP TABLE IF EXISTS `simple_blog_article_to_category`;
CREATE TABLE IF NOT EXISTS `simple_blog_article_to_category` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_article_to_layout`
--

DROP TABLE IF EXISTS `simple_blog_article_to_layout`;
CREATE TABLE IF NOT EXISTS `simple_blog_article_to_layout` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_article_to_store`
--

DROP TABLE IF EXISTS `simple_blog_article_to_store`;
CREATE TABLE IF NOT EXISTS `simple_blog_article_to_store` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_author`
--

DROP TABLE IF EXISTS `simple_blog_author`;
CREATE TABLE IF NOT EXISTS `simple_blog_author` (
  `simple_blog_author_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_author_description`
--

DROP TABLE IF EXISTS `simple_blog_author_description`;
CREATE TABLE IF NOT EXISTS `simple_blog_author_description` (
  `simple_blog_author_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_description_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_category`
--

DROP TABLE IF EXISTS `simple_blog_category`;
CREATE TABLE IF NOT EXISTS `simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_category_description`
--

DROP TABLE IF EXISTS `simple_blog_category_description`;
CREATE TABLE IF NOT EXISTS `simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_category_description_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_category_to_layout`
--

DROP TABLE IF EXISTS `simple_blog_category_to_layout`;
CREATE TABLE IF NOT EXISTS `simple_blog_category_to_layout` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_category_to_store`
--

DROP TABLE IF EXISTS `simple_blog_category_to_store`;
CREATE TABLE IF NOT EXISTS `simple_blog_category_to_store` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_comment`
--

DROP TABLE IF EXISTS `simple_blog_comment`;
CREATE TABLE IF NOT EXISTS `simple_blog_comment` (
  `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_related_article`
--

DROP TABLE IF EXISTS `simple_blog_related_article`;
CREATE TABLE IF NOT EXISTS `simple_blog_related_article` (
  `simple_blog_related_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_related_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_related_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `simple_blog_view`
--

DROP TABLE IF EXISTS `simple_blog_view`;
CREATE TABLE IF NOT EXISTS `simple_blog_view` (
  `simple_blog_view_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `view` int(16) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_view_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
