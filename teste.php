<?php


try 
{
    $conn = new PDO("mysql:host=localhost;dbname=tech_train", 'root', '');
        
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->exec("SET CHARACTER SET utf8");

    var_dump($conn);
    
}
catch(PDOException $e)
{
    echo "Conexão falhou: " . $e->getMessage();
} 


$x = 'marc';
$y = 4;

// $sql = "UPDATE usuario SET nomeUsuario = :valor1 WHERE idUsuario = :valor2";
// $stmt = $conn->prepare($sql);

// $stmt->bindParam(':valor1', $x);
// $stmt->bindParam(':valor2', $y);

//  try
//  {
//     $stmt->execute();
//  }
//  catch(PDOException $e)
//  {
//     echo "Erro: " . $e->getMessage();
//  } 

$x = 1;

$sql = "select * from usuario order by loginUsuario desc";
$stmt = $conn->prepare($sql);
// $stmt->bindParam(':valor1', $x);


 try
 {
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    print_r($result);
 }
 catch(PDOException $e)
 {
    echo "Erro: " . $e->getMessage();
 } 