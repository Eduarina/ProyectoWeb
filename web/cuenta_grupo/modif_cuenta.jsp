<%-- 
    Document   : modif_cuenta
    Created on : 13/05/2019, 05:43:45 PM
    Author     : 01
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set value="${editar}" var="edita"></c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/modifs.css">
    </head>
    <body>
        <div>
            <jsp:include page="../menu.jsp"></jsp:include>
		<form action="" method="post" id="formulario">
                    <input type="hidden" name="tipo" value="cuenta">
                    <input type="hidden" name="ID" value="${edita.ID_Cuenta}">
			<label for="desc">Descripción:</label>
			<input type="text" name="desc" id="desc" required="" value="${edita.descripcion}"><br><br>

			<label for="grupo">Grupo:</label>
			<select name="grupos">
                            <c:forEach items="${grupos}" var="grupo">
                                <c:choose>
                                    <c:when test="${edita.grupo eq grupo.ID_Egreso}">
                                        <option value="${grupo.ID_Egreso}" selected><c:out value="${grupo.descripcion}"/></option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="${grupo.ID_Egreso}"><c:out value="${grupo.descripcion}" /></option>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
			</select><br><br>

			<button>Aceptar</button>
		</form>
	</div>
    </body>
</html>
