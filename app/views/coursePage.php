<?php require './app/views/inc/header.php'; ?>
<!-- Start the page -->
<div class="page-header">
  <div class="container">
    <h1 style="color: black;"><?= $dados['nmCurso'] ?> <small> <?= $dados['infoCurso_Simples'] ?></small></h1>
  </div>
</div>
<div class="jumbotron">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <img class="teste" src="./public/<?= $dados['imagCurso'] ?>" alt="Imagem" >
        <!-- Aqui teremos a imagem do curso de tamanho maior que na rota /courses -->
      </div>
    </div>
    <div class="row margeada">
      <p>
        <?= $dados['infoCurso_Extensa'] ?>
      
        <!-- Aqui um conteúdo simples, apenas para explicar o que é e como é o curso -->
      </p>

    </div>

    <aside class="signupCourse course_5">
      <div class="col-xs-12">
        <img src="./public/<?=$dados['curso_Prof']['fotoProfessor']?>" alt="Professor do Curso" class="img-responsive img-circle" style="margin-left: 30px;">
      </div>
      <hr class="style18">
      <ul>
        <li><strong>Professor: </strong> <?= $dados['curso_Prof']['nmProfessor'] ?></li>
        <li><strong>Canal: </strong> <a href="<?=$dados['curso_Prof']['linkCanalProf']?>"><?= $dados['curso_Prof']['canalProfessor'] ?></a></li>
        <li><strong>Duração do Curso: </strong> <?= $dados['curso_Prof']['cargaHorariaCurso'] ?></li>
        <li><strong>Certificado ao final: </strong> Não</li>
      </ul>
      <hr class="style18">
      <form method="get" action="/courseVideo?id=<?= $_SESSION['idCourse']?>"><button type="submit" class="btn btn-success btn-lg btn-block" name="button" > Ir ao curso!</button></form>
    </aside>

    <div class="row margeada">
      <h2 style="color: rgb(26, 164, 210); margin-left: 10px;">Veja os Vídeos aqui ou no youtube!</h2>
      <p>
        O instrutor ganhará visualização por qualquer uma das maneiras! Lembre-se
        sempre que <strong>o importante é você aprender!</strong>
      </p>
    </div>

    <div class="row margeada">
      <h2 style="color: black; margin-left: 10px;">Você também pode gostar de: </h2>
      <ul>
        <li>Outros cursos</li>
        <li>Outros cursos</li>
        <li>Outros cursos</li>
        <li>Outros cursos</li>
      </ul>
    </div>
  </div>
</div>


<div class="container">
  <div class="row">

  </div>

</div>



<?php require './app/views/inc/footer.php'; ?>
