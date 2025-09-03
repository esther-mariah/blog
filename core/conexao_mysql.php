<?php

function conecta(): mysqli
{
    $servidor = 'test';
    $banco = 'blog';   
    $port = 3306; 
    $usuario = 'root';
    $senha = '1234';
    $conexao = mysqli_connect($servidor, $usuario, $senha, $banco, $port);
     if (!$conexao){
        echo 'Erro ao conectar com o MySQL: ' . PHP_EOL;
        echo 'Errno: ' . mysqli_connect_errno() . PHP_EOL;
        echo 'Error: ' . mysqli_connect_error() . PHP_EOL;
        exit;
     }
     return $conexao;
}
function desconecta(mysqli $conexao): void
{
    mysqli_close($conexao);
}
?>