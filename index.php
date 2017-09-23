<?php

require './vendor/autoload.php';

$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);



require './config.php';
require './app/views/inc/header.php';
require './routes.php';
require './app/views/inc/footer.php';