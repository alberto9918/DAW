<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actualizar usuario</title>
</head>
<body>
<c:set var="usu" value="${requestScope.usuarioBuscado}"/>

<h2 style="text-align: center;">Teclee nombre y contraseña del usuario a modificar</h2>
	
	<form name="formulario" action="../Controlador_BuscarUsuarioActualizar" method="POST">
		
		<p>
			<label for="usuario">Usuario: </label>
			<input type="text" name="userName">
		</p>
		
		<p>
			<label for="password">Contraseña: </label>
			<input type="password" name="password">
		</p>
		
        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Buscar usuario">
        </p>
    </form>
    
    <form name="formulario" action="../Controlador_ActualizarUsuario" method="POST">
    
    	<p>
			<label for="name">Id del usuario: </label>
			<input type="text" name="idUsuario" value="4" readonly>
		</p>
		
		<p>
			<label for="name">Nombre: </label>
			<input type="text" name="nombre" value="${usuarioBuscado.nombre}">
		</p>
		
		<p>
			<label for="apellido">Apellidos: </label>
			<input type="text" name="apellidos" value="${usuarioBuscado.apellidos}">
		</p>
		
		<p>
			<label for="usuario">Usuario: </label>
			<input type="text" name="userName" value="${usuarioBuscado.usuario}">
		</p>
		
		<p>
			<label for="password">Contraseña: </label>
			<input type="password" name="password" value="${usuarioBuscado.contrasena}">
		</p>
		
		<p>
			<label for="pais">País: </label>
			<input type="text" name="pais" value="${usuarioBuscado.pais}">
		</p>
		
		<p>
			<label for="tecnologias">Tecnologías: </label>
			<input type="text" name="tecnologia" value="${usuarioBuscado.tecnologia}">
		</p>
		
        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Actualizar usuario">
        </p>
    </form>

</body>
</html>