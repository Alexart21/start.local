-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 01 2022 г., 19:59
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `start`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `zone_id` int NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'FTqCOPEBT3fBRRunaS09zhq33MdiMo3RDGQBwpfx5gH8q3BcpzAepQOl7vw4coR86zyXdWmdn6Cux2EkLr0wrUF9O1OrDRwx4FD4EHTuVmHaFxk9sDbp5YzN63jw12ZZaSjMwRZajq0Ius2h4waehg5ozlaptw3cGI5GdA91MsjjweUFFPUjM6utUePOAQf7Wv0PnidQpxdUoYm7BIALfLusbCKORIxGufrFsyuhhqaPuuVFKxULX9x98F2TlrId', 1, '2022-01-23 19:20:42', '2022-01-23 19:20:42');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int NOT NULL,
  `api_id` int NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int NOT NULL,
  `api_id` int NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(239, 1, '955c28cc27018956f018a01199', '127.0.0.1', '2022-02-01 11:46:51', '2022-02-01 11:46:51'),
(238, 1, '86752e497d6d14ce07de1440bd', '127.0.0.1', '2022-02-01 11:45:33', '2022-02-01 11:45:33'),
(237, 1, 'fdae4fb39d3c91b0b67b3f1aa8', '127.0.0.1', '2022-02-01 11:45:24', '2022-02-01 11:45:24'),
(236, 1, 'b53b8cb6b700700c5cfc2adf92', '127.0.0.1', '2022-02-01 11:44:31', '2022-02-01 11:44:31'),
(234, 1, '3f9e5ce30a0b46a6d3942065cf', '127.0.0.1', '2022-02-01 11:43:04', '2022-02-01 11:43:04'),
(235, 1, 'b8866b4b09008859296c5c1352', '127.0.0.1', '2022-02-01 11:44:20', '2022-02-01 08:44:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int NOT NULL,
  `attribute_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute`
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
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
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
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int NOT NULL,
  `banner_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int UNSIGNED NOT NULL,
  `api_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int NOT NULL,
  `recurring_id` int NOT NULL,
  `option` text NOT NULL,
  `quantity` int NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2011-05-30 12:14:55'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2011-05-30 12:15:11'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 8, 1, '2009-02-03 14:18:11', '2022-01-27 21:30:08'),
