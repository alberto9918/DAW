<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo 9</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
    <h1>Solicitud</h1>
    <p>Después de introducir tus datos oprime el botón "enviar"</p>

    <form name="formulario" action="paginaDestino9.jsp" method="POST">
        <table>
            <tr>
                <td><label for="name">Nombre:</label></td>

                <td><input class="datos" type="text" name="nombre"></td>
            </tr>

            <tr>
                <td><label for="surname">Apellidos:</label></td>

                <td><input class="datos" type="text" name="apellidos"></td>
            </tr>

            <tr>
                <td><label for="email">Correo:</label></td>

                <td><input class="datos" type="email" name="correo"></td>
            </tr>
        </table>

        <br>

        <label for="gender">Eres:</label>
            <input type="radio" name="genero" value="Hombre" required>Hombre
            <input type="radio" name="genero" value="Mujer" required>Mujer

        <br><br>

        <label for="languages">Selecciona lo que sabes:</label><br>
            <input type="checkbox" name="lenguajes" value="Java">Java
            <input type="checkbox" name="lenguajes" value="C++">C/C++
            <input type="checkbox" name="lenguajes" value="Basic">Basic
            <input type="checkbox" name="lenguajes" value="HTML">HTML

        <br><br>

        
        <div class="left">
            <label for="idioma">Selecciona los idiomas que comprendes:</label><br><br>
                <select id="idioma" name="idiomas" multiple required>
                    <option value="Espanol">Español</option>
                    <option value="Ingles">Inglés</option>
                    <option value="Frances">Francés</option>
                    <option value="Aleman">Alemán</option>			
                </select>
        </div>
        <div>
            <label for="comentario">Comentarios adicionales:</label><br><br>
                <textarea name="comentario" rows="5" cols="35"></textarea>
        </div> 

        <div class="bajar">
            <br>
            <input type="reset" value="Borrar">
            <input type="submit" value="Enviar">
        </div>

    </form>
    
    <p><a href="../index.html">volver...</a></p>
    
</body>
</html>