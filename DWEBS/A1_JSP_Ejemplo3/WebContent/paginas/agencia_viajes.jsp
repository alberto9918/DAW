<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agencia de viajes - Ejemplo 5</title>
</head>
<body>
	<h2 style="text-align: right;">Agencia viajes</h2>
	
	<%
		//valor por defecto
		String ciudad_favorita = "Sevilla";//valor por defecto si no se selecciona ninguna ciudad en form
		
		//lee la cookie de la petición del navegador
		//paquete de javaee HttpServletRequest
		Cookie[] lasCookies = request.getCookies();
		
		if(lasCookies != null){
			for(Cookie c : lasCookies){
				if("agencia_viajes.ciudadF".equals(c.getName())){
					ciudad_favorita = c.getValue();
					break;
				}
			}
		}
		
	%>
	
	<h3>Vuelos a <%=ciudad_favorita %></h3>
	<p>se puede hacer consulta a BD</p>
	<h3>Hoteles a <%=ciudad_favorita %></h3>
	<p>se puede hacer consulta a BD</p>

</body>
</html>