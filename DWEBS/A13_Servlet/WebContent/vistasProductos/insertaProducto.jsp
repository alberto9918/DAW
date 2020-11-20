<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>
</head>
<body>
	<h2 style="text-align: center;">Insertar nuevo producto</h2>
	
	<form name="formulario" action="../Controlador_Productos" method="POST">
		<input type="hidden" name="instruccion" value="insertar">
		<p>
			<label for="codProd">CodProd: </label>
			<input type="text" name="codProd">
		</p>
		
		<p>
			<label for="seccion">Sección: </label>
			<select id="seccion" name="seccion">
                    <option value="Ferretería">Ferretería</option>
                    <option value="Confección">Confección</option>
                    <option value="Deportes">Deportes</option>			
            </select>
		</p>
		
		<p>
			<label for="nombreProd">Nombre Artículo: </label>
			<input type="text" name="nombreProd">
		</p>
		
		<p>
			<label for="precio">Precio: </label>
			<input type="text" name="precio">
		</p>
		
		<p>
			<label for="fecha">Fecha: </label>
			<input type="text" name="fecha">
		</p>
		
		<p>
			<label for="importado">Importado:</label>
            <input type="radio" id="importado" name="importado" value="true" required>Sí
            <input type="radio" id="importado" name="importado" value="false" required>No
		</p>
		
		<p>
			<label for="pais">País: </label>
			<input type="text" name="pais">
		</p>
                

        <p>
            <input type="reset" value="Borrar">
            <input type="submit" value="Insertar Producto">
        </p>
    </form>

</body>
</html>