<?php require './app/views/inc/header.php'; ?>
<!-- Start cursos -->



<section class="portfolio">

    <div class="course">
        <div class="container">
            <div class="row">


            <!-- Fazer isso com for quando for para PHP -->
            <?php foreach($dados as $d){ ?>
            
                <div class="row">
                    <h2 style="font-weight: bold; color: black;"><?= $d['nmCategoria'] ?></h2>
                </div>

                <div class="row course_2">
                    
                    <?php foreach($d['cursos'] as $cursos){?>
                    

                        <div class="col-sm-3 col-xs-12">
                            <h2><?= $cursos['nmCurso'] ?></h2>
                            <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                            <p><?= $cursos['infoCurso_Simples'] ?></p>
                            <img class="image-teste" src="./public/<?= $cursos['imagCurso'] ?>" >
                            <p>Publica em <?=  $cursos['dataCurso'];?></p>
                            <p><a href="/coursePage?id=<?= $cursos['idCurso']?>" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> <!-- Poderia ser um modal que abrisse para mostrar o curso -->
                        </div>

                    <?php } ?>
                
                
                </div>
            <?php } ?>





    <div class="container">
        <div class="row">
            <hr>
        </div>
    </di>
</section>
<?php require './app/views/inc/footer.php'; ?>
