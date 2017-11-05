<?php require './app/views/inc/header.php'; ?>


<div class="container">
    <div class="row">
        <div class="col-lg-2 col-md-1"></div>

        <div class="col-lg-8 col-md-10 col-sm-12">
            <div class="recent">
                <button class="btn-primarys"><h3>Cadastre-se</h3></button>
            </div>

            <?= $flash? '<p class="alert alert-danger">' . $flash . '</p>' : ''?>

            <form role="form" method="post" action="/post-register">
                <div class="form-group">
                    <input type="text" class="form-control" name="fullName" placeholder="Nome Completo" />
                </div>

                <div class="form-group">
                    <input type="date" class="form-control" name="dtNasc" placeholder="Data de nascimento">
                </div>

                <div class="form-group">
                    <input type="email" class="form-control" name="email" placeholder="Email">
                </div>

                <div class="form-group">
                    <input type="text" class="form-control" name="userName" placeholder="Nome de Usuário">
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" name="password" placeholder="Senha">
                </div>

                <div class="form-group">
                    <input type="password" class="form-control" name="rPassword" placeholder="Repita a Senha">
                </div>

                <h2 class="cadastro-form">Ou...</h2>

                <p>
                <ul class="nav nav-tabs">
                    <li role="presentation" class="cert"><a class="btn btn-info"><i class="fa fa-github fa-2x"></i>  Cadastre-se com Github</a></li>
                    <li role="presentation" class=""><a class="btn btn-info"><i class="fa fa-facebook fa-2x"></i>  Cadastre-se com Facebook</a></li>
                    <li role="presentation" class="login"><a class="btn btn-info"><i class="fa fa-twitter fa-2x"></i>  Cadastre-se com Twitter</a></li>
                </ul>
                </p>

                <button type="submit" class="btn btn-default btn-primary">Submit</button>
            </form>
        </div>

        <div class="col-lg-2 col-md-1"></div>

        <div class="col-lg-8">
            <div class="recent">
                <button class="btn btn-primarys"><h3>Motivos para se cadastrar</h3></button>
            </div>

            <div class="contact-area">
                <p>Tenha acesso a promoções para usuários cadastrados, e faça parte da comunidade por trás de TechTrain. <strong>Como? </strong></p>
                <p>Ajude a atualizar os cursos existentes, indique novos cursos ou torne-se um instrutor e upe os vídeos na plataforma que você desejar.</p>
                <h4>Atualmente trabalhamos com:</h4>
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
