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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/mostrar.css">
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>
            <div class="tablas">
                <div>
                    <h1>Grupos</h1>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Descripción</th>
                            <th>Usuario</th>
                            <th>Modificar</th>
                            <th>Eliminar</th>
                        </tr>
                    <c:forEach items="${grupos}" var="grupo">
                        <tr>
                            <td>${grupo.ID_Egreso}</td>
                            <td>${grupo.descripcion}</td>
                            <td>${grupo.usuario}</td>
                            <td><a href="modificar?info=grupos&id=${grupo.ID_Egreso}" class="modif">Edit</button></a>
                            <td><a href="baja?info=grupos&id=${grupo.ID_Egreso}" class="eliminar"><img width="20" height="20" src="https://images.ecosia.org/jnuw2NONcI2KMfsY1Y3EhQLZ-to=/0x390/smart/https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2017%2F02%2F23%2F08%2F46%2Fgarbage-2091534_960_720.png" id="trash"></a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div>
                <h1>Cuentas</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Descripción</th>
                        <th>Grupo</th>
                        <th>Usuario</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                    </tr>
                    <c:forEach items="${cuentas}" var="cuenta">
                        <tr>
                            <td>${cuenta.ID_Cuenta}</td>
                            <td>${cuenta.descripcion}</td>
                            <c:forEach items="${grupos}" var="grupo">
                                <c:if test="${ cuenta.grupo eq grupo.ID_Egreso }">
                                    <td>${grupo.descripcion}</td>
                                </c:if>
                            </c:forEach>
                            <td>${cuenta.usuario}</td>
                            <td><a href="modificar?info=cuentas&id=${cuenta.ID_Cuenta}" class="modif">Edit</button></a>
                            <td><a href="baja?info=cuentas&id=${data.ID_Cuenta}" class="eliminar"><img width="20" height="20" src="https://images.ecosia.org/jnuw2NONcI2KMfsY1Y3EhQLZ-to=/0x390/smart/https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2017%2F02%2F23%2F08%2F46%2Fgarbage-2091534_960_720.png" id="trash"></a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="botones">
                <button class="new">Alta cliente</button>
                <button class="cancel">Cancelar</button>
                <button class="save">Guardar</button>
            </div>
        </div>
    </body>
</html>