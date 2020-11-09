<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<h2 style="text-align: center;">Login del usuario</h2>
	
	<form name="formulario" action="Recoge_datos.jsp" method="POST">
		
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

</body>
</html>