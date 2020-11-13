<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mostrar todos</title>
</head>
<body>
    <h1>Listado de los usuarios</h1>

    <table border=1>
        <tr>
            <td>ID</td>
            <td>NOMBRE</td>
            <td>APELLIDOS</td>
            <td>USUARIO</td>
            <td>CONTRASEÑA</td>
            <td>PAÍS</td>
            <td>TECNOLOGÍA</td>
        </tr>
        <c:forEach var="user" items="${requestScope.listaUsuarios}">
            <tr>
                <td>${user.id_usuario}</td>
                <td>${user.nombre}</td>
                <td>${user.apellidos}</td>
                <td>${user.usuario}</td>
                <td>${user.contrasena}</td>
                <td>${user.pais}</td>
                <td>${user.tecnologia}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="tratarUsuarios.html">Inicio</a>

</body>
</html>