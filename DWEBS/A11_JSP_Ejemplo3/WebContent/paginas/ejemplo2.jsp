<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo 2</title>
</head>
<body>
	<h2 style="text-align: right;">Registro</h2>
	
	<form name="formulario" action="" method="POST">
	
		<p>
			<label for="name">Nombre: </label>
			<input type="text" name="nombre">
		</p>
		
		<p>
			<label for="apellido">Apellido: </label>
			<input type="text" name="apellido">
		</p>
		
		<p>
			<label for="usuario">Usuario: </label>
			<input type="text" name="usuario">
		</p>
		
		<p>
			<label for="password">Contraseña: </label>
			<input type="password" name="password">
		</p>
		
		<p>
			<label for="pais">País: </label>
			<select id="pais" name="pais" required>
                    <option value="España">España</option>
                    <option value="Francia">Francia</option>
                    <option value="Alemania">Alemania</option>			
            </select>
		</p>
		
		<p>
			<label for="tecnologias">Tecnologías: </label>
			<input type="checkbox" name="tecnologias" value="Java">Java
            <input type="checkbox" name="tecnologias" value="PHP">PHP
            <input type="checkbox" name="tecnologias" value="JavaScript">JavaScript
		</p>
        
        

        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Enviar">
        </p>
    </form>
	
	
	<p><a href="../index.jsp">volver...</a></p>
</body>
</html>