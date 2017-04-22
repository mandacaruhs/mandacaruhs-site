-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22-Abr-2017 às 16:29
-- Versão do servidor: 5.6.17
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bn_mandacaruhs`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_comments`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_links`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_options`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=168 ;

--
-- Extraindo dados da tabela `wp_b80cdsc7bg_options`
--

INSERT INTO `wp_b80cdsc7bg_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://betonunes.ddns.net/mandacaruhs/wp', 'yes'),
(2, 'home', 'http://betonunes.ddns.net/mandacaruhs', 'yes'),
(3, 'blogname', 'Mandacaru Hackerspace', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'contato@betonunes.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:48:"categoria/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:43:"categoria/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:24:"categoria/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:36:"categoria/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:18:"categoria/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"evento/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"evento/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"evento/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"evento/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"evento/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"evento/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"evento/([^/]+)/embed/?$";s:39:"index.php?evento=$matches[1]&embed=true";s:27:"evento/([^/]+)/trackback/?$";s:33:"index.php?evento=$matches[1]&tb=1";s:35:"evento/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?evento=$matches[1]&paged=$matches[2]";s:42:"evento/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?evento=$matches[1]&cpage=$matches[2]";s:31:"evento/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?evento=$matches[1]&page=$matches[2]";s:23:"evento/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"evento/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"evento/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"evento/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"evento/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"evento/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=3&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:47:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$";s:75:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/([^/]+)/trackback/?$";s:69:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&tb=1";s:64:"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]";s:52:"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]";s:59:"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]";s:48:"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]";s:36:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:43:"custom-post-type-ui/custom-post-type-ui.php";}', 'yes'),
(34, 'category_base', '/categoria/', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'devdmbootstrap3', 'yes'),
(41, 'stylesheet', 'mandacaruhs', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '3', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_b80cdsc7bg_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:13:"right-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"left-sidebar";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1491541288;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"78525e41f5c2848ff7e1a2337fb96361";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:14;}}}}i:1491572398;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491615706;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491622284;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.7.3.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.7.3.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1491534094;s:15:"version_checked";s:5:"4.7.3";s:12:"translations";a:0:{}}', 'no'),
(116, '_site_transient_timeout_browser_085a7441ba8d27acdeb0223d99655031', '1491874901', 'no'),
(117, '_site_transient_browser_085a7441ba8d27acdeb0223d99655031', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(118, 'can_compress_scripts', '1', 'no'),
(120, '_site_transient_timeout_wporg_theme_feature_list', '1491280910', 'no'),
(121, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(124, 'theme_mods_twentyseventeen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491270128;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(125, 'current_theme', 'Mandacaru Hackerspace', 'yes'),
(126, 'theme_mods_devdmbootstrap3', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1491270324;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:13:"right-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"left-sidebar";a:0:{}}}}', 'yes'),
(127, 'theme_switched', '', 'yes'),
(128, 'widget_bootstrap-widget-menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(129, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1491534124;s:7:"checked";a:2:{s:15:"devdmbootstrap3";s:4:"1.80";s:11:"mandacaruhs";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(130, 'theme_mods_mandacaruhs', 'a:4:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:5;s:18:"nav_menu_locations";a:1:{s:9:"main_menu";i:2;}}', 'yes'),
(135, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(144, '_site_transient_timeout_browser_6e102543d3ebf940a906cdbd86951ece', '1492138731', 'no'),
(145, '_site_transient_browser_6e102543d3ebf940a906cdbd86951ece', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"57.0.2987.133";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(146, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1491544736', 'no'),
(147, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4324;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2464;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2351;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:1971;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1814;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1568;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1532;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1420;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1322;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1314;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1299;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1267;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1249;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1077;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1036;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1019;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:978;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:900;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:809;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:774;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:773;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:757;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:745;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:661;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:650;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:641;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:638;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:632;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:631;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:604;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:589;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:584;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:582;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:565;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:563;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:560;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:557;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:549;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:535;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:525;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:519;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:516;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:497;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:494;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:487;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:486;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:479;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:472;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:460;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:457;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:451;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:451;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:441;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:433;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:428;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:427;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:418;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:415;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:404;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:399;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:397;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:395;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:395;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:389;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:389;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:388;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:372;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:366;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:358;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:354;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:343;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:329;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:328;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:327;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:324;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:319;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:318;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:317;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:316;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:313;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:304;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:303;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:289;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:289;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:282;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:281;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:280;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:280;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:278;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:277;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:275;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:269;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:267;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:264;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:263;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:261;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:261;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:260;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:260;}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";i:260;}}', 'no'),
(149, '_site_transient_timeout_theme_roots', '1491535750', 'no'),
(150, '_site_transient_theme_roots', 'a:2:{s:15:"devdmbootstrap3";s:7:"/themes";s:11:"mandacaruhs";s:7:"/themes";}', 'no'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(155, '_transient_timeout_plugin_slugs', '1491620512', 'no'),
(156, '_transient_plugin_slugs', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:43:"custom-post-type-ui/custom-post-type-ui.php";}', 'no'),
(157, 'cptui_new_install', 'false', 'yes'),
(158, 'cptui_post_types', 'a:1:{s:6:"evento";a:28:{s:4:"name";s:6:"evento";s:5:"label";s:7:"Eventos";s:14:"singular_label";s:6:"Evento";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:2:"30";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:22:"dashicons-calendar-alt";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:7:"Eventos";s:9:"all_items";s:16:"Todos os Eventos";s:7:"add_new";s:14:"Adicionar Novo";s:12:"add_new_item";s:21:"Adicionar novo evento";s:9:"edit_item";s:13:"Editar Evento";s:8:"new_item";s:11:"Novo Evento";s:9:"view_item";s:10:"Ver Evento";s:10:"view_items";s:11:"Ver Eventos";s:12:"search_items";s:17:"Pesquisar Eventos";s:9:"not_found";s:25:"Nenhum evento encontrado.";s:18:"not_found_in_trash";s:36:"Nenhum evento encontrado na Lixeira.";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(163, '_transient_timeout_acf_pro_get_remote_info', '1491577302', 'no'),
(164, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:6:"5.5.11";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.8.0";s:4:"tags";a:57:{i:0;s:5:"5.5.9";i:1;s:5:"5.5.7";i:2;s:5:"5.5.5";i:3;s:5:"5.5.3";i:4;s:5:"5.5.2";i:5;s:6:"5.5.10";i:6;s:5:"5.5.1";i:7;s:5:"5.5.0";i:8;s:5:"5.4.8";i:9;s:5:"5.4.7";i:10;s:5:"5.4.6";i:11;s:5:"5.4.5";i:12;s:5:"5.4.4";i:13;s:5:"5.4.3";i:14;s:5:"5.4.2";i:15;s:5:"5.4.1";i:16;s:5:"5.4.0";i:17;s:5:"5.3.8";i:18;s:5:"5.3.7";i:19;s:5:"5.3.6";i:20;s:5:"5.3.5";i:21;s:5:"5.3.4";i:22;s:5:"5.3.3";i:23;s:5:"5.3.2";i:24;s:6:"5.3.10";i:25;s:5:"5.3.1";i:26;s:5:"5.3.0";i:27;s:5:"5.2.9";i:28;s:5:"5.2.8";i:29;s:5:"5.2.7";i:30;s:5:"5.2.6";i:31;s:5:"5.2.5";i:32;s:5:"5.2.4";i:33;s:5:"5.2.3";i:34;s:5:"5.2.2";i:35;s:5:"5.2.1";i:36;s:5:"5.2.0";i:37;s:5:"5.1.9";i:38;s:5:"5.1.8";i:39;s:5:"5.1.7";i:40;s:5:"5.1.6";i:41;s:5:"5.1.5";i:42;s:5:"5.1.4";i:43;s:5:"5.1.3";i:44;s:5:"5.1.2";i:45;s:5:"5.1.1";i:46;s:5:"5.1.0";i:47;s:5:"5.0.9";i:48;s:5:"5.0.8";i:49;s:5:"5.0.7";i:50;s:5:"5.0.6";i:51;s:5:"5.0.5";i:52;s:5:"5.0.4";i:53;s:5:"5.0.3";i:54;s:5:"5.0.2";i:55;s:5:"5.0.1";i:56;s:5:"5.0.0";}s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:11:"description";s:4337:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="https://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="https://www.advancedcustomfields.com/">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="https://www.advancedcustomfields.com/resources/#getting-started)">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="https://www.advancedcustomfields.com/resources/#field-types)">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="https://www.advancedcustomfields.com/resources/#functions)">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="https://www.advancedcustomfields.com/resources/#actions)">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="https://www.advancedcustomfields.com/resources/#filters)">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="https://www.advancedcustomfields.com/resources/#how-to)">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="https://www.advancedcustomfields.com/resources/#tutorials)">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group''s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:4752:"<h4> 5.5.11 </h4>\n<ul><li>Google Map field: Added new <code>google_map_init</code> JS action</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.5.10 </h4>\n<ul><li>API: Added new functionality to the `acf_form()` function:</li><li>- added new <code>html_updated_message</code> setting</li><li>- added new <code>html_submit_button</code> setting</li><li>- added new <code>html_submit_spinner</code> setting</li><li>- added new <code>acf/pre_submit_form</code> filter run when form is successfully submit (before saving $_POST)</li><li>- added new <code>acf/submit_form</code> action run when form is successfully submit (after saving $_POST)</li><li>- added new <code>%post_id%</code> replace string to the <code>return</code> setting</li><li>- added new encryption logic to prevent $_POST exploits</li><li>- added new `acf_register_form()` function</li><li>Core: Fixed bug preventing values being loaded on a new post/page preview</li><li>Core: Fixed missing <code>Bulk Actions</code> dropdown on sync screen when no field groups exist</li><li>Core: Fixed bug ignoring PHP field groups if exists in JSON</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.9 </h4>\n<ul><li>Core: Fixed bug causing ACF4 PHP field groups to be ignored if missing ‘key’ setting</li></ul>\n<h4> 5.5.8 </h4>\n<ul><li>Flexible Content: Added logic to better <code>clean up</code> data when re-ordering layouts</li><li>oEmbed field: Fixed bug causing incorrect width and height settings in embed HTML</li><li>Core: Fixed bug causing incorrect Select2 CSS version loading for WooCommerce 2.7</li><li>Core: Fixed bug preventing <code>min-height</code> style being applied to floating width fields</li><li>Core: Added new JS <code>init</code> actions for wysiwyg, date, datetime, time and select2 fields</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.7 </h4>\n<ul><li>Core: Fixed bug causing `get_field()` to return incorrect data for sub fields registered via PHP code.</li></ul>\n<h4> 5.5.6 </h4>\n<ul><li>Core: Fixed bug causing license key to be ignored after changing url from http to https</li><li>Core: Fixed Select2 (v4) bug where <code>allow null</code> setting would not correctly save empty value</li><li>Core: Added new <code>acf/validate_field</code> filter</li><li>Core: Added new <code>acf/validate_field_group</code> filter</li><li>Core: Added new <code>acf/validate_post_id</code> filter</li><li>Core: Added new <code>row_index_offset</code> setting</li><li>Core: Fixed bug causing value loading issues for a taxonomy term in WP < 4.4</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.5 </h4>\n<ul><li>File field: Fixed bug creating draft post when saving an empty value</li><li>Image field: Fixed bug mentioned above</li></ul>\n<h4> 5.5.4 </h4>\n<ul><li>File field: Added logic to <code>connect</code> selected attachment to post (only if attachment is not <code>connected</code>)</li><li>File field: Removed `filesize()` call causing performance issues with externally hosted attachments</li><li>File field: Added AJAX validation to <code>basic</code> uploader</li><li>Image field: Added <code>connect</code> logic mentioned above</li><li>Image field: Added AJAX validation mentioned above</li><li>True false field: Improved usability by allowing <code>tab</code> key to focus element (use space or arrow keys to toggle)</li><li>Gallery field: Fixed bug causing unsaved changes in sidebar to be lost when selecting another attachment</li><li>API: Fixed `add_row()` and `add_sub_row()` return values (from true to new row index)</li><li>Core: Improved `get_posts()` query speeds by setting <code>update_cache</code> settings to false</li><li>Core: Allowed <code>instruction_placement</code> setting on <code>widget</code> forms (previously set always to <code>below fields</code>)</li><li>Core: Removed <code>ACF PRO invalid license nag</code> and will include fix for <code>protocol change</code> in next release</li><li>Language: Updated French translation - thanks to Martial Parfait</li></ul>\n<h4> 5.5.3 </h4>\n<ul><li>Options page: Fixed bug when using WPML in multiple tabs causing incorrect <code>lang</code> to be used during save.</li><li>Core: Added support with new `get_user_locale()` setting in WP 4.7</li><li>Core: Improved efficiency of termmeta DB upgrade logic</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.2 </h4>\n<ul><li>Tab field: Fixed bug causing value loading issues for field''s with the same name</li><li>Repeater field: Fixed bug in <code>collapsed</code> setting where field key was shown instead of field label</li></ul>\n";s:14:"upgrade_notice";s:551:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no'),
(165, 'acf_version', '5.5.11', 'yes'),
(166, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TkRNd056ZDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMExURXdMVEk0SURFMk9qTXhPakF3IjtzOjM6InVybCI7czozNzoiaHR0cDovL2JldG9udW5lcy5kZG5zLm5ldC9tYW5kYWNhcnVocyI7fQ==', 'yes'),
(167, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1491534123;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":6:{s:2:"id";s:5:"13183";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.3";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.3.zip";}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=65 ;

--
-- Extraindo dados da tabela `wp_b80cdsc7bg_postmeta`
--

INSERT INTO `wp_b80cdsc7bg_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 5, '_wp_attached_file', '2017/04/logo.png'),
(3, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:430;s:6:"height";i:169;s:4:"file";s:16:"2017/04/logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"logo-300x118.png";s:5:"width";i:300;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"logo-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(4, 6, '_wp_trash_meta_status', 'publish'),
(5, 6, '_wp_trash_meta_time', '1491276108'),
(6, 7, '_menu_item_type', 'post_type'),
(7, 7, '_menu_item_menu_item_parent', '0'),
(8, 7, '_menu_item_object_id', '3'),
(9, 7, '_menu_item_object', 'page'),
(10, 7, '_menu_item_target', ''),
(11, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(12, 7, '_menu_item_xfn', ''),
(13, 7, '_menu_item_url', ''),
(15, 8, '_edit_last', '1'),
(16, 8, '_edit_lock', '1491276547:1'),
(17, 10, '_edit_last', '1'),
(18, 10, '_edit_lock', '1491276555:1'),
(19, 12, '_menu_item_type', 'post_type'),
(20, 12, '_menu_item_menu_item_parent', '0'),
(21, 12, '_menu_item_object_id', '10'),
(22, 12, '_menu_item_object', 'page'),
(23, 12, '_menu_item_target', ''),
(24, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 12, '_menu_item_xfn', ''),
(26, 12, '_menu_item_url', ''),
(28, 13, '_menu_item_type', 'post_type'),
(29, 13, '_menu_item_menu_item_parent', '0'),
(30, 13, '_menu_item_object_id', '8'),
(31, 13, '_menu_item_object', 'page'),
(32, 13, '_menu_item_target', ''),
(33, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 13, '_menu_item_xfn', ''),
(35, 13, '_menu_item_url', ''),
(38, 15, '_edit_last', '1'),
(39, 15, '_edit_lock', '1491535003:1'),
(42, 25, '_edit_last', '1'),
(43, 25, '_edit_lock', '1491538878:1'),
(44, 25, 'evento_tipo', 'R'),
(45, 25, '_evento_tipo', 'field_58e70142d1667'),
(46, 25, 'evento_dia', '4'),
(47, 25, '_evento_dia', 'field_58e70318ff8b2'),
(48, 25, 'evento_status', 'A'),
(49, 25, '_evento_status', 'field_58e7028591a54'),
(50, 25, 'evento_horario', '18:30:00'),
(51, 25, '_evento_horario', 'field_58e703bf57b8e'),
(55, 27, '_edit_last', '1'),
(56, 27, '_edit_lock', '1491535012:1'),
(57, 29, '_menu_item_type', 'post_type'),
(58, 29, '_menu_item_menu_item_parent', '0'),
(59, 29, '_menu_item_object_id', '27'),
(60, 29, '_menu_item_object', 'page'),
(61, 29, '_menu_item_target', ''),
(62, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 29, '_menu_item_xfn', ''),
(64, 29, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_posts`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=30 ;

--
-- Extraindo dados da tabela `wp_b80cdsc7bg_posts`
--

INSERT INTO `wp_b80cdsc7bg_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2017-04-03 22:40:17', '2017-04-04 01:40:17', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-04-03 22:40:17', '2017-04-04 01:40:17', '', 0, 'http://betonunes.ddns.net/mandacaruhs/home/', 0, 'page', '', 0),
(4, 1, '2017-04-03 22:41:41', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-04-03 22:41:41', '0000-00-00 00:00:00', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?p=4', 0, 'post', '', 0),
(5, 1, '2017-04-04 00:21:43', '2017-04-04 03:21:43', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-04-04 00:21:43', '2017-04-04 03:21:43', '', 0, 'http://betonunes.ddns.net/mandacaruhs/wp/wp-content/uploads/2017/04/logo.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2017-04-04 00:21:48', '2017-04-04 03:21:48', '{\n    "mandacaruhs::custom_logo": {\n        "value": 5,\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e3b92215-bc98-4788-9a7f-b7daafc59673', '', '', '2017-04-04 00:21:48', '2017-04-04 03:21:48', '', 0, 'http://betonunes.ddns.net/mandacaruhs/2017/04/e3b92215-bc98-4788-9a7f-b7daafc59673/', 0, 'customize_changeset', '', 0),
(7, 1, '2017-04-04 00:31:22', '2017-04-04 03:31:22', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2017-04-07 00:19:24', '2017-04-07 03:19:24', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2017-04-04 00:31:28', '2017-04-04 03:31:28', '', 'Quem Somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2017-04-04 00:31:28', '2017-04-04 03:31:28', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-04-04 00:31:28', '2017-04-04 03:31:28', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-04-04 00:31:28', '2017-04-04 03:31:28', '', 8, 'http://betonunes.ddns.net/mandacaruhs/2017/04/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-04-04 00:31:36', '2017-04-04 03:31:36', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2017-04-04 00:31:36', '2017-04-04 03:31:36', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-04-04 00:31:36', '2017-04-04 03:31:36', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-04-04 00:31:36', '2017-04-04 03:31:36', '', 10, 'http://betonunes.ddns.net/mandacaruhs/2017/04/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-04-04 00:31:47', '2017-04-04 03:31:47', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2017-04-07 00:19:24', '2017-04-07 03:19:24', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?p=12', 4, 'nav_menu_item', '', 0),
(13, 1, '2017-04-04 00:31:47', '2017-04-04 03:31:47', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2017-04-07 00:19:24', '2017-04-07 03:19:24', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?p=13', 2, 'nav_menu_item', '', 0),
(15, 1, '2017-04-07 00:04:06', '2017-04-07 03:04:06', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"evento";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Evento', 'evento', 'publish', 'closed', 'closed', '', 'group_58e7013ea507e', '', '', '2017-04-07 00:13:48', '2017-04-07 03:13:48', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?post_type=acf-field-group&#038;p=15', 0, 'acf-field-group', '', 0),
(16, 1, '2017-04-07 00:04:06', '2017-04-07 03:04:06', 'a:12:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:1:"P";s:14:"Evento pontual";s:1:"R";s:17:"Evento recorrente";}s:10:"allow_null";i:0;s:12:"other_choice";i:0;s:17:"save_other_choice";i:0;s:13:"default_value";s:1:"P";s:6:"layout";s:10:"horizontal";s:13:"return_format";s:5:"value";}', 'Tipo de evento', 'evento_tipo', 'publish', 'closed', 'closed', '', 'field_58e70142d1667', '', '', '2017-04-07 00:08:40', '2017-04-07 03:08:40', '', 15, 'http://betonunes.ddns.net/mandacaruhs/?post_type=acf-field&#038;p=16', 0, 'acf-field', '', 0),
(17, 1, '2017-04-07 00:04:10', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-07 00:04:10', '0000-00-00 00:00:00', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?post_type=evento&p=17', 0, 'evento', '', 0),
(18, 1, '2017-04-07 00:08:40', '2017-04-07 03:08:40', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"d/m/Y";s:13:"return_format";s:5:"Y-m-d";s:9:"first_day";i:0;s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_58e70142d1667";s:8:"operator";s:2:"==";s:5:"value";s:1:"P";}}}}', 'Data do evento', 'evento_data_inicio', 'publish', 'closed', 'closed', '', 'field_58e701bd91a52', '', '', '2017-04-07 00:09:18', '2017-04-07 03:09:18', '', 15, 'http://betonunes.ddns.net/mandacaruhs/?post_type=acf-field&#038;p=18', 1, 'acf-field', '', 0),
(19, 1, '2017-04-07 00:08:41', '2017-04-07 03:08:41', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"50";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"d/m/Y";s:13:"return_format";s:5:"Y-m-d";s:9:"first_day";i:0;s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_58e70142d1667";s:8:"operator";s:2:"==";s:5:"value";s:1:"P";}}}}', 'Data de término do evento (se houver mais de 1 dia)', 'evento_data_fim', 'publish', 'closed', 'closed', '', 'field_58e701fe91a53', '', '', '2017-04-07 00:09:52', '2017-04-07 03:09:52', '', 15, 'http://betonunes.ddns.net/mandacaruhs/?post_type=acf-field&#038;p=19', 2, 'acf-field', '', 0),
(20, 1, '2017-04-07 00:08:41', '2017-04-07 03:08:41', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:2:{s:1:"A";s:5:"Ativo";s:1:"I";s:7:"Inativo";}s:13:"default_value";a:1:{i:0;s:1:"A";}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_58e70142d1667";s:8:"operator";s:2:"==";s:5:"value";s:1:"R";}}}}', 'Situação', 'evento_status', 'publish', 'closed', 'closed', '', 'field_58e7028591a54', '', '', '2017-04-07 00:13:48', '2017-04-07 03:13:48', '', 15, 'http://betonunes.ddns.net/mandacaruhs/?post_type=acf-field&#038;p=20', 5, 'acf-field', '', 0),
(21, 1, '2017-04-07 00:08:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-07 00:08:45', '0000-00-00 00:00:00', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?post_type=evento&p=21', 0, 'evento', '', 0),
(22, 1, '2017-04-07 00:09:21', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-04-07 00:09:21', '0000-00-00 00:00:00', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?post_type=evento&p=22', 0, 'evento', '', 0),
(24, 1, '2017-04-07 00:12:04', '2017-04-07 03:12:04', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:7:{i:1;s:13:"Segunda-feira";i:2;s:12:"Terça-feira";i:3;s:12:"Quarta-feira";i:4;s:12:"Quinta-feira";i:5;s:11:"Sexta-feira";i:6;s:7:"Sábado";i:7;s:7:"Domingo";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:19:"field_58e70142d1667";s:8:"operator";s:2:"==";s:5:"value";s:1:"R";}}}}', 'Dia da semana', 'evento_dia', 'publish', 'closed', 'closed', '', 'field_58e70318ff8b2', '', '', '2017-04-07 00:12:04', '2017-04-07 03:12:04', '', 15, 'http://betonunes.ddns.net/mandacaruhs/?post_type=acf-field&p=24', 3, 'acf-field', '', 0),
(25, 1, '2017-04-07 00:13:02', '2017-04-07 03:13:02', 'Lorem ipsum dolor sit amet, nunc recusandae nam lectus arcu a. Rhoncus tortor varius ultricies pede ut, malesuada porta enim mattis praesent donec, diam a est, class vitae ut habitasse, luctus ullamcorper varius. Pulvinar dui duis, neque interdum sed litora cursus, ultricies ullamcorper in quis tellus, pulvinar et gravida. Fugit fringilla pulvinar cursus et feugiat. Arcu nulla tortor amet, leo duis facilisi vestibulum, erat nec. Sem tortor tortor hac, consequat vitae dignissim commodo.\r\n\r\nQuam wisi pellentesque turpis morbi orci, ornare eu viverra sed in, eget maecenas nec at sodales feugiat, eget nulla. Nascetur scelerisque, etiam egestas accumsan urna in donec etiam. Soluta cras semper dis, pede blandit, wisi cras ultrices. Ut consectetuer magna quisque malesuada. Augue risus ut pharetra vitae proin, sed fermentum arcu mi sem elit eros, id in diam laoreet sunt mauris arcu, orci at in metus nullam hendrerit hymenaeos, etiam adipiscing mattis magnis lacus nullam vestibulum.\r\n\r\nPurus sodales, tincidunt class nam amet magna ornare sit. Dignissimos nulla, mus erat id vestibulum eget adipiscing dolor, diam posuere justo litora erat. Ultricies et, eu a nullam sed dapibus, justo et tellus velit, a dolor, suscipit ullamcorper massa. Ut velit pellentesque sapien, ut ut dui senectus, amet pede vitae sem blandit mauris, libero vitae amet malesuada libero sed ac, nulla amet. Eget nostrum lacus amet posuere, ultricies laoreet, dolor neque amet non vestibulum ac, senectus felis dignissim turpis, mattis sed. Velit adipisci mauris placerat scelerisque lectus, tortor lorem, ultricies fusce pulvinar ut. Tortor in fringilla, pretium debitis, lacinia ea quis, ac arcu lobortis neque commodo purus, sit commodo in. Sodales vivamus nunc, vestibulum nulla odio lacus wisi commodo risus. Lobortis nonummy scelerisque mauris eget, diam ultricies erat amet accumsan eget blandit, ipsum tincidunt, porttitor sit nullam ut sed nibh, erat perspiciatis sit orci nunc tellus aenean. Urna mattis amet quisque mauris adipiscing purus, non viverra nisi duis molestie tristique, aliquam nisl consectetuer facilisis magnis.', 'Noite de Eletrônica', '', 'publish', 'closed', 'closed', '', 'noite-de-eletronica', '', '', '2017-04-07 00:14:15', '2017-04-07 03:14:15', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?post_type=evento&#038;p=25', 0, 'evento', '', 0),
(26, 1, '2017-04-07 00:13:37', '2017-04-07 03:13:37', 'a:7:{s:4:"type";s:11:"time_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:3:"H:i";s:13:"return_format";s:3:"H:i";}', 'Horário', 'evento_horario', 'publish', 'closed', 'closed', '', 'field_58e703bf57b8e', '', '', '2017-04-07 00:13:48', '2017-04-07 03:13:48', '', 15, 'http://betonunes.ddns.net/mandacaruhs/?post_type=acf-field&#038;p=26', 4, 'acf-field', '', 0),
(27, 1, '2017-04-07 00:19:13', '2017-04-07 03:19:13', '', 'Como chegar', '', 'publish', 'closed', 'closed', '', 'como-chegar', '', '', '2017-04-07 00:19:13', '2017-04-07 03:19:13', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?page_id=27', 0, 'page', '', 0),
(28, 1, '2017-04-07 00:19:13', '2017-04-07 03:19:13', '', 'Como chegar', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-04-07 00:19:13', '2017-04-07 03:19:13', '', 27, 'http://betonunes.ddns.net/mandacaruhs/2017/04/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-04-07 00:19:24', '2017-04-07 03:19:24', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-04-07 00:19:24', '2017-04-07 03:19:24', '', 0, 'http://betonunes.ddns.net/mandacaruhs/?p=29', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_terms`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `wp_b80cdsc7bg_terms`
--

INSERT INTO `wp_b80cdsc7bg_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Principal', 'principal', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_b80cdsc7bg_term_relationships`
--

INSERT INTO `wp_b80cdsc7bg_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 2, 0),
(12, 2, 0),
(13, 2, 0),
(29, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `wp_b80cdsc7bg_term_taxonomy`
--

INSERT INTO `wp_b80cdsc7bg_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `wp_b80cdsc7bg_usermeta`
--

INSERT INTO `wp_b80cdsc7bg_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Administrador'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'locale', ''),
(11, 1, 'wp_b80cdsc7bg_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_b80cdsc7bg_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'metaboxhidden_dashboard', 'a:3:{i:0;s:18:"dashboard_activity";i:1;s:21:"dashboard_quick_press";i:2;s:17:"dashboard_primary";}'),
(16, 1, 'session_tokens', 'a:1:{s:64:"42734d38869e01de520509aeed4eca34b10c666ce18a3fc0e4c455b630066972";a:4:{s:10:"expiration";i:1492479700;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1491270100;}}'),
(17, 1, 'wp_b80cdsc7bg_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_b80cdsc7bg_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_b80cdsc7bg_user-settings-time', '1491276104'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_b80cdsc7bg_users`
--

CREATE TABLE IF NOT EXISTS `wp_b80cdsc7bg_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_b80cdsc7bg_users`
--

INSERT INTO `wp_b80cdsc7bg_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wpadmin', '$P$Ba3obtkXAuShmhyB2i47OlHKnJ.XKb1', 'wpadmin', 'contato@betonunes.com', '', '2017-04-04 01:39:56', '', 0, 'Administrador');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
