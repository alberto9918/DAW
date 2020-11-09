<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buscar usuario</title>
</head>
<body>
<h2>Búsqueda por clave de usuario</h2>
	
	<form name="formulario" action="../Controlador_BuscarUsuario" method="POST">
		
		<p>
			<label for="idUsuario">Id de usuario: </label>
			<input type="text" name="idUsuario">
		</p>
		
		<p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Buscar usuario">
        </p>
		
    </form>
</body>
</html>