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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/nuevos.css">
    </head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<div>
		<table>
			<tr>
				<th>Proyecto</th>
				<th>Empresa</th>
				<th>Status</th>
			</tr>
			<c:forEach items="${proyectos}" var="proyecto">
                        <tr>
                            <td>${proyecto.descripcion}</td>
                            <td>${proyecto.usuario}</td>
                            <c:choose>
                                <c:when test="${proyecto.status eq 1}">
                                <td>Activo</td>
                                </c:when>
                                <c:otherwise>
                                <td>Inactivo</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                    </c:forEach>
		</table>
	</div>
	
</body>
</html>