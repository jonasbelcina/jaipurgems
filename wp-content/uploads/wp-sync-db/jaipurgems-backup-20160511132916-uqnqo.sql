# WordPress MySQL database migration
#
# Generated: Wednesday 11. May 2016 13:29 UTC
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
  KEY `meta_key` (`meta_key`(191)),
  KEY `disqus_dupecheck` (`meta_key`(191),`meta_value`(11))
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
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_options`
#
INSERT INTO `jaipurgems_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/jaipurgems/', 'yes'),
(2, 'home', 'http://localhost/jaipurgems/', 'yes'),
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
(33, 'active_plugins', 'a:2:{i:0;s:32:"disqus-comment-system/disqus.php";i:1;s:29:"wp-sync-db-1.5/wp-sync-db.php";}', 'yes'),
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
(77, 'sticky_posts', 'a:2:{i:0;i:35;i:1;i:37;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '30', 'yes'),
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
(103, 'cron', 'a:4:{i:1463001105;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1463044496;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1463044555;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(115, 'can_compress_scripts', '1', 'yes'),
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
(176, 'recently_activated', 'a:0:{}', 'yes'),
(228, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:20:"email@jaipurgems.com";s:7:"version";s:5:"4.5.2";s:9:"timestamp";i:1462871677;}', 'yes'),
(257, 'wpsdb_error_log', '********************************************\n******  Log date: 2016/05/10 07:48:17 ******\n********************************************\n\nWPSDB Error: The connection succeeded but the remote site is configured to reject pull connections. You can change this in the "settings" tab on the remote site. (#122) <a href="#" class="try-again js-action-link">Try again?</a>\n\nAttempted to connect to: http://jaipurgems.heych.ae.php56-3.ord1-1.websitetestlink.com/wp-admin/admin-ajax.php\n\nArray\n(\n    [error] => 1\n    [message] => The connection succeeded but the remote site is configured to reject pull connections. You can change this in the "settings" tab on the remote site. (#122) <a href="#" class="try-again js-action-link">Try again?</a>\n)\n\n\n', 'yes'),
(258, 'wpsdb_settings', 'a:7:{s:11:"max_request";i:1048576;s:3:"key";s:32:"7nN0Xu6aUAvO18Ai8PLg06j5X2MrtCzo";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:1:{i:1;a:18:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:6:"action";s:4:"pull";s:15:"connection_info";s:60:"http://jaipurgems.heych.ae\r\nc1qrd2QLgMdXDC9Nxo+/c0MR/QTXvBkx";s:11:"replace_old";a:2:{i:1;s:21:"//jaipurgems.heych.ae";i:2;s:59:"/mnt/target03/360560/716304/jaipurgems.heych.ae/web/content";}s:11:"replace_new";a:2:{i:1;s:22:"//localhost/jaipurgems";i:2;s:48:"/Applications/XAMPP/xamppfiles/htdocs/jaipurgems";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:3:"new";s:18:"create_new_profile";s:19:"jaipurgems.heych.ae";s:4:"name";s:19:"jaipurgems.heych.ae";}}s:10:"verify_ssl";b:1;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(259, '_transient_is_multi_author', '0', 'yes'),
(260, '_transient_twentysixteen_categories', '1', 'yes'),
(261, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.5.2-partial-1.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:5:"4.5.1";}i:1;O:8:"stdClass":12:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.2-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.5.2-partial-1.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.2-rollback-1.zip";}s:7:"current";s:5:"4.5.2";s:7:"version";s:5:"4.5.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:5:"4.5.1";s:13:"support_email";s:26:"updatehelp42@wordpress.org";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1462957991;s:15:"version_checked";s:5:"4.5.1";s:12:"translations";a:0:{}}', 'yes'),
(262, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1462965039;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:6:"3.1.10";s:32:"disqus-comment-system/disqus.php";s:4:"2.84";s:9:"hello.php";s:3:"1.6";s:29:"wp-sync-db-1.5/wp-sync-db.php";s:3:"1.5";}s:8:"response";a:2:{s:32:"disqus-comment-system/disqus.php";O:8:"stdClass":8:{s:2:"id";s:4:"4500";s:4:"slug";s:21:"disqus-comment-system";s:6:"plugin";s:32:"disqus-comment-system/disqus.php";s:11:"new_version";s:4:"2.85";s:3:"url";s:52:"https://wordpress.org/plugins/disqus-comment-system/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/disqus-comment-system.zip";s:6:"tested";s:5:"4.5.2";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:114:"Applications/XAMPP/xamppfiles/htdocs/jaipurgems/wp-content/themes/jaipurgems/plugins/acf-repeater/acf-repeater.php";O:8:"stdClass":4:{s:4:"slug";s:12:"Applications";s:11:"new_version";s:5:"1.1.1";s:3:"url";s:59:"http://www.advancedcustomfields.com/add-ons/repeater-field/";s:7:"package";s:67:"http://download.advancedcustomfields.com/QJF7-L4IX-UCNP-RF2W/trunk/";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.10";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.10.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(263, '_site_transient_timeout_theme_roots', '1462959507', 'yes'),
(264, '_site_transient_theme_roots', 'a:4:{s:10:"jaipurgems";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(265, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1462957999;s:7:"checked";a:4:{s:10:"jaipurgems";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(270, '_transient_timeout_plugin_slugs', '1463051444', 'no'),
(271, '_transient_plugin_slugs', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:32:"disqus-comment-system/disqus.php";i:2;s:9:"hello.php";i:3;s:29:"wp-sync-db-1.5/wp-sync-db.php";}', 'no'),
(272, 'disqus_active', '1', 'yes'),
(273, 'disqus_version', '2.84', 'yes'),
(274, 'disqus_forum_url', 'jaipurgems', 'yes'),
(275, 'dsq_external_js', '0', 'yes'),
(276, 'disqus_cc_fix', '', 'yes'),
(277, 'disqus_api_key', 'edQwp7MfsrN5P4qQjSI6iGxzlM6JJ0qjV3N0zcM0QqeE3svvkBGSlF0Rg0QinVqw', 'yes'),
(278, 'disqus_user_api_key', 'q0wjoWXInzLfFZ1BIoMCfe850vJRGgE4Pqe5jfyo0AR2mqmRKBrVszufE5IVNOra', 'yes'),
(279, 'disqus_replace', 'all', 'yes'),
(280, 'disqus_partner_key', '', 'yes'),
(281, 'disqus_public_key', '', 'yes'),
(282, 'disqus_secret_key', '', 'yes') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=832 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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
(800, 29, '_edit_lock', '1462369072:1'),
(801, 30, '_edit_last', '1'),
(802, 30, '_edit_lock', '1462866309:1'),
(812, 35, '_edit_last', '1'),
(813, 35, '_edit_lock', '1462944992:1'),
(814, 35, '_thumbnail_id', '23'),
(816, 37, '_edit_last', '1'),
(817, 37, '_edit_lock', '1462944998:1'),
(818, 37, '_thumbnail_id', '24'),
(822, 39, '_edit_last', '1'),
(823, 39, '_edit_lock', '1462944934:1'),
(824, 39, '_thumbnail_id', '18'),
(826, 42, '_edit_last', '1'),
(827, 42, '_edit_lock', '1462956435:1'),
(828, 42, '_thumbnail_id', '8'),
(831, 35, 'dsq_thread_id', '4817554314') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `jaipurgems_posts`
#
INSERT INTO `jaipurgems_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
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
(29, 1, '2016-05-04 13:09:29', '2016-05-04 13:09:29', '', 'Options', '', 'publish', 'closed', 'closed', '', 'acf_options', '', '', '2016-05-04 13:09:29', '2016-05-04 13:09:29', '', 0, 'http://localhost/jaipurgems/?post_type=acf&#038;p=29', 0, 'acf', '', 0),
(30, 1, '2016-05-10 07:47:27', '2016-05-10 07:47:27', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-05-10 07:47:27', '2016-05-10 07:47:27', '', 0, 'http://localhost/jaipurgems/?page_id=30', 0, 'page', '', 0),
(31, 1, '2016-05-10 07:47:27', '2016-05-10 07:47:27', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2016-05-10 07:47:27', '2016-05-10 07:47:27', '', 30, 'http://localhost/jaipurgems/30-revision-v1', 0, 'revision', '', 0),
(35, 1, '2016-05-11 05:34:15', '2016-05-11 05:34:15', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet', '', 'publish', 'open', 'open', '', 'lorem-ipsum-dolor-sit-amet', '', '', '2016-05-11 05:36:32', '2016-05-11 05:36:32', '', 0, 'http://localhost/jaipurgems/?p=35', 0, 'post', '', 0),
(36, 1, '2016-05-11 05:34:15', '2016-05-11 05:34:15', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2016-05-11 05:34:15', '2016-05-11 05:34:15', '', 35, 'http://localhost/jaipurgems/35-revision-v1', 0, 'revision', '', 0),
(37, 1, '2016-05-11 05:36:12', '2016-05-11 05:36:12', 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauri  accumsan ipsum velit.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Proin gravida nibh vel velit auctor aliquet', '', 'publish', 'open', 'open', '', 'proin-gravida-nibh-vel-velit-auctor-aliquet', '', '', '2016-05-11 05:36:38', '2016-05-11 05:36:38', '', 0, 'http://localhost/jaipurgems/?p=37', 0, 'post', '', 0),
(38, 1, '2016-05-11 05:36:12', '2016-05-11 05:36:12', 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauri  accumsan ipsum velit.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Proin gravida nibh vel velit auctor aliquet', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2016-05-11 05:36:12', '2016-05-11 05:36:12', '', 37, 'http://localhost/jaipurgems/37-revision-v1', 0, 'revision', '', 0),
(39, 1, '2016-05-11 05:37:09', '2016-05-11 05:37:09', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nProin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauri  accumsan ipsum velit.', 'Duis aute irure dolor in reprehenderit', '', 'publish', 'open', 'open', '', 'duis-aute-irure-dolor-in-reprehenderit', '', '', '2016-05-11 05:37:09', '2016-05-11 05:37:09', '', 0, 'http://localhost/jaipurgems/?p=39', 0, 'post', '', 0),
(40, 1, '2016-05-11 05:37:09', '2016-05-11 05:37:09', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nProin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauri  accumsan ipsum velit.', 'Duis aute irure dolor in reprehenderit', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-05-11 05:37:09', '2016-05-11 05:37:09', '', 39, 'http://localhost/jaipurgems/39-revision-v1', 0, 'revision', '', 0),
(41, 1, '2016-05-11 08:46:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-05-11 08:46:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/jaipurgems/?p=41', 0, 'post', '', 0),
(42, 1, '2016-05-11 08:47:13', '2016-05-11 08:47:13', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Proin gravida nibh vel velit auctor aliquet. \r\n\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.\r\n\r\nDuis sed odio sit amet nibh vulputate cursus a sit amet mauri  accumsan ipsum velit.', 'Duis sed odio sit amet nibh vulputate cursus a sit amet mauri', '', 'publish', 'open', 'open', '', 'duis-sed-odio-sit-amet-nibh-vulputate-cursus-a-sit-amet-mauri', '', '', '2016-05-11 08:47:13', '2016-05-11 08:47:13', '', 0, 'http://localhost/jaipurgems/?p=42', 0, 'post', '', 0),
(43, 1, '2016-05-11 08:47:13', '2016-05-11 08:47:13', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Proin gravida nibh vel velit auctor aliquet. \r\n\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.\r\n\r\nDuis sed odio sit amet nibh vulputate cursus a sit amet mauri  accumsan ipsum velit.', 'Duis sed odio sit amet nibh vulputate cursus a sit amet mauri', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2016-05-11 08:47:13', '2016-05-11 08:47:13', '', 42, 'http://localhost/jaipurgems/42-revision-v1', 0, 'revision', '', 0) ;

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
(35, 1, 0),
(37, 1, 0),
(39, 1, 0),
(42, 1, 0) ;

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
(1, 1, 'category', '', 0, 4) ;

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
(14, 1, 'session_tokens', 'a:4:{s:64:"4c11dadd7a19299e6d6ce6967cd1434e479b6bdb88c1caee3dc462a7ec7c0c5b";a:4:{s:10:"expiration";i:1463562717;s:2:"ip";s:3:"::1";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:33.0) Gecko/20100101 Firefox/33.0";s:5:"login";i:1462353117;}s:64:"c314434c811ae7d7b8253352ddf9a0cafc0b34f921925d7fc506fe6c85499cfa";a:4:{s:10:"expiration";i:1464073862;s:2:"ip";s:13:"213.132.62.70";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:46.0) Gecko/20100101 Firefox/46.0";s:5:"login";i:1462864262;}s:64:"9e72f3817bda418b489c15483dee06befd8a47a1f118ef3c649db0bfbd5978d2";a:4:{s:10:"expiration";i:1463039843;s:2:"ip";s:13:"213.132.62.70";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:46.0) Gecko/20100101 Firefox/46.0";s:5:"login";i:1462867043;}s:64:"32c474b22b2c69a61e571e9b820d5090e1cc3e44df4c4f3d851bf6c1e830f9ef";a:4:{s:10:"expiration";i:1463117474;s:2:"ip";s:13:"213.132.62.70";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:46.0) Gecko/20100101 Firefox/46.0";s:5:"login";i:1462944674;}}'),
(15, 1, 'jaipurgems_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'jaipurgems_user-settings', 'libraryContent=browse&editor=html'),
(17, 1, 'jaipurgems_user-settings-time', '1462904895') ;

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

