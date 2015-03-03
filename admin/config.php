<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/bahianacional/admin/');
define('HTTP_CATALOG', 'http://localhost/bahianacional/');
define('HTTP_IMAGE', 'http://localhost/bahianacional/image/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/bahianacional/admin/');
define('HTTPS_CATALOG', 'http://localhost/bahianacional/index.php?dev=1');
define('HTTPS_IMAGE', 'http://localhost/bahianacional/image/');

// DIR
define('DIR_PATH','/var/www/html/bahianacional/');
define('DIR_APPLICATION', DIR_PATH.'/admin/');
define('DIR_SYSTEM', DIR_PATH.'/system/');
define('DIR_DATABASE', DIR_PATH.'/system/database/');
define('DIR_LANGUAGE', DIR_PATH.'/admin/language/');
define('DIR_TEMPLATE', DIR_PATH.'/admin/view/template/');
define('DIR_CONFIG', DIR_PATH.'/system/config/');
define('DIR_IMAGE', DIR_PATH.'/image/');
define('DIR_CACHE', DIR_PATH.'/system/cache/');
define('DIR_DOWNLOAD', DIR_PATH.'/download/');
define('DIR_LOGS', DIR_PATH.'/system/logs/');
define('DIR_CATALOG', DIR_PATH.'/catalog/');

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'sistemas');
define('DB_DATABASE', 'fresobol_desarrollo');
define('DB_PREFIX', '');
?>