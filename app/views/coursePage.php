<?php require './app/views/inc/header.php'; ?>
<!-- Start the page -->
<div class="page-header">
  <div class="container">
    <h1 style="color: black;">NOME DO CURSO <small>descrição brevíssima ou campo de aprendizado</small></h1>
  </div>
</div>
<div class="jumbotron">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <img src="./public/images/php_developers.jpg" alt="Imagem" class="img-responsive img-rounded">
        <!-- Aqui teremos a imagem do curso de tamanho maior que na rota /courses -->
      </div>
    </div>
    <div class="row margeada">
      <p>
        <?php $cursos['infoCurso_Simples']?>
        <!-- Aqui um conteúdo simples, apenas para explicar o que é e como é o curso -->
      </p>

    </div>

    <aside class="signupCourse course_5">
      <div class="col-xs-12">
        <img src="./public/images/d.jpg" alt="Professor do Curso" class="img-responsive img-circle" style="margin-left: 30px;">
      </div>
      <hr class="style18">
      <ul>
        <li><strong>Nome: </strong> João Rubens</li>
        <li><strong>Canal: </strong> <a href="https://www.youtube.com/channel/UCeLVLkSv831fCGFZmRaPnQQ">Professor Binho</a></li>
        <li><strong>Duração do Curso: </strong> 20 Horas</li>
        <li><strong>Certificado ao final: </strong> Não</li>
      </ul>
      <hr class="style18">
      <button type="button" class="btn btn-success btn-lg btn-block" name="button">Inscreva-se nesse curso!</button>
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
