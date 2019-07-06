<%-- 
    Document   : nuevo_movimiento
    Created on : 29/05/2019, 10:28:44 AM
    Author     : gabriela
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/nuevos.css">
    </head>
<body>
    <jsp:include page="menu.jsp"></jsp:include>
	<div>
		<form action="" method="post" id="formulario">
                    <input type="hidden" value="empresa" name="tipo">
			<label for="nombre">Nombre empresa:</label>
			<input type="text" name="nom" id="nombre" required=""><br><br>

			<label for="apellidos">RFC:</label>
			<input type="text" name="ln" id="apellidos" required=""><br><br>

			<label for="direc">Direccion:</label>
			<input type="text" name="dir" id="direcc" required=""><br><br>

			<label for="city">Ciudad:</label>
			<input type="text" name="cd" id="loc" required=""><br><br>

			<label for="est">Estado:</label>
			<input type="text" name="es" id="edo" required=""><br><br>

			<button>Aceptar</button>
		</form>
	</div>
	
</body>
</html>