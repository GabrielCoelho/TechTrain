<?php

namespace Project\Controller;

use Project\Db\QueryBuilder;

class EditController{

    public function editFullName(){
        //get the full name of the user by the form
        $newFullName = $_POST['fullName'];

        //create the object of QueryBuilder
        $query = new QueryBuilder();        

        
    }
}