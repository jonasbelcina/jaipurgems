# WordPress MySQL database migration
#
# Generated: Tuesday 10. May 2016 07:50 UTC
# Hostname: localhost
# Database: `jaipurgems`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `jaipurgems_commentmeta`
#

DROP TABLE IF EXISTS `jaipurgems_commentmeta`;


#
# Table structure of table `jaipurgems_commentmeta`
#

CREATE TABLE `jaipurgems_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_commentmeta`
#

#
# End of data contents of table `jaipurgems_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_comments`
#

DROP TABLE IF EXISTS `jaipurgems_comments`;


#
# Table structure of table `jaipurgems_comments`
#

CREATE TABLE `jaipurgems_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_comments`
#
INSERT INTO `jaipurgems_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-05-04 09:11:45', '2016-05-04 09:11:45', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `jaipurgems_comments`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_links`
#

DROP TABLE IF EXISTS `jaipurgems_links`;


#
# Table structure of table `jaipurgems_links`
#

CREATE TABLE `jaipurgems_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_links`
#

#
# End of data contents of table `jaipurgems_links`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_options`
#

DROP TABLE IF EXISTS `jaipurgems_options`;


#
# Table structure of table `jaipurgems_options`
#

CREATE TABLE `jaipurgems_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_options`
#
INSERT INTO `jaipurgems_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/jaipurgems', 'yes'),
(2, 'home', 'http://localhost/jaipurgems', 'yes'),
(3, 'blogname', 'Jaipur Gems', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'email@jaipurgems.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%', 'yes'),
(29, 'rewrite_rules', 'a:85:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:29:"wp-sync-db-1.5/wp-sync-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'jaipurgems', 'yes'),
(41, 'stylesheet', 'jaipurgems', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'jaipurgems_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `jaipurgems_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:4:{i:1462871505;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1462871696;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1462871755;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.5.2-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:5:"4.5.1";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.5.2-partial-1.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-rollback-1.zip";}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:5:"4.5.1";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1462858538;s:15:"version_checked";s:5:"4.5.1";s:12:"translations";a:0:{}}', 'yes'),
(109, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1462858597;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:6:"3.1.10";s:9:"hello.php";s:3:"1.6";s:29:"wp-sync-db-1.5/wp-sync-db.php";s:3:"1.5";}s:8:"response";a:1:{s:114:"Applications/XAMPP/xamppfiles/htdocs/jaipurgems/wp-content/themes/jaipurgems/plugins/acf-repeater/acf-repeater.php";O:8:"stdClass":4:{s:4:"slug";s:12:"Applications";s:11:"new_version";s:5:"1.1.1";s:3:"url";s:59:"http://www.advancedcustomfields.com/add-ons/repeater-field/";s:7:"package";s:67:"http://download.advancedcustomfields.com/QJF7-L4IX-UCNP-RF2W/trunk/";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.10";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.10.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(112, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1462858551;s:7:"checked";a:4:{s:10:"jaipurgems";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(113, '_site_transient_timeout_browser_1e03bd10944baed95f122139c654416f', '1462957918', 'yes'),
(114, '_site_transient_browser_1e03bd10944baed95f122139c654416f', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"33.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(115, 'can_compress_scripts', '1', 'yes'),
(128, '_transient_timeout_plugin_slugs', '1462944970', 'no'),
(129, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:29:"wp-sync-db-1.5/wp-sync-db.php";}', 'no'),
(133, '_site_transient_timeout_available_translations', '1462364112', 'yes'),
(134, '_site_transient_available_translations', 'a:80:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-10 15:55:55";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.1/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 22:48:01";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-05-03 14:05:41";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-08 13:17:04";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-11 06:38:51";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-11 14:21:06";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-11 15:42:12";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 19:26:41";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-05-01 18:17:12";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-05-01 18:17:51";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-13 21:14:17";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-26 02:00:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-10 05:23:57";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-13 06:26:11";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-13 12:51:07";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-11 10:58:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-13 12:43:00";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-28 13:08:25";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-28 13:34:35";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-19 21:32:12";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-13 01:09:28";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 21:06:55";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 11:11:25";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-23 22:05:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-31 19:24:20";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-10 18:44:50";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-11 07:33:47";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-29 19:30:46";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-29 13:55:46";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.3";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.3/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-22 23:06:30";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-16 13:14:11";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-28 07:29:36";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-25 09:54:06";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-05-03 06:34:38";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-21 16:17:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-30 15:18:26";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-05-02 17:37:00";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-27 00:36:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-11 09:29:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-05-02 03:21:50";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-10 06:34:16";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-29 09:37:07";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-28 05:41:39";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.10/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-13 12:35:50";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-05-02 15:16:51";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-11 07:36:04";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-04-26 06:46:10";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-27 07:33:40";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.10/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-15 14:13:00";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-27 10:21:39";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 14:49:03";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-13 18:04:14";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-27 07:36:55";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 10:47:53";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-10 08:00:57";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 18:15:27";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-22 14:05:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-21 01:31:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:6:"4.1.10";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.10/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-05-03 13:19:01";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.1";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(135, 'WPLANG', '', 'yes'),
(141, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1462353530;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(142, 'current_theme', 'Jaipur Gems', 'yes'),
(143, 'theme_mods_jaipurgems', 'a:1:{i:0;b:0;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(147, 'acf_version', '4.4.5', 'yes'),
(157, 'options_facebook', 'https://www.facebook.com/', 'no'),
(158, '_options_facebook', 'field_5729f45105332', 'no'),
(159, 'options_twitter', 'https://twitter.com/', 'no'),
(160, '_options_twitter', 'field_5729f45e05333', 'no'),
(161, 'options_google_plus', 'https://plus.google.com/', 'no'),
(162, '_options_google_plus', 'field_5729f46905334', 'no'),
(163, 'options_pinterest', 'https://www.pinterest.com/', 'no'),
(164, '_options_pinterest', 'field_5729f47405335', 'no'),
(165, 'options_youtube', 'https://www.youtube.com/', 'no'),
(166, '_options_youtube', 'field_5729f47e05336', 'no'),
(167, '_transient_is_multi_author', '0', 'yes'),
(172, '_site_transient_timeout_theme_roots', '1462860340', 'yes'),
(173, '_site_transient_theme_roots', 'a:4:{s:10:"jaipurgems";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(174, '_site_transient_timeout_browser_504f5de7d9d9f7f14fd648d66aeb2825', '1463463341', 'yes'),
(175, '_site_transient_browser_504f5de7d9d9f7f14fd648d66aeb2825', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"46.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(176, 'recently_activated', 'a:0:{}', 'yes'),
(177, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"7nN0Xu6aUAvO18Ai8PLg06j5X2MrtCzo";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:1:{i:0;a:18:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:6:"action";s:4:"pull";s:15:"connection_info";s:95:"http://jaipurgems.heych.ae.php56-3.ord1-1.websitetestlink.com\r\nc1qrd2QLgMdXDC9Nxo+/c0MR/QTXvBkx";s:11:"replace_old";a:2:{i:1;s:56:"//jaipurgems.heych.ae.php56-3.ord1-1.websitetestlink.com";i:2;s:59:"/mnt/target03/360560/716304/jaipurgems.heych.ae/web/content";}s:11:"replace_new";a:2:{i:1;s:22:"//localhost/jaipurgems";i:2;s:48:"/Applications/XAMPP/xamppfiles/htdocs/jaipurgems";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:3:"new";s:18:"create_new_profile";s:54:"jaipurgems.heych.ae.php56-3.ord1-1.websitetestlink.com";s:4:"name";s:54:"jaipurgems.heych.ae.php56-3.ord1-1.websitetestlink.com";}}s:10:"verify_ssl";b:1;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(178, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1462901765', 'no') ;
INSERT INTO `jaipurgems_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(179, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 10 May 2016 05:07:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 14 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical user experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"49521@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 10 May 2016 05:36:04 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Tue, 10 May 2016 05:42:54 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Tue, 10 May 2016 05:07:54 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130911000210";}', 'no'),
(180, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1462901765', 'no'),
(181, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1462858565', 'no'),
(182, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1462901765', 'no'),
(183, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 10361 milliseconds with 44698 out of -1 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 10346 milliseconds with 184043 out of 203700 bytes received</p></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> UpdraftPlus Backup and Restoration&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=updraftplus&amp;_wpnonce=fef6ebb116&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install UpdraftPlus Backup and Restoration">(Install)</a></li></ul></div>', 'no'),
(184, 'wpsdb_error_log', '********************************************\n******  Log date: 2016/05/10 07:48:17 ******\n********************************************\n\nWPSDB Error: The connection succeeded but the remote site is configured to reject pull connections. You can change this in the "settings" tab on the remote site. (#122) <a href="#" class="try-again js-action-link">Try again?</a>\n\nAttempted to connect to: http://jaipurgems.heych.ae.php56-3.ord1-1.websitetestlink.com/wp-admin/admin-ajax.php\n\nArray\n(\n    [error] => 1\n    [message] => The connection succeeded but the remote site is configured to reject pull connections. You can change this in the "settings" tab on the remote site. (#122) <a href="#" class="try-again js-action-link">Try again?</a>\n)\n\n\n', 'yes') ;

#
# End of data contents of table `jaipurgems_options`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_postmeta`
#

DROP TABLE IF EXISTS `jaipurgems_postmeta`;


#
# Table structure of table `jaipurgems_postmeta`
#

CREATE TABLE `jaipurgems_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_postmeta`
#
INSERT INTO `jaipurgems_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1462369072:1'),
(7, 7, '_edit_last', '1'),
(8, 7, 'field_5729e3e55b5d7', 'a:8:{s:3:"key";s:19:"field_5729e3e55b5d7";s:5:"label";s:13:"Craftsmanship";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(9, 7, 'field_5729e3f35b5d8', 'a:11:{s:3:"key";s:19:"field_5729e3f35b5d8";s:5:"label";s:5:"Image";s:4:"name";s:19:"craftsmanship_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(10, 7, 'field_5729e4305b5d9', 'a:14:{s:3:"key";s:19:"field_5729e4305b5d9";s:5:"label";s:6:"Header";s:4:"name";s:20:"craftsmanship_header";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(11, 7, 'field_5729e4505b5da', 'a:13:{s:3:"key";s:19:"field_5729e4505b5da";s:5:"label";s:4:"Text";s:4:"name";s:18:"craftsmanship_text";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(12, 7, 'field_5729e4605b5db', 'a:14:{s:3:"key";s:19:"field_5729e4605b5db";s:5:"label";s:9:"Link Text";s:4:"name";s:23:"craftsmanship_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(13, 7, 'field_5729e4725b5dc', 'a:14:{s:3:"key";s:19:"field_5729e4725b5dc";s:5:"label";s:4:"Link";s:4:"name";s:18:"craftsmanship_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(15, 7, 'position', 'normal'),
(16, 7, 'layout', 'no_box'),
(17, 7, 'hide_on_screen', ''),
(18, 7, '_edit_lock', '1462367099:1'),
(19, 8, '_wp_attached_file', '2016/05/expertise.jpg'),
(20, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:677;s:6:"height";i:555;s:4:"file";s:21:"2016/05/expertise.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"expertise-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"expertise-300x246.jpg";s:5:"width";i:300;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 9, 'craftsmanship_image', '8'),
(22, 9, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(23, 9, 'craftsmanship_header', '700 Years of Craftsmanship'),
(24, 9, '_craftsmanship_header', 'field_5729e4305b5d9'),
(25, 9, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(26, 9, '_craftsmanship_text', 'field_5729e4505b5da'),
(27, 9, 'craftsmanship_link_text', 'Our Expertise'),
(28, 9, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(29, 9, 'craftsmanship_link', '#'),
(30, 9, '_craftsmanship_link', 'field_5729e4725b5dc'),
(31, 5, 'craftsmanship_image', '8'),
(32, 5, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(33, 5, 'craftsmanship_header', '700 Years of Craftsmanship'),
(34, 5, '_craftsmanship_header', 'field_5729e4305b5d9'),
(35, 5, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(36, 5, '_craftsmanship_text', 'field_5729e4505b5da'),
(37, 5, 'craftsmanship_link_text', 'Our Expertise'),
(38, 5, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(39, 5, 'craftsmanship_link', '#'),
(40, 5, '_craftsmanship_link', 'field_5729e4725b5dc'),
(42, 7, 'field_5729e6e82d47a', 'a:8:{s:3:"key";s:19:"field_5729e6e82d47a";s:5:"label";s:20:"Collections Sections";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(43, 7, 'field_5729e70b2d47b', 'a:11:{s:3:"key";s:19:"field_5729e70b2d47b";s:5:"label";s:10:"Left Image";s:4:"name";s:13:"cs_left_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(44, 7, 'field_5729e7752d47c', 'a:14:{s:3:"key";s:19:"field_5729e7752d47c";s:5:"label";s:12:"Left Heading";s:4:"name";s:15:"cs_left_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:10;}'),
(45, 7, 'field_5729e7882d47d', 'a:14:{s:3:"key";s:19:"field_5729e7882d47d";s:5:"label";s:14:"Left Link Text";s:4:"name";s:17:"cs_left_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:11;}'),
(46, 7, 'field_5729e79a2d47e', 'a:14:{s:3:"key";s:19:"field_5729e79a2d47e";s:5:"label";s:9:"Left Link";s:4:"name";s:12:"cs_left_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:12;}'),
(47, 7, 'field_5729e7a82d47f', 'a:11:{s:3:"key";s:19:"field_5729e7a82d47f";s:5:"label";s:15:"Right Top Image";s:4:"name";s:18:"cs_right_top_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:13;}'),
(48, 7, 'field_5729e7b52d480', 'a:14:{s:3:"key";s:19:"field_5729e7b52d480";s:5:"label";s:17:"Right Top Heading";s:4:"name";s:20:"cs_right_top_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:14;}'),
(49, 7, 'field_5729e7db2d481', 'a:14:{s:3:"key";s:19:"field_5729e7db2d481";s:5:"label";s:19:"Right Top Link Text";s:4:"name";s:22:"cs_right_top_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:15;}'),
(50, 7, 'field_5729e7e72d482', 'a:14:{s:3:"key";s:19:"field_5729e7e72d482";s:5:"label";s:14:"Right Top Link";s:4:"name";s:17:"cs_right_top_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:16;}'),
(51, 7, 'field_5729e7fa2d483', 'a:11:{s:3:"key";s:19:"field_5729e7fa2d483";s:5:"label";s:18:"Right Bottom Image";s:4:"name";s:21:"cs_right_bottom_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:17;}'),
(52, 7, 'field_5729e8142d484', 'a:14:{s:3:"key";s:19:"field_5729e8142d484";s:5:"label";s:20:"Right Bottom Heading";s:4:"name";s:23:"cs_right_bottom_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:18;}'),
(53, 7, 'field_5729e82b2d485', 'a:14:{s:3:"key";s:19:"field_5729e82b2d485";s:5:"label";s:22:"Right Bottom Link Text";s:4:"name";s:25:"cs_right_bottom_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:19;}'),
(54, 7, 'field_5729e8382d486', 'a:14:{s:3:"key";s:19:"field_5729e8382d486";s:5:"label";s:17:"Right Bottom Link";s:4:"name";s:20:"cs_right_bottom_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:20;}'),
(56, 10, '_wp_attached_file', '2016/05/necklaces-tile.jpg'),
(57, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:673;s:6:"height";i:555;s:4:"file";s:26:"2016/05/necklaces-tile.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"necklaces-tile-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"necklaces-tile-300x247.jpg";s:5:"width";i:300;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(58, 10, '_wp_attachment_image_alt', 'Necklaces'),
(59, 11, '_wp_attached_file', '2016/05/earrings-tile.jpg'),
(60, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:664;s:6:"height";i:273;s:4:"file";s:25:"2016/05/earrings-tile.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"earrings-tile-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"earrings-tile-300x123.jpg";s:5:"width";i:300;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 12, '_wp_attached_file', '2016/05/bangles-tile.jpg'),
(62, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:664;s:6:"height";i:273;s:4:"file";s:24:"2016/05/bangles-tile.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"bangles-tile-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"bangles-tile-300x123.jpg";s:5:"width";i:300;s:6:"height";i:123;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 12, '_wp_attachment_image_alt', 'Bangles'),
(64, 11, '_wp_attachment_image_alt', 'Earrings'),
(65, 13, 'craftsmanship_image', '8'),
(66, 13, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(67, 13, 'craftsmanship_header', '700 Years of Craftsmanship'),
(68, 13, '_craftsmanship_header', 'field_5729e4305b5d9'),
(69, 13, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(70, 13, '_craftsmanship_text', 'field_5729e4505b5da'),
(71, 13, 'craftsmanship_link_text', 'Our Expertise'),
(72, 13, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(73, 13, 'craftsmanship_link', '#'),
(74, 13, '_craftsmanship_link', 'field_5729e4725b5dc'),
(75, 13, 'cs_left_image', '10'),
(76, 13, '_cs_left_image', 'field_5729e70b2d47b'),
(77, 13, 'cs_left_heading', 'Necklaces'),
(78, 13, '_cs_left_heading', 'field_5729e7752d47c'),
(79, 13, 'left_link_text', 'Explore the collection'),
(80, 13, '_left_link_text', 'field_5729e7882d47d'),
(81, 13, 'cs_left_link', '#'),
(82, 13, '_cs_left_link', 'field_5729e79a2d47e'),
(83, 13, 'cs_right_top_image', '11'),
(84, 13, '_cs_right_top_image', 'field_5729e7a82d47f'),
(85, 13, 'right_top_heading', 'Earrings'),
(86, 13, '_right_top_heading', 'field_5729e7b52d480'),
(87, 13, 'cs_right_top_link_text', 'Explore the collection'),
(88, 13, '_cs_right_top_link_text', 'field_5729e82b2d485'),
(89, 13, 'cs_right_top_link', '#'),
(90, 13, '_cs_right_top_link', 'field_5729e8382d486'),
(91, 13, 'cs_right_bottom_image', '12'),
(92, 13, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(93, 13, 'cs_right_top_heading', 'Bangles'),
(94, 13, '_cs_right_top_heading', 'field_5729e8142d484'),
(95, 5, 'cs_left_image', '10'),
(96, 5, '_cs_left_image', 'field_5729e70b2d47b'),
(97, 5, 'cs_left_heading', 'Necklaces'),
(98, 5, '_cs_left_heading', 'field_5729e7752d47c'),
(99, 5, 'left_link_text', 'Explore the collection'),
(100, 5, '_left_link_text', 'field_5729e7882d47d'),
(101, 5, 'cs_left_link', '#'),
(102, 5, '_cs_left_link', 'field_5729e79a2d47e'),
(103, 5, 'cs_right_top_image', '11'),
(104, 5, '_cs_right_top_image', 'field_5729e7a82d47f'),
(105, 5, 'right_top_heading', 'Earrings'),
(106, 5, '_right_top_heading', 'field_5729e7b52d480'),
(107, 5, 'cs_right_top_link_text', 'Explore the collection') ;
INSERT INTO `jaipurgems_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(108, 5, '_cs_right_top_link_text', 'field_5729e7db2d481'),
(109, 5, 'cs_right_top_link', '#'),
(110, 5, '_cs_right_top_link', 'field_5729e7e72d482'),
(111, 5, 'cs_right_bottom_image', '12'),
(112, 5, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(113, 5, 'cs_right_top_heading', 'Earrings'),
(114, 5, '_cs_right_top_heading', 'field_5729e7b52d480'),
(117, 14, 'craftsmanship_image', '8'),
(118, 14, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(119, 14, 'craftsmanship_header', '700 Years of Craftsmanship'),
(120, 14, '_craftsmanship_header', 'field_5729e4305b5d9'),
(121, 14, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(122, 14, '_craftsmanship_text', 'field_5729e4505b5da'),
(123, 14, 'craftsmanship_link_text', 'Our Expertise'),
(124, 14, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(125, 14, 'craftsmanship_link', '#'),
(126, 14, '_craftsmanship_link', 'field_5729e4725b5dc'),
(127, 14, 'cs_left_image', '10'),
(128, 14, '_cs_left_image', 'field_5729e70b2d47b'),
(129, 14, 'cs_left_heading', 'Necklaces'),
(130, 14, '_cs_left_heading', 'field_5729e7752d47c'),
(131, 14, 'left_link_text', 'Explore the collection'),
(132, 14, '_left_link_text', 'field_5729e7882d47d'),
(133, 14, 'cs_left_link', '#'),
(134, 14, '_cs_left_link', 'field_5729e79a2d47e'),
(135, 14, 'cs_right_top_image', '11'),
(136, 14, '_cs_right_top_image', 'field_5729e7a82d47f'),
(137, 14, 'cs_right_top_heading', 'Earrings'),
(138, 14, '_cs_right_top_heading', 'field_5729e7b52d480'),
(139, 14, 'cs_right_top_link_text', 'Explore the collection'),
(140, 14, '_cs_right_top_link_text', 'field_5729e7db2d481'),
(141, 14, 'cs_right_top_link', '#'),
(142, 14, '_cs_right_top_link', 'field_5729e7e72d482'),
(143, 14, 'cs_right_bottom_image', '12'),
(144, 14, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(145, 14, 'cs_right_bottom_heading', 'Bangles'),
(146, 14, '_cs_right_bottom_heading', 'field_5729e8142d484'),
(147, 14, 'cs_right_bottom_link_text', 'Explore the collection'),
(148, 14, '_cs_right_bottom_link_text', 'field_5729e82b2d485'),
(149, 14, 'cs_right_bottom_link', '#'),
(150, 14, '_cs_right_bottom_link', 'field_5729e8382d486'),
(151, 5, 'cs_right_bottom_heading', 'Bangles'),
(152, 5, '_cs_right_bottom_heading', 'field_5729e8142d484'),
(153, 5, 'cs_right_bottom_link_text', 'Explore the collection'),
(154, 5, '_cs_right_bottom_link_text', 'field_5729e82b2d485'),
(155, 5, 'cs_right_bottom_link', '#'),
(156, 5, '_cs_right_bottom_link', 'field_5729e8382d486'),
(157, 7, 'field_5729ea5d02061', 'a:8:{s:3:"key";s:19:"field_5729ea5d02061";s:5:"label";s:11:"Home Slides";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(158, 7, 'field_5729ea7b02062', 'a:13:{s:3:"key";s:19:"field_5729ea7b02062";s:5:"label";s:11:"Home Slides";s:4:"name";s:11:"home_slides";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"sub_fields";a:2:{i:0;a:10:{s:3:"key";s:19:"field_5729ea9102063";s:5:"label";s:5:"Image";s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:12:"column_width";s:0:"";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:8:"order_no";i:0;}i:1;a:13:{s:3:"key";s:19:"field_5729ea9c02064";s:5:"label";s:4:"Text";s:4:"name";s:4:"text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:12:"column_width";s:0:"";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:8:"order_no";i:1;}}s:7:"row_min";s:1:"0";s:9:"row_limit";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:9:"Add Slide";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(162, 15, '_wp_attached_file', '2016/05/slide1.jpg'),
(163, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1347;s:6:"height";i:628;s:4:"file";s:18:"2016/05/slide1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide1-300x140.jpg";s:5:"width";i:300;s:6:"height";i:140;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide1-768x358.jpg";s:5:"width";i:768;s:6:"height";i:358;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"slide1-1024x477.jpg";s:5:"width";i:1024;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"slide1-1200x559.jpg";s:5:"width";i:1200;s:6:"height";i:559;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(164, 15, '_wp_attachment_image_alt', 'Slide 2'),
(165, 16, 'home_slides_0_image', '15'),
(166, 16, '_home_slides_0_image', 'field_5729ea9102063'),
(167, 16, 'home_slides_0_text', 'A quest<span>for beauty</span>'),
(168, 16, '_home_slides_0_text', 'field_5729ea9c02064'),
(169, 16, 'home_slides_1_image', '15'),
(170, 16, '_home_slides_1_image', 'field_5729ea9102063'),
(171, 16, 'home_slides_1_text', 'Lorem<span>ipsum dolor</span>'),
(172, 16, '_home_slides_1_text', 'field_5729ea9c02064'),
(173, 16, 'home_slides', '2'),
(174, 16, '_home_slides', 'field_5729ea7b02062'),
(175, 16, 'craftsmanship_image', '8'),
(176, 16, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(177, 16, 'craftsmanship_header', '700 Years of Craftsmanship'),
(178, 16, '_craftsmanship_header', 'field_5729e4305b5d9'),
(179, 16, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(180, 16, '_craftsmanship_text', 'field_5729e4505b5da'),
(181, 16, 'craftsmanship_link_text', 'Our Expertise'),
(182, 16, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(183, 16, 'craftsmanship_link', '#'),
(184, 16, '_craftsmanship_link', 'field_5729e4725b5dc'),
(185, 16, 'cs_left_image', '10'),
(186, 16, '_cs_left_image', 'field_5729e70b2d47b'),
(187, 16, 'cs_left_heading', 'Necklaces'),
(188, 16, '_cs_left_heading', 'field_5729e7752d47c'),
(189, 16, 'left_link_text', 'Explore the collection'),
(190, 16, '_left_link_text', 'field_5729e7882d47d'),
(191, 16, 'cs_left_link', '#'),
(192, 16, '_cs_left_link', 'field_5729e79a2d47e'),
(193, 16, 'cs_right_top_image', '11'),
(194, 16, '_cs_right_top_image', 'field_5729e7a82d47f'),
(195, 16, 'cs_right_top_heading', 'Earrings'),
(196, 16, '_cs_right_top_heading', 'field_5729e7b52d480'),
(197, 16, 'cs_right_top_link_text', 'Explore the collection'),
(198, 16, '_cs_right_top_link_text', 'field_5729e7db2d481'),
(199, 16, 'cs_right_top_link', '#'),
(200, 16, '_cs_right_top_link', 'field_5729e7e72d482'),
(201, 16, 'cs_right_bottom_image', '12'),
(202, 16, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(203, 16, 'cs_right_bottom_heading', 'Bangles'),
(204, 16, '_cs_right_bottom_heading', 'field_5729e8142d484'),
(205, 16, 'cs_right_bottom_link_text', 'Explore the collection'),
(206, 16, '_cs_right_bottom_link_text', 'field_5729e82b2d485'),
(207, 16, 'cs_right_bottom_link', '#'),
(208, 16, '_cs_right_bottom_link', 'field_5729e8382d486'),
(209, 5, 'home_slides_0_image', '15'),
(210, 5, '_home_slides_0_image', 'field_5729ea9102063'),
(211, 5, 'home_slides_0_text', 'A quest<span>for beauty</span>'),
(212, 5, '_home_slides_0_text', 'field_5729ea9c02064') ;
INSERT INTO `jaipurgems_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(213, 5, 'home_slides_1_image', '15'),
(214, 5, '_home_slides_1_image', 'field_5729ea9102063'),
(215, 5, 'home_slides_1_text', 'Lorem<span>ipsum dolor</span>'),
(216, 5, '_home_slides_1_text', 'field_5729ea9c02064'),
(217, 5, 'home_slides', '2'),
(218, 5, '_home_slides', 'field_5729ea7b02062'),
(219, 7, 'field_5729ecbb902ed', 'a:8:{s:3:"key";s:19:"field_5729ecbb902ed";s:5:"label";s:14:"4 Tile Section";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:21;}'),
(220, 7, 'field_5729eccb902ee', 'a:11:{s:3:"key";s:19:"field_5729eccb902ee";s:5:"label";s:16:"Left Small Image";s:4:"name";s:19:"4t_left_small_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:22;}'),
(221, 7, 'field_5729ecfb902ef', 'a:14:{s:3:"key";s:19:"field_5729ecfb902ef";s:5:"label";s:18:"Left Small Heading";s:4:"name";s:21:"4t_left_small_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:23;}'),
(222, 7, 'field_5729ed11902f0', 'a:14:{s:3:"key";s:19:"field_5729ed11902f0";s:5:"label";s:20:"Left Small Link Text";s:4:"name";s:23:"4t_left_small_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:24;}'),
(223, 7, 'field_5729ed1f902f1', 'a:14:{s:3:"key";s:19:"field_5729ed1f902f1";s:5:"label";s:15:"Left Small Link";s:4:"name";s:18:"4t_left_small_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:25;}'),
(224, 7, 'field_5729ed29902f2', 'a:11:{s:3:"key";s:19:"field_5729ed29902f2";s:5:"label";s:15:"Left Long Image";s:4:"name";s:18:"4t_left_long_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:26;}'),
(225, 7, 'field_5729ed35902f3', 'a:14:{s:3:"key";s:19:"field_5729ed35902f3";s:5:"label";s:17:"Left Long Heading";s:4:"name";s:20:"4t_left_long_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:27;}'),
(226, 7, 'field_5729ed42902f4', 'a:14:{s:3:"key";s:19:"field_5729ed42902f4";s:5:"label";s:19:"Left Long Link Text";s:4:"name";s:22:"4t_left_long_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:28;}'),
(227, 7, 'field_5729ed52902f5', 'a:14:{s:3:"key";s:19:"field_5729ed52902f5";s:5:"label";s:14:"Left Long Link";s:4:"name";s:17:"4t_left_long_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:29;}'),
(228, 7, 'field_5729ed6a902f6', 'a:11:{s:3:"key";s:19:"field_5729ed6a902f6";s:5:"label";s:15:"Right Top Image";s:4:"name";s:18:"4t_right_top_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:30;}'),
(229, 7, 'field_5729ed76902f7', 'a:14:{s:3:"key";s:19:"field_5729ed76902f7";s:5:"label";s:17:"Right Top Heading";s:4:"name";s:20:"4t_right_top_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:31;}'),
(230, 7, 'field_5729ed7f902f8', 'a:14:{s:3:"key";s:19:"field_5729ed7f902f8";s:5:"label";s:19:"Right Top Link Text";s:4:"name";s:22:"4t_right_top_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:32;}'),
(231, 7, 'field_5729ed98902f9', 'a:14:{s:3:"key";s:19:"field_5729ed98902f9";s:5:"label";s:14:"Right Top Link";s:4:"name";s:17:"4t_right_top_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:33;}'),
(232, 7, 'field_5729eda6902fa', 'a:11:{s:3:"key";s:19:"field_5729eda6902fa";s:5:"label";s:18:"Right Bottom Image";s:4:"name";s:21:"4t_right_bottom_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:34;}'),
(233, 7, 'field_5729edb2902fb', 'a:14:{s:3:"key";s:19:"field_5729edb2902fb";s:5:"label";s:20:"Right Bottom Heading";s:4:"name";s:23:"4t_right_bottom_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:35;}'),
(234, 7, 'field_5729edbc902fc', 'a:14:{s:3:"key";s:19:"field_5729edbc902fc";s:5:"label";s:22:"Right Bottom Link Text";s:4:"name";s:25:"4t_right_bottom_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:36;}'),
(235, 7, 'field_5729edcc902fd', 'a:14:{s:3:"key";s:19:"field_5729edcc902fd";s:5:"label";s:17:"Right Bottom Link";s:4:"name";s:17:"right_bottom_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:37;}'),
(237, 17, '_wp_attached_file', '2016/05/gems-tile.jpg'),
(238, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:485;s:6:"height";i:286;s:4:"file";s:21:"2016/05/gems-tile.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"gems-tile-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"gems-tile-300x177.jpg";s:5:"width";i:300;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(239, 17, '_wp_attachment_image_alt', 'Gems'),
(240, 18, '_wp_attached_file', '2016/05/iconic-tile.jpg'),
(241, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:485;s:6:"height";i:603;s:4:"file";s:23:"2016/05/iconic-tile.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"iconic-tile-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"iconic-tile-241x300.jpg";s:5:"width";i:241;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(242, 19, '_wp_attached_file', '2016/05/diamonds-tile.jpg'),
(243, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:852;s:6:"height";i:445;s:4:"file";s:25:"2016/05/diamonds-tile.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"diamonds-tile-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"diamonds-tile-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"diamonds-tile-768x401.jpg";s:5:"width";i:768;s:6:"height";i:401;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(244, 20, '_wp_attached_file', '2016/05/rajputana.jpg'),
(245, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:852;s:6:"height";i:443;s:4:"file";s:21:"2016/05/rajputana.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"rajputana-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"rajputana-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"rajputana-768x399.jpg";s:5:"width";i:768;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(247, 21, 'home_slides_0_image', '15'),
(248, 21, '_home_slides_0_image', 'field_5729ea9102063'),
(249, 21, 'home_slides_0_text', 'A quest<span>for beauty</span>'),
(250, 21, '_home_slides_0_text', 'field_5729ea9c02064'),
(251, 21, 'home_slides_1_image', '15'),
(252, 21, '_home_slides_1_image', 'field_5729ea9102063'),
(253, 21, 'home_slides_1_text', 'Lorem<span>ipsum dolor</span>'),
(254, 21, '_home_slides_1_text', 'field_5729ea9c02064'),
(255, 21, 'home_slides', '2'),
(256, 21, '_home_slides', 'field_5729ea7b02062'),
(257, 21, 'craftsmanship_image', '8'),
(258, 21, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(259, 21, 'craftsmanship_header', '700 Years of Craftsmanship'),
(260, 21, '_craftsmanship_header', 'field_5729e4305b5d9'),
(261, 21, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(262, 21, '_craftsmanship_text', 'field_5729e4505b5da'),
(263, 21, 'craftsmanship_link_text', 'Our Expertise'),
(264, 21, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(265, 21, 'craftsmanship_link', '#'),
(266, 21, '_craftsmanship_link', 'field_5729e4725b5dc'),
(267, 21, 'cs_left_image', '10'),
(268, 21, '_cs_left_image', 'field_5729e70b2d47b'),
(269, 21, 'cs_left_heading', 'Necklaces'),
(270, 21, '_cs_left_heading', 'field_5729e7752d47c'),
(271, 21, 'cs_left_link_text', 'Explore the collection'),
(272, 21, '_cs_left_link_text', 'field_5729e7882d47d'),
(273, 21, 'cs_left_link', '#'),
(274, 21, '_cs_left_link', 'field_5729e79a2d47e'),
(275, 21, 'cs_right_top_image', '11'),
(276, 21, '_cs_right_top_image', 'field_5729e7a82d47f'),
(277, 21, 'cs_right_top_heading', 'Earrings'),
(278, 21, '_cs_right_top_heading', 'field_5729e7b52d480'),
(279, 21, 'cs_right_top_link_text', 'Explore the collection'),
(280, 21, '_cs_right_top_link_text', 'field_5729e7db2d481'),
(281, 21, 'cs_right_top_link', '#'),
(282, 21, '_cs_right_top_link', 'field_5729e7e72d482'),
(283, 21, 'cs_right_bottom_image', '12'),
(284, 21, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(285, 21, 'cs_right_bottom_heading', 'Bangles'),
(286, 21, '_cs_right_bottom_heading', 'field_5729e8142d484'),
(287, 21, 'cs_right_bottom_link_text', 'Explore the collection'),
(288, 21, '_cs_right_bottom_link_text', 'field_5729e82b2d485'),
(289, 21, 'cs_right_bottom_link', '#'),
(290, 21, '_cs_right_bottom_link', 'field_5729e8382d486'),
(291, 21, '4t_left_small_image', '17'),
(292, 21, '_4t_left_small_image', 'field_5729eccb902ee'),
(293, 21, '4t_left_small_heading', 'Jaipur Gems Jewellery'),
(294, 21, '_4t_left_small_heading', 'field_5729ecfb902ef'),
(295, 21, '4t_left_small_link_text', 'Shop Now'),
(296, 21, '_4t_left_small_link_text', 'field_5729ed11902f0'),
(297, 21, '4t_left_small_link', '#'),
(298, 21, '_4t_left_small_link', 'field_5729ed1f902f1'),
(299, 21, '4t_left_long_image', '18'),
(300, 21, '_4t_left_long_image', 'field_5729ed29902f2'),
(301, 21, '4t_left_long_heading', 'Iconic Client'),
(302, 21, '_4t_left_long_heading', 'field_5729ed35902f3'),
(303, 21, '4t_left_long_link_text', 'Alia Bhatt'),
(304, 21, '_4t_left_long_link_text', 'field_5729ed42902f4'),
(305, 21, '4t_left_long_link', '#'),
(306, 21, '_4t_left_long_link', 'field_5729ed52902f5'),
(307, 21, '4t_right_top_image', '19'),
(308, 21, '_4t_right_top_image', 'field_5729ed6a902f6'),
(309, 21, '4t_right_top_heading', 'Fall Brilliantly In Love'),
(310, 21, '_4t_right_top_heading', 'field_5729ed76902f7'),
(311, 21, '4t_right_top_link_text', 'See Our Diamond Collection'),
(312, 21, '_4t_right_top_link_text', 'field_5729ed7f902f8'),
(313, 21, '4t_right_top_link', '#'),
(314, 21, '_4t_right_top_link', 'field_5729ed98902f9') ;
INSERT INTO `jaipurgems_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(315, 21, '4t_right_bottom_image', '20'),
(316, 21, '_4t_right_bottom_image', 'field_5729eda6902fa'),
(317, 21, 'right_bottom_heading', 'The Pride of Rajputana'),
(318, 21, '_right_bottom_heading', 'field_5729edb2902fb'),
(319, 21, '4t_right_bottom_link_text', 'Discover the Collection'),
(320, 21, '_4t_right_bottom_link_text', 'field_5729edbc902fc'),
(321, 21, 'right_bottom_link', '#'),
(322, 21, '_right_bottom_link', 'field_5729edcc902fd'),
(323, 5, 'cs_left_link_text', 'Explore the collection'),
(324, 5, '_cs_left_link_text', 'field_5729e7882d47d'),
(325, 5, '4t_left_small_image', '17'),
(326, 5, '_4t_left_small_image', 'field_5729eccb902ee'),
(327, 5, '4t_left_small_heading', 'Jaipur Gems Jewellery'),
(328, 5, '_4t_left_small_heading', 'field_5729ecfb902ef'),
(329, 5, '4t_left_small_link_text', 'Shop Now'),
(330, 5, '_4t_left_small_link_text', 'field_5729ed11902f0'),
(331, 5, '4t_left_small_link', '#'),
(332, 5, '_4t_left_small_link', 'field_5729ed1f902f1'),
(333, 5, '4t_left_long_image', '18'),
(334, 5, '_4t_left_long_image', 'field_5729ed29902f2'),
(335, 5, '4t_left_long_heading', 'Iconic Client'),
(336, 5, '_4t_left_long_heading', 'field_5729ed35902f3'),
(337, 5, '4t_left_long_link_text', 'Alia Bhatt'),
(338, 5, '_4t_left_long_link_text', 'field_5729ed42902f4'),
(339, 5, '4t_left_long_link', '#'),
(340, 5, '_4t_left_long_link', 'field_5729ed52902f5'),
(341, 5, '4t_right_top_image', '19'),
(342, 5, '_4t_right_top_image', 'field_5729ed6a902f6'),
(343, 5, '4t_right_top_heading', 'Fall Brilliantly In Love'),
(344, 5, '_4t_right_top_heading', 'field_5729ed76902f7'),
(345, 5, '4t_right_top_link_text', 'See Our Diamond Collection'),
(346, 5, '_4t_right_top_link_text', 'field_5729ed7f902f8'),
(347, 5, '4t_right_top_link', '#'),
(348, 5, '_4t_right_top_link', 'field_5729ed98902f9'),
(349, 5, '4t_right_bottom_image', '20'),
(350, 5, '_4t_right_bottom_image', 'field_5729eda6902fa'),
(351, 5, 'right_bottom_heading', 'The Pride of Rajputana'),
(352, 5, '_right_bottom_heading', 'field_5729edb2902fb'),
(353, 5, '4t_right_bottom_link_text', 'Discover the Collection'),
(354, 5, '_4t_right_bottom_link_text', 'field_5729edbc902fc'),
(355, 5, 'right_bottom_link', '#'),
(356, 5, '_right_bottom_link', 'field_5729edcc902fd'),
(357, 7, 'field_5729eec5a1d44', 'a:8:{s:3:"key";s:19:"field_5729eec5a1d44";s:5:"label";s:14:"2 Tile Section";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:38;}'),
(358, 7, 'field_5729eedfa1d45', 'a:11:{s:3:"key";s:19:"field_5729eedfa1d45";s:5:"label";s:10:"Left Image";s:4:"name";s:13:"2t_left_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:39;}'),
(359, 7, 'field_5729eef9a1d46', 'a:14:{s:3:"key";s:19:"field_5729eef9a1d46";s:5:"label";s:12:"Left Heading";s:4:"name";s:15:"2t_left_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:40;}'),
(360, 7, 'field_5729ef07a1d47', 'a:14:{s:3:"key";s:19:"field_5729ef07a1d47";s:5:"label";s:14:"Left Link Text";s:4:"name";s:17:"2t_left_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:41;}'),
(361, 7, 'field_5729ef1aa1d48', 'a:14:{s:3:"key";s:19:"field_5729ef1aa1d48";s:5:"label";s:9:"Left Link";s:4:"name";s:12:"2t_left_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:42;}'),
(362, 7, 'field_5729ef24a1d49', 'a:11:{s:3:"key";s:19:"field_5729ef24a1d49";s:5:"label";s:11:"Right Image";s:4:"name";s:14:"2t_right_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:43;}'),
(363, 7, 'field_5729ef4ea1d4a', 'a:14:{s:3:"key";s:19:"field_5729ef4ea1d4a";s:5:"label";s:13:"Right Heading";s:4:"name";s:16:"2t_right_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:44;}'),
(364, 7, 'field_5729ef58a1d4b', 'a:14:{s:3:"key";s:19:"field_5729ef58a1d4b";s:5:"label";s:15:"Right Link Text";s:4:"name";s:18:"2t_right_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:45;}'),
(365, 7, 'field_5729ef64a1d4c', 'a:14:{s:3:"key";s:19:"field_5729ef64a1d4c";s:5:"label";s:10:"Right Link";s:4:"name";s:13:"2t_right_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:46;}'),
(368, 22, 'home_slides_0_image', '15'),
(369, 22, '_home_slides_0_image', 'field_5729ea9102063'),
(370, 22, 'home_slides_0_text', 'A quest<span>for beauty</span>'),
(371, 22, '_home_slides_0_text', 'field_5729ea9c02064'),
(372, 22, 'home_slides_1_image', '15'),
(373, 22, '_home_slides_1_image', 'field_5729ea9102063'),
(374, 22, 'home_slides_1_text', 'Lorem<span>ipsum dolor</span>'),
(375, 22, '_home_slides_1_text', 'field_5729ea9c02064'),
(376, 22, 'home_slides', '2'),
(377, 22, '_home_slides', 'field_5729ea7b02062'),
(378, 22, 'craftsmanship_image', '8'),
(379, 22, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(380, 22, 'craftsmanship_header', '700 Years of Craftsmanship'),
(381, 22, '_craftsmanship_header', 'field_5729e4305b5d9'),
(382, 22, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(383, 22, '_craftsmanship_text', 'field_5729e4505b5da'),
(384, 22, 'craftsmanship_link_text', 'Our Expertise'),
(385, 22, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(386, 22, 'craftsmanship_link', '#'),
(387, 22, '_craftsmanship_link', 'field_5729e4725b5dc'),
(388, 22, 'cs_left_image', '10'),
(389, 22, '_cs_left_image', 'field_5729e70b2d47b'),
(390, 22, 'cs_left_heading', 'Necklaces'),
(391, 22, '_cs_left_heading', 'field_5729e7752d47c'),
(392, 22, 'cs_left_link_text', 'Explore the collection'),
(393, 22, '_cs_left_link_text', 'field_5729e7882d47d'),
(394, 22, 'cs_left_link', '#'),
(395, 22, '_cs_left_link', 'field_5729e79a2d47e'),
(396, 22, 'cs_right_top_image', '11'),
(397, 22, '_cs_right_top_image', 'field_5729e7a82d47f'),
(398, 22, 'cs_right_top_heading', 'Earrings'),
(399, 22, '_cs_right_top_heading', 'field_5729e7b52d480'),
(400, 22, 'cs_right_top_link_text', 'Explore the collection'),
(401, 22, '_cs_right_top_link_text', 'field_5729e7db2d481'),
(402, 22, 'cs_right_top_link', '#'),
(403, 22, '_cs_right_top_link', 'field_5729e7e72d482'),
(404, 22, 'cs_right_bottom_image', '12'),
(405, 22, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(406, 22, 'cs_right_bottom_heading', 'Bangles'),
(407, 22, '_cs_right_bottom_heading', 'field_5729e8142d484'),
(408, 22, 'cs_right_bottom_link_text', 'Explore the collection'),
(409, 22, '_cs_right_bottom_link_text', 'field_5729e82b2d485'),
(410, 22, 'cs_right_bottom_link', '#'),
(411, 22, '_cs_right_bottom_link', 'field_5729e8382d486'),
(412, 22, '4t_left_small_image', '17'),
(413, 22, '_4t_left_small_image', 'field_5729eccb902ee'),
(414, 22, '4t_left_small_heading', 'Jaipur Gems Jewellery'),
(415, 22, '_4t_left_small_heading', 'field_5729ecfb902ef'),
(416, 22, '4t_left_small_link_text', 'Shop Now') ;
INSERT INTO `jaipurgems_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(417, 22, '_4t_left_small_link_text', 'field_5729ed11902f0'),
(418, 22, '4t_left_small_link', '#'),
(419, 22, '_4t_left_small_link', 'field_5729ed1f902f1'),
(420, 22, '4t_left_long_image', '18'),
(421, 22, '_4t_left_long_image', 'field_5729ed29902f2'),
(422, 22, '4t_left_long_heading', 'Iconic Client'),
(423, 22, '_4t_left_long_heading', 'field_5729ed35902f3'),
(424, 22, '4t_left_long_link_text', 'Alia Bhatt'),
(425, 22, '_4t_left_long_link_text', 'field_5729ed42902f4'),
(426, 22, '4t_left_long_link', '#'),
(427, 22, '_4t_left_long_link', 'field_5729ed52902f5'),
(428, 22, '4t_right_top_image', '19'),
(429, 22, '_4t_right_top_image', 'field_5729ed6a902f6'),
(430, 22, '4t_right_top_heading', 'Fall Brilliantly In Love'),
(431, 22, '_4t_right_top_heading', 'field_5729ed76902f7'),
(432, 22, '4t_right_top_link_text', 'See Our Diamond Collection'),
(433, 22, '_4t_right_top_link_text', 'field_5729ed7f902f8'),
(434, 22, '4t_right_top_link', '#'),
(435, 22, '_4t_right_top_link', 'field_5729ed98902f9'),
(436, 22, '4t_right_bottom_image', '20'),
(437, 22, '_4t_right_bottom_image', 'field_5729eda6902fa'),
(438, 22, '4t_right_bottom_heading', 'The Pride of Rajputana'),
(439, 22, '_4t_right_bottom_heading', 'field_5729edb2902fb'),
(440, 22, '4t_right_bottom_link_text', 'Discover the Collection'),
(441, 22, '_4t_right_bottom_link_text', 'field_5729edbc902fc'),
(442, 22, 'right_bottom_link', '#'),
(443, 22, '_right_bottom_link', 'field_5729edcc902fd'),
(444, 22, '2t_left_image', ''),
(445, 22, '_2t_left_image', 'field_5729eedfa1d45'),
(446, 22, '2t_left_heading', ''),
(447, 22, '_2t_left_heading', 'field_5729eef9a1d46'),
(448, 22, '2t_left_link_text', ''),
(449, 22, '_2t_left_link_text', 'field_5729ef07a1d47'),
(450, 22, '2t_left_link', ''),
(451, 22, '_2t_left_link', 'field_5729ef1aa1d48'),
(452, 22, '2t_right_image', ''),
(453, 22, '_2t_right_image', 'field_5729ef24a1d49'),
(454, 22, '2t_right_heading', ''),
(455, 22, '_2t_right_heading', 'field_5729ef4ea1d4a'),
(456, 22, '2t_right_link_text', ''),
(457, 22, '_2t_right_link_text', 'field_5729ef58a1d4b'),
(458, 22, '2t_right_link', ''),
(459, 22, '_2t_right_link', 'field_5729ef64a1d4c'),
(460, 5, '4t_right_bottom_heading', 'The Pride of Rajputana'),
(461, 5, '_4t_right_bottom_heading', 'field_5729edb2902fb'),
(462, 5, '2t_left_image', '23'),
(463, 5, '_2t_left_image', 'field_5729eedfa1d45'),
(464, 5, '2t_left_heading', 'The Arabian Princess'),
(465, 5, '_2t_left_heading', 'field_5729eef9a1d46'),
(466, 5, '2t_left_link_text', 'Explore the collection'),
(467, 5, '_2t_left_link_text', 'field_5729ef07a1d47'),
(468, 5, '2t_left_link', '#'),
(469, 5, '_2t_left_link', 'field_5729ef1aa1d48'),
(470, 5, '2t_right_image', '24'),
(471, 5, '_2t_right_image', 'field_5729ef24a1d49'),
(472, 5, '2t_right_heading', 'History & Heritage'),
(473, 5, '_2t_right_heading', 'field_5729ef4ea1d4a'),
(474, 5, '2t_right_link_text', 'Learn more'),
(475, 5, '_2t_right_link_text', 'field_5729ef58a1d4b'),
(476, 5, '2t_right_link', '#'),
(477, 5, '_2t_right_link', 'field_5729ef64a1d4c'),
(478, 23, '_wp_attached_file', '2016/05/princess.jpg'),
(479, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:673;s:6:"height";i:555;s:4:"file";s:20:"2016/05/princess.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"princess-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"princess-300x247.jpg";s:5:"width";i:300;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(480, 23, '_wp_attachment_image_alt', 'Arabian Princess'),
(481, 24, '_wp_attached_file', '2016/05/history.jpg'),
(482, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:673;s:6:"height";i:555;s:4:"file";s:19:"2016/05/history.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"history-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"history-300x247.jpg";s:5:"width";i:300;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(483, 25, 'home_slides_0_image', '15'),
(484, 25, '_home_slides_0_image', 'field_5729ea9102063'),
(485, 25, 'home_slides_0_text', 'A quest<span>for beauty</span>'),
(486, 25, '_home_slides_0_text', 'field_5729ea9c02064'),
(487, 25, 'home_slides_1_image', '15'),
(488, 25, '_home_slides_1_image', 'field_5729ea9102063'),
(489, 25, 'home_slides_1_text', 'Lorem<span>ipsum dolor</span>'),
(490, 25, '_home_slides_1_text', 'field_5729ea9c02064'),
(491, 25, 'home_slides', '2'),
(492, 25, '_home_slides', 'field_5729ea7b02062'),
(493, 25, 'craftsmanship_image', '8'),
(494, 25, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(495, 25, 'craftsmanship_header', '700 Years of Craftsmanship'),
(496, 25, '_craftsmanship_header', 'field_5729e4305b5d9'),
(497, 25, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(498, 25, '_craftsmanship_text', 'field_5729e4505b5da'),
(499, 25, 'craftsmanship_link_text', 'Our Expertise'),
(500, 25, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(501, 25, 'craftsmanship_link', '#'),
(502, 25, '_craftsmanship_link', 'field_5729e4725b5dc'),
(503, 25, 'cs_left_image', '10'),
(504, 25, '_cs_left_image', 'field_5729e70b2d47b'),
(505, 25, 'cs_left_heading', 'Necklaces'),
(506, 25, '_cs_left_heading', 'field_5729e7752d47c'),
(507, 25, 'cs_left_link_text', 'Explore the collection'),
(508, 25, '_cs_left_link_text', 'field_5729e7882d47d'),
(509, 25, 'cs_left_link', '#'),
(510, 25, '_cs_left_link', 'field_5729e79a2d47e'),
(511, 25, 'cs_right_top_image', '11'),
(512, 25, '_cs_right_top_image', 'field_5729e7a82d47f'),
(513, 25, 'cs_right_top_heading', 'Earrings'),
(514, 25, '_cs_right_top_heading', 'field_5729e7b52d480'),
(515, 25, 'cs_right_top_link_text', 'Explore the collection'),
(516, 25, '_cs_right_top_link_text', 'field_5729e7db2d481') ;
INSERT INTO `jaipurgems_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(517, 25, 'cs_right_top_link', '#'),
(518, 25, '_cs_right_top_link', 'field_5729e7e72d482'),
(519, 25, 'cs_right_bottom_image', '12'),
(520, 25, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(521, 25, 'cs_right_bottom_heading', 'Bangles'),
(522, 25, '_cs_right_bottom_heading', 'field_5729e8142d484'),
(523, 25, 'cs_right_bottom_link_text', 'Explore the collection'),
(524, 25, '_cs_right_bottom_link_text', 'field_5729e82b2d485'),
(525, 25, 'cs_right_bottom_link', '#'),
(526, 25, '_cs_right_bottom_link', 'field_5729e8382d486'),
(527, 25, '4t_left_small_image', '17'),
(528, 25, '_4t_left_small_image', 'field_5729eccb902ee'),
(529, 25, '4t_left_small_heading', 'Jaipur Gems Jewellery'),
(530, 25, '_4t_left_small_heading', 'field_5729ecfb902ef'),
(531, 25, '4t_left_small_link_text', 'Shop Now'),
(532, 25, '_4t_left_small_link_text', 'field_5729ed11902f0'),
(533, 25, '4t_left_small_link', '#'),
(534, 25, '_4t_left_small_link', 'field_5729ed1f902f1'),
(535, 25, '4t_left_long_image', '18'),
(536, 25, '_4t_left_long_image', 'field_5729ed29902f2'),
(537, 25, '4t_left_long_heading', 'Iconic Client'),
(538, 25, '_4t_left_long_heading', 'field_5729ed35902f3'),
(539, 25, '4t_left_long_link_text', 'Alia Bhatt'),
(540, 25, '_4t_left_long_link_text', 'field_5729ed42902f4'),
(541, 25, '4t_left_long_link', '#'),
(542, 25, '_4t_left_long_link', 'field_5729ed52902f5'),
(543, 25, '4t_right_top_image', '19'),
(544, 25, '_4t_right_top_image', 'field_5729ed6a902f6'),
(545, 25, '4t_right_top_heading', 'Fall Brilliantly In Love'),
(546, 25, '_4t_right_top_heading', 'field_5729ed76902f7'),
(547, 25, '4t_right_top_link_text', 'See Our Diamond Collection'),
(548, 25, '_4t_right_top_link_text', 'field_5729ed7f902f8'),
(549, 25, '4t_right_top_link', '#'),
(550, 25, '_4t_right_top_link', 'field_5729ed98902f9'),
(551, 25, '4t_right_bottom_image', '20'),
(552, 25, '_4t_right_bottom_image', 'field_5729eda6902fa'),
(553, 25, '4t_right_bottom_heading', 'The Pride of Rajputana'),
(554, 25, '_4t_right_bottom_heading', 'field_5729edb2902fb'),
(555, 25, '4t_right_bottom_link_text', 'Discover the Collection'),
(556, 25, '_4t_right_bottom_link_text', 'field_5729edbc902fc'),
(557, 25, 'right_bottom_link', '#'),
(558, 25, '_right_bottom_link', 'field_5729edcc902fd'),
(559, 25, '2t_left_image', '23'),
(560, 25, '_2t_left_image', 'field_5729eedfa1d45'),
(561, 25, '2t_left_heading', 'The Arabian Princess'),
(562, 25, '_2t_left_heading', 'field_5729eef9a1d46'),
(563, 25, '2t_left_link_text', 'Explore the collection'),
(564, 25, '_2t_left_link_text', 'field_5729ef07a1d47'),
(565, 25, '2t_left_link', '#'),
(566, 25, '_2t_left_link', 'field_5729ef1aa1d48'),
(567, 25, '2t_right_image', '24'),
(568, 25, '_2t_right_image', 'field_5729ef24a1d49'),
(569, 25, '2t_right_heading', 'History & Heritage'),
(570, 25, '_2t_right_heading', 'field_5729ef4ea1d4a'),
(571, 25, '2t_right_link_text', 'Explore the collection'),
(572, 25, '_2t_right_link_text', 'field_5729ef58a1d4b'),
(573, 25, '2t_right_link', '#'),
(574, 25, '_2t_right_link', 'field_5729ef64a1d4c'),
(575, 26, 'home_slides_0_image', '15'),
(576, 26, '_home_slides_0_image', 'field_5729ea9102063'),
(577, 26, 'home_slides_0_text', 'A quest<span>for beauty</span>'),
(578, 26, '_home_slides_0_text', 'field_5729ea9c02064'),
(579, 26, 'home_slides_1_image', '15'),
(580, 26, '_home_slides_1_image', 'field_5729ea9102063'),
(581, 26, 'home_slides_1_text', 'Lorem<span>ipsum dolor</span>'),
(582, 26, '_home_slides_1_text', 'field_5729ea9c02064'),
(583, 26, 'home_slides', '2'),
(584, 26, '_home_slides', 'field_5729ea7b02062'),
(585, 26, 'craftsmanship_image', '8'),
(586, 26, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(587, 26, 'craftsmanship_header', '700 Years of Craftsmanship'),
(588, 26, '_craftsmanship_header', 'field_5729e4305b5d9'),
(589, 26, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(590, 26, '_craftsmanship_text', 'field_5729e4505b5da'),
(591, 26, 'craftsmanship_link_text', 'Our Expertise'),
(592, 26, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(593, 26, 'craftsmanship_link', '#'),
(594, 26, '_craftsmanship_link', 'field_5729e4725b5dc'),
(595, 26, 'cs_left_image', '10'),
(596, 26, '_cs_left_image', 'field_5729e70b2d47b'),
(597, 26, 'cs_left_heading', 'Necklaces'),
(598, 26, '_cs_left_heading', 'field_5729e7752d47c'),
(599, 26, 'cs_left_link_text', 'Explore the collection'),
(600, 26, '_cs_left_link_text', 'field_5729e7882d47d'),
(601, 26, 'cs_left_link', '#'),
(602, 26, '_cs_left_link', 'field_5729e79a2d47e'),
(603, 26, 'cs_right_top_image', '11'),
(604, 26, '_cs_right_top_image', 'field_5729e7a82d47f'),
(605, 26, 'cs_right_top_heading', 'Earrings'),
(606, 26, '_cs_right_top_heading', 'field_5729e7b52d480'),
(607, 26, 'cs_right_top_link_text', 'Explore the collection'),
(608, 26, '_cs_right_top_link_text', 'field_5729e7db2d481'),
(609, 26, 'cs_right_top_link', '#'),
(610, 26, '_cs_right_top_link', 'field_5729e7e72d482'),
(611, 26, 'cs_right_bottom_image', '12'),
(612, 26, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(613, 26, 'cs_right_bottom_heading', 'Bangles'),
(614, 26, '_cs_right_bottom_heading', 'field_5729e8142d484'),
(615, 26, 'cs_right_bottom_link_text', 'Explore the collection'),
(616, 26, '_cs_right_bottom_link_text', 'field_5729e82b2d485') ;
INSERT INTO `jaipurgems_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(617, 26, 'cs_right_bottom_link', '#'),
(618, 26, '_cs_right_bottom_link', 'field_5729e8382d486'),
(619, 26, '4t_left_small_image', '17'),
(620, 26, '_4t_left_small_image', 'field_5729eccb902ee'),
(621, 26, '4t_left_small_heading', 'Jaipur Gems Jewellery'),
(622, 26, '_4t_left_small_heading', 'field_5729ecfb902ef'),
(623, 26, '4t_left_small_link_text', 'Shop Now'),
(624, 26, '_4t_left_small_link_text', 'field_5729ed11902f0'),
(625, 26, '4t_left_small_link', '#'),
(626, 26, '_4t_left_small_link', 'field_5729ed1f902f1'),
(627, 26, '4t_left_long_image', '18'),
(628, 26, '_4t_left_long_image', 'field_5729ed29902f2'),
(629, 26, '4t_left_long_heading', 'Iconic Client'),
(630, 26, '_4t_left_long_heading', 'field_5729ed35902f3'),
(631, 26, '4t_left_long_link_text', 'Alia Bhatt'),
(632, 26, '_4t_left_long_link_text', 'field_5729ed42902f4'),
(633, 26, '4t_left_long_link', '#'),
(634, 26, '_4t_left_long_link', 'field_5729ed52902f5'),
(635, 26, '4t_right_top_image', '19'),
(636, 26, '_4t_right_top_image', 'field_5729ed6a902f6'),
(637, 26, '4t_right_top_heading', 'Fall Brilliantly In Love'),
(638, 26, '_4t_right_top_heading', 'field_5729ed76902f7'),
(639, 26, '4t_right_top_link_text', 'See Our Diamond Collection'),
(640, 26, '_4t_right_top_link_text', 'field_5729ed7f902f8'),
(641, 26, '4t_right_top_link', '#'),
(642, 26, '_4t_right_top_link', 'field_5729ed98902f9'),
(643, 26, '4t_right_bottom_image', '20'),
(644, 26, '_4t_right_bottom_image', 'field_5729eda6902fa'),
(645, 26, '4t_right_bottom_heading', 'The Pride of Rajputana'),
(646, 26, '_4t_right_bottom_heading', 'field_5729edb2902fb'),
(647, 26, '4t_right_bottom_link_text', 'Discover the Collection'),
(648, 26, '_4t_right_bottom_link_text', 'field_5729edbc902fc'),
(649, 26, 'right_bottom_link', '#'),
(650, 26, '_right_bottom_link', 'field_5729edcc902fd'),
(651, 26, '2t_left_image', '23'),
(652, 26, '_2t_left_image', 'field_5729eedfa1d45'),
(653, 26, '2t_left_heading', 'The Arabian Princess'),
(654, 26, '_2t_left_heading', 'field_5729eef9a1d46'),
(655, 26, '2t_left_link_text', 'Explore the collection'),
(656, 26, '_2t_left_link_text', 'field_5729ef07a1d47'),
(657, 26, '2t_left_link', '#'),
(658, 26, '_2t_left_link', 'field_5729ef1aa1d48'),
(659, 26, '2t_right_image', '24'),
(660, 26, '_2t_right_image', 'field_5729ef24a1d49'),
(661, 26, '2t_right_heading', 'History & Heritage'),
(662, 26, '_2t_right_heading', 'field_5729ef4ea1d4a'),
(663, 26, '2t_right_link_text', 'Learn more'),
(664, 26, '_2t_right_link_text', 'field_5729ef58a1d4b'),
(665, 26, '2t_right_link', '#'),
(666, 26, '_2t_right_link', 'field_5729ef64a1d4c'),
(667, 7, 'field_5729f21f79bfc', 'a:8:{s:3:"key";s:19:"field_5729f21f79bfc";s:5:"label";s:14:"1 Tile Section";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:47;}'),
(668, 7, 'field_5729f22779bfd', 'a:11:{s:3:"key";s:19:"field_5729f22779bfd";s:5:"label";s:5:"Image";s:4:"name";s:8:"1t_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:48;}'),
(669, 7, 'field_5729f23379bfe', 'a:14:{s:3:"key";s:19:"field_5729f23379bfe";s:5:"label";s:7:"Heading";s:4:"name";s:10:"1t_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:49;}'),
(670, 7, 'field_5729f24679bff', 'a:13:{s:3:"key";s:19:"field_5729f24679bff";s:5:"label";s:4:"Text";s:4:"name";s:7:"1t_text";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:50;}'),
(671, 7, 'field_5729f25b79c00', 'a:14:{s:3:"key";s:19:"field_5729f25b79c00";s:5:"label";s:9:"Link Text";s:4:"name";s:12:"1t_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:51;}'),
(672, 7, 'field_5729f26579c01', 'a:14:{s:3:"key";s:19:"field_5729f26579c01";s:5:"label";s:4:"Link";s:4:"name";s:7:"1t_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:52;}'),
(673, 7, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"5";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(674, 27, '_wp_attached_file', '2016/05/perfect-jewellery.jpg'),
(675, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:629;s:6:"height";i:146;s:4:"file";s:29:"2016/05/perfect-jewellery.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"perfect-jewellery-150x146.jpg";s:5:"width";i:150;s:6:"height";i:146;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"perfect-jewellery-300x70.jpg";s:5:"width";i:300;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(676, 27, '_wp_attachment_image_alt', 'Find Your Perfect Jewellery'),
(677, 28, 'home_slides_0_image', '15'),
(678, 28, '_home_slides_0_image', 'field_5729ea9102063'),
(679, 28, 'home_slides_0_text', 'A quest<span>for beauty</span>'),
(680, 28, '_home_slides_0_text', 'field_5729ea9c02064'),
(681, 28, 'home_slides_1_image', '15'),
(682, 28, '_home_slides_1_image', 'field_5729ea9102063'),
(683, 28, 'home_slides_1_text', 'Lorem<span>ipsum dolor</span>'),
(684, 28, '_home_slides_1_text', 'field_5729ea9c02064'),
(685, 28, 'home_slides', '2'),
(686, 28, '_home_slides', 'field_5729ea7b02062'),
(687, 28, 'craftsmanship_image', '8'),
(688, 28, '_craftsmanship_image', 'field_5729e3f35b5d8'),
(689, 28, 'craftsmanship_header', '700 Years of Craftsmanship'),
(690, 28, '_craftsmanship_header', 'field_5729e4305b5d9'),
(691, 28, 'craftsmanship_text', 'Over 700 years, our artisans, nurtured by generations of craftsmen, has been creating legendary jewellery of breathtaking beauty and unparalleled opulence'),
(692, 28, '_craftsmanship_text', 'field_5729e4505b5da'),
(693, 28, 'craftsmanship_link_text', 'Our Expertise'),
(694, 28, '_craftsmanship_link_text', 'field_5729e4605b5db'),
(695, 28, 'craftsmanship_link', '#'),
(696, 28, '_craftsmanship_link', 'field_5729e4725b5dc'),
(697, 28, 'cs_left_image', '10'),
(698, 28, '_cs_left_image', 'field_5729e70b2d47b'),
(699, 28, 'cs_left_heading', 'Necklaces'),
(700, 28, '_cs_left_heading', 'field_5729e7752d47c'),
(701, 28, 'cs_left_link_text', 'Explore the collection'),
(702, 28, '_cs_left_link_text', 'field_5729e7882d47d'),
(703, 28, 'cs_left_link', '#'),
(704, 28, '_cs_left_link', 'field_5729e79a2d47e'),
(705, 28, 'cs_right_top_image', '11'),
(706, 28, '_cs_right_top_image', 'field_5729e7a82d47f'),
(707, 28, 'cs_right_top_heading', 'Earrings'),
(708, 28, '_cs_right_top_heading', 'field_5729e7b52d480'),
(709, 28, 'cs_right_top_link_text', 'Explore the collection'),
(710, 28, '_cs_right_top_link_text', 'field_5729e7db2d481'),
(711, 28, 'cs_right_top_link', '#'),
(712, 28, '_cs_right_top_link', 'field_5729e7e72d482'),
(713, 28, 'cs_right_bottom_image', '12'),
(714, 28, '_cs_right_bottom_image', 'field_5729e7fa2d483'),
(715, 28, 'cs_right_bottom_heading', 'Bangles'),
(716, 28, '_cs_right_bottom_heading', 'field_5729e8142d484') ;
INSERT INTO `jaipurgems_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(717, 28, 'cs_right_bottom_link_text', 'Explore the collection'),
(718, 28, '_cs_right_bottom_link_text', 'field_5729e82b2d485'),
(719, 28, 'cs_right_bottom_link', '#'),
(720, 28, '_cs_right_bottom_link', 'field_5729e8382d486'),
(721, 28, '4t_left_small_image', '17'),
(722, 28, '_4t_left_small_image', 'field_5729eccb902ee'),
(723, 28, '4t_left_small_heading', 'Jaipur Gems Jewellery'),
(724, 28, '_4t_left_small_heading', 'field_5729ecfb902ef'),
(725, 28, '4t_left_small_link_text', 'Shop Now'),
(726, 28, '_4t_left_small_link_text', 'field_5729ed11902f0'),
(727, 28, '4t_left_small_link', '#'),
(728, 28, '_4t_left_small_link', 'field_5729ed1f902f1'),
(729, 28, '4t_left_long_image', '18'),
(730, 28, '_4t_left_long_image', 'field_5729ed29902f2'),
(731, 28, '4t_left_long_heading', 'Iconic Client'),
(732, 28, '_4t_left_long_heading', 'field_5729ed35902f3'),
(733, 28, '4t_left_long_link_text', 'Alia Bhatt'),
(734, 28, '_4t_left_long_link_text', 'field_5729ed42902f4'),
(735, 28, '4t_left_long_link', '#'),
(736, 28, '_4t_left_long_link', 'field_5729ed52902f5'),
(737, 28, '4t_right_top_image', '19'),
(738, 28, '_4t_right_top_image', 'field_5729ed6a902f6'),
(739, 28, '4t_right_top_heading', 'Fall Brilliantly In Love'),
(740, 28, '_4t_right_top_heading', 'field_5729ed76902f7'),
(741, 28, '4t_right_top_link_text', 'See Our Diamond Collection'),
(742, 28, '_4t_right_top_link_text', 'field_5729ed7f902f8'),
(743, 28, '4t_right_top_link', '#'),
(744, 28, '_4t_right_top_link', 'field_5729ed98902f9'),
(745, 28, '4t_right_bottom_image', '20'),
(746, 28, '_4t_right_bottom_image', 'field_5729eda6902fa'),
(747, 28, '4t_right_bottom_heading', 'The Pride of Rajputana'),
(748, 28, '_4t_right_bottom_heading', 'field_5729edb2902fb'),
(749, 28, '4t_right_bottom_link_text', 'Discover the Collection'),
(750, 28, '_4t_right_bottom_link_text', 'field_5729edbc902fc'),
(751, 28, 'right_bottom_link', '#'),
(752, 28, '_right_bottom_link', 'field_5729edcc902fd'),
(753, 28, '2t_left_image', '23'),
(754, 28, '_2t_left_image', 'field_5729eedfa1d45'),
(755, 28, '2t_left_heading', 'The Arabian Princess'),
(756, 28, '_2t_left_heading', 'field_5729eef9a1d46'),
(757, 28, '2t_left_link_text', 'Explore the collection'),
(758, 28, '_2t_left_link_text', 'field_5729ef07a1d47'),
(759, 28, '2t_left_link', '#'),
(760, 28, '_2t_left_link', 'field_5729ef1aa1d48'),
(761, 28, '2t_right_image', '24'),
(762, 28, '_2t_right_image', 'field_5729ef24a1d49'),
(763, 28, '2t_right_heading', 'History & Heritage'),
(764, 28, '_2t_right_heading', 'field_5729ef4ea1d4a'),
(765, 28, '2t_right_link_text', 'Learn more'),
(766, 28, '_2t_right_link_text', 'field_5729ef58a1d4b'),
(767, 28, '2t_right_link', '#'),
(768, 28, '_2t_right_link', 'field_5729ef64a1d4c'),
(769, 28, '1t_image', '27'),
(770, 28, '_1t_image', 'field_5729f22779bfd'),
(771, 28, '1t_heading', 'Find your perfect jewellery'),
(772, 28, '_1t_heading', 'field_5729f23379bfe'),
(773, 28, '1t_text', 'Connect with us to discover the unique, handcrafted pieces'),
(774, 28, '_1t_text', 'field_5729f24679bff'),
(775, 28, '1t_link_text', 'Make an appointment'),
(776, 28, '_1t_link_text', 'field_5729f25b79c00'),
(777, 28, '1t_link', '#'),
(778, 28, '_1t_link', 'field_5729f26579c01'),
(779, 5, '1t_image', '27'),
(780, 5, '_1t_image', 'field_5729f22779bfd'),
(781, 5, '1t_heading', 'Find your perfect jewellery'),
(782, 5, '_1t_heading', 'field_5729f23379bfe'),
(783, 5, '1t_text', 'Connect with us to discover the unique, handcrafted pieces'),
(784, 5, '_1t_text', 'field_5729f24679bff'),
(785, 5, '1t_link_text', 'Make an appointment'),
(786, 5, '_1t_link_text', 'field_5729f25b79c00'),
(787, 5, '1t_link', '#'),
(788, 5, '_1t_link', 'field_5729f26579c01'),
(789, 29, '_edit_last', '1'),
(790, 29, 'field_5729f44305331', 'a:8:{s:3:"key";s:19:"field_5729f44305331";s:5:"label";s:6:"Social";s:4:"name";s:0:"";s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(791, 29, 'field_5729f45105332', 'a:14:{s:3:"key";s:19:"field_5729f45105332";s:5:"label";s:8:"Facebook";s:4:"name";s:8:"facebook";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(792, 29, 'field_5729f45e05333', 'a:14:{s:3:"key";s:19:"field_5729f45e05333";s:5:"label";s:7:"Twitter";s:4:"name";s:7:"twitter";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(793, 29, 'field_5729f46905334', 'a:14:{s:3:"key";s:19:"field_5729f46905334";s:5:"label";s:11:"Google Plus";s:4:"name";s:11:"google_plus";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(794, 29, 'field_5729f47405335', 'a:14:{s:3:"key";s:19:"field_5729f47405335";s:5:"label";s:9:"Pinterest";s:4:"name";s:9:"pinterest";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(795, 29, 'field_5729f47e05336', 'a:14:{s:3:"key";s:19:"field_5729f47e05336";s:5:"label";s:7:"YouTube";s:4:"name";s:7:"youtube";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(796, 29, 'rule', 'a:5:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:11:"acf-options";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(797, 29, 'position', 'normal'),
(798, 29, 'layout', 'no_box'),
(799, 29, 'hide_on_screen', ''),
(800, 29, '_edit_lock', '1462369072:1') ;

#
# End of data contents of table `jaipurgems_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_posts`
#

DROP TABLE IF EXISTS `jaipurgems_posts`;


#
# Table structure of table `jaipurgems_posts`
#

CREATE TABLE `jaipurgems_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_posts`
#
INSERT INTO `jaipurgems_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-05-04 09:11:45', '2016-05-04 09:11:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-05-04 09:11:45', '2016-05-04 09:11:45', '', 0, 'http://localhost/jaipurgems/?p=1', 0, 'post', '', 1),
(3, 1, '2016-05-04 09:11:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-05-04 09:11:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/jaipurgems/?p=3', 0, 'post', '', 0),
(5, 1, '2016-05-04 09:15:59', '2016-05-04 09:15:59', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-05-04 13:05:34', '2016-05-04 13:05:34', '', 0, 'http://localhost/jaipurgems/?page_id=5', 0, 'page', '', 0),
(6, 1, '2016-05-04 09:15:59', '2016-05-04 09:15:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 09:15:59', '2016-05-04 09:15:59', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(7, 1, '2016-05-04 12:01:11', '2016-05-04 12:01:11', '', 'Home', '', 'publish', 'closed', 'closed', '', 'acf_home', '', '', '2016-05-04 13:00:29', '2016-05-04 13:00:29', '', 0, 'http://localhost/jaipurgems/?post_type=acf&#038;p=7', 0, 'acf', '', 0),
(8, 1, '2016-05-04 12:06:24', '2016-05-04 12:06:24', '', 'expertise', '', 'inherit', 'open', 'closed', '', 'expertise', '', '', '2016-05-04 12:06:24', '2016-05-04 12:06:24', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/expertise.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2016-05-04 12:07:09', '2016-05-04 12:07:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 12:07:09', '2016-05-04 12:07:09', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(10, 1, '2016-05-04 12:17:33', '2016-05-04 12:17:33', '', 'necklaces-tile', '', 'inherit', 'open', 'closed', '', 'necklaces-tile', '', '', '2016-05-04 12:17:45', '2016-05-04 12:17:45', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/necklaces-tile.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2016-05-04 12:18:14', '2016-05-04 12:18:14', '', 'earrings-tile', '', 'inherit', 'open', 'closed', '', 'earrings-tile', '', '', '2016-05-04 12:18:53', '2016-05-04 12:18:53', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/earrings-tile.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2016-05-04 12:18:38', '2016-05-04 12:18:38', '', 'bangles-tile', '', 'inherit', 'open', 'closed', '', 'bangles-tile', '', '', '2016-05-04 12:18:45', '2016-05-04 12:18:45', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/bangles-tile.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2016-05-04 12:19:01', '2016-05-04 12:19:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 12:19:01', '2016-05-04 12:19:01', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(14, 1, '2016-05-04 12:24:57', '2016-05-04 12:24:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 12:24:57', '2016-05-04 12:24:57', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(15, 1, '2016-05-04 12:31:40', '2016-05-04 12:31:40', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2016-05-04 12:32:47', '2016-05-04 12:32:47', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2016-05-04 12:33:05', '2016-05-04 12:33:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 12:33:05', '2016-05-04 12:33:05', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(17, 1, '2016-05-04 12:41:12', '2016-05-04 12:41:12', '', 'gems-tile', '', 'inherit', 'open', 'closed', '', 'gems-tile', '', '', '2016-05-04 12:41:16', '2016-05-04 12:41:16', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/gems-tile.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2016-05-04 12:41:49', '2016-05-04 12:41:49', '', 'iconic-tile', '', 'inherit', 'open', 'closed', '', 'iconic-tile', '', '', '2016-05-04 12:41:49', '2016-05-04 12:41:49', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/iconic-tile.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2016-05-04 12:42:24', '2016-05-04 12:42:24', '', 'diamonds-tile', '', 'inherit', 'open', 'closed', '', 'diamonds-tile', '', '', '2016-05-04 12:42:24', '2016-05-04 12:42:24', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/diamonds-tile.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2016-05-04 12:42:56', '2016-05-04 12:42:56', '', 'rajputana', '', 'inherit', 'open', 'closed', '', 'rajputana', '', '', '2016-05-04 12:42:56', '2016-05-04 12:42:56', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/rajputana.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2016-05-04 12:44:36', '2016-05-04 12:44:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 12:44:36', '2016-05-04 12:44:36', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(22, 1, '2016-05-04 12:54:35', '2016-05-04 12:54:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 12:54:35', '2016-05-04 12:54:35', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(23, 1, '2016-05-04 12:55:19', '2016-05-04 12:55:19', '', 'princess', '', 'inherit', 'open', 'closed', '', 'princess', '', '', '2016-05-04 12:55:27', '2016-05-04 12:55:27', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/princess.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-05-04 12:56:03', '2016-05-04 12:56:03', '', 'history', '', 'inherit', 'open', 'closed', '', 'history', '', '', '2016-05-04 12:56:03', '2016-05-04 12:56:03', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/history.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-05-04 12:56:16', '2016-05-04 12:56:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 12:56:16', '2016-05-04 12:56:16', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(26, 1, '2016-05-04 12:58:26', '2016-05-04 12:58:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 12:58:26', '2016-05-04 12:58:26', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(27, 1, '2016-05-04 13:00:45', '2016-05-04 13:00:45', '', 'perfect-jewellery', '', 'inherit', 'open', 'closed', '', 'perfect-jewellery', '', '', '2016-05-04 13:00:53', '2016-05-04 13:00:53', '', 5, 'http://localhost/jaipurgems/wp-content/uploads/2016/05/perfect-jewellery.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-05-04 13:05:34', '2016-05-04 13:05:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2016-05-04 13:05:34', '2016-05-04 13:05:34', '', 5, 'http://localhost/jaipurgems/5-revision-v1', 0, 'revision', '', 0),
(29, 1, '2016-05-04 13:09:29', '2016-05-04 13:09:29', '', 'Options', '', 'publish', 'closed', 'closed', '', 'acf_options', '', '', '2016-05-04 13:09:29', '2016-05-04 13:09:29', '', 0, 'http://localhost/jaipurgems/?post_type=acf&#038;p=29', 0, 'acf', '', 0) ;

#
# End of data contents of table `jaipurgems_posts`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_term_relationships`
#

DROP TABLE IF EXISTS `jaipurgems_term_relationships`;


#
# Table structure of table `jaipurgems_term_relationships`
#

CREATE TABLE `jaipurgems_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_term_relationships`
#
INSERT INTO `jaipurgems_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `jaipurgems_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_term_taxonomy`
#

DROP TABLE IF EXISTS `jaipurgems_term_taxonomy`;


#
# Table structure of table `jaipurgems_term_taxonomy`
#

CREATE TABLE `jaipurgems_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_term_taxonomy`
#
INSERT INTO `jaipurgems_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `jaipurgems_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_termmeta`
#

DROP TABLE IF EXISTS `jaipurgems_termmeta`;


#
# Table structure of table `jaipurgems_termmeta`
#

CREATE TABLE `jaipurgems_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_termmeta`
#

#
# End of data contents of table `jaipurgems_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_terms`
#

DROP TABLE IF EXISTS `jaipurgems_terms`;


#
# Table structure of table `jaipurgems_terms`
#

CREATE TABLE `jaipurgems_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_terms`
#
INSERT INTO `jaipurgems_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `jaipurgems_terms`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_usermeta`
#

DROP TABLE IF EXISTS `jaipurgems_usermeta`;


#
# Table structure of table `jaipurgems_usermeta`
#

CREATE TABLE `jaipurgems_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_usermeta`
#
INSERT INTO `jaipurgems_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jg-admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'jaipurgems_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'jaipurgems_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"4c11dadd7a19299e6d6ce6967cd1434e479b6bdb88c1caee3dc462a7ec7c0c5b";a:4:{s:10:"expiration";i:1463562717;s:2:"ip";s:3:"::1";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:33.0) Gecko/20100101 Firefox/33.0";s:5:"login";i:1462353117;}}'),
(15, 1, 'jaipurgems_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'jaipurgems_user-settings', 'libraryContent=browse'),
(17, 1, 'jaipurgems_user-settings-time', '1462363524') ;

#
# End of data contents of table `jaipurgems_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `jaipurgems_users`
#

DROP TABLE IF EXISTS `jaipurgems_users`;


#
# Table structure of table `jaipurgems_users`
#

CREATE TABLE `jaipurgems_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_users`
#
INSERT INTO `jaipurgems_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jg-admin', '$P$BrPFjLdVsnoXZTltZhnsRPyh6Xirdr.', 'jg-admin', 'email@jaipurgems.com', '', '2016-05-04 09:11:44', '', 0, 'jg-admin') ;

#
# End of data contents of table `jaipurgems_users`
# --------------------------------------------------------

#
# Add constraints back in
#

