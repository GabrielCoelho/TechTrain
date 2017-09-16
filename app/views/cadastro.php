<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastre-se no TechTrain</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./public/css/bootstrap.min.css" rel="stylesheet">
    <link href="./public/css/responsive-slider.css" rel="stylesheet">
    <link rel="stylesheet" href="./public/css/animate.css">
    <link rel="stylesheet" href="./public/css/font-awesome.min.css">
    <link href="./public/css/style.css" rel="stylesheet">	
</head>
  <body>
    <header>
    <div class="container">
    <div class="row">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <div class="navbar-brand">
                        <a href="/"><h1>TechTRAIN</h1></a>
                    </div>
                </div>
                <div class="menu">
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
                                            <input id="emailInput" placeholder="Endereço de email" class="form-control" oninvalid="setCustomValidity('Por favor, digite um endereço válido')" onchange="try{setCustomValidity('')}catch(e){}" required="" name="loginEntrada" type="email">
                                        </div>
                                    </div>
                                    <div class="form-group" style="padding-top: 5px;">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>
                                            <!--Senha-->
                                            <input id="passwordInput" placeholder="Senha" class="form-control" oninvalid="setCustomValidity('Por favor, digite uma senha')" onchange="try{setCustomValidity('')}catch(e){}" required="" name="loginSenha" type="password">
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
	
	<div class="container">
		<div class="row">
            <div class="col-lg-2 col-md-1"></div>
			<div class="col-lg-8 col-md-10 col-sm-12">
				<div class="recent">
					<button class="btn-primarys"><h3>Cadastre-se</h3></button>
				</div>		
				<form role="form">
					<div class="form-group">
                    <input type="text" class="form-control" name="nomeCompleto" placeholder="Nome Completo" />
                    </div>
                    <div class="form-group">
					<input type="email" class="form-control" name="email" placeholder="Email">
					</div>
					<div class="form-group">
					<input type="password" class="form-control" name="senha" placeholder="Senha">
                    </div>
                    <div class="form-group">
					<input type="password" class="form-control" name="senha-repeat" placeholder="Repita a Senha">
					</div>
                    <h2 class="cadastro-form">Ou...</h2>
                    <p>
                    <ul class="nav nav-tabs">
                    <li role="presentation" class="cert"><a class="btn btn-info"><i class="fa fa-github fa-2x"></i>  Cadastre-se com Github</a>
                    <li role="presentation" class=""><a class="btn btn-info"><i class="fa fa-facebook fa-2x"></i>  Cadastre-se com Facebook</a>
                    <li role="presentation" class="login"><a class="btn btn-info"><i class="fa fa-twitter fa-2x"></i>  Cadastre-se com Twitter</a>
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
					<p>Tenha acesso a promoções para usuários cadastrados, 
                        e faça parte da comunidade por trás de TechTrain. <strong>Como? </strong>
                    </p>
					<p>Ajude a atualizar os cursos existentes, indique novos cursos ou
                         torne-se um instrutor e upe os vídeos na plataforma que você 
                         desejar. 
                    </p>
                    <h4>Atualmente trabalhamos com:</h4>YouTube, DailyMotion.<br>
                    
                    <p>
                        Também tenha acesso aos comentários exclusivos do site!
                        De aluno para aluno, de instrutor para instrutor, a troca de conhecimento 
                        é sempre bem vinda!
                    </p>
				</div>										
			</div>			
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<hr>
		</div>
	</div>
	
	<!--start footer-->
	<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="widget">
                    <h5 class="widgetheading">Entre em Contato</h5>
                    <address>
                    <strong>TechTrain Group</strong><br>
                     Avenida Bandeirantes, 2589 Jd Ype 1<br>
                     Mogi Guaçu - São Paulo 13846000 Brasil
                    </address>
                    <p>
                        <i class="icon-phone"></i> +55 (19) 3831-0000 - +55 (19) 3831-0022 <br>
                        <i class="icon-envelope-alt"></i> contato@techtraincurso.com.br
                    </p>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="widget">
                    <h5 class="widgetheading">Páginas</h5>
                    <ul class="link-list">
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">Termos e Condições</a></li>
                        <li><a href="#">Política de Privacidade</a></li>
                        <li><a href="#">Trabalhe conosco</a></li>
                        <li><a href="#">Entre em Contato</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="widget">
                    <h5 class="widgetheading">Últimos Posts</h5>
                    <ul class="link-list">
                        <li><a href="#">Jornada de desenvolvimento</a></li>
                        <li><a href="#">Aprendizado de Github para o Grupo</a></li>
                        <li><a href="#">Pedras no caminho</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="widget">
                    <h5 class="widgetheading">Instagram do Grupo</h5>
                    <div class="flickr_badge">
                        <script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
                    </div>
                    <div class="clear">
                    </div>
                </div>
            </div>
        </div>
    </div>
		
		
		<div class="container">
			<div class="row">
				<hr>
			</div>
		</div>
		
		<div id="sub-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="copyright">
							<p>
								<span>&copy; TechTrain Group 2017 Todos os Direitos Reservados. Por </span><a href="https://github.com/GabrielCoelho" target="_blank">Gabriel Coelho</a> e <a href="https://github.com/vcbecaleti">Vinicius Becaleti</a>
							</p>
                            <!-- 
                                All links in the footer should remain intact. 
                                Licenseing information is available at: http://bootstraptaste.com/license/
                                You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Arsha
                            -->
						</div>
					</div>
					<div class="col-lg-6">
						<ul class="social-network">
							<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
							<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
							<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
							<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
							<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--end footer-->
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="./public/js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- <script src="./public/js/bootstrap.min.js"></script>-->
	<script src="./public/js/responsive-slider.js"></script>
	<script src="./public/js/wow.min.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>
    </body>
</html>