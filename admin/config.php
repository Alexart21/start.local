<?php
// HTTP
//define('HTTP_SERVER', 'http://start.local/admin/');
define('HTTP_SERVER', 'http://' . $_SERVER['HTTP_HOST'] . '/admin/');
//define('HTTP_CATALOG', 'http://start.local/');
define('HTTP_CATALOG', 'http://' . $_SERVER['HTTP_HOST'] . '/');

// HTTPS
//define('HTTPS_SERVER', 'http://start.local/admin/');
define('HTTPS_SERVER', 'http://' . $_SERVER['HTTP_HOST'] . '/admin/');
//define('HTTPS_CATALOG', 'http://start.local/');
define('HTTPS_CATALOG', 'http://' . $_SERVER['HTTP_HOST'] . '/');

// DIR
define('DIR_APPLICATION', normalizePath(__DIR__ . '/../admin/'));
define('DIR_SYSTEM', normalizePath(__DIR__ . '/../system/'));
define('DIR_IMAGE', normalizePath(__DIR__ . '/../image/'));
define('DIR_STORAGE', normalizePath(__DIR__ . '/../../storage_start/'));
define('DIR_CATALOG', normalizePath(__DIR__ . '/../catalog/'));
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/template/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'pdo');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'root');
define('DB_DATABASE', 'start');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');

// OpenCart API
define('OPENCART_SERVER', 'https://www.opencart.com/');
//die(DIR_IMAGE);