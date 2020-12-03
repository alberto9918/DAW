<?php
    try{
        $conexion = new PDO('mysql:host=localhost:3306;dbname=PRUEBASCLASE','usuario','usuario');
        $tipo = "S";
        
        //where TIPO_CENTRO=? y después poner $stmt->bindParam(1,$tipo);
        $stmt = $conexion -> prepare('select * from CENTROS where TIPO_CENTRO=:tipo');
        $parametros=array('tipo'=>$tipo);
        $stmt -> execute($parametros);
        $resultados = $stmt -> fetchAll();

        foreach ($resultados as $key => $row) {
            $aux[$key] = $row['NOMBRE'];
        }

        array_multisort($aux, SORT_ASC, $resultados);

        echo '<table border="1px">';
            echo '<tr><td>COD_CENTRO</td><td>TIPO_CENTRO</td><td>NOMBRE</td><td>DIRECCION</td><td>NUM_PLAZAS</td></tr>';

            foreach ($resultados as $fila) {
                echo '<tr>';
                    echo '<td>'.$fila['COD_CENTRO'].'</td>';
                    echo '<td>'.$fila['TIPO_CENTRO'].'</td>';
                    echo '<td>'.$fila['NOMBRE'].'</td>';
                    echo '<td>'.$fila['DIRECCION'].'</td>';
                    echo '<td>'.$fila['NUM_PLAZAS'].'</td>';
                echo '</tr>';
    
            }

        echo '</table>';

        

    }catch(PDOException $e){
        echo "Error: ". $e -> getMessage();
    }
?>