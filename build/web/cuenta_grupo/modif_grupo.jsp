<%-- 
    Document   : modif_grupo
    Created on : 13/05/2019, 05:54:55 PM
    Author     : 01
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="edita" value="${editar}"></c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/modifs.css">
    </head>
    <body>
        <jsp:include page="../menu.jsp"></jsp:include>	
	<div>
		<form action="" method="post" id="formulario">
                    <input type="hidden" name="ID" value="${edita.ID_Egreso}" >
                    <input type="hidden" name="tipo" value="grupo" >
			<label for="des">Descripción del grupo:</label>
			<input type="text" name="des" value="${edita.descripcion}" required=""><br><br>

			<button>Aceptar</button>
		</form>
	</div>
	
    </body>
</html>
