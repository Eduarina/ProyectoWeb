<!DOCTYPE html>
<html>
<head>
	<title>RO DELAP CONSTRUCCION SAPI DE CV</title>
	<meta charset="utf-8">
	<link rel="icon" type="image/png" href="favicon.png">
	<link rel="stylesheet" type="text/css" href="cu_css.css">
</head>
<body>
	<div class="menu">
		<ul class="nav">
			<li><p>Configuración de usuario</p></li>
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
	<form action="" method="get" id="formulario">
		<label for="nombre">Nombre:</label>
		<input type="text" name="nom" id="nombre" required=""><br><br>

		<label for="apellidos">  Apellidos:</label>
		<input type="text" name="ln" id="apellidos" required=""><br><br>

		<label for="mail">  Correo:</label>
		<input type="text" name="em" id="email" required=""><br><br>

		<label for="phone">Teléfono:</label>
		<input type="text" name="tphone" id="phone"><br><br>

		<label for="username">Usuario:</label>
		<input type="text" name="user" id="username" required=""><br><br>

		<label for="pword">Contraseña:</label>
		<input type="text" name="pw" id="pword" required=""><br><br>

		<button>Guardar</button>
	</form>

</body>
</html>