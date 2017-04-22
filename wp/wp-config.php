<?php


// ** MySQL settings ** //
/** The name of the database for WordPress */
define('DB_NAME', 'bn_mandacaruhs');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '1q2w3e4r');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', 'utf8mb4_unicode_ci');

define('AUTH_KEY',         'O!@p:,WgiQ6]WR+>XSfs`0awt3t|T5$B+)LN/-nT;bQ!`10/I5%|/?dWq0sAa qn');
define('SECURE_AUTH_KEY',  ';@1rW/nnGpG5d`sA-GU7+a7u&KF}m4@HqTLNw1}W+ouX+`k!-DTs=<a3;K3WwT(.');
define('LOGGED_IN_KEY',    'n!]HP_ni:=n+C3z5_iwCKiKsw<d$)S66B.dtH_stEgi%b:8Y>2u;v*U16W&|Ttgz');
define('NONCE_KEY',        ':Urqt|I4*+Y&t}9G6;qif57rc.YAuL|+7SgQ0&DN:<)HEBcP(,2/!*Fd(K 1eI#L');
define('AUTH_SALT',        'k5&2Mi<%YZe1R*>xgT+k[(3?rG4ez6U1>`wp)e]i++ N5,xmP?jl${xV-~s,3>{~');
define('SECURE_AUTH_SALT', 'Hyf^x&~9)t)$/FfvxtCL|pvXb34WCg(C+< ]3bxbw~5hFm*>)|jcIs~#k0T37$8s');
define('LOGGED_IN_SALT',   ' L5_;|(K67VQ4Ey~jag|;G.-(cR51>b&DiV%jYN{bHBL{OGSLllM&z^!ds|<SnCT');
define('NONCE_SALT',       'k!,_5I=2._U]AbrA+Q5D_6?H/pP:Kb6-7!oAA<1-ieUX<1u{~ve(3T)@2:`xG9yW');


$table_prefix = 'wp_b80cdsc7bg_';





/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
