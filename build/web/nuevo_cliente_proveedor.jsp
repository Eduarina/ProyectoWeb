<%-- 
    Document   : nuevo_cliente
    Created on : 28/04/2019, 09:20:55 PM
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
			<li><p>Alta Cliente o Proveedor</p></li>
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
		</ul>s
	</div>	
	<div>
		<form action="Controlador_Cliente_Proveedor" method="POST" id="formulario">
                    <input type="hidden" name="instruccion" value="insertar">
			<label for="pers">Persona:</label>
			<input type="radio" name="cliente" value="1" id="clie" checked="">
			<label for="cliente" class="ie"> Cliente </label>
			<input type="radio" name="proveedor" value="2" id="prov">
			<label for="proveedor" class="ie"> Proveedor</label><br><br>
		
			<label for="nombre">Nombre:</label>
			<input type="text" name="nom" id="nombre" required=""><br><br>

			<label for="local">Nombre Empresa:</label>
			<input type="text" name="nom_e" id="loc" required=""><br><br>

			<label for="apellidos">RFC:</label>
			<input type="text" name="RFC" id="apellidos" required=""><br><br>

			<label for="direc">Direccion:</label>
			<input type="text" name="dir" id="direcc" required=""><br><br>

			<label for="local">Localidad:</label>
			<input type="text" name="loc" id="loc" required=""><br><br>

			<label for="mpio">Municipio:</label>
			<input type="text" name="mpio" id="mcp" required=""><br><br>

			<label for="entid">Entidad:</label>
			<input type="text" name="ent" id="ent" required=""><br><br>

			<label for="entid">Codigo Postal:</label>
			<input type="text" name="CP" id="ent" required=""><br><br>

			<label for="phone">Telefono:</label>
			<input type="text" name="tphone" id="phone"><br><br>

			<label for="email">E-mail:</label>
			<input type="text" name="E-mail" id="mail" required=""><br><br>

			<input type="submit" value="Enviar"/>
		</form>
	</div>	
    </body>
</html>
