<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="variableDePagina" scope="page">
	Esta información se guarda en la página
</c:set>

<c:set var="variableDeSesion" scope="session">
	Esta información se guarda en la sesión
</c:set>

<c:set var="variableDeAplicacion" scope="application">
	Esta información se guarda en la aplicación
</c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>JSTL</title>

</head>
<body>
	<p>ejemplo JSTL c:out</p>
	<p>
		Cadena de caracteres: <strong><c:out value="1+2+3" /></strong>
	</p>
	<p>
		Suma de valores: <strong><c:out value="${1+2+3}" /></strong>
	</p>
	
	<p>${variableDePagina}</p>
	<p>${variableDeSesion}</p>
	<p>${variableDeAplicacion}</p>
</body>
</html>