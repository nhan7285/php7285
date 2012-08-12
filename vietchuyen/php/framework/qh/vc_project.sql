-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2012 at 09:28 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vc_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(200) NOT NULL,
  `blog_info` longtext NOT NULL,
  `blog_active` int(1) NOT NULL DEFAULT '1',
  `cate_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_title`, `blog_info`, `blog_active`, `cate_id`) VALUES
(1, 'aaaaa', 'aaaaaaa', 1, 2),
(2, 'bbbbb', 'bbbbbbb', 1, 2),
(3, 'ccccc', 'cccccc', 1, 3),
(4, 'ddddd', 'dddddddd', 2, 2),
(5, 'eeee', 'eeeeeeee', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_title` varchar(200) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`cate_id`, `cate_title`) VALUES
(1, 'Kinh Te'),
(2, 'Van Hoa'),
(3, 'Xa Hoi');

-- --------------------------------------------------------

--
-- Table structure for table `cate_news`
--

CREATE TABLE IF NOT EXISTS `cate_news` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cate_news`
--

INSERT INTO `cate_news` (`cate_id`, `cate_title`) VALUES
(8, 'The Thao 24h'),
(7, 'Xa Hoi'),
(6, 'Van Hoa'),
(5, 'Kinh Te'),
(9, 'Kinh Di');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `c_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_info` text NOT NULL,
  `n_id` int(10) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `c_name`, `c_email`, `c_info`, `n_id`, `parent`) VALUES
