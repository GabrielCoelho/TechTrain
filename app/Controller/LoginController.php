<?php
namespace Project\Controller;

use Project\Db\QueryBuilder;
use Project\Util\Flash;

class LoginController
{

    //esse método retorna a página de registro
    public function register()
    {
        // recebe qualquer mensagem flash disparada anteriormente
        $flash = Flash::getFlash();

        //mostra a view de registro
        require './app/views/cadastro.php';
    }

    // esse método recebe os dados para registrar um usuário
    public function postRegister()
    {
        //recebe os dados de email e senha
        $dados['nomeUsuario'] = htmlentities($_POST['fullName'], ENT_QUOTES);
        $dados['dataUsuario'] = htmlentities($_POST['dtNasc'], ENT_QUOTES);
        $dados['loginUsuario'] = htmlentities($_POST['email'], ENT_QUOTES);
        $dados['senhaUsuario'] = htmlentities($_POST['password'], ENT_QUOTES);
        $rPassword = htmlentities($_POST['rPassword'], ENT_QUOTES);

        //compara os dois campos de senha, devolvendo uma mensagem flash caso sejam diferentes
        if ($dados['senhaUsuario'] !== $rPassword) {
            Flash::setFlash('As senhas não conferem');
            header('Location: /register');
            exit;
        }

        // criptografa a senha para guardar no banco de dados. 
        // a sequencia que passei é bem fraca, mas é um exemplo de salt
        $dados['senhaUsuario'] = crypt($dados['senhaUsuario'], '123456mad6991ef');

        $q = new QueryBuilder();
        $cadastrado = $q->insert('usuario', $dados);
        
        // se não foi possivel realizar o cadastro, como por exemplo, email repetido
        // dispara um mensagem flash
        if (!$cadastrado) {
            Flash::setFlash('Dados inválidos');
            header('Location: /register');
            exit;
        }

        // guarda o email do usuario na session
        $_SESSION['user'] = $dados['loginUsuario'];

        //chama o método de configuração inicial do jogo
        header('Location: /');

    }

    //metodo para realizar o login do usuário
    public function login()
    {
        $dados['loginUsuario'] = htmlentities($_POST['email'], ENT_QUOTES);
        $dados['senhaUsuario'] = htmlentities($_POST['password'], ENT_QUOTES);

        $dados['senhaUsuario'] = crypt($dados['senhaUsuario'], '123456mad6991ef');
        
        $q = new QueryBuilder();

        
        $cadastrou = $q->select('usuarios', [
            'loginUsuario' => $dados['loginUsuario'], 
            'senhaUsuario' => $dados['senhaUsuario']
        ]);
       
        // se o usuário não foi encontrado no banco de dados
        // emite uma mensagem de erro
        if (!$cadastrou) {
            Flash::setFlash('Dados inválidos');
            header('Location: /');
            exit;
        }

        // autentica o usuário
        $_SESSION['user'] = $dados['loginUsuario'];
        
        header('Location: ');
    }

    public function logout()
    {
        //remove todas variáveis criadas de sessão
        session_unset();

        //devolve para a página inicial
        header('Location: /');
    }

    

    
}