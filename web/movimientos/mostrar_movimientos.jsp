<%-- 
    Document   : nuevo_movimiento
    Created on : 29/05/2019, 10:28:44 AM
    Author     : gabriela
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/mostrar.css">
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
		<form>
			<label for="movto">Movimiento:</label>
			<input type="radio" name="movto" id="ingr" value="Ingreso">
			<label for="ingreso"> Ingreso </label>
			<input type="radio" name="movto" id="egre" value="Egreso">
			<label for="egreso"> Egreso</label>
			<input type="radio" name="movto" checked="" id="todo" value="Todos">
			<label for="all"> Ambos</label><br><br>
			<label for="emp">Empresa:</label>
			<select name="emp">
				<c:forEach items="${empresas}" var="empresa">
                                    <option value="empresa.ID_Empresa">${empresa.nombre}</option>
                                </c:forEach>
			</select><br><br>
			<label for="proyecto">Proyecto:</label>
			<select name="proyecto">
				<c:forEach items="${proyectos}" var="proyecto">
                                    <option value="${proyecto.ID_Proyecto}" >${proyecto.descripcion}</option>
                                </c:forEach>
			</select><br><br>
			<label for="fech">Fecha:</label>
			<input type="date" name="fech"><br><br>
			<label>Persona:</label>
			<select name="person">
				<c:forEach items="${personas}" var="persona">
                                    <option value="${persona.ID_Persona}">${persona.nombre}</option>
                                </c:forEach>
			</select><br><br>
                        <button type="reset">Limpiar</button>
                        <button type="submit">Buscar</button>
		</form>
		<table>
			<tr>
				<th>Movimiento</th>
				<th>Folio</th>
				<th>Fecha</th>
				<th>Proyecto</th>
				<th>Empresa</th>
				<th>Nombre</th>
				<th>RFC</th>
				<th>Cuenta</th>
				<th>Grupo</th>
				<th>Metodo de Pago</th>
				<th>Forma de Pago</th>
				<th>Moneda</th>
				<th>Tipo Comprobante</th>
				<th>Concepto</th>
				<th>Precio Unitario</th>
				<th>Descuento</th>
				<th>Subtotal</th>
				<th>IVA</th>
				<th>Ret. IVA</th>
				<th>Ret. ISR</th>
				<th>IEPS</th>
				<th>Imps. Locales</th>
				<th>Total</th>
				<th>UUID</th>
				<th>Archivo</th>
				<th>Usuario</th>
				<th>Modificar</th>
				<th>Eliminar</th>
			</tr>
                        <c:forEach items="${movimientos}" var="movimiento">
			<tr>
				<td>${movimiento.ID_Movimiento}</td>
				<td>${movimiento.folio}</td>
				<td>${movimiento.fecha}</td>
                                <c:forEach items="${proyectos}" var="proyecto">
                                    <c:if test="${movimiento.ID_Proyecto eq proyecto.ID_Proyecto}">
                                    <td>${proyecto.descripcion}</td>
                                    </c:if>
                                </c:forEach>
				<c:forEach items="${empresas}" var="empresa">
                                    <c:if test="${movimiento.ID_Empresa eq empresa.ID_Empresa}">
                                    <td>${empresa.nombre}</td>
                                    </c:if>
                                </c:forEach>
                                <c:forEach items="${personas}" var="persona">
                                    <c:if test="${movimiento.ID_Persona eq persona.ID_Persona}">
                                    <td>${persona.nombre}</td>
                                    </c:if>
                                </c:forEach>
				<td>${movimiento.RFC}</td>
				<c:forEach items="${cuentas}" var="cuenta">
                                    <c:if test="${movimiento.ID_Cuenta eq cuenta.ID_Cuenta}">
                                    <td>${cuenta.descripcion}</td>
                                    <c:forEach items="${grupos}" var="grupo">
                                    <c:if test="${cuenta.grupo eq grupo.ID_Egreso}">
                                    <td>${grupo.descripcion}</td>
                                    </c:if>
                                </c:forEach>
                                    </c:if>
                                </c:forEach>
				<c:forEach items="${metodos}" var="metodo">
                                    <c:if test="${movimiento.ID_Metodo_Pago eq metodo.ID_Metodo_Pago}">
                                    <td>${metodo.descripcion}</td>
                                    </c:if>
                                </c:forEach>
				<c:forEach items="${formas}" var="forma">
                                    <c:if test="${movimiento.ID_Forma_Pago eq forma.ID_FormaPago}">
                                    <td>${forma.descripcion}</td>
                                    </c:if>
                                </c:forEach>
				<c:forEach items="${monedas}" var="moneda">
                                    <c:if test="${movimiento.ID_Moneda eq moneda.ID_Monedas}">
                                    <td>${moneda.descripcion}</td>
                                    </c:if>
                                </c:forEach>
                                <c:forEach items="${tipos}" var="tipo">
                                    <c:if test="${movimiento.ID_Tipo_Comprobante eq tipo.ID_Tipo_Comprobante}">
                                    <td>${tipo.descripcion}</td>
                                    </c:if>
                                </c:forEach>
				<td>${movimiento.concepto}</td>
				<td>${movimiento.precio_Unitario}</td>
				<td>${movimiento.descuento}</td>
				<td>${movimiento.sub_total}</td>
                                <fmt:parseNumber var = "iva" type = "number" value = "${movimiento.IVA}" />
                                <c:choose>
                                    <c:when test="${iva eq 1}" >
                                        <td>16%</td>
                                    </c:when>
                                    <c:when test="${iva eq 2}" >
                                        <td>15%</td>
                                    </c:when>
                                    <c:otherwise><td>N/A</td></c:otherwise>
                                </c:choose>
				<td>${movimiento.ret_IVA}</td>
				<td>${movimiento.ret_ISR}</td>
				<td>${movimiento.IEPS}</td>
				<td>${movimiento.impuestos}</td>
				<td>${movimiento.total}</td>
				<td>${movimiento.UUID}</td>
				<td></td>
                                <td>${movimiento.usuario}</td>
                                <c:if test="${sessionScope.tipo < 2}">
				<td><a href="modificar?info=movimientos&id=${movimiento.folio}" class="modif">Edit</a></td>
				<td><a href="baja?info=movimiento&id=${data.ID_Persona}" class="eliminar"><img width="20" height="20" src="https://images.ecosia.org/jnuw2NONcI2KMfsY1Y3EhQLZ-to=/0x390/smart/https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2017%2F02%2F23%2F08%2F46%2Fgarbage-2091534_960_720.png" id="trash"></a></td>
                                </c:if>
                                </c:forEach>
			</tr>
		</table>
	</div>

</body>
</html>