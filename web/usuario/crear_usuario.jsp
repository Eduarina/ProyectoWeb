<%-- 
    Document   : crear_usuario
    Created on : 28/04/2019, 09:22:43 PM
    Author     : 01
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
        <jsp:include page="../menu.jsp" ></jsp:include>
        <form method="post" id="formulario">
            <input type="hidden" name="accion" value="inserta">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nom" id="nombre" required=""><br><br>

            <label for="apellidos">  Apellidos:</label>
            <input type="text" name="ln" id="apellidos" required=""><br><br>

            <label for="sexo">Sexo:</label>
            <input type="radio" name="sexM" id="masculino" value="masculino">
            <label for="masculino" class="ie"> masculino </label>
            <input type="radio" name="sexF" id="femenino" value="femenino">
            <label for="femenino" class="ie"> femenino</label><br><br>

            <label for="birth">Fecha de nacimiento:</label>
            <input type="date" name="bday" id="birth" value="birth" required=""><br><br>

            <label for="phone">Telefono:</label>
            <input type="text" name="tphone" id="phone"><br><br>

            <label for="username">Usuario:</label>
            <input type="text" name="user" id="username" required=""><br><br>

            <label for="pword">Contraseña:</label>
            <input type="text" name="pw" id="pword" required=""><br><br>

            <button>Crear usuario</button>
        </form>

    </body>
</html>