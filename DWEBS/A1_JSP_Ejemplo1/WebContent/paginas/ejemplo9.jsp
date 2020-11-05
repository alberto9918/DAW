<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ejemplo 9</title>
</head>
<style>
    td {
        border: #b2b2b2 1px solid;
        border-collapse: separate;
        text-align: center;
    }
    
    table {
        border: black 1px solid;
        border-collapse: separate;
    }
    
    .redondeado {
        border-radius: 5px;
        width: 90%;
    }

    .left{
        float: left;
        margin-right: 20px;
    }

    .bajar{
        clear: both;
    }

</style>
<body>
	<h1>Solicitud</h1>
    <p>Después de introducir tus datos oprime el botón "enviar"</p>

    <form name="formulario" action="paginaDestino9.jsp" method="POST">
        <table>
            <tr>
                <td>
                    <label for="name">Nombre:</label>
                </td>

                <td>
                    <input class="redondeado" type="text" id="name" name="nombre">
                </td>
            </tr>

            <tr>
                <td>
                    <label for="surname">Apellido:</label>
                </td>

                <td>
                    <input class="redondeado" type="text" id="surname" name="apellidos">
                </td>
            </tr>

            <tr>
                <td>
                    <label for="email">Correo:</label>
                </td>

                <td>
                    <input class="redondeado" type="email" id="email" name="correo">
                </td>
            </tr>
        </table>

        <br>

        <label for="gender">Eres:</label>
            <input type="radio" id="gender" name="genero" value="Hombre" required>Hombre
            <input type="radio" id="gender" name="genero" value="Mujer" required>Mujer

        <br><br>

        <label for="languages">Selecciona lo que sabes:</label><br>
            <input type="checkbox" id="language1" name="java" value="Java">Java
            <input type="checkbox" id="language2" name="c" value="C/C++">C/C++
            <input type="checkbox" id="language3" name="basic" value="Basic">Basic
            <input type="checkbox" id="language4" name="html" value="HTML">HTML

        <br><br>

        
        <div class="left">
            <label for="idioma">Selecciona los idiomas que comprendes:</label><br><br>
                <select id="idioma" name="idiomas" multiple required>
                    <option value="Español">Español</option>
                    <option value="Inglés">Inglés</option>
                    <option value="Francés">Francés</option>
                    <option value="Alemán">Alemán</option>			
                </select>
        </div>
        <div class="left">
            <label for="comentario">Comentarios adicionales:</label><br><br>
                <textarea id="comentario" name="comentario" rows="5" cols="35"></textarea>
        </div> 

        <div class="bajar">
            <br>
            <input type="reset" value="Borrar">
            <input type="submit" value="Enviar">
        </div>

    </form>
    
    <p><a href="../index.jsp">volver...</a></p>
</body>
</html>