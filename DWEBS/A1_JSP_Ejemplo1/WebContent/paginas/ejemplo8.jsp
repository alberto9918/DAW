<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ejemplo 8</title>
</head>
<body>
	<h1>Esta es la página de inicio</h1>
    <h2>Aquí se piden los datos</h2>

    <form name="formulario"  action="paginaDestino8.jsp" method="POST">
        <label for="transport">Elige el transporte que prefieres</label><br><br>
            <input type="radio" id="transport" name="transporte" value="coche" required>Coche
            <input type="radio" id="transport" name="transporte" value="avión" required>Avión
            <input type="radio" id="transport" name="transporte" value="autobus" required>Autobus<br><br>
        
        <label for="place">¿Cuáles son tus destinos favoritos?</label><br><br>
            <input type="checkbox" id="place1" name="ciudad" value="Ciudad">Ciudad<br>
            <input type="checkbox" id="place2" name="bosque" value="Bosque">Bosque<br>
            <input type="checkbox" id="place3" name="playa" value="Playa">Playa<br>

        <p>
            <input type="submit" value="Enviar">
        </p>
    </form>
    <p><a href="../index.jsp">volver...</a></p>
</body>
</html>