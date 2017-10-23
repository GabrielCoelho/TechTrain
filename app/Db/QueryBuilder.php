<?php

namespace Project\Db;

use Project\Db\Connection;

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

    public function selectOrderBy($table, $field, $value, $type = 'asc')
    {
        
        $sql = "select * from {$table} where {$field} = :v1 order by idUsuario {$type}";
        $stmt = $this->pdo->prepare($sql);

        $stmt->bindParam(':v1', $value);

        try
        {
            $stmt->execute();
            return $result = $stmt->fetchAll(\PDO::FETCH_ASSOC);
           
        }
        catch(PDOException $e)
        {
            echo "Erro: " . $e->getMessage();
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

        
        $sql = "UPDATE usuario SET nomeUsuario = :valor1 WHERE idUsuario = :valor2";
        $stmt =  $this->pdo->prepare($sql);

        $stmt->bindParam(':valor1', $_POST['fullName']);
        $stmt->bindParam(':valor2', $_SESSION['id']);

        try
        {
            $stmt->execute();
        }
        catch(PDOException $e)
        {
            echo "Erro: " . $e->getMessage();
        }



        /*get the full name of the user by the form
        $newFullName = $_POST['fullName'];

        //create the object of QueryBuilder

         var_dump($id);
         die(); */    

        
    }
}
