<%-- 
    Document   : nuevo_movimiento
    Created on : 29/05/2019, 10:28:44 AM
    Author     : gabriela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<form action="" method="post" id="formulario">
                    <input type="hidden" name="tipo" value="cuenta">
			<label for="desc">Descripción:</label>
			<input type="text" name="desc" id="desc" required=""><br><br>

			<label for="grupo">Grupo:</label>
			<select name="grupos">
                            <c:forEach items="${grupos}" var="grupo">
                                <option value="${grupo.ID_Egreso}"><c:out value="${grupo.descripcion}" /></option>
                            </c:forEach>
			</select><br><br>

			<button>Aceptar</button>
		</form>
	</div>
	
</body>
</html>