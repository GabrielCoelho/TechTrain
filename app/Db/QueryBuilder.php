<?php

namespace Project\Db;

use Project\Db\Connection;
use Project\Util\Flash;

class QueryBuilder
{
    
    private $pdo;

    public function __construct()
    {
        $this->pdo = Connection::getConnection();
    }

    public function select($table, $parameters = [], $first = false, $condition = 'and',  $fetch = \PDO::FETCH_ASSOC)
    {

        $params = array_map(function($p){
            return "$p = :$p";
        }, array_keys($parameters));

        $where = !empty($parameters) ? 'where ' . implode(" {$condition} ", $params) : '';
 
        $s = $this->pdo->prepare("select * from {$table} {$where}");
        try{
            $s->execute($parameters);
            
            return $first ? $s->fetch($fetch) : $s->fetchAll($fetch);

        }  catch(\PDOException $e){
             die($e->getMessage());
        }
        
    }
    
    public function insert($table, $data)
    {

        $columns = implode(',', array_keys($data));
        $values = ':' . implode(', :', array_keys($data));

        $sql = "INSERT INTO {$table} ({$columns}) VALUES ({$values})";
        $stmt = $this->pdo->prepare($sql);

        try {
            return $stmt->execute($data);
        } catch (\PDOException $ex) {
            die($ex->getMessage());
        }
    }

    public function delete($table, $data)
    {   
        $where = key($data) . ' = :' . key($data);
        //die($where);
        $sql = "DELETE FROM {$table} WHERE {$where}";
        $stmt = $this->pdo->prepare($sql);

        try {
           return $stmt->execute($data);
        } catch (\PDOException $ex) {
            die($ex->getMessage());
        }
    }

    public function update($table, $data, $condition)
    {   
        $columns = implode(' =?, ', array_keys($data)) . ' =? ';
        $where = key($condition) . ' = ?';

        $sql = "UPDATE {$table} SET {$columns} WHERE {$where}";
        $stmt = $this->pdo->prepare($sql);

        $dados = array_values($data);
        $dados[] = $condition[key($condition)];
        
        try {
            return $stmt->execute($dados);
        } catch (\PDOException $ex) {
            die($ex->getMessage());
        }
    }

    public function editFullName(){
        $sql = "UPDATE usuario SET nmUsuario = :valor1 WHERE idUsuario = :valor2";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':valor1', $_POST['fullName']);
        $stmt->bindParam(':valor2', $_SESSION['id']);
        try
        {
            $stmt->execute();
            Flash::setFlash('Nome atualizado com êxito!');
            header('Location: /editProfile');
        }
        catch(PDOException $e)
        {
            echo "Erro: " . $e->getMessage();
        } 

        /*get the full name of the user by the form
        $newFullName = $_POST['fullName'];

        //create the object of QueryBuilder
        $query = new QueryBuilder();
        $id = $query->select('usuario', $dados['nomeUsuario'], 'where nomeUsuario == $_SESSION[\'user\']'); 
         var_dump($id);
         die();     
        $query-> update('usuario', $newFullName, 'where');*/
        
    }
    public function changeEmail(){
        if(isset($_POST['changeEmail'])){
        $sql = "UPDATE usuario SET emailUsuario = :valor1 WHERE idUsuario = :valor2";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':valor1', $_POST['changeEmail']);
        $stmt->bindParam(':valor2', $_SESSION['id']);
        try
        {
            $stmt->execute();Flash::setFlash('Senha incorreta');
            Flash::setFlash('Email alterado com êxito!');
            header('Location: /editProfile');
        }
        catch(PDOException $e)
        {
            echo "Erro: " . $e->getMessage();
        } 
     }
    }
    public function changePasswd(){
        if ($_SESSION['senha'] !== $_POST['oldPass']) {
            Flash::setFlash('Senha incorreta');
            header('Location: /editProfile');
            die(var_dump($_POST['oldPass']));
    
        }

        //compara os dois campos de senha, devolvendo uma mensagem flash caso sejam diferentes
        elseif ($_POST['newPass'] !== $_POST['repeatPass']) {
                    
            Flash::setFlash('As senhas não conferem');
            header('Location: /editProfile');
             exit;
                }
        $sql = "UPDATE usuario SET senhaUsuario = :valor1 WHERE idUsuario = :valor2";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':valor1', crypt($_POST['newPass'], '123456mad6991ef'));
        $stmt->bindParam(':valor2', $_SESSION['id']);
            
        try
        {
            $stmt->execute();
        }
        catch(PDOException $e)
        {
            echo "Erro: " . $e->getMessage();
        } 
        
    }
}
