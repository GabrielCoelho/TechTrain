<?php


namespace Project\Controller;



class TesteController

{
public function index()
{
    $var = $_GET['dado1'];

    $resultado = $var % 2 == 0 ? 'Par' : 'impar';
    
    require './app/views/teste.php';
}

public function selecionar()
{
    //buscar dados do bd
    $q = new QueryBuilder();
    $resultado = $q->select('tabela');

    //enviar para view

    require './app/views/bd.php';
    
}

}