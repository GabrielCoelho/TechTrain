<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>TechTrain</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="./public/css/bootstrap.min.css" rel="stylesheet">
        <link href="./public/css/responsive-slider.css" rel="stylesheet">
        <link rel="stylesheet" href="./public/css/animate.css">
        <link rel="stylesheet" href="./public/css/font-awesome.min.css">
        <link href="./public/css/style.css" rel="stylesheet">	
    </head>
    <body>
        <div class="cabecalho"></div>
        <header>
            <div class="container">
                <div class="row">
                    <nav class="navbar navbar-default" role="navigation">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <div class="navbar-brand">
                                    <a href="/"><h1>TechTrain</h1></a>
                                </div>
                            </div>
                            <div class="menu">
                                <button class="btn-open-menu"><i class="fa fa-bars fa-lg" aria-hidden="true"></i></button>
                                <button class="btn-close-menu"><i class="fa fa-times fa-lg" aria-hidden="true"></i></button>
                                
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation" class="active"><a href="/">Home</a></li>
                                    <li class="curso" role="presentation"><a href="/courses">Cursos</a></li>
                                    <li class="blog" role="presentation"><a href="/blog">Blog</a></li>
                                    <li class="cert" role="presentation"><a href="/certify">Certificados</a></li>
                                    <li class="dropdown login">
                                        <a href="#" id="dropdownMenu1" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i> Login <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                            <li style="width: 250px;">
                                                <form class="navbar-form form" role="form">
                                                    <div class="form-group" style="padding-top: 5px;">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user color-blue"></i></span>
                                                            <!--Endereço de Email-->
                                                            <input id="emailInput" placeholder="Endereço de email" class="form-control" oninvalid="setCustomValidity('Por favor, digite um endereço válido')" onchange="try {
                                                                                                                            setCustomValidity('')
                                                                                                                        } catch (e) {
                                                                                                                        }" required="" name="loginEntrada" type="email">
                                                        </div>
                                                    </div>
                                                    <div class="form-group" style="padding-top: 5px;">
                                                        <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>
                                                            <!--Senha-->
                                                            <input id="passwordInput" placeholder="Senha" class="form-control" oninvalid="setCustomValidity('Por favor, digite uma senha')" onchange="try {
                                                                                                                            setCustomValidity('')} catch (e) {
                                                                                                                        }" required="" name="loginSenha" type="password">
                                                        </div>
                                                    </div>
                                                    <!--  BASIC ERROR MESSAGE
                                                    <div class="form-group">
                                                    <label class="error-message color-red">*Email & password don't match!</label>
                                                    </div>
                                                    -->
                                                    <div class="form-group" style="padding-top: 5px;">
                                                        <!--Botão de Login-->
                                                        <button type="submit" style="margin-left: 85px;" class="btn btn-primary form-control">Login</button>
                                                    </div>
                                                    <div class="form-group" style="padding-top: 5px;">
                                                        <!--Resetar a Senha-->
                                                        <span class="pull-right"><a href="#">Esqueceu sua senha?</a></span>
                                                    </div>
                                                    <div class="form-group">
                                                        <!--Novo no site? Cadastre-se -->
                                                        <span class="pull-right"><a href="/cadastro">Cadastre-se</a></span>
                                                    </div>
                                                </form>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>			
                    </nav>
                </div>
            </div>
        </header>