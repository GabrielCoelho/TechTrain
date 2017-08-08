<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="./public/css/style.css" rel="stylesheet">
        <link href="./public/css/font-awesome/font-awesome.css" rel="stylesheet">
        <link href="./public/css/font-awesome/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="wrapperbody">
            <header class="cabecalho">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut tempora, nemo expedita tempore perspiciatis deserunt ipsam, assumenda, at nisi beatae accusantium! Quas autem dolores, vero repellendus similique ullam aspernatur cumque.
            </header>
            <nav class="navegacao">
              <div class="logoleft">
                TechTrain
              </div>
              <button class="btn-menu bg-gradient"><i class="fa fa-bars fa-lg"></i></button>
              <div class="menu">
                  <a href="" class="btn-close">x</a>
                  <ul>
                      <li><a href="">Pesquisar</a></li>
                      <li><a href="">Cursos</a></li>
                      <li><a href="">Certificados</a></li>
                      <li><a href="">Login</a></li>
                  </ul>
              </div>
            </nav>
            <main class="principal"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut tempora, nemo expedita tempore perspiciatis deserunt ipsam, assumenda, at nisi beatae accusantium! Quas autem dolores, vero repellendus similique ullam aspernatur cumque. </p></main>
            <aside class="lateral"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut tempora, nemo expedita tempore perspiciatis deserunt ipsam, assumenda, at nisi beatae accusantium! Quas autem dolores, vero repellendus similique ullam aspernatur cumque. </p></aside>
            <footer class="rodape"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut tempora, nemo expedita tempore perspiciatis deserunt ipsam, assumenda, at nisi beatae accusantium! Quas autem dolores, vero repellendus similique ullam aspernatur cumque. </p></footer>
        </div>
        <!-- JQUERY --> 
        <script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script>
        $(".btn-menu").click(function(){
          $(".menu").show();
        });
        $(".btn-close").click(function(){
          $(".menu").hide();
        });
        </script>      
    </body>
</html>