<?php
// HTTP
define('HTTP_SERVER', 'http://start.local/');

// HTTPS
define('HTTPS_SERVER', 'http://start.local/');

// DIR
define('DIR_APPLICATION', 'D:/OpenServer/domains/start.local/catalog/');
define('DIR_SYSTEM', 'D:/OpenServer/domains/start.local/system/');
define('DIR_IMAGE', 'D:/OpenServer/domains/start.local/image/');
define('DIR_STORAGE', 'D:/OpenServer/domains/storage_start/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/theme/');
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

//Отсебятина
// Поле email сделал необязательным
//define('NO_EMAIL', true);