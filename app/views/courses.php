<?php require './app/views/inc/header.php'; ?>
<!-- Start cursos -->
<section class="portfolio">

    <div class="course">
        <div class="container">
            <div class="row">
                <!-- <h2 style="font-weight: bold; color: black;">Cursos adicionados Recentemente</h2> -->
            <!-- </div> -->
            <!-- <div class="row course_1"> -->
                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 1</h2> -->
                    
                    <!-- Exemplo de imagem <img src="./public/images/smiling-smartphone.jpg" alt="TESTE" class="img-responsive"> -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                    
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <?php foreach($dados as $d){ ?>
            
                <div class="row">
                    <h2 style="font-weight: bold; color: black;"><?= $d['nmGrade'] ?></h2>
                </div>

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 2</h2> -->
                    
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                    
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <div class="row course_2">
                    
                    <?php foreach($d['cursos'] as $cursos){?>
                    

                        <div class="col-sm-3 col-xs-12">
                            <h2><?= $cursos['nomeCurso'] ?></h2>
                            
                            <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                           <p><?= $cursos['infoCurso_Simples'] ?></p>
                            <img class="image-teste" src="<?= $cursos['imagCurso'] ?>" >
                            <p><?= $cursos['dataCurso'] ?></p>
                            <p><a href="/coursePage?id=<?= $cursos['idCurso']?>" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso
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


                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 3</h2> -->
                    <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                   <!--  -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>Veja mais</h2> -->
                    <!-- <p>Cursos grátis recém adicionados</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja todos</a></p> Aqui é outra rota - '/recentlyAdded' ou 'novosCursos'... -->
                <!-- </div> -->
            <!-- </div> -->

            <!-- Fazer isso com for quando for para PHP -->
            <!-- <div class="row"> -->
                <!-- <h2 style="font-weight: bold; color: black;">CATEGORIA 1</h2> -->
            <!-- </div> -->
            <!-- <div class="row course_2"> -->
                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 1</h2> -->
                    <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                    <!--  -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 2</h2> -->
                   <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                    <!--  -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 3</h2> -->
                    <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>Veja mais</h2> -->
                    <!-- <p>Cursos grátis recém adicionados</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja todos</a></p> Aqui é outra rota - '/recentlyAdded' ou 'novosCursos'... -->
                <!-- </div> -->
            <!-- </div> -->

            <!-- <div class="row"> -->
                <!-- <h2 style="font-weight: bold; color: black;">CATEGORIA 2</h2> -->
            <!-- </div> -->
            <!-- <div class="row course_3"> -->
                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 1</h2> -->
                    <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                   <!--  -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 2</h2> -->
                    <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                    
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 3</h2> -->
                    <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                    <!--  -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>Veja mais</h2> -->
                    <!-- <p>Cursos grátis recém adicionados</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja todos</a></p> Aqui é outra rota - '/recentlyAdded' ou 'novosCursos'... -->
                <!-- </div> -->
            <!-- </div> -->

            <!-- <div class="row"> -->
                <!-- <h2 style="font-weight: bold; color: black;">CATEGORIA 3</h2> -->
            <!-- </div> -->
            <!-- <div class="row course_4"> -->
                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 1</h2> -->
                    <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                   <!--  -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 2</h2> -->
                   <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                    <!--  -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 3</h2> -->
                    <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                   <!--  -->
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>Veja mais</h2> -->
                    <!-- <p>Cursos grátis recém adicionados</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja todos</a></p> Aqui é outra rota - '/recentlyAdded' ou 'novosCursos'... -->
                <!-- </div> -->
            <!-- </div> -->

            <!-- <div class="row"> -->
                <!-- <h2 style="font-weight: bold; color: black;">CATEGORIA 4</h2> -->
            <!-- </div> -->
            <!-- <div class="row course_5"> -->
                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 1</h2> -->
                   <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                   
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 2</h2> -->
                   <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                   
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>CURSO 3</h2> -->
                   <!--  -->
                    <!-- Aqui vem uma imagem. Precisa de um campo no banco de dados para adicionar a imagem -->
                   
                    <!-- <p>Descrição breve do curso, mais ou menos 150 caracteres.</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja mais sobre o curso</a></p> Poderia ser um modal que abrisse para mostrar o curso -->
                <!-- </div> -->

                <!-- <div class="col-sm-3 col-xs-12"> -->
                    <!-- <h2>Veja mais</h2> -->
                    <!-- <p>Cursos grátis recém adicionados</p> -->
                    <!-- <p><a href="#" class="btn btn-success btn-xs">Veja todos</a></p> Aqui é outra rota - '/recentlyAdded' ou 'novosCursos'... -->
                <!-- </div> -->
            <!-- </div> -->
            <!-- Aqui termina o for -->
            <!-- <div class="row"> -->
                <!-- <hr class="style18"> -->
            <!-- </div> -->
            <!-- <div class="row"> -->
                <!-- <div class="col-md-5 col-md-offset-5"> -->
                    <!-- <button class="btn btn-lg btn-primary">Veja todos os Cursos</button> -->
                <!-- </div> -->
            <!-- </div> -->

        <!-- </div> -->
    <!-- </div> -->

<!--  -->
    <!-- <div class="container"> -->
        <!-- <div class="row"> -->
            <!-- <hr> -->
        <!-- </div> -->
    <!-- </div> -->
<!-- </section> -->