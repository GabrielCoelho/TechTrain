<?php

namespace Project\Controller;

use Project\Db\QueryBuilder;

class CourseController
{
  public function searchCourses()
  {
    $q = new QueryBuilder();
    $array[] = $q->select("cursos");
    require './app/views/cursos.php';
  }

}