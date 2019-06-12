<%-- 
    Document   : crear_usuario
    Created on : 28/04/2019, 09:22:43 PM
    Author     : 01
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
			<li><p>Crear Usuario</p></li>
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
	<form action="js3.html" method="get" id="formulario">
		<label for="nombre">Nombre:</label>
		<input type="text" name="nom" id="nombre" required=""><br><br>

		<label for="apellidos">  Apellidos:</label>
		<input type="text" name="ln" id="apellidos" required=""><br><br>

		<label for="sexo">Sexo:</label>
		<input type="radio" name="sex" id="masculino" value="masculino">
		<label for="masculino" class="ie"> masculino </label>
		<input type="radio" name="sex" id="femenino" value="femenino">
		<label for="femenino" class="ie"> femenino</label><br><br>

		<label for="birth">Fecha de nacimiento:</label>
		<input type="date" name="bday" id="birth" value="birth" required=""><br><br>

		<label for="phone">Telefono:</label>
		<input type="text" name="tphone" id="phone"><br><br>

		<label for="username">Usuario:</label>
		<input type="text" name="user" id="username" required=""><br><br>

		<label for="pword">Contraseña:</label>
		<input type="text" name="pw" id="pword" required=""><br><br>

		<button>Crear usuario</button>
	</form>

</body>
</html>