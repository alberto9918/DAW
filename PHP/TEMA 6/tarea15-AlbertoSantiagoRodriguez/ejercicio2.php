<?php
    try{
        $conexion = new PDO('mysql:host=localhost:3306;dbname=PRUEBASCLASE','usuario','usuario');
        
        $stmt = $conexion -> prepare('select * from EMPLE');
        $stmt -> execute();
        $resultados = $stmt -> fetchAll();

        foreach ($resultados as $key => $row) {
            $aux[$key] = $row['SALARIO'];
        }

        array_multisort($aux, SORT_ASC, $resultados);

        echo '<table border="1px">';
            echo '<tr><td>EMP_NO</td><td>APELLIDO</td><td>OFICIO</td><td>DIR</td><td>FECHA_ALT</td><td>SALARIO</td><td>COMISION</td><td>DEPT_NO</td></tr>';

            foreach ($resultados as $fila) {
                echo '<tr>';
                    echo '<td>'.$fila['EMP_NO'].'</td>';
                    echo '<td>'.$fila['APELLIDO'].'</td>';
                    echo '<td>'.$fila['OFICIO'].'</td>';
                    echo '<td>'.$fila['DIR'].'</td>';
                    echo '<td>'.$fila['FECHA_ALT'].'</td>';
                    echo '<td>'.$fila['SALARIO'].'</td>';
                    echo '<td>'.$fila['COMISION'].'</td>';
                    echo '<td>'.$fila['DEPT_NO'].'</td>';
                echo '</tr>';
    
            }

        echo '</table>';

        

    }catch(PDOException $e){
        echo "Error: ". $e -> getMessage();
    }
?>