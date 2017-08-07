<?php
//declaração dos namespaces dos controladores e instanciação dos objetos
use Project\Controller\TabelaController;
$tabelaController = new TabelaController();

use Project\Controller\TesteController;
$TesteController = new TesteController();

//configuração do banco de dados
$_ENV['config'] = [
    'host' => 'localhost',
    'dbname' => 'php',
    'user' => 'root',
    'password' => '',
];