(1, 'aaaa', 'bbbb', 'hay qua', 0, 0),
(2, 'bbb', 'ccc', 'dddd', 0, 0),
(3, 'ccc', 'ddd', 'eeee', 0, 0),
(4, 'BÃ i há»c', 'kenny@qhonline.info', 'Hay quÃ¡ tháº§y Æ¡i', 5, 0),
(5, 'BÃ¹i Quá»‘c Huy', 'huybq@qhonline.com.vn', 'Pháº§n code kia em tháº¥y hÆ¡i khÃ³ hiá»ƒu quÃ¡ tháº§y Æ¡i. GiÃºp em vá»›i.', 5, 0),
(6, 'BÃ¹i Quá»‘c Huy', 'huybq@qhonline.com.vn', 'GiÃºp em láº§n ná»¯a Ä‘i tháº§y Æ¡i', 5, 0),
(7, 'Kenny', 'kenny@qhonline.info', 'Hay quÃ¡ báº¡n Æ¡i', 0, 0),
(8, 'gfhg', 'hgfh', 'ghfgh', 0, 0),
(9, 'dfsdfsdf', 'sdfsdfds', 'fdsfds', 0, 0),
(10, 'BÃ¹i Quá»‘c Huy', 'kenny@qhonline.info', 'Tháº§y Æ¡i, cá»©u em zá»›i hixhixhix', 0, 0),
(11, 'BÃ¹i Quá»‘c Huy', 'kenny@qhonline.info', 'ChÃ¡n quÃ¡ Ä‘i tháº§y Æ¡i huhu', 5, 0),
(12, 'Kenny', 'kenny@qhonline.info', 'BÃ i há»c nÃ y cÃ¡c báº¡n tá»± thá»±c hÃ nh Ä‘i nhÃ©. Good luck to you.', 5, 0),
(13, 'Kenny', 'kenny@qhonline.info', 'to all: CÃ¡c báº¡n vui lÃ²ng viáº¿t bÃ i cÃ³ dáº¥u nhÃ©. Äá»c khÃ´ng Ä‘Æ°á»£c thÃ¬ lÃ m sao mÃ  giÃºp cÃ¡c báº¡n Ä‘Æ°á»£c.', 5, 0),
(14, 'Jacky', 'kenny@qhonline.info', 'BÃ i nÃ y khÃ³ quÃ¡ tháº§y Æ¡i.', 5, 0),
(15, 'Jacky', 'jacky111@yahoo.com', 'BÃ i nÃ y hÆ¡i bá»‹ khÃ³ Ä‘Ã³ tháº§y Æ¡i !!!!', 5, 0),
(16, 'Jacky', 'aaaa@aaa.com', 'KhÃ³ quÃ¡ Ä‘i tháº§y Æ¡i, hix hix', 5, 12),
(17, 'Kenny', 'kenny@qhonline.info', 'KhÃ³ gÃ¬ mÃ  khÃ³, em pháº£i cá»‘ gáº¯ng mÃ  lÃ m thÃ´i.', 5, 12),
(18, 'huybq', 'huybq@qhonline.com.vn', 'CÃ¡m Æ¡n tháº§y, bÃ i há»c hay láº¯m áº¡', 5, 13),
(19, 'Kenny', 'kenny@qhonline.info', 'CÃ¡c báº¡n nhanh chÃ³ng hoÃ n táº¥t vÃ  ná»™p bÃ i cho tÃ´i sá»›m nhÃ©.', 5, 0),
(20, 'abcd', 'abcd@yahoo.com', 'khÃ³ quÃ¡ tháº§y Æ¡i', 5, 14),
(21, 'Kenny', 'kenny@qhonline.info', 'hay qua1 thay62 oi7', 5, 0),
(22, 'abc', 'sdasd', 'saddas', 5, 0),
(23, 'cdef', 'cde@qhonline.info', 'BÃ i viáº¿t hay quÃ¡', 5, 0),
(24, 'Huy', 'huy@yahoo.com', 'BÃ i viáº¿t khÃ´ng hay...', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `lv_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lv_name` varchar(50) NOT NULL,
  PRIMARY KEY (`lv_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`lv_id`, `lv_name`) VALUES
(1, 'member'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `mbooks`
--

CREATE TABLE IF NOT EXISTS `mbooks` (
  `books_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `books_title` varchar(255) NOT NULL,
  `books_author` varchar(255) NOT NULL,
  `books_img` varchar(255) NOT NULL,
  `books_thumb` varchar(255) NOT NULL,
  `books_price` double NOT NULL,
  PRIMARY KEY (`books_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mbooks`
--

INSERT INTO `mbooks` (`books_id`, `books_title`, `books_author`, `books_img`, `books_thumb`, `books_price`) VALUES
(1, 'PHP Can Ban', 'Kenny', '', '', 96),
(2, 'PHP Nang Cao', 'Kenny', '', '', 121),
(3, 'PHP Framework', 'Kenny', '', '', 151),
(4, 'Pro Drupal', 'Kenny', '', '', 71);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_title` varchar(200) NOT NULL,
  `news_author` varchar(50) NOT NULL,
  `news_info` text NOT NULL,
  `news_full` longtext NOT NULL,
  `news_check` char(1) NOT NULL DEFAULT 'N',
  `news_img` varchar(255) NOT NULL,
  `cate_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_author`, `news_info`, `news_full`, `news_check`, `news_img`, `cate_id`) VALUES
(1, 'Nhá»¯ng ngÃ´i sao gÃ¢y tháº¥t vá»ng táº¡i World Cup 2010', 'dantri', 'DÃ¹ ngÃ y há»™i bÃ³ng Ä‘Ã¡ lá»›n nháº¥t hÃ nh tinh váº«n chÆ°a Ä‘i Ä‘áº¿n Ä‘oáº¡n káº¿t nhÆ°ng vá»›i nhá»¯ng ngÃ´i sao nhÆ° Rooney, Kaka, Messi, Ribery hay Ronaldo..., World Cup 2010 Ä‘Ã¡ng quÃªn hÆ¡n lÃ  Ä‘Ã¡ng nhá»›.', 'DÃ¹ ngÃ y há»™i bÃ³ng Ä‘Ã¡ lá»›n nháº¥t hÃ nh tinh váº«n chÆ°a Ä‘i Ä‘áº¿n Ä‘oáº¡n káº¿t nhÆ°ng vá»›i nhá»¯ng ngÃ´i sao nhÆ° Rooney, Kaka, Messi, Ribery hay Ronaldo..., World Cup 2010 Ä‘Ã¡ng quÃªn hÆ¡n lÃ  Ä‘Ã¡ng nhá»›.\r\n\r\nDÃ¹ ngÃ y há»™i bÃ³ng Ä‘Ã¡ lá»›n nháº¥t hÃ nh tinh váº«n chÆ°a Ä‘i Ä‘áº¿n Ä‘oáº¡n káº¿t nhÆ°ng vá»›i nhá»¯ng ngÃ´i sao nhÆ° Rooney, Kaka, Messi, Ribery hay Ronaldo..., World Cup 2010 Ä‘Ã¡ng quÃªn hÆ¡n lÃ  Ä‘Ã¡ng nhá»›.\r\n\r\nDÃ¹ ngÃ y há»™i bÃ³ng Ä‘Ã¡ lá»›n nháº¥t hÃ nh tinh váº«n chÆ°a Ä‘i Ä‘áº¿n Ä‘oáº¡n káº¿t nhÆ°ng vá»›i nhá»¯ng ngÃ´i sao nhÆ° Rooney, Kaka, Messi, Ribery hay Ronaldo..., World Cup 2010 Ä‘Ã¡ng quÃªn hÆ¡n lÃ  Ä‘Ã¡ng nhá»›.', 'Y', 'data/aaaa.jpg', 5),
(5, 'Báº¡ch tuá»™c Ä‘oÃ¡n Äá»©c tháº¯ng Uruguay', 'Tui', 'Fan hÃ¢m má»™ Äá»©c cÃ³ thá»ƒ hy vá»ng cháº¡m vÃ o chiáº¿c huy chÆ°Æ¡ng Ä‘á»“ng World Cup sau khi "tháº§y" Paul Ã´m láº¥y há»™p thá»©c Äƒn cÃ³ cá» cá»§a Äá»©c hÃ´m nay.', '<p class="Normal">\r\n	<strong>Theo b&aacute;o c&aacute;o nhanh cá»§a Bá»™ GD&amp;ÄT, káº¿t th&uacute;c buá»•i thi s&aacute;ng nay, cáº£ nÆ°á»›c c&oacute; hÆ¡n 580.000 th&iacute; sinh dá»± thi (Ä‘áº¡t 78% há»“ sÆ¡ Ä‘Äƒng k&yacute;) v&agrave;o 97 trÆ°á»ng Ä‘áº¡i há»c (ká»ƒ cáº£ khá»‘i Quá»‘c ph&ograve;ng, An ninh). Äá» thi Sinh v&agrave; Ngá»¯ vÄƒn Ä‘Æ°á»£c Ä‘&aacute;nh gi&aacute; l&agrave; náº±m trong chÆ°Æ¡ng tr&igrave;nh, kh&ocirc;ng c&oacute; sai s&oacute;t.</strong></p>\r\n<p class="Normal">\r\n	Tuy nhi&ecirc;n, Vá»¥ trÆ°á»Ÿng Gi&aacute;o dá»¥c Äáº¡i há»c Tráº§n Thá»‹ H&agrave; cho hay, cáº£ nÆ°á»›c c&oacute; 7 th&iacute; sinh bá»‹ Ä‘&igrave;nh chá»‰ do mang Ä‘iá»‡n thoáº¡i v&agrave;o ph&ograve;ng thi v&agrave; 7 th&iacute; sinh mang t&agrave;i liá»‡u bá»‹ ph&aacute;t hiá»‡n. So vá»›i buá»•i thi Ä‘áº§u Ä‘á»£t 2 nÄƒm 2009, sá»‘ th&iacute; sinh vi pháº¡m giáº£m hÆ¡n má»™t ná»­a.</p>\r\n<p class="Normal">\r\n	D&ugrave; kh&ocirc;ng xáº£y ra &ugrave;n táº¯c giao th&ocirc;ng á»Ÿ c&aacute;c th&agrave;nh phá»‘ lá»›n nhÆ°ng sá»± cá»‘ máº¥t Ä‘iá»‡n v&agrave;o Ä‘áº§u giá» thi buá»•i s&aacute;ng á»Ÿ Ä‘iá»ƒm thi cá»§a ÄH Kinh táº¿ Quá»‘c d&acirc;n (phÆ°á»ng Äá»‹nh C&ocirc;ng) v&agrave; Ä‘iá»ƒm thi cá»§a ÄH ThÄƒng Long (phÆ°á»ng Äáº¡i Kim, quáº­n Ho&agrave;ng Mai) Ä‘&atilde; khiáº¿n th&iacute; sinh khá»‘n Ä‘á»‘n. Khoáº£ng 20 ph&uacute;t sau, Ä‘iá»‡n má»›i Ä‘Æ°á»£c cáº¥p trá»Ÿ láº¡i.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" width="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt="áº¢nh: Tiáº¿n DÅ©ng." border="0" height="339" src="http://vnexpress.net/Files/Subject/3B/A1/DE/06/Thi-Van_Hanu.jpg" width="480" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="Image">\r\n				Th&iacute; sinh l&agrave;m b&agrave;i thi m&ocirc;n VÄƒn táº¡i ÄH H&agrave; Ná»™i. áº¢nh: <em>Tiáº¿n DÅ©ng.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="Lead">\r\n	S&aacute;ng nay, c&aacute;c m&ocirc;n thi Ä‘áº§u ti&ecirc;n cá»§a khá»‘i B, C, D Ä‘&atilde; diá»…n ra su&ocirc;n sáº». Th&iacute; sinh rá»i ph&ograve;ng thi vá»›i t&acirc;m tráº¡ng thoáº£i m&aacute;i v&igrave; Ä‘á» kh&ocirc;ng kh&oacute;.</p>\r\n<p class="Normal">\r\n	Táº¡i Ä‘iá»ƒm thi ÄH SÆ° pháº¡m H&agrave; Ná»™i, nhá»¯ng sÄ© tá»­ nu&ocirc;i Æ°á»›c mÆ¡ l&agrave;m gi&aacute;o vi&ecirc;n Sinh há»c cho biáº¿t Ä‘á» thi kh&aacute; dá»…. Em Nguyá»…n VÄƒn H&ugrave;ng (qu&ecirc; Äan PhÆ°á»£ng, H&agrave; Ná»™i) cho hay: &quot;Äá» Sinh vá»«a sá»©c. C&aacute;c c&acirc;u kh&oacute; l&agrave; nhá»¯ng c&acirc;u t&iacute;nh to&aacute;n nhÆ° c&acirc;u 50, c&acirc;u 18. Em &ocirc;n chÆ°a kÄ© n&ecirc;n chá»‰ cháº¯c cháº¯n khoáº£ng 60%&quot;.</p>\r\n<p class="Normal">\r\n	C&ograve;n nh&oacute;m th&iacute; sinh Ä‘áº¿n tá»« Ä&ocirc;ng Anh, H&agrave; Ná»™i th&igrave; x&ocirc;n xao b&agrave;n t&aacute;n v&agrave; hy vá»ng m&igrave;nh sáº½ Ä‘Æ°á»£c Ä‘iá»ƒm tuyá»‡t Ä‘á»‘i. Em L&ecirc; Duy Qu&acirc;n cho biáº¿t, em chá»‰ máº¥t 60 ph&uacute;t Ä‘á»ƒ l&agrave;m b&agrave;i. &quot;Äá» b&aacute;m s&aacute;t chÆ°Æ¡ng tr&igrave;nh há»c v&agrave; kiáº¿n thá»©c &ocirc;n thi. Tuy nhi&ecirc;n, em nghÄ© l&yacute; thuyáº¿t hÆ¡i d&agrave;i v&agrave; &iacute;t t&iacute;nh to&aacute;n&quot;, Qu&acirc;n n&oacute;i.</p>\r\n<p class="Normal">\r\n	C&aacute;c m&ocirc;n X&atilde; há»™i bao giá» cÅ©ng g&acirc;y nhiá»u tranh c&atilde;i bá»Ÿi Ä‘á» thi thi&ecirc;n vá» tá»± luáº­n. Táº¡i Ä‘iá»ƒm thi ÄH Ngoáº¡i ngá»¯ (ÄH Quá»‘c gia H&agrave; Ná»™i), th&iacute; sinh Mai Ng&acirc;n H&agrave;, ngÆ°á»i ra khá»i ph&ograve;ng thi Ä‘áº§u ti&ecirc;n cho hay, Ä‘á» thi VÄƒn khá»‘i D &quot;ráº¥t dá»… thá»Ÿ&quot;.</p>\r\n<p class="Normal">\r\n	M&ocirc;n VÄƒn khá»‘i C cÅ©ng Ä‘Æ°á»£c háº§u háº¿t th&iacute; sinh Ä‘&aacute;nh gi&aacute; l&agrave; hay. Em Ho&agrave;ng VÄƒn Báº¯c (Quáº£ng XÆ°Æ¡ng, Thanh H&oacute;a) dá»± thi v&agrave;o Há»c viá»‡n H&agrave;nh ch&iacute;nh Quá»‘c gia Ä‘&aacute;nh gi&aacute; Ä‘á» thi h&agrave;i h&oacute;a giá»¯a l&yacute; thuyáº¿t v&agrave; pháº§n nghá»‹ luáº­n.</p>\r\n<p class="Normal">\r\n	&quot;L&yacute; thuyáº¿t kh&ocirc;ng pháº£i l&agrave; há»c thuá»™c Ä‘Æ¡n thuáº§n m&agrave; cáº§n pháº£i tÆ° duy v&agrave; tá»•ng há»£p. Pháº§n lá»›n Ä‘á» thi d&agrave;nh Ä‘áº¥t cho th&iacute; sinh s&aacute;ng táº¡o. Em l&agrave;m pháº§n ri&ecirc;ng theo chÆ°Æ¡ng tr&igrave;nh n&acirc;ng cao v&agrave; tháº¥y c&aacute;c c&acirc;u há»i á»Ÿ pháº§n n&agrave;y cáº§n pháº£i suy nghÄ© kÄ© Ä‘á»ƒ kh&ocirc;ng Ä‘i lá»‡ch hÆ°á»›ng&quot;, Báº¯c chia sáº».</p>\r\n<p>\r\n	&nbsp;</p>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" width="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<strong><font color="#2f2f2f"><img alt="ThÃ­ sinh kiá»ƒm tra láº¡i bÃ i lÃ m sau mÃ´n thi Sinh sÃ¡ng nay." border="0" height="327" src="http://vnexpress.net/Files/Subject/3B/A1/DE/06/Thi_TP-HCM.jpg" width="480" /></font></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="Image">\r\n				<strong><font color="#2f2f2f">Th&iacute; sinh kiá»ƒm tra láº¡i káº¿t quáº£ sau m&ocirc;n thi Sinh há»c. áº¢nh: <em>Háº£i Duy&ecirc;n</em>.</font></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="Normal">\r\n	<strong><font color="#2f2f2f">Táº¡i TP HCM</font></strong>, theo ghi nháº­n táº¡i má»™t sá»‘ há»™i Ä‘á»“ng thi, káº¿t th&uacute;c m&ocirc;n Sinh, c&aacute;c th&iacute; sinh bÆ°á»›c ra vá»›i váº» h&agrave;o há»©ng. Táº¡i há»™i Ä‘á»“ng ÄH Khoa há»c tá»± nhi&ecirc;n, th&iacute; sinh Minh An Ä‘áº¿n tá»« Bi&ecirc;n, H&ograve;a Äá»“ng Nai vá»«a cháº¡y ra khá»i cá»•ng trÆ°á»ng vá»«a reo l&ecirc;n khoe vá»›i máº¹ váº» máº·t há»›n há»Ÿ: &quot;&Ocirc;i Ä‘á» dá»… láº¯m con vá»«a l&agrave;m vá»«a chÆ¡i, tháº§y gi&aacute;m thá»‹ tháº¥y l&agrave;m nhanh qu&aacute; c&ograve;n xuá»‘ng nháº¯c nhá»Ÿ kiá»ƒm tra b&agrave;i cáº©n tháº­n&quot;.</p>\r\n<p class="Normal">\r\n	Minh An cho biáº¿t, so vá»›i nÄƒm ngo&aacute;i, Ä‘á» sinh dá»… hÆ¡n nhiá»u, pháº§n lá»›n l&agrave; l&yacute; thuyáº¿t, em l&agrave;m Ä‘Æ°á»£c khoáº£ng 8 - 9 Ä‘iá»ƒm. C&oacute; gáº§n 10 c&acirc;u b&agrave;i táº­p nhÆ°ng cÅ©ng Ä‘Æ¡n giáº£n, xoay quanh viá»‡c ph&acirc;n t&iacute;ch Ä‘á»‹nh luáº­t Menden, li&ecirc;n káº¿t giá»›i t&iacute;nh, ho&aacute;n vá»‹ gen v&agrave; &aacute;p dá»¥ng c&ocirc;ng thá»©c l&agrave; ra káº¿t quáº£.</p>\r\n<p class="Normal">\r\n	CÅ©ng theo nháº­n Ä‘á»‹nh cá»§a th&iacute; sinh Nguyá»…n Tiáº¿n Nhanh thi ng&agrave;nh C&ocirc;ng nghá»‡ sinh há»c (ÄH Khoa há»c tá»± nhi&ecirc;n), nhá»¯ng há»c sinh kh&aacute; c&oacute; thá»ƒ l&agrave;m Ä‘Æ°á»£c 7 - 8 Ä‘iá»ƒm. &quot;Váº¡n sá»± khá»Ÿi Ä‘áº§u nan, m&ocirc;n Ä‘áº§u ti&ecirc;n m&agrave; l&agrave;m Ä‘Æ°á»£c em cÅ©ng tháº¥y vui v&agrave; hy vá»ng á»Ÿ nhá»¯ng m&ocirc;n tiáº¿p theo sáº½ l&agrave;m tá»‘t&quot;, Nhanh n&oacute;i.</p>\r\n<p class="Normal">\r\n	Khoáº£ng hÆ¡n 9h s&aacute;ng, táº¡i há»™i Ä‘á»“ng ÄH SÆ° pháº¡m báº¯t Ä‘áº§u c&oacute; th&iacute; sinh thi m&ocirc;n VÄƒn khá»‘i C ra ngo&agrave;i. Nguyá»…n Kim Chi, má»™t trong nhá»¯ng th&iacute; sinh ra sá»›m nháº¥t cho biáº¿t, Ä‘á» VÄƒn tÆ°Æ¡ng Ä‘á»‘i dá»…, gá»“m 3 c&acirc;u há»‡ cÆ¡ báº£n náº±m ho&agrave;n to&agrave;n trong chÆ°Æ¡ng tr&igrave;nh lá»›p 12 v&agrave; 1 c&acirc;u n&acirc;ng cao (lá»±a chá»n) cá»§a chÆ°Æ¡ng tr&igrave;nh lá»›p 11. TÆ°Æ¡ng tá»± nhá»¯ng nÄƒm trÆ°á»›c, cáº¥u tr&uacute;c Ä‘á» thi c&oacute; má»™t c&acirc;u dáº¡ng má»Ÿ cho th&iacute; sinh ph&aacute;t biá»ƒu cáº£m nghÄ© cá»§a m&igrave;nh vá» lá»‘i sá»‘ng Ä‘áº¡o Ä‘á»©c giáº£ - má»™t cÄƒn bá»‡nh nguy hiá»ƒm trong x&atilde; há»™i hiá»‡n nay.</p>\r\n<p class="Normal">\r\n	Theo Kim Chi c&acirc;u há»i kh&oacute; nháº¥t trong Ä‘á» l&agrave; &quot;Tá»« sá»± ngáº¡c nhi&ecirc;n cá»§a c&aacute;c nh&acirc;n váº­t h&atilde;y n&ecirc;u l&ecirc;n &yacute; nghÄ©a ná»™i dá»¥ng v&agrave; nghá»‡ thuáº­t trong t&aacute;c pháº©m &quot;Vá»£ nháº·t&quot; cá»§a nh&agrave; vÄƒn Kim L&acirc;n&quot;. &quot;Tuy c&aacute;ch há»i cá»§a ngÆ°á»i ra Ä‘á» c&oacute; kh&aacute;c má»™t ch&uacute;t, nhÆ°ng vá» cÆ¡ báº£n Ä‘&atilde; náº¯m cháº¯c ná»™i dung t&aacute;c pháº©m th&igrave; sáº½ l&agrave;m Ä‘Æ°á»£c. Em l&agrave;m chá»‰ háº¿t 2/3 thá»i gian l&agrave; xong nhÆ°ng cÅ©ng kh&ocirc;ng biáº¿t c&oacute; Ä‘Æ°á»£c 6-7 Ä‘iá»ƒm v&igrave; m&ocirc;n VÄƒn ráº¥t kh&oacute; n&oacute;i, c&ograve;n t&ugrave;y v&agrave;o &yacute; cá»§a ngÆ°á»i cháº¥m b&agrave;i&quot;, Chi nháº­n x&eacute;t.</p>\r\n<p class="Normal">\r\n	Táº¡i há»™i Ä‘á»“ng thi ÄH VÄƒn h&oacute;a TP HCM, c&aacute;c th&iacute; sinh thi khá»‘i D cho biáº¿t, m&ocirc;n VÄƒn cÅ©ng kh&aacute; nháº¹ nh&agrave;ng. &quot;M&ocirc;n ch&iacute;nh cá»§a bá»n em l&agrave; Ngoáº¡i ngá»¯ n&ecirc;n c&oacute; láº½ Ä‘á» VÄƒn sáº½ dá»… hÆ¡n khá»‘i C. Äá» thi Ä‘á»u náº±m trong chÆ°Æ¡ng tr&igrave;nh lá»›p 12 v&agrave; Ä‘&atilde; Ä‘Æ°á»£c c&aacute;c tháº§y c&ocirc; &ocirc;n táº­p ká»¹, em hy vá»ng Ä‘Æ°á»£c khoáº£ng 7 Ä‘iá»ƒm&quot;, ná»¯ th&iacute; sinh Ä‘áº¿n tá»« Ä&agrave; Láº¡t cho biáº¿t.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" width="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<strong><font color="#2f2f2f"><img alt="áº¢nh: HoÃ ng HÃ ." border="0" height="312" src="http://vnexpress.net/Files/Subject/3B/A1/DE/06/Thi%20DH%20Luat.jpg" width="470" /></font></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="Image">\r\n				<strong><font color="#2f2f2f">Th&iacute; sinh dá»± thi khá»‘i C táº¡i ÄH Luáº­t H&agrave; Ná»™i. áº¢nh: <em>Ho&agrave;ng H&agrave;.</em></font></strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="Normal">\r\n	<strong><font color="#2f2f2f">Cá»¥m thi Vinh</font></strong>, máº·c d&ugrave; trá»i váº«n náº¯ng n&oacute;ng nhÆ°ng nhiá»‡t Ä‘á»™ kh&ocirc;ng cao báº±ng nhá»¯ng ng&agrave;y trÆ°á»›c, gi&uacute;p c&aacute;c th&iacute; sinh l&agrave;m b&agrave;i kh&aacute; thoáº£i m&aacute;i. Tá»· lá»‡ th&iacute; sinh dá»± thi á»Ÿ cá»¥m n&agrave;y Ä‘áº¡t 77% trong Ä‘&oacute; thi v&agrave;o ÄH Vinh Ä‘áº¡t cao nháº¥t (82%); Há»c viá»‡n Ngoáº¡i giao c&oacute; tá»· lá»‡ th&iacute; sinh dá»± thi tháº¥p nháº¥t (46%).</p>\r\n<p class="Normal">\r\n	Táº¡i Há»™i Ä‘á»“ng thi Nguyá»…n TrÆ°á»ng Tá»™, c&aacute;c th&iacute; sinh dá»± thi khá»‘i B tá» ra kh&aacute; thoáº£i m&aacute;i v&agrave; h&agrave;i l&ograve;ng vá»›i Ä‘á» thi m&ocirc;n Sinh. &quot;Äá» thi kh&aacute; vá»«a sá»©c, em l&agrave;m háº¿t b&agrave;i v&agrave; ráº¥t hy vá»ng Ä‘á»— khá»‘i B sau khi b&agrave;i thi khá»‘i A kh&ocirc;ng tá»‘t láº¯m&quot;, th&iacute; sinh H&agrave; Thá»‹ Viá»‡t pháº¥n khá»Ÿi.</p>\r\n<p class="Normal">\r\n	C&aacute;c th&iacute; sinh dá»± thi m&ocirc;n vÄƒn khá»‘i C v&agrave; khá»‘i D cÅ©ng tá» ra kh&aacute; tá»± tin vá»›i b&agrave;i l&agrave;m cá»§a m&igrave;nh. Nhiá»u th&iacute; sinh dá»± thi khá»‘i D á»Ÿ Há»™i Ä‘á»“ng thi Qu&aacute;n B&agrave;u cho biáº¿t, c&acirc;u há»i má»Ÿ &quot;Suy nghÄ© vá» sá»± nguy háº¡i cá»§a Ä‘áº¡o Ä‘á»©c giáº£ Ä‘á»‘i vá»›i con ngÆ°á»i v&agrave; cuá»™c sá»‘ng&quot; kh&aacute; hay nhÆ°ng Ä‘á»ƒ Ä‘áº¡t Ä‘Æ°á»£c Ä‘iá»ƒm tuyá»‡t Ä‘á»‘i th&igrave; kh&oacute; v&agrave; tr&ocirc;ng chá» v&agrave;o y&ecirc;u cáº§u cá»§a Ä‘&aacute;p &aacute;n.</p>\r\n<p class="Normal">\r\n	á»ž pháº§n tá»± chá»n cá»§a chÆ°Æ¡ng tr&igrave;nh n&acirc;ng cao, nhiá»u th&iacute; sinh nháº­n x&eacute;t, c&acirc;u há»i &quot;Cáº£m nháº­n vá» chi tiáº¿t b&aacute;t ch&aacute;o h&agrave;nh cá»§a thá»‹ ná»Ÿ Ä‘Æ°a cho Ch&iacute; Ph&egrave;o&quot; v&agrave; &quot;Chi tiáº¿t áº¥m nÆ°á»›c Ä‘áº§y v&agrave; nÆ°á»›c h&atilde;y c&ograve;n áº¥m m&agrave; nh&acirc;n váº­t Tá»« d&agrave;nh sáºµn cho Há»™ (Äá»i Thá»«a, Nam Cao)&quot; máº·c d&ugrave; ráº¥t hay nhÆ°ng kh&oacute; v&igrave; váº­y nhiá»u th&iacute; sinh Ä‘&atilde; lá»±a chá»n pháº§n Ä‘á» thi cá»§a chÆ°Æ¡ng tr&igrave;nh chuáº©n Ä‘á»ƒ l&agrave;m b&agrave;i.</p>\r\n<p class="Normal">\r\n	Trao Ä‘á»•i vá»›i <em>VnExpress.net</em>, PGS TS Nguyá»…n Kim SÆ¡n, Hiá»‡u ph&oacute; ÄH Khoa há»c X&atilde; há»™i v&agrave; Nh&acirc;n vÄƒn (ÄH Quá»‘c gia H&agrave; Ná»™i) cho biáº¿t, nÄƒm nay, ÄH Quá»‘c gia c&oacute; hÆ¡n 5.000 th&iacute; sinh dá»± thi khá»‘i C, tÆ°Æ¡ng Ä‘Æ°Æ¡ng vá»›i nÄƒm 2009. C&aacute;c th&iacute; sinh n&agrave;y Ä‘Æ°á»£c bá»‘ tr&iacute; á»Ÿ 9 Ä‘iá»ƒm thi táº¡i H&agrave; Ná»™i, 1 Ä‘iá»ƒm thi táº¡i Vinh v&agrave; 1 Ä‘iá»ƒm thi Quy NhÆ¡n.</p>\r\n<p class="Normal">\r\n	&quot;D&ugrave; sá»‘ th&iacute; sinh thi v&agrave;o trÆ°á»ng giáº£m v&agrave;i chá»¥c em nhÆ°ng c&aacute;c ng&agrave;nh Lá»‹ch sá»­, Ngá»¯ vÄƒn, B&aacute;o ch&iacute;... cÅ©ng sáº½ váº«n c&oacute; Ä‘iá»ƒm Ä‘áº§u v&agrave;o tÆ°Æ¡ng Ä‘á»‘i cao&quot;, &ocirc;ng SÆ¡n n&oacute;i.</p>\r\n<p class="Normal">\r\n	T&igrave;nh h&igrave;nh thi cá»§a trÆ°á»ng chÆ°a c&oacute; g&igrave; Ä‘áº·c biá»‡t, ngoáº¡i trá»« má»™t th&iacute; sinh bá»‹ b&oacute; bá»™t, Ä‘Æ°á»£c ngÆ°á»i nh&agrave; Ä‘Æ°a Ä‘áº¿n Ä‘iá»ƒm thi v&agrave; sau Ä‘&oacute; c&aacute;c t&igrave;nh nguyá»‡n vi&ecirc;n d&igrave;u l&ecirc;n ph&ograve;ng.</p>\r\n<p class="Normal">\r\n	C&ograve;n TrÆ°á»Ÿng ph&ograve;ng Ä‘&agrave;o táº¡o ÄH H&agrave; Ná»™i L&ecirc; Quá»‘c Háº¡nh cho hay, trÆ°á»ng c&oacute; 4.400 th&iacute; sinh dá»± thi khá»‘i D, tÄƒng 7% so vá»›i nÄƒm 2009. &quot;D&ugrave; sá»‘ th&iacute; sinh tÄƒng nhÆ°ng t&ocirc;i nghÄ© sáº½ kh&ocirc;ng áº£nh hÆ°á»Ÿng g&igrave;, Ä‘iá»ƒm chuáº©n sáº½ váº«n nhÆ° má»i nÄƒm&quot;, tháº§y Háº¡nh cho hay.</p>\r\n<p class="Normal">\r\n	Káº¿t th&uacute;c buá»•i thi s&aacute;ng nay, Ä‘áº¡i diá»‡n ÄH H&agrave; Ná»™i kháº³ng Ä‘á»‹nh, kh&ocirc;ng c&oacute; th&iacute; sinh n&agrave;o vi pháº¡m quy cháº¿ thi, t&igrave;nh h&igrave;nh thi nghi&ecirc;m t&uacute;c.</p>\r\n<p class="Normal">\r\n	Chiá»u nay, th&iacute; sinh khá»‘i B v&agrave; D thi m&ocirc;n To&aacute;n, khá»‘i C thi m&ocirc;n Lá»‹ch sá»­.</p>\r\n', 'Y', 'data/09072010_eee.jpg', 8),
(3, 'Hacker Viá»‡t Nam chiáº¿m hÃ ng loáº¡t tÃ i khoáº£n iTunes?', 'dantri', 'Cá»™ng Ä‘á»“ng ngÆ°á»i dÃ¹ng iPhone vÃ  iPod cá»§a Apple Ä‘ang xÃ´n xao chuyá»‡n 40 trong tá»•ng sá»‘ 50 á»©ng dá»¥ng bÃ¡n cháº¡y nháº¥t iTunes Má»¹ thuá»™c vá» cÃ¹ng má»™t tÃ¡c giáº£: Thuat Nguyen.', 'Cá»™ng Ä‘á»“ng ngÆ°á»i dÃ¹ng iPhone vÃ  iPod cá»§a Apple Ä‘ang xÃ´n xao chuyá»‡n 40 trong tá»•ng sá»‘ 50 á»©ng dá»¥ng bÃ¡n cháº¡y nháº¥t iTunes Má»¹ thuá»™c vá» cÃ¹ng má»™t tÃ¡c giáº£: Thuat Nguyen.\r\n\r\nCá»™ng Ä‘á»“ng ngÆ°á»i dÃ¹ng iPhone vÃ  iPod cá»§a Apple Ä‘ang xÃ´n xao chuyá»‡n 40 trong tá»•ng sá»‘ 50 á»©ng dá»¥ng bÃ¡n cháº¡y nháº¥t iTunes Má»¹ thuá»™c vá» cÃ¹ng má»™t tÃ¡c giáº£: Thuat Nguyen.\r\n\r\nCá»™ng Ä‘á»“ng ngÆ°á»i dÃ¹ng iPhone vÃ  iPod cá»§a Apple Ä‘ang xÃ´n xao chuyá»‡n 40 trong tá»•ng sá»‘ 50 á»©ng dá»¥ng bÃ¡n cháº¡y nháº¥t iTunes Má»¹ thuá»™c vá» cÃ¹ng má»™t tÃ¡c giáº£: Thuat Nguyen.', 'Y', 'data/05072010_cccc.jpg', 7),
(4, '10 sa máº¡c ká»³ thÃº nháº¥t tháº¿ giá»›i ', 'dantri', 'Sa máº¡c khÃ´ng chá»‰ lÃ  nhá»¯ng vÃ¹ng Ä‘áº¥t xa xÃ´i, cÃ¡t bá»¥i, nÃ³ng vÃ  khÃ´ háº¡n. ChÃºng cÃ²n chá»©a Ä‘á»±ng vÃ´ vÃ n Ä‘iá»u kÃ¬ thÃº mÃ  Ã­t ai biáº¿t Ä‘áº¿n. HÃ£y khÃ¡m phÃ¡ tá»« 10 sa máº¡c ná»•i tiáº¿ng tháº¿ giá»›i dÆ°á»›i Ä‘Ã¢y.', '[b]Sa máº¡c khÃ´ng chá»‰ lÃ  nhá»¯ng vÃ¹ng Ä‘áº¥t xa xÃ´i, cÃ¡t bá»¥i, nÃ³ng vÃ  khÃ´ háº¡n. ChÃºng cÃ²n chá»©a Ä‘á»±ng vÃ´ vÃ n Ä‘iá»u kÃ¬ thÃº mÃ  Ã­t ai biáº¿t Ä‘áº¿n. HÃ£y khÃ¡m phÃ¡ tá»« 10 sa máº¡c ná»•i tiáº¿ng tháº¿ giá»›i dÆ°á»›i Ä‘Ã¢y.[/b]\r\n\r\ndog die\r\n\r\nSa máº¡c khÃ´ng chá»‰ lÃ  nhá»¯ng vÃ¹ng Ä‘áº¥t xa xÃ´i, cÃ¡t bá»¥i, nÃ³ng vÃ  khÃ´ háº¡n. ChÃºng cÃ²n chá»©a Ä‘á»±ng vÃ´ vÃ n Ä‘iá»u kÃ¬ thÃº mÃ  Ã­t ai biáº¿t Ä‘áº¿n. HÃ£y khÃ¡m phÃ¡ tá»« 10 sa máº¡c ná»•i tiáº¿ng tháº¿ giá»›i dÆ°á»›i Ä‘Ã¢y.\r\n\r\nSa máº¡c khÃ´ng chá»‰ lÃ  nhá»¯ng vÃ¹ng Ä‘áº¥t xa xÃ´i, cÃ¡t bá»¥i, nÃ³ng vÃ  khÃ´ háº¡n. ChÃºng cÃ²n chá»©a Ä‘á»±ng vÃ´ vÃ n Ä‘iá»u kÃ¬ thÃº mÃ  Ã­t ai biáº¿t Ä‘áº¿n. HÃ£y khÃ¡m phÃ¡ tá»« 10 sa máº¡c ná»•i tiáº¿ng tháº¿ giá»›i dÆ°á»›i Ä‘Ã¢y.', 'Y', 'data/07072010_aaa.jpg', 6),
(6, 'BÃ¡c sÄ© Ä‘Ã¢m 3 Ä‘á»“ng nghiá»‡p rá»“i tá»± sÃ¡t táº¡i bá»‡nh viá»‡n', 'Tui', '7h sÃ¡ng nay, bÃ¡c sÄ© Tráº§n Duy Thanh (36 tuá»•i, Bá»‡nh viá»‡n Ä‘a khoa huyá»‡n TÃ¢n Ká»³, Nghá»‡ An) Ä‘Ã£ Ä‘Ã¢m dao vÃ o ngá»±c tá»± sÃ¡t sau khi gÃ¢y trá»ng thÆ°Æ¡ng cho 2 bÃ¡c sÄ© vÃ  má»™t ná»¯ Ä‘iá»u dÆ°á»¡ng ngay trong lÃºc há»p giao ban.', '<p class="Lead">\r\n	7h s&aacute;ng nay, b&aacute;c sÄ© Tráº§n Duy Thanh (36 tuá»•i, Bá»‡nh viá»‡n Ä‘a khoa huyá»‡n T&acirc;n Ká»³, Nghá»‡ An) Ä‘&atilde; Ä‘&acirc;m dao v&agrave;o ngá»±c tá»± s&aacute;t sau khi g&acirc;y trá»ng thÆ°Æ¡ng cho 2 b&aacute;c sÄ© v&agrave; má»™t ná»¯ Ä‘iá»u dÆ°á»¡ng ngay trong l&uacute;c há»p giao ban.</p>\r\n<p class="Normal">\r\n	Ba náº¡n nh&acirc;n l&agrave; b&aacute;c sÄ© Nguyá»…n VÄƒn Sá»­u (Ph&oacute; khoa Ngoáº¡i), b&aacute;c sÄ© L&ocirc; VÄƒn Cung (46 tuá»•i) v&agrave; Ä‘iá»u dÆ°á»¡ng há»™ sinh Nguyá»…n Thá»‹ Há»“ng Háº¡nh (34 tuá»•i) Ä‘ang Ä‘Æ°á»£c cáº¥p cá»©u táº¡i bá»‡nh viá»‡n.</p>\r\n<p class="Normal">\r\n	Cáº£nh s&aacute;t Ä‘ang c&oacute; máº·t táº¡i bá»‡nh viá»‡n Ä‘á»ƒ ghi nháº­n hiá»‡n trÆ°á»ng v&agrave; láº¥y lá»i khai nhá»¯ng ngÆ°á»i chá»©ng kiáº¿n.</p>\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" width="1">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img border="1" height="321" src="http://vnexpress.net/Files/Subject/3B/A1/DE/04/11.jpg" width="400" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="Image">\r\n				Táº¡i Bá»‡nh vi&ecirc;n Ä‘a khoa huyá»‡n T&acirc;n Ká»³, &ocirc;ng Thanh Ä‘Æ°á»£c Ä‘&aacute;nh gi&aacute; l&agrave; b&aacute;c sÄ© c&oacute; nÄƒng lá»±c.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="Normal">\r\n	Theo th&ocirc;ng tin ban Ä‘áº§u, khoáº£ng 7h s&aacute;ng trong l&uacute;c bá»‡nh viá»‡n há»p giao ban to&agrave;n thá»ƒ, á»Ÿ ph&iacute;a dÆ°á»›i há»™i trÆ°á»ng b&aacute;c sÄ© Tráº§n Duy Thanh (c&ocirc;ng t&aacute;c táº¡i ph&ograve;ng kh&aacute;m) Ä‘&atilde; xáº£y ra c&atilde;i cá» vá»›i Ä‘iá»u dÆ°á»¡ng Háº¡nh.</p>\r\n<p class="Normal">\r\n	Sau há»“i to tiáº¿ng, &ocirc;ng Thanh báº¥t ngá» r&uacute;t dao trong ngÆ°á»i ch&eacute;m v&agrave;o ná»¯ Ä‘iá»u dÆ°á»¡ng 34 tuá»•i khiáº¿n chá»‹ gá»¥c xuá»‘ng. Tháº¥y váº­y, b&aacute;c sÄ© Sá»­u v&agrave;o cÄƒn ngÄƒn Ä‘&atilde; bá»‹ &ocirc;ng Thanh ch&eacute;m v&agrave;o tay v&agrave; lÆ°ng. &Ocirc;ng Thanh c&ograve;n tiáº¿p tá»¥c cháº¡y Ä‘áº¿n ch&eacute;m v&agrave;o máº·t ngÆ°á»i khuy&ecirc;n can tiáº¿p theo l&agrave; b&aacute;c sÄ© Cung.</p>\r\n<p class="Normal">\r\n	Khi 3 Ä‘á»“ng nghiá»‡p gá»¥c xuá»‘ng tr&ecirc;n vÅ©ng m&aacute;u, b&aacute;c sÄ© Thanh cháº¡y v&agrave;o g&oacute;c há»™i trÆ°á»ng cáº§m dao Ä‘&acirc;m tháº³ng v&agrave;o ngá»±c v&agrave; cháº¿t ngay táº¡i chá»—.</p>\r\n<p class="Normal">\r\n	Trao Ä‘á»•i vá»›i <em>VnExpress.net</em>, Gi&aacute;m Ä‘á»‘c Bá»‡nh viá»‡n Ä‘a khoa T&acirc;n Ká»³ Cao Tiáº¿n Th&agrave;nh cho biáº¿t, b&aacute;c sÄ© Thanh tá»«ng c&oacute; m&acirc;u thuáº«n vá»›i náº¡n nh&acirc;n Háº¡nh trong cuá»™c sá»‘ng v&agrave; cáº£ c&ocirc;ng viá»‡c. CÆ¡ quan nhiá»u láº§n giáº£i quyáº¿t, nháº¯c nhá»Ÿ nhÆ°ng quan há»‡ cÄƒng tháº³ng giá»¯a hai ngÆ°á»i váº«n chÆ°a tiáº¿p diá»…n.</p>\r\n<p class="Normal">\r\n	Theo gi&aacute;m Ä‘á»‘c bá»‡nh viá»‡n, &ocirc;ng Thanh l&agrave; b&aacute;c sÄ© c&oacute; nÄƒng lá»±c.</p>', 'Y', 'data/09072010_fff.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` tinyint(10) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `level` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(108, 'gen123', '123', '2'),
(85, 'kenny', '12345', '2'),
(105, 'genvivi', '12345', '2'),
(106, 'genvivi123', '123', '1'),
(63, 'quochung2', '12345', '1'),
(97, 'kiki999999', '12345', '2'),
(90, 'kakaka', '12345', '1'),
(112, 'minh2345', '12345', '1'),
(113, 'minh56478', '123', '1'),
(89, 'kiki654', '123', '1'),
(28, 'vivi123', '12345', '2'),
(102, 'Genjo456', '12345', '2'),
(73, 'taantaan', '12345', '2'),
(101, 'trankhoa', '12345', '1'),
(77, 'kiki54321', '12345', '1'),
(96, 'kiki9999', '12345', '1'),
(79, 'tantan123', '1234', '1'),
(70, 'kennypro9x', '12345', '2'),
(125, 'user1', '111', '1'),
(123, 'nhan', '111', '2'),
(126, 'user2', '222', '1'),
(127, 'nhan1', '111', '1'),
(128, 'nhan2', '222', '1'),
(129, 'nhan3', '333', '1'),
(132, 'test2', '222', '1'),
(133, 'test3', '111', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
