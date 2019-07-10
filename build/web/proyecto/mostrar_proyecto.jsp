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
	<div class="menu">

    <ul class="nav"><!--<img class="img-menu" src="http://bldg5records.com/public/img/mobile-menu.png">-->
        <li><p>Ingresos y Egresos</p></li>
        <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/">Inicio</a></li>
        <c:if test="${sessionScope.tipo < 2}">
        <li><a href="">Alta Catalogos</a>
            <ul>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/alta?info=proyecto">Proyecto</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/alta?info=cliente_proveedor">Cliente/Proveedor</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/alta?info=cuenta">Cuenta</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/alta?info=grupo">Grupo</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/alta?info=empresa">Empresa</a></li>
            </ul></li>
        <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/alta?info=movimiento">Registro Movimientos</a></li>
        </c:if>
        <li><a href="">Mostrar</a>
            <ul>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/mostrar?info=clientes">Clientes</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/mostrar?info=prov">Proveedores</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/mostrar?info=ctas_gpos">Cuentas y Grupos</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/mostrar?info=movimientos">Movimientos</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/mostrar?info=proyectos">Proyectos</a></li>
            </ul></li>
        <li id="user"><a href="">Usuario</a>
            <ul>
                <c:if test="${sessionScope.tipo < 2}">
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/usuarios?action=crear">Crear nuevo usuario</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/usuarios?action=mostrar">Consulta usuarios</a></li>
                </c:if>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/usuarios?action=configuracion">Configuración</a></li>
                <li><a href="/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/?action=logout">Cerrar sesión</a></li>
            </ul></li>
    </ul>
</div>
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