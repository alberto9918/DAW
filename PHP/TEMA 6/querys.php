<?php
    try{
        $conexion = new PDO('mysql:host=localhost:3306;dbname=prueba','usuario','usuario');
        
        $stmt = $conexion -> prepare('select * from usuario');
        //tambien se puede usar query en vez de prepare. El prepare se usa más para sentencias preparadas.

        $stmt -> execute();
        $resultados = $stmt -> fetchAll();
        //ver contenido del array: El dump da más contenido que print.r
        /*var_dump($resultados);
        echo '<br>';*/
        print_r($resultados);
        echo '<br>';

        foreach ($resultados as $fila) {
            echo $fila['nombreUsuario']." <br>";
            echo $fila['password']."<br><br>";

            /*echo $fila[0]." <br>";
            echo $fila[1]."<br><br>";*/
        }

    }catch(PDOException $e){
        echo "Error: ". $e -> getMessage();
    }
?>