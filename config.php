<?php
//declaração dos namespaces dos controladores e instanciação dos objetos
use Project\Controller\CourseController;
$courseController = new CourseController();


//configuração do banco de dados
$_ENV['config'] = [
    'host' => '127.0.0.1',
    'dbname' => 'testingTT',
    'user' => 'root',
    'password' => '',
];
