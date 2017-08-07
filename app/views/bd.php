<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>

    <h1> Dados da tabela</h1>
    
    <table>
    <thead>
            <tr>
                 <th>id</th>
                 <th>nome</th>
           </tr>

    </thead>

    <tbody>
    
<?php foreach ($resultado as $value) { ?>
            
            <tr>
                <td><? = $value['id']?></td>
                 <td><? = $value['nome']?></td>
                 </tr>
<?php }


        
