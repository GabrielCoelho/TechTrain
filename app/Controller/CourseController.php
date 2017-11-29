<?php

namespace Project\Controller;

use Project\Db\QueryBuilder;

use Project\Util\Flash;

class CourseController
{
  public function searchCourses()
  {
    $q = new QueryBuilder();
    $dados = $q->select("categorias");

    for ($i=0; $i < count($dados); $i++) { 
      
      $aux = $q->select("cursos", ['idCategoria' => $dados[$i]['idCategoria']]);
      $dados[$i]['cursos'] = $aux;
     
    }
        


//  print_r($dados); die(); 

    require './app/views/cursos.php';
  }

  public function courseClick()
  {
    $_SESSION['idCourse'] = $_GET['id'];
    $q = new QueryBuilder();
    $dados = $q->select("cursos", ["idCurso" => $_GET['id']], true );
    //iniciando a conexão com o banco de dados 
    $cx = mysqli_connect("127.0.0.1", "root", "");  
     //selecionando o banco de dados
    $db = mysqli_select_db($cx, "tech_train");   
    //criando a query de consulta à tabela criada 
    $sql = mysqli_query($cx, "select professor.nmProfessor, professor.fotoProfessor,professor.linkCanalProf,
    professor.canalProfessor, ministra_curso.cargaHorariaCurso, cursos.idCurso from ministra_curso
    inner join professor
    on ministra_curso.idProfessor = professor.idProfessor
    inner join cursos
    on ministra_curso.idCurso = cursos.idCurso
    WHERE cursos.idCurso = "  .$_SESSION['idCourse'].";  ") or die( mysqli_error($cx) //caso haja um erro na consulta
    );

    $dados['curso_Prof'] = mysqli_fetch_assoc($sql);


    //print_r($dados['curso_Prof']); die();
   
    require './app/views/coursePage.php';  
  }

  


  public function courseCreateView()
  {
    
    $flash = Flash::getFlash();
    $q = new QueryBuilder();
    $professor = $q->select('professor', []);

    $cat = $q->select('categorias', []);
    //print_r($cat); die();  
    require './app/views/createCourse.php';
    
  }

  public function courseCreate()
  {      
      $dados['nmCurso'] = htmlentities($_POST['nmCurso'], ENT_QUOTES);
      $dados['infoCurso_Simples'] = htmlentities($_POST['infoCurso_Simples'], ENT_QUOTES);
      $dados['infoCurso_Extensa'] = htmlentities($_POST['infoCurso_Extensa'], ENT_QUOTES);
      $dados['dataCurso'] = htmlentities($_POST['data'], ENT_QUOTES);
      $dados['idCategoria'] = $_POST['idCat'] ;
      
      //die(var_dump($dados));
      /*switch ($nmCategoria) {
        case 'INFORMATICA':
            $dados['idCategoria'] = 4;
            break;
        case 'ADMINISTRAÇÃO':
            $dados['idCategoria'] = 5;
            break;
        case 'ARTE':
            $dados['idCategoria'] = 6;
            break;
        default:
           echo '';
           
    }*/
      //Não funcionou esse trecho de código comentado

      /*if($nmCategoria = 'ARTE'):
        $dados['idCategoria'] = 3;
      elseif ($nmCategoria = 'ADMINISTRAÇÃO'):
        $dados['idCategoria'] = 2;
      elseif($nmCategoria = 'INFORMATICA'):
        $dados['idCategoria'] = 1;
      endif;*/

      $nomeArquivo =  $_FILES['arquivo']['name'];
      $destino = './public/img/' . $nomeArquivo;
      
      $arquivo_tmp = $_FILES['arquivo']['tmp_name'];
      
      //move_uploaded_file( $arquivo_tmp, $destino  );

      
      // tenta mover o arquivo para o destino
      if ( ! move_uploaded_file ( $arquivo_tmp, $destino ) ) {
         echo '';
         Flash::setFlash('Erro ao salvar a imagem');
         
      }
      $dados['imagCurso'] = '/img/' . $nomeArquivo;
      //print_r($dados); die();
      
      $q = new QueryBuilder();
      $q->insert('cursos', $dados);
     


    header('location: /panelTeacher'); 
  }
  public function teacherPanel()
  {
    $flash = Flash::getFlash(); 
    $q = new QueryBuilder();
    $cursos = $q->select('cursos', []);
    
    require './app/views/panelTeacher.php';  
  }

  public function postVideo()
  {      
      $dados['tituloVideo'] = htmlentities($_POST['Vtitulo'], ENT_QUOTES);
      $dados['urlVideo'] = htmlentities($_POST['Vurl'], ENT_QUOTES);
      $dados['descricaoVideo'] = htmlentities($_POST['Vdescricao'], ENT_QUOTES);
      $dados['duracaoVideo'] = htmlentities($_POST['Vduracao'], ENT_QUOTES);
      $dados['idCurso'] = htmlentities($_POST['idCurso'], ENT_QUOTES);

      //var_dump($dados['idCurso']); die();
      $q = new QueryBuilder();
      $q->insert('video', $dados);

      header('location: /courses');
  }    
  public function watchVideo()
  {
    
    $q = new QueryBuilder();
  $dados = $q->select("cursos", ["idCurso" => $_SESSION['idCourse']], true );
   
      
      $aux = $q->select("video", ['idCurso' => $_SESSION['idCourse']] );
      $dados['video'] = $aux;
      
   
  // print_r($dados); die();
    require './app/views/videoPage.php';
  }
  public function courseRegister()
  {
    
  }
}
