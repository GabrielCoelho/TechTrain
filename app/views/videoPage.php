<?php require './app/views/inc/header.php';?>
<!-- Start the page -->
<div class="container">
  <div class="row">
    <div class="page-header">

        <h1 style="color: black;"><?= $dados['nmCurso'] ?> <small><?= $dados['infoCurso_Simples'] ?></small></h1>
    
    </div>  
  </div>
  <div class="row">
    <div class="row course_2">
      <?php foreach($dados['video'] as $video){?>
        
                <?php 
                // Essa lógica é para padronizar os url dos videos de modo não ocorrer nenhum erro.
                // Ao cadastrar um video pode se considerar o url do browser.
                  $url = str_replace('watch?v=','embed/', $video['urlVideo'] );
                  $url = str_replace('&','?', $url );
               ?>

                    <div class="col-sm-3 col-xs-12">
                      <div class="">
                          <h2 style="font-weight: bold; color: black;"><?= $video['tituloVideo'] ?></h2>
                      </div>
                            <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                            <iframe width="420" height="345" src="<?=  $url ?>">
                            </iframe>
                            <p><?= $video['descricaoVideo'] ?></p>
                            <p> Duracão:  <?=  $video['duracaoVideo'];?> </p>
                    </div>

      <?php } ?>
    </div>  
  </div>
</div>


<?php require './app/views/inc/footer.php';?>
