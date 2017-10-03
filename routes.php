<?php

//rotas da aplicação
//a variável $uri já contém os dados da rota solicitada

switch ($uri) {
	case '/':
		require './app/views/index.php';
		break;
	case '/register':
		$loginController->register();
		break;
	case '/post-register':
		$loginController->postRegister();
		break;		

	case '/courses':
		$courseController->searchCourses();
		break;
	default:
		require './app/views/404.php';
		break;
}