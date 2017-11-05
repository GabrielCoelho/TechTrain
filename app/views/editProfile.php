<?php require './app/views/inc/header.php'; ?>
<div class="container">
    <div class="row">
        <div class="col-lg-2 col-md-1"></div>
        <div class="col-lg-8 col-md-10 col-sm-12" id="editP">
            <div class="recent">
                <button class="btn-primarys"><h3>Editar perfil</h3></button>
            </div>		
            <h2>Nome Completo</h2>
            <p>Note que é necessário cadastrar seu nome completo para que possamos validar os certificados</p>
            <?= $flash? '<p class="alert alert-danger">' . $flash . '</p>' : ''?>
            <form role="form" method="post" action="/editName">
                <div class="form-group">
                    <input type="text" class="form-control" name="fullName" placeholder="Nome Completo" />
                    <button type="submit" class="btn btn-default brn-primary">Editar nome</button>
                </div>
            </form>
            <h2>Email</h2>
            <p>Caso seja necessário, troque aqui seu email</p>
            <?= $flash? '<p class="alert alert-danger">' . $flash . '</p>' : ''?>
            <form role="form" method="post" action="changeEmail">
                <div class="form-group">
                    <input type="text" class="form-control" name="changeEmail" placeholder="exemplo@email.com" />
                    <button type="submit" class="btn btn-default brn-primary">Trocar E-mail</button>
                </div>
            </form>
            <h2>Troque sua senha</h2>
            <p>Afinal, a sua senha "123123" não é nem um pouco segura!</p>
            <?= $flash? '<p class="alert alert-danger">' . $flash . '</p>' : ''?>
            <form role="form" method="post" action="/changePassword">
                <div class="form-group">
                <input type="password" class="form-control" name="oldPass" placeholder="Antiga Senha" /><br>
                <input type="password" class="form-control" name="newPass" placeholder="Nova Senha" /><br>
                <input type="password" class="form-control" name="repeatPass" placeholder="Repita a nova Senha" />
                    <button type="submit" class="btn btn-default brn-primary">Trocar Senha</button>
                </div>
            </form>
        </div>

        <div class="col-lg-2 col-md-1"></div>
<div class="container">
    <div class="row">
        <hr>
    </div>
</div>
<?php require './app/views/inc/footer.php'; ?>