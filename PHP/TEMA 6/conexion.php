<?php
    try{
        $conexion = new PDO('mysql:host=localhost:3306;dbname=prueba','usuario','usuario');
        echo 'Conexión ok';
    }catch(PDOException $e){
        echo "Error: ". $e -> getMessage();
    }
?>