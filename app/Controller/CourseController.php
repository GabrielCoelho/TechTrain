<?php

namespace Project\Controller;

use Project\Db\QueryBuilder;

class CourseController
{
  public function searchCourses()
  {
    $q = new QueryBuilder();
    $array = $q->select("curso");
    // print_r($array);
    // die();
    require './app/views/cursos.php';
  }

  public function courseClick()
  {
    require './app/views/coursePage.php';  
  }

  public function watchVideo()
  {
    require './app/views/videoPage.php';
  }
}
