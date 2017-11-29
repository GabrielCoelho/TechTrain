<?php require './app/views/inc/header.php'; ?>


<div class="container">
    <div class="row">
        <div class="col-lg-2 col-md-1"></div>

        <div class="col-lg-8 col-md-10 col-sm-12">
            <div class="recent">
                <button class="btn-primarys"><h3>Publicar aqui seu vídeo</h3></button>
            </div>

            <?= $flash? '<p class="alert alert-danger">' . $flash . '</p>' : ''?>

            <form role="form" method="post" action="/postVideo">
                <div class="form-group">
                    <select name="idCurso" class="form-control">
                        <?php foreach($cursos as $c) {  ?>
                            <option value="<?= $c['idCurso'] ?>"><?= $c['nmCurso'] ?></option>
                        <?php } ?>
                    </select>
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" name="Vtitulo" placeholder="Digite o titúlo do vídeo" required/>
                </div>

                 <div class="form-group">
                    <input type="text" class="form-control" name="Vurl" placeholder="URL ou link do vídeo"required>
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" name="Vdescricao" placeholder="Descrição do vídeo">
                </div>

                <div class="form-group">
                    <input type="time" class="form-control" name="Vduracao" placeholder="Duração do vídeo">
                </div>
                 
                <button type="submit" class="btn btn-default btn-primary">Publicar</button>
            </form>
        </div>

        <div class="col-lg-2 col-md-1"></div>

        <div class="col-lg-8">
            <div class="recent">
                <button class="btn btn-primarys"><h3>Motivos para publicar seu vídeo</h3></button>
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



<?php require './app/views/inc/footer.php'; ?>
