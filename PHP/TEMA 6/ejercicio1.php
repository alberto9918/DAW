<?php

$errores='';
$enviado='';
$usuario= null;
$password= null;

   
//if($_SERVER['REQUEST_METHOD']=='POST')
//	echo "LOS DATOS SE ENVIARON CORRECTAMENTE POR MÉTODO POST";

if(isset($_POST['submit_formulario1'])){

    $usuario = $_POST['usuario'];
    $password = $_POST['password'];
    $caso = 0;
    
    if(!empty($usuario)){
        $usuario = filter_var($usuario, FILTER_SANITIZE_STRING);
        echo "Tu usuario es:  $usuario <br>";
    }else{
        $errores .= 'Por favor introduzca usuario <br>';
    }	
    
    
    if(!empty($password)){
        $password = filter_var($password, FILTER_SANITIZE_STRING);
        
        echo "Tu password es:  $password <br>";
        
    }else{
        $errores .= 'Por favor introduzca password <br>';
    }
    
    
    if(!$errores){
        $enviado='true';

        try{
            $conexion = new PDO('mysql:host=localhost:3306;dbname=prueba','usuario','usuario');

            $resultados = $conexion->query('select * from usuario');

            foreach($resultados as $fila){
                if($fila['nombreUsuario']==$usuario && $fila['password']==$password){
                    $caso = 1;
                    break;
                }

                if($fila['nombreUsuario']==$usuario && $fila['password']!=$password){
                    $caso = 2;
                    break;
                }

            }

            if($caso==0){
                $errores.="No existe ningún usuario con ese nombre";
            }else if($caso==1){
                $errores.="USUARIO Y CONTRASEÑA CORRECTOS. LOGIN OK";
            }else if($caso==2){
                $errores.="Contraseña incorrecta";
            }
    
            //$stmt = $conexion -> query("select * from usuario where nombreUsuario='$usuario' and password='$password'");
    
            /*$stmt = $conexion -> prepare("select * from usuario where nombreUsuario=:usuario and password=:password");
            $parametros=array('usuario'=>$usuario, 'password'=>$password);
            $stmt -> execute($parametros);*/
            //query("select * from usuario where nombreUsuario like :nom1 or nombreUsuario like :nom2);
            //$parametros=array(':nom1'=>$letra1, ':nom2'=>$letra2)
            //$stmt -> execute($parametros);

            /*$resultados = $stmt -> fetchAll();
    
            print_r($resultados);
            echo '<br>';*/
            
            
        }catch(PDOException $e){
            echo "Error: ". $e -> getMessage();
        }
    }
}

?>


<html>
<head>
<title>Ejercicio 1 BBDD</title>
<style>
    .error{color:red;}
</style>
</head>
<body>

<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
    
    <input type= "text" placeholder="Usuario:" name="usuario"  value="<?php if(!$enviado && isset($usuario)) echo $usuario; ?>">
    <br><br>
    
    <input type= "password" placeholder="Contraseña:" name="password" value="<?php if(!$enviado && isset($password)) echo $password; ?>">
    <br><br>
    
    
    <?php  if(!empty($errores)): ?>
        <div class = "error"> <?php echo $errores; ?> </div>
    <?php  endif;  ?>
    
    <input type= "submit" name = "submit_formulario1"  value ="Enviar">
</form>

</body>
</html>