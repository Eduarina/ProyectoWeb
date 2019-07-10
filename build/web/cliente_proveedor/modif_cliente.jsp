<%-- 
    Document   : nuevo_cliente
    Created on : 28/04/2019, 09:20:55 PM
    Author     : 01
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="viene" value="${from}"></c:set>
<c:set var="edita" value="${editar}"></c:set>
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
		<form action="" method="POST" id="formulario">
                    <input type="hidden" name="tipo" value="cliente_proveedor">
                    <input type="hidden" name="ID" value="${edita.ID_Persona}">
                    <input type="hidden" name="from" value="${viene}">
			<label for="cliente">Persona:</label>
			<c:choose>  
                            <c:when test="${viene == 'cliente'}">
                            <input type="radio" name="cliente" value="1" id="clie" checked="">
                            </c:when>
                            <c:otherwise>
                                <input type="radio" name="cliente" value="1" id="clie">
                            </c:otherwise>
                        </c:choose>
                        <label for="cliente" class="ie"> Cliente </label>
                        <c:choose>  
                            <c:when test="${viene == 'prov'}">
                            <input type="radio" name="cliente" value="2" id="prov" checked="">
                            </c:when>
                            <c:otherwise>
                                <input type="radio" name="cliente" value="2" id="clie">
                            </c:otherwise>
                        </c:choose>
			<label for="proveedor" class="ie"> Proveedor</label><br><br>
		
			<label for="nombre">Nombre:</label>
                        <input type="text" name="nom" id="nombre" required="" value="${edita.nombre}"><br><br>

			<label for="local">Nombre Empresa:</label>
			<input type="text" name="nom_e" id="loc" required="" value="${edita.nombre_Empresa}"><br><br>

			<label for="apellidos">RFC:</label>
			<input type="text" name="RFC" id="apellidos" required="" value="${edita.RFC}"><br><br>

			<label for="direc">Direccion:</label>
			<input type="text" name="dir" id="direcc" required="" value="${edita.direccion}"><br><br>

			<label for="local">Localidad:</label>
			<input type="text" name="loc" id="loc" required="" value="${edita.localidad}"><br><br>

			<label for="mpio">Municipio:</label>
			<input type="text" name="mpio" id="mcp" required="" value="${edita.municipio}"><br><br>

			<label for="entid">Entidad:</label>
			<input type="text" name="ent" id="ent" required="" value="${edita.entidad}"><br><br>

			<label for="entid">Codigo Postal:</label>
			<input type="text" name="CP" id="ent" required="" value="${edita.CP}"><br><br>

			<label for="phone">Telefono:</label>
			<input type="text" name="tphone" id="phone" value="${edita.telefono}"><br><br>

			<label for="email">E-mail:</label>
			<input type="text" name="E-mail" id="mail" required="" value="${edita.e_mail}"><br><br>

			<input type="submit" value="Enviar"/>
		</form>
	</div>	
    </body>
</html>
