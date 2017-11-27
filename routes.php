<?php

use Project\Db\QueryBuilder;
//rotas da aplicação
//a variável $uri já contém os dados da rota solicitada

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
		$editController->editProfile();
		break;

	case '/editTeacher':
		$editController->editTeacher();
		break;

	case '/editName':
		$n=new QueryBuilder();
		$n->editFullName();
		break;

	case '/changeEmail':
		$n=new QueryBuilder();
		$n->changeEmail();
		break;

	case '/changePassword':
	$n=new QueryBuilder();
	$n->changePasswd();
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

	case '/coursePage':
	  	$courseController->courseClick();
		break;
	case '/createCourseView':
		$courseController->courseCreateView();
		break;
	case '/createCourse':
		$courseController->courseCreate();
		break;

	case '/panelTeacher':
		$courseController->teacherPanel();
		break;

	case '/postVideo':
		$courseController->postVideo();
	 	break;

	case '/courseVideo':
	  $courseController->watchVideo();	
	  break;
	default:
		require './app/views/404.php';
		break;
}
