<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '716304_jg');

/** MySQL database username */
define('DB_USER', '716304_jg');

/** MySQL database password */
define('DB_PASSWORD', 'P@ssw0rd');

/** MySQL hostname */
define('DB_HOST', 'mariadb-145.wc1.ord1.stabletransit.com');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '!VJRo59RMt&)nXm9$FS8L!w_M(YlZy21-?H?P&|zeBWzsgY/1qWnKw_}*&%yL)ne');
define('SECURE_AUTH_KEY',  '+.usK=hGHt~/jqpT{%W#V+SjdIf{Ja<VQqSk-1psN@U{N:}1x8yZKY>fwQis1P {');
define('LOGGED_IN_KEY',    '|X<6&HM{O-MZ?tuBAG3;QKIA~~^HE%S*a&<;4Vc$[${Y%A}m|DO_[[+(BnM?%1S,');
define('NONCE_KEY',        '6,HY<`?9GU-/r,G7Wk5+4%w >^!4C=`B+:dJmD ZpeC.3RO(M:t-.KVxo&16m_=s');
define('AUTH_SALT',        '7uCsdnQnb?3Mj)+GQLi%kjH-zoz(aX6)V}m}U~N&BP&@!2WH<+Ot`h{&#)(j()6u');
define('SECURE_AUTH_SALT', '[j6LJd|k{W{vOp[KWUx<:goyLQU+}LlH97JC@qrS-9H^x)w{+9CW-gI6s0Pcl6+*');
define('LOGGED_IN_SALT',   ';1c9P[g$Nf4^!:t/1n%>|]}~CpPp) g6g~@TNAJs*5=F3`@GkG.+}y-9Ag0)#WS3');
define('NONCE_SALT',       '`<x6Yr:euU|7luW+WPAWY*{Gd5CrB lk(EW$%!Gop ,;Pk)13@zyG!zh+[5ZPYm_');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'jaipurgems_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
