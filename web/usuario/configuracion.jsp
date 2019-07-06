<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>RO DELAP CONSTRUCCION SAPI DE CV</title>
	<meta charset="utf-8">
	<link rel="icon" type="image/png" href="favicon.png">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/nuevos.css">
</head>
<body>
    <jsp:include page="../menu.jsp"></jsp:include>
    <c:set var="miInfo" value="${me}" />
	<form action="" method="post" id="formulario">
            <input type="hidden" value="configuracion" name="accion">
		<label for="nombre">Nombre:</label>
		<input type="text" name="nom" id="nombre" required="" value="${miInfo.nombre}"><br><br>

		<label for="apellidos">  Apellidos:</label>
		<input type="text" name="ln" id="apellidos" required="" value="${miInfo.apellido}"><br><br>

		<!--<label for="mail">  Correo:</label>
		<input type="text" name="em" id="email" required="" value="${miInfo.nombre}"><br><br>
                    -->
		<label for="phone">Telefono:</label>
		<input type="text" name="tphone" id="phone" value="${miInfo.telefono}"><br><br>

		<label for="username">Usuario:</label>
		<input type="text" name="user" id="username" required="" value="${miInfo.nom_Usuario}"><br><br>

		<label for="pword">Contraseña:</label>
		<input type="password" name="pw" id="pword" required=""><br><br>

		<button>Guardar</button>
	</form>

</body>
</html>