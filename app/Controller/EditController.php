<?php

namespace Project\Controller;

use Project\Db\QueryBuilder;
use Project\Util\Flash;

class EditController{

    public function editProfile(){
        //Recebe qualquer mensagem flash que for disparada
        $flash = Flash::getFlash();
        //Redirecionando para a página de edição do perfil
        require './app/views/editProfile.php';

    }

    public function editTeacher(){
        $flash = Flash::getFlash();
        require './app/views/editTeacher.php';
    }
}