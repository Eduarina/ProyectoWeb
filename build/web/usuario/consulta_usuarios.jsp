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
        <jsp:include page="../menu.jsp"></jsp:include>

    </div>

    <div class=".tabla">
        <form>
            <table width="100%">
                <thead style="background: #434343; color: white; text-align: center;">
                <tr>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Teléfono</th>
                    <th>Fecha de nacimiento</th>
                    <th>Eliminar</th>
                </tr>
                </thead>
            <c:forEach items="${usuarios}" var="usuario">
                <tr>
                    <td>${usuario.nombre}</td>
                    <td>${usuario.apellido}</td>
                    <td>${usuario.telefono}</td>
                    <td>${usuario.fecha_Nacimiento}</td>
                    <td><button class="eliminar"><img width="20" height="20" src="https://images.ecosia.org/jnuw2NONcI2KMfsY1Y3EhQLZ-to=/0x390/smart/https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2017%2F02%2F23%2F08%2F46%2Fgarbage-2091534_960_720.png" id="trash"></button></td>
                </tr>
            </c:forEach>
            </table>
            <button>Guardar</button>
        </form>
    </div>

</body>
</html>