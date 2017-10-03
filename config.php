<?php
        session_start();
//declaração dos namespaces dos controladores e instanciação dos objetos
use Project\Controller\CourseController;
$courseController = new CourseController();

use Project\Controller\LoginController;
$loginController = new LoginController();


//configuração do banco de dados
$_ENV['config'] = [
    'host' => 'localhost',
    'dbname' => 'tech_train',
    'user' => 'root',
    'password' => '',
];
