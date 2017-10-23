<?php require './app/views/inc/header.php'; ?>
<div class="container">
  <div class="row">
    <!-- PHP if para verificar se já se cadastrou
  em algum curso. Se sim, vai pro for, se não mostra
abaixo -->
    <div class="col-lg-8 col-lg-offset-2 col-xs-10 col-xs-offset-1 courses">
      <h1 class="noCurse">
        Você ainda não se inscreveu em nenhum curso!
      </h1>
      <p>
        Que tal fazer isso agora?
      </p>
      <hr class="style18">

      <div class="col-lg-8 col-lg-offset-2 col-xs-10 col-xs-offset-1">
        <button class="btn btn-primary btn-lg center" name="button">Cadastre-se nos Cursos</button>
      </div>
    </div>
    <!-- PHP for para repetir o código a seguir
  pegando a query e exibindo os cursos cadastrados -->

    <div class="col-lg-4 col-sm-2 col-xs-1">

    </div>


  </div>
</div>

<div class="container">
  <div class="row">
    <hr>
  </div>
</div>
<?php require './app/views/inc/footer.php'; ?>