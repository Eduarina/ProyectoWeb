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
			<li><p>Alta Empresa</p></li>
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
	<div>
		<form action="" method="get" id="formulario">
			<label for="nombre">Nombre empresa:</label>
			<input type="text" name="nom" id="nombre" required=""><br><br>

			<label for="apellidos">RFC:</label>
			<input type="text" name="ln" id="apellidos" required=""><br><br>

			<label for="direc">Direccion:</label>
			<input type="text" name="dir" id="direcc" required=""><br><br>

			<label for="city">Ciudad:</label>
			<input type="text" name="cd" id="loc" required=""><br><br>

			<label for="est">Estado:</label>
			<input type="text" name="es" id="edo" required=""><br><br>

			<button>Aceptar</button>
		</form>
	</div>
	
</body>
</html>