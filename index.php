<?php

require './vendor/autoload.php';

$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
//$parameters = parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY);
//parse_str($query_str, $parameters);

//print_r($query_str);
//die();
require './config.php';    
require './routes.php';    




