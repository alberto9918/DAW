<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimum-scale=1.0">
    <title>Formulario Tarea 10</title>
    <link href="estilos.css" rel="stylesheet" type="text/css">
</head>
<body>

<?php
    include 'index.view.php';
?>

<form id="formulario" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
    
    <input type= "text" placeholder="Nombre:" name="nombre"  value="<?php if(!$enviado && isset($nombre)) echo $nombre; ?>">
    <br><br>
    
    <input type= "email" placeholder="Correo:" name="correo" value="<?php if(!$enviado && isset($correo)) echo $correo; ?>">
    <br><br>
    
    <textarea form ="formulario" placeholder="Mensaje:" name="mensaje" id="mensaje" rows="8"></textarea>
    <br><br>
    
    <?php  if(!empty($errores)): ?>
        <div class = "error"> <?php echo $errores; ?> </div>
    <?php  endif;  ?>
    
    <input class="enviar" type= "submit" name = "submit_formulario1"  value ="Enviar Correo">
</form>

</body>
</html>