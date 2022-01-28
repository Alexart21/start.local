<?php
// HTTP
define('HTTP_SERVER', 'http://start.local/admin/');
define('HTTP_CATALOG', 'http://start.local/');

// HTTPS
define('HTTPS_SERVER', 'http://start.local/admin/');
define('HTTPS_CATALOG', 'http://start.local/');

// DIR
define('DIR_APPLICATION', __DIR__ . '/../admin/');
define('DIR_SYSTEM', __DIR__ . '/../system/');
define('DIR_IMAGE', __DIR__ . '/../image/');
define('DIR_STORAGE', __DIR__ . '/../../storage_start/');
define('DIR_CATALOG', __DIR__ . '/../catalog/');
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
