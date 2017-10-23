<?php

namespace Project\Controller;

use Project\Db\QueryBuilder;

class CourseController
{
  public function searchCourses()
  {
   /* $q = new QueryBuilder();
    $array = $q->select("curso",["free" => 0]);
    
    // $curso['info'] = array_filter($array, function($x){
    //   return $x['poloEducacional'] == "Informática";
    // });
    // $curso['adm'] = array_filter($array, function($x){
    //   return $x['poloEducacional'] == "Administração";
    // });
    // $curso['foto'] = array_filter($array, function($x){
    //   return $x['poloEducacional'] == "Fotografia";
    // });
    // $curso['musica'] = array_filter($array, function($x){
    //   return $x['poloEducacional'] == "Música";
    // });
    // $curso['design'] = array_filter($array, function($x){
    //   return $x['poloEducacional'] == "Design";
    // });

    // // print_r($curso);
    // // die();*/

    require './app/views/cursos.php';
  }

}