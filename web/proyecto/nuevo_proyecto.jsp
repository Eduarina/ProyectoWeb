<%-- 
    Document   : nuevo_movimiento
    Created on : 29/05/2019, 10:28:44 AM
    Author     : gabriela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/nuevos.css">
    </head>
<body>
    <jsp:include page="../menu.jsp"></jsp:include>
	<div>
		<form action="" method="post" id="formulario">
                    <input type="hidden" value="proyecto" name="tipo">
			<label for="nombre">Nombre proyecto:</label>
			<input type="text" name="nom" id="nombre" required=""><br><br>
			<label>Empresa:</label>
			<select name="emp">
				<option>Constructora</option>
				<option>Farmaceutica</option>
                        </select><br><br>
			<button>Aceptar</button>
		</form>
	</div>
	
</body>
</html>