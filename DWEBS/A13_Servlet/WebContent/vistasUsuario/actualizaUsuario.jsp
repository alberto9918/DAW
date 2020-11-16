<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Actualizar usuario</title>
	<!--  <script src="${pageContext.request.contextPath}/resources/js/botonActualiza.js"
	 type="text/javascript"></script> -->
</head>
<body>

<h2 style="text-align: center;">Teclee nombre y contraseña del usuario a modificar</h2>
	
	<form name="formulario" action="${pageContext.request.contextPath}/Controlador_ActualizarUsuario" method="POST">
		
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
            <input type="submit" name="botonBusca" id="botonBusca" value="Buscar usuario">
        </p>
        
        <c:set var="usu" value="${sessionScope.usuarioEncontrado}"/>
    
    
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
            <input type="submit" name="botonActualizar" id="botonActualizar" value="Actualizar usuario">
        </p>
    </form>

</body>
</html>