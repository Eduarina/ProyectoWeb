<%-- 
    Document   : nuevo_movimiento
    Created on : 29/05/2019, 10:28:44 AM
    Author     : gabriela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/nuevos.css">
    </head>
<body>
	<h1><br>RO DELAP CONSTRUCCION SAPI DE CV</h1>
	<form method="post" id="formulario">
		<!--<label for="username">Usuario:</label><br>-->
                <input type="hidden" name="accion" value="login" />
		<input type="text" name="user" placeholder="Usuario"><br><br><br><br>

		<!--<label for="pword">Contraseña:</label><br>-->
		<input type="password" name="pw" placeholder="Contraseña"><br><br><br>

		<!--<input type="submit" value="Iniciar sesión">-->
		<button>Iniciar sesión</button>
                <span style="color: red;">${error}</span>
	</form>
</body>
</html>