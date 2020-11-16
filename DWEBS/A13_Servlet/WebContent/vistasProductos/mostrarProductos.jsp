<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mostrar todos los productos</title>
</head>
<body>
    <h1>Listado de productos</h1>

    <table border=1>
        <tr>
            <td>COD_PROD</td>
            <td>SECCION</td>
            <td>NOMBRE_PROD</td>
            <td>PRECIO</td>
            <td>FECHA</td>
            <td>IMPORTADO</td>
            <td>PAÍS</td>
        </tr>
        <c:forEach var="producto" items="${requestScope.listaProductos}">
            <tr>
                <td>${producto.codProd}</td>
                <td>${producto.seccion}</td>
                <td>${producto.nombreProd}</td>
                <td>${producto.precio}</td>
                <td>${producto.fecha}</td>
                <td>${producto.importado}</td>
                <td>${producto.pais}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="tratarUsuarios.html">Inicio</a>
    <button type="button">
    	<a onclick="window.location.href='vistasProductos/insertaProducto.jsp'">Insertar nuevo producto</a>
    </button>

</body>
</html>