<?php
//declaração dos namespaces dos controladores e instanciação dos objetos
use Project\Controller\TabelaController;
$tabelaController = new TabelaController();


//configuração do banco de dados
$_ENV['config'] = [
    'host' => 'localhost',
    'dbname' => 'php',
    'user' => 'root',
    'password' => '',
];
