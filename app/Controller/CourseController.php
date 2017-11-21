<?php

namespace Project\Controller;

use Project\Db\QueryBuilder;

class CourseController
{
  public function searchCourses()
  {
    $q = new QueryBuilder();
    $dados = $q->select("grade_curso");

    for ($i=0; $i < count($dados); $i++) { 
      
      $aux = $q->select("curso", ['idGrade' => $dados[$i]['idGrade']]);
      $dados[$i]['cursos'] = $aux;
      
    }
        


 //print_r($dados); die(); 

    require './app/views/cursos.php';
  }

  public function courseClick()
  {
    $_SESSION['idCourse'] = $_GET['id'];
    $q = new QueryBuilder();
    $dados = $q->select("curso", ["idCurso" => $_GET['id']], true );
    //print_r($dados); die();
   
    require './app/views/coursePage.php';  
  }
  public function courseCreate()
  {
    require './app/views/createCourse.php';  
  }
  public function teacherPanel()
  {
    require './app/views/panelTeacher.php';  
  }

  public function watchVideo()
  {
    
    $q = new QueryBuilder();
  $dados = $q->select("curso", ["idCurso" => $_SESSION['idCourse']], true );
   
      
      $aux = $q->select("video", ['idCurso' => $_SESSION['idCourse']] );
      $dados['video'] = $aux;
      
   
   // print_r($dados); die();
    require './app/views/videoPage.php';
  }
}
