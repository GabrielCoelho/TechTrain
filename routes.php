<?php

//rotas da aplicação

//a variável $uri já contém os dados da rota solicitada

switch ($uri) {
	case '/':
		require './app/views/index.php';
		break;
	case '/cadastro':
		require './app/views/cadastro.php';
		break;

	case '/courses':
		require './app/views/cursos.php';
		break;
	default:
		require './app/views/404.php';
		break;
}