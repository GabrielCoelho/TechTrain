<?php
use Project\Db\QueryBuilder;
//rotas da aplicação
//a variável $uri já contém os dados da rota solicitad

switch ($uri) {
	case '/':

		// require './app/views/inc/header.php';
		require './app/views/index.php';
		break;
	
	case '/register':
		$loginController->register();
		break;

	case '/post-register':
		$loginController->postRegister();
		break;

	case '/login':
		$loginController->login();
		break;

	case '/myCourses':
		require './app/views/myCourses.php';
		break;

	case '/editProfile':
		require './app/views/editProfile.php';
		break;

	case '/editName':
		$n=new QueryBuilder();
		$n->editFullName();
		break;

	case '/changeEmail':
		require './app/views/editProfile.php';
		break;

	case '/changePassword':
		require './app/views/editProfile.php';
		break;

	// case '/myProfile':
	// 	require './app/views/.php';
	// 	break;

	// case '/notify':
	// 	require './app/views/.php';
	// 	break;

	// case '/help':
	// 	require './app/views/.php';
	// 	break;

	case '/logout':
		$loginController->logout();
		require './app/views/index.php';
		break;

	case '/courses':
		$courseController->searchCourses();
		break;

	case '/teste':
		$loginController->testeQuery();
		break;
		
	default:
		require './app/views/404.php';
		break;
}
