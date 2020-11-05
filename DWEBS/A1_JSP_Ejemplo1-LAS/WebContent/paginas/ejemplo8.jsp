<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo 8</title>
</head>
<body>
    <h1>Esta es la página de inicio</h1>
    <h2>Aquí se piden los datos</h2>

    <form name="formulario" action="paginaDestino8.jsp" method="POST">
        <label for="transport">Elige el transporte que prefieres</label><br><br>
            <input type="radio" name="transporte" value="Coche" required>Coche
            <input type="radio" name="transporte" value="Avion" required>Avión
            <input type="radio" name="transporte" value="Autobus" required>Autobus<br><br>
        
        <label for="place">¿Cuáles son tus destinos favoritos?</label><br><br>
            <input type="checkbox" name="destino" value="Ciudad">Ciudad<br>
            <input type="checkbox" name="destino" value="Bosque">Bosque<br>
            <input type="checkbox" name="destino" value="Playa">Playa<br>

        <p>
            <input type="submit" value="Enviar">
        </p>
    </form>
    <p><a href="../index.html">volver...</a></p>
</body>
</html>