-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.0
-- Время создания: Апр 07 2025 г., 22:22
-- Версия сервера: 8.0.35
-- Версия PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ea`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2024-09-24 19:47:25', '2024-09-24 16:47:25', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:9:{i:1743572845;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743572849;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1743574645;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743576445;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743612449;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1743612456;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743612461;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1744130990;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'auto'),
(2, 'siteurl', 'https://ea.local', 'on'),
(3, 'home', 'https://ea.local', 'on'),
(4, 'blogname', 'Event Arenda Decor', 'on'),
(5, 'blogdescription', 'Аренда праздничного декора в Санкт-Петербурге', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'aleksandra.ovsia@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', 'password', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'd.m.Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'd.m.Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:133:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"decor/?$\";s:25:\"index.php?post_type=decor\";s:38:\"decor/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=decor&feed=$matches[1]\";s:33:\"decor/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=decor&feed=$matches[1]\";s:25:\"decor/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=decor&paged=$matches[1]\";s:12:\"portfolio/?$\";s:29:\"index.php?post_type=portfolio\";s:42:\"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:37:\"portfolio/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=portfolio&feed=$matches[1]\";s:29:\"portfolio/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=portfolio&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:31:\"decor/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"decor/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"decor/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"decor/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"decor/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"decor/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"decor/(.+?)/embed/?$\";s:38:\"index.php?decor=$matches[1]&embed=true\";s:24:\"decor/(.+?)/trackback/?$\";s:32:\"index.php?decor=$matches[1]&tb=1\";s:44:\"decor/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?decor=$matches[1]&feed=$matches[2]\";s:39:\"decor/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?decor=$matches[1]&feed=$matches[2]\";s:32:\"decor/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?decor=$matches[1]&paged=$matches[2]\";s:39:\"decor/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?decor=$matches[1]&cpage=$matches[2]\";s:28:\"decor/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?decor=$matches[1]&page=$matches[2]\";s:35:\"portfolio/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"portfolio/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"portfolio/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"portfolio/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"portfolio/(.+?)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:28:\"portfolio/(.+?)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:48:\"portfolio/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:43:\"portfolio/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?portfolio=$matches[1]&feed=$matches[2]\";s:36:\"portfolio/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:43:\"portfolio/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/(.+?)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:46:\"types/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?types=$matches[1]&feed=$matches[2]\";s:41:\"types/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?types=$matches[1]&feed=$matches[2]\";s:22:\"types/([^/]+)/embed/?$\";s:38:\"index.php?types=$matches[1]&embed=true\";s:34:\"types/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?types=$matches[1]&paged=$matches[2]\";s:16:\"types/([^/]+)/?$\";s:27:\"index.php?types=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:4:{i:0;s:38:\"carbon-fields/carbon-fields-plugin.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:22:\"cyr2lat/cyr-to-lat.php\";i:3;s:21:\"safe-svg/safe-svg.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '3', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'untheme', 'on'),
(42, 'stylesheet', 'untheme', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '57155', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '32', 'on'),
(83, 'page_on_front', '13', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1742748445', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '57155', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'auto'),
(103, 'fresh_site', '0', 'auto'),
(104, 'WPLANG', 'ru_RU', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"page-sidebar\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.6.1\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'auto'),
(127, 'nonce_key', 'ow`T1*u>t0P@mTNKWf^x:jW =L[>r41)/w{(QCO$Q&wU-wRi2QzcG0[x,t%i,/VL', 'off'),
(128, 'nonce_salt', 'XheY+uDbZwg:kVk R~%B<fN7q7Q7$wujf2y6ZaSs6tm$2jsJ*Jjm%D&ZRE``Y7oB', 'off'),
(131, 'secure_auth_key', 'g8%C^0oumRCk6t=1y^%sK=7j^JEn9W~7t`7In6$4j,M-HbbLv^V!J+|OInk(lXn#', 'off'),
(132, 'secure_auth_salt', '5n;F$hJYrH~#q! qd28QyW_br7SH>}P(+^Xy#68eTl<EJRz>D)o(CK}44<ol7T|$', 'off'),
(133, 'logged_in_key', ' :~pk(.wd(Pznox=dkL^`P+STOXveCp|dAVtn$8=rXKGE8JOjL }>|m)<bg-(Trn', 'off'),
(134, 'logged_in_salt', 'n&[&SML}cNQX}T0w}1ziN? >4[i-^ #Toi=4<``=c`DSI>.)ZGuH||#OpWL(KDvi', 'off'),
(147, 'can_compress_scripts', '1', 'on'),
(158, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1727196473;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(159, 'current_theme', 'untheme', 'auto'),
(160, 'theme_mods_untheme', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:3;s:8:\"services\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:50;s:11:\"header_logo\";i:85;s:11:\"footer_logo\";i:90;}', 'on'),
(161, 'theme_switched', '', 'auto'),
(166, 'finished_updating_comment_type', '1', 'auto'),
(167, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(168, 'recently_activated', 'a:0:{}', 'auto'),
(187, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.9.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1727196644;s:7:\"version\";s:7:\"5.5.6.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(196, 'auth_key', 'Y6(VjMR-o$ z)r};4IC*UDM=w=|*JcU~$zJd;/M6[9VysyOpfrLC5uMs?4y4n%%]', 'off'),
(197, 'auth_salt', 'sIiFQEbCFW4si&94!nu;g!rm$S`[cc0TFRv8KIwYcT,xS?Raum&=0+ghNq|&tyaB', 'off'),
(198, 'site_logo', '50', 'auto'),
(214, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"aleksandra.ovsia@gmail.com\";s:7:\"version\";s:5:\"6.6.2\";s:9:\"timestamp\";i:1727200131;}', 'off'),
(215, 'new_admin_email', 'aleksandra.ovsia@gmail.com', 'auto'),
(260, '_crb_cf_rent', '', 'off'),
(261, '_crb_cf_adv', '', 'off'),
(297, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'on'),
(423, '_crb_header_map', '', 'off'),
(424, '_crb_header_map_icon', '', 'off'),
(425, '_crb_link_map', '', 'off'),
(426, '_crb_header_shed', '', 'off'),
(427, '_crb_header_shed_icon', '', 'off'),
(428, '_messengers|||0|_empty', '', 'off'),
(471, 'recovery_mode_email_last_sent', '1728658240', 'auto'),
(592, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(636, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'auto'),
(859, '_crb_footer_links|||0|value', '_', 'off'),
(860, '_crb_footer_links|||1|value', '_', 'off'),
(861, '_crb_footer_links|crb_link_name|0|0|value', 'Youtube', 'off'),
(862, '_crb_footer_links|crb_footer_link_img|0|0|value', '63', 'off'),
(863, '_crb_footer_links|crb_footer_link_link|0|0|value', '/', 'off'),
(864, '_crb_footer_links|crb_link_name|1|0|value', 'Telegram', 'off'),
(865, '_crb_footer_links|crb_footer_link_img|1|0|value', '', 'off'),
(866, '_crb_footer_links|crb_footer_link_link|1|0|value', '', 'off'),
(921, '_crb_cf_head', 'Есть вопросы?', 'off'),
(922, '_crb_cf_description', 'Заполните эту форму\r\nи мы перезвоним вам в ближайшее время!', 'off'),
(923, '_crb_cf', '[contact-form-7 id=\"10\" title=\"Контактная форма 1\"]', 'off'),
(1541, '_crb_politics_file', '', 'off'),
(1542, '_crb_advertising_file', '', 'off'),
(1543, '_crb_rent_file1', '', 'off'),
(1544, '_crb_rent_file2', '', 'off'),
(1545, '_crb_footer_decor', '49', 'off'),
(1707, 'category_children', 'a:0:{}', 'auto'),
(1718, 'decor-type_children', 'a:0:{}', 'auto'),
(1756, 'decors_children', 'a:0:{}', 'auto'),
(1759, 'decor-types_children', 'a:0:{}', 'auto'),
(1829, 'types_children', 'a:0:{}', 'auto'),
(2122, '_crb_show_on_footer', '', 'off'),
(2123, '_crb_header_link', 'www.ya.ru', 'off'),
(2124, '_crb_header_link_text', 'Позвонить', 'off'),
(2125, '_crb_address', 'Россия, г. Санкт-Петербург, м. Новочеркасская, ул. Рижская д. 5, корп. 1, оф. 407', 'off'),
(2126, '_crb_address_icon', '', 'off'),
(2127, '_crb_phone', '+7 (921) 948-05-78', 'off'),
(2128, '_crb_phone_link', 'tel:+79219480578', 'off'),
(2129, '_crb_phone_link_img', '79', 'off'),
(2130, '_crb_messengers_contacts|||0|value', '_', 'off'),
(2131, '_crb_messengers_contacts|||1|value', '_', 'off'),
(2132, '_crb_messengers_contacts|crb_contact_name|0|0|value', 'Telegram', 'off'),
(2133, '_crb_messengers_contacts|crb_contact_image|0|0|value', '29', 'off'),
(2134, '_crb_messengers_contacts|crb_contact_link|0|0|value', '/', 'off'),
(2135, '_crb_messengers_contacts|crb_contact_background|0|0|value', '#0088CC', 'off'),
(2136, '_crb_messengers_contacts|crb_contact_name|1|0|value', 'WhatsApp', 'off'),
(2137, '_crb_messengers_contacts|crb_contact_image|1|0|value', '30', 'off'),
(2138, '_crb_messengers_contacts|crb_contact_link|1|0|value', '/', 'off'),
(2139, '_crb_messengers_contacts|crb_contact_background|1|0|value', '#25D366', 'off'),
(2140, '_crb_block_contacts_links|||0|value', '_', 'off'),
(2141, '_crb_block_contacts_links|crb_link_name|0|0|value', 'Youtube', 'off'),
(2142, '_crb_block_contacts_links|crb_block_contacts_link_img|0|0|value', '63', 'off'),
(2143, '_crb_block_contacts_links|crb_block_contacts_link_link|0|0|value', '', 'off'),
(2144, '_crb_block_contacts_links|crb_block_contact_background|0|0|value', '', 'off'),
(2145, '_crb_map_code', '<iframe src=\"https://yandex.ru/map-widget/v1/?um=constructor%3A0a6b29bf55e4cc4d5db443b22dca433b2ccac3f8f4fa06505eeb25b4f9504ee1&amp;source=constructor\" width=\"100%\" height=\"100%\" frameborder=\"0\"></iframe>', 'off'),
(2146, '_crb_order_button_text', '', 'off'),
(2147, '_crb_order_shortcode', '[contact-form-7 id=\"78\" title=\"Order form\"]', 'off'),
(2317, '_site_transient_timeout_theme_roots', '1743572260', 'off'),
(2318, '_site_transient_theme_roots', 'a:4:{s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:7:\"untheme\";s:7:\"/themes\";}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2321, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1743570463;s:15:\"version_checked\";s:5:\"6.6.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2025-03-25 14:54:41\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.6.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'off'),
(2322, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743570464;s:7:\"checked\";a:4:{s:16:\"twentytwentyfour\";s:3:\"1.2\";s:17:\"twentytwentythree\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.8\";s:7:\"untheme\";s:5:\"1.0.0\";}s:8:\"response\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.9.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(2323, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743570465;s:8:\"response\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.0.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"6.3.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.6.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2834364\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:5:\"7.2.0\";s:16:\"requires_plugins\";a:0:{}}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2779013\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2024-11-18 21:27:09\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/5.3.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.9.8\";s:7:\"updated\";s:19:\"2024-03-12 08:39:31\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.9.8/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"5.3.3\";s:38:\"carbon-fields/carbon-fields-plugin.php\";s:5:\"3.6.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.9.8\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"5.3.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:21:\"safe-svg/safe-svg.php\";s:5:\"2.0.0\";}}', 'off'),
(2324, '_site_transient_timeout_php_check_b177535be5f1790a48742622cfd50ecb', '1744175266', 'off'),
(2325, '_site_transient_php_check_b177535be5f1790a48742622cfd50ecb', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(2326, '_site_transient_timeout_wp_theme_files_patterns-40e57081d36a07eb3284ff660262a990', '1743572271', 'off'),
(2327, '_site_transient_wp_theme_files_patterns-40e57081d36a07eb3284ff660262a990', 'a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(11, 10, '_form', '[text* text-581 class:cf-input placeholder \"Ваше имя\"]\n[email* email-429 class:cf-input placeholder \"Адрес электронной почты\"]\n[tel* tel-278 class:cf-input placeholder \"Номер телефона\"]\n\n[submit class:btn-link \"Отправить\"]\n<p class=\"acceptance\">Нажимая кнопку “Отправить” вы соглашаетесь\nс <a href=\"/\">политикой конфиденциальности</a></p>'),
(12, 10, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <wordpress@ea.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:187:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(13, 10, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <wordpress@ea.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(14, 10, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(15, 10, '_additional_settings', ''),
(16, 10, '_locale', 'ru_RU'),
(17, 11, '_wp_attached_file', '2024/09/logo.svg'),
(18, 11, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:163;s:6:\"height\";i:58;s:4:\"file\";s:16:\"2024/09/logo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(21, 13, '_edit_lock', '1731927948:1'),
(22, 13, '_edit_last', '1'),
(23, 15, '_wp_attached_file', '2024/09/table-serving-decoration-with-greenery-white-candles-grey-table-1.jpg'),
(24, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2450;s:6:\"height\";i:1633;s:4:\"file\";s:77:\"2024/09/table-serving-decoration-with-greenery-white-candles-grey-table-1.jpg\";s:8:\"filesize\";i:242126;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:77:\"table-serving-decoration-with-greenery-white-candles-grey-table-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14311;}s:5:\"large\";a:5:{s:4:\"file\";s:78:\"table-serving-decoration-with-greenery-white-candles-grey-table-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:95624;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:77:\"table-serving-decoration-with-greenery-white-candles-grey-table-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6383;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:77:\"table-serving-decoration-with-greenery-white-candles-grey-table-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61194;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:79:\"table-serving-decoration-with-greenery-white-candles-grey-table-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:175325;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:79:\"table-serving-decoration-with-greenery-white-candles-grey-table-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:268437;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 16, '_wp_attached_file', '2024/09/decorated-banquet-hall-with-flowers-1.jpg'),
(26, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:768;s:6:\"height\";i:512;s:4:\"file\";s:49:\"2024/09/decorated-banquet-hall-with-flowers-1.jpg\";s:8:\"filesize\";i:67056;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:49:\"decorated-banquet-hall-with-flowers-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16478;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"decorated-banquet-hall-with-flowers-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7343;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 17, '_wp_attached_file', '2024/09/decorated-banquet-hall-with-flowers-scaled.jpg'),
(42, 17, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:54:\"2024/09/decorated-banquet-hall-with-flowers-scaled.jpg\";s:8:\"filesize\";i:976166;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"decorated-banquet-hall-with-flowers-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57578;}s:5:\"large\";a:5:{s:4:\"file\";s:48:\"decorated-banquet-hall-with-flowers-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:230491;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"decorated-banquet-hall-with-flowers-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44142;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:47:\"decorated-banquet-hall-with-flowers-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:153984;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:49:\"decorated-banquet-hall-with-flowers-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:419466;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:49:\"decorated-banquet-hall-with-flowers-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:667101;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark IV\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1536399966\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"24\";s:3:\"iso\";s:4:\"3200\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:64:\"Decorated banquet hall with flowers, rectangle table, chiavari c\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:49:{i:0;s:8:\"Chiavari\";i:1;s:11:\"accessories\";i:2;s:8:\"alluring\";i:3;s:6:\"amused\";i:4;s:11:\"anniversary\";i:5;s:4:\"arch\";i:6;s:7:\"archway\";i:7;s:7:\"banquet\";i:8;s:8:\"birthday\";i:9;s:7:\"bouquet\";i:10;s:11:\"celebration\";i:11;s:6:\"chairs\";i:12;s:7:\"classic\";i:13;s:9:\"decorated\";i:14;s:6:\"detail\";i:15;s:11:\"dining room\";i:16;s:9:\"dreamlike\";i:17;s:8:\"dressing\";i:18;s:6:\"eatery\";i:19;s:7:\"elegant\";i:20;s:9:\"enjoyable\";i:21;s:7:\"evening\";i:22;s:5:\"event\";i:23;s:8:\"fabulous\";i:24;s:7:\"furnish\";i:25;s:4:\"gala\";i:26;s:7:\"gallery\";i:27;s:4:\"hall\";i:28;s:5:\"hotel\";i:29;s:11:\"illuminated\";i:30;s:6:\"indoor\";i:31;s:3:\"inn\";i:32;s:5:\"lobby\";i:33;s:6:\"palace\";i:34;s:4:\"pink\";i:35;s:5:\"place\";i:36;s:4:\"prom\";i:37;s:9:\"residence\";i:38;s:10:\"restaurant\";i:39;s:8:\"romantic\";i:40;s:7:\"serving\";i:41;s:7:\"shining\";i:42;s:7:\"sitting\";i:43;s:5:\"table\";i:44;s:11:\"uninhabited\";i:45;s:6:\"violet\";i:46;s:3:\"wed\";i:47;s:7:\"wedding\";i:48;s:9:\"wineglass\";}}s:14:\"original_image\";s:39:\"decorated-banquet-hall-with-flowers.jpg\";}'),
(193, 26, '_wp_attached_file', '2024/09/party-decorations-white-cozy-room-1.jpg'),
(194, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2450;s:6:\"height\";i:1373;s:4:\"file\";s:47:\"2024/09/party-decorations-white-cozy-room-1.jpg\";s:8:\"filesize\";i:169969;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:47:\"party-decorations-white-cozy-room-1-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10529;}s:5:\"large\";a:5:{s:4:\"file\";s:48:\"party-decorations-white-cozy-room-1-1024x574.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:574;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65844;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:47:\"party-decorations-white-cozy-room-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5281;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:47:\"party-decorations-white-cozy-room-1-768x430.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42940;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:48:\"party-decorations-white-cozy-room-1-1536x861.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:861;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:120489;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:49:\"party-decorations-white-cozy-room-1-2048x1148.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1148;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:184283;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(329, 13, '_crb_contats_background', '15'),
(344, 14, '_crb_contats_background', '15'),
(659, 27, '_wp_attached_file', '2024/09/adi-goldstein-hli3r6lkibo-unsplash-scaled.jpg'),
(660, 27, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1708;s:4:\"file\";s:53:\"2024/09/adi-goldstein-hli3r6lkibo-unsplash-scaled.jpg\";s:8:\"filesize\";i:247483;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:46:\"adi-goldstein-hli3r6lkibo-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14604;}s:5:\"large\";a:5:{s:4:\"file\";s:47:\"adi-goldstein-hli3r6lkibo-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66387;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:46:\"adi-goldstein-hli3r6lkibo-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8773;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:46:\"adi-goldstein-hli3r6lkibo-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44836;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:48:\"adi-goldstein-hli3r6lkibo-unsplash-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116123;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:48:\"adi-goldstein-hli3r6lkibo-unsplash-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:176209;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:38:\"adi-goldstein-hli3r6lkibo-unsplash.jpg\";}'),
(741, 13, '_crb_contacts_text2', 'asasasas'),
(1333, 28, '_wp_attached_file', '2024/09/vk.svg'),
(1334, 28, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:23;s:6:\"height\";i:14;s:4:\"file\";s:14:\"2024/09/vk.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"vk.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1335, 29, '_wp_attached_file', '2024/09/tg.svg'),
(1336, 29, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:19;s:6:\"height\";i:15;s:4:\"file\";s:14:\"2024/09/tg.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"tg.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1337, 30, '_wp_attached_file', '2024/09/wa.svg'),
(1338, 30, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:24;s:6:\"height\";i:24;s:4:\"file\";s:14:\"2024/09/wa.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"wa.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1339, 1, '_edit_last', '1'),
(1342, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(1343, 1, '_edit_lock', '1727530340:1'),
(1344, 32, '_edit_lock', '1727529630:1'),
(1345, 34, '_edit_lock', '1727531241:1'),
(1350, 1, '_thumbnail_id', '16'),
(1353, 36, '_edit_lock', '1727531245:1'),
(1356, 36, '_thumbnail_id', '26'),
(1359, 34, '_thumbnail_id', '27'),
(1360, 34, '_edit_last', '1'),
(1363, 36, '_edit_last', '1'),
(1364, 36, '_pingme', '1'),
(1365, 36, '_encloseme', '1'),
(1366, 38, '_menu_item_type', 'custom'),
(1367, 38, '_menu_item_menu_item_parent', '0'),
(1368, 38, '_menu_item_object_id', '38'),
(1369, 38, '_menu_item_object', 'custom'),
(1370, 38, '_menu_item_target', ''),
(1371, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1372, 38, '_menu_item_xfn', ''),
(1373, 38, '_menu_item_url', '/'),
(1384, 40, '_menu_item_type', 'custom'),
(1385, 40, '_menu_item_menu_item_parent', '0'),
(1386, 40, '_menu_item_object_id', '40'),
(1387, 40, '_menu_item_object', 'custom'),
(1388, 40, '_menu_item_target', ''),
(1389, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1390, 40, '_menu_item_xfn', ''),
(1391, 40, '_menu_item_url', '/'),
(1393, 41, '_menu_item_type', 'custom'),
(1394, 41, '_menu_item_menu_item_parent', '0'),
(1395, 41, '_menu_item_object_id', '41'),
(1396, 41, '_menu_item_object', 'custom'),
(1397, 41, '_menu_item_target', ''),
(1398, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1399, 41, '_menu_item_xfn', ''),
(1400, 41, '_menu_item_url', '/'),
(1402, 42, '_menu_item_type', 'custom'),
(1403, 42, '_menu_item_menu_item_parent', '0'),
(1404, 42, '_menu_item_object_id', '42'),
(1405, 42, '_menu_item_object', 'custom'),
(1406, 42, '_menu_item_target', ''),
(1407, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1408, 42, '_menu_item_xfn', ''),
(1409, 42, '_menu_item_url', '/'),
(1411, 43, '_menu_item_type', 'custom'),
(1412, 43, '_menu_item_menu_item_parent', '0'),
(1413, 43, '_menu_item_object_id', '43'),
(1414, 43, '_menu_item_object', 'custom'),
(1415, 43, '_menu_item_target', ''),
(1416, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1417, 43, '_menu_item_xfn', ''),
(1418, 43, '_menu_item_url', '/'),
(1420, 44, '_menu_item_type', 'custom'),
(1421, 44, '_menu_item_menu_item_parent', '0'),
(1422, 44, '_menu_item_object_id', '44'),
(1423, 44, '_menu_item_object', 'custom'),
(1424, 44, '_menu_item_target', ''),
(1425, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1426, 44, '_menu_item_xfn', ''),
(1427, 44, '_menu_item_url', '/'),
(1429, 45, '_menu_item_type', 'custom'),
(1430, 45, '_menu_item_menu_item_parent', '0'),
(1431, 45, '_menu_item_object_id', '45'),
(1432, 45, '_menu_item_object', 'custom'),
(1433, 45, '_menu_item_target', ''),
(1434, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1435, 45, '_menu_item_xfn', ''),
(1436, 45, '_menu_item_url', '/'),
(1438, 46, '_menu_item_type', 'custom'),
(1439, 46, '_menu_item_menu_item_parent', '0'),
(1440, 46, '_menu_item_object_id', '46'),
(1441, 46, '_menu_item_object', 'custom'),
(1442, 46, '_menu_item_target', ''),
(1443, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1444, 46, '_menu_item_xfn', ''),
(1445, 46, '_menu_item_url', '/'),
(1447, 47, '_menu_item_type', 'custom'),
(1448, 47, '_menu_item_menu_item_parent', '0'),
(1449, 47, '_menu_item_object_id', '47'),
(1450, 47, '_menu_item_object', 'custom'),
(1451, 47, '_menu_item_target', ''),
(1452, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1453, 47, '_menu_item_xfn', ''),
(1454, 47, '_menu_item_url', '/'),
(1456, 48, '_menu_item_type', 'custom'),
(1457, 48, '_menu_item_menu_item_parent', '0'),
(1458, 48, '_menu_item_object_id', '48'),
(1459, 48, '_menu_item_object', 'custom'),
(1460, 48, '_menu_item_target', ''),
(1461, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1462, 48, '_menu_item_xfn', ''),
(1463, 48, '_menu_item_url', '/'),
(1465, 49, '_wp_attached_file', '2024/09/decor.png'),
(1466, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:303;s:4:\"file\";s:17:\"2024/09/decor.png\";s:8:\"filesize\";i:190645;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"decor-300x182.png\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:62042;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"decor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:29221;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1467, 50, '_wp_attached_file', '2024/09/ea-logo.svg'),
(1468, 50, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:213;s:6:\"height\";i:75;s:4:\"file\";s:19:\"2024/09/ea-logo.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"ea-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ea-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ea-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"ea-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"ea-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"ea-logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1474, 54, '_wp_attached_file', '2024/09/ea-logo-white.svg'),
(1475, 54, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:186;s:6:\"height\";i:66;s:4:\"file\";s:25:\"2024/09/ea-logo-white.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"ea-logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"ea-logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"ea-logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"ea-logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"ea-logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"ea-logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1479, 56, '_wp_attached_file', '2024/09/ea-logo-white-1.svg'),
(1480, 56, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:186;s:6:\"height\";i:66;s:4:\"file\";s:27:\"2024/09/ea-logo-white-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:19:\"ea-logo-white-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"ea-logo-white-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"ea-logo-white-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"ea-logo-white-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:19:\"ea-logo-white-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:19:\"ea-logo-white-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1483, 58, '_wp_attached_file', '2024/09/ea-logo-v.svg'),
(1484, 58, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:192;s:6:\"height\";i:211;s:4:\"file\";s:21:\"2024/09/ea-logo-v.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:13:\"ea-logo-v.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ea-logo-v.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ea-logo-v.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:13:\"ea-logo-v.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"ea-logo-v.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:13:\"ea-logo-v.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1488, 60, '_wp_attached_file', '2024/09/logo-1.svg'),
(1489, 60, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:213;s:6:\"height\";i:75;s:4:\"file\";s:18:\"2024/09/logo-1.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"logo-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1493, 63, '_wp_attached_file', '2024/10/yt.svg'),
(1494, 63, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:37;s:6:\"height\";i:26;s:4:\"file\";s:14:\"2024/10/yt.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:6:\"yt.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"yt.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"yt.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:6:\"yt.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"yt.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:6:\"yt.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1495, 64, '_wp_attached_file', '2024/10/logo-w.svg'),
(1496, 64, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:213;s:6:\"height\";i:75;s:4:\"file\";s:18:\"2024/10/logo-w.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"logo-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"logo-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"logo-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"logo-w.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1500, 67, '_edit_lock', '1727976902:1'),
(1501, 67, '_wp_page_template', 'page-test.php'),
(1527, 69, '_edit_lock', '1728658780:1'),
(1528, 70, '_edit_lock', '1728663525:1'),
(1529, 71, '_edit_lock', '1728658744:1'),
(1530, 72, '_edit_lock', '1728677442:1'),
(1531, 73, '_edit_lock', '1728658785:1'),
(1532, 74, '_edit_lock', '1728676587:1'),
(1533, 74, '_edit_last', '1'),
(1534, 75, '_edit_lock', '1728658759:1'),
(1535, 76, '_edit_lock', '1728658749:1'),
(1536, 77, '_edit_lock', '1728658765:1'),
(1537, 71, '_edit_last', '1'),
(1538, 69, '_edit_last', '1'),
(1539, 72, '_edit_last', '1'),
(1565, 78, '_form', '[text* text-648 class:cf-input placeholder \"Ваше имя\"]\n[tel* tel-498 class:cf-input placeholder \"Номер телефона\"]\n[email* email-931 class:cf-input placeholder \"e-mail\"]\n\n[submit class:btn-link \"Заказать\"]'),
(1566, 78, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <wordpress@ea.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:187:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1567, 78, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:34:\"[_site_title] <wordpress@ea.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1568, 78, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:39:\"Файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:45:\"Формат даты некорректен.\";s:14:\"date_too_early\";s:74:\"Введённая дата слишком далеко в прошлом.\";s:13:\"date_too_late\";s:74:\"Введённая дата слишком далеко в будущем.\";s:14:\"invalid_number\";s:47:\"Формат числа некорректен.\";s:16:\"number_too_small\";s:68:\"Число меньше минимально допустимого.\";s:16:\"number_too_large\";s:70:\"Число больше максимально допустимого.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:62:\"Неверно введён электронный адрес.\";s:11:\"invalid_url\";s:53:\"Введён некорректный URL адрес.\";s:11:\"invalid_tel\";s:70:\"Введён некорректный телефонный номер.\";}'),
(1569, 78, '_additional_settings', ''),
(1570, 78, '_locale', 'ru_RU'),
(1574, 72, '_crb_decor_items|||0|value', '_'),
(1575, 72, '_crb_decor_items|||1|value', '_'),
(1576, 72, '_crb_decor_items|||2|value', '_'),
(1577, 72, '_crb_decor_items|crb_decor_item_img|0|0|value', '27'),
(1578, 72, '_crb_decor_items|crb_decor_item_head|0|0|value', 'Декор на 8 марта 1'),
(1579, 72, '_crb_decor_items|crb_decor_item_desc|0|0|value', '<p>Описание ....</p>'),
(1580, 72, '_crb_decor_items|crb_decor_item_img|1|0|value', '15'),
(1581, 72, '_crb_decor_items|crb_decor_item_head|1|0|value', 'Декор на 8 марта 2'),
(1582, 72, '_crb_decor_items|crb_decor_item_desc|1|0|value', '<p>вывывывывыв</p>'),
(1583, 72, '_crb_decor_items|crb_decor_item_img|2|0|value', '26'),
(1584, 72, '_crb_decor_items|crb_decor_item_head|2|0|value', 'Декор на 8 марта 3'),
(1585, 72, '_crb_decor_items|crb_decor_item_desc|2|0|value', '<p>aaasasasas</p>'),
(1586, 79, '_wp_attached_file', '2024/10/phone2.svg'),
(1587, 79, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:30;s:6:\"height\";i:30;s:4:\"file\";s:18:\"2024/10/phone2.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:10:\"phone2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";i:700;s:6:\"height\";i:600;s:4:\"crop\";i:1;s:4:\"file\";s:10:\"phone2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"phone2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:10:\"phone2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"phone2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:10:\"phone2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"small\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:10:\"phone2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"thumb\";a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"crop\";i:1;s:4:\"file\";s:10:\"phone2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1588, 80, '_edit_lock', '1728676125:1'),
(1589, 80, '_thumbnail_id', '26'),
(1590, 81, '_edit_lock', '1728320670:1'),
(1591, 82, '_edit_lock', '1728676082:1'),
(1592, 82, '_thumbnail_id', '26'),
(1593, 83, '_edit_lock', '1728320695:1'),
(1633, 85, '_wp_attached_file', '2024/10/logo-ea.svg'),
(1634, 85, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:213;s:6:\"height\";i:75;s:4:\"file\";s:19:\"2024/10/logo-ea.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"logo-ea.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";i:700;s:6:\"height\";i:600;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"logo-ea.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"logo-ea.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"logo-ea.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"logo-ea.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"logo-ea.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"small\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"logo-ea.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"thumb\";a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"logo-ea.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1638, 80, '_edit_last', '1'),
(1707, 82, '_edit_last', '1'),
(1708, 82, '_crb_portfolio_desc', ''),
(1709, 82, '_crb_portfolio_pics|||0|value', '_'),
(1710, 82, '_crb_portfolio_pics|||1|value', '_'),
(1711, 82, '_crb_portfolio_pics|crb_portfolio_image|0|0|value', '27'),
(1712, 82, '_crb_portfolio_pics|crb_portfolio_image_desc|0|0|value', ''),
(1713, 82, '_crb_portfolio_pics|crb_portfolio_image_alt|0|0|value', ''),
(1714, 82, '_crb_portfolio_pics|crb_portfolio_image|1|0|value', '17'),
(1715, 82, '_crb_portfolio_pics|crb_portfolio_image_desc|1|0|value', ''),
(1716, 82, '_crb_portfolio_pics|crb_portfolio_image_alt|1|0|value', ''),
(1734, 80, '_crb_portfolio_desc', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example</p>'),
(1735, 80, '_crb_portfolio_pics|||0|value', '_'),
(1736, 80, '_crb_portfolio_pics|||1|value', '_'),
(1737, 80, '_crb_portfolio_pics|||2|value', '_'),
(1738, 80, '_crb_portfolio_pics|||3|value', '_'),
(1739, 80, '_crb_portfolio_pics|crb_portfolio_image|0|0|value', '26'),
(1740, 80, '_crb_portfolio_pics|crb_portfolio_image_desc|0|0|value', '<p>описание к слайдйу...</p>'),
(1741, 80, '_crb_portfolio_pics|crb_portfolio_image_alt|0|0|value', 'alt к картинке'),
(1742, 80, '_crb_portfolio_pics|crb_portfolio_image|1|0|value', '17'),
(1743, 80, '_crb_portfolio_pics|crb_portfolio_image_desc|1|0|value', ''),
(1744, 80, '_crb_portfolio_pics|crb_portfolio_image_alt|1|0|value', ''),
(1745, 80, '_crb_portfolio_pics|crb_portfolio_image|2|0|value', '15'),
(1746, 80, '_crb_portfolio_pics|crb_portfolio_image_desc|2|0|value', ''),
(1747, 80, '_crb_portfolio_pics|crb_portfolio_image_alt|2|0|value', ''),
(1748, 80, '_crb_portfolio_pics|crb_portfolio_image|3|0|value', '27'),
(1749, 80, '_crb_portfolio_pics|crb_portfolio_image_desc|3|0|value', ''),
(1750, 80, '_crb_portfolio_pics|crb_portfolio_image_alt|3|0|value', ''),
(1752, 89, '_wp_attached_file', '2024/10/logo-w-1.svg'),
(1753, 89, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:213;s:6:\"height\";i:75;s:4:\"file\";s:20:\"2024/10/logo-w-1.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:12:\"logo-w-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";i:700;s:6:\"height\";i:600;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"logo-w-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"logo-w-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"logo-w-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"logo-w-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"logo-w-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"small\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"logo-w-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"thumb\";a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"logo-w-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1754, 90, '_wp_attached_file', '2024/10/logo-white.svg'),
(1755, 90, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:213;s:6:\"height\";i:75;s:4:\"file\";s:22:\"2024/10/logo-white.svg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";i:700;s:6:\"height\";i:600;s:4:\"crop\";i:1;s:4:\"file\";s:14:\"logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"small\";a:5:{s:5:\"width\";i:400;s:6:\"height\";i:270;s:4:\"crop\";i:1;s:4:\"file\";s:14:\"logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"thumb\";a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"crop\";i:1;s:4:\"file\";s:14:\"logo-white.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(1758, 76, '_edit_last', '1'),
(1759, 75, '_edit_last', '1'),
(1760, 77, '_edit_last', '1'),
(1761, 70, '_edit_last', '1'),
(1762, 73, '_edit_last', '1'),
(1765, 74, '_crb_portfolio_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'),
(1780, 74, '_crb_decor_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate'),
(1781, 74, '_crb_decor_pics|||0|value', '_'),
(1782, 74, '_crb_decor_pics|||1|value', '_'),
(1783, 74, '_crb_decor_pics|||2|value', '_'),
(1784, 74, '_crb_decor_pics|crb_decor_image|0|0|value', '27'),
(1785, 74, '_crb_decor_pics|crb_decor_image_desc|0|0|value', 'sasas'),
(1786, 74, '_crb_decor_pics|crb_decor_image_alt|0|0|value', 'asasasasas'),
(1787, 74, '_crb_decor_pics|crb_decor_image|1|0|value', '26'),
(1788, 74, '_crb_decor_pics|crb_decor_image_desc|1|0|value', 'hghghg'),
(1789, 74, '_crb_decor_pics|crb_decor_image_alt|1|0|value', 'hghghgh'),
(1790, 74, '_crb_decor_pics|crb_decor_image|2|0|value', '17'),
(1791, 74, '_crb_decor_pics|crb_decor_image_desc|2|0|value', 'mbmbmbm'),
(1792, 74, '_crb_decor_pics|crb_decor_image_alt|2|0|value', 'bmbmbmb'),
(1793, 72, '_crb_decor_desc', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur'),
(1794, 72, '_crb_decor_pics|||0|_empty', ''),
(1795, 93, '_edit_lock', '1729109878:1'),
(1796, 93, '_wp_page_template', 'page-types.php'),
(1797, 10, '_hash', '7727072c24b3b0dda5e43d384907d93ac7702492'),
(1798, 78, '_hash', 'b0d769725d1b88ee6622b63ebba261607b467f88'),
(2131, 13, '_crb_hero_slides|||0|value', '_'),
(2132, 13, '_crb_hero_slides|||1|value', '_'),
(2133, 13, '_crb_hero_slides|crb_darker_pic|0|0|value', 'yes'),
(2134, 13, '_crb_hero_slides|crb_hero_img|0|0|value', '15'),
(2135, 13, '_crb_hero_slides|crb_hero_img_mob|0|0|value', '16'),
(2136, 13, '_crb_hero_slides|crb_hero_heading|0|0|value', ''),
(2137, 13, '_crb_hero_slides|crb_hero_desc|0|0|value', ''),
(2138, 13, '_crb_hero_slides|crb_hero_link|0|0|value', ''),
(2139, 13, '_crb_hero_slides|crb_hero_link_text|0|0|value', ''),
(2140, 13, '_crb_hero_slides|crb_darker_pic|1|0|value', 'yes'),
(2141, 13, '_crb_hero_slides|crb_hero_img|1|0|value', '17'),
(2142, 13, '_crb_hero_slides|crb_hero_img_mob|1|0|value', '17'),
(2143, 13, '_crb_hero_slides|crb_hero_heading|1|0|value', ''),
(2144, 13, '_crb_hero_slides|crb_hero_desc|1|0|value', ''),
(2145, 13, '_crb_hero_slides|crb_hero_link|1|0|value', ''),
(2146, 13, '_crb_hero_slides|crb_hero_link_text|1|0|value', ''),
(2147, 13, '_crb_second_block_head', 'Аренда декора для Вашего мероприятия'),
(2148, 13, '_crb_second_block_text', 'Сделайте свое мероприятие незабываемым с нашей арендой декора! Наш разнообразный выбор декоративных элементов поможет вам создать уникальную атмосферу любого события – от свадьбы до корпоратива. Выбирайте из нашего ассортимента, чтобы добавить шарм и стиль вашему празднику.\r\n\r\nДоверьтесь нам в организации декора, и ваше событие станет незабываемым для всех гостей!'),
(2149, 13, '_crb_contacts_background', ''),
(2150, 13, '_crb_contacts_text', '“Event Arenda”\r\n\r\nг. Санкт-Петербург\r\n<h3 style=\"margin-top: 30px;\">Офис</h3>\r\nадрес....'),
(2151, 13, '_crb_contacts_text_border', 'Выдача оборудования производится со склада: м. Московские ворота, Митрофаньевское шоссе д. 29, БЦ «Радуга»'),
(2152, 14, '_crb_contacts_text2', 'asasasas'),
(2153, 14, '_crb_hero_slides|||0|value', '_'),
(2154, 14, '_crb_hero_slides|||1|value', '_'),
(2155, 14, '_crb_hero_slides|crb_darker_pic|0|0|value', 'yes'),
(2156, 14, '_crb_hero_slides|crb_hero_img|0|0|value', '15'),
(2157, 14, '_crb_hero_slides|crb_hero_img_mob|0|0|value', '16'),
(2158, 14, '_crb_hero_slides|crb_hero_heading|0|0|value', ''),
(2159, 14, '_crb_hero_slides|crb_hero_desc|0|0|value', ''),
(2160, 14, '_crb_hero_slides|crb_hero_link|0|0|value', ''),
(2161, 14, '_crb_hero_slides|crb_hero_link_text|0|0|value', ''),
(2162, 14, '_crb_hero_slides|crb_darker_pic|1|0|value', 'yes'),
(2163, 14, '_crb_hero_slides|crb_hero_img|1|0|value', '17'),
(2164, 14, '_crb_hero_slides|crb_hero_img_mob|1|0|value', '17'),
(2165, 14, '_crb_hero_slides|crb_hero_heading|1|0|value', ''),
(2166, 14, '_crb_hero_slides|crb_hero_desc|1|0|value', ''),
(2167, 14, '_crb_hero_slides|crb_hero_link|1|0|value', ''),
(2168, 14, '_crb_hero_slides|crb_hero_link_text|1|0|value', ''),
(2169, 14, '_crb_second_block_head', 'Аренда декора для Вашего мероприятия'),
(2170, 14, '_crb_second_block_text', 'Сделайте свое мероприятие незабываемым с нашей арендой декора! Наш разнообразный выбор декоративных элементов поможет вам создать уникальную атмосферу любого события – от свадьбы до корпоратива. Выбирайте из нашего ассортимента, чтобы добавить шарм и стиль вашему празднику.\r\n\r\nДоверьтесь нам в организации декора, и ваше событие станет незабываемым для всех гостей!'),
(2171, 14, '_crb_contacts_background', ''),
(2172, 14, '_crb_contacts_text', '“Event Arenda”\r\n\r\nг. Санкт-Петербург\r\n<h3 style=\"margin-top: 30px;\">Офис</h3>\r\nадрес....');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2173, 14, '_crb_contacts_text_border', 'Выдача оборудования производится со склада: м. Московские ворота, Митрофаньевское шоссе д. 29, БЦ «Радуга»'),
(2174, 98, '_menu_item_type', 'post_type'),
(2175, 98, '_menu_item_menu_item_parent', '0'),
(2176, 98, '_menu_item_object_id', '93'),
(2177, 98, '_menu_item_object', 'page'),
(2178, 98, '_menu_item_target', ''),
(2179, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2180, 98, '_menu_item_xfn', ''),
(2181, 98, '_menu_item_url', ''),
(2183, 38, '_wp_old_date', '2024-09-28'),
(2185, 40, '_wp_old_date', '2024-09-28');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-09-24 19:47:25', '2024-09-24 16:47:25', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2024-09-28 16:32:20', '2024-09-28 13:32:20', '', 0, 'https://ea.local/?p=1', 0, 'post', '', 1),
(2, 1, '2024-09-24 19:47:25', '2024-09-24 16:47:25', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"https://ea.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2024-09-24 19:47:25', '2024-09-24 16:47:25', '', 0, 'https://ea.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-09-24 19:47:25', '2024-09-24 16:47:25', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: https://ea.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p>\n<!-- /wp:paragraph -->\n', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-09-24 19:47:25', '2024-09-24 16:47:25', '', 0, 'https://ea.local/?page_id=3', 0, 'page', '', 0),
(5, 1, '2024-09-24 19:47:45', '2024-09-24 16:47:45', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-09-24 19:47:45', '2024-09-24 16:47:45', '', 0, 'https://ea.local/?p=5', 0, 'wp_navigation', '', 0),
(10, 1, '2024-09-24 19:50:44', '2024-09-24 16:50:44', '[text* text-581 class:cf-input placeholder \"Ваше имя\"]\r\n[email* email-429 class:cf-input placeholder \"Адрес электронной почты\"]\r\n[tel* tel-278 class:cf-input placeholder \"Номер телефона\"]\r\n\r\n[submit class:btn-link \"Отправить\"]\r\n<p class=\"acceptance\">Нажимая кнопку “Отправить” вы соглашаетесь\r\nс <a href=\"/\">политикой конфиденциальности</a></p>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@ea.local>\n[_site_admin_email]\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@ea.local>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Контактная форма 1', '', 'publish', 'closed', 'closed', '', 'kontaktnaya-forma-1', '', '', '2024-09-28 11:32:48', '2024-09-28 08:32:48', '', 0, 'https://ea.local/?post_type=wpcf7_contact_form&#038;p=10', 0, 'wpcf7_contact_form', '', 0),
(11, 1, '2024-09-24 19:51:27', '2024-09-24 16:51:27', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2024-09-24 19:51:27', '2024-09-24 16:51:27', '', 0, 'https://ea.local/wp-content/uploads/2024/09/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(13, 1, '2024-09-24 19:52:39', '2024-09-24 16:52:39', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2024-11-18 14:04:53', '2024-11-18 11:04:53', '', 0, 'https://ea.local/?page_id=13', 0, 'page', '', 0),
(14, 1, '2024-09-24 19:52:39', '2024-09-24 16:52:39', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-09-24 19:52:39', '2024-09-24 16:52:39', '', 13, 'https://ea.local/?p=14', 0, 'revision', '', 0),
(15, 1, '2024-09-24 23:13:35', '2024-09-24 20:13:35', '', 'table-serving-decoration-with-greenery-white-candles-grey-table (1)', '', 'inherit', 'open', 'closed', '', 'table-serving-decoration-with-greenery-white-candles-grey-table-1', '', '', '2024-09-24 23:13:35', '2024-09-24 20:13:35', '', 13, 'https://ea.local/wp-content/uploads/2024/09/table-serving-decoration-with-greenery-white-candles-grey-table-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2024-09-24 23:13:51', '2024-09-24 20:13:51', '', 'decorated-banquet-hall-with-flowers (1)', '', 'inherit', 'open', 'closed', '', 'decorated-banquet-hall-with-flowers-1', '', '', '2024-09-24 23:13:51', '2024-09-24 20:13:51', '', 13, 'https://ea.local/wp-content/uploads/2024/09/decorated-banquet-hall-with-flowers-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2024-09-24 23:22:35', '2024-09-24 20:22:35', '', 'Decorated banquet hall with flowers, rectangle table, chiavari c', '', 'inherit', 'open', 'closed', '', 'decorated-banquet-hall-with-flowers-rectangle-table-chiavari-c', '', '', '2024-09-24 23:22:35', '2024-09-24 20:22:35', '', 13, 'https://ea.local/wp-content/uploads/2024/09/decorated-banquet-hall-with-flowers.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2024-09-28 12:20:47', '2024-09-28 09:20:47', '', 'party-decorations-white-cozy-room (1)', '', 'inherit', 'open', 'closed', '', 'party-decorations-white-cozy-room-1', '', '', '2024-09-28 12:20:47', '2024-09-28 09:20:47', '', 13, 'https://ea.local/wp-content/uploads/2024/09/party-decorations-white-cozy-room-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2024-09-28 14:21:03', '2024-09-28 11:21:03', '', 'adi-goldstein-Hli3R6LKibo-unsplash', '', 'inherit', 'open', 'closed', '', 'adi-goldstein-hli3r6lkibo-unsplash', '', '', '2024-09-28 14:21:03', '2024-09-28 11:21:03', '', 13, 'https://ea.local/wp-content/uploads/2024/09/adi-goldstein-hli3r6lkibo-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2024-09-28 15:47:18', '2024-09-28 12:47:18', '', 'vk', '', 'inherit', 'open', 'closed', '', 'vk', '', '', '2024-09-28 15:47:18', '2024-09-28 12:47:18', '', 0, 'https://ea.local/wp-content/uploads/2024/09/vk.svg', 0, 'attachment', 'image/svg+xml', 0),
(29, 1, '2024-09-28 15:47:43', '2024-09-28 12:47:43', '', 'tg', '', 'inherit', 'open', 'closed', '', 'tg', '', '', '2024-09-28 15:47:43', '2024-09-28 12:47:43', '', 0, 'https://ea.local/wp-content/uploads/2024/09/tg.svg', 0, 'attachment', 'image/svg+xml', 0),
(30, 1, '2024-09-28 15:48:17', '2024-09-28 12:48:17', '', 'wa', '', 'inherit', 'open', 'closed', '', 'wa', '', '', '2024-09-28 15:48:17', '2024-09-28 12:48:17', '', 0, 'https://ea.local/wp-content/uploads/2024/09/wa.svg', 0, 'attachment', 'image/svg+xml', 0),
(31, 1, '2024-09-28 16:20:29', '2024-09-28 13:20:29', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2024-09-28 16:20:29', '2024-09-28 13:20:29', '', 1, 'https://ea.local/?p=31', 0, 'revision', '', 0),
(32, 1, '2024-09-28 16:22:53', '2024-09-28 13:22:53', '', 'Блог', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2024-09-28 16:22:53', '2024-09-28 13:22:53', '', 0, 'https://ea.local/?page_id=32', 0, 'page', '', 0),
(33, 1, '2024-09-28 16:22:53', '2024-09-28 13:22:53', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2024-09-28 16:22:53', '2024-09-28 13:22:53', '', 32, 'https://ea.local/?p=33', 0, 'revision', '', 0),
(34, 1, '2024-09-28 16:30:17', '2024-09-28 13:30:17', '', 'Post 1', '', 'publish', 'open', 'open', '', 'post-1', '', '', '2024-09-28 16:47:21', '2024-09-28 13:47:21', '', 0, 'https://ea.local/?p=34', 0, 'post', '', 0),
(35, 1, '2024-09-28 16:30:17', '2024-09-28 13:30:17', '', 'Post 1', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2024-09-28 16:30:17', '2024-09-28 13:30:17', '', 34, 'https://ea.local/?p=35', 0, 'revision', '', 0),
(36, 1, '2024-09-28 16:47:03', '2024-09-28 13:47:03', '', 'post2', '', 'publish', 'open', 'open', '', 'post2', '', '', '2024-09-28 16:47:25', '2024-09-28 13:47:25', '', 0, 'https://ea.local/?p=36', 0, 'post', '', 0),
(37, 1, '2024-09-28 16:47:03', '2024-09-28 13:47:03', '', 'post2', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2024-09-28 16:47:03', '2024-09-28 13:47:03', '', 36, 'https://ea.local/?p=37', 0, 'revision', '', 0),
(38, 1, '2024-12-26 17:11:26', '2024-09-28 15:16:17', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2024-12-26 17:11:26', '2024-12-26 14:11:26', '', 0, 'https://ea.local/?p=38', 1, 'nav_menu_item', '', 0),
(40, 1, '2024-12-26 17:11:26', '2024-09-28 15:16:17', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2024-12-26 17:11:26', '2024-12-26 14:11:26', '', 0, 'https://ea.local/?p=40', 2, 'nav_menu_item', '', 0),
(41, 1, '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 'Флористика', '', 'publish', 'closed', 'closed', '', 'floristika', '', '', '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 0, 'https://ea.local/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 'Полиграфия, брендинг', '', 'publish', 'closed', 'closed', '', 'poligrafiya-brending', '', '', '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 0, 'https://ea.local/?p=42', 2, 'nav_menu_item', '', 0),
(43, 1, '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 'Фотозоны', '', 'publish', 'closed', 'closed', '', 'fotozony', '', '', '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 0, 'https://ea.local/?p=43', 3, 'nav_menu_item', '', 0),
(44, 1, '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 'Аренда декора', '', 'publish', 'closed', 'closed', '', 'arenda-dekora', '', '', '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 0, 'https://ea.local/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 'Свадьбы', '', 'publish', 'closed', 'closed', '', 'svadby', '', '', '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 0, 'https://ea.local/?p=45', 5, 'nav_menu_item', '', 0),
(46, 1, '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 'Новогодний декор', '', 'publish', 'closed', 'closed', '', 'novogodnij-dekor', '', '', '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 0, 'https://ea.local/?p=46', 6, 'nav_menu_item', '', 0),
(47, 1, '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 'Воздушные шары', '', 'publish', 'closed', 'closed', '', 'vozdushnye-shary', '', '', '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 0, 'https://ea.local/?p=47', 7, 'nav_menu_item', '', 0),
(48, 1, '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 'Прессволл, баннер', '', 'publish', 'closed', 'closed', '', 'pressvoll-banner', '', '', '2024-09-28 21:19:58', '2024-09-28 18:19:58', '', 0, 'https://ea.local/?p=48', 8, 'nav_menu_item', '', 0),
(49, 1, '2024-09-28 21:32:37', '2024-09-28 18:32:37', '', 'decor', '', 'inherit', 'open', 'closed', '', 'decor', '', '', '2024-09-28 21:32:37', '2024-09-28 18:32:37', '', 0, 'https://ea.local/wp-content/uploads/2024/09/decor.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2024-09-30 18:09:59', '2024-09-30 15:09:59', '', 'ea-logo', '', 'inherit', 'open', 'closed', '', 'ea-logo', '', '', '2024-09-30 18:09:59', '2024-09-30 15:09:59', '', 0, 'https://ea.local/wp-content/uploads/2024/09/ea-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(54, 1, '2024-09-30 22:36:43', '2024-09-30 19:36:43', '', 'ea-logo-white', '', 'inherit', 'open', 'closed', '', 'ea-logo-white', '', '', '2024-09-30 22:36:43', '2024-09-30 19:36:43', '', 0, 'https://ea.local/wp-content/uploads/2024/09/ea-logo-white.svg', 0, 'attachment', 'image/svg+xml', 0),
(56, 1, '2024-09-30 22:46:08', '2024-09-30 19:46:08', '', 'ea-logo-white', '', 'inherit', 'open', 'closed', '', 'ea-logo-white-2', '', '', '2024-09-30 22:46:08', '2024-09-30 19:46:08', '', 0, 'https://ea.local/wp-content/uploads/2024/09/ea-logo-white-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(58, 1, '2024-09-30 22:58:43', '2024-09-30 19:58:43', '', 'ea-logo-v', '', 'inherit', 'open', 'closed', '', 'ea-logo-v', '', '', '2024-09-30 22:58:43', '2024-09-30 19:58:43', '', 0, 'https://ea.local/wp-content/uploads/2024/09/ea-logo-v.svg', 0, 'attachment', 'image/svg+xml', 0),
(60, 1, '2024-09-30 23:12:28', '2024-09-30 20:12:28', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2024-09-30 23:12:28', '2024-09-30 20:12:28', '', 0, 'https://ea.local/wp-content/uploads/2024/09/logo-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(63, 1, '2024-10-02 16:00:47', '2024-10-02 13:00:47', '', 'yt', '', 'inherit', 'open', 'closed', '', 'yt', '', '', '2024-10-02 16:00:47', '2024-10-02 13:00:47', '', 0, 'https://ea.local/wp-content/uploads/2024/10/yt.svg', 0, 'attachment', 'image/svg+xml', 0),
(64, 1, '2024-10-03 07:53:28', '2024-10-03 04:53:28', '', 'logo-w', '', 'inherit', 'open', 'closed', '', 'logo-w', '', '', '2024-10-03 07:53:28', '2024-10-03 04:53:28', '', 0, 'https://ea.local/wp-content/uploads/2024/10/logo-w.svg', 0, 'attachment', 'image/svg+xml', 0),
(67, 1, '2024-10-03 20:30:50', '2024-10-03 17:30:50', '', 'Тестовая', '', 'publish', 'closed', 'closed', '', 'testovaya', '', '', '2024-10-03 20:30:50', '2024-10-03 17:30:50', '', 0, 'https://ea.local/?page_id=67', 0, 'page', '', 0),
(68, 1, '2024-10-03 20:30:50', '2024-10-03 17:30:50', '', 'Тестовая', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2024-10-03 20:30:50', '2024-10-03 17:30:50', '', 67, 'https://ea.local/?p=68', 0, 'revision', '', 0),
(69, 1, '2024-10-03 22:12:39', '2024-10-03 19:12:39', '', 'seddwrrferfe', '', 'publish', 'closed', 'closed', '', 'pressvoll', '', '', '2024-10-11 19:54:07', '2024-10-11 16:54:07', '', 0, 'https://ea.local/?post_type=decor&#038;p=69', 0, 'decor', '', 0),
(70, 1, '2024-10-03 22:14:26', '2024-10-03 19:14:26', '', 'bnjhjhjhjkjhk', '', 'publish', 'closed', 'closed', '', 'sequins', '', '', '2024-10-11 19:18:45', '2024-10-11 16:18:45', '', 0, 'https://ea.local/?post_type=decor&#038;p=70', 0, 'decor', '', 0),
(71, 1, '2024-10-03 22:14:51', '2024-10-03 19:14:51', '', 'ssasas', '', 'publish', 'closed', 'closed', '', 'vypusknoi', '', '', '2024-10-11 17:59:04', '2024-10-11 14:59:04', '', 0, 'https://ea.local/?post_type=decor&#038;p=71', 0, 'decor', '', 0),
(72, 1, '2024-10-03 22:15:14', '2024-10-03 19:15:14', '', '21212', '', 'publish', 'closed', 'closed', '', '8nbspmarta', '', '', '2024-10-11 22:51:59', '2024-10-11 19:51:59', '', 0, 'https://ea.local/?post_type=decor&#038;p=72', 0, 'decor', '', 0),
(73, 1, '2024-10-03 22:15:45', '2024-10-03 19:15:45', '', 'fereteytt565', '', 'publish', 'closed', 'closed', '', 'wedding', '', '', '2024-10-11 19:54:07', '2024-10-11 16:54:07', '', 0, 'https://ea.local/?post_type=decor&#038;p=73', 0, 'decor', '', 0),
(74, 1, '2024-10-03 22:16:04', '2024-10-03 19:16:04', '', 'cxcxcdgtetete', '', 'publish', 'closed', 'closed', '', 'detskie', '', '', '2024-10-11 22:29:28', '2024-10-11 19:29:28', '', 0, 'https://ea.local/?post_type=decor&#038;p=74', 0, 'decor', '', 0),
(75, 1, '2024-10-03 22:16:32', '2024-10-03 19:16:32', '', 'yujbmnbnv', '', 'publish', 'closed', 'closed', '', 'korporativnye', '', '', '2024-10-11 17:59:19', '2024-10-11 14:59:19', '', 0, 'https://ea.local/?post_type=decor&#038;p=75', 0, 'decor', '', 0),
(76, 1, '2024-10-03 22:16:49', '2024-10-03 19:16:49', '', 'День cxccxcxc', '', 'publish', 'closed', 'closed', '', 'den-rozhdeniya', '', '', '2024-10-11 17:59:09', '2024-10-11 14:59:09', '', 0, 'https://ea.local/?post_type=decor&#038;p=76', 0, 'decor', '', 0),
(77, 1, '2024-10-03 22:17:01', '2024-10-03 19:17:01', '', 'frfdfvfd', '', 'publish', 'closed', 'closed', '', 'novyj-god', '', '', '2024-10-11 19:54:07', '2024-10-11 16:54:07', '', 0, 'https://ea.local/?post_type=decor&#038;p=77', 0, 'decor', '', 0),
(78, 1, '2024-10-03 23:28:45', '2024-10-03 20:28:45', '[text* text-648 class:cf-input placeholder \"Ваше имя\"]\r\n[tel* tel-498 class:cf-input placeholder \"Номер телефона\"]\r\n[email* email-931 class:cf-input placeholder \"e-mail\"]\r\n\r\n[submit class:btn-link \"Заказать\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@ea.local>\n[_site_admin_email]\nОт: [your-name] <[your-email]>\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@ea.local>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nФайл слишком большой.\nПри загрузке файла произошла ошибка.\nФормат даты некорректен.\nВведённая дата слишком далеко в прошлом.\nВведённая дата слишком далеко в будущем.\nФормат числа некорректен.\nЧисло меньше минимально допустимого.\nЧисло больше максимально допустимого.\nНеверный ответ на проверочный вопрос.\nНеверно введён электронный адрес.\nВведён некорректный URL адрес.\nВведён некорректный телефонный номер.', 'Order form', '', 'publish', 'closed', 'closed', '', 'order-form', '', '', '2024-10-03 23:28:48', '2024-10-03 20:28:48', '', 0, 'https://ea.local/?post_type=wpcf7_contact_form&#038;p=78', 0, 'wpcf7_contact_form', '', 0),
(79, 1, '2024-10-04 19:22:41', '2024-10-04 16:22:41', '', 'phone2', '', 'inherit', 'open', 'closed', '', 'phone2', '', '', '2024-10-04 19:22:41', '2024-10-04 16:22:41', '', 0, 'https://ea.local/wp-content/uploads/2024/10/phone2.svg', 0, 'attachment', 'image/svg+xml', 0),
(80, 1, '2024-10-07 20:06:41', '2024-10-07 17:06:41', '', 'Название проекта', '', 'publish', 'closed', 'closed', '', 'nazvanie-proekta', '', '', '2024-10-11 11:35:56', '2024-10-11 08:35:56', '', 0, 'https://ea.local/?post_type=portfolio&#038;p=80', 0, 'portfolio', '', 0),
(81, 1, '2024-10-07 20:06:53', '2024-10-07 17:06:53', '', 'Название проекта', '', 'publish', 'closed', 'closed', '', 'nazvanie-proekta-2', '', '', '2024-10-07 20:06:53', '2024-10-07 17:06:53', '', 0, 'https://ea.local/?post_type=portfolio&#038;p=81', 0, 'portfolio', '', 0),
(82, 1, '2024-10-07 20:07:08', '2024-10-07 17:07:08', '', 'Название проекта', '', 'publish', 'closed', 'closed', '', 'nazvanie-proekta-3', '', '', '2024-10-11 10:44:16', '2024-10-11 07:44:16', '', 0, 'https://ea.local/?post_type=portfolio&#038;p=82', 0, 'portfolio', '', 0),
(83, 1, '2024-10-07 20:07:17', '2024-10-07 17:07:17', '', 'Название проекта', '', 'publish', 'closed', 'closed', '', 'nazvanie-proekta-4', '', '', '2024-10-07 20:07:17', '2024-10-07 17:07:17', '', 0, 'https://ea.local/?post_type=portfolio&#038;p=83', 0, 'portfolio', '', 0),
(85, 1, '2024-10-10 12:00:43', '2024-10-10 09:00:43', '', 'logo-ea', '', 'inherit', 'open', 'closed', '', 'logo-ea', '', '', '2024-10-10 12:00:43', '2024-10-10 09:00:43', '', 0, 'https://ea.local/wp-content/uploads/2024/10/logo-ea.svg', 0, 'attachment', 'image/svg+xml', 0),
(89, 1, '2024-10-11 16:18:19', '2024-10-11 13:18:19', '', 'logo-w', '', 'inherit', 'open', 'closed', '', 'logo-w-2', '', '', '2024-10-11 16:18:19', '2024-10-11 13:18:19', '', 0, 'https://ea.local/wp-content/uploads/2024/10/logo-w-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(90, 1, '2024-10-11 16:19:38', '2024-10-11 13:19:38', '', 'logo-white', '', 'inherit', 'open', 'closed', '', 'logo-white', '', '', '2024-10-11 16:19:38', '2024-10-11 13:19:38', '', 0, 'https://ea.local/wp-content/uploads/2024/10/logo-white.svg', 0, 'attachment', 'image/svg+xml', 0),
(93, 1, '2024-10-16 22:17:03', '2024-10-16 19:17:03', '', 'Декор', '', 'publish', 'closed', 'closed', '', 'dekor', '', '', '2024-10-16 22:17:03', '2024-10-16 19:17:03', '', 0, 'https://ea.local/?page_id=93', 0, 'page', '', 0),
(94, 1, '2024-10-16 22:17:03', '2024-10-16 19:17:03', '', 'Декор', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2024-10-16 22:17:03', '2024-10-16 19:17:03', '', 93, 'https://ea.local/?p=94', 0, 'revision', '', 0),
(98, 1, '2024-12-26 17:11:26', '2024-12-26 14:11:09', ' ', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2024-12-26 17:11:26', '2024-12-26 14:11:26', '', 0, 'https://ea.local/?p=98', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(2, 28, '_crb_thumb', '26'),
(3, 29, '_crb_thumb', '17'),
(5, 29, '_crb_type_thumb', '17'),
(6, 30, '_crb_type_thumb', '17'),
(7, 28, '_crb_type_thumb', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Блог', 'blog', 0),
(3, 'Главное меню', 'glavnoe-menyu', 0),
(4, 'Меню услуг', 'menyu-uslug', 0),
(8, 'Новый год', 'new-year', 0),
(9, '8 марта', '8-marta', 0),
(10, 'Выпускной', 'vypusknoj', 0),
(11, 'Свадьба', 'svadba', 0),
(12, 'Прессволл', 'pressvoll', 0),
(13, 'Пайетки', 'pajetki', 0),
(14, 'Новый год', 'novyj-god', 0),
(15, 'Корпоративные', 'korporativnye', 0),
(16, 'Детские', 'detskie', 0),
(17, 'День рождения', 'den-rozhdeniya', 0),
(18, 'Выпускной', 'vypusknoj', 0),
(19, '8 марта', '8-marta', 0),
(20, 'Новый год', 'novyj-god', 0),
(21, '8 марта', '8-marta', 0),
(22, 'Пайетки', 'pajetki', 0),
(23, 'Новый год', 'novyj-god', 0),
(24, '8 марта', '8-marta', 0),
(25, 'Пайетки', 'pajetki', 0),
(26, 'Новый год', 'novyj-god', 0),
(27, 'Новый год', 'novyj-god', 0),
(28, 'Новый год', 'novyj-god', 0),
(29, 'Пайетки', 'pajetki', 0),
(30, 'Свадьба', 'svadba', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(18, 1, 0),
(19, 1, 0),
(34, 2, 0),
(36, 2, 0),
(38, 3, 0),
(40, 3, 0),
(41, 4, 0),
(42, 4, 0),
(43, 4, 0),
(44, 4, 0),
(45, 4, 0),
(46, 4, 0),
(47, 4, 0),
(48, 4, 0),
(69, 29, 0),
(70, 23, 0),
(70, 28, 0),
(72, 24, 0),
(72, 28, 0),
(73, 29, 0),
(74, 25, 0),
(74, 28, 0),
(77, 29, 0),
(98, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'nav_menu', '', 0, 8),
(28, 28, 'types', '', 0, 3),
(29, 29, 'types', '', 0, 3),
(30, 30, 'types', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ed22ca165c543220ae9ec0b0d31217de5ec86920154bca324623d4440f515373\";a:4:{s:10:\"expiration\";i:1735395021;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:80:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0\";s:5:\"login\";i:1735222221;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '97'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1731927036'),
(21, 1, 'wp_persisted_preferences', 'a:4:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-10-03T17:33:56.706Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:19:\"add-post-type-decor\";i:1;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B6PXfSQGpGQ7D7SaFRJBzA37Z1e.fh1', 'admin', 'aleksandra.ovsia@gmail.com', 'https://ea.local', '2024-09-24 16:47:25', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2328;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2186;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
