<?php

//rotas da aplicação
//a variável $uri já contém os dados da rota solicitada

switch ($uri) {
<<<<<<< HEAD
    case '/':
        require './app/views/index.php';
        break;
    case '/cadastro':
        require './app/views/cadastro.php';
        break;
    default:
        require './app/views/404.php';
        break;
=======
	case '/':
		require './app/views/index.php';
		break;
	case '/cadastro':
		require './app/views/cadastro.php';
		break;

	case '/courses':
		$courseController->searchCourses();
		break;
	default:
		require './app/views/404.php';
		break;
>>>>>>> c4f285433a1bf693e23461d5ab9cbfc8a2199b86
}