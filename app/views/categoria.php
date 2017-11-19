<?php require './app/views/inc/header.php'; ?>


<div class="container">
    <div class="row">
        <div class="col-lg-2 col-md-1"></div>

        <div class="col-lg-8 col-md-10 col-sm-12">
            <div class="recent">
                <button class="btn-primarys"><h3>Categoria do seu Curso</h3></button>
            </div>

            <?= $flash? '<p class="alert alert-danger">' . $flash . '</p>' : ''?>

            <form role="form" method="post" action="#">
                <div class="form-group">
                    <input type="text" class="form-control" name="nomeCurso" placeholder="Digite o Nome do Curso" />
                </div>

                 <div class="form-group">
                    <input type="text" class="form-control" name="infoCurso_Simples" placeholder="Objetivo do curso">
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" name="infoCurso_Extensa" placeholder="Descrição do curso">
                </div>
                

                <button type="submit" class="btn btn-default btn-primary">Continuar</button>
            </form>
        </div>

        <div class="col-lg-2 col-md-1"></div>

        <div class="col-lg-8">
            <div class="recent">
                <button class="btn btn-primarys"><h3>Motivos para publicar seu curso</h3></button>
            </div>

            <div class="contact-area">
                <p>Se você já tem um canal no youtube, terá mais acesso a visualizações.<strong>Por quê? </strong></p>
                <p>Porque além de poderem ver seus vídeos pelo youtube, os seus alunos poderão aprender pelo nosso site.</p>
                <h4>Seu alcance de visualizações será ampliado para além do youtube:</h4>
                <p>YouTube, DailyMotion.</p>
                <p>Também tenha acesso aos comentários exclusivos do site! De aluno para aluno, de instrutor para instrutor, a troca de conhecimento é sempre bem vinda!</p>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <hr>
    </div>
</div>

<?php require './app/views/inc/footer.php'; ?>
