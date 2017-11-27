<?php require './app/views/inc/header.php';?>
<!-- Start the page -->
<div class="container">
  <div class="row">
    <div class="page-header">
      <div class="container">
        <h1 style="color: black;"><?= $dados['nmCurso'] ?> <small><?= $dados['infoCurso_Simples'] ?></small></h1>
      </div>
    </div>
    <hr>
    <?php foreach($dados['video'] as $video){?>
        
                <?php 
                // Essa lógica é para padronizar os url dos videos de modo não ocorrer nenhum erro.
                // Ao cadastrar um video pode se considerar o url do browser.
                  $url = str_replace('watch?v=','embed/', $video['urlVideo'] );
                  $url = str_replace('&','?', $url );
               ?>
      <div class="">
        <h2 style="font-weight: bold; color: black;"><?= $video['tituloVideo'] ?></h2>
      </div>           
      <div class="video-container">
        <!-- Aqui vem o iframe do vídeo > aqui que incluiremos o php-->
        <iframe src="<?=  $url ?>" frameborder="0" gesture="media" allowfullscreen></iframe>
      </div>
      <div class="row">
      <p>
        <!--conteúdo explicativo do vídeo <br>  Pode ser o que está na descrição no YT -->
        <p> Duracão:  <?=  $video['duracaoVideo'];?> 
        
     </p>
    </div>

      <div class="row">
      <p>
        <!--conteúdo explicativo do vídeo <br>  Pode ser o que está na descrição no YT -->
        <?= $video['descricaoVideo'] ?>
        
     </p>
    </div>
    <?php } ?>
  </div>
</div>


<?php require './app/views/inc/footer.php';?>
