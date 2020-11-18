<?php

$errores='';
$enviado='';
$nombre= null;
$correo= null;
$mensaje= null;
   
//if($_SERVER['REQUEST_METHOD']=='POST')
//	echo "LOS DATOS SE ENVIARON CORRECTAMENTE POR MÉTODO POST";

if(isset($_POST['submit_formulario1'])){
    
    $nombre = $_POST['nombre'];
    $correo = $_POST['correo'];
    
    if(!empty($nombre)){
        $nombre = filter_var($nombre, FILTER_SANITIZE_STRING);
        echo "Tu nombre es:  $nombre <br>";
    }else{
        $errores .= 'Por favor introduzca nombre <br>';
    }	
    
    
    if(!empty($correo)){
        $correo = filter_var($correo, FILTER_SANITIZE_EMAIL);
        if(!filter_var($correo, FILTER_VALIDATE_EMAIL)){
            $errores .= 'No ha introducido un correo válido <br>';
        }else{
            echo "Tu correo es:  $correo <br>";
        }
    }else{
        $errores .= 'Por favor introduzca correo <br>';
    }

    if(!empty($mensaje)){
        $mensaje = filter_var($mensaje, FILTER_SANITIZE_STRING);
        echo "Tu mensaje es:  $mensaje <br>";
    }else{
        $errores .= 'Por favor introduzca mensaje <br>';
    }	
    
    if(!$errores)
        $enviado='true';
}

//Este archivo debería ser el index, y el archivo que contiene el formulario, el index.view
//require 'index.view.php';

?>