(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Мониторы', '', 'Мониторы', '', ''),
(33, 1, 'Камеры', '', 'Камеры', '', ''),
(32, 1, 'Веб камеры', '', 'Веб камеры', '', ''),
(31, 1, 'Сканеры', '', 'Сканеры', '', ''),
(30, 1, 'Принтеры', '', 'Принтеры', '', ''),
(29, 1, 'Манипуляторы мышь', '', 'Манипуляторы мышь', '', ''),
(27, 1, 'Mac', '', 'Mac', '', ''),
(26, 1, 'PC', '', 'PC', '', ''),
(17, 1, 'Софт', '', 'Софт', '', ''),
(25, 1, 'Комплектующие', '', 'Комплектующие', '', ''),
(24, 1, 'Телефоны', '', 'Телефоны', '', ''),
(20, 1, 'Компьютеры', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Компьютеры', 'Example of category description', ''),
(35, 1, 'test 1', '', 'test 1', '', ''),
(36, 1, 'test 2', '', 'test 2', '', ''),
(37, 1, 'test 5', '', 'test 5', '', ''),
(38, 1, 'test 4', '', 'test 4', '', ''),
(39, 1, 'test 6', '', 'test 6', '', ''),
(40, 1, 'test 7', '', 'test 7', '', ''),
(41, 1, 'test 8', '', 'test 8', '', ''),
(42, 1, 'test 9', '', 'test 9', '', ''),
(34, 1, 'MP3 плееры', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 плееры', '', ''),
(18, 1, 'Ноутбуки', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Ноутбуки', '', ''),
(45, 1, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Macs', '', 'Macs', '', ''),
(57, 1, 'Планшеты', '', 'Планшеты', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int NOT NULL,
  `filter_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int NOT NULL,
  `path_id` int NOT NULL,
  `level` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(36, 25, 0),
(36, 28, 1),
(36, 36, 2),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(34, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(45, 0),
(46, 0),
(57, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Рубль', 'RUB', '', ' ₽', '0', 1.00000000, 1, '2022-01-24 09:51:05');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `language_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'Vasya', 'Pupkin', 'vasya@mail.ru', '11223344', '', '86a77b8673a89f43cd0fc5a0522a3cec9e08d3f5', 'dIvGJkQ9J', NULL, NULL, 0, 0, '', '127.0.0.1', 1, 0, '', '', '2022-01-31 10:11:01');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
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
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int NOT NULL,
  `approval` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2022-01-31 10:11:02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `order_id` int NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `order_id` int NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int NOT NULL,
  `language_id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturnHistory/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0),
(46, 'sms_alert', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/module/sms_alert', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(49, 'captcha', 'basic'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'payment', 'bank_transfer'),
(44, 'fraud', 'ip'),
(45, 'payment', 'pp_standard'),
(46, 'module', 'sms_alert'),
(47, 'module', 'latest'),
(48, 'payment', 'cheque'),
(50, 'captcha', 'google'),
(51, 'analytics', 'google'),
(52, 'payment', 'oplata'),
(53, 'captcha', 'googlev3'),
(54, 'module', 'feedback');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int NOT NULL,
  `extension_download_id` int NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'reCAPCHAv3.ocmod.zip', '2022-01-31 10:47:35'),
(2, 0, 'feedback_3.x.ocmod.zip', '2022-02-01 11:33:10');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int NOT NULL,
  `extension_install_id` int NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'admin/controller/extension/captcha/googlev3.php', '2022-01-31 10:47:37'),
(2, 1, 'catalog/controller/extension/captcha/googlev3.php', '2022-01-31 10:47:37'),
(3, 1, 'admin/language/en-gb/extension/captcha/googlev3.php', '2022-01-31 10:47:37'),
(4, 1, 'admin/language/ru-ru/extension/captcha/googlev3.php', '2022-01-31 10:47:37'),
(5, 1, 'admin/view/template/extension/captcha/googlev3.twig', '2022-01-31 10:47:37'),
(6, 1, 'catalog/language/en-gb/extension/captcha/googlev3.php', '2022-01-31 10:47:37'),
(7, 1, 'catalog/language/ru-ru/extension/captcha/googlev3.php', '2022-01-31 10:47:37'),
(8, 1, 'catalog/view/theme/default/template/extension/captcha/googlev3.twig', '2022-01-31 10:47:37'),
(9, 2, 'admin/controller/extension/module/feedback.php', '2022-02-01 11:33:11'),
(10, 2, 'catalog/controller/extension/module/feedback.php', '2022-02-01 11:33:11'),
(11, 2, 'admin/language/en-gb/extension/module/feedback.php', '2022-02-01 11:33:11'),
(12, 2, 'admin/language/ru-ru/extension/module/feedback.php', '2022-02-01 11:33:11'),
(13, 2, 'admin/view/template/extension/module/feedback.twig', '2022-02-01 11:33:11'),
(14, 2, 'catalog/language/en-gb/extension/module/feedback.php', '2022-02-01 11:33:11'),
(15, 2, 'catalog/language/ru-ru/extension/module/feedback.php', '2022-02-01 11:33:11'),
(16, 2, 'catalog/view/theme/default/template/extension/module/feedback.twig', '2022-02-01 11:33:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int NOT NULL,
  `filter_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int NOT NULL,
  `language_id` int NOT NULL,
  `filter_group_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_fraud_ip`
--

CREATE TABLE `oc_fraud_ip` (
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'Зона НДС', 'Облагаемые НДС', '2014-05-21 22:30:20', '2014-09-09 11:48:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `conversions` int NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int NOT NULL DEFAULT '0',
  `store_id` int NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `advertise_google_target_id` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int UNSIGNED NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int NOT NULL,
  `bottom` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'О нас', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', 'О нас', '', ''),
(5, 1, 'Условия соглашения', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;', 'Условия соглашения', '', ''),
(3, 1, 'Политика Безопасности', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', 'Политика Безопасности', '', ''),
(6, 1, 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru-ru.png', 'russian', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Главная / Home'),
(2, 'Товары / Product'),
(3, 'Категории / Category'),
(4, 'По умолчанию / Default'),
(5, 'Производители / Manufacturer'),
(6, 'Личный кабинет / Account'),
(7, 'Оформление заказа / Checkout'),
(8, 'Контакты / Contact'),
(9, 'Карта сайта / Sitemap'),
(10, 'Партнеры / Affiliate'),
(11, 'Статьи / Information'),
(12, 'Сравнение / Compare'),
(13, 'Поиск / Search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int NOT NULL,
  `layout_id` int NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(79, 1, 'carousel.29', 'content_top', 3),
(78, 1, 'featured.28', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2),
(77, 1, 'slideshow.27', 'content_top', 1),
(80, 1, 'feedback', 'content_bottom', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int NOT NULL,
  `layout_id` int NOT NULL,
  `store_id` int NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(55, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(2, 1, 'Миллиметр', 'мм');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int NOT NULL,
  `extension_install_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 2, 'Block with feedback', 'feedback', 'Nikita Tokarev', '1.0', 'https://t.me/majorbratishka', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Block with feedback</name>\n	<version>1.0</version>\n	<code>feedback</code>\n	<author>Nikita Tokarev</author>\n	<link>https://t.me/majorbratishka</link>\n\n    <file path=\"admin/controller/setting/setting.php\">\n        <operation>\n            <search><![CDATA[$data[\'captcha_pages\'] = array();]]></search>\n            <add position=\"after\"><![CDATA[\n				$data[\'captcha_pages\'][] = array(\n			    \'text\'  => $this->language->get(\'text_feedback\'),\n			    \'value\' => \'feedback\'\n		        );\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/language/en-gb/setting/setting.php\">\n        <operation>\n            <search><![CDATA[\n				$_[\'heading_title\']\n            ]]></search>\n            <add position=\"after\" trim=\"false\" offset=\"1\"><![CDATA[\n				$_[\'text_feedback\']              = \'Block with feedback\';\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/language/ru-ru/setting/setting.php\">\n        <operation>\n            <search><![CDATA[\n                $_[\'heading_title\']\n            ]]></search>\n            <add position=\"after\" trim=\"false\" offset=\"1\"><![CDATA[\n                $_[\'text_feedback\']              = \'Блок с обратной связью\';\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"catalog/controller/common/header.php\">\n        <operation>\n            <search><![CDATA[\n                $data[\'menu\'] = $this->load->controller(\'common/menu\');\n            ]]></search>\n            <add position=\"after\"><![CDATA[\n                $this->load->language(\'extension/module/feedback\');\n\n                $data[\'callback_active\'] = $this->config->get(\'module_feedback_header\');\n                \n                if ($this->customer->isLogged()) {\n                    $data[\'name_callback\'] = $this->customer->getFirstName() . \'&nbsp;\' . $this->customer->getLastName();\n                } else {\n                    $data[\'name_callback\'] = \'\';\n                }\n\n                if ($this->customer->isLogged()) {\n                    $data[\'phone_callback\'] = $this->customer->getTelephone();\n                } else {\n                    $data[\'phone_callback\'] = \'\';\n                }\n            ]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\n                return $this->load->view(\'common/header\', $data);\n            ]]></search>\n            <add position=\"after\" offset=\"1\"><![CDATA[\n                public function write() {\n                    $this->load->language(\'extension/module/feedback\');\n\n                    if ($this->request->server[\'REQUEST_METHOD\'] == \'POST\') {\n                        $data[\'error_name\'] =  $this->language->get(\'error_name\');\n                        $data[\'error_phone\'] =  $this->language->get(\'error_phone\');\n                        $data[\'text_success\'] = $this->language->get(\'text_success\');\n                        \n                        if ((utf8_strlen($this->request->post[\'name\']) < 3) || (utf8_strlen($this->request->post[\'name\']) > 25)) {\n                            $json[\'error\'] = $data[\'error_name\'];\n                        }\n\n                        if ((utf8_strlen($this->request->post[\'phone\']) < 3) || (utf8_strlen($this->request->post[\'phone\']) > 25)) {\n                            $json[\'error\'] = $data[\'error_phone\'];\n                        }\n                        \n                        if (!isset($json[\'error\'])) {\n                            $json[\'success\'] = $data[\'text_success\'];\n                            \n                            $mail = new Mail($this->config->get(\'config_mail_engine\'));\n                            $mail->parameter = $this->config->get(\'config_mail_parameter\');\n                            $mail->smtp_hostname = $this->config->get(\'config_mail_smtp_hostname\');\n                            $mail->smtp_username = $this->config->get(\'config_mail_smtp_username\');\n                            $mail->smtp_password = html_entity_decode($this->config->get(\'config_mail_smtp_password\'), ENT_QUOTES, \'UTF-8\');\n                            $mail->smtp_port = $this->config->get(\'config_mail_smtp_port\');\n                            $mail->smtp_timeout = $this->config->get(\'config_mail_smtp_timeout\');\n                \n                            $mail->setTo($this->config->get(\'config_email\'));\n                            $mail->setFrom($this->config->get(\'config_email\'));\n                            $mail->setSender(html_entity_decode($this->request->post[\'name\'], ENT_QUOTES, \'UTF-8\'));\n                            $mail->setSubject(html_entity_decode(sprintf($this->language->get(\'email_subject_callback\'), $this->request->post[\'name\']), ENT_QUOTES, \'UTF-8\'));\n                            $mail->setText($this->request->post[\'name\'] . \' \' . $this->request->post[\'phone\']);\n                            $mail->send();\n                        }\n                    }\n\n                    $this->response->addHeader(\'Content-Type: application/json\');\n                    $this->response->setOutput(json_encode($json));\n                }\n            ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"catalog/view/theme/*/template/common/header.twig\">\n        <operation>\n            <search><![CDATA[\n                <li><a href=\"{{ contact }}\"><i class=\"fa fa-phone\"></i></a> <span class=\"hidden-xs hidden-sm hidden-md\">{{ telephone }}</span></li>\n            ]]></search>\n            <add position=\"after\"><![CDATA[\n                {% if callback_active == 1 %}\n                <li><a href=\"#modalFeedbackHeader\" id=\"button_feedback\" data-toggle=\"modal\"><i class=\"fa fa-volume-control-phone\"></i> <span class=\"hidden-xs hidden-sm hidden-md\">{{ text_button_callback }}</span></a></li>\n                {% endif %}\n            ]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\n                <header>\n            ]]></search>\n            <add position=\"before\"><![CDATA[\n                {% if callback_active == 1 %}\n                <div class=\"modal fade\" id=\"modalFeedbackHeader\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"modalFeedbackHeaderLabel\" aria-hidden=\"true\">\n                  <div class=\"modal-dialog\" role=\"document\">\n                    <div class=\"modal-content\">\n                      <div class=\"modal-body\">\n                        <div style=\"display:inline-block; width: 100%; text-align:right;\">\n                          <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n                            <span aria-hidden=\"true\">&times;</span>\n                          </button>\n                        </div>\n                        <form class=\"form-horizontal\" id=\"form-feedback-header\">\n                          <div class=\"form-group required\">\n                            <div class=\"col-sm-12\">\n                              <label class=\"control-label\" for=\"input-name\">{{ entry_name }}</label>\n                              <input type=\"text\" name=\"name\" value=\"{{ name_callback }}\" id=\"input-name\" class=\"form-control\" />\n                            </div>\n                            <div class=\"col-sm-12\">\n                              <label class=\"control-label\" for=\"input-phone\">{{ entry_phone }}</label>\n                              <input type=\"text\" name=\"phone\" value=\"{{ phone_callback }}\" id=\"input-phone\" class=\"form-control\" />\n                            </div>\n                          </div>\n                        </form>\n                        <button type=\"button\" id=\"button_send_feedback_header\" data-loading-text=\"{{ text_loading }}\"  class=\"btn btn-primary\">{{ text_send }}</button>\n                      </div>\n                    </div>\n                  </div>\n                </div>\n                <script>\n                  $(\'#button_send_feedback_header\').on(\'click\', function () {\n                    $.ajax({\n                      url: \'index.php?route=common/header/write\',\n                      type: \'post\',\n                      dataType: \'json\',\n                      data: $(\"#form-feedback-header\").serialize(),\n                      beforeSend: function () {\n                        $(\'#button_send_feedback_header\').button(\'loading\');\n                      },\n                      complete: function () {\n                        $(\'#button_send_feedback_header\').button(\'reset\');\n                      },\n                      success: function (json) {\n                        $(\'.alert-success, .alert-danger\').remove();\n                        if (json[\'error\']) {\n                          $(\'#form-feedback-header\').after(\'<div class=\"alert alert-danger\" style=\"margin:20px 0;\"><i class=\"fa fa-exclamation-circle\"></i> \' + json[\'error\'] + \'</div>\');\n                        }\n                        if (json[\'success\']) {\n                          $(\'#form-feedback-header\').after(\'<div class=\"alert alert-success\" style=\"margin:20px 0;\"><i class=\"fa fa-check-circle\"></i> \' + json[\'success\'] + \'</div>\');\n                          $(\'input[name=\\\'name\\\']\').val(\'\');\n                          $(\'input[name=\\\'phone\\\']\').val(\'\');\n                        }\n                      }\n                    });\n                  });\n                </script>\n                {% endif %}\n            ]]></add>\n        </operation>\n    </file>\n	\n</modification>\n', 1, '2022-02-01 11:33:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option`
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
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
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
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int NOT NULL,
  `option_id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value`
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
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int NOT NULL,
  `language_id` int NOT NULL,
  `option_id` int NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
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
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int NOT NULL,
  `invoice_no` int NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `customer_group_id` int NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int NOT NULL,
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
  `shipping_country_id` int NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int NOT NULL DEFAULT '0',
  `affiliate_id` int NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int NOT NULL,
  `currency_id` int NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(150, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Александр', '', '', '+7 (987) - 668 - 04 - 84', '', '[]', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '601.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 19:53:23', '2022-01-27 19:53:23'),
(148, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Владимир', '', '', '+7 (333) - 333 - 33 - 33', '', '[]', 'Владимир', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Владимир', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '101.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 18:44:53', '2022-01-27 18:44:53'),
(141, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Petya', '', '', '+7 (111) - 111 - 11 - 11', '', '[]', 'Petya', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Petya', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '500.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 17:39:55', '2022-01-27 17:39:55'),
(151, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Александр', '', '', '+7 (987) - 668 - 04 - 84', '', '[]', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '601.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 19:53:47', '2022-01-27 19:53:47'),
(144, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Владимир', '', '', '+7 (111) - 111 - 11 - 11', '', '[]', 'Владимир', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Владимир', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '500.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 18:18:19', '2022-01-27 18:18:19'),
(145, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Владимир', '', '', '+7 (111) - 111 - 11 - 11', '', '[]', 'Владимир', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Владимир', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '500.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 18:21:55', '2022-01-27 18:21:55'),
(146, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Владимир', '', '', '+7 (111) - 111 - 11 - 11', '', '[]', 'Владимир', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Владимир', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '500.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 18:22:23', '2022-01-27 18:22:23'),
(154, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Александр', '', '', '+7 (987) - 668 - 04 - 84', '', '[]', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '601.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 20:43:28', '2022-01-27 20:43:28'),
(155, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Александр', '', '', '+7 (987) - 668 - 04 - 84', '', '[]', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', 'Добавил капчу', '601.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 20:44:00', '2022-01-27 20:44:00'),
(156, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Александр', '', '', '+7 (987) - 668 - 04 - 84', '', '[]', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Александр', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', 'Однажды в студеную зимнюю пору...', '601.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-27 20:53:57', '2022-01-27 20:53:57'),
(167, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Александр Львович', '', '', '+7 (987) - 668 - 04 - 84', '', '[]', 'Александр Львович', '', '', 'Чебоксары Николаева 42-377', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Александр Львович', '', '', 'Чебоксары Николаева 42-377', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', 'Изменил радиокнопки.Покрасивше теперь.', '1260.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-28 10:48:48', '2022-01-28 10:48:48'),
(166, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Владимир', '', '', '+7 (111) - 111 - 11 - 11', '', '[]', 'Владимир', '', '', 'Чебоксары Николаева 42-377', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Банковский перевод', 'bank_transfer', 'Владимир', '', '', 'Чебоксары Николаева 42-377', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '1260.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-28 10:46:43', '2022-01-28 10:46:43'),
(169, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Petya', '', '', '+7 (111) - 111 - 11 - 11', '', '[]', 'Petya', '', '', 'Чебоксары Николаева 42-377', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'FONDY VISA/MasterCard', 'oplata', 'Petya', '', '', 'Чебоксары Николаева 42-377', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '780.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-28 10:53:28', '2022-01-28 10:53:28'),
(172, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Владимир', '', '', '+7 (222) - 222 - 22 - 22', '', '[]', 'Владимир', '', '', 'Москва', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Банковский перевод', 'bank_transfer', 'Владимир', '', '', 'Москва', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '579.9900', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-28 11:07:20', '2022-01-28 11:07:20'),
(173, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Владимир', '', '', '+7 (222) - 222 - 22 - 22', '', '[]', 'Владимир', '', '', 'Москва', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Банковский перевод', 'bank_transfer', 'Владимир', '', '', 'Москва', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '579.9900', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-28 11:11:07', '2022-01-28 11:11:07'),
(175, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Sveta', '', '', '+7 (111) - 111 - 11 - 11', '', '[]', 'Sveta', '', '', 'Москва', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Sveta', '', '', 'Москва', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '780.0000', 0, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-28 13:23:57', '2022-01-28 13:23:57'),
(176, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Александр Львович', '', '', '+7 (987) - 668 - 04 - 84', '', '[]', 'Александр Львович', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Александр Львович', '', '', 'Чебоксары Николаева 42-37', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '400.0000', 2, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-31 09:33:43', '2022-01-31 09:34:01'),
(178, 0, 'INV-2022-00', 0, 'Интернет магазин всякой фигни', 'http://start.local/', 0, 1, 'Sveta211', '', '', '+7 (777) - 777 - 77 - 77', '', '[]', 'Sveta211', '', '', 'Чебоксары Николаева 42-377', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Оплата при доставке', 'cod', 'Sveta211', '', '', 'Чебоксары Николаева 42-377', '', '', '', 'Российская Федерация', 176, '', 0, '', '[]', 'Доставка с фиксированной стоимостью доставки', 'flat.flat', '', '5109.0000', 2, 0, '0.0000', 0, '', 1, 1, 'RUB', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7', '2022-02-01 11:45:13', '2022-02-01 11:45:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(130, 138, 2, 0, '', '2022-01-27 16:27:07'),
(117, 124, 2, 0, '', '2022-01-27 13:18:44'),
(173, 176, 2, 0, '', '2022-01-31 09:34:01'),
(176, 178, 2, 0, '', '2022-02-01 11:45:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_product_id` int NOT NULL,
  `product_option_id` int NOT NULL,
  `product_option_value_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(2, 103, 106, 226, 15, 'Select', 'Red', 'select');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(2, 2, 40, 'iPhone', 'product 11', 2, '101.0000', '202.0000', '18.0000', 0),
(3, 3, 40, 'iPhone', 'product 11', 2, '101.0000', '202.0000', '18.0000', 0),
(4, 4, 40, 'iPhone', 'product 11', 2, '101.0000', '202.0000', '18.0000', 0),
(5, 5, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(6, 6, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(7, 7, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(8, 7, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(9, 8, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(10, 8, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(11, 9, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(12, 9, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(13, 10, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(14, 11, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(15, 12, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(16, 13, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(17, 14, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(18, 15, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(19, 16, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(20, 17, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(21, 18, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(22, 19, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(23, 20, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(24, 21, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(25, 22, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(26, 23, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(27, 24, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(28, 25, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(85, 82, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(86, 83, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(55, 52, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(83, 80, 43, 'MacBook', 'Product 16', 11, '500.0000', '5500.0000', '18.0000', 6600),
(48, 45, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(58, 55, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(87, 84, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(62, 59, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(63, 60, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(88, 85, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(65, 62, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(89, 86, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(90, 87, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(106, 103, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '18.0000', 200),
(92, 89, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(93, 90, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(94, 91, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(95, 92, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(96, 93, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(97, 94, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(98, 95, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(99, 96, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(100, 97, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(101, 98, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(102, 99, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(103, 100, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(107, 104, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(109, 106, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(110, 107, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(111, 108, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(112, 109, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(113, 110, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(114, 111, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(115, 112, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(116, 113, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(117, 114, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(118, 115, 43, 'MacBook', 'Product 16', 2, '500.0000', '1000.0000', '18.0000', 1200),
(119, 116, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(120, 117, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(121, 118, 43, 'MacBook', 'Product 16', 2, '500.0000', '1000.0000', '18.0000', 1200),
(127, 124, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(128, 125, 34, 'iPod Shuffle', 'Product 7', 1, '100.0000', '100.0000', '18.0000', 0),
(152, 138, 40, 'iPhone', 'product 11', 3, '101.0000', '303.0000', '18.0000', 0),
(130, 127, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(131, 128, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(132, 129, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(133, 130, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(134, 131, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(135, 132, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(151, 138, 36, 'iPod Nano', 'Product 9', 4, '100.0000', '400.0000', '18.0000', 0),
(150, 138, 34, 'iPod Shuffle', 'Product 7', 3, '100.0000', '300.0000', '18.0000', 0),
(149, 138, 32, 'iPod Touch', 'Product 5', 2, '100.0000', '200.0000', '18.0000', 0),
(153, 138, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(154, 138, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '18.0000', 0),
(165, 144, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(173, 151, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(169, 148, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(172, 150, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(162, 141, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(171, 150, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(166, 145, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(167, 146, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(174, 151, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(178, 154, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(179, 154, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(180, 155, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(181, 155, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(182, 156, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '18.0000', 0),
(183, 156, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '18.0000', 600),
(196, 167, 43, 'MacBook', 'Product 16', 2, '480.0000', '960.0000', '18.0000', 1200),
(195, 166, 43, 'MacBook', 'Product 16', 2, '480.0000', '960.0000', '18.0000', 1200),
(198, 169, 43, 'MacBook', 'Product 16', 1, '480.0000', '480.0000', '18.0000', 600),
(201, 172, 29, 'Palm Treo Pro', 'Product 2', 1, '279.9900', '279.9900', '18.0000', 0),
(202, 173, 29, 'Palm Treo Pro', 'Product 2', 1, '279.9900', '279.9900', '18.0000', 0),
(204, 175, 43, 'MacBook', 'Product 16', 1, '480.0000', '480.0000', '18.0000', 600),
(205, 176, 34, 'iPod Shuffle', 'Product 7', 1, '100.0000', '100.0000', '18.0000', 0),
(207, 178, 43, 'MacBook', 'Product 16', 1, '4809.0000', '4809.0000', '18.0000', 600);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int NOT NULL,
  `order_id` int NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int NOT NULL,
  `recurring_id` int NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint NOT NULL,
  `recurring_duration` smallint NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint NOT NULL,
  `trial_duration` smallint NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int NOT NULL,
  `order_recurring_id` int NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int NOT NULL,
  `order_id` int NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Ожидание'),
(2, 1, 'В обработке'),
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(5, 1, 'Сделка завершена'),
(8, 1, 'Возврат'),
(9, 1, 'Отмена и аннулирование'),
(10, 1, 'Неудавшийся'),
(11, 1, 'Возмещенный'),
(12, 1, 'Полностью измененный'),
(13, 1, 'Полный возврат'),
(16, 1, 'Аннулированный'),
(15, 1, 'Обработанный'),
(14, 1, 'Просроченный');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int NOT NULL,
  `order_id` int NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Сумма', '101.0000', 1),
(2, 1, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(3, 1, 'total', 'Итого', '106.0000', 9),
(4, 2, 'sub_total', 'Сумма', '202.0000', 1),
(5, 2, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(6, 2, 'total', 'Итого', '207.0000', 9),
(7, 3, 'sub_total', 'Сумма', '202.0000', 1),
(8, 3, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(9, 3, 'total', 'Итого', '207.0000', 9),
(10, 4, 'sub_total', 'Сумма', '202.0000', 1),
(11, 4, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(12, 4, 'total', 'Итого', '207.0000', 9),
(13, 5, 'sub_total', 'Сумма', '101.0000', 1),
(14, 5, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(15, 5, 'total', 'Итого', '106.0000', 9),
(16, 6, 'sub_total', 'Сумма', '101.0000', 1),
(17, 6, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(18, 6, 'total', 'Итого', '106.0000', 9),
(19, 7, 'sub_total', 'Сумма', '601.0000', 1),
(20, 7, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(21, 7, 'total', 'Итого', '606.0000', 9),
(22, 8, 'sub_total', 'Сумма', '601.0000', 1),
(23, 8, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(24, 8, 'total', 'Итого', '606.0000', 9),
(25, 9, 'sub_total', 'Сумма', '601.0000', 1),
(26, 9, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(27, 9, 'total', 'Итого', '606.0000', 9),
(28, 10, 'sub_total', 'Сумма', '101.0000', 1),
(29, 10, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(30, 10, 'total', 'Итого', '106.0000', 9),
(31, 11, 'sub_total', 'Сумма', '101.0000', 1),
(32, 11, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(33, 11, 'total', 'Итого', '106.0000', 9),
(34, 12, 'sub_total', 'Сумма', '101.0000', 1),
(35, 12, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(36, 12, 'total', 'Итого', '106.0000', 9),
(37, 13, 'sub_total', 'Сумма', '101.0000', 1),
(38, 13, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(39, 13, 'total', 'Итого', '106.0000', 9),
(40, 14, 'sub_total', 'Сумма', '101.0000', 1),
(41, 14, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(42, 14, 'total', 'Итого', '106.0000', 9),
(43, 15, 'sub_total', 'Сумма', '101.0000', 1),
(44, 15, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(45, 15, 'total', 'Итого', '106.0000', 9),
(46, 16, 'sub_total', 'Сумма', '101.0000', 1),
(47, 16, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(48, 16, 'total', 'Итого', '106.0000', 9),
(49, 17, 'sub_total', 'Сумма', '101.0000', 1),
(50, 17, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(51, 17, 'total', 'Итого', '106.0000', 9),
(52, 18, 'sub_total', 'Сумма', '101.0000', 1),
(53, 18, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(54, 18, 'total', 'Итого', '106.0000', 9),
(55, 19, 'sub_total', 'Сумма', '101.0000', 1),
(56, 19, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(57, 19, 'total', 'Итого', '106.0000', 9),
(58, 20, 'sub_total', 'Сумма', '101.0000', 1),
(59, 20, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(60, 20, 'total', 'Итого', '106.0000', 9),
(61, 21, 'sub_total', 'Сумма', '101.0000', 1),
(62, 21, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(63, 21, 'total', 'Итого', '106.0000', 9),
(64, 22, 'sub_total', 'Сумма', '101.0000', 1),
(65, 22, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(66, 22, 'total', 'Итого', '106.0000', 9),
(67, 23, 'sub_total', 'Сумма', '101.0000', 1),
(68, 23, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(69, 23, 'total', 'Итого', '106.0000', 9),
(70, 24, 'sub_total', 'Сумма', '101.0000', 1),
(71, 24, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(72, 24, 'total', 'Итого', '106.0000', 9),
(73, 25, 'sub_total', 'Сумма', '101.0000', 1),
(74, 25, 'shipping', 'Доставка с фиксированной стоимостью доставки', '5.0000', 3),
(75, 25, 'total', 'Итого', '106.0000', 9),
(239, 84, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(153, 55, 'total', 'Итого', '500.0000', 9),
(237, 83, 'total', 'Итого', '101.0000', 9),
(228, 80, 'total', 'Итого', '5500.0000', 9),
(123, 45, 'total', 'Итого', '500.0000', 9),
(238, 84, 'sub_total', 'Сумма', '101.0000', 1),
(122, 45, 'sub_total', 'Сумма', '500.0000', 1),
(151, 55, 'sub_total', 'Сумма', '500.0000', 1),
(152, 55, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(227, 80, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(144, 52, 'total', 'Итого', '500.0000', 9),
(226, 80, 'sub_total', 'Сумма', '5500.0000', 1),
(142, 52, 'sub_total', 'Сумма', '500.0000', 1),
(143, 52, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(232, 82, 'sub_total', 'Сумма', '101.0000', 1),
(233, 82, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(234, 82, 'total', 'Итого', '101.0000', 9),
(235, 83, 'sub_total', 'Сумма', '101.0000', 1),
(236, 83, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(163, 59, 'sub_total', 'Сумма', '500.0000', 1),
(164, 59, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(165, 59, 'total', 'Итого', '500.0000', 9),
(166, 60, 'sub_total', 'Сумма', '500.0000', 1),
(167, 60, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(168, 60, 'total', 'Итого', '500.0000', 9),
(242, 85, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(240, 84, 'total', 'Итого', '101.0000', 9),
(241, 85, 'sub_total', 'Сумма', '500.0000', 1),
(172, 62, 'sub_total', 'Сумма', '500.0000', 1),
(173, 62, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(174, 62, 'total', 'Итого', '500.0000', 9),
(243, 85, 'total', 'Итого', '500.0000', 9),
(244, 86, 'sub_total', 'Сумма', '500.0000', 1),
(246, 86, 'total', 'Итого', '500.0000', 9),
(245, 86, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(248, 87, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(247, 87, 'sub_total', 'Сумма', '500.0000', 1),
(297, 103, 'total', 'Итого', '80.0000', 9),
(295, 103, 'sub_total', 'Сумма', '80.0000', 1),
(249, 87, 'total', 'Итого', '500.0000', 9),
(253, 89, 'sub_total', 'Сумма', '500.0000', 1),
(296, 103, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(255, 89, 'total', 'Итого', '500.0000', 9),
(254, 89, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(257, 90, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(256, 90, 'sub_total', 'Сумма', '500.0000', 1),
(259, 91, 'sub_total', 'Сумма', '500.0000', 1),
(260, 91, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(258, 90, 'total', 'Итого', '500.0000', 9),
(261, 91, 'total', 'Итого', '500.0000', 9),
(262, 92, 'sub_total', 'Сумма', '500.0000', 1),
(264, 92, 'total', 'Итого', '500.0000', 9),
(263, 92, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(266, 93, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(265, 93, 'sub_total', 'Сумма', '500.0000', 1),
(268, 94, 'sub_total', 'Сумма', '500.0000', 1),
(269, 94, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(267, 93, 'total', 'Итого', '500.0000', 9),
(270, 94, 'total', 'Итого', '500.0000', 9),
(271, 95, 'sub_total', 'Сумма', '500.0000', 1),
(273, 95, 'total', 'Итого', '500.0000', 9),
(272, 95, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(275, 96, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(274, 96, 'sub_total', 'Сумма', '500.0000', 1),
(276, 96, 'total', 'Итого', '500.0000', 9),
(277, 97, 'sub_total', 'Сумма', '500.0000', 1),
(278, 97, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(279, 97, 'total', 'Итого', '500.0000', 9),
(280, 98, 'sub_total', 'Сумма', '500.0000', 1),
(281, 98, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(282, 98, 'total', 'Итого', '500.0000', 9),
(283, 99, 'sub_total', 'Сумма', '500.0000', 1),
(284, 99, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(285, 99, 'total', 'Итого', '500.0000', 9),
(286, 100, 'sub_total', 'Сумма', '500.0000', 1),
(287, 100, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(288, 100, 'total', 'Итого', '500.0000', 9),
(299, 104, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(298, 104, 'sub_total', 'Сумма', '500.0000', 1),
(300, 104, 'total', 'Итого', '500.0000', 9),
(305, 106, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(304, 106, 'sub_total', 'Сумма', '500.0000', 1),
(306, 106, 'total', 'Итого', '500.0000', 9),
(307, 107, 'sub_total', 'Сумма', '500.0000', 1),
(308, 107, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(309, 107, 'total', 'Итого', '500.0000', 9),
(310, 108, 'sub_total', 'Сумма', '500.0000', 1),
(311, 108, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(312, 108, 'total', 'Итого', '500.0000', 9),
(313, 109, 'sub_total', 'Сумма', '500.0000', 1),
(314, 109, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(315, 109, 'total', 'Итого', '500.0000', 9),
(316, 110, 'sub_total', 'Сумма', '500.0000', 1),
(317, 110, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(318, 110, 'total', 'Итого', '500.0000', 9),
(319, 111, 'sub_total', 'Сумма', '500.0000', 1),
(320, 111, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(321, 111, 'total', 'Итого', '500.0000', 9),
(322, 112, 'sub_total', 'Сумма', '500.0000', 1),
(323, 112, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(324, 112, 'total', 'Итого', '500.0000', 9),
(325, 113, 'sub_total', 'Сумма', '500.0000', 1),
(326, 113, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(327, 113, 'total', 'Итого', '500.0000', 9),
(328, 114, 'sub_total', 'Сумма', '500.0000', 1),
(329, 114, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(330, 114, 'total', 'Итого', '500.0000', 9),
(331, 115, 'sub_total', 'Сумма', '1000.0000', 1),
(332, 115, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(333, 115, 'total', 'Итого', '1000.0000', 9),
(334, 116, 'sub_total', 'Сумма', '500.0000', 1),
(335, 116, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(336, 116, 'total', 'Итого', '500.0000', 9),
(337, 117, 'sub_total', 'Сумма', '500.0000', 1),
(338, 117, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(339, 117, 'total', 'Итого', '500.0000', 9),
(340, 118, 'sub_total', 'Сумма', '1000.0000', 1),
(341, 118, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(342, 118, 'total', 'Итого', '1000.0000', 9),
(438, 150, 'total', 'Итого', '601.0000', 9),
(363, 125, 'total', 'Итого', '100.0000', 9),
(402, 138, 'total', 'Итого', '1803.0000', 9),
(361, 125, 'sub_total', 'Сумма', '100.0000', 1),
(362, 125, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(358, 124, 'sub_total', 'Сумма', '500.0000', 1),
(359, 124, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(360, 124, 'total', 'Итого', '500.0000', 9),
(401, 138, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(367, 127, 'sub_total', 'Сумма', '500.0000', 1),
(368, 127, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(369, 127, 'total', 'Итого', '500.0000', 9),
(370, 128, 'sub_total', 'Сумма', '500.0000', 1),
(371, 128, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(372, 128, 'total', 'Итого', '500.0000', 9),
(373, 129, 'sub_total', 'Сумма', '500.0000', 1),
(374, 129, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(375, 129, 'total', 'Итого', '500.0000', 9),
(376, 130, 'sub_total', 'Сумма', '500.0000', 1),
(377, 130, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(378, 130, 'total', 'Итого', '500.0000', 9),
(379, 131, 'sub_total', 'Сумма', '500.0000', 1),
(380, 131, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(381, 131, 'total', 'Итого', '500.0000', 9),
(382, 132, 'sub_total', 'Сумма', '500.0000', 1),
(383, 132, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(384, 132, 'total', 'Итого', '500.0000', 9),
(400, 138, 'sub_total', 'Сумма', '1803.0000', 1),
(436, 150, 'sub_total', 'Сумма', '601.0000', 1),
(437, 150, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(409, 141, 'sub_total', 'Сумма', '500.0000', 1),
(410, 141, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(411, 141, 'total', 'Итого', '500.0000', 9),
(432, 148, 'total', 'Итого', '101.0000', 9),
(431, 148, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(430, 148, 'sub_total', 'Сумма', '101.0000', 1),
(440, 151, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(418, 144, 'sub_total', 'Сумма', '500.0000', 1),
(419, 144, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(420, 144, 'total', 'Итого', '500.0000', 9),
(421, 145, 'sub_total', 'Сумма', '500.0000', 1),
(422, 145, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(423, 145, 'total', 'Итого', '500.0000', 9),
(424, 146, 'sub_total', 'Сумма', '500.0000', 1),
(425, 146, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(426, 146, 'total', 'Итого', '500.0000', 9),
(441, 151, 'total', 'Итого', '601.0000', 9),
(439, 151, 'sub_total', 'Сумма', '601.0000', 1),
(450, 154, 'total', 'Итого', '601.0000', 9),
(449, 154, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(448, 154, 'sub_total', 'Сумма', '601.0000', 1),
(451, 155, 'sub_total', 'Сумма', '601.0000', 1),
(452, 155, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(453, 155, 'total', 'Итого', '601.0000', 9),
(454, 156, 'sub_total', 'Сумма', '601.0000', 1),
(455, 156, 'shipping', 'Доставка с фиксированной стоимостью доставки', '0.0000', 3),
(456, 156, 'total', 'Итого', '601.0000', 9),
(486, 166, 'total', 'Итого', '1260.0000', 9),
(485, 166, 'shipping', 'Доставка с фиксированной стоимостью доставки', '300.0000', 3),
(487, 167, 'sub_total', 'Сумма', '960.0000', 1),
(488, 167, 'shipping', 'Доставка с фиксированной стоимостью доставки', '300.0000', 3),
(484, 166, 'sub_total', 'Сумма', '960.0000', 1),
(489, 167, 'total', 'Итого', '1260.0000', 9),
(493, 169, 'sub_total', 'Сумма', '480.0000', 1),
(494, 169, 'shipping', 'Доставка с фиксированной стоимостью доставки', '300.0000', 3),
(495, 169, 'total', 'Итого', '780.0000', 9),
(502, 172, 'sub_total', 'Сумма', '279.9900', 1),
(503, 172, 'shipping', 'Доставка с фиксированной стоимостью доставки', '300.0000', 3),
(504, 172, 'total', 'Итого', '579.9900', 9),
(505, 173, 'sub_total', 'Сумма', '279.9900', 1),
(506, 173, 'shipping', 'Доставка с фиксированной стоимостью доставки', '300.0000', 3),
(507, 173, 'total', 'Итого', '579.9900', 9),
(511, 175, 'sub_total', 'Сумма', '480.0000', 1),
(512, 175, 'shipping', 'Доставка с фиксированной стоимостью доставки', '300.0000', 3),
(513, 175, 'total', 'Итого', '780.0000', 9),
(514, 176, 'sub_total', 'Сумма', '100.0000', 1),
(515, 176, 'shipping', 'Доставка с фиксированной стоимостью доставки', '300.0000', 3),
(516, 176, 'total', 'Итого', '400.0000', 9),
(521, 178, 'shipping', 'Доставка с фиксированной стоимостью доставки', '300.0000', 3),
(520, 178, 'sub_total', 'Сумма', '4809.0000', 1),
(522, 178, 'total', 'Итого', '5109.0000', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `stock_status_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int NOT NULL DEFAULT '0',
  `tax_class_id` int NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 11, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
(32, 'Product 5', '', '', '', '', '', '', '', 997, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 3, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Product 7', '', '', '', '', '', '', '', 996, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
(36, 'Product 9', '', '', '', '', '', '', '', 990, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
(40, 'product 11', '', '', '', '', '', '', '', 967, 5, 'catalog/demo/iphone_1.jpg', 8, 1, '1101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 3, '2009-02-03 21:07:12', '2022-01-30 14:17:59'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 18, '2009-02-03 21:07:37', '2022-01-30 19:28:40'),
(43, 'Product 16', '', '', '', '', '', '', '', 926, 7, 'catalog/demo/macbook_1.jpg', 8, 1, '5000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 41, '2009-02-03 21:07:49', '2022-01-30 14:33:22'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 100, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 2, '2009-02-03 21:08:40', '2011-09-30 01:05:28'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 994, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2011-04-26 08:57:34', '2011-09-30 01:06:23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `language_id` int NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 4, 1, '8gb'),
(47, 4, 1, '16GB'),
(42, 3, 1, '100mhz'),
(47, 2, 1, '4'),
(43, 2, 1, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 1, 'Apple Cinema 300&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(443, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(442, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(441, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int NOT NULL,
  `filter_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2321, 47, 'catalog/demo/hp_3.jpg', 0),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(2388, 40, 'catalog/demo/iphone_4.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(2396, 43, 'catalog/demo/macbook_5.jpg', 0),
(2395, 43, 'catalog/demo/macbook_4.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(2387, 40, 'catalog/demo/iphone_3.jpg', 0),
(2386, 40, 'catalog/demo/iphone_5.jpg', 0),
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2320, 47, 'catalog/demo/hp_2.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(2385, 40, 'catalog/demo/iphone_2.jpg', 0),
(2384, 40, 'catalog/demo/iphone_6.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(2394, 43, 'catalog/demo/macbook_2.jpg', 0),
(2393, 43, 'catalog/demo/macbook_3.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2400, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2399, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2398, 42, 'catalog/demo/hp_1.jpg', 0),
(2397, 42, 'catalog/demo/canon_logo.jpg', 0),
(2401, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int NOT NULL,
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(219, 42, 8, '2011-02-20', 1),
(222, 42, 7, '', 1),
(209, 42, 6, '', 1),
(217, 42, 5, '', 1),
(208, 42, 4, 'test', 1),
(223, 42, 2, '', 1),
(218, 42, 1, '', 1),
(226, 30, 5, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int NOT NULL,
  `product_option_id` int NOT NULL,
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  `option_value_id` int NOT NULL,
  `quantity` int NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int NOT NULL,
  `recurring_id` int NOT NULL,
  `customer_group_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int NOT NULL,
  `related_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int NOT NULL,
  `product_id` int NOT NULL DEFAULT '0',
  `customer_group_id` int NOT NULL DEFAULT '0',
  `points` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(556, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(555, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `priority` int NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(449, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00'),
(448, 43, 1, 0, '4809.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 24),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(41, 27),
(42, 20),
(42, 28),
(43, 18),
(43, 20),
(44, 18),
(44, 20),
(45, 18),
(46, 18),
(46, 20),
(47, 18),
(47, 20),
(48, 20),
(48, 34),
(49, 57);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int NOT NULL,
  `download_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(43, 0, 0),
(40, 0, 0),
(42, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int UNSIGNED NOT NULL,
  `cycle` int UNSIGNED NOT NULL,
  `trial_status` tinyint NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int UNSIGNED NOT NULL,
  `trial_cycle` int UNSIGNED NOT NULL,
  `status` tinyint NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int NOT NULL,
  `return_action_id` int NOT NULL,
  `return_status_id` int NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возвращены средства'),
(2, 1, 'Выдан в кредит'),
(3, 1, 'Отправлен другой товар для замены');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int NOT NULL,
  `return_id` int NOT NULL,
  `return_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен/доставлен неисправным (сломан)'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(3, 1, 'Ошибочный заказ'),
(4, 1, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Рассматриваемый'),
(3, 1, 'Готов (к отправке)'),
(2, 1, 'Заказ в ожидании');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(824, 0, 1, 'product_id=48', 'ipod-classic'),
(836, 0, 1, 'category_id=20', 'desktops'),
(834, 0, 1, 'category_id=26', 'pc'),
(835, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(772, 0, 1, 'information_id=4', 'about_us'),
(903, 0, 1, 'product_id=42', 'test'),
(890, 0, 1, 'category_id=34', 'mp3-players'),
(781, 0, 1, 'category_id=36', 'test2'),
(774, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(777, 0, 1, 'category_id=25', 'component'),
(778, 0, 1, 'category_id=29', 'mouse'),
(779, 0, 1, 'category_id=28', 'monitor'),
(780, 0, 1, 'category_id=35', 'test1'),
(782, 0, 1, 'category_id=30', 'printer'),
(783, 0, 1, 'category_id=31', 'scanner'),
(784, 0, 1, 'category_id=32', 'web-camera'),
(785, 0, 1, 'category_id=57', 'tablet'),
(786, 0, 1, 'category_id=17', 'software'),
(787, 0, 1, 'category_id=24', 'smartphone'),
(788, 0, 1, 'category_id=33', 'camera'),
(803, 0, 1, 'category_id=38', 'test4'),
(804, 0, 1, 'category_id=37', 'test5'),
(805, 0, 1, 'category_id=39', 'test6'),
(806, 0, 1, 'category_id=40', 'test7'),
(807, 0, 1, 'category_id=41', 'test8'),
(808, 0, 1, 'category_id=42', 'test9'),
(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
(840, 0, 1, 'product_id=47', 'hp-lp3065'),
(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
(902, 0, 1, 'product_id=43', 'macbook'),
(813, 0, 1, 'product_id=44', 'macbook-air'),
(814, 0, 1, 'product_id=45', 'macbook-pro'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
(818, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 0, 1, 'product_id=46', 'sony-vaio'),
(837, 0, 1, 'product_id=41', 'imac'),
(900, 0, 1, 'product_id=40', 'iphone'),
(825, 0, 1, 'product_id=36', 'ipod-nano'),
(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
(827, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms'),
(845, 0, 1, 'common/home', ''),
(846, 0, 1, 'information/contact', 'contact'),
(847, 0, 1, 'information/sitemap', 'sitemap'),
(848, 0, 1, 'product/special', 'specials'),
(849, 0, 1, 'product/manufacturer', 'brands'),
(850, 0, 1, 'product/compare', 'compare-products'),
(851, 0, 1, 'product/search', 'search'),
(852, 0, 1, 'checkout/cart', 'cart'),
(853, 0, 1, 'checkout/checkout', 'checkout'),
(854, 0, 1, 'account/login', 'login'),
(855, 0, 1, 'account/logout', 'logout'),
(856, 0, 1, 'account/voucher', 'vouchers'),
(857, 0, 1, 'account/wishlist', 'wishlist'),
(858, 0, 1, 'account/account', 'my-account'),
(859, 0, 1, 'account/order', 'order-history'),
(860, 0, 1, 'account/newsletter', 'newsletter'),
(861, 0, 1, 'account/return/add', 'return-add'),
(862, 0, 1, 'account/forgotten', 'forgot-password'),
(863, 0, 1, 'account/download', 'downloads'),
(864, 0, 1, 'account/return', 'returns'),
(865, 0, 1, 'account/transaction', 'transactions'),
(866, 0, 1, 'account/register', 'create-account'),
(867, 0, 1, 'account/recurring', 'recurring'),
(868, 0, 1, 'account/address', 'address-book'),
(869, 0, 1, 'account/reward', 'reward-points'),
(870, 0, 1, 'account/edit', 'edit-account'),
(871, 0, 1, 'account/password', 'change-password'),
(880, 0, 1, 'affiliate/forgotten', 'affiliate-forgot-password'),
(881, 0, 1, 'affiliate/register', 'create-affiliate-account'),
(882, 0, 1, 'affiliate/login', 'affiliate-login'),
(883, 0, 1, 'affiliate/payment', 'affiliate-payment'),
(884, 0, 1, 'affiliate/tracking', 'affiliate-tracking'),
(885, 0, 1, 'affiliate/transaction', 'affiliate-transaction'),
(886, 0, 1, 'affiliate/account', 'affiliates');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('131d61590197c97b2a82cc4c57', '{\"user_id\":\"1\",\"user_token\":\"FqwWUYl0EgE0RljQTtLz3GMrxESy9my4\",\"install\":\"vig5fIaKvd\",\"language\":\"ru-ru\",\"currency\":\"RUB\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"Sveta211\",\"address_1\":\"\\u0427\\u0435\\u0431\\u043e\\u043a\\u0441\\u0430\\u0440\\u044b \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0430 42-377\",\"country_id\":\"176\",\"zone_id\":\"\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"\",\"zone_code\":\"\"},\"shipping_address\":{\"firstname\":\"Sveta211\",\"address_1\":\"\\u0427\\u0435\\u0431\\u043e\\u043a\\u0441\\u0430\\u0440\\u044b \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0430 42-377\",\"country_id\":\"176\",\"zone_id\":\"\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"zone\":\"\",\"zone_code\":\"\",\"custom_field\":[]}}', '2022-02-01 13:20:22'),
('3f9e5ce30a0b46a6d3942065cf', '{\"api_id\":\"1\"}', '2022-02-01 12:43:05'),
('4f3149a95f0c4a914c58a6b9c4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"4J4ASUgj4WwrQquuBP3juYfrH9skERT1\"}', '2022-02-01 20:56:51'),
('86752e497d6d14ce07de1440bd', '{\"api_id\":\"1\"}', '2022-02-01 12:45:34'),
('955c28cc27018956f018a01199', '{\"api_id\":\"1\"}', '2022-02-01 12:46:51'),
('acd9c285102f0d78139d02ca96', 'false', '2022-02-01 12:31:18'),
('b53b8cb6b700700c5cfc2adf92', '{\"api_id\":\"1\"}', '2022-02-01 12:44:31'),
('b8866b4b09008859296c5c1352', '{\"api_id\":\"1\",\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-02-01 12:44:31'),
('e9544ebc1cf123d4e86a527869', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-02-01 12:31:28'),
('fdae4fb39d3c91b0b67b3f1aa8', '{\"api_id\":\"1\"}', '2022-02-01 12:45:24');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(713, 0, 'config', 'config_country_id', '176', 0),
(714, 0, 'config', 'config_zone_id', '55', 0),
(715, 0, 'config', 'config_timezone', 'Europe/Moscow', 0),
(716, 0, 'config', 'config_language', 'ru-ru', 0),
(717, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(718, 0, 'config', 'config_currency', 'RUB', 0),
(719, 0, 'config', 'config_currency_auto', '0', 0),
(720, 0, 'config', 'config_length_class_id', '1', 0),
(721, 0, 'config', 'config_weight_class_id', '1', 0),
(722, 0, 'config', 'config_product_count', '0', 0),
(723, 0, 'config', 'config_limit_admin', '20', 0),
(724, 0, 'config', 'config_review_status', '0', 0),
(725, 0, 'config', 'config_review_guest', '0', 0),
(726, 0, 'config', 'config_voucher_min', '1', 0),
(727, 0, 'config', 'config_voucher_max', '1000', 0),
(728, 0, 'config', 'config_tax', '0', 0),
(729, 0, 'config', 'config_tax_default', 'shipping', 0),
(730, 0, 'config', 'config_tax_customer', 'shipping', 0),
(731, 0, 'config', 'config_customer_online', '0', 0),
(732, 0, 'config', 'config_customer_activity', '0', 0),
(733, 0, 'config', 'config_customer_search', '0', 0),
(734, 0, 'config', 'config_customer_group_id', '1', 0),
(735, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(736, 0, 'config', 'config_customer_price', '0', 0),
(737, 0, 'config', 'config_login_attempts', '5', 0),
(738, 0, 'config', 'config_account_id', '3', 0),
(739, 0, 'config', 'config_invoice_prefix', 'INV-2022-00', 0),
(740, 0, 'config', 'config_cart_weight', '0', 0),
(741, 0, 'config', 'config_checkout_guest', '1', 0),
(742, 0, 'config', 'config_checkout_id', '5', 0),
(743, 0, 'config', 'config_order_status_id', '1', 0),
(744, 0, 'config', 'config_processing_status', '[\"2\",\"3\",\"1\",\"12\",\"5\"]', 1),
(745, 0, 'config', 'config_complete_status', '[\"3\",\"5\"]', 1),
(746, 0, 'config', 'config_fraud_status_id', '16', 0),
(747, 0, 'config', 'config_api_id', '1', 0),
(748, 0, 'config', 'config_stock_display', '0', 0),
(749, 0, 'config', 'config_stock_warning', '0', 0),
(750, 0, 'config', 'config_stock_checkout', '0', 0),
(751, 0, 'config', 'config_affiliate_group_id', '1', 0),
(752, 0, 'config', 'config_affiliate_approval', '0', 0),
(753, 0, 'config', 'config_affiliate_auto', '0', 0),
(754, 0, 'config', 'config_affiliate_commission', '5', 0),
(755, 0, 'config', 'config_affiliate_id', '4', 0),
(756, 0, 'config', 'config_return_id', '0', 0),
(757, 0, 'config', 'config_return_status_id', '2', 0),
(758, 0, 'config', 'config_captcha', 'basic', 0),
(759, 0, 'config', 'config_captcha_page', '[\"register\",\"guest\",\"review\",\"return\",\"contact\"]', 1),
(760, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(761, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(762, 0, 'config', 'config_mail_engine', 'mail', 0),
(763, 0, 'config', 'config_mail_parameter', '', 0),
(764, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(765, 0, 'config', 'config_mail_smtp_username', '', 0),
(766, 0, 'config', 'config_mail_smtp_password', '', 0),
(767, 0, 'config', 'config_mail_smtp_port', '25', 0),
(710, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(781, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(780, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(779, 0, 'config', 'config_file_max_size', '300000', 0),
(778, 0, 'config', 'config_encryption', 'x4eqcYrvPTs9uzWDmcSCaEaoUnEYCio2ae3ImYP8iiLFrZawoNXcPMDUSw6K4YfO7xYlNRxrX5nFTEuoRNDvqA2fDJP45uao7eQRzOrTBVxXru8W8CdtuxwWWHoglNzOT1Gt98VyRbpFM1Jz7BAQpykvIiWElpW4eMZL84j139RBoi5uWno5f3hoWNfvbDN0KXsq76N8ZApCJgZIEIP6F6BIXTmcjur86r6jabGtTKyjwKaYNRmqxrQcDUzVWUdEULZgFDCTrVNEIGNNqdYBusQ8P3xGW1NW1P8tY6jlb9J1NOs9J3DzboVBUQvnFMCRFSNMUXlVcGWMDYnwmNN6h1HU4s2buDK1uU039NhlhOvKewFXN0R4fW2FLJvgwHMBprKLwLD4VrnNSsbAClZf4EiXmE0CQSIhji4XIa2STADjlPa8ZHBVhhUhqau0pq9l4xY17ya8LVeNeqJJdwY9PtV97Td0Nni1X5JDZgjn11SMonOTuFeFDXN7yrFmeZhg7m5FWGz8jDFh5VGwklIJCziOZ5ESb9f1LBSeH6CQropyfEvzf08ISozMApIZA9zPesxtMfttNTUMhlExLOrROjRAOrYTsxW4PRjX6k3zfBxDXnBjUq06T5gFGShZ6VfoEelicyQRyy6NQFGn3aDh6jZkb1wWuKNmmvBgCF1QsXfQRer75eowdwjXJkO6CqZh7WmUbXQPNLoz3COhMqzTS6xDAm8wKQKlNLY1eCTMLjLtX3x1V82rAUErSOzalwItSj4p1tcKFXF9BvBVBAMwhOYYzpL8ECEeaEQUB9a8MNf79XaIJco5UgYjaRZzx92EbEpZu7KxqitH8Hwwff3d1SvXYCxGr5O6No8YwbbEKT9JhyD8YaPPOkoIvz4EDWk2yhw9CjJogjQGEEDuIeX8l2DecJyoflSaC0lE7DNhEZ0sK6txP5SJGD8XnvfcIVDwwiNk1YF3t4aDhN9INNOyHPkVxxVCJgd71GvZzSNSznregePZ3yuhZOoh8X0B2vyD', 0),
(777, 0, 'config', 'config_shared', '0', 0),
(776, 0, 'config', 'config_password', '0', 0),
(775, 0, 'config', 'config_secure', '0', 0),
(774, 0, 'config', 'config_compression', '9', 0),
(460, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '2', 0),
(458, 0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(400, 0, 'payment_cod', 'payment_cod_sort_order', '1', 0),
(398, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(399, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(789, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(788, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(787, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(786, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(785, 0, 'shipping_flat', 'shipping_flat_cost', '300', 0),
(107, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(108, 0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(109, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(110, 0, 'total_tax', 'total_tax_status', '0', 0),
(111, 0, 'total_total', 'total_total_sort_order', '9', 0),
(112, 0, 'total_total', 'total_total_status', '1', 0),
(113, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(369, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(368, 0, 'total_credit', 'total_credit_status', '0', 0),
(796, 0, 'captcha_basic', 'captcha_basic_status', '0', 0),
(118, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(367, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(366, 0, 'total_coupon', 'total_coupon_status', '0', 0),
(371, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(370, 0, 'total_voucher', 'total_voucher_status', '0', 0),
(124, 0, 'module_category', 'module_category_status', '1', 0),
(125, 0, 'module_account', 'module_account_status', '1', 0),
(126, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(127, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(132, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(134, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(138, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(146, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(147, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(148, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(149, 0, 'theme_default', 'theme_default_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(374, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(373, 0, 'dashboard_map', 'dashboard_map_status', '0', 0),
(377, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(376, 0, 'dashboard_online', 'dashboard_online_status', '0', 0),
(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(375, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(372, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(175, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(177, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(498, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(497, 0, 'report_customer_reward', 'report_customer_reward_status', '0', 0),
(500, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(499, 0, 'report_customer_search', 'report_customer_search_status', '0', 0),
(502, 0, 'report_customer_transaction', 'report_customer_transaction_sort_order', '', 0),
(501, 0, 'report_customer_transaction', 'report_customer_transaction_status', '0', 0),
(508, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(507, 0, 'report_sale_tax', 'report_sale_tax_status', '0', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(187, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(506, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(505, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(191, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(504, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(503, 0, 'report_sale_coupon', 'report_sale_coupon_status', '0', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(195, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(197, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(198, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(199, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(825, 0, 'developer', 'developer_theme', '1', 0),
(768, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(769, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(770, 0, 'config', 'config_mail_alert_email', '', 0),
(771, 0, 'config', 'config_maintenance', '0', 0),
(772, 0, 'config', 'config_seo_url', '1', 0),
(773, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(459, 0, 'payment_free_checkout', 'payment_free_checkout_status', '0', 0),
(712, 0, 'config', 'config_comment', 'Любая фигня по доступным ценам', 0),
(711, 0, 'config', 'config_open', '9.00 - 18.00 Пн-Пт\r\n10.00 - 20.00 Сб-Вс', 0),
(709, 0, 'config', 'config_fax', '', 0),
(708, 0, 'config', 'config_telephone', '+7(987)-668-04-84', 0),
(707, 0, 'config', 'config_email', 'iskander.m.211@gmail.com', 0),
(706, 0, 'config', 'config_geocode', '', 0),
(705, 0, 'config', 'config_address', 'г. Чебоксары ул. Калинина 105а', 0),
(704, 0, 'config', 'config_owner', 'Александр Михайлов', 0),
(701, 0, 'config', 'config_theme', 'default', 0),
(702, 0, 'config', 'config_layout_id', '4', 0),
(703, 0, 'config', 'config_name', 'Интернет магазин всякой фигни', 0),
(700, 0, 'config', 'config_meta_keyword', '', 0),
(699, 0, 'config', 'config_meta_description', '', 0),
(698, 0, 'config', 'config_meta_title', 'Интернет магазин всякой фигни', 0),
(819, 0, 'payment_bank_transfer', 'payment_bank_transfer_status', '1', 0),
(818, 0, 'payment_bank_transfer', 'payment_bank_transfer_geo_zone_id', '0', 0),
(817, 0, 'payment_bank_transfer', 'payment_bank_transfer_order_status_id', '2', 0),
(816, 0, 'payment_bank_transfer', 'payment_bank_transfer_total', '', 0),
(397, 0, 'payment_cod', 'payment_cod_order_status_id', '2', 0),
(396, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(815, 0, 'payment_bank_transfer', 'payment_bank_transfer_bank1', 'Здесь номер счета:\r\nBANK OF CHEBOKSARY\r\nр/с  №123456778', 0),
(453, 0, 'payment_pp_standard', 'payment_pp_standard_pending_status_id', '16', 0),
(452, 0, 'payment_pp_standard', 'payment_pp_standard_failed_status_id', '16', 0),
(451, 0, 'payment_pp_standard', 'payment_pp_standard_expired_status_id', '16', 0),
(450, 0, 'payment_pp_standard', 'payment_pp_standard_denied_status_id', '16', 0),
(449, 0, 'payment_pp_standard', 'payment_pp_standard_completed_status_id', '16', 0),
(448, 0, 'payment_pp_standard', 'payment_pp_standard_canceled_reversal_status_id', '16', 0),
(447, 0, 'payment_pp_standard', 'payment_pp_standard_sort_order', '', 0),
(446, 0, 'payment_pp_standard', 'payment_pp_standard_status', '0', 0),
(445, 0, 'payment_pp_standard', 'payment_pp_standard_geo_zone_id', '0', 0),
(444, 0, 'payment_pp_standard', 'payment_pp_standard_total', '', 0),
(443, 0, 'payment_pp_standard', 'payment_pp_standard_transaction', '0', 0),
(442, 0, 'payment_pp_standard', 'payment_pp_standard_debug', '0', 0),
(441, 0, 'payment_pp_standard', 'payment_pp_standard_test', '0', 0),
(440, 0, 'payment_pp_standard', 'payment_pp_standard_email', 'aa@aa.aa', 0),
(454, 0, 'payment_pp_standard', 'payment_pp_standard_processed_status_id', '16', 0),
(455, 0, 'payment_pp_standard', 'payment_pp_standard_refunded_status_id', '16', 0),
(456, 0, 'payment_pp_standard', 'payment_pp_standard_reversed_status_id', '16', 0),
(457, 0, 'payment_pp_standard', 'payment_pp_standard_voided_status_id', '16', 0),
(782, 0, 'config', 'config_error_display', '1', 0),
(783, 0, 'config', 'config_error_log', '1', 0),
(784, 0, 'config', 'config_error_filename', 'error.log', 0),
(812, 0, 'payment_oplata', 'payment_oplata_order_process_status_id', '16', 0),
(811, 0, 'payment_oplata', 'payment_oplata_order_cancelled_status_id', '16', 0),
(810, 0, 'payment_oplata', 'payment_oplata_order_status_id', '16', 0),
(809, 0, 'payment_oplata', 'payment_oplata_language', '', 0),
(808, 0, 'payment_oplata', 'payment_oplata_currency', 'RUB', 0),
(807, 0, 'payment_oplata', 'payment_oplata_secretkey', '21212121212', 0),
(806, 0, 'payment_oplata', 'payment_oplata_merchant', '121212121212', 0),
(813, 0, 'payment_oplata', 'payment_oplata_geo_zone_id', '0', 0),
(814, 0, 'payment_oplata', 'payment_oplata_status', '0', 0),
(820, 0, 'payment_bank_transfer', 'payment_bank_transfer_sort_order', '2', 0),
(826, 0, 'developer', 'developer_theme', '1', 0),
(827, 0, 'developer', 'developer_sass', '0', 0),
(828, 0, 'developer', 'developer_sass', '1', 0),
(851, 0, 'module_feedback', 'module_feedback_header', '1', 0),
(852, 0, 'module_feedback', 'module_feedback_email', '0', 0),
(853, 0, 'module_feedback', 'module_feedback_status', '1', 0),
(850, 0, 'module_feedback', 'module_feedback_main', '{\"1\":\"\"}', 1),
(849, 0, 'module_feedback', 'module_feedback_title', '{\"1\":\"\"}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '54851.9900'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ'),
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Налоги', 'Облагаемые налогом', '2020-06-06 23:00:00', '2020-09-09 11:50:31');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int NOT NULL,
  `geo_zone_id` int NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(87, 3, 'НДС', '18.0000', 'F', '2020-09-21 21:49:23', '2020-09-09 11:49:32');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int NOT NULL,
  `customer_group_id` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int NOT NULL,
  `tax_class_id` int NOT NULL,
  `tax_rate_id` int NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int NOT NULL,
  `store_id` int NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_theme`
--

INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(258, 0, 'default', 'checkout/checkout', '{{ header }}\n&lt;div id=&quot;checkout-checkout&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  {% if error_warning %}\n  &lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; {{ error_warning }}\n    &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;\n  &lt;/div&gt;\n  {% endif %}\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h1&gt;{{ heading_title }}&lt;/h1&gt;\n      &lt;div class=&quot;panel-group&quot; id=&quot;accordion&quot;&gt;\n        &lt;div class=&quot;panel panel-default&quot; style=&quot;display: none&quot;&gt;\n          &lt;div class=&quot;panel-heading&quot;&gt;\n            &lt;h4 class=&quot;panel-title&quot;&gt;{{ text_checkout_option }}&lt;/h4&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapse-checkout-option&quot;&gt;\n            &lt;div class=&quot;panel-body&quot;&gt;&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% if not logged and account != \'guest\' %}\n        &lt;div class=&quot;panel panel-default&quot;&gt;\n          &lt;div class=&quot;panel-heading&quot;&gt;\n            &lt;h4 class=&quot;panel-title&quot;&gt;{{ text_checkout_account }}&lt;/h4&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapse-payment-address&quot;&gt;\n            &lt;div class=&quot;panel-body&quot;&gt;&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% else %}\n        &lt;div class=&quot;panel panel-default&quot;&gt;\n          &lt;div class=&quot;panel-heading&quot;&gt;\n            &lt;h4 class=&quot;panel-title&quot;&gt;{{ text_checkout_payment_address }}&lt;/h4&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapse-payment-address&quot;&gt;\n            &lt;div class=&quot;panel-body&quot;&gt;&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% endif %}\n        {% if shipping_required %}\n        &lt;div class=&quot;panel panel-default&quot; style=&quot;display: none&quot;&gt;\n          &lt;div class=&quot;panel-heading&quot;&gt;\n            &lt;h4 class=&quot;panel-title&quot;&gt;{{ text_checkout_shipping_address }}&lt;/h4&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapse-shipping-address&quot;&gt;\n            &lt;div class=&quot;panel-body&quot;&gt;&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;panel panel-default&quot; style=&quot;display: none&quot;&gt;\n          &lt;div class=&quot;panel-heading&quot;&gt;\n            &lt;h4 class=&quot;panel-title&quot;&gt;{{ text_checkout_shipping_method }}&lt;/h4&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapse-shipping-method&quot;&gt;\n            &lt;div class=&quot;panel-body&quot;&gt;&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% endif %}\n        &lt;div class=&quot;panel panel-default&quot;&gt;\n          &lt;div class=&quot;panel-heading&quot;&gt;\n            &lt;h4 class=&quot;panel-title&quot;&gt;{{ text_checkout_payment_method }}&lt;/h4&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapse-payment-method&quot;&gt;\n            &lt;div class=&quot;panel-body&quot;&gt;&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;panel panel-default&quot;&gt;\n          &lt;div class=&quot;panel-heading&quot;&gt;\n            &lt;h4 class=&quot;panel-title&quot;&gt;{{ text_checkout_confirm }}&lt;/h4&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapse-checkout-confirm&quot;&gt;\n            &lt;div class=&quot;panel-body&quot;&gt;&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(document).on(\'change\', \'input[name=\\\'account\\\']\', function() {\n	if ($(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title &gt; *\').is(\'a\')) {\n		if (this.value == \'register\') {\n			$(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_account }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n		} else {\n			$(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_payment_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n		}\n	} else {\n		if (this.value == \'register\') {\n			$(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_account }}\');\n		} else {\n			$(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_payment_address }}\');\n		}\n	}\n});\n\n{% if not logged %}\n$(document).ready(function() {\n    $.ajax({\n        url: \'index.php?route=checkout/login\',\n        dataType: \'html\',\n        success: function(html) {\n           $(\'#collapse-checkout-option .panel-body\').html(html);\n\n			$(\'#collapse-checkout-option\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-checkout-option&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_option }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n			$(\'a[href=\\\'#collapse-checkout-option\\\']\').trigger(\'click\');\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n{% else %}\n$(document).ready(function() {\n    $.ajax({\n        url: \'index.php?route=checkout/payment_address\',\n        dataType: \'html\',\n        success: function(html) {\n            $(\'#collapse-payment-address .panel-body\').html(html);\n\n			$(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_payment_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n			$(\'a[href=\\\'#collapse-payment-address\\\']\').trigger(\'click\');\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n{% endif %}\n\n// Checkout\n$(document).delegate(\'#button-account\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/\' + $(\'input[name=\\\'account\\\']:checked\').val(),\n        dataType: \'html\',\n        beforeSend: function() {\n        	$(\'#button-account\').button(\'loading\');\n		},\n        complete: function() {\n			$(\'#button-account\').button(\'reset\');\n        },\n        success: function(html) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n			$(\'.form-group\').removeClass(\'has-error\');\n\n            $(\'#collapse-payment-address .panel-body\').html(html);\n\n			if ($(\'input[name=\\\'account\\\']:checked\').val() == \'register\') {\n				$(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_account }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n			} else {\n				$(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_payment_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n			}\n\n			$(\'a[href=\\\'#collapse-payment-address\\\']\').trigger(\'click\');\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n\n// Login\n$(document).delegate(\'#button-login\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/login/save\',\n        type: \'post\',\n        data: $(\'#collapse-checkout-option :input\'),\n        dataType: \'json\',\n        beforeSend: function() {\n        	$(\'#button-login\').button(\'loading\');\n		},\n        complete: function() {\n            $(\'#button-login\').button(\'reset\');\n        },\n        success: function(json) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n            $(\'.form-group\').removeClass(\'has-error\');\n\n            if (json[\'redirect\']) {\n                location = json[\'redirect\'];\n            } else if (json[\'error\']) {\n                $(\'#collapse-checkout-option .panel-body\').prepend(\'&lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; \' + json[\'error\'][\'warning\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n\n				// Highlight any found errors\n				$(\'input[name=\\\'email\\\']\').parent().addClass(\'has-error\');\n				$(\'input[name=\\\'password\\\']\').parent().addClass(\'has-error\');\n		   }\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n\n// Register\n$(document).delegate(\'#button-register\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/register/save\',\n        type: \'post\',\n        data: $(\'#collapse-payment-address input[type=\\\'text\\\'], #collapse-payment-address input[type=\\\'date\\\'], #collapse-payment-address input[type=\\\'datetime-local\\\'], #collapse-payment-address input[type=\\\'time\\\'], #collapse-payment-address input[type=\\\'password\\\'], #collapse-payment-address input[type=\\\'hidden\\\'], #collapse-payment-address input[type=\\\'checkbox\\\']:checked, #collapse-payment-address input[type=\\\'radio\\\']:checked, #collapse-payment-address textarea, #collapse-payment-address select\'),\n        dataType: \'json\',\n        beforeSend: function() {\n			$(\'#button-register\').button(\'loading\');\n		},\n        success: function(json) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n            $(\'.form-group\').removeClass(\'has-error\');\n\n            if (json[\'redirect\']) {\n                location = json[\'redirect\'];\n            } else if (json[\'error\']) {\n                $(\'#button-register\').button(\'reset\');\n\n                if (json[\'error\'][\'warning\']) {\n                    $(\'#collapse-payment-address .panel-body\').prepend(\'&lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; \' + json[\'error\'][\'warning\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n                }\n\n				for (i in json[\'error\']) {\n					var element = $(\'#input-payment-\' + i.replace(\'_\', \'-\'));\n\n					if ($(element).parent().hasClass(\'input-group\')) {\n						$(element).parent().after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					} else {\n						$(element).after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					}\n				}\n\n				// Highlight any found errors\n				$(\'.text-danger\').parent().addClass(\'has-error\');\n            } else {\n                {% if shipping_required %}\n                var shipping_address = $(\'#payment-address input[name=\\\'shipping_address\\\']:checked\').prop(\'value\');\n\n                if (shipping_address) {\n                    $.ajax({\n                        url: \'index.php?route=checkout/shipping_method\',\n                        dataType: \'html\',\n                        success: function(html) {\n							// Add the shipping address\n                            $.ajax({\n                                url: \'index.php?route=checkout/shipping_address\',\n                                dataType: \'html\',\n                                success: function(html) {\n                                    $(\'#collapse-shipping-address .panel-body\').html(html);\n\n									$(\'#collapse-shipping-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n                                },\n                                error: function(xhr, ajaxOptions, thrownError) {\n                                    alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                                }\n                            });\n\n							$(\'#collapse-shipping-method .panel-body\').html(html);\n\n							$(\'#collapse-shipping-method\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-method&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_method }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n   							$(\'a[href=\\\'#collapse-shipping-method\\\']\').trigger(\'click\');\n\n							$(\'#collapse-shipping-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_shipping_method }}\');\n							$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_payment_method }}\');\n							$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                        },\n                        error: function(xhr, ajaxOptions, thrownError) {\n                            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                        }\n                    });\n                } else {\n                    $.ajax({\n                        url: \'index.php?route=checkout/shipping_address\',\n                        dataType: \'html\',\n                        success: function(html) {\n                            $(\'#collapse-shipping-address .panel-body\').html(html);\n\n							$(\'#collapse-shipping-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n							$(\'a[href=\\\'#collapse-shipping-address\\\']\').trigger(\'click\');\n\n							$(\'#collapse-shipping-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_shipping_method }}\');\n							$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_payment_method }}\');\n							$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                        },\n                        error: function(xhr, ajaxOptions, thrownError) {\n                            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                        }\n                    });\n                }\n                {% else %}\n                $.ajax({\n                    url: \'index.php?route=checkout/payment_method\',\n                    dataType: \'html\',\n                    success: function(html) {\n                        $(\'#collapse-payment-method .panel-body\').html(html);\n\n						$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-method&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_payment_method }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n						$(\'a[href=\\\'#collapse-payment-method\\\']\').trigger(\'click\');\n\n						$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                });\n                {% endif %}\n\n                $.ajax({\n                    url: \'index.php?route=checkout/payment_address\',\n                    dataType: \'html\',\n                    complete: function() {\n                        $(\'#button-register\').button(\'reset\');\n                    },\n                    success: function(html) {\n                        $(\'#collapse-payment-address .panel-body\').html(html);\n\n						$(\'#collapse-payment-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_payment_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                });\n            }\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n\n// Payment Address\n$(document).delegate(\'#button-payment-address\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/payment_address/save\',\n        type: \'post\',\n        data: $(\'#collapse-payment-address input[type=\\\'text\\\'], #collapse-payment-address input[type=\\\'date\\\'], #collapse-payment-address input[type=\\\'datetime-local\\\'], #collapse-payment-address input[type=\\\'time\\\'], #collapse-payment-address input[type=\\\'password\\\'], #collapse-payment-address input[type=\\\'checkbox\\\']:checked, #collapse-payment-address input[type=\\\'radio\\\']:checked, #collapse-payment-address input[type=\\\'hidden\\\'], #collapse-payment-address textarea, #collapse-payment-address select\'),\n        dataType: \'json\',\n        beforeSend: function() {\n        	$(\'#button-payment-address\').button(\'loading\');\n		},\n        complete: function() {\n			$(\'#button-payment-address\').button(\'reset\');\n        },\n        success: function(json) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n			$(\'.form-group\').removeClass(\'has-error\');\n\n            if (json[\'redirect\']) {\n                location = json[\'redirect\'];\n            } else if (json[\'error\']) {\n                if (json[\'error\'][\'warning\']) {\n                    $(\'#collapse-payment-address .panel-body\').prepend(\'&lt;div class=&quot;alert alert-warning alert-dismissible&quot;&gt;\' + json[\'error\'][\'warning\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n                }\n\n				for (i in json[\'error\']) {\n					var element = $(\'#input-payment-\' + i.replace(\'_\', \'-\'));\n\n					if ($(element).parent().hasClass(\'input-group\')) {\n						$(element).parent().after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					} else {\n						$(element).after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					}\n				}\n\n				// Highlight any found errors\n				$(\'.text-danger\').parent().parent().addClass(\'has-error\');\n            } else {\n                {% if shipping_required %}\n                $.ajax({\n                    url: \'index.php?route=checkout/shipping_address\',\n                    dataType: \'html\',\n                    success: function(html) {\n                        $(\'#collapse-shipping-address .panel-body\').html(html);\n\n						$(\'#collapse-shipping-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n						$(\'a[href=\\\'#collapse-shipping-address\\\']\').trigger(\'click\');\n\n						$(\'#collapse-shipping-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_shipping_method }}\');\n						$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_payment_method }}\');\n						$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                }).done(function() {\n					$.ajax({\n						url: \'index.php?route=checkout/payment_address\',\n						dataType: \'html\',\n						success: function(html) {\n							$(\'#collapse-payment-address .panel-body\').html(html);\n						},\n						error: function(xhr, ajaxOptions, thrownError) {\n							alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n						}\n					});\n				});\n                {% else %}\n                $.ajax({\n                    url: \'index.php?route=checkout/payment_method\',\n                    dataType: \'html\',\n                    success: function(html) {\n                        $(\'#collapse-payment-method .panel-body\').html(html);\n\n						$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-method&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_payment_method }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n						$(\'a[href=\\\'#collapse-payment-method\\\']\').trigger(\'click\');\n\n						$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                }).done(function() {\n					$.ajax({\n						url: \'index.php?route=checkout/payment_address\',\n						dataType: \'html\',\n						success: function(html) {\n							$(\'#collapse-payment-address .panel-body\').html(html);\n						},\n						error: function(xhr, ajaxOptions, thrownError) {\n							alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n						}\n					});				\n				});\n                {% endif %}\n            }\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n\n// Shipping Address\n$(document).delegate(\'#button-shipping-address\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/shipping_address/save\',\n        type: \'post\',\n        data: $(\'#collapse-shipping-address input[type=\\\'text\\\'], #collapse-shipping-address input[type=\\\'date\\\'], #collapse-shipping-address input[type=\\\'datetime-local\\\'], #collapse-shipping-address input[type=\\\'time\\\'], #collapse-shipping-address input[type=\\\'password\\\'], #collapse-shipping-address input[type=\\\'checkbox\\\']:checked, #collapse-shipping-address input[type=\\\'radio\\\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select\'),\n        dataType: \'json\',\n        beforeSend: function() {\n			$(\'#button-shipping-address\').button(\'loading\');\n	    },\n        success: function(json) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n			$(\'.form-group\').removeClass(\'has-error\');\n\n            if (json[\'redirect\']) {\n                location = json[\'redirect\'];\n            } else if (json[\'error\']) {\n                $(\'#button-shipping-address\').button(\'reset\');\n\n                if (json[\'error\'][\'warning\']) {\n                    $(\'#collapse-shipping-address .panel-body\').prepend(\'&lt;div class=&quot;alert alert-warning alert-dismissible&quot;&gt;\' + json[\'error\'][\'warning\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n                }\n\n				for (i in json[\'error\']) {\n					var element = $(\'#input-shipping-\' + i.replace(\'_\', \'-\'));\n\n					if ($(element).parent().hasClass(\'input-group\')) {\n						$(element).parent().after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					} else {\n						$(element).after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					}\n				}\n\n				// Highlight any found errors\n				$(\'.text-danger\').parent().parent().addClass(\'has-error\');\n            } else {\n                $.ajax({\n                    url: \'index.php?route=checkout/shipping_method\',\n                    dataType: \'html\',\n                    complete: function() {\n                        $(\'#button-shipping-address\').button(\'reset\');\n                    },\n                    success: function(html) {\n                        $(\'#collapse-shipping-method .panel-body\').html(html);\n\n						$(\'#collapse-shipping-method\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-method&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_method }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n						$(\'a[href=\\\'#collapse-shipping-method\\\']\').trigger(\'click\');\n\n						$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_payment_method }}\');\n						$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n						\n                        $.ajax({\n                            url: \'index.php?route=checkout/shipping_address\',\n                            dataType: \'html\',\n                            success: function(html) {\n                                $(\'#collapse-shipping-address .panel-body\').html(html);\n                            },\n                            error: function(xhr, ajaxOptions, thrownError) {\n                                alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                            }\n                        });\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                }).done(function() {\n					$.ajax({\n						url: \'index.php?route=checkout/payment_address\',\n						dataType: \'html\',\n						success: function(html) {\n							$(\'#collapse-payment-address .panel-body\').html(html);\n						},\n						error: function(xhr, ajaxOptions, thrownError) {\n							alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n						}\n					});\n				});\n            }\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n\n// Guest\n$(document).delegate(\'#button-guest\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/guest/save\',\n        type: \'post\',\n        data: $(\'#collapse-payment-address input[type=\\\'text\\\'], #collapse-payment-address input[type=\\\'date\\\'], #collapse-payment-address input[type=\\\'datetime-local\\\'], #collapse-payment-address input[type=\\\'time\\\'], #collapse-payment-address input[type=\\\'checkbox\\\']:checked, #collapse-payment-address input[type=\\\'radio\\\']:checked, #collapse-payment-address input[type=\\\'hidden\\\'], #collapse-payment-address textarea, #collapse-payment-address select\'),\n        dataType: \'json\',\n        beforeSend: function() {\n       		$(\'#button-guest\').button(\'loading\');\n	    },\n        success: function(json) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n			$(\'.form-group\').removeClass(\'has-error\');\n\n            if (json[\'redirect\']) {\n                location = json[\'redirect\'];\n            } else if (json[\'error\']) {\n                $(\'#button-guest\').button(\'reset\');\n\n                if (json[\'error\'][\'warning\']) {\n                    $(\'#collapse-payment-address .panel-body\').prepend(\'&lt;div class=&quot;alert alert-warning alert-dismissible&quot;&gt;\' + json[\'error\'][\'warning\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n                }\n\n				for (i in json[\'error\']) {\n					var element = $(\'#input-payment-\' + i.replace(\'_\', \'-\'));\n\n					if ($(element).parent().hasClass(\'input-group\')) {\n						$(element).parent().after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					} else {\n						$(element).after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					}\n				}\n\n				// Highlight any found errors\n				$(\'.text-danger\').parent().addClass(\'has-error\');\n            } else {\n                {% if shipping_required %}\n                var shipping_address = $(\'#collapse-payment-address input[name=\\\'shipping_address\\\']:checked\').prop(\'value\');\n\n                if (shipping_address) {\n                    $.ajax({\n                        url: \'index.php?route=checkout/shipping_method\',\n                        dataType: \'html\',\n                        complete: function() {\n                            $(\'#button-guest\').button(\'reset\');\n                        },\n                        success: function(html) {\n							// Add the shipping address\n                            $.ajax({\n                                url: \'index.php?route=checkout/guest_shipping\',\n                                dataType: \'html\',\n                                success: function(html) {\n                                    $(\'#collapse-shipping-address .panel-body\').html(html);\n\n									$(\'#collapse-shipping-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n                                },\n                                error: function(xhr, ajaxOptions, thrownError) {\n                                    alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                                }\n                            });\n\n						    $(\'#collapse-shipping-method .panel-body\').html(html);\n\n							$(\'#collapse-shipping-method\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-method&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_method }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n							$(\'a[href=\\\'#collapse-shipping-method\\\']\').trigger(\'click\');\n\n							$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_payment_method }}\');\n							$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                        },\n                        error: function(xhr, ajaxOptions, thrownError) {\n                            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                        }\n                    });\n                } else {\n                    $.ajax({\n                        url: \'index.php?route=checkout/guest_shipping\',\n                        dataType: \'html\',\n                        complete: function() {\n                            $(\'#button-guest\').button(\'reset\');\n                        },\n                        success: function(html) {\n                            $(\'#collapse-shipping-address .panel-body\').html(html);\n\n							$(\'#collapse-shipping-address\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-address&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_address }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n							$(\'a[href=\\\'#collapse-shipping-address\\\']\').trigger(\'click\');\n\n							$(\'#collapse-shipping-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_shipping_method }}\');\n							$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_payment_method }}\');\n							$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                        },\n                        error: function(xhr, ajaxOptions, thrownError) {\n                            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                        }\n                    });\n                }\n                {% else %}\n                $.ajax({\n                    url: \'index.php?route=checkout/payment_method\',\n                    dataType: \'html\',\n                    complete: function() {\n                        $(\'#button-guest\').button(\'reset\');\n                    },\n                    success: function(html) {\n                        $(\'#collapse-payment-method .panel-body\').html(html);\n\n						$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-method&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_payment_method }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n						$(\'a[href=\\\'#collapse-payment-method\\\']\').trigger(\'click\');\n\n						$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                });\n                {% endif %}\n            }\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n\n// Guest Shipping\n$(document).delegate(\'#button-guest-shipping\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/guest_shipping/save\',\n        type: \'post\',\n        data: $(\'#collapse-shipping-address input[type=\\\'text\\\'], #collapse-shipping-address input[type=\\\'date\\\'], #collapse-shipping-address input[type=\\\'datetime-local\\\'], #collapse-shipping-address input[type=\\\'time\\\'], #collapse-shipping-address input[type=\\\'password\\\'], #collapse-shipping-address input[type=\\\'checkbox\\\']:checked, #collapse-shipping-address input[type=\\\'radio\\\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select\'),\n        dataType: \'json\',\n        beforeSend: function() {\n        	$(\'#button-guest-shipping\').button(\'loading\');\n		},\n        success: function(json) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n			$(\'.form-group\').removeClass(\'has-error\');\n\n            if (json[\'redirect\']) {\n                location = json[\'redirect\'];\n            } else if (json[\'error\']) {\n                $(\'#button-guest-shipping\').button(\'reset\');\n\n                if (json[\'error\'][\'warning\']) {\n                    $(\'#collapse-shipping-address .panel-body\').prepend(\'&lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;\' + json[\'error\'][\'warning\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n                }\n\n				for (i in json[\'error\']) {\n					var element = $(\'#input-shipping-\' + i.replace(\'_\', \'-\'));\n\n					if ($(element).parent().hasClass(\'input-group\')) {\n						$(element).parent().after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					} else {\n						$(element).after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][i] + \'&lt;/div&gt;\');\n					}\n				}\n\n				// Highlight any found errors\n				$(\'.text-danger\').parent().addClass(\'has-error\');\n            } else {\n                $.ajax({\n                    url: \'index.php?route=checkout/shipping_method\',\n                    dataType: \'html\',\n                    complete: function() {\n                        $(\'#button-guest-shipping\').button(\'reset\');\n                    },\n                    success: function(html) {\n                        $(\'#collapse-shipping-method .panel-body\').html(html);\n\n						$(\'#collapse-shipping-method\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-shipping-method&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_shipping_method }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;\');\n\n						$(\'a[href=\\\'#collapse-shipping-method\\\']\').trigger(\'click\');\n\n						$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_payment_method }}\');\n						$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                });\n            }\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n\n$(document).delegate(\'#button-shipping-method\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/shipping_method/save\',\n        type: \'post\',\n        data: $(\'#collapse-shipping-method input[type=\\\'radio\\\']:checked, #collapse-shipping-method textarea\'),\n        dataType: \'json\',\n        beforeSend: function() {\n        	$(\'#button-shipping-method\').button(\'loading\');\n		},\n        success: function(json) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n\n            if (json[\'redirect\']) {\n                location = json[\'redirect\'];\n            } else if (json[\'error\']) {\n                $(\'#button-shipping-method\').button(\'reset\');\n\n                if (json[\'error\'][\'warning\']) {\n                    $(\'#collapse-shipping-method .panel-body\').prepend(\'&lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;\' + json[\'error\'][\'warning\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n                }\n            } else {\n                $.ajax({\n                    url: \'index.php?route=checkout/payment_method\',\n                    dataType: \'html\',\n                    complete: function() {\n                        $(\'#button-shipping-method\').button(\'reset\');\n                    },\n                    success: function(html) {\n                        $(\'#collapse-payment-method .panel-body\').html(html);\n\n						$(\'#collapse-payment-method\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-payment-method&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_payment_method }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n						$(\'a[href=\\\'#collapse-payment-method\\\']\').trigger(\'click\');\n\n						$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'{{ text_checkout_confirm }}\');\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                });\n            }\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n\n$(document).delegate(\'#button-payment-method\', \'click\', function() {\n    $.ajax({\n        url: \'index.php?route=checkout/payment_method/save\',\n        type: \'post\',\n        data: $(\'#collapse-payment-method input[type=\\\'radio\\\']:checked, #collapse-payment-method input[type=\\\'checkbox\\\']:checked, #collapse-payment-method textarea\'),\n        dataType: \'json\',\n        beforeSend: function() {\n         	$(\'#button-payment-method\').button(\'loading\');\n		},\n        success: function(json) {\n            $(\'.alert-dismissible, .text-danger\').remove();\n\n            if (json[\'redirect\']) {\n                location = json[\'redirect\'];\n            } else if (json[\'error\']) {\n                $(\'#button-payment-method\').button(\'reset\');\n                \n                if (json[\'error\'][\'warning\']) {\n                    $(\'#collapse-payment-method .panel-body\').prepend(\'&lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;\' + json[\'error\'][\'warning\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n                }\n            } else {\n                $.ajax({\n                    url: \'index.php?route=checkout/confirm\',\n                    dataType: \'html\',\n                    complete: function() {\n                        $(\'#button-payment-method\').button(\'reset\');\n                    },\n                    success: function(html) {\n                        $(\'#collapse-checkout-confirm .panel-body\').html(html);\n\n						$(\'#collapse-checkout-confirm\').parent().find(\'.panel-heading .panel-title\').html(\'&lt;a href=&quot;#collapse-checkout-confirm&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; class=&quot;accordion-toggle&quot;&gt;{{ text_checkout_confirm }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\');\n\n						$(\'a[href=\\\'#collapse-checkout-confirm\\\']\').trigger(\'click\');\n					},\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                });\n            }\n        },\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n    });\n});\n//--&gt;&lt;/script&gt;\n{{ footer }}', '2022-01-27 17:48:23'),
(48, 0, 'default', 'checkout/login', '&lt;div class=&quot;row&quot;&gt;\n  &lt;div class=&quot;col-sm-6&quot;&gt;\n    &lt;h2&gt;{{ text_new_customer }}&lt;/h2&gt;\n    &lt;p&gt;{{ text_checkout }}&lt;/p&gt;\n    &lt;div class=&quot;radio&quot;&gt;\n      &lt;label&gt; {% if account == \'register\' %}\n        &lt;input type=&quot;radio&quot; name=&quot;account&quot; value=&quot;register&quot;/&gt;\n        {% else %}\n        &lt;input type=&quot;radio&quot; name=&quot;account&quot; value=&quot;register&quot;/&gt;\n        {% endif %}\n        {{ text_register }}&lt;/label&gt;\n    &lt;/div&gt;\n    {% if checkout_guest %}\n    &lt;div class=&quot;radio&quot;&gt;\n      &lt;label&gt; {% if account == \'guest\' %}\n        &lt;input type=&quot;radio&quot; name=&quot;account&quot; value=&quot;guest&quot; checked=&quot;checked&quot;  /&gt;\n        {% else %}\n        &lt;input type=&quot;radio&quot; name=&quot;account&quot; value=&quot;guest&quot; checked=&quot;checked&quot;  /&gt;\n        {% endif %}\n        {{ text_guest }}&lt;/label&gt;\n    &lt;/div&gt;\n    {% endif %}\n    &lt;p&gt;{{ text_register_account }}&lt;/p&gt;\n    &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-account&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot; /&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;col-sm-6&quot;&gt;\n    &lt;h2&gt;{{ text_returning_customer }}&lt;/h2&gt;\n    &lt;p&gt;{{ text_i_am_returning_customer }}&lt;/p&gt;\n    &lt;div class=&quot;form-group&quot;&gt;\n      &lt;label class=&quot;control-label&quot; for=&quot;input-email&quot;&gt;{{ entry_email }}&lt;/label&gt;\n      &lt;input type=&quot;text&quot; name=&quot;email&quot; value=&quot;&quot; placeholder=&quot;{{ entry_email }}&quot; id=&quot;input-email&quot; class=&quot;form-control&quot; /&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;script&gt;\n  $(document).ready(function(){\n    setTimeout(function(){\n      $(\'#button-account\').trigger(\'click\');\n    },300);\n  });\n&lt;/script&gt;\n', '2022-01-24 18:17:46');
INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(249, 0, 'default', 'checkout/cart', '{{ header }}\n&lt;div id=&quot;checkout-cart&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  {% if attention %}\n  &lt;div class=&quot;alert alert-info&quot;&gt;&lt;i class=&quot;fa fa-info-circle&quot;&gt;&lt;/i&gt; {{ attention }}\n    &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if success %}\n  &lt;div class=&quot;alert alert-success alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-check-circle&quot;&gt;&lt;/i&gt; {{ success }}\n    &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if error_warning %}\n  &lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; {{ error_warning }}\n    &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;\n  &lt;/div&gt;\n  {% endif %}\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h1&gt;{{ heading_title }}\n        {% if weight %}\n        &amp;nbsp;({{ weight }})\n        {% endif %} &lt;/h1&gt;\n      &lt;form action=&quot;{{ action }}&quot; method=&quot;post&quot; enctype=&quot;multipart/form-data&quot;&gt;\n        &lt;div class=&quot;table-responsive&quot;&gt;\n          &lt;table class=&quot;table table-bordered&quot;&gt;\n            &lt;thead&gt;\n              &lt;tr&gt;\n                &lt;td class=&quot;text-center&quot;&gt;{{ column_image }}&lt;/td&gt;\n                &lt;td class=&quot;text-left&quot;&gt;{{ column_name }}&lt;/td&gt;\n                &lt;td class=&quot;text-left&quot;&gt;{{ column_model }}&lt;/td&gt;\n                &lt;td class=&quot;text-left&quot;&gt;{{ column_quantity }}&lt;/td&gt;\n                &lt;td class=&quot;text-right&quot;&gt;{{ column_price }}&lt;/td&gt;\n                &lt;td class=&quot;text-right&quot;&gt;{{ column_total }}&lt;/td&gt;\n              &lt;/tr&gt;\n            &lt;/thead&gt;\n            &lt;tbody&gt;\n            \n            {% for product in products %}\n            &lt;tr&gt;\n              &lt;td class=&quot;text-center&quot;&gt;{% if product.thumb %} &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-thumbnail&quot; /&gt;&lt;/a&gt; {% endif %}&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt; {% if not product.stock %} &lt;span class=&quot;text-danger&quot;&gt;***&lt;/span&gt; {% endif %}\n                {% if product.option %}\n                {% for option in product.option %} &lt;br /&gt;\n                &lt;small&gt;{{ option.name }}: {{ option.value }}&lt;/small&gt; {% endfor %}\n                {% endif %}\n                {#{% if product.reward %} &lt;br /&gt;\n                &lt;small&gt;{{ product.reward }}&lt;/small&gt; {% endif %}#}\n                {% if product.recurring %} &lt;br /&gt;\n                &lt;span class=&quot;label label-info&quot;&gt;{{ text_recurring_item }}&lt;/span&gt; &lt;small&gt;{{ product.recurring }}&lt;/small&gt; {% endif %}&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;{{ product.model }}&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;&lt;div class=&quot;input-group btn-block&quot; style=&quot;max-width: 200px;&quot;&gt;\n                  &lt;input type=&quot;number&quot; min=&quot;0&quot; name=&quot;quantity[{{ product.cart_id }}]&quot; value=&quot;{{ product.quantity }}&quot; size=&quot;1&quot; class=&quot;form-control&quot; /&gt;\n                  &lt;span class=&quot;input-group-btn&quot;&gt;\n                  &lt;button type=&quot;submit&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_update }}&quot; class=&quot;btn btn-primary&quot;&gt;&lt;i class=&quot;fa fa-refresh&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                  &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger&quot; onclick=&quot;cart.remove(\'{{ product.cart_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-times-circle&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                  &lt;/span&gt;&lt;/div&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ product.price }}&lt;/span&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ product.total }}&lt;/span&gt;&lt;/td&gt;\n            &lt;/tr&gt;\n            {% endfor %}\n            {% for voucher in vouchers %}\n            &lt;tr&gt;\n              &lt;td&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;{{ voucher.description }}&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-left&quot;&gt;&lt;div class=&quot;input-group btn-block&quot; style=&quot;max-width: 200px;&quot;&gt;\n                  &lt;input type=&quot;text&quot; name=&quot;&quot; value=&quot;1&quot; size=&quot;1&quot; disabled=&quot;disabled&quot; class=&quot;form-control&quot; /&gt;\n                  &lt;span class=&quot;input-group-btn&quot;&gt;\n                  &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger&quot; onclick=&quot;voucher.remove(\'{{ voucher.key }}\');&quot;&gt;&lt;i class=&quot;fa fa-times-circle&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                  &lt;/span&gt;&lt;/div&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n            &lt;/tr&gt;\n            {% endfor %}\n              &lt;/tbody&gt;\n            \n          &lt;/table&gt;\n        &lt;/div&gt;\n      &lt;/form&gt;\n      {#{% if modules %}\n      &lt;h2&gt;{{ text_next }}&lt;/h2&gt;\n      &lt;p&gt;{{ text_next_choice }}&lt;/p&gt;\n      &lt;div class=&quot;panel-group&quot; id=&quot;accordion&quot;&gt; {% for module in modules %}\n        {{ module }}\n        {% endfor %} &lt;/div&gt;\n      {% endif %} &lt;br /&gt;#}\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-4 col-sm-offset-8&quot;&gt;\n          &lt;table class=&quot;table table-bordered&quot;&gt;\n            {% for total in totals %}\n            &lt;tr&gt;\n              &lt;td class=&quot;text-right&quot;&gt;&lt;strong&gt;{{ total.title }}:&lt;/strong&gt;&lt;/td&gt;\n              &lt;td class=&quot;text-right&quot;&gt;{{ total.text }}&lt;/td&gt;\n            &lt;/tr&gt;\n            {% endfor %}\n          &lt;/table&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;buttons clearfix&quot;&gt;\n        &lt;div class=&quot;pull-left&quot;&gt;&lt;a class=&quot;add&quot; style=&quot;width: 100% !important;padding: 0 .5em&quot; href=&quot;{{ continue }}&quot; class=&quot;btn btn-default&quot;&gt;{{ button_shopping }}&lt;/a&gt;&lt;/div&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a class=&quot;add&quot; style=&quot;width: 100% !important;padding: 0 .5em&quot; href=&quot;{{ checkout }}&quot;&gt;{{ button_checkout }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }} ', '2022-01-27 14:05:55'),
(246, 0, 'default', 'common/cart', '&lt;div id=&quot;cart&quot; class=&quot;btn-group btn-block&quot;&gt;\n  &lt;button type=&quot;button&quot; data-toggle=&quot;dropdown&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-inverse btn-block btn-lg dropdown-toggle&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span id=&quot;cart-total&quot;&gt;{{ text_items }}&lt;/span&gt;&lt;/button&gt;\n  &lt;ul class=&quot;dropdown-menu pull-right&quot;&gt;\n    {% if products or vouchers %}\n    &lt;li&gt;\n      &lt;table class=&quot;table table-striped&quot;&gt;\n        {% for product in products %}\n        &lt;tr&gt;\n          &lt;td class=&quot;text-center&quot;&gt;{% if product.thumb %} &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-thumbnail&quot; /&gt;&lt;/a&gt; {% endif %}&lt;/td&gt;\n          &lt;td class=&quot;text-left&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt; {% if product.option %}\n            {% for option in product.option %} &lt;br /&gt;\n            - &lt;small&gt;{{ option.name }} {{ option.value }}&lt;/small&gt; {% endfor %}\n            {% endif %}\n            {% if product.recurring %} &lt;br /&gt;\n            - &lt;small&gt;{{ text_recurring }} {{ product.recurring }}&lt;/small&gt; {% endif %}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;x {{ product.quantity }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ product.total }}&lt;/td&gt;\n          &lt;td class=&quot;text-center&quot;&gt;&lt;button type=&quot;button&quot; onclick=&quot;cart.remove(\'{{ product.cart_id }}\');&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger btn-xs&quot;&gt;&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;&lt;/button&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        {% endfor %}\n        {% for voucher in vouchers %}\n        &lt;tr&gt;\n          &lt;td class=&quot;text-center&quot;&gt;&lt;/td&gt;\n          &lt;td class=&quot;text-left&quot;&gt;{{ voucher.description }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;x&amp;nbsp;1&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n          &lt;td class=&quot;text-center text-danger&quot;&gt;&lt;button type=&quot;button&quot; onclick=&quot;voucher.remove(\'{{ voucher.key }}\');&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger btn-xs&quot;&gt;&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;&lt;/button&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        {% endfor %}\n      &lt;/table&gt;\n    &lt;/li&gt;\n    &lt;li&gt;\n      &lt;div&gt;\n        &lt;table class=&quot;table table-bordered&quot;&gt;\n          {% for total in totals %}\n          &lt;tr&gt;\n            &lt;td class=&quot;text-right&quot;&gt;&lt;strong&gt;{{ total.title }}&lt;/strong&gt;&lt;/td&gt;\n            &lt;td class=&quot;text-right&quot;&gt;{{ total.text }}&lt;/td&gt;\n          &lt;/tr&gt;\n          {% endfor %}\n        &lt;/table&gt;\n        &lt;p class=&quot;text-right&quot;&gt;&lt;a class=&quot;btn-cart&quot; href=&quot;{{ cart }}&quot;&gt;&lt;strong&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ text_cart }}&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a class=&quot;btn-cart&quot; href=&quot;{{ checkout }}&quot;&gt;&lt;strong&gt; {{ text_checkout }}&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;\n      &lt;/div&gt;\n    &lt;/li&gt;\n    {% else %}\n    &lt;li&gt;\n      hhjhjhj\n      &lt;p class=&quot;text-center&quot;&gt;{{ text_empty }}&lt;/p&gt;\n    &lt;/li&gt;\n    {% endif %}\n  &lt;/ul&gt;\n&lt;/div&gt;\n', '2022-01-27 13:59:33'),
(26, 0, 'default', 'checkout/guest_shipping', '&lt;form class=&quot;form-horizontal&quot;&gt;\n  &lt;div class=&quot;form-group required&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-firstname&quot;&gt;{{ entry_firstname }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;input type=&quot;text&quot; name=&quot;firstname&quot; value=&quot;{{ firstname }}&quot; placeholder=&quot;{{ entry_firstname }}&quot; id=&quot;input-shipping-firstname&quot; class=&quot;form-control&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;form-group required&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-address-1&quot;&gt;{{ entry_address_1 }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;input type=&quot;text&quot; name=&quot;address_1&quot; value=&quot;{{ address_1 }}&quot; placeholder=&quot;{{ entry_address_1 }}&quot; id=&quot;input-shipping-address-1&quot; class=&quot;form-control&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% for custom_field in custom_fields %}\n  {% if custom_field.location == \'address\' %}\n  {% if custom_field.type == \'select\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;select name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;\n        &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n        \n        {% for custom_field_value in custom_field.custom_field_value %}\n        {% if address_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == address_custom_field[custom_field.custom_field_id] %}\n        \n        &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; selected=&quot;selected&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n        \n        {% else %}\n        \n        &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n        \n        {% endif %}\n        {% endfor %}\n      \n      &lt;/select&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if custom_field.type == \'radio\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;div id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n        &lt;div class=&quot;radio&quot;&gt; {% if address_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == address_custom_field[custom_field.custom_field_id] %}\n          &lt;label&gt;\n            &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; checked=&quot;checked&quot; /&gt;\n            {{ custom_field_value.name }}&lt;/label&gt;\n          {% else %}\n          &lt;label&gt;\n            &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n            {{ custom_field_value.name }}&lt;/label&gt;\n          {% endif %} &lt;/div&gt;\n        {% endfor %} &lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if custom_field.type == \'checkbox\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;div id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n        &lt;div class=&quot;checkbox&quot;&gt; {% if address_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id in address_custom_field[custom_field.custom_field_id] %}\n          &lt;label&gt;\n            &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; checked=&quot;checked&quot; /&gt;\n            {{ custom_field_value.name }}&lt;/label&gt;\n          {% else %}\n          &lt;label&gt;\n            &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n            {{ custom_field_value.name }}&lt;/label&gt;\n          {% endif %} &lt;/div&gt;\n        {% endfor %} &lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if custom_field.type == \'text\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if custom_field.type == \'textarea\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;textarea name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}&lt;/textarea&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if custom_field.type == \'file\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;button type=&quot;button&quot; id=&quot;button-shipping-custom-field{{ custom_field.custom_field_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n      &lt;input type=&quot;hidden&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if address_custom_field[custom_field.custom_field_id] %}  {{ address_custom_field[custom_field.custom_field_id] }} {% endif %}&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if custom_field.type == \'date\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;div class=&quot;input-group date&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n        &lt;span class=&quot;input-group-btn&quot;&gt;\n        &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n        &lt;/span&gt;&lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if custom_field.type == \'time\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;div class=&quot;input-group time&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n        &lt;span class=&quot;input-group-btn&quot;&gt;\n        &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n        &lt;/span&gt;&lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% if custom_field.type == \'time\' %}\n  &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;div class=&quot;input-group datetime&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if address_custom_field[custom_field.custom_field_id] %}{{ address_custom_field[custom_field.custom_field_id] }}{% else %}{{ custom_field.value }}{% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n        &lt;span class=&quot;input-group-btn&quot;&gt;\n        &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n        &lt;/span&gt;&lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endif %}\n  {% endif %}\n  {% endfor %}\n  &lt;div class=&quot;buttons&quot;&gt;\n    &lt;div class=&quot;pull-right&quot;&gt;\n      &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-guest-shipping&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/form&gt;', '2022-01-24 17:29:36'),
(40, 0, 'default', 'checkout/register', '&lt;div class=&quot;row&quot;&gt;\n  &lt;div class=&quot;col-sm-6&quot;&gt;\n    &lt;fieldset id=&quot;account&quot;&gt;\n      &lt;legend&gt;{{ text_your_details }}&lt;/legend&gt;\n      &lt;div class=&quot;form-group&quot; style=&quot;display: {% if customer_groups|length &gt; 1 %} block {% else %} none {% endif %};&quot;&gt;\n        &lt;label class=&quot;control-label&quot;&gt;{{ entry_customer_group }}&lt;/label&gt;\n        {% for customer_group in customer_groups %}\n        {% if customer_group.customer_group_id == customer_group_id %}\n        &lt;div class=&quot;radio&quot;&gt;\n          &lt;label&gt;\n            &lt;input type=&quot;radio&quot; name=&quot;customer_group_id&quot; value=&quot;{{ customer_group.customer_group_id }}&quot; checked=&quot;checked&quot; /&gt;\n            {{ customer_group.name }}&lt;/label&gt;\n        &lt;/div&gt;\n        {% else %}\n        &lt;div class=&quot;radio&quot;&gt;\n          &lt;label&gt;\n            &lt;input type=&quot;radio&quot; name=&quot;customer_group_id&quot; value=&quot;{{ customer_group.customer_group_id }}&quot; /&gt;\n            {{ customer_group.name }}&lt;/label&gt;\n        &lt;/div&gt;\n        {% endif %}\n        {% endfor %}&lt;/div&gt;\n      &lt;div class=&quot;form-group required&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-firstname&quot;&gt;{{ entry_firstname }}&lt;/label&gt;\n        &lt;input type=&quot;text&quot; name=&quot;firstname&quot; value=&quot;&quot; placeholder=&quot;{{ entry_firstname }}&quot; id=&quot;input-payment-firstname&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;form-group required&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-telephone&quot;&gt;{{ entry_telephone }}&lt;/label&gt;\n        &lt;input type=&quot;text&quot; name=&quot;telephone&quot; value=&quot;&quot; placeholder=&quot;{{ entry_telephone }}&quot; id=&quot;input-payment-telephone&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;form-group required&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-email&quot;&gt;{{ entry_email }}&lt;/label&gt;\n        &lt;input type=&quot;text&quot; name=&quot;email&quot; value=&quot;&quot; placeholder=&quot;{{ entry_email }}&quot; id=&quot;input-payment-email&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n      {% for custom_field in custom_fields %}\n      \n      {% if custom_field.location == \'account\' %}\n      \n      {% if custom_field.type == \'select\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;select name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;\n          &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n          \n          \n          \n          {% for custom_field_value in custom_field.custom_field_value %}\n          \n          \n          \n          &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n          \n          \n          \n          {% endfor %}\n        \n        \n        \n        &lt;/select&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'radio\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;div class=&quot;radio&quot;&gt;\n            &lt;label&gt;\n              &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n              {{ custom_field_value.name }}&lt;/label&gt;\n          &lt;/div&gt;\n          {% endfor %} &lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'checkbox\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;div class=&quot;checkbox&quot;&gt;\n            &lt;label&gt;\n              &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n              {{ custom_field_value.name }}&lt;/label&gt;\n          &lt;/div&gt;\n          {% endfor %} &lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'text\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'textarea\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;textarea name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;{{ custom_field.value }}&lt;/textarea&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'file\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;br /&gt;\n        &lt;button type=&quot;button&quot; id=&quot;button-payment-custom-field{{ custom_field.custom_field_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n        &lt;input type=&quot;hidden&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; /&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'date\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div class=&quot;input-group date&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'time\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div class=&quot;input-group time&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'time\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div class=&quot;input-group datetime&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% endif %}\n      \n      {% endfor %}\n    &lt;/fieldset&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;col-sm-6&quot;&gt;\n    &lt;fieldset id=&quot;address&quot;&gt;\n      &lt;legend&gt;{{ text_your_address }}&lt;/legend&gt;\n      &lt;div class=&quot;form-group required&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-address-1&quot;&gt;{{ entry_address_1 }}&lt;/label&gt;\n        &lt;input type=&quot;text&quot; name=&quot;address_1&quot; value=&quot;&quot; placeholder=&quot;{{ entry_address_1 }}&quot; id=&quot;input-payment-address-1&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n      {% for custom_field in custom_fields %}\n      \n      {% if custom_field.location == \'address\' %}\n      \n      {% if custom_field.type == \'select\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;select name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;\n          &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n          \n          \n          \n          {% for custom_field_value in custom_field.custom_field_value %}\n          \n          \n          \n          &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n          \n          \n          \n          {% endfor %}\n        \n        \n        \n        &lt;/select&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'radio\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;div class=&quot;radio&quot;&gt;\n            &lt;label&gt;\n              &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n              {{ custom_field_value.name }}&lt;/label&gt;\n          &lt;/div&gt;\n          {% endfor %} &lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'checkbox\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;div class=&quot;checkbox&quot;&gt;\n            &lt;label&gt;\n              &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n              {{ custom_field_value.name }}&lt;/label&gt;\n          &lt;/div&gt;\n          {% endfor %} &lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'text\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'textarea\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;textarea name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;{{ custom_field.value }}&lt;/textarea&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'file\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;br /&gt;\n        &lt;button type=&quot;button&quot; id=&quot;button-payment-custom-field{{ custom_field.custom_field_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n        &lt;input type=&quot;hidden&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; /&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'date\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div class=&quot;input-group date&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'time\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div class=&quot;input-group time&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% if custom_field.type == \'time\' %}\n      &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n        &lt;div class=&quot;input-group datetime&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      \n      {% endif %}\n      {% endfor %}\n    &lt;/fieldset&gt;\n\n    {{ captcha }}&lt;/div&gt;\n&lt;/div&gt;\n{% if shipping_required %}\n&lt;div class=&quot;checkbox&quot; style=&quot;display: none&quot;&gt;\n  &lt;label&gt;\n    &lt;input type=&quot;checkbox&quot; name=&quot;shipping_address&quot; value=&quot;1&quot; checked=&quot;checked&quot; /&gt;\n    {{ entry_shipping }}&lt;/label&gt;\n&lt;/div&gt;\n{% endif %}\n{% if text_agree %}\n    &lt;input type=&quot;checkbox&quot; name=&quot;agree&quot; value=&quot;1&quot; checked=&quot;checked&quot; style=&quot;display: none&quot;  /&gt;\n    &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-register&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot; /&gt;\n{% else %}\n&lt;div class=&quot;buttons clearfix&quot;&gt;\n  &lt;div class=&quot;pull-right&quot;&gt;\n    &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-register&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot; /&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n{% endif %}', '2022-01-24 18:03:35');
INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(33, 0, 'default', 'checkout/payment_address', '&lt;form class=&quot;form-horizontal&quot;&gt;\n  {% if addresses %}\n  &lt;div class=&quot;radio&quot;&gt;\n    &lt;label&gt;\n      &lt;input type=&quot;radio&quot; name=&quot;payment_address&quot; value=&quot;existing&quot; checked=&quot;checked&quot; /&gt;\n      {{ text_address_existing }}&lt;/label&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;radio&quot;&gt;\n    &lt;label&gt;\n      &lt;input type=&quot;radio&quot; name=&quot;payment_address&quot; value=&quot;new&quot; /&gt;\n      {{ text_address_new }}&lt;/label&gt;\n  &lt;/div&gt;\n  {% endif %}\n  &lt;br /&gt;\n  &lt;div id=&quot;payment-new&quot; style=&quot;display: {% if addresses %}none{% else %}block{% endif %};&quot;&gt;\n    &lt;div class=&quot;form-group required&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-payment-firstname&quot;&gt;{{ entry_firstname }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;firstname&quot; value=&quot;&quot; placeholder=&quot;{{ entry_firstname }}&quot; id=&quot;input-payment-firstname&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;form-group required&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-payment-address-1&quot;&gt;{{ entry_address_1 }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;address_1&quot; value=&quot;&quot; placeholder=&quot;{{ entry_address_1 }}&quot; id=&quot;input-payment-address-1&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% for custom_field in custom_fields %}\n    {% if custom_field.type == \'select\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;select name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;\n          &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n          {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n          {% endfor %}\n        &lt;/select&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'radio\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;\n          {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;div class=&quot;radio&quot;&gt;\n            &lt;label&gt;\n              &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n              {{ custom_field_value.name }}&lt;/label&gt;\n          &lt;/div&gt;\n          {% endfor %}\n        &lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'checkbox\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;\n          {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;div class=&quot;checkbox&quot;&gt;\n            &lt;label&gt;\n              &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n              {{ custom_field_value.name }}&lt;/label&gt;\n          &lt;/div&gt;\n          {% endfor %}\n        &lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'text\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'textarea\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;textarea name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;{{ custom_field.value }}&lt;/textarea&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'file\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;button type=&quot;button&quot; id=&quot;button-payment-custom-field{{ custom_field.custom_field_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n        &lt;input type=&quot;hidden&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; /&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'date\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div class=&quot;input-group date&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'time\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div class=&quot;input-group time&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'time\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div class=&quot;input-group datetime&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% endfor %}\n  &lt;/div&gt;\n  &lt;div class=&quot;buttons clearfix&quot;&gt;\n    &lt;div class=&quot;pull-right&quot;&gt;\n      &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-payment-address&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/form&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'input[name=\\\'payment_address\\\']\').on(\'change\', function() {\n	if (this.value == \'new\') {\n		$(\'#payment-existing\').hide();\n		$(\'#payment-new\').show();\n	} else {\n		$(\'#payment-existing\').show();\n		$(\'#payment-new\').hide();\n	}\n});\n//--&gt;&lt;/script&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n// Sort the custom fields\n$(\'#collapse-payment-address .form-group[data-sort]\').detach().each(function() {\n	if ($(this).attr(\'data-sort\') &gt;= 0 &amp;&amp; $(this).attr(\'data-sort\') &lt;= $(\'#collapse-payment-address .form-group\').length-2) {\n		$(\'#collapse-payment-address .form-group\').eq(parseInt($(this).attr(\'data-sort\'))+2).before(this);\n	}\n\n	if ($(this).attr(\'data-sort\') &gt; $(\'#collapse-payment-address .form-group\').length-2) {\n		$(\'#collapse-payment-address .form-group:last\').after(this);\n	}\n\n	if ($(this).attr(\'data-sort\') == $(\'#collapse-payment-address .form-group\').length-2) {\n		$(\'#collapse-payment-address .form-group:last\').after(this);\n	}\n\n	if ($(this).attr(\'data-sort\') &lt; -$(\'#collapse-payment-address .form-group\').length-2) {\n		$(\'#collapse-payment-address .form-group:first\').before(this);\n	}\n});\n//--&gt;&lt;/script&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#collapse-payment-address button[id^=\\\'button-payment-custom-field\\\']\').on(\'click\', function() {\n	var element = this;\n\n	$(\'#form-upload\').remove();\n\n	$(\'body\').prepend(\'&lt;form enctype=&quot;multipart/form-data&quot; id=&quot;form-upload&quot; style=&quot;display: none;&quot;&gt;&lt;input type=&quot;file&quot; name=&quot;file&quot; /&gt;&lt;/form&gt;\');\n\n	$(\'#form-upload input[name=\\\'file\\\']\').trigger(\'click\');\n\n	if (typeof timer != \'undefined\') {\n    	clearInterval(timer);\n	}\n\n	timer = setInterval(function() {\n		if ($(\'#form-upload input[name=\\\'file\\\']\').val() != \'\') {\n			clearInterval(timer);\n\n			$.ajax({\n				url: \'index.php?route=tool/upload\',\n				type: \'post\',\n				dataType: \'json\',\n				data: new FormData($(\'#form-upload\')[0]),\n				cache: false,\n				contentType: false,\n				processData: false,\n				beforeSend: function() {\n					$(element).button(\'loading\');\n				},\n				complete: function() {\n					$(element).button(\'reset\');\n				},\n				success: function(json) {\n					$(element).parent().find(\'.text-danger\').remove();\n\n					if (json[\'error\']) {\n						$(element).parent().find(\'input[name^=\\\'custom_field\\\']\').after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'] + \'&lt;/div&gt;\');\n					}\n\n					if (json[\'success\']) {\n						alert(json[\'success\']);\n\n						$(element).parent().find(\'input[name^=\\\'custom_field\\\']\').val(json[\'code\']);\n					}\n				},\n				error: function(xhr, ajaxOptions, thrownError) {\n					alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n				}\n			});\n		}\n	}, 500);\n});\n//--&gt;&lt;/script&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'.date\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickTime: false\n});\n\n$(\'.time\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: false\n});\n\n$(\'.datetime\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: true,\n	pickTime: true\n});\n//--&gt;&lt;/script&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#collapse-payment-address select[name=\\\'country_id\\\']\').on(\'change\', function() {\n	$.ajax({\n		url: \'index.php?route=checkout/checkout/country&amp;country_id=\' + this.value,\n		dataType: \'json\',\n		beforeSend: function() {\n			$(\'#collapse-payment-address select[name=\\\'country_id\\\']\').prop(\'disabled\', true);\n		},\n		complete: function() {\n			$(\'#collapse-payment-address select[name=\\\'country_id\\\']\').prop(\'disabled\', false);\n		},\n		success: function(json) {\n			if (json[\'postcode_required\'] == \'1\') {\n				$(\'#collapse-payment-address input[name=\\\'postcode\\\']\').parent().parent().addClass(\'required\');\n			} else {\n				$(\'#collapse-payment-address input[name=\\\'postcode\\\']\').parent().parent().removeClass(\'required\');\n			}\n\n			html = \'&lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\';\n\n			if (json[\'zone\'] &amp;&amp; json[\'zone\'] != \'\') {\n				for (i = 0; i &lt; json[\'zone\'].length; i++) {\n					html += \'&lt;option value=&quot;\' + json[\'zone\'][i][\'zone_id\'] + \'&quot;\';\n\n					if (json[\'zone\'][i][\'zone_id\'] == \'{{ zone_id }}\') {\n						html += \' selected=&quot;selected&quot;\';\n					}\n\n					html += \'&gt;\' + json[\'zone\'][i][\'name\'] + \'&lt;/option&gt;\';\n				}\n			} else {\n				html += \'&lt;option value=&quot;0&quot; selected=&quot;selected&quot;&gt;{{ text_none }}&lt;/option&gt;\';\n			}\n\n			$(\'#collapse-payment-address select[name=\\\'zone_id\\\']\').html(html);\n		},\n		error: function(xhr, ajaxOptions, thrownError) {\n			alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n		}\n	});\n});\n\n$(\'#collapse-payment-address select[name=\\\'country_id\\\']\').trigger(\'change\');\n//--&gt;&lt;/script&gt;\n', '2022-01-24 17:46:08'),
(35, 0, 'default', 'checkout/shipping_address', '&lt;form class=&quot;form-horizontal&quot;&gt;\n  {% if addresses %}\n  &lt;div class=&quot;radio&quot;&gt;\n    &lt;label&gt;\n      &lt;input type=&quot;radio&quot; name=&quot;shipping_address&quot; value=&quot;existing&quot; checked=&quot;checked&quot; /&gt;\n      {{ text_address_existing }}&lt;/label&gt;\n  &lt;/div&gt;\n  &lt;div class=&quot;radio&quot;&gt;\n    &lt;label&gt;\n      &lt;input type=&quot;radio&quot; name=&quot;shipping_address&quot; value=&quot;new&quot; /&gt;\n      {{ text_address_new }}&lt;/label&gt;\n  &lt;/div&gt;\n  {% endif %}\n  &lt;br /&gt;\n  &lt;div id=&quot;shipping-new&quot; style=&quot;display: {% if addresses %}none{% else %}block{% endif %};&quot;&gt;\n    &lt;div class=&quot;form-group required&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-firstname&quot;&gt;{{ entry_firstname }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;firstname&quot; value=&quot;&quot; placeholder=&quot;{{ entry_firstname }}&quot; id=&quot;input-shipping-firstname&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;form-group required&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-address-1&quot;&gt;{{ entry_address_1 }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;address_1&quot; value=&quot;&quot; placeholder=&quot;{{ entry_address_1 }}&quot; id=&quot;input-shipping-address-1&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n   {% for custom_field in custom_fields %}\n    {% if custom_field.type == \'select\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;select name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;\n          &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n          {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n          {% endfor %}\n        &lt;/select&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'radio\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;\n          {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;div class=&quot;radio&quot;&gt;\n            &lt;label&gt;\n              &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n              {{ custom_field_value.name }}&lt;/label&gt;\n          &lt;/div&gt;\n          {% endfor %}\n        &lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'checkbox\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;\n          {% for custom_field_value in custom_field.custom_field_value %}\n          &lt;div class=&quot;checkbox&quot;&gt;\n            &lt;label&gt;\n              &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n              {{ custom_field_value.name }}&lt;/label&gt;\n          &lt;/div&gt;\n          {% endfor %}\n        &lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'text\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'textarea\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;textarea name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;{{ custom_field.value }}&lt;/textarea&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'file\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;button type=&quot;button&quot; id=&quot;button-shipping-custom-field{{ custom_field.custom_field_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n        &lt;input type=&quot;hidden&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; /&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'date\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div class=&quot;input-group date&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'time\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div class=&quot;input-group time&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% if custom_field.type == \'datetime\' %}\n    &lt;div class=&quot;form-group{% if custom_field.required %} required {% endif %} custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n      &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n      &lt;div class=&quot;col-sm-10&quot;&gt;\n        &lt;div class=&quot;input-group datetime&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field.value }}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-shipping-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n          &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    {% endif %}\n    {% endfor %}\n  &lt;/div&gt;\n  &lt;div class=&quot;buttons clearfix&quot;&gt;\n    &lt;div class=&quot;pull-right&quot;&gt;\n      &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-shipping-address&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot; /&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/form&gt;', '2022-01-24 17:49:55'),
(353, 0, 'default', 'common/footer', '&lt;footer&gt;\n  &lt;div class=&quot;container&quot;&gt;\n    &lt;div class=&quot;row&quot;&gt;\n      {% if informations %}\n      &lt;div class=&quot;col-sm-3&quot;&gt;\n        &lt;h5&gt;{{ text_information }}&lt;/h5&gt;\n        &lt;ul class=&quot;list-unstyled&quot;&gt;\n         {% for information in informations %}\n          &lt;li&gt;&lt;a href=&quot;{{ information.href }}&quot;&gt;{{ information.title }}&lt;/a&gt;&lt;/li&gt;\n          {% endfor %}\n        &lt;/ul&gt;\n      &lt;/div&gt;\n      {% endif %}\n      &lt;div class=&quot;col-sm-3&quot;&gt;\n        &lt;h5&gt;{{ text_service }}&lt;/h5&gt;\n        &lt;ul class=&quot;list-unstyled&quot;&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ contact }}&quot;&gt;{{ text_contact }}&lt;/a&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ return }}&quot;&gt;{{ text_return }}&lt;/a&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ sitemap }}&quot;&gt;{{ text_sitemap }}&lt;/a&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;col-sm-3&quot;&gt;\n        &lt;h5&gt;{{ text_extra }}&lt;/h5&gt;\n        &lt;ul class=&quot;list-unstyled&quot;&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ manufacturer }}&quot;&gt;{{ text_manufacturer }}&lt;/a&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ voucher }}&quot;&gt;{{ text_voucher }}&lt;/a&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ affiliate }}&quot;&gt;{{ text_affiliate }}&lt;/a&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ special }}&quot;&gt;{{ text_special }}&lt;/a&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;col-sm-3&quot;&gt;\n        &lt;h5&gt;{{ text_account }}&lt;/h5&gt;\n        &lt;ul class=&quot;list-unstyled&quot;&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ account }}&quot;&gt;{{ text_account }}&lt;/a&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ order }}&quot;&gt;{{ text_order }}&lt;/a&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ wishlist }}&quot;&gt;{{ text_wishlist }}&lt;/a&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ newsletter }}&quot;&gt;{{ text_newsletter }}&lt;/a&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n    &lt;hr&gt;\n{#    &lt;p&gt;{{ powered }}&lt;/p&gt;#}\n  &lt;/div&gt;\n&lt;/footer&gt;\n{% for style in styles %}\n&lt;link href=&quot;{{ style.href }}&quot; type=&quot;text/css&quot; rel=&quot;{{ style.rel }}&quot; media=&quot;{{ style.media }}&quot; /&gt;\n{% endfor %}\n{% for script in scripts %}\n&lt;script src=&quot;{{ script }}&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n{% endfor %}\n&lt;!--\nOpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.\nPlease donate via PayPal to donate@opencart.com\n//--&gt;\n&lt;/div&gt;\n&lt;/body&gt;&lt;/html&gt;', '2022-01-31 10:07:31'),
(297, 0, 'default', 'common/success', '{{ header }}\n&lt;div id=&quot;common-success&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n      &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n      {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n      {% set class = \'col-sm-9\' %}\n    {% else %}\n      {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      {% if name and heading_title %}\n      &lt;h1&gt;Спасибо, {{ name }}, {{ heading_title }}&lt;/h1&gt;\n      {% else %}\n        &lt;h1&gt;{{ heading_title }}&lt;/h1&gt;\n      {% endif %}\n      {{ text_message }}\n      &lt;div class=&quot;buttons&quot;&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a href=&quot;{{ continue }}&quot; class=&quot;btn btn-cart&quot;&gt;{{ button_continue }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}', '2022-01-27 22:33:04'),
(124, 0, 'default', 'extension/module/featured', '&lt;h3&gt;{{ heading_title }}&lt;/h3&gt;\n&lt;div class=&quot;row&quot;&gt;\n {% for product in products %}\n  &lt;div class=&quot;product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12&quot;&gt;\n    &lt;div class=&quot;product-thumb transition&quot;&gt;\n      &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n      &lt;div class=&quot;caption&quot;&gt;\n        &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n        &lt;p&gt;{{ product.description }}&lt;/p&gt;\n        {% if product.rating %}\n        &lt;div class=&quot;rating&quot;&gt;\n          {% for i in 5 %}\n          {% if product.rating &lt; i %}\n          &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n          {% else %}\n          &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n          {% endif %}\n          {% endfor %}\n        &lt;/div&gt;\n        {% endif %}\n        {% if product.price %}\n        &lt;p class=&quot;price&quot;&gt;\n          {% if not product.special %}\n          {{ product.price }}\n          {% else %}\n          &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n          {% endif %}\n          {% if product.tax %}\n          &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt;\n          {% endif %}\n        &lt;/p&gt;\n        {% endif %}\n      &lt;/div&gt;\n      &lt;div class=&quot;button-group&quot;&gt;\n        &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt;&lt;/button&gt;\n        {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n        &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n      #}&lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endfor %}\n&lt;/div&gt;', '2022-01-26 08:11:10'),
(126, 0, 'default', 'extension/module/bestseller', '&lt;h3&gt;{{ heading_title }}&lt;/h3&gt;\n&lt;div class=&quot;row&quot;&gt;\n {% for product in products %}\n  &lt;div class=&quot;product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12&quot;&gt;\n    &lt;div class=&quot;product-thumb transition&quot;&gt;\n      &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n      &lt;div class=&quot;caption&quot;&gt;\n        &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n        &lt;p&gt;{{ product.description }}&lt;/p&gt;\n        {% if product.rating %}\n        &lt;div class=&quot;rating&quot;&gt;\n          {% for i in 1..5 %}\n          {% if product.rating &lt; i %}\n          &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n          {% else %}\n          &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n          {% endif %}\n          {% endfor %}\n        &lt;/div&gt;\n        {% endif %}\n        {% if product.price %}\n        &lt;p class=&quot;price&quot;&gt;\n          {% if not product.special %}\n          {{ product.price }}\n          {% else %}\n          &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n          {% endif %}\n          {% if product.tax %}\n          &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt;\n          {% endif %}\n        &lt;/p&gt;\n        {% endif %}\n      &lt;/div&gt;\n      &lt;div class=&quot;button-group&quot;&gt;\n        &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt;&lt;/button&gt;\n        {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n        &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n      #}&lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endfor %}\n&lt;/div&gt;\n', '2022-01-26 08:17:24'),
(127, 0, 'default', 'extension/module/special', '&lt;h3&gt;{{ heading_title }}&lt;/h3&gt;\n&lt;div class=&quot;row&quot;&gt; {% for product in products %}\n  &lt;div class=&quot;product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12&quot;&gt;\n    &lt;div class=&quot;product-thumb transition&quot;&gt;\n      &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n      &lt;div class=&quot;caption&quot;&gt;\n        &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n        &lt;p&gt;{{ product.description }}&lt;/p&gt;\n        {% if product.rating %}\n        &lt;div class=&quot;rating&quot;&gt;{% for i in 1..5 %}\n          {% if product.rating &lt; i %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% else %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% endif %}\n          {% endfor %}&lt;/div&gt;\n        {% endif %}\n        {% if product.price %}\n        &lt;p class=&quot;price&quot;&gt; {% if not product.special %}\n          {{ product.price }}\n          {% else %} &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt; {% endif %}\n          {% if product.tax %} &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt; {% endif %} &lt;/p&gt;\n        {% endif %} &lt;/div&gt;\n      &lt;div class=&quot;button-group&quot;&gt;\n        &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt;&lt;/button&gt;\n        {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n        &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n      #}&lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endfor %} &lt;/div&gt;\n', '2022-01-26 08:18:41'),
(128, 0, 'default', 'extension/module/latest', '&lt;h3&gt;{{ heading_title }}&lt;/h3&gt;\n&lt;div class=&quot;row&quot;&gt; {% for product in products %}\n  &lt;div class=&quot;product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12&quot;&gt;\n    &lt;div class=&quot;product-thumb transition&quot;&gt;\n      &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n      &lt;div class=&quot;caption&quot;&gt;\n        &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n        &lt;p&gt;{{ product.description }}&lt;/p&gt;\n        {% if product.rating %}\n        &lt;div class=&quot;rating&quot;&gt;{% for i in 1..5 %}\n          {% if product.rating &lt; i %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% else %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% endif %}\n          {% endfor %}&lt;/div&gt;\n        {% endif %}\n        {% if product.price %}\n        &lt;p class=&quot;price&quot;&gt; {% if not product.special %}\n          {{ product.price }}\n          {% else %} &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt; {% endif %}\n          {% if product.tax %} &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt; {% endif %} &lt;/p&gt;\n        {% endif %} &lt;/div&gt;\n      &lt;div class=&quot;button-group&quot;&gt;\n        &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt;&lt;/button&gt;\n        {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n        &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n      #}&lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n  {% endfor %} &lt;/div&gt;\n', '2022-01-26 08:20:20');
INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(295, 0, 'default', 'product/category', '{{ header }}\n&lt;div id=&quot;product-category&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h2&gt;{{ heading_title }}&lt;/h2&gt;\n      {% if thumb or description %}\n      &lt;div class=&quot;row&quot;&gt; {% if thumb %}\n        &lt;div class=&quot;col-sm-2&quot;&gt;&lt;img src=&quot;{{ thumb }}&quot; alt=&quot;{{ heading_title }}&quot; title=&quot;{{ heading_title }}&quot; class=&quot;img-thumbnail&quot; /&gt;&lt;/div&gt;\n        {% endif %}\n        {% if description %}\n        &lt;div class=&quot;col-sm-10&quot;&gt;{{ description }}&lt;/div&gt;\n        {% endif %}&lt;/div&gt;\n      &lt;hr&gt;\n      {% endif %}\n      {% if categories %}\n      &lt;h3&gt;{{ text_refine }}&lt;/h3&gt;\n      {% if categories|length &lt;= 5 %}\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-3&quot;&gt;\n          &lt;ul&gt;\n            {% for category in categories %}\n            &lt;li&gt;&lt;a href=&quot;{{ category.href }}&quot;&gt;{{ category.name }}&lt;/a&gt;&lt;/li&gt;\n            {% endfor %}\n          &lt;/ul&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      {% else %}\n      &lt;div class=&quot;row&quot;&gt;{% for category in categories|batch((categories|length / 4)|round(1, \'ceil\')) %}\n        &lt;div class=&quot;col-sm-3&quot;&gt;\n          &lt;ul&gt;\n            {% for child in category %}\n            &lt;li&gt;&lt;a href=&quot;{{ child.href }}&quot;&gt;{{ child.name }}&lt;/a&gt;&lt;/li&gt;\n            {% endfor %}\n          &lt;/ul&gt;\n        &lt;/div&gt;\n        {% endfor %}&lt;/div&gt;\n      &lt;br/&gt;\n      {% endif %}\n      {% endif %}\n      {% if products %}\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-md-2 col-sm-6 hidden-xs&quot;&gt;\n          &lt;div class=&quot;btn-group btn-group-sm&quot;&gt;\n            &lt;button type=&quot;button&quot; id=&quot;list-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_list }}&quot;&gt;&lt;i class=&quot;fa fa-th-list&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n            &lt;button type=&quot;button&quot; id=&quot;grid-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_grid }}&quot;&gt;&lt;i class=&quot;fa fa-th&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-3 col-sm-6&quot;&gt;\n          &lt;div class=&quot;form-group&quot;&gt;&lt;a href=&quot;{{ compare }}&quot; id=&quot;compare-total&quot; class=&quot;btn btn-link&quot;&gt;{{ text_compare }}&lt;/a&gt;&lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-4 col-xs-6&quot;&gt;\n          &lt;div class=&quot;form-group input-group input-group-sm&quot;&gt;\n            &lt;label class=&quot;input-group-addon&quot; for=&quot;input-sort&quot;&gt;{{ text_sort }}&lt;/label&gt;\n            &lt;select id=&quot;input-sort&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n              {% for sorts in sorts %}\n              {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n              &lt;option value=&quot;{{ sorts.href }}&quot; selected=&quot;selected&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n              {% else %}\n              &lt;option value=&quot;{{ sorts.href }}&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n              {% endif %}\n              {% endfor %}\n            &lt;/select&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-3 col-xs-6&quot;&gt;\n          &lt;div class=&quot;form-group input-group input-group-sm&quot;&gt;\n            &lt;label class=&quot;input-group-addon&quot; for=&quot;input-limit&quot;&gt;{{ text_limit }}&lt;/label&gt;\n            &lt;select id=&quot;input-limit&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n              {% for limits in limits %}\n              {% if limits.value == limit %}\n              &lt;option value=&quot;{{ limits.href }}&quot; selected=&quot;selected&quot;&gt;{{ limits.text }}&lt;/option&gt;\n              {% else %}\n              &lt;option value=&quot;{{ limits.href }}&quot;&gt;{{ limits.text }}&lt;/option&gt;\n              {% endif %}\n              {% endfor %}\n            &lt;/select&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt; {% for product in products %}\n        &lt;div class=&quot;product-layout product-list col-xs-12&quot;&gt;\n          &lt;div class=&quot;product-thumb&quot;&gt;\n            &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n            &lt;div&gt;\n              &lt;div class=&quot;caption&quot;&gt;\n                &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n                &lt;p&gt;{{ product.description }}&lt;/p&gt;\n                {% if product.price %}\n                &lt;p class=&quot;price&quot;&gt; {% if not product.special %}\n                  {{ product.price }}\n                  {% else %} &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt; {% endif %}\n                  {% if product.tax %} &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt; {% endif %} &lt;/p&gt;\n                {% endif %}\n                {% if product.rating %}\n                &lt;div class=&quot;rating&quot;&gt; {% for i in 1..5 %}\n                  {% if product.rating &lt; i %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% else %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;{% endif %}\n                  {% endfor %} &lt;/div&gt;\n                {% endif %} &lt;/div&gt;\n              &lt;div class=&quot;button-group&quot;&gt;\n                &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\', \'{{ product.minimum }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt;&lt;/button&gt;\n                {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              #}&lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% endfor %} &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-6 text-left&quot;&gt;{{ pagination }}&lt;/div&gt;\n        &lt;div class=&quot;col-sm-6 text-right&quot;&gt;{{ results }}&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      {% if not categories and not products %}\n      &lt;p&gt;{{ text_empty }}&lt;/p&gt;\n      &lt;div class=&quot;buttons&quot;&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a href=&quot;{{ continue }}&quot; class=&quot;btn btn-cart&quot;&gt;{{ button_continue }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }} \n', '2022-01-27 22:14:03'),
(132, 0, 'default', 'product/manufacturer_info', '{{ header }}\n&lt;div id=&quot;product-manufacturer&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h2&gt;{{ heading_title }}&lt;/h2&gt;\n      {% if products %}\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-md-2 col-sm-6 hidden-xs&quot;&gt;\n          &lt;div class=&quot;btn-group btn-group-sm&quot;&gt;\n            &lt;button type=&quot;button&quot; id=&quot;list-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_list }}&quot;&gt;&lt;i class=&quot;fa fa-th-list&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n            &lt;button type=&quot;button&quot; id=&quot;grid-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_grid }}&quot;&gt;&lt;i class=&quot;fa fa-th&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-3 col-sm-6&quot;&gt;\n          &lt;div class=&quot;form-group&quot;&gt; &lt;a href=&quot;{{ compare }}&quot; id=&quot;compare-total&quot; class=&quot;btn btn-link&quot;&gt;{{ text_compare }}&lt;/a&gt; &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-4 col-xs-6&quot;&gt;\n          &lt;div class=&quot;form-group input-group input-group-sm&quot;&gt;\n            &lt;label class=&quot;input-group-addon&quot; for=&quot;input-sort&quot;&gt;{{ text_sort }}&lt;/label&gt;\n            &lt;select id=&quot;input-sort&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n              {% for sorts in sorts %}\n              {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n              &lt;option value=&quot;{{ sorts.href }}&quot; selected=&quot;selected&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n              {% else %}\n              &lt;option value=&quot;{{ sorts.href }}&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n              {% endif %}\n              {% endfor %}            \n            &lt;/select&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-3 col-xs-6&quot;&gt;\n          &lt;div class=&quot;form-group input-group input-group-sm&quot;&gt;\n            &lt;label class=&quot;input-group-addon&quot; for=&quot;input-limit&quot;&gt;{{ text_limit }}&lt;/label&gt;\n            &lt;select id=&quot;input-limit&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n              {% for limits in limits %}\n              {% if limits.value == limit %}\n              &lt;option value=&quot;{{ limits.href }}&quot; selected=&quot;selected&quot;&gt;{{ limits.text }}&lt;/option&gt;\n              {% else %}\n              &lt;option value=&quot;{{ limits.href }}&quot;&gt;{{ limits.text }}&lt;/option&gt;\n              {% endif %}\n              {% endfor %}            \n            &lt;/select&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt; {% for product in products %}\n        &lt;div class=&quot;product-layout product-list col-xs-12&quot;&gt;\n          &lt;div class=&quot;product-thumb&quot;&gt;\n            &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n            &lt;div&gt;\n              &lt;div class=&quot;caption&quot;&gt;\n                &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n                &lt;p&gt;{{ product.description }}&lt;/p&gt;\n                {% if product.price %}\n                &lt;p class=&quot;price&quot;&gt; {% if not product.special %}\n                  {{ product.price }}\n                  {% else %} &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt; {% endif %}\n                  {% if product.tax %} &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt; {% endif %} &lt;/p&gt;\n                {% endif %}\n                {% if product.rating %}\n                &lt;div class=&quot;rating&quot;&gt;\n                  {% for i in 1..5 %}\n                  {% if product.rating &lt; i %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% else %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% endif %}\n                  {% endfor %} &lt;/div&gt;\n                {% endif %} &lt;/div&gt;\n              &lt;div class=&quot;button-group&quot;&gt;\n                &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\', \'{{ product.minimum }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt;&lt;/button&gt;\n                {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              #}&lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% endfor %} &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-6 text-left&quot;&gt;{{ pagination }}&lt;/div&gt;\n        &lt;div class=&quot;col-sm-6 text-right&quot;&gt;{{ results }}&lt;/div&gt;\n      &lt;/div&gt;\n      {% else %}\n      &lt;p&gt;{{ text_empty }}&lt;/p&gt;\n      &lt;div class=&quot;buttons&quot;&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a href=&quot;{{ continue }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_continue }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}\n', '2022-01-26 08:30:38'),
(135, 0, 'default', 'product/special', '{{ header }}\n&lt;div id=&quot;product-search&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h2&gt;{{ heading_title }}&lt;/h2&gt;\n      {% if products %}\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-md-2 col-sm-6 hidden-xs&quot;&gt;\n          &lt;div class=&quot;btn-group btn-group-sm&quot;&gt;\n            &lt;button type=&quot;button&quot; id=&quot;list-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_list }}&quot;&gt;&lt;i class=&quot;fa fa-th-list&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n            &lt;button type=&quot;button&quot; id=&quot;grid-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_grid }}&quot;&gt;&lt;i class=&quot;fa fa-th&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-3 col-sm-6&quot;&gt;\n          &lt;div class=&quot;form-group&quot;&gt;&lt;a href=&quot;{{ compare }}&quot; id=&quot;compare-total&quot; class=&quot;btn btn-link&quot;&gt;{{ text_compare }}&lt;/a&gt;&lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-4 col-xs-6&quot;&gt;\n          &lt;div class=&quot;form-group input-group input-group-sm&quot;&gt;\n            &lt;label class=&quot;input-group-addon&quot; for=&quot;input-sort&quot;&gt;{{ text_sort }}&lt;/label&gt;\n            &lt;select id=&quot;input-sort&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n              {% for sorts in sorts %}\n              {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n              &lt;option value=&quot;{{ sorts.href }}&quot; selected=&quot;selected&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n              {% else %}\n              &lt;option value=&quot;{{ sorts.href }}&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n              {% endif %}\n              {% endfor %}            \n            &lt;/select&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-3 col-xs-6&quot;&gt;\n          &lt;div class=&quot;form-group input-group input-group-sm&quot;&gt;\n            &lt;label class=&quot;input-group-addon&quot; for=&quot;input-limit&quot;&gt;{{ text_limit }}&lt;/label&gt;\n            &lt;select id=&quot;input-limit&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n              {% for limits in limits %}\n              {% if limits.value == limit %}\n              &lt;option value=&quot;{{ limits.href }}&quot; selected=&quot;selected&quot;&gt;{{ limits.text }}&lt;/option&gt;\n              {% else %}\n              &lt;option value=&quot;{{ limits.href }}&quot;&gt;{{ limits.text }}&lt;/option&gt;\n              {% endif %}\n              {% endfor %}            \n            &lt;/select&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt; {% for product in products %}\n        &lt;div class=&quot;product-layout product-list col-xs-12&quot;&gt;\n          &lt;div class=&quot;product-thumb&quot;&gt;\n            &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n            &lt;div&gt;\n              &lt;div class=&quot;caption&quot;&gt;\n                &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n                &lt;p&gt;{{ product.description }}&lt;/p&gt;\n                {% if product.price %}\n                &lt;p class=&quot;price&quot;&gt; {% if not product.special %}\n                  {{ product.price }}\n                  {% else %} &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt; {% endif %}\n                  {% if product.tax %} &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt; {% endif %} &lt;/p&gt;\n                {% endif %}\n                {% if product.rating %}\n                &lt;div class=&quot;rating&quot;&gt;\n                  {% for i in 1..5 %}\n                  {% if product.rating &lt; i %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% else %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% endif %}\n                  {% endfor %}\n                &lt;/div&gt;\n                {% endif %} &lt;/div&gt;\n              &lt;div class=&quot;button-group&quot;&gt;\n                &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\', \'{{ product.minimum }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt;&lt;/button&gt;\n                {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              #}&lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% endfor %} &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-6 text-left&quot;&gt;{{ pagination }}&lt;/div&gt;\n        &lt;div class=&quot;col-sm-6 text-right&quot;&gt;{{ results }}&lt;/div&gt;\n      &lt;/div&gt;\n      {% else %}\n      &lt;p&gt;{{ text_empty }}&lt;/p&gt;\n      &lt;div class=&quot;buttons&quot;&gt;\n        &lt;div class=&quot;pull-right&quot;&gt;&lt;a href=&quot;{{ continue }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_continue }}&lt;/a&gt;&lt;/div&gt;\n      &lt;/div&gt;\n      {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}\n', '2022-01-26 08:32:34'),
(257, 0, 'default', 'product/search', '{{ header }}\n&lt;div id=&quot;product-search&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h1&gt;{{ heading_title }}&lt;/h1&gt;\n      &lt;label class=&quot;control-label&quot; for=&quot;input-search&quot;&gt;{{ entry_search }}&lt;/label&gt;\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-4&quot;&gt;\n          &lt;input type=&quot;text&quot; name=&quot;search&quot; value=&quot;{{ search }}&quot; placeholder=&quot;{{ text_keyword }}&quot; id=&quot;input-search&quot; class=&quot;form-control&quot; /&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-sm-3&quot;&gt;\n          &lt;select name=&quot;category_id&quot; class=&quot;form-control&quot;&gt;\n            &lt;option value=&quot;0&quot;&gt;{{ text_category }}&lt;/option&gt;\n            {% for category_1 in categories %}\n            {% if category_1.category_id == category_id %}\n            &lt;option value=&quot;{{ category_1.category_id }}&quot; selected=&quot;selected&quot;&gt;{{ category_1.name }}&lt;/option&gt;\n            {% else %}\n            &lt;option value=&quot;{{ category_1.category_id }}&quot;&gt;{{ category_1.name }}&lt;/option&gt;\n            {% endif %}\n            {% for category_2 in category_1.children %}\n            {% if category_2.category_id == category_id %}\n            &lt;option value=&quot;{{ category_2.category_id }}&quot; selected=&quot;selected&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{{ category_2.name }}&lt;/option&gt;\n            {% else %}\n            &lt;option value=&quot;{{ category_2.category_id }}&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{{ category_2.name }}&lt;/option&gt;\n            {% endif %}\n            {% for category_3 in category_2.children %}\n            {% if category_3.category_id == category_id %}\n            &lt;option value=&quot;{{ category_3.category_id }}&quot; selected=&quot;selected&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{{ category_3.name }}&lt;/option&gt;\n            {% else %}\n            &lt;option value=&quot;{{ category_3.category_id }}&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{{ category_3.name }}&lt;/option&gt;\n            {% endif %}\n            {% endfor %}\n            {% endfor %}\n            {% endfor %}\n          &lt;/select&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-sm-3&quot;&gt;\n          &lt;label class=&quot;checkbox-inline&quot;&gt;\n            {% if sub_category %}\n            &lt;input type=&quot;checkbox&quot; name=&quot;sub_category&quot; value=&quot;1&quot; checked=&quot;checked&quot; /&gt;\n            {% else %}\n            &lt;input type=&quot;checkbox&quot; name=&quot;sub_category&quot; value=&quot;1&quot; /&gt;\n            {% endif %}\n            {{ text_sub_category }}&lt;/label&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;p&gt;\n        &lt;label class=&quot;checkbox-inline&quot;&gt;\n          {% if description %}\n          &lt;input type=&quot;checkbox&quot; name=&quot;description&quot; value=&quot;1&quot; id=&quot;description&quot; checked=&quot;checked&quot; /&gt;\n          {% else %}\n          &lt;input type=&quot;checkbox&quot; name=&quot;description&quot; value=&quot;1&quot; id=&quot;description&quot; /&gt;\n          {% endif %}\n          {{ entry_description }}&lt;/label&gt;\n      &lt;/p&gt;\n      &lt;input type=&quot;button&quot; value=&quot;{{ button_search }}&quot; id=&quot;button-search&quot; class=&quot;btn btn-cart&quot; style=&quot;padding: .5em 1em&quot; /&gt;\n      &lt;h2&gt;{{ text_search }}&lt;/h2&gt;\n      {% if products %}\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-md-2 col-sm-6 hidden-xs&quot;&gt;\n          &lt;div class=&quot;btn-group btn-group-sm&quot;&gt;\n            &lt;button type=&quot;button&quot; id=&quot;list-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_list }}&quot;&gt;&lt;i class=&quot;fa fa-th-list&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n            &lt;button type=&quot;button&quot; id=&quot;grid-view&quot; class=&quot;btn btn-default&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_grid }}&quot;&gt;&lt;i class=&quot;fa fa-th&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-3 col-sm-6&quot;&gt;\n          &lt;div class=&quot;form-group&quot;&gt;\n            &lt;a href=&quot;{{ compare }}&quot; id=&quot;compare-total&quot; class=&quot;btn btn-link&quot;&gt;{{ text_compare }}&lt;/a&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-4 col-xs-6&quot;&gt;\n          &lt;div class=&quot;form-group input-group input-group-sm&quot;&gt;\n            &lt;label class=&quot;input-group-addon&quot; for=&quot;input-sort&quot;&gt;{{ text_sort }}&lt;/label&gt;\n            &lt;select id=&quot;input-sort&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n              {% for sorts in sorts %}\n              {% if sorts.value == \'%s-%s\'|format(sort, order) %}\n              &lt;option value=&quot;{{ sorts.href }}&quot; selected=&quot;selected&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n              {% else %}\n              &lt;option value=&quot;{{ sorts.href }}&quot;&gt;{{ sorts.text }}&lt;/option&gt;\n              {% endif %}\n              {% endfor %}\n            &lt;/select&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;col-md-3 col-xs-6&quot;&gt;\n          &lt;div class=&quot;form-group input-group input-group-sm&quot;&gt;\n            &lt;label class=&quot;input-group-addon&quot; for=&quot;input-limit&quot;&gt;{{ text_limit }}&lt;/label&gt;\n            &lt;select id=&quot;input-limit&quot; class=&quot;form-control&quot; onchange=&quot;location = this.value;&quot;&gt;\n              {% for limits in limits %}\n              {% if limits.value == limit %}\n              &lt;option value=&quot;{{ limits.href }}&quot; selected=&quot;selected&quot;&gt;{{ limits.text }}&lt;/option&gt;\n              {% else %}\n              &lt;option value=&quot;{{ limits.href }}&quot;&gt;{{ limits.text }}&lt;/option&gt;\n              {% endif %}\n              {% endfor %}\n            &lt;/select&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt;\n        {% for product in products %}\n        &lt;div class=&quot;product-layout product-list col-xs-12&quot;&gt;\n          &lt;div class=&quot;product-thumb&quot;&gt;\n            &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n            &lt;div&gt;\n              &lt;div class=&quot;caption&quot;&gt;\n                &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n                &lt;p&gt;{{ product.description }}&lt;/p&gt;\n                {% if product.price %}\n                &lt;p class=&quot;price&quot;&gt;\n                  {% if  not product.special %}\n                  {{ product.price }}\n                  {% else %}\n                  &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt;\n                  {% endif %}\n                  {% if product.tax %}\n                  &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt;\n                  {% endif %}\n                &lt;/p&gt;\n                {% endif %}\n                {% if product.rating %}\n                &lt;div class=&quot;rating&quot;&gt;\n                  {% for i in 1..5 %}\n                  {% if product.rating &lt; i %}\n                  &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% else %}\n                  &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-2x&quot;&gt;&lt;/i&gt;&lt;/span&gt;\n                  {% endif %}\n                  {% endfor %}\n                &lt;/div&gt;\n                {% endif %}\n              &lt;/div&gt;\n              &lt;div class=&quot;button-group&quot;&gt;\n                &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\', \'{{ product.minimum }}\');&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt;&lt;/button&gt;\n                {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              #}&lt;/div&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% endfor %}\n      &lt;/div&gt;\n      &lt;div class=&quot;row&quot;&gt;\n        &lt;div class=&quot;col-sm-6 text-left&quot;&gt;{{ pagination }}&lt;/div&gt;\n        &lt;div class=&quot;col-sm-6 text-right&quot;&gt;{{ results }}&lt;/div&gt;\n      &lt;/div&gt;\n      {% else %}\n      &lt;p&gt;{{ text_empty }}&lt;/p&gt;\n      {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#button-search\').bind(\'click\', function() {\n	url = \'index.php?route=product/search\';\n\n	var search = $(\'#content input[name=\\\'search\\\']\').prop(\'value\');\n\n	if (search) {\n		url += \'&amp;search=\' + encodeURIComponent(search);\n	}\n\n	var category_id = $(\'#content select[name=\\\'category_id\\\']\').prop(\'value\');\n\n	if (category_id &gt; 0) {\n		url += \'&amp;category_id=\' + encodeURIComponent(category_id);\n	}\n\n	var sub_category = $(\'#content input[name=\\\'sub_category\\\']:checked\').prop(\'value\');\n\n	if (sub_category) {\n		url += \'&amp;sub_category=true\';\n	}\n\n	var filter_description = $(\'#content input[name=\\\'description\\\']:checked\').prop(\'value\');\n\n	if (filter_description) {\n		url += \'&amp;description=true\';\n	}\n\n	location = url;\n});\n\n$(\'#content input[name=\\\'search\\\']\').bind(\'keydown\', function(e) {\n	if (e.keyCode == 13) {\n		$(\'#button-search\').trigger(\'click\');\n	}\n});\n\n$(\'select[name=\\\'category_id\\\']\').on(\'change\', function() {\n	if (this.value == \'0\') {\n		$(\'input[name=\\\'sub_category\\\']\').prop(\'disabled\', true);\n	} else {\n		$(\'input[name=\\\'sub_category\\\']\').prop(\'disabled\', false);\n	}\n});\n\n$(\'select[name=\\\'category_id\\\']\').trigger(\'change\');\n--&gt;&lt;/script&gt;\n{{ footer }}', '2022-01-27 15:38:54'),
(365, 0, 'default', 'common/header', '&lt;!DOCTYPE html&gt;\n&lt;!--[if IE]&gt;&lt;![endif]--&gt;\n&lt;!--[if IE 8 ]&gt;&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot; class=&quot;ie8&quot;&gt;&lt;![endif]--&gt;\n&lt;!--[if IE 9 ]&gt;&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot; class=&quot;ie9&quot;&gt;&lt;![endif]--&gt;\n&lt;!--[if (gt IE 9)|!(IE)]&gt;&lt;!--&gt;\n&lt;html dir=&quot;{{ direction }}&quot; lang=&quot;{{ lang }}&quot;&gt;\n&lt;!--&lt;![endif]--&gt;\n&lt;head&gt;\n&lt;meta charset=&quot;UTF-8&quot; /&gt;\n&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1&quot;&gt;\n&lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge&quot;&gt;\n&lt;title&gt;{{ title }}&lt;/title&gt;\n&lt;base href=&quot;{{ base }}&quot; /&gt;\n{% if description %}\n&lt;meta name=&quot;description&quot; content=&quot;{{ description }}&quot; /&gt;\n{% endif %}\n{% if keywords %}\n&lt;meta name=&quot;keywords&quot; content=&quot;{{ keywords }}&quot; /&gt;\n{% endif %}\n&lt;script src=&quot;catalog/view/javascript/jquery/jquery-2.1.1.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n&lt;link href=&quot;catalog/view/javascript/bootstrap/css/bootstrap.min.css&quot; rel=&quot;stylesheet&quot; media=&quot;screen&quot; /&gt;\n&lt;script src=&quot;catalog/view/javascript/bootstrap/js/bootstrap.min.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n&lt;script src=&quot;catalog/view/javascript/inputmask/dist/jquery.inputmask.bundle.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n{#&lt;link href=&quot;catalog/view/javascript/font-awesome/css/font-awesome.min.css&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot; /&gt;#}\n&lt;link href=&quot;catalog/view/javascript/font-awesome/css/all.min.css&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot; /&gt;\n&lt;link href=&quot;//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot; /&gt;\n&lt;link href=&quot;catalog/view/theme/default/stylesheet/stylesheet.css&quot; rel=&quot;stylesheet&quot;&gt;\n{% for style in styles %}\n&lt;link href=&quot;{{ style.href }}&quot; type=&quot;text/css&quot; rel=&quot;{{ style.rel }}&quot; media=&quot;{{ style.media }}&quot; /&gt;\n{% endfor %}\n{% for script in scripts %}\n&lt;script src=&quot;{{ script }}&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n{% endfor %}\n&lt;script src=&quot;catalog/view/javascript/common.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;\n{% for link in links %}\n&lt;link href=&quot;{{ link.href }}&quot; rel=&quot;{{ link.rel }}&quot; /&gt;\n{% endfor %}\n{% for analytic in analytics %}\n{{ analytic }}\n{% endfor %}\n  &lt;script&gt;let inputmask_1 = {&quot;mask&quot;:&quot;+7 (999) - 999 - 99 - 99&quot;};&lt;/script&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;div id=&quot;container&quot;&gt;\n&lt;div id=&quot;loader&quot;&gt;\n  &lt;!--        &lt;i class=&quot;fas fa-spinner fa-spin&quot;&gt;&lt;/i&gt;--&gt;\n  &lt;svg version=&quot;1.1&quot; id=&quot;loader-1&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; xmlns:xlink=&quot;http://www.w3.org/1999/xlink&quot;\n       x=&quot;0px&quot; y=&quot;0px&quot;\n       width=&quot;70px&quot; height=&quot;70px&quot; viewBox=&quot;0 0 50 50&quot; style=&quot;enable-background:new 0 0 50 50;&quot;\n       xml:space=&quot;preserve&quot;&gt;\n  &lt;path fill=&quot;#DB3A0A&quot;\n        d=&quot;M43.935,25.145c0-10.318-8.364-18.683-18.683-18.683c-10.318,0-18.683,8.365-18.683,18.683h4.068c0-8.071,6.543-14.615,14.615-14.615c8.072,0,14.615,6.543,14.615,14.615H43.935z&quot;&gt;\n    &lt;animateTransform attributeType=&quot;xml&quot;\n                      attributeName=&quot;transform&quot;\n                      type=&quot;rotate&quot;\n                      from=&quot;0 25 25&quot;\n                      to=&quot;360 25 25&quot;\n                      dur=&quot;0.6s&quot;\n                      repeatCount=&quot;indefinite&quot;/&gt;\n  &lt;/path&gt;\n  &lt;/svg&gt;\n&lt;/div&gt;\n{#&lt;nav id=&quot;top&quot;&gt;\n  &lt;div class=&quot;container&quot;&gt;{{ currency }}\n    {{ language }}\n    &lt;div id=&quot;top-links&quot; class=&quot;nav pull-right&quot;&gt;\n      &lt;ul class=&quot;list-inline&quot;&gt;\n        &lt;li&gt;&lt;a href=&quot;{{ contact }}&quot;&gt;&lt;i class=&quot;fa fa-phone&quot;&gt;&lt;/i&gt;&lt;/a&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ telephone }}&lt;/span&gt;&lt;/li&gt;\n        #}{#&lt;li class=&quot;dropdown&quot;&gt;&lt;a href=&quot;{{ account }}&quot; title=&quot;{{ text_account }}&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&lt;i class=&quot;fa fa-user&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ text_account }}&lt;/span&gt; &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;&lt;/a&gt;\n          &lt;ul class=&quot;dropdown-menu dropdown-menu-right&quot;&gt;\n            {% if logged %}\n            &lt;li&gt;&lt;a href=&quot;{{ account }}&quot;&gt;{{ text_account }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ order }}&quot;&gt;{{ text_order }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ transaction }}&quot;&gt;{{ text_transaction }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ download }}&quot;&gt;{{ text_download }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ logout }}&quot;&gt;{{ text_logout }}&lt;/a&gt;&lt;/li&gt;\n            {% else %}\n            &lt;li&gt;&lt;a href=&quot;{{ register }}&quot;&gt;{{ text_register }}&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;{{ login }}&quot;&gt;{{ text_login }}&lt;/a&gt;&lt;/li&gt;\n            {% endif %}\n          &lt;/ul&gt;\n        &lt;/li&gt;\n        &lt;li&gt;&lt;a href=&quot;{{ wishlist }}&quot; id=&quot;wishlist-total&quot; title=&quot;{{ text_wishlist }}&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ text_wishlist }}&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\n        #}{#&lt;li&gt;&lt;a href=&quot;{{ shopping_cart }}&quot; title=&quot;{{ text_shopping_cart }}&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ text_shopping_cart }}&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\n        &lt;li&gt;&lt;a href=&quot;{{ checkout }}&quot; title=&quot;{{ text_checkout }}&quot;&gt;&lt;i class=&quot;fa fa-share&quot;&gt;&lt;/i&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ text_checkout }}&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\n      &lt;/ul&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/nav&gt;#}\n&lt;header&gt;\n  &lt;div class=&quot;container&quot;&gt;\n    &lt;div class=&quot;row&quot;&gt;\n      &lt;div class=&quot;col-sm-4&quot;&gt;\n        &lt;div id=&quot;logo&quot;&gt;{% if logo %}&lt;a href=&quot;{{ home }}&quot;&gt;&lt;img src=&quot;{{ logo }}&quot; title=&quot;{{ name }}&quot; alt=&quot;{{ name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;{% else %}\n          &lt;h1&gt;&lt;a href=&quot;{{ home }}&quot;&gt;{{ name }}&lt;/a&gt;&lt;/h1&gt;\n          {% endif %}&lt;/div&gt;\n      &lt;/div&gt;\n{#      &lt;div class=&quot;col-sm-5&quot;&gt;{{ search }}&lt;/div&gt;#}\n      &lt;div class=&quot;col-sm-5&quot;&gt;\n        &lt;h1 class=&quot;h3 header_shadow&quot;&gt;{{ name }}&lt;/h1&gt;\n        &lt;ul class=&quot;list-inline&quot;&gt;\n          &lt;li&gt;&lt;a href=&quot;{{ contact }}&quot;&gt;&lt;i class=&quot;fa fa-phone&quot;&gt;&lt;/i&gt;&lt;/a&gt; &lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ telephone }}&lt;/span&gt;&lt;/li&gt;\n          &lt;li&gt;&lt;address&gt;г. Чебоксары ул. Калинина 105а&lt;/address&gt;&lt;/li&gt;\n        &lt;/ul&gt;\n      &lt;/div&gt;\n      &lt;div class=&quot;col-sm-3&quot;&gt;\n        {{ search }}\n        {{ cart }}\n      &lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/header&gt;\n{{ menu }}\n', '2022-02-01 19:08:22'),
(192, 0, 'default', 'checkout/confirm', '{% if not redirect %}\n  &lt;div class=&quot;table-responsive&quot;&gt;\n    &lt;table class=&quot;table table-bordered table-hover&quot;&gt;\n      &lt;thead&gt;\n      &lt;tr&gt;\n        &lt;td class=&quot;text-left&quot;&gt;{{ column_name }}&lt;/td&gt;\n        &lt;td class=&quot;text-left&quot;&gt;{{ column_model }}&lt;/td&gt;\n        &lt;td class=&quot;text-right&quot;&gt;{{ column_quantity }}&lt;/td&gt;\n        &lt;td class=&quot;text-right&quot;&gt;{{ column_price }}&lt;/td&gt;\n        &lt;td class=&quot;text-right&quot;&gt;{{ column_total }}&lt;/td&gt;\n      &lt;/tr&gt;\n      &lt;/thead&gt;\n      &lt;tbody&gt;\n\n      {% for product in products %}\n        &lt;tr&gt;\n          &lt;td class=&quot;text-left&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt; {% for option in product.option %} &lt;br /&gt;\n              &amp;nbsp;&lt;small&gt; - {{ option.name }}: {{ option.value }}&lt;/small&gt; {% endfor %}\n            {% if product.recurring %} &lt;br /&gt;\n              &lt;span class=&quot;label label-info&quot;&gt;{{ text_recurring_item }}&lt;/span&gt; &lt;small&gt;{{ product.recurring }}&lt;/small&gt; {% endif %}&lt;/td&gt;\n          &lt;td class=&quot;text-left&quot;&gt;{{ product.model }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ product.quantity }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ product.price }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ product.total }}&lt;/td&gt;\n        &lt;/tr&gt;\n      {% endfor %}\n      {% for voucher in vouchers %}\n        &lt;tr&gt;\n          &lt;td class=&quot;text-left&quot;&gt;{{ voucher.description }}&lt;/td&gt;\n          &lt;td class=&quot;text-left&quot;&gt;&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;1&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n        &lt;/tr&gt;\n      {% endfor %}\n      &lt;/tbody&gt;\n\n      &lt;tfoot&gt;\n\n      {% for total in totals %}\n        &lt;tr&gt;\n          &lt;td colspan=&quot;4&quot; class=&quot;text-right&quot;&gt;&lt;strong&gt;{{ total.title }}:&lt;/strong&gt;&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ total.text }}&lt;/td&gt;\n        &lt;/tr&gt;\n      {% endfor %}\n      &lt;/tfoot&gt;\n    &lt;/table&gt;\n  &lt;/div&gt;\n  {{ payment }}\n{% endif %}', '2022-01-26 14:05:26'),
(199, 0, 'default', 'extension/payment/cod', '&lt;div class=&quot;buttons&quot;&gt;\n  &lt;div class=&quot;pull-right&quot;&gt;\n    &lt;input type=&quot;button&quot; value=&quot;подтвердить&quot; id=&quot;button-confirm&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;add btn-next&quot; /&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#button-confirm\').on(\'click\', function() {\n	$.ajax({\n		url: \'index.php?route=extension/payment/cod/confirm\',\n		dataType: \'json\',\n		beforeSend: function() {\n			$(\'#button-confirm\').button(\'loading\');\n		},\n		complete: function() {\n			$(\'#button-confirm\').button(\'reset\');\n		},\n		success: function(json) {\n			if (json[\'redirect\']) {\n				location = json[\'redirect\'];	\n			}\n		},\n		error: function(xhr, ajaxOptions, thrownError) {\n			alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n		}\n	});\n});\n//--&gt;&lt;/script&gt;\n', '2022-01-26 14:15:01'),
(200, 0, 'default', 'extension/payment/bank_transfer', '&lt;h2&gt;{{ text_instruction }}&lt;/h2&gt;\n&lt;p&gt;&lt;b&gt;{{ text_description }}&lt;/b&gt;&lt;/p&gt;\n&lt;div class=&quot;well well-sm&quot;&gt;\n  &lt;p&gt;{{ bank }}&lt;/p&gt;\n  &lt;p&gt;{{ text_payment }}&lt;/p&gt;\n&lt;/div&gt;\n&lt;div class=&quot;buttons&quot;&gt;\n  &lt;div class=&quot;pull-right&quot;&gt;\n    &lt;input type=&quot;button&quot; value=&quot;подтвердить&quot; id=&quot;button-confirm&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;add btn-next&quot; /&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#button-confirm\').on(\'click\', function() {\n	$.ajax({\n		url: \'index.php?route=extension/payment/bank_transfer/confirm\',\n		dataType: \'json\',\n		beforeSend: function() {\n			$(\'#button-confirm\').button(\'loading\');\n		},\n		complete: function() {\n			$(\'#button-confirm\').button(\'reset\');\n		},\n		success: function(json) {\n			if (json[\'redirect\']) {\n				location = json[\'redirect\'];	\n			}\n		},\n		error: function(xhr, ajaxOptions, thrownError) {\n			alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n		}\n	});\n});\n//--&gt;&lt;/script&gt;\n', '2022-01-26 14:18:15'),
(220, 0, 'default', 'common/menu', '{% if categories %}\n&lt;div class=&quot;container&quot;&gt;\n  &lt;nav id=&quot;menu&quot; class=&quot;navbar&quot;&gt;\n    &lt;div class=&quot;navbar-header&quot;&gt;&lt;span id=&quot;category&quot; class=&quot;visible-xs&quot;&gt;{{ text_category }}&lt;/span&gt;\n      &lt;button type=&quot;button&quot; class=&quot;btn btn-navbar navbar-toggle&quot; data-toggle=&quot;collapse&quot; data-target=&quot;.navbar-ex1-collapse&quot;&gt;&lt;i class=&quot;fa fa-bars&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;collapse navbar-collapse navbar-ex1-collapse&quot;&gt;\n      &lt;ul class=&quot;nav navbar-nav&quot; id=&quot;menu-ul&quot;&gt;\n        {% for category in categories %}\n        {% if category.children %}\n        &lt;li class=&quot;dropdown pulse&quot;&gt;&lt;a href=&quot;{{ category.href }}&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;{{ category.name }}&lt;/a&gt;\n          &lt;div class=&quot;dropdown-menu&quot;&gt;\n            &lt;div class=&quot;dropdown-inner&quot;&gt; {% for children in category.children|batch(category.children|length / category.column|round(1, \'ceil\')) %}\n              &lt;ul class=&quot;list-unstyled&quot;&gt;\n                {% for child in children %}\n                &lt;li&gt;&lt;a href=&quot;{{ child.href }}&quot;&gt;{{ child.name }}&lt;/a&gt;&lt;/li&gt;\n                {% endfor %}\n              &lt;/ul&gt;\n              {% endfor %}&lt;/div&gt;\n            &lt;a href=&quot;{{ category.href }}&quot; class=&quot;see-all&quot;&gt;{{ text_all }} {{ category.name }}&lt;/a&gt; &lt;/div&gt;\n        &lt;/li&gt;\n        {% else %}\n        &lt;li&gt;&lt;a class=&quot;pulse&quot; href=&quot;{{ category.href }}&quot;&gt;{{ category.name }}&lt;/a&gt;&lt;/li&gt;\n        {% endif %}\n        {% endfor %}\n      &lt;/ul&gt;\n    &lt;/div&gt;\n  &lt;/nav&gt;\n&lt;/div&gt;\n{% endif %} ', '2022-01-27 09:00:10');
INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(283, 0, 'default', 'checkout/guest', '&lt;div class=&quot;row&quot;&gt;\n    &lt;fieldset id=&quot;account&quot;&gt;\n        &lt;div class=&quot;form-group&quot; style=&quot;display: {% if customer_groups|length &gt; 1 %} block {% else %} none {% endif %};&quot;&gt;\n            &lt;label class=&quot;control-label&quot;&gt;{{ entry_customer_group }}&lt;/label&gt;\n            {% for customer_group in customer_groups %}\n                {% if customer_group.customer_group_id == customer_group_id %}\n                    &lt;div class=&quot;radio&quot;&gt;\n                        &lt;label&gt;\n                            &lt;input type=&quot;radio&quot; name=&quot;customer_group_id&quot; value=&quot;{{ customer_group.customer_group_id }}&quot; checked=&quot;checked&quot; /&gt;\n                            {{ customer_group.name }}&lt;/label&gt;\n                    &lt;/div&gt;\n                {% else %}\n                    &lt;div class=&quot;radio&quot;&gt;\n                        &lt;label&gt;\n                            &lt;input type=&quot;radio&quot; name=&quot;customer_group_id&quot; value=&quot;{{ customer_group.customer_group_id }}&quot; /&gt;\n                            {{ customer_group.name }}&lt;/label&gt;\n                    &lt;/div&gt;\n                {% endif %}\n            {% endfor %}&lt;/div&gt;\n        &lt;div class=&quot;form-group required&quot;&gt;\n            &lt;label class=&quot;control-label&quot; for=&quot;input-payment-firstname&quot;&gt;{{ entry_firstname }}&lt;/label&gt;\n            &lt;input type=&quot;text&quot; name=&quot;firstname&quot; value=&quot;{{ firstname }}&quot; placeholder=&quot;{{ entry_firstname }}&quot; id=&quot;input-payment-firstname&quot; class=&quot;form-control&quot; /&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;form-group required&quot;&gt;\n            &lt;label class=&quot;control-label&quot; for=&quot;input-payment-telephone&quot;&gt;{{ entry_telephone }}&lt;/label&gt;\n            &lt;input type=&quot;text&quot; name=&quot;telephone&quot; value=&quot;{{ telephone }}&quot; placeholder=&quot;{{ entry_telephone }}&quot; id=&quot;input-payment-telephone&quot; class=&quot;form-control&quot; /&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;form-group required&quot; style=&quot;display: none&quot;&gt;\n            &lt;label class=&quot;control-label&quot; for=&quot;input-payment-email&quot;&gt;{{ entry_email }}&lt;/label&gt;\n            &lt;input type=&quot;text&quot; name=&quot;email&quot; value=&quot;noemail@site.ru&quot; id=&quot;input-payment-email&quot; class=&quot;form-control&quot; data-plugin-inputmask=&quot;inputmask_1&quot; /&gt;\n        &lt;/div&gt;\n        {% for custom_field in custom_fields %}\n            {% if custom_field.location == \'account\' %}\n                {% if custom_field.type == \'select\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;select name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;\n                            &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n\n\n                            {% for custom_field_value in custom_field.custom_field_value %}\n                                {% if guest_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == guest_custom_field[custom_field.custom_field_id] %}\n                                    &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; selected=&quot;selected&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n\n\n                                {% else %}\n\n\n                                    &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n\n\n                                {% endif %}\n                            {% endfor %}\n\n\n                        &lt;/select&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'radio\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n                                &lt;div class=&quot;radio&quot;&gt; {% if guest_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == guest_custom_field[custom_field.custom_field_id] %}\n                                        &lt;label&gt;\n                                            &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; checked=&quot;checked&quot; /&gt;\n                                            {{ custom_field_value.name }}&lt;/label&gt;\n                                    {% else %}\n                                        &lt;label&gt;\n                                            &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n                                            {{ custom_field_value.name }}&lt;/label&gt;\n                                    {% endif %} &lt;/div&gt;\n                            {% endfor %} &lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'checkbox\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n                                &lt;div class=&quot;checkbox&quot;&gt; {% if guest_custom_field[custom_field.custom_field_id] and  custom_field_value.custom_field_value_id in guest_custom_field[custom_field.custom_field_id] %}\n                                        &lt;label&gt;\n                                            &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; checked=&quot;checked&quot; /&gt;\n                                            {{ custom_field_value.name }}&lt;/label&gt;\n                                    {% else %}\n                                        &lt;label&gt;\n                                            &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n                                            {{ custom_field_value.name }}&lt;/label&gt;\n                                    {% endif %} &lt;/div&gt;\n                            {% endfor %} &lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'text\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'textarea\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;textarea name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&lt;/textarea&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'file\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;br /&gt;\n                        &lt;button type=&quot;button&quot; id=&quot;button-payment-custom-field{{ custom_field.custom_field_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n                        &lt;input type=&quot;hidden&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% endif %}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; /&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'date\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div class=&quot;input-group date&quot;&gt;\n                            &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n                            &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'time\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div class=&quot;input-group time&quot;&gt;\n                            &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n                            &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'datetime\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div class=&quot;input-group datetime&quot;&gt;\n                            &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n                            &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n            {% endif %}\n        {% endfor %}\n    &lt;/fieldset&gt;\n    &lt;fieldset id=&quot;address&quot;&gt;\n        &lt;div class=&quot;form-group required&quot;&gt;\n            &lt;label class=&quot;control-label&quot; for=&quot;input-payment-address-1&quot;&gt;{{ entry_address_1 }}&lt;/label&gt;\n            &lt;input type=&quot;text&quot; name=&quot;address_1&quot; value=&quot;{{ address_1 }}&quot; placeholder=&quot;{{ entry_address_1 }}&quot; id=&quot;input-payment-address-1&quot; class=&quot;form-control&quot; /&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;form-group required&quot; style=&quot;display: none&quot;&gt;\n            &lt;label class=&quot;control-label&quot; for=&quot;input-payment-country&quot;&gt;{{ entry_country }}&lt;/label&gt;\n            &lt;select name=&quot;country_id&quot; id=&quot;input-payment-country&quot; class=&quot;form-control&quot;&gt;\n                &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n\n\n                {% for country in countries %}\n                    {% if country.country_id == country_id %}\n\n\n                        &lt;option value=&quot;{{ country.country_id }}&quot; selected=&quot;selected&quot;&gt;{{ country.name }}&lt;/option&gt;\n\n\n                    {% else %}\n\n\n                        &lt;option value=&quot;{{ country.country_id }}&quot;&gt;{{ country.name }}&lt;/option&gt;\n\n\n                    {% endif %}\n                {% endfor %}\n\n\n            &lt;/select&gt;\n        &lt;/div&gt;\n        &lt;div class=&quot;form-group required&quot; style=&quot;display: none&quot;&gt;\n            &lt;label class=&quot;control-label&quot; for=&quot;input-payment-zone&quot;&gt;{{ entry_zone }}&lt;/label&gt;\n            &lt;select name=&quot;zone_id&quot; id=&quot;input-payment-zone&quot; class=&quot;form-control&quot;&gt;\n            &lt;/select&gt;\n        &lt;/div&gt;\n        {% for custom_field in custom_fields %}\n            {% if custom_field.location == \'address\' %}\n                {% if custom_field.type == \'select\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;select name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;\n                            &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n\n\n                            {% for custom_field_value in custom_field.custom_field_value %}\n                                {% if guest_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == guest_custom_field[custom_field.custom_field_id] %}\n                                    &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; selected=&quot;selected&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n\n\n                                {% else %}\n\n\n                                    &lt;option value=&quot;{{ custom_field_value.custom_field_value_id }}&quot;&gt;{{ custom_field_value.name }}&lt;/option&gt;\n\n\n                                {% endif %}\n                            {% endfor %}\n\n\n                        &lt;/select&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'radio\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n                                &lt;div class=&quot;radio&quot;&gt; {% if guest_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id == guest_custom_field[custom_field.custom_field_id] %}\n                                        &lt;label&gt;\n                                            &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; checked=&quot;checked&quot; /&gt;\n                                            {{ custom_field_value.name }}&lt;/label&gt;\n                                    {% else %}\n                                        &lt;label&gt;\n                                            &lt;input type=&quot;radio&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n                                            {{ custom_field_value.name }}&lt;/label&gt;\n                                    {% endif %} &lt;/div&gt;\n                            {% endfor %} &lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'checkbox\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt; {% for custom_field_value in custom_field.custom_field_value %}\n                                &lt;div class=&quot;checkbox&quot;&gt; {% if guest_custom_field[custom_field.custom_field_id] and custom_field_value.custom_field_value_id in guest_custom_field[custom_field.custom_field_id] %}\n                                        &lt;label&gt;\n                                            &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; checked=&quot;checked&quot; /&gt;\n                                            {{ custom_field_value.name }}&lt;/label&gt;\n                                    {% else %}\n                                        &lt;label&gt;\n                                            &lt;input type=&quot;checkbox&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}][]&quot; value=&quot;{{ custom_field_value.custom_field_value_id }}&quot; /&gt;\n                                            {{ custom_field_value.name }}&lt;/label&gt;\n                                    {% endif %} &lt;/div&gt;\n                            {% endfor %} &lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'text\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'textarea\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;textarea name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ custom_field.name }}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot;&gt;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&lt;/textarea&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'file\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;br /&gt;\n                        &lt;button type=&quot;button&quot; id=&quot;button-payment-custom-field{{ custom_field.custom_field_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n                        &lt;input type=&quot;hidden&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% endif %}&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; /&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'date\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div class=&quot;input-group date&quot;&gt;\n                            &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n                            &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'time\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div class=&quot;input-group time&quot;&gt;\n                            &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n                            &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n                {% if custom_field.type == \'time\' %}\n                    &lt;div id=&quot;payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-group custom-field&quot; data-sort=&quot;{{ custom_field.sort_order }}&quot;&gt;\n                        &lt;label class=&quot;control-label&quot; for=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot;&gt;{{ custom_field.name }}&lt;/label&gt;\n                        &lt;div class=&quot;input-group datetime&quot;&gt;\n                            &lt;input type=&quot;text&quot; name=&quot;custom_field[{{ custom_field.location }}][{{ custom_field.custom_field_id }}]&quot; value=&quot;{% if guest_custom_field[custom_field.custom_field_id] %} {{ guest_custom_field[custom_field.custom_field_id] }} {% else %} {{ custom_field.value }} {% endif %}&quot; placeholder=&quot;{{ custom_field.name }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-payment-custom-field{{ custom_field.custom_field_id }}&quot; class=&quot;form-control&quot; /&gt;\n                            &lt;span class=&quot;input-group-btn&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/span&gt;&lt;/div&gt;\n                    &lt;/div&gt;\n                {% endif %}\n            {% endif %}\n        {% endfor %}\n    &lt;/fieldset&gt;\n    {{ captcha }} &lt;/div&gt;\n{% if shipping_required %}\n    &lt;div class=&quot;checkbox&quot; style=&quot;display: none&quot;&gt;\n        &lt;label&gt; {% if shipping_address %}\n                &lt;input type=&quot;checkbox&quot; name=&quot;shipping_address&quot; value=&quot;1&quot; checked=&quot;checked&quot; /&gt;\n            {% else %}\n                &lt;input type=&quot;checkbox&quot; name=&quot;shipping_address&quot; value=&quot;1&quot; /&gt;\n            {% endif %}\n            {{ entry_shipping }}&lt;/label&gt;\n    &lt;/div&gt;\n{% endif %}\n&lt;div class=&quot;buttons&quot;&gt;\n    &lt;div class=&quot;pull-right&quot;&gt;\n        &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-guest&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;add btn-next&quot; style=&quot;margin-right: 1em !important;&quot; /&gt;\n    &lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n    // Sort the custom fields\n    $(\'#account .form-group[data-sort]\').detach().each(function() {\n        if ($(this).attr(\'data-sort\') &gt;= 0 &amp;&amp; $(this).attr(\'data-sort\') &lt;= $(\'#account .form-group\').length) {\n            $(\'#account .form-group\').eq($(this).attr(\'data-sort\')).before(this);\n        }\n\n        if ($(this).attr(\'data-sort\') &gt; $(\'#account .form-group\').length) {\n            $(\'#account .form-group:last\').after(this);\n        }\n\n        if ($(this).attr(\'data-sort\') == $(\'#account .form-group\').length) {\n            $(\'#account .form-group:last\').after(this);\n        }\n\n        if ($(this).attr(\'data-sort\') &lt; -$(\'#account .form-group\').length) {\n            $(\'#account .form-group:first\').before(this);\n        }\n    });\n\n    $(\'#address .form-group[data-sort]\').detach().each(function() {\n        if ($(this).attr(\'data-sort\') &gt;= 0 &amp;&amp; $(this).attr(\'data-sort\') &lt;= $(\'#address .form-group\').length) {\n            $(\'#address .form-group\').eq($(this).attr(\'data-sort\')).before(this);\n        }\n\n        if ($(this).attr(\'data-sort\') &gt; $(\'#address .form-group\').length) {\n            $(\'#address .form-group:last\').after(this);\n        }\n\n        if ($(this).attr(\'data-sort\') == $(\'#address .form-group\').length) {\n            $(\'#address .form-group:last\').after(this);\n        }\n\n        if ($(this).attr(\'data-sort\') &lt; -$(\'#address .form-group\').length) {\n            $(\'#address .form-group:first\').before(this);\n        }\n    });\n\n    $(\'#collapse-payment-address input[name=\\\'customer_group_id\\\']\').on(\'change\', function() {\n        $.ajax({\n            url: \'index.php?route=checkout/checkout/customfield&amp;customer_group_id=\' + this.value,\n            dataType: \'json\',\n            success: function(json) {\n                $(\'#collapse-payment-address .custom-field\').hide();\n                $(\'#collapse-payment-address .custom-field\').removeClass(\'required\');\n\n                for (i = 0; i &lt; json.length; i++) {\n                    custom_field = json[i];\n\n                    $(\'#payment-custom-field\' + custom_field[\'custom_field_id\']).show();\n\n                    if (custom_field[\'required\']) {\n                        $(\'#payment-custom-field\' + custom_field[\'custom_field_id\']).addClass(\'required\');\n                    } else {\n                        $(\'#payment-custom-field\' + custom_field[\'custom_field_id\']).removeClass(\'required\');\n                    }\n                }\n            },\n            error: function(xhr, ajaxOptions, thrownError) {\n                alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n            }\n        });\n    });\n\n    $(\'#collapse-payment-address input[name=\\\'customer_group_id\\\']:checked\').trigger(\'change\');\n    //--&gt;&lt;/script&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n    $(\'#collapse-payment-address button[id^=\\\'button-payment-custom-field\\\']\').on(\'click\', function() {\n        var node = this;\n\n        $(\'#form-upload\').remove();\n\n        $(\'body\').prepend(\'&lt;form enctype=&quot;multipart/form-data&quot; id=&quot;form-upload&quot; style=&quot;display: none;&quot;&gt;&lt;input type=&quot;file&quot; name=&quot;file&quot; /&gt;&lt;/form&gt;\');\n\n        $(\'#form-upload input[name=\\\'file\\\']\').trigger(\'click\');\n\n        if (typeof timer != \'undefined\') {\n            clearInterval(timer);\n        }\n\n        timer = setInterval(function() {\n            if ($(\'#form-upload input[name=\\\'file\\\']\').val() != \'\') {\n                clearInterval(timer);\n\n                $.ajax({\n                    url: \'index.php?route=tool/upload\',\n                    type: \'post\',\n                    dataType: \'json\',\n                    data: new FormData($(\'#form-upload\')[0]),\n                    cache: false,\n                    contentType: false,\n                    processData: false,\n                    beforeSend: function() {\n                        $(node).button(\'loading\');\n                    },\n                    complete: function() {\n                        $(node).button(\'reset\');\n                    },\n                    success: function(json) {\n                        $(node).parent().find(\'.text-danger\').remove();\n\n                        if (json[\'error\']) {\n                            $(node).parent().find(\'input[name^=\\\'custom_field\\\']\').after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'] + \'&lt;/div&gt;\');\n                        }\n\n                        if (json[\'success\']) {\n                            alert(json[\'success\']);\n\n                            $(node).parent().find(\'input[name^=\\\'custom_field\\\']\').val(json[\'code\']);\n                        }\n                    },\n                    error: function(xhr, ajaxOptions, thrownError) {\n                        alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n                    }\n                });\n            }\n        }, 500);\n    });\n    //--&gt;&lt;/script&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n    $(\'.date\').datetimepicker({\n        language: \'{{ datepicker }}\',\n        pickTime: false\n    });\n\n    $(\'.time\').datetimepicker({\n        language: \'{{ datepicker }}\',\n        pickDate: false\n    });\n\n    $(\'.datetime\').datetimepicker({\n        language: \'{{ datepicker }}\',\n        pickDate: true,\n        pickTime: true\n    });\n    //--&gt;&lt;/script&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n    $(\'#collapse-payment-address select[name=\\\'country_id\\\']\').on(\'change\', function() {\n        $.ajax({\n            url: \'index.php?route=checkout/checkout/country&amp;country_id=\' + this.value,\n            dataType: \'json\',\n            beforeSend: function() {\n                $(\'#collapse-payment-address select[name=\\\'country_id\\\']\').prop(\'disabled\', true);\n            },\n            complete: function() {\n                $(\'#collapse-payment-address select[name=\\\'country_id\\\']\').prop(\'disabled\', false);\n            },\n            success: function(json) {\n                if (json[\'postcode_required\'] == \'1\') {\n                    $(\'#collapse-payment-address input[name=\\\'postcode\\\']\').parent().parent().addClass(\'required\');\n                } else {\n                    $(\'#collapse-payment-address input[name=\\\'postcode\\\']\').parent().parent().removeClass(\'required\');\n                }\n\n                /*html = \'&lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\';\n\n			if (json[\'zone\'] &amp;&amp; json[\'zone\'] != \'\') {\n				for (i = 0; i &lt; json[\'zone\'].length; i++) {\n					html += \'&lt;option value=&quot;\' + json[\'zone\'][i][\'zone_id\'] + \'&quot;\';\n\n					if (json[\'zone\'][i][\'zone_id\'] == \'{{ zone_id }}\') {\n						html += \' selected=&quot;selected&quot;\';\n					}\n\n					html += \'&gt;\' + json[\'zone\'][i][\'name\'] + \'&lt;/option&gt;\';\n				}\n			} else {\n				html += \'&lt;option value=&quot;0&quot; selected=&quot;selected&quot;&gt;{{ text_none }}&lt;/option&gt;\';\n			}\n\n			$(\'#collapse-payment-address select[name=\\\'zone_id\\\']\').html(html);*/\n            },\n            error: function(xhr, ajaxOptions, thrownError) {\n                alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n            }\n        });\n    });\n\n    $(\'#collapse-payment-address select[name=\\\'country_id\\\']\').trigger(\'change\');\n    //--&gt;&lt;/script&gt;\n&lt;script&gt;\n    $(document).ready(function() {\n        $(&quot;#input-payment-telephone&quot;).inputmask(inputmask_1);\n    });\n&lt;/script&gt;', '2022-01-27 20:40:47'),
(286, 0, 'default', 'extension/captcha/basic', '&lt;fieldset&gt;\n  &lt;legend&gt;{{ text_captcha }}&lt;/legend&gt;\n  &lt;div class=&quot;form-group&quot;&gt;\n    {% if route|slice(0, 9) == \'checkout/\' %}\n    &lt;label class=&quot;control-label&quot; for=&quot;input-payment-captcha&quot;&gt;{{ entry_captcha }}&lt;/label&gt;\n      &lt;img src=&quot;index.php?route=extension/captcha/basic/captcha&quot; alt=&quot;&quot; style=&quot;float: left&quot; /&gt;\n      &lt;input type=&quot;text&quot; name=&quot;captcha&quot; id=&quot;input-payment-captcha&quot; class=&quot;form-control&quot; autocomplete=&quot;off&quot; style=&quot;border-radius: 0;border: 1px solid #444;width: 8em;display: block;float: left;margin-left: 1em;&quot; /&gt;\n    {% else %}\n    &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-captcha&quot;&gt;{{ entry_captcha }}&lt;/label&gt;\n    &lt;div class=&quot;col-sm-10&quot;&gt;\n      &lt;img src=&quot;index.php?route=extension/captcha/basic/captcha&quot; alt=&quot;&quot; style=&quot;float: left&quot; /&gt;\n      &lt;input type=&quot;text&quot; name=&quot;captcha&quot; id=&quot;input-captcha&quot; class=&quot;form-control&quot; style=&quot;border-radius: 0;border: 1px solid #444;width: 8em;display: block;float: left;margin-left: 1em;&quot; /&gt;\n      &lt;br&gt;\n      {% if error_captcha %}\n      &lt;div class=&quot;text-danger&quot;&gt;{{ error_captcha }}&lt;/div&gt;\n      {% endif %}\n    &lt;/div&gt;\n    {% endif %}\n  &lt;/div&gt;\n&lt;/fieldset&gt;\n', '2022-01-27 21:53:13');
INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(339, 0, 'default', 'information/contact', '{{ header }}\n&lt;div id=&quot;information-contact&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n      &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n\n  {% if error_warning %}\n    &lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; {{ error_warning }}&lt;/div&gt;\n  {% endif %}\n\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n      {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n      {% set class = \'col-sm-9\' %}\n    {% else %}\n      {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;h1&gt;{{ heading_title }}&lt;/h1&gt;\n      &lt;h3&gt;{{ text_location }}&lt;/h3&gt;\n      &lt;div class=&quot;panel panel-default&quot;&gt;\n        &lt;div class=&quot;panel-body&quot;&gt;\n          &lt;div class=&quot;row&quot;&gt;\n            {% if image %}\n              &lt;div class=&quot;col-sm-3&quot;&gt;&lt;img src=&quot;{{ image }}&quot; alt=&quot;{{ store }}&quot; title=&quot;{{ store }}&quot; class=&quot;img-thumbnail&quot; /&gt;&lt;/div&gt;\n            {% endif %}\n            &lt;div class=&quot;col-sm-3&quot;&gt;&lt;strong&gt;{{ store }}&lt;/strong&gt;&lt;br /&gt;\n              &lt;address&gt;\n                {{ address }}\n              &lt;/address&gt;\n              {% if geocode %}\n                &lt;a href=&quot;https://maps.google.com/maps?q={{ geocode|url_encode }}&amp;hl={{ geocode_hl }}&amp;t=m&amp;z=15&quot; target=&quot;_blank&quot; class=&quot;btn btn-info&quot;&gt;&lt;i class=&quot;fa fa-map-marker&quot;&gt;&lt;/i&gt; {{ button_map }}&lt;/a&gt;\n              {% endif %}\n            &lt;/div&gt;\n            &lt;div class=&quot;col-sm-3&quot;&gt;&lt;strong&gt;{{ text_telephone }}&lt;/strong&gt;&lt;br&gt;\n              {{ telephone }}&lt;br /&gt;\n              &lt;br /&gt;\n              {% if fax %}\n                &lt;strong&gt;{{ text_fax }}&lt;/strong&gt;&lt;br&gt;\n                {{ fax }}\n              {% endif %}\n            &lt;/div&gt;\n            &lt;div class=&quot;col-sm-3&quot;&gt;\n              {% if open %}\n                &lt;strong&gt;{{ text_open }}&lt;/strong&gt;&lt;br /&gt;\n                {{ open }}&lt;br /&gt;\n                &lt;br /&gt;\n              {% endif %}\n              {% if comment %}\n                &lt;strong&gt;{{ text_comment }}&lt;/strong&gt;&lt;br /&gt;\n                {{ comment }}\n              {% endif %}\n            &lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n      &lt;/div&gt;\n      {% if locations %}\n        &lt;h3&gt;{{ text_store }}&lt;/h3&gt;\n        &lt;div class=&quot;panel-group&quot; id=&quot;accordion&quot;&gt;\n          {% for location in locations %}\n            &lt;div class=&quot;panel panel-default&quot;&gt;\n              &lt;div class=&quot;panel-heading&quot;&gt;\n                &lt;h4 class=&quot;panel-title&quot;&gt;&lt;a href=&quot;#collapse-location{{ location.location_id }}&quot; class=&quot;accordion-toggle&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot;&gt;{{ location.name }} &lt;i class=&quot;fa fa-caret-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/h4&gt;\n              &lt;/div&gt;\n              &lt;div class=&quot;panel-collapse collapse&quot; id=&quot;collapse-location{{ location.location_id }}&quot;&gt;\n                &lt;div class=&quot;panel-body&quot;&gt;\n                  &lt;div class=&quot;row&quot;&gt;\n                    {% if location.image %}\n                      &lt;div class=&quot;col-sm-3&quot;&gt;&lt;img src=&quot;{{ location.image }}&quot; alt=&quot;{{ location.name }}&quot; title=&quot;{{ location.name }}&quot; class=&quot;img-thumbnail&quot; /&gt;&lt;/div&gt;\n                    {% endif %}\n                    &lt;div class=&quot;col-sm-3&quot;&gt;&lt;strong&gt;{{ location.name }}&lt;/strong&gt;&lt;br/&gt;\n                      &lt;address&gt;\n                        {{ location.address }}\n                      &lt;/address&gt;\n                      {% if location.geocode %}\n                        &lt;a href=&quot;https://maps.google.com/maps?q={{ location.geocode|url_encode }}&amp;hl={{ geocode_hl }}&amp;t=m&amp;z=15&quot; target=&quot;_blank&quot; class=&quot;btn btn-info&quot;&gt;&lt;i class=&quot;fa fa-map-marker&quot;&gt;&lt;/i&gt; {{ button_map }}&lt;/a&gt;\n                      {% endif %}\n                    &lt;/div&gt;\n                    &lt;div class=&quot;col-sm-3&quot;&gt; &lt;strong&gt;{{ text_telephone }}&lt;/strong&gt;&lt;br/&gt;\n                      {{ location.telephone }}&lt;br/&gt;\n                      &lt;br/&gt;\n                      {% if location.fax %}\n                        &lt;strong&gt;{{ text_fax }}&lt;/strong&gt;&lt;br/&gt;\n                        {{ location.fax }}\n                      {% endif %}\n                    &lt;/div&gt;\n                    &lt;div class=&quot;col-sm-3&quot;&gt;\n                      {% if location.open %}\n                        &lt;strong&gt;{{ text_open }}&lt;/strong&gt;&lt;br/&gt;\n                        {{ location.open }}&lt;br/&gt;\n                        &lt;br/&gt;\n                      {% endif %}\n                      {% if location.comment %}\n                        &lt;strong&gt;{{ text_comment }}&lt;/strong&gt;&lt;br/&gt;\n                        {{ location.comment }}\n                      {% endif %}\n                    &lt;/div&gt;\n                  &lt;/div&gt;\n                &lt;/div&gt;\n              &lt;/div&gt;\n            &lt;/div&gt;\n          {% endfor %}\n        &lt;/div&gt;\n      {% endif %}\n      &lt;form action=&quot;{{ action }}&quot; method=&quot;post&quot; enctype=&quot;multipart/form-data&quot; class=&quot;form-horizontal contact-form&quot;&gt;\n        &lt;fieldset&gt;\n          &lt;legend&gt;{{ text_contact }}&lt;/legend&gt;\n          &lt;div class=&quot;form-group required&quot;&gt;\n            &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-name&quot;&gt;{{ entry_name }}&lt;/label&gt;\n            &lt;div class=&quot;col-sm-10&quot;&gt;\n              &lt;input type=&quot;text&quot; name=&quot;name&quot; value=&quot;{{ name }}&quot; id=&quot;input-name&quot; class=&quot;form-control&quot; /&gt;\n              {% if error_name %}\n                &lt;div class=&quot;text-danger&quot;&gt;{{ error_name }}&lt;/div&gt;\n              {% endif %}\n            &lt;/div&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;form-group required&quot;&gt;\n            &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-email&quot;&gt;{{ entry_email }}&lt;/label&gt;\n            &lt;div class=&quot;col-sm-10&quot;&gt;\n              &lt;input type=&quot;text&quot; name=&quot;email&quot; value=&quot;{{ email }}&quot; id=&quot;input-email&quot; class=&quot;form-control&quot; /&gt;\n              {% if error_email %}\n                &lt;div class=&quot;text-danger&quot;&gt;{{ error_email }}&lt;/div&gt;\n              {% endif %}\n            &lt;/div&gt;\n          &lt;/div&gt;\n          &lt;div class=&quot;form-group required&quot;&gt;\n            &lt;label class=&quot;col-sm-2 control-label&quot; for=&quot;input-enquiry&quot;&gt;{{ entry_enquiry }}&lt;/label&gt;\n            &lt;div class=&quot;col-sm-10&quot;&gt;\n              &lt;textarea name=&quot;enquiry&quot; rows=&quot;10&quot; id=&quot;input-enquiry&quot; class=&quot;form-control&quot;&gt;{{ enquiry }}&lt;/textarea&gt;\n              {% if error_enquiry %}\n                &lt;div class=&quot;text-danger&quot;&gt;{{ error_enquiry }}&lt;/div&gt;\n              {% endif %}\n            &lt;/div&gt;\n          &lt;/div&gt;\n          {{ captcha }}\n        &lt;/fieldset&gt;\n\n        {% if text_agree %}\n          &lt;div class=&quot;buttons&quot;&gt;\n            &lt;div&gt;{{ text_agree }}&lt;/div&gt;\n            &lt;div class=&quot;squaredTwo&quot;&gt;\n              {% if agree %}\n                &lt;input type=&quot;checkbox&quot; name=&quot;agree&quot; id=&quot;agree&quot; value=&quot;1&quot; checked=&quot;checked&quot; /&gt;\n                &lt;label for=&quot;agree&quot;&gt;&lt;/label&gt;\n              {% else %}\n                &lt;input type=&quot;checkbox&quot; name=&quot;agree&quot; id=&quot;agree&quot; value=&quot;1&quot; checked=&quot;checked&quot; /&gt;\n                &lt;label for=&quot;agree&quot;&gt;&lt;/label&gt;\n              {% endif %}\n            &lt;/div&gt;\n            &lt;div class=&quot;pull-right&quot;&gt;\n              &lt;input type=&quot;submit&quot; value=&quot;{{ button_submit }}&quot; class=&quot;btn btn-cart&quot; style=&quot;&quot; /&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n        {% else %}\n\n          &lt;div class=&quot;buttons&quot;&gt;\n            &lt;div class=&quot;pull-right&quot;&gt;\n              &lt;input class=&quot;btn btn-cart&quot; type=&quot;submit&quot; value=&quot;{{ button_submit }}&quot; /&gt;\n            &lt;/div&gt;\n          &lt;/div&gt;\n\n        {% endif %}\n\n      &lt;/form&gt;\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n{{ footer }}\n', '2022-01-28 14:02:56'),
(324, 0, 'default', 'checkout/payment_method', '{% if error_warning %}\n&lt;div class=&quot;alert alert-warning alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; {{ error_warning }}&lt;/div&gt;\n{% endif %}\n{% if payment_methods %}\n&lt;h3&gt;{{ text_payment_method }}&lt;/h3&gt;\n{% for payment_method in payment_methods %}\n&lt;div class=&quot;p-radio&quot;&gt;\n  &lt;label&gt;{% if payment_method.code == code or not code %}\n    {% set code = payment_method.code %}\n    &lt;input type=&quot;radio&quot; name=&quot;payment_method&quot; value=&quot;{{ payment_method.code }}&quot; checked=&quot;checked&quot; /&gt;\n      &lt;div class=&quot;check&quot;&gt;&lt;/div&gt;\n    {% else %}\n    &lt;input type=&quot;radio&quot; name=&quot;payment_method&quot; value=&quot;{{ payment_method.code }}&quot; /&gt;\n      &lt;div class=&quot;check&quot;&gt;&lt;/div&gt;\n    {% endif %}\n    {{ payment_method.title }}\n    {% if payment_method.terms %}\n    ({{ payment_method.terms }})\n    {% endif %} &lt;/label&gt;\n&lt;/div&gt;\n{% endfor %}\n{% endif %}\n&lt;p&gt;&lt;h4&gt;{{ text_comments }}&lt;/h4&gt;&lt;/p&gt;\n&lt;p&gt;\n  &lt;textarea name=&quot;comment&quot; rows=&quot;8&quot; class=&quot;form-control&quot;&gt;{{ comment }}&lt;/textarea&gt;\n&lt;/p&gt;\n{% if text_agree %}\n&lt;div class=&quot;buttons&quot;&gt;\n  {{ text_agree }}\n  &lt;div class=&quot;pull-right&quot; style=&quot;margin-right: 1em&quot;&gt;\n    &lt;div class=&quot;squaredTwo&quot;&gt;\n    {% if agree %}\n    &lt;input type=&quot;checkbox&quot; name=&quot;agree&quot; id=&quot;agree&quot; value=&quot;1&quot; checked=&quot;checked&quot; /&gt;\n      &lt;label for=&quot;agree&quot;&gt;&lt;/label&gt;\n    {% else %}\n    &lt;input type=&quot;checkbox&quot; name=&quot;agree&quot; id=&quot;agree&quot; value=&quot;1&quot; checked=&quot;checked&quot; /&gt;\n      &lt;label for=&quot;agree&quot;&gt;&lt;/label&gt;\n    {% endif %}\n    &amp;nbsp;&lt;/div&gt;\n    &lt;br&gt;\n    &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-payment-method&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;add&quot; style=&quot;width: 10em !important;&quot; /&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n{% else %}\n&lt;div class=&quot;buttons&quot;&gt;\n  &lt;div class=&quot;pull-right&quot;&gt;\n    &lt;input type=&quot;button&quot; value=&quot;{{ button_continue }}&quot; id=&quot;button-payment-method&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot; /&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n{% endif %} ', '2022-01-28 13:37:21'),
(351, 0, 'default', 'product/product', '{{ header }}\n&lt;div id=&quot;product-product&quot; class=&quot;container&quot;&gt;\n  &lt;ul class=&quot;breadcrumb&quot;&gt;\n    {% for breadcrumb in breadcrumbs %}\n    &lt;li&gt;&lt;a href=&quot;{{ breadcrumb.href }}&quot;&gt;{{ breadcrumb.text }}&lt;/a&gt;&lt;/li&gt;\n    {% endfor %}\n  &lt;/ul&gt;\n  &lt;div class=&quot;row&quot;&gt;{{ column_left }}\n    {% if column_left and column_right %}\n    {% set class = \'col-sm-6\' %}\n    {% elseif column_left or column_right %}\n    {% set class = \'col-sm-9\' %}\n    {% else %}\n    {% set class = \'col-sm-12\' %}\n    {% endif %}\n    &lt;div id=&quot;content&quot; class=&quot;{{ class }}&quot;&gt;{{ content_top }}\n      &lt;div class=&quot;row&quot;&gt; {% if column_left or column_right %}\n        {% set class = \'col-sm-6\' %}\n        {% else %}\n        {% set class = \'col-sm-8\' %}\n        {% endif %}\n        &lt;div class=&quot;{{ class }}&quot;&gt; {% if thumb or images %}\n          &lt;ul class=&quot;thumbnails&quot;&gt;\n            {% if thumb %}\n            &lt;li&gt;&lt;a class=&quot;thumbnail&quot; href=&quot;{{ popup }}&quot; title=&quot;{{ heading_title }}&quot;&gt;&lt;img src=&quot;{{ thumb }}&quot; title=&quot;{{ heading_title }}&quot; alt=&quot;{{ heading_title }}&quot; /&gt;&lt;/a&gt;&lt;/li&gt;\n            {% endif %}\n            {% if images %}\n            {% for image in images %}\n            &lt;li class=&quot;image-additional&quot;&gt;&lt;a class=&quot;thumbnail&quot; href=&quot;{{ image.popup }}&quot; title=&quot;{{ heading_title }}&quot;&gt; &lt;img src=&quot;{{ image.thumb }}&quot; title=&quot;{{ heading_title }}&quot; alt=&quot;{{ heading_title }}&quot; /&gt;&lt;/a&gt;&lt;/li&gt;\n            {% endfor %}\n            {% endif %}\n          &lt;/ul&gt;\n          {% endif %}\n          &lt;ul class=&quot;nav nav-tabs&quot;&gt;\n            &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#tab-description&quot; data-toggle=&quot;tab&quot;&gt;{{ tab_description }}&lt;/a&gt;&lt;/li&gt;\n            {% if attribute_groups %}\n            &lt;li&gt;&lt;a href=&quot;#tab-specification&quot; data-toggle=&quot;tab&quot;&gt;{{ tab_attribute }}&lt;/a&gt;&lt;/li&gt;\n            {% endif %}\n            {% if review_status %}\n            &lt;li&gt;&lt;a href=&quot;#tab-review&quot; data-toggle=&quot;tab&quot;&gt;{{ tab_review }}&lt;/a&gt;&lt;/li&gt;\n            {% endif %}\n          &lt;/ul&gt;\n          &lt;div class=&quot;tab-content&quot;&gt;\n            &lt;div class=&quot;tab-pane active&quot; id=&quot;tab-description&quot;&gt;{{ description }}&lt;/div&gt;\n            {% if attribute_groups %}\n            &lt;div class=&quot;tab-pane&quot; id=&quot;tab-specification&quot;&gt;\n              &lt;table class=&quot;table table-bordered&quot;&gt;\n                {% for attribute_group in attribute_groups %}\n                &lt;thead&gt;\n                  &lt;tr&gt;\n                    &lt;td colspan=&quot;2&quot;&gt;&lt;strong&gt;{{ attribute_group.name }}&lt;/strong&gt;&lt;/td&gt;\n                  &lt;/tr&gt;\n                &lt;/thead&gt;\n                &lt;tbody&gt;\n                {% for attribute in attribute_group.attribute %}\n                &lt;tr&gt;\n                  &lt;td&gt;{{ attribute.name }}&lt;/td&gt;\n                  &lt;td&gt;{{ attribute.text }}&lt;/td&gt;\n                &lt;/tr&gt;\n                {% endfor %}\n                  &lt;/tbody&gt;\n                {% endfor %}\n              &lt;/table&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if review_status %}\n            &lt;div class=&quot;tab-pane&quot; id=&quot;tab-review&quot;&gt;\n              &lt;form class=&quot;form-horizontal&quot; id=&quot;form-review&quot;&gt;\n                &lt;div id=&quot;review&quot;&gt;&lt;/div&gt;\n                &lt;h2&gt;{{ text_write }}&lt;/h2&gt;\n                {% if review_guest %}\n                &lt;div class=&quot;form-group required&quot;&gt;\n                  &lt;div class=&quot;col-sm-12&quot;&gt;\n                    &lt;label class=&quot;control-label&quot; for=&quot;input-name&quot;&gt;{{ entry_name }}&lt;/label&gt;\n                    &lt;input type=&quot;text&quot; name=&quot;name&quot; value=&quot;{{ customer_name }}&quot; id=&quot;input-name&quot; class=&quot;form-control&quot; /&gt;\n                  &lt;/div&gt;\n                &lt;/div&gt;\n                &lt;div class=&quot;form-group required&quot;&gt;\n                  &lt;div class=&quot;col-sm-12&quot;&gt;\n                    &lt;label class=&quot;control-label&quot; for=&quot;input-review&quot;&gt;{{ entry_review }}&lt;/label&gt;\n                    &lt;textarea name=&quot;text&quot; rows=&quot;5&quot; id=&quot;input-review&quot; class=&quot;form-control&quot;&gt;&lt;/textarea&gt;\n                    &lt;div class=&quot;help-block&quot;&gt;{{ text_note }}&lt;/div&gt;\n                  &lt;/div&gt;\n                &lt;/div&gt;\n                &lt;div class=&quot;form-group required&quot;&gt;\n                  &lt;div class=&quot;col-sm-12&quot;&gt;\n                    &lt;label class=&quot;control-label&quot;&gt;{{ entry_rating }}&lt;/label&gt;\n                    &amp;nbsp;&amp;nbsp;&amp;nbsp; {{ entry_bad }}&amp;nbsp;\n                    &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;1&quot; /&gt;\n                    &amp;nbsp;\n                    &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;2&quot; /&gt;\n                    &amp;nbsp;\n                    &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;3&quot; /&gt;\n                    &amp;nbsp;\n                    &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;4&quot; /&gt;\n                    &amp;nbsp;\n                    &lt;input type=&quot;radio&quot; name=&quot;rating&quot; value=&quot;5&quot; /&gt;\n                    &amp;nbsp;{{ entry_good }}&lt;/div&gt;\n                &lt;/div&gt;\n                {{ captcha }}\n                &lt;div class=&quot;buttons clearfix&quot;&gt;\n                  &lt;div class=&quot;pull-right&quot;&gt;\n                    &lt;button type=&quot;button&quot; id=&quot;button-review&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-primary&quot;&gt;{{ button_continue }}&lt;/button&gt;\n                  &lt;/div&gt;\n                &lt;/div&gt;\n                {% else %}\n                {{ text_login }}\n                {% endif %}\n              &lt;/form&gt;\n            &lt;/div&gt;\n            {% endif %}&lt;/div&gt;\n        &lt;/div&gt;\n        {% if column_left or column_right %}\n        {% set class = \'col-sm-6\' %}\n        {% else %}\n        {% set class = \'col-sm-4\' %}\n        {% endif %}\n        &lt;div class=&quot;{{ class }}&quot;&gt;\n          {#&lt;div class=&quot;btn-group&quot;&gt;\n            &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n            &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; class=&quot;btn btn-default&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n          &lt;/div&gt;#}\n          &lt;h1&gt;{{ heading_title }}&lt;/h1&gt;\n          &lt;ul class=&quot;list-unstyled&quot;&gt;\n            {% if manufacturer %}\n            &lt;li&gt;&lt;b&gt;{{ text_manufacturer }}&lt;/b&gt; &lt;a href=&quot;{{ manufacturers }}&quot;&gt;{{ manufacturer }}&lt;/a&gt;&lt;/li&gt;\n            {% endif %}\n            &lt;li&gt;&lt;b&gt;{{ text_model }}&lt;/b&gt; {{ model }}&lt;/li&gt;\n            {% if reward %}\n            {#&lt;li&gt;{{ text_reward }} {{ reward }}&lt;/li&gt;#}\n            {% endif %}\n            &lt;li&gt;&lt;b&gt;{{ text_stock }}&lt;/b&gt; {{ stock }}&lt;/li&gt;\n          &lt;/ul&gt;\n          {% if price %}\n          &lt;ul class=&quot;list-unstyled&quot;&gt;\n            {% if not special %}\n            &lt;li&gt;\n              &lt;h2&gt;{{ price }}&lt;/h2&gt;\n            &lt;/li&gt;\n            {% else %}\n            &lt;li&gt;&lt;span class=&quot;price-old&quot;&gt;{{ price }}&lt;/span&gt;&lt;/li&gt;\n            &lt;li&gt;\n                &lt;span class=&quot;price-new&quot;&gt;{{ special }}&lt;/span&gt;\n            &lt;/li&gt;\n            {% endif %}\n            {% if tax %}\n            &lt;li&gt;{{ text_tax }} {{ tax }}&lt;/li&gt;\n            {% endif %}\n            {% if points %}\n            &lt;li&gt;{{ text_points }} {{ points }}&lt;/li&gt;\n            {% endif %}\n            {% if discounts %}\n            &lt;li&gt;\n              &lt;hr&gt;\n            &lt;/li&gt;\n            {% for discount in discounts %}\n            &lt;li&gt;{{ discount.quantity }}{{ text_discount }}{{ discount.price }}&lt;/li&gt;\n            {% endfor %}\n            {% endif %}\n          &lt;/ul&gt;\n          {% endif %}\n          &lt;div id=&quot;product&quot;&gt; {% if options %}\n            &lt;hr&gt;\n            &lt;h3&gt;{{ text_option }}&lt;/h3&gt;\n            {% for option in options %}\n            {% if option.type == \'select\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;select name=&quot;option[{{ option.product_option_id }}]&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot;&gt;\n                &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n                {% for option_value in option.product_option_value %}\n                &lt;option value=&quot;{{ option_value.product_option_value_id }}&quot;&gt;{{ option_value.name }}\n                {% if option_value.price %}\n                ({{ option_value.price_prefix }}{{ option_value.price }})\n                {% endif %} &lt;/option&gt;\n                {% endfor %}\n              &lt;/select&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'radio\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div id=&quot;input-option{{ option.product_option_id }}&quot;&gt; {% for option_value in option.product_option_value %}\n                &lt;div class=&quot;radio&quot;&gt;\n                  &lt;label&gt;\n                    &lt;input type=&quot;radio&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option_value.product_option_value_id }}&quot; /&gt;\n                    {% if option_value.image %} &lt;img src=&quot;{{ option_value.image }}&quot; alt=&quot;{{ option_value.name }} {% if option_value.price %} {{ option_value.price_prefix }} {{ option_value.price }} {% endif %}&quot; class=&quot;img-thumbnail&quot; /&gt; {% endif %}                  \n                    {{ option_value.name }}\n                    {% if option_value.price %}\n                    ({{ option_value.price_prefix }}{{ option_value.price }})\n                    {% endif %} &lt;/label&gt;\n                &lt;/div&gt;\n                {% endfor %} &lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'checkbox\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div id=&quot;input-option{{ option.product_option_id }}&quot;&gt; {% for option_value in option.product_option_value %}\n                &lt;div class=&quot;checkbox&quot;&gt;\n                  &lt;label&gt;\n                    &lt;input type=&quot;checkbox&quot; name=&quot;option[{{ option.product_option_id }}][]&quot; value=&quot;{{ option_value.product_option_value_id }}&quot; /&gt;\n                    {% if option_value.image %} &lt;img src=&quot;{{ option_value.image }}&quot; alt=&quot;{{ option_value.name }} {% if option_value.price %} {{ option_value.price_prefix }} {{ option_value.price }} {% endif %}&quot; class=&quot;img-thumbnail&quot; /&gt; {% endif %}\n                    {{ option_value.name }}\n                    {% if option_value.price %}\n                    ({{ option_value.price_prefix }}{{ option_value.price }})\n                    {% endif %} &lt;/label&gt;\n                &lt;/div&gt;\n                {% endfor %} &lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'text\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;input type=&quot;text&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option.value }}&quot; placeholder=&quot;{{ option.name }}&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot; /&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'textarea\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;textarea name=&quot;option[{{ option.product_option_id }}]&quot; rows=&quot;5&quot; placeholder=&quot;{{ option.name }}&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot;&gt;{{ option.value }}&lt;/textarea&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'file\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;button type=&quot;button&quot; id=&quot;button-upload{{ option.product_option_id }}&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-default btn-block&quot;&gt;&lt;i class=&quot;fa fa-upload&quot;&gt;&lt;/i&gt; {{ button_upload }}&lt;/button&gt;\n              &lt;input type=&quot;hidden&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;&quot; id=&quot;input-option{{ option.product_option_id }}&quot; /&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'date\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div class=&quot;input-group date&quot;&gt;\n                &lt;input type=&quot;text&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option.value }}&quot; data-date-format=&quot;YYYY-MM-DD&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot; /&gt;\n                &lt;span class=&quot;input-group-btn&quot;&gt;\n                &lt;button class=&quot;btn btn-default&quot; type=&quot;button&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;/span&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'datetime\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div class=&quot;input-group datetime&quot;&gt;\n                &lt;input type=&quot;text&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option.value }}&quot; data-date-format=&quot;YYYY-MM-DD HH:mm&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot; /&gt;\n                &lt;span class=&quot;input-group-btn&quot;&gt;\n                &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;/span&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% if option.type == \'time\' %}\n            &lt;div class=&quot;form-group{% if option.required %} required {% endif %}&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-option{{ option.product_option_id }}&quot;&gt;{{ option.name }}&lt;/label&gt;\n              &lt;div class=&quot;input-group time&quot;&gt;\n                &lt;input type=&quot;text&quot; name=&quot;option[{{ option.product_option_id }}]&quot; value=&quot;{{ option.value }}&quot; data-date-format=&quot;HH:mm&quot; id=&quot;input-option{{ option.product_option_id }}&quot; class=&quot;form-control&quot; /&gt;\n                &lt;span class=&quot;input-group-btn&quot;&gt;\n                &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot;&gt;&lt;i class=&quot;fa fa-calendar&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                &lt;/span&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            {% endfor %}\n            {% endif %}\n            {% if recurrings %}\n            &lt;hr&gt;\n            &lt;h3&gt;{{ text_payment_recurring }}&lt;/h3&gt;\n            &lt;div class=&quot;form-group required&quot;&gt;\n              &lt;select name=&quot;recurring_id&quot; class=&quot;form-control&quot;&gt;\n                &lt;option value=&quot;&quot;&gt;{{ text_select }}&lt;/option&gt;\n                {% for recurring in recurrings %}\n                &lt;option value=&quot;{{ recurring.recurring_id }}&quot;&gt;{{ recurring.name }}&lt;/option&gt;\n                {% endfor %}\n              &lt;/select&gt;\n              &lt;div class=&quot;help-block&quot; id=&quot;recurring-description&quot;&gt;&lt;/div&gt;\n            &lt;/div&gt;\n            {% endif %}\n            &lt;div class=&quot;form-group&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-quantity&quot;&gt;{{ entry_qty }}&lt;/label&gt;\n              &lt;input type=&quot;number&quot; name=&quot;quantity&quot; value=&quot;{{ minimum }}&quot; size=&quot;2&quot; id=&quot;input-quantity&quot; class=&quot;form-control&quot; /&gt;\n              &lt;input type=&quot;hidden&quot; name=&quot;product_id&quot; value=&quot;{{ product_id }}&quot; /&gt;\n              &lt;br/&gt;\n              &lt;button type=&quot;button&quot; id=&quot;button-cart&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;add&quot;&gt;{{ button_cart }}&lt;/button&gt;\n            &lt;/div&gt;\n            {% if minimum &gt; 1 %}\n            &lt;div class=&quot;alert alert-info&quot;&gt;&lt;i class=&quot;fa fa-info-circle&quot;&gt;&lt;/i&gt; {{ text_minimum }}&lt;/div&gt;\n            {% endif %}&lt;/div&gt;\n          {% if review_status %}\n          &lt;div class=&quot;rating&quot;&gt;\n            &lt;p&gt;{% for i in 1..5 %}\n              {% if rating &lt; i %}&lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;/span&gt;{% else %}&lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;/span&gt;{% endif %}\n              {% endfor %} &lt;a href=&quot;&quot; onclick=&quot;$(\'a[href=\\\'#tab-review\\\']\').trigger(\'click\'); return false;&quot;&gt;{{ reviews }}&lt;/a&gt; / &lt;a href=&quot;&quot; onclick=&quot;$(\'a[href=\\\'#tab-review\\\']\').trigger(\'click\'); return false;&quot;&gt;{{ text_write }}&lt;/a&gt;&lt;/p&gt;\n            &lt;hr&gt;\n            &lt;!-- AddThis Button BEGIN --&gt;\n            &lt;div class=&quot;addthis_toolbox addthis_default_style&quot; data-url=&quot;{{ share }}&quot;&gt;&lt;a class=&quot;addthis_button_facebook_like&quot; fb:like:layout=&quot;button_count&quot;&gt;&lt;/a&gt; &lt;a class=&quot;addthis_button_tweet&quot;&gt;&lt;/a&gt; &lt;a class=&quot;addthis_button_pinterest_pinit&quot;&gt;&lt;/a&gt; &lt;a class=&quot;addthis_counter addthis_pill_style&quot;&gt;&lt;/a&gt;&lt;/div&gt;\n            &lt;script type=&quot;text/javascript&quot; src=&quot;//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e&quot;&gt;&lt;/script&gt; \n            &lt;!-- AddThis Button END --&gt; \n          &lt;/div&gt;\n          {% endif %} &lt;/div&gt;\n      &lt;/div&gt;\n      {% if products %}\n      &lt;h3&gt;{{ text_related }}&lt;/h3&gt;\n      &lt;div class=&quot;row&quot;&gt; {% set i = 0 %}\n        {% for product in products %}\n        {% if column_left and column_right %}\n        {% set class = \'col-xs-8 col-sm-6\' %}\n        {% elseif column_left or column_right %}\n        {% set class = \'col-xs-6 col-md-4\' %}\n        {% else %}\n        {% set class = \'col-xs-6 col-sm-3\' %}\n        {% endif %}\n        &lt;div class=&quot;{{ class }}&quot;&gt;\n          &lt;div class=&quot;product-thumb transition&quot;&gt;\n            &lt;div class=&quot;image&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-responsive&quot; /&gt;&lt;/a&gt;&lt;/div&gt;\n            &lt;div class=&quot;caption&quot;&gt;\n              &lt;h4&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt;&lt;/h4&gt;\n              &lt;p&gt;{{ product.description }}&lt;/p&gt;\n              {% if product.rating %}\n              &lt;div class=&quot;rating&quot;&gt; {% for j in 1..5 %}\n                {% if product.rating &lt; j %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star-o fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% else %} &lt;span class=&quot;fa fa-stack&quot;&gt;&lt;i class=&quot;fa fa-star fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;i class=&quot;fa fa-star-o fa-stack-1x&quot;&gt;&lt;/i&gt;&lt;/span&gt; {% endif %}\n                {% endfor %} &lt;/div&gt;\n              {% endif %}\n              {% if product.price %}\n              &lt;p class=&quot;price&quot;&gt; {% if not product.special %}\n                {{ product.price }}\n                {% else %} &lt;span class=&quot;price-new&quot;&gt;{{ product.special }}&lt;/span&gt; &lt;span class=&quot;price-old&quot;&gt;{{ product.price }}&lt;/span&gt; {% endif %}\n                {% if product.tax %} &lt;span class=&quot;price-tax&quot;&gt;{{ text_tax }} {{ product.tax }}&lt;/span&gt; {% endif %} &lt;/p&gt;\n              {% endif %} &lt;/div&gt;\n            &lt;div class=&quot;button-group&quot;&gt;\n              &lt;button class=&quot;add&quot; type=&quot;button&quot; onclick=&quot;cart.add(\'{{ product.product_id }}\', \'{{ product.minimum }}\');&quot;&gt;&lt;span class=&quot;hidden-xs hidden-sm hidden-md&quot;&gt;{{ button_cart }}&lt;/span&gt; &lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              {#&lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_wishlist }}&quot; onclick=&quot;wishlist.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-heart&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n              &lt;button type=&quot;button&quot; data-toggle=&quot;tooltip&quot; title=&quot;{{ button_compare }}&quot; onclick=&quot;compare.add(\'{{ product.product_id }}\');&quot;&gt;&lt;i class=&quot;fa fa-exchange&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n            #}&lt;/div&gt;\n          &lt;/div&gt;\n        &lt;/div&gt;\n        {% if column_left and column_right and (i + 1) % 2 == 0 %}\n        &lt;div class=&quot;clearfix visible-md visible-sm&quot;&gt;&lt;/div&gt;\n        {% elseif column_left or column_right and (i + 1) % 3 == 0 %}\n        &lt;div class=&quot;clearfix visible-md&quot;&gt;&lt;/div&gt;\n        {% elseif (i + 1) % 4 == 0 %}\n        &lt;div class=&quot;clearfix visible-md&quot;&gt;&lt;/div&gt;\n        {% endif %}\n        {% set i = i + 1 %}\n        {% endfor %} &lt;/div&gt;\n        {% endif %}\n        {% if tags %}\n        &lt;p&gt;{{ text_tags }}\n        {% for i in 0..tags|length - 1 %}\n        {% if i &lt; (tags|length - 1) %} &lt;a href=&quot;{{ tags[i].href }}&quot;&gt;{{ tags[i].tag }}&lt;/a&gt;,\n        {% else %} &lt;a href=&quot;{{ tags[i].href }}&quot;&gt;{{ tags[i].tag }}&lt;/a&gt; {% endif %}\n        {% endfor %} &lt;/p&gt;\n        {% endif %}\n      {{ content_bottom }}&lt;/div&gt;\n    {{ column_right }}&lt;/div&gt;\n&lt;/div&gt;\n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'select[name=\\\'recurring_id\\\'], input[name=&quot;quantity&quot;]\').change(function(){\n	$.ajax({\n		url: \'index.php?route=product/product/getRecurringDescription\',\n		type: \'post\',\n		data: $(\'input[name=\\\'product_id\\\'], input[name=\\\'quantity\\\'], select[name=\\\'recurring_id\\\']\'),\n		dataType: \'json\',\n		beforeSend: function() {\n			$(\'#recurring-description\').html(\'\');\n		},\n		success: function(json) {\n			$(\'.alert-dismissible, .text-danger\').remove();\n\n			if (json[\'success\']) {\n				$(\'#recurring-description\').html(json[\'success\']);\n			}\n		}\n	});\n});\n//--&gt;&lt;/script&gt; \n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#button-cart\').on(\'click\', function() {\n	$.ajax({\n		url: \'index.php?route=checkout/cart/add\',\n		type: \'post\',\n		data: $(\'#product input[type=\\\'text\\\'], #product input[type=\\\'hidden\\\'], #product input[type=\\\'radio\\\']:checked, #product input[type=\\\'checkbox\\\']:checked, #product select, #product textarea\'),\n		dataType: \'json\',\n		beforeSend: function() {\n			$(\'#button-cart\').button(\'loading\');\n		},\n		complete: function() {\n			$(\'#button-cart\').button(\'reset\');\n		},\n		success: function(json) {\n			$(\'.alert-dismissible, .text-danger\').remove();\n			$(\'.form-group\').removeClass(\'has-error\');\n\n			if (json[\'error\']) {\n				if (json[\'error\'][\'option\']) {\n					for (i in json[\'error\'][\'option\']) {\n						var element = $(\'#input-option\' + i.replace(\'_\', \'-\'));\n\n						if (element.parent().hasClass(\'input-group\')) {\n							element.parent().after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][\'option\'][i] + \'&lt;/div&gt;\');\n						} else {\n							element.after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][\'option\'][i] + \'&lt;/div&gt;\');\n						}\n					}\n				}\n\n				if (json[\'error\'][\'recurring\']) {\n					$(\'select[name=\\\'recurring_id\\\']\').after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'][\'recurring\'] + \'&lt;/div&gt;\');\n				}\n\n				// Highlight any found errors\n				$(\'.text-danger\').parent().addClass(\'has-error\');\n			}\n\n			if (json[\'success\']) {\n				$(\'.breadcrumb\').after(\'&lt;div class=&quot;alert alert-success alert-dismissible&quot;&gt;\' + json[\'success\'] + \'&lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;/div&gt;\');\n\n				$(\'#cart &gt; button\').html(\'&lt;span id=&quot;cart-total&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; \' + json[\'total\'] + \'&lt;/span&gt;\');\n\n				$(\'html, body\').animate({ scrollTop: 0 }, \'slow\');\n\n				$(\'#cart &gt; ul\').load(\'index.php?route=common/cart/info ul li\');\n			}\n		},\n        error: function(xhr, ajaxOptions, thrownError) {\n            alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n        }\n	});\n});\n//--&gt;&lt;/script&gt; \n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'.date\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickTime: false\n});\n\n$(\'.datetime\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: true,\n	pickTime: true\n});\n\n$(\'.time\').datetimepicker({\n	language: \'{{ datepicker }}\',\n	pickDate: false\n});\n\n$(\'button[id^=\\\'button-upload\\\']\').on(\'click\', function() {\n	var node = this;\n\n	$(\'#form-upload\').remove();\n\n	$(\'body\').prepend(\'&lt;form enctype=&quot;multipart/form-data&quot; id=&quot;form-upload&quot; style=&quot;display: none;&quot;&gt;&lt;input type=&quot;file&quot; name=&quot;file&quot; /&gt;&lt;/form&gt;\');\n\n	$(\'#form-upload input[name=\\\'file\\\']\').trigger(\'click\');\n\n	if (typeof timer != \'undefined\') {\n    	clearInterval(timer);\n	}\n\n	timer = setInterval(function() {\n		if ($(\'#form-upload input[name=\\\'file\\\']\').val() != \'\') {\n			clearInterval(timer);\n\n			$.ajax({\n				url: \'index.php?route=tool/upload\',\n				type: \'post\',\n				dataType: \'json\',\n				data: new FormData($(\'#form-upload\')[0]),\n				cache: false,\n				contentType: false,\n				processData: false,\n				beforeSend: function() {\n					$(node).button(\'loading\');\n				},\n				complete: function() {\n					$(node).button(\'reset\');\n				},\n				success: function(json) {\n					$(\'.text-danger\').remove();\n\n					if (json[\'error\']) {\n						$(node).parent().find(\'input\').after(\'&lt;div class=&quot;text-danger&quot;&gt;\' + json[\'error\'] + \'&lt;/div&gt;\');\n					}\n\n					if (json[\'success\']) {\n						alert(json[\'success\']);\n\n						$(node).parent().find(\'input\').val(json[\'code\']);\n					}\n				},\n				error: function(xhr, ajaxOptions, thrownError) {\n					alert(thrownError + &quot;\\r\\n&quot; + xhr.statusText + &quot;\\r\\n&quot; + xhr.responseText);\n				}\n			});\n		}\n	}, 500);\n});\n//--&gt;&lt;/script&gt; \n&lt;script type=&quot;text/javascript&quot;&gt;&lt;!--\n$(\'#review\').delegate(\'.pagination a\', \'click\', function(e) {\n    e.preventDefault();\n\n    $(\'#review\').fadeOut(\'slow\');\n\n    $(\'#review\').load(this.href);\n\n    $(\'#review\').fadeIn(\'slow\');\n});\n\n$(\'#review\').load(\'index.php?route=product/product/review&amp;product_id={{ product_id }}\');\n\n$(\'#button-review\').on(\'click\', function() {\n	$.ajax({\n		url: \'index.php?route=product/product/write&amp;product_id={{ product_id }}\',\n		type: \'post\',\n		dataType: \'json\',\n		data: $(&quot;#form-review&quot;).serialize(),\n		beforeSend: function() {\n			$(\'#button-review\').button(\'loading\');\n		},\n		complete: function() {\n			$(\'#button-review\').button(\'reset\');\n		},\n		success: function(json) {\n			$(\'.alert-dismissible\').remove();\n\n			if (json[\'error\']) {\n				$(\'#review\').after(\'&lt;div class=&quot;alert alert-danger alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; \' + json[\'error\'] + \'&lt;/div&gt;\');\n			}\n\n			if (json[\'success\']) {\n				$(\'#review\').after(\'&lt;div class=&quot;alert alert-success alert-dismissible&quot;&gt;&lt;i class=&quot;fa fa-check-circle&quot;&gt;&lt;/i&gt; \' + json[\'success\'] + \'&lt;/div&gt;\');\n\n				$(\'input[name=\\\'name\\\']\').val(\'\');\n				$(\'textarea[name=\\\'text\\\']\').val(\'\');\n				$(\'input[name=\\\'rating\\\']:checked\').prop(\'checked\', false);\n			}\n		}\n	});\n});\n\n$(document).ready(function() {\n	$(\'.thumbnails\').magnificPopup({\n		type:\'image\',\n		delegate: \'a\',\n		gallery: {\n			enabled: true\n		}\n	});\n});\n//--&gt;&lt;/script&gt; \n{{ footer }} \n', '2022-01-30 12:26:01'),
(370, 0, 'default', 'extension/module/feedback', '&lt;div class=&quot;block_with_feedback&quot;&gt;\n  {#{% if heading_title %}\n  &lt;h3 style=&quot;margin-top: 0&quot;&gt;{{ heading_title }}&lt;/h3&gt;\n  {% endif %}\n  {% if text_main %}\n  &lt;p&gt;{{ text_main }}&lt;/p&gt;\n  {% endif %}#}\n  &lt;div class=&quot;call-out&quot; id=&quot;button_feedback&quot; data-toggle=&quot;modal&quot; data-mytooltip=&quot;tooltip&quot; data-target=&quot;#modalFeedback&quot; data-original-title=&quot;Заказ обратного звонка&quot;&gt;&lt;span class=&quot;fa fa-phone-volume&quot;&gt;&lt;/span&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;div class=&quot;modal fade&quot; id=&quot;modalFeedback&quot; tabindex=&quot;-1&quot; role=&quot;dialog&quot; aria-labelledby=&quot;modalFeedbackLabel&quot; aria-hidden=&quot;true&quot;&gt;\n  &lt;div class=&quot;modal-dialog&quot; role=&quot;document&quot;&gt;\n    &lt;div class=&quot;modal-content&quot;&gt;\n      &lt;div class=&quot;modal-body&quot;&gt;\n        &lt;div style=&quot;display:inline-block; width: 100%; text-align:right;&quot;&gt;\n          &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;modal&quot; aria-label=&quot;Close&quot;&gt;\n            &lt;span aria-hidden=&quot;true&quot;&gt;&amp;times;&lt;/span&gt;\n          &lt;/button&gt;\n        &lt;/div&gt;\n        &lt;form class=&quot;form-horizontal&quot; id=&quot;form-feedback&quot;&gt;\n          &lt;div class=&quot;form-group required&quot;&gt;\n            &lt;div class=&quot;col-sm-12&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-name&quot;&gt;{{ entry_name }}&lt;/label&gt;\n              &lt;input type=&quot;text&quot; name=&quot;name&quot; value=&quot;{{ name }}&quot; id=&quot;input-name&quot; class=&quot;form-control&quot; /&gt;\n            &lt;/div&gt;\n            &lt;div class=&quot;col-sm-12&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-phone&quot;&gt;{{ entry_phone }}&lt;/label&gt;\n              &lt;input type=&quot;text&quot; name=&quot;phone&quot; value=&quot;{{ phone }}&quot; id=&quot;input-phone&quot; class=&quot;form-control&quot; /&gt;\n            &lt;/div&gt;\n           {# {% if email_active == 1 %}\n            &lt;div class=&quot;col-sm-12&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-email&quot;&gt;{{ entry_email }}&lt;/label&gt;\n              &lt;input type=&quot;text&quot; name=&quot;email&quot; value=&quot;{{ email }}&quot; id=&quot;input-email&quot; class=&quot;form-control&quot; /&gt;\n            &lt;/div&gt;\n            {% endif %}#}\n            {#&lt;div class=&quot;col-sm-12&quot;&gt;\n              &lt;label class=&quot;control-label&quot; for=&quot;input-enquiry&quot;&gt;{{ entry_enquiry }}&lt;/label&gt;\n              &lt;textarea name=&quot;enquiry&quot; rows=&quot;5&quot; id=&quot;input-enquiry&quot; class=&quot;form-control&quot;&gt;{{ enquiry }}&lt;/textarea&gt;\n            &lt;/div&gt;#}\n          &lt;/div&gt;\n          {{ captcha }}\n        &lt;/form&gt;\n        &lt;button type=&quot;button&quot; id=&quot;button_send_feedback&quot; data-loading-text=&quot;{{ text_loading }}&quot;  class=&quot;btn btn-cart&quot;&gt;{{ text_send }}&lt;/button&gt;\n      &lt;/div&gt;\n    &lt;/div&gt;\n  &lt;/div&gt;\n&lt;/div&gt;\n&lt;script&gt;\n  $(\'#button_send_feedback\').on(\'click\', function () {\n    $.ajax({\n      url: \'index.php?route=extension/module/feedback/write\',\n      type: \'post\',\n      dataType: \'json\',\n      data: $(&quot;#form-feedback&quot;).serialize(),\n      beforeSend: function () {\n        $(\'#button_send_feedback\').button(\'loading\');\n      },\n      complete: function () {\n        $(\'#button_send_feedback\').button(\'reset\');\n      },\n      success: function (json) {\n        $(\'.alert-success, .alert-danger\').remove();\n        if (json[\'error\']) {\n          $(\'#form-feedback\').after(\'&lt;div class=&quot;alert alert-danger&quot; style=&quot;margin:20px 0;&quot;&gt;&lt;i class=&quot;fa fa-exclamation-circle&quot;&gt;&lt;/i&gt; \' + json[\'error\'] + \'&lt;/div&gt;\');\n        }\n        if (json[\'success\']) {\n          $(\'#form-feedback\').after(\'&lt;div class=&quot;alert alert-success&quot; style=&quot;margin:20px 0;&quot;&gt;&lt;i class=&quot;fa fa-check-circle&quot;&gt;&lt;/i&gt; \' + json[\'success\'] + \'&lt;/div&gt;\');\n          $(\'input[name=\\\'name\\\']\').val(\'\');\n          $(\'input[name=\\\'phone\\\']\').val(\'\');\n          // $(\'input[name=\\\'email\\\']\').val(\'\');\n          // $(\'textarea[name=\\\'enquiry\\\']\').val(\'\');\n        }\n      }\n    });\n  });\n  //\n  $(document).ready(function() {\n    $(&quot;#input-phone&quot;).inputmask(inputmask_1);\n    $(\'[data-mytooltip=&quot;tooltip&quot;]\').tooltip();\n  });\n&lt;/script&gt;', '2022-02-01 19:44:16');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, 'dockershpargalka.txt', 'dockershpargalka.txt.EEF4y1cvDJkyku9OyilR9R5jm958mB54', '8228b2ed34965d14bbe2a0c029c5ee19d2462a7e', '2022-01-27 21:34:41');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int NOT NULL,
  `user_group_id` int NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'cd64b36719d8071f722e7910688aff57c7c26992', 'lNmukO62x', 'Alex', 'Mikhailov', 'iskander.m.211@gmai.com', 'catalog/e2281c87fd044c0ea3c3bdd91319d559(1).jpg', '', '127.0.0.1', 1, '2022-01-23 19:20:42');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/captcha\\/googlev3\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/oplata\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/feedback\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/captcha\\/googlev3\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/oplata\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/feedback\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Новый год'),
(7, 1, 'День рождения'),
(8, 1, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограмм', 'кг'),
(2, 1, 'Грамм', 'г');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int NOT NULL,
  `country_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 20, 'Брест', 'BR', 1),
(2, 20, 'Гомель', 'HO', 1),
(3, 20, 'Минск', 'HM', 1),
(4, 20, 'Гродно', 'HR', 1),
(5, 20, 'Могилев', 'MA', 1),
(6, 20, 'Минская область', 'MI', 1),
(7, 20, 'Витебск', 'VI', 1),
(8, 80, 'Abkhazia', 'AB', 1),
(9, 80, 'Ajaria', 'AJ', 1),
(10, 80, 'Tbilisi', 'TB', 1),
(11, 80, 'Guria', 'GU', 1),
(12, 80, 'Imereti', 'IM', 1),
(13, 80, 'Kakheti', 'KA', 1),
(14, 80, 'Kvemo Kartli', 'KK', 1),
(15, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(16, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(17, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(18, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(19, 80, 'Shida Kartli', 'SK', 1),
(20, 109, 'Алматинская область', 'AL', 1),
(21, 109, 'Алматы - город республ-го значения', 'AC', 1),
(22, 109, 'Акмолинская область', 'AM', 1),
(23, 109, 'Актюбинская область', 'AQ', 1),
(24, 109, 'Астана - город республ-го значения', 'AS', 1),
(25, 109, 'Атырауская область', 'AT', 1),
(26, 109, 'Западно-Казахстанская область', 'BA', 1),
(27, 109, 'Байконур - город республ-го значения', 'BY', 1),
(28, 109, 'Мангистауская область', 'MA', 1),
(29, 109, 'Южно-Казахстанская область', 'ON', 1),
(30, 109, 'Павлодарская область', 'PA', 1),
(31, 109, 'Карагандинская область', 'QA', 1),
(32, 109, 'Костанайская область', 'QO', 1),
(33, 109, 'Кызылординская область', 'QY', 1),
(34, 109, 'Восточно-Казахстанская область', 'SH', 1),
(35, 109, 'Северо-Казахстанская область', 'SO', 1),
(36, 109, 'Жамбылская область', 'ZH', 1),
(37, 115, 'Bishkek', 'GB', 1),
(38, 115, 'Batken', 'B', 1),
(39, 115, 'Chu', 'C', 1),
(40, 115, 'Jalal-Abad', 'J', 1),
(41, 115, 'Naryn', 'N', 1),
(42, 115, 'Osh', 'O', 1),
(43, 115, 'Talas', 'T', 1),
(44, 115, 'Ysyk-Kol', 'Y', 1),
(45, 176, 'Республика Хакасия', 'KK', 1),
(46, 176, 'Московская область', 'MOS', 1),
(47, 176, 'Чукотский АО', 'CHU', 1),
(48, 176, 'Архангельская область', 'ARK', 1),
(49, 176, 'Астраханская область', 'AST', 1),
(50, 176, 'Алтайский край', 'ALT', 1),
(51, 176, 'Белгородская область', 'BEL', 1),
(52, 176, 'Еврейская АО', 'YEV', 1),
(53, 176, 'Амурская область', 'AMU', 1),
(54, 176, 'Брянская область', 'BRY', 1),
(55, 176, 'Чувашская Республика', 'CU', 1),
(56, 176, 'Челябинская область', 'CHE', 1),
(57, 176, 'Карачаево-Черкесия', 'KC', 1),
(58, 176, 'Забайкальский край', 'ZAB', 1),
(59, 176, 'Ленинградская область', 'LEN', 1),
(60, 176, 'Республика Калмыкия', 'KL', 1),
(61, 176, 'Сахалинская область', 'SAK', 1),
(62, 176, 'Республика Алтай', 'AL', 1),
(63, 176, 'Чеченская Республика', 'CE', 1),
(64, 176, 'Иркутская область', 'IRK', 1),
(65, 176, 'Ивановская область', 'IVA', 1),
(66, 176, 'Удмуртская Республика', 'UD', 1),
(67, 176, 'Калининградская область', 'KGD', 1),
(68, 176, 'Калужская область', 'KLU', 1),
(69, 176, 'Республика Татарстан', 'TA', 1),
(70, 176, 'Кемеровская область', 'KEM', 1),
(71, 176, 'Хабаровский край', 'KHA', 1),
(72, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(73, 176, 'Костромская область', 'KOS', 1),
(74, 176, 'Краснодарский край', 'KDA', 1),
(75, 176, 'Красноярский край', 'KYA', 1),
(76, 176, 'Курганская область', 'KGN', 1),
(77, 176, 'Курская область', 'KRS', 1),
(78, 176, 'Республика Тыва', 'TY', 1),
(79, 176, 'Липецкая область', 'LIP', 1),
(80, 176, 'Магаданская область', 'MAG', 1),
(81, 176, 'Республика Дагестан', 'DA', 1),
(82, 176, 'Республика Адыгея', 'AD', 1),
(83, 176, 'Москва', 'MOW', 1),
(84, 176, 'Мурманская область', 'MUR', 1),
(85, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(86, 176, 'Ненецкий АО', 'NEN', 1),
(87, 176, 'Республика Ингушетия', 'IN', 1),
(88, 176, 'Нижегородская область', 'NIZ', 1),
(89, 176, 'Новгородская область', 'NGR', 1),
(90, 176, 'Новосибирская область', 'NVS', 1),
(91, 176, 'Омская область', 'OMS', 1),
(92, 176, 'Орловская область', 'ORL', 1),
(93, 176, 'Оренбургская область', 'ORE', 1),
(94, 176, 'Пензенская область', 'PNZ', 1),
(95, 176, 'Пермский край', 'PER', 1),
(96, 176, 'Камчатский край', 'KAM', 1),
(97, 176, 'Республика Карелия', 'KR', 1),
(98, 176, 'Псковская область', 'PSK', 1),
(99, 176, 'Ростовская область', 'ROS', 1),
(100, 176, 'Рязанская область', 'RYA', 1),
(101, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(102, 176, 'Самарская область', 'SAM', 1),
(103, 176, 'Республика Мордовия', 'MO', 1),
(104, 176, 'Саратовская область', 'SAR', 1),
(105, 176, 'Смоленская область', 'SMO', 1),
(106, 176, 'Санкт-Петербург', 'SPE', 1),
(107, 176, 'Ставропольский край', 'STA', 1),
(108, 176, 'Республика Коми', 'KO', 1),
(109, 176, 'Тамбовская область', 'TAM', 1),
(110, 176, 'Томская область', 'TOM', 1),
(111, 176, 'Тульская область', 'TUL', 1),
(112, 176, 'Тверская область', 'TVE', 1),
(113, 176, 'Тюменская область', 'TYU', 1),
(114, 176, 'Республика Башкортостан', 'BA', 1),
(115, 176, 'Ульяновская область', 'ULY', 1),
(116, 176, 'Республика Бурятия', 'BU', 1),
(117, 176, 'Республика Северная Осетия', 'SE', 1),
(118, 176, 'Владимирская область', 'VLA', 1),
(119, 176, 'Приморский край', 'PRI', 1),
(120, 176, 'Волгоградская область', 'VGG', 1),
(121, 176, 'Вологодская область', 'VLG', 1),
(122, 176, 'Воронежская область', 'VOR', 1),
(123, 176, 'Кировская область', 'KIR', 1),
(124, 176, 'Республика Саха', 'SA', 1),
(125, 176, 'Ярославская область', 'YAR', 1),
(126, 176, 'Свердловская область', 'SVE', 1),
(127, 176, 'Республика Марий Эл', 'ME', 1),
(128, 176, 'Республика Крым', 'CR', 1),
(129, 220, 'Черкассы', 'CK', 1),
(130, 220, 'Чернигов', 'CH', 1),
(131, 220, 'Черновцы', 'CV', 1),
(132, 220, 'Днепропетровск', 'DN', 1),
(133, 220, 'Донецк', 'DO', 1),
(134, 220, 'Ивано-Франковск', 'IV', 1),
(135, 220, 'Харьков', 'KH', 1),
(136, 220, 'Хмельницкий', 'KM', 1),
(137, 220, 'Кировоград', 'KR', 1),
(138, 220, 'Киевская область', 'KV', 1),
(139, 220, 'Киев', 'KY', 1),
(140, 220, 'Луганск', 'LU', 1),
(141, 220, 'Львов', 'LV', 1),
(142, 220, 'Николаев', 'MY', 1),
(143, 220, 'Одесса', 'OD', 1),
(144, 220, 'Полтава', 'PO', 1),
(145, 220, 'Ровно', 'RI', 1),
(146, 176, 'Севастополь', 'SEV', 1),
(147, 220, 'Сумы', 'SU', 1),
(148, 220, 'Тернополь', 'TE', 1),
(149, 220, 'Винница', 'VI', 1),
(150, 220, 'Луцк', 'VO', 1),
(151, 220, 'Ужгород', 'ZK', 1),
(152, 220, 'Запорожье', 'ZA', 1),
(153, 220, 'Житомир', 'ZH', 1),
(154, 220, 'Херсон', 'KE', 1),
(155, 226, 'Andijon', 'AN', 1),
(156, 226, 'Buxoro', 'BU', 1),
(157, 226, 'Farg\'ona', 'FA', 1),
(158, 226, 'Jizzax', 'JI', 1),
(159, 226, 'Namangan', 'NG', 1),
(160, 226, 'Navoiy', 'NW', 1),
(161, 226, 'Qashqadaryo', 'QA', 1),
(162, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(163, 226, 'Samarqand', 'SA', 1),
(164, 226, 'Sirdaryo', 'SI', 1),
(165, 226, 'Surxondaryo', 'SU', 1),
(166, 226, 'Toshkent City', 'TK', 1),
(167, 226, 'Toshkent Region', 'TO', 1),
(168, 226, 'Xorazm', 'XO', 1),
(169, 176, 'Байконур - город республ-го значения', 'BY', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int NOT NULL,
  `country_id` int NOT NULL,
  `zone_id` int NOT NULL DEFAULT '0',
  `geo_zone_id` int NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 176, 0, 3, '2020-09-09 11:48:13', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_fraud_ip`
--
ALTER TABLE `oc_fraud_ip`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Индексы таблицы `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Индексы таблицы `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2402;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=557;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=904;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=854;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
