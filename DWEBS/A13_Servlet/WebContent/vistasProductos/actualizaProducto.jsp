<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actualizar Producto</title>
</head>
<body>
<fmt:requestEncoding value="UTF-8" />
	<h1>Actualizar producto</h1>

	<c:set var="prod" value="${sessionScope.productoEncontrado}" />
	
	<form name="formulario" action="Controlador_Productos" method="POST">
		<input type="hidden" value="actualizar" name="instruccion" />
		<p>
			<label for="name">Código: </label> <input type="text" name="codProd" value="${prod.codProd}" readonly>
		</p>
		<p>
			<label for="name">Sección: </label> <input type="text" name="seccion" value="${prod.seccion}">
		</p>
		<p>
			<label for="name">Nombre: </label> <input type="text" name="nombreProd" value="${prod.nombreProd}">
		</p>

		<p>
			<label for="apellido">Precio: </label> <input type="text"
				name="precio" value="${prod.precio}">
		</p>

		<p>
			<label for="usuario">Fecha: </label> <input type="text" name="fecha"
				placeholder="yyyy-MM-dd" value="${prod.fecha}">
		</p>

		<p>
			<label for="importado">Importado: </label> <input type="radio"
				name="importado" value="si"> Sí <input type="radio"
				name="importado" value="no"> No
		</p>

		<p>
			<label for="pais">País: </label> <input type="text" name="pais" value="${prod.pais}">
		</p>

		<p>
			<input type="submit" value="Actualizar producto">
		</p>
	</form>

</body>
</html>