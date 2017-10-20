<?php
    session_start();
//declaração dos namespaces dos controladores e instanciação dos objetos
use Project\Controller\CourseController;
$courseController = new CourseController();

use Project\Controller\LoginController;
$loginController = new LoginController();


//configuração do banco de dados
$_ENV['config'] = [
    'host' => '127.0.0.1',
    'dbname' => 'tech_train',
    'user' => 'root',
    'password' => '',
    'base_url' => 'http://localhost:9090',
];
