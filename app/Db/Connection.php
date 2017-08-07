<?php

namespace Project\Db;

class Connection
{
    public static function getConnection()
    {
    
         try 
        {
            $conn = new \PDO(
                "mysql:host={$_ENV['config']['host']};dbname={$_ENV['config']['dbname']}", 
                $_ENV['config']['user'], 
                $_ENV['config']['password']
            );
            $conn->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
            $conn->exec("SET CHARACTER SET utf8");
            return $conn;
        }
        catch(\PDOException $e)
        {
            echo "Conexão falhou: " . $e->getMessage();
        } 
    }
}