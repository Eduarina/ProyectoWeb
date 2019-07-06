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
	<div>
		<table>
			<tr>
				<th>Nombre</th>
				<th>RFC</th>
				<th>Dirección</th>
				<th>Localidad</th>
				<th>Municipio</th>
				<th>Entidad</th>
				<th>CP</th>
				<th>Telefono</th>
				<th>E-mail</th>
				<th>Nombre Empresa</th>
				<th>Usuario</th>
				<th>Modificar</th>
				<th>Eliminar</th>
			</tr>
			<c:forEach items="${datos}" var="data">
                    <tr>
                        <td>${data.nombre}</td>
                        <td>${data.RFC}</td>
                        <td>${data.direccion}</td>
                        <td>${data.localidad}</td>
                        <td>${data.municipio}</td>
                        <td>${data.entidad}</td>
                        <td>${data.CP}</td>
                        <td>${data.telefono}</td>
                        <td>${data.e_mail}</td>
                        <td>${data.nombre_Empresa}</td>
                        <td>${data.usuario}</td>
                        <td><a href="modificar?info=prov&id=${data.ID_Persona}" class="modif">Edit</a></td>
                        <td><a href="baja?info=prov&id=${data.ID_Persona}" class="eliminar"><img width="20" height="20" src="https://images.ecosia.org/jnuw2NONcI2KMfsY1Y3EhQLZ-to=/0x390/smart/https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2017%2F02%2F23%2F08%2F46%2Fgarbage-2091534_960_720.png" id="trash"></a></td>
                    </tr>
                </c:forEach>
		</table>
		<div class="botones">
                    <button onclick="window.location.href='alta?info=cliente_proveedor'" class="new">Alta cliente</button>
			<button class="cancel">Cancelar</button>
			<button class="save">Guardar</button>
		</div>
	</div>

</body>
</html>