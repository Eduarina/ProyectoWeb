<%-- 
    Document   : nuevo_movimiento
    Created on : 29/05/2019, 10:28:44 AM
    Author     : gabriela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/nuevos.css">
    </head>
<body>
	<div class="menu">
		<ul class="nav">
			<li><p>Consulta usuarios</p></li>
			<li><a href="vista_general.jsp">Inicio</a></li>
			<li><a href="">Alta Catalogos</a>
				<ul>
					<li><a href="nuevo_cliente_proveedor.jsp">Cliente/Proveedor</a></li>
					<li><a href="nuevo_cuenta.jsp">Cuenta</a></li>
					<li><a href="nuevo_grupo.jsp">Grupo</a></li>
				</ul></li>
			<li><a href="nuevo_ingreso_egreso.jsp">Registro Movimientos</a></li>
			<li><a href="">Mostrar</a>
				<ul>
					<li><a href="mostrar_clientes.jsp">Clientes</a></li>
					<li><a href="mostrar_prov.jsp">Proveedores</a></li>
					<li><a href="mostrar_ctas_gpos.jsp">Cuentas y Grupos</a></li>
					<li><a href="mostrar_movimientos.jsp">Movimientos</a></li>
				</ul></li>
			<li><a href="">Modificar</a>
				<ul>
					<li><a href="modif_cliente.jsp">Cliente</a></li>
					<li><a href="modif_prov.jsp">Proveedor</a></li>
					<li><a href="modif_cuenta.jsp">Cuenta</a></li>
					<li><a href="modif_grupo.jsp">Grupo</a></li>
					<li><a href="modif_ingreso.jsp">Ingreso</a></li>
					<li><a href="modif_egreso.jsp">Egreso</a></li>
				</ul></li>
			<li id="user"><a href="">Usuario</a>
				<ul>
					<li><a href="crear_usuario.jsp">Crear nuevo usuario</a></li>
					<li><a href="configuracion.jsp">Configuración</a></li>
					<li><a href="consulta_usuarios.jsp">Consulta usuarios</a></li>
					<li><a href="nuevo_empresa.jsp">Alta Empresa</a></li>
					<li><a href="inicio_sesion.jsp">Cerrar sesión</a></li>
				</ul></li>
		</ul>
	</div>
		
	</div>

	<div class=".tabla">
		<form>
			<table>
				<tr>
					<th>Nombre</th>
					<th>Apellidos</th>
					<th>Correo</th>
					<th>Teléfono</th>
					<th>Tipo de usuario</th>
					<th>Eliminar</th>
				</tr>
				<tr>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> <select>
							<option>Administrador</option>
							<option>Moderador</option>
						</select></td>
					<td><button class="eliminar"><img src="https://images.ecosia.org/jnuw2NONcI2KMfsY1Y3EhQLZ-to=/0x390/smart/https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2017%2F02%2F23%2F08%2F46%2Fgarbage-2091534_960_720.png" id="trash"></button></td>
				</tr>
			</table>
			<button>Guardar</button>
		</form>
	</div>

</body>
</html>