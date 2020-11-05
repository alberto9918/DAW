<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo 3</title>
</head>
<body>
	<h2 style="text-align: right;">Login</h2>
	
	<form name="formulario" action="Comprueba_Usuario.jsp" method="POST">
	
		<p>
			<label for="usuario">Usuario: </label>
			<input type="text" name="usuario">
		</p>
		
		<p>
			<label for="password">Contraseña: </label>
			<input type="password" name="password">
		</p>
		
        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Login">
        </p>
    </form>
	
	
	<p><a href="../index.jsp">volver...</a></p>
</body>
</html>