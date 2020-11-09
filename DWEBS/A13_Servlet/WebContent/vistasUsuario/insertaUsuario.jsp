<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>
</head>
<body>
	<h2 style="text-align: center;">Registro del usuario</h2>
	
	<form name="formulario" action="../Controlador_InsertaUsuario" method="POST">
	
		<p>
			<label for="name">Nombre: </label>
			<input type="text" name="txtNombre">
		</p>
		
		<p>
			<label for="apellido">Apellidos: </label>
			<input type="text" name="txtApellidos">
		</p>
		
		<p>
			<label for="usuario">Usuario: </label>
			<input type="text" name="txtUsuario">
		</p>
		
		<p>
			<label for="password">Contraseña: </label>
			<input type="password" name="txtContrasena">
		</p>
		
		<p>
			<label for="pais">País: </label>
			<input type="text" name="txtPais">
		</p>
		
		<p>
			<label for="tecnologias">Tecnologías: </label>
			<input type="text" name="txtTecnologia">
		</p>
                

        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Crear usuario">
        </p>
    </form>

</body>
</html>