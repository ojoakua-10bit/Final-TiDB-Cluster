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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpressuser' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wordpresspassword' );

/** MySQL hostname */
define( 'DB_HOST', '192.168.16.69:4000' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'n&;?KOp-Vo)Ud5Fe^d]9Qd=rlBU-hpJiW5|x1*?RhK5-R%*Oa8RSQ1,DkZ) ?9V^');
define('SECURE_AUTH_KEY',  '|G#_t/Nh<kVW6GRMmz<+t!__[HFKF]pqhzx*i%&~QjT7-tie|41NjXE!tV;y@%#?');
define('LOGGED_IN_KEY',    '~Q9sV=y8Lf=iZC1dq8=aR|5u?MpS5n7,4wDBgVp~:ogo``&ySsjd5Krl( SN6 fd');
define('NONCE_KEY',        'c`@g?.n24EO,Bwz0s:ZA5B-Dr2-Xn9/8-.e4nX?|BVfL$U[0!Vhz0}u_f$4NE+i4');
define('AUTH_SALT',        '_ihs~Z9B[d<1%hDN2i0}2M9t-NKa[jrA(CLH+vmS-?AflOsN:p`~o <c Lcd.)Up');
define('SECURE_AUTH_SALT', 'Gd=Q+gs8$w[43I<@}w86G.qElR_H72KdT8Iu=:3xp/xYJ}(%r!ip9|5W,U O,+|K');
define('LOGGED_IN_SALT',   'W~%?nfw|@d2QQ:_nH|i2!sS#a*=+!KL>CA]X?yni+XvIN}HInzHupm=wsKc+,;~~');
define('NONCE_SALT',       'hEa2-81o}rwk7vm7TFp90W0c-0a>G:U5bFS$6LgFK?;]Mi=DSB,G:-Tl#!*Z+C5Z');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
