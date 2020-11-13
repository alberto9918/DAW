<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELimina usuarios</title>
</head>
<body>
	<h1>Elimina con clave de usuario</h1>

	<form action="../Controlador_EliminaPorClave" method="post">

		<div>
			<p>
				Id del usuario: <input type="text" name="idUsuario">
			</p>
		</div>
		<input type="submit" value="Borrar usuario">
	</form>
</body>
</html>