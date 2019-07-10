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
                        <c:if test="${sessionScope.tipo < 2}">
                        <th>Modificar</th>
                        <th>Eliminar</th>
                        </c:if>
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
                        <c:if test="${sessionScope.tipo < 2}">
                        <td><a href="modificar?info=cliente&id=${data.ID_Persona}" class="modif">Edit</a></td>
                        <td><a href="baja?info=cliente&id=${data.ID_Persona}" class="eliminar"><img width="20" height="20" src="https://images.ecosia.org/jnuw2NONcI2KMfsY1Y3EhQLZ-to=/0x390/smart/https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2017%2F02%2F23%2F08%2F46%2Fgarbage-2091534_960_720.png" id="trash"></a></td>
                        </c:if>
                    </tr>
                </c:forEach>
            </table>
            <div class="botones">
                <button class="new">Alta cliente</button>
                <button class="cancel">Cancelar</button>
                <button class="save">Guardar</button>
            </div>
        </div>

    </body>
</html>