<?php require './app/views/inc/header.php';?>
<!-- Start the page -->
<div class="container">
  <div class="row">
    <div class="page-header">
      <div class="container">
        <h1 style="color: black;">NOME DO VÍDEO <small>Nome do Curso</small></h1>
      </div>
    </div>
    <hr>
      <div class="video-container">
        <!-- Aqui vem o iframe do vídeo > aqui que incluiremos o php-->
        <iframe src="https://www.youtube.com/embed/kmT5mVBF2tI" frameborder="0" gesture="media" allowfullscreen></iframe>
      </div>
  </div>

  <div class="row">
    <p>
      conteúdo explicativo do vídeo <br> <!-- Pode ser o que está na descrição no YT -->
      Lorem ipsum dolor sit amet,
      consectetur adipisicing elit,
      sed do eiusmod tempor incididunt ut labore
      et dolore magna aliqua. <br>
      Ut enim ad minim veniam,
      quis nostrud exercitation
      ullamco laboris nisi ut
      aliquip ex ea commodo consequat. <br>
      Duis aute irure dolor in
      reprehenderit in voluptate
      velit esse cillum dolore eu fugiat nulla pariatur.
    </p>
  </div>

  <div class="row">
    <h2 style="color: rgb(26, 164, 210); margin-left: 10px;">Veja os Vídeos aqui ou no youtube!</h2>
    <p>
      O instrutor ganhará visualização por qualquer uma das maneiras! Lembre-se
      sempre que <strong>o importante é você aprender!</strong>
   </p>
  </div>
  <div class="row">
    <h2 style="color: black; margin-left: 10px;">Próximos vídeos: </h2>
    <div class="col-xs-12 col-md-3">
      <a href="#"><img class="img-responsive" src="./public/images/keep-touch-smartphone.jpg" alt="Imagem video 2"></a>
    </div>  
    <div class="col-xs-12 col-md-3">
      <a href="#"><img class="img-responsive" src="./public/images/keep-touch-smartphone.jpg" alt="Imagem video 2"></a>
    </div>  
    <div class="col-xs-12 col-md-3">
      <a href="#"><img class="img-responsive" src="./public/images/keep-touch-smartphone.jpg" alt="Imagem video 2"></a>
    </div>  
    <div class="col-xs-12 col-md-3">
      <a href="#"><img class="img-responsive" src="./public/images/keep-touch-smartphone.jpg" alt="Imagem video 2"></a>
    </div>    
  </div>
</div>

<div class="container">
  <div class="row">
    <hr>
  </div>
</div>
<?php require './app/views/inc/footer.php';?>
