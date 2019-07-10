<%-- 
    Document   : nuevo_cliente
    Created on : 28/04/2019, 09:20:55 PM
    Author     : 01
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/nuevos.css">
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
	<div>
		<form action="" method="POST" id="formulario">
                    <input type="hidden" name="tipo" value="cliente_proveedor">
			<label for="cliente">Persona:</label>
			<input type="radio" name="cliente" value="1" id="clie" checked="">
			<label for="cliente" class="ie"> Cliente </label>
			<input type="radio" name="cliente" value="2" id="prov">
			<label for="proveedor" class="ie"> Proveedor</label><br><br>
		
			<label for="nombre">Nombre:</label>
			<input type="text" name="nom" id="nombre" required="" ><br><br>

			<label for="local">Nombre Empresa:</label>
			<input type="text" name="nom_e" id="loc" required=""><br><br>

			<label for="apellidos">RFC:</label>
			<input type="text" name="RFC" id="apellidos" required=""><br><br>

			<label for="direc">Direccion:</label>
			<input type="text" name="dir" id="direcc" required=""><br><br>

			<label for="local">Localidad:</label>
			<input type="text" name="loc" id="loc" required=""><br><br>

			<label for="mpio">Municipio:</label>
			<input type="text" name="mpio" id="mcp" required=""><br><br>

			<label for="entid">Entidad:</label>
			<input type="text" name="ent" id="ent" required=""><br><br>

			<label for="entid">Codigo Postal:</label>
			<input type="text" name="CP" id="ent" required=""><br><br>

			<label for="phone">Telefono:</label>
			<input type="text" name="tphone" id="phone"><br><br>

			<label for="email">E-mail:</label>
			<input type="text" name="E-mail" id="mail" required=""><br><br>

			<input type="submit" value="Enviar"/>
		</form>
	</div>	
    </body>
</html>
