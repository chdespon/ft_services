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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'sFDhyz>7ur~-y?Uw`:]4AsRj[#6_dWP2@bkNOL:Fi_IoRPXUKE`2%,t09]fABQ:[' );
define( 'SECURE_AUTH_KEY',  '<~&oxuoV+ltT/sir)6Z#AjI8vR`TJ3,xDTaOv>q&M} <?FP3PvuWg1+X]m=LD-kt' );
define( 'LOGGED_IN_KEY',    '(#,eLu5mF>*W:y-U?=.LiN[>emaAUNYMUJMjeOH4tXTM|?q+tEXnBjhA`fw3+GW1' );
define( 'NONCE_KEY',        '+Q{9/NNo-|/of2BBeUI]@jb-?g#$TV`;F}*yP}Xoh+Cs.]4)Cx0UtrVq/(b{Ns3}' );
define( 'AUTH_SALT',        'oF@+i&B sx#B$Nm3Z @(`g7v&R-zsXwnM,hzRCF2*6m*!n`?NlJUnuVr;a^D.+^Q' );
define( 'SECURE_AUTH_SALT', 'Z+<0Uza3aXjVTbpb!gl%%J$c[:T8#HQSMy*FHLWO*MO3Q/<?w(8@/T{?U]1iBP>K' );
define( 'LOGGED_IN_SALT',   'ZN1R%||lR+P*MHU:1:~.Vr;xgee/;gwtK3dkxij|$R$#m2TzNm;P5pN/D!,a<zm,' );
define( 'NONCE_SALT',       '}*uz4Hoo88dR?&_bE8(Q]>M5Y.,^ZpMU%MB!xCA;z+S48M&b/=XQq%77Wy3NWU4a' );

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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';