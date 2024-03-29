<%-- 
    Document   : modif_egreso
    Created on : 13/05/2019, 05:51:46 PM
    Author     : 01
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/modifs.css">
    </head>
    <<div class="menu">
		<ul class="nav">
			<li><p>Modificar Egreso</p></li>
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
		<form action="" method="get" id="formulario1" class="ief">
			<label for="movto">Movimiento:</label>
			<input type="radio" name="movtos" id="ingr" value="ingreso">
			<label for="ingreso" class="ie"> Ingreso </label>
			<input type="radio" name="movtos" id="egre" value="egreso" checked="">
			<label for="egreso" class="ie"> Egreso</label><br><br><br>
			<label for="email">Empresa:</label>
			<select>
				<option value="e1">Empresa 1</option>
				<option value="e2">Empresa 2</option>
			</select><br><br>
			<label for="email">Proyecto:</label>
			<select>
				<option value="p1">Proyecto 1</option>
				<option value="p2">Proyecto 2</option>
				<option value="p3">Proyecto 3</option>
			</select><br><br>
			<label for="dcto">Folio:</label>
			<input type="text" name="docto"><br><br><br>
			<label for="apellidos">Fecha:</label>
			<input type="date" name="ln" id="apellidos" required=""><br><br>
			<label for="local">Nombre:</label>
			<input type="text" name="lc" id="loc" required=""><br><br>
			<label for="mpio">Cuenta:</label>
			<select>
				<option value="v1">Valor 1</option>
				<option value="v2">Valor 2</option>
				<option value="v3">Valor 3</option>
			</select><br><br>
			<button>Buscar</button>
		</form>

		<form action="" method="get" id="formulario2">
			<label for="apellidos">Fecha:</label>
			<input type="date" name="ln" id="apellidos" required=""><br><br>

			<label for="direc">RFC:</label>
			<input type="text" name="dir" id="direcc" required=""><br><br>

			<label for="local">Nombre Cliente:</label>
			<input type="text" name="lc" id="loc" required=""><br><br>

			<label for="mpio">Cuenta:</label>
			<input type="text" name="mp" id="mcp" required=""><br><br>

			<label for="entid">Metodo de Pago:</label>
			<input type="text" name="et" id="ent" required=""><br><br>

			<label for="phone">Forma de Pago:</label>
			<input type="tel" name="tphone" id="phone"><br><br>

			<label for="email">Moneda:</label>
			<input type="text" name="em" id="mail" required=""><br><br>

			<label for="cuenta">Tipo de cambio:</label>
			<input type="text" name="cta" id="cnta" required=""><br><br>

			<label for="nombre">Concepto:</label>
			<input type="text" name="nom" id="nombre" required=""><br><br>

			<label for="apellidos">Importe:</label>
			<input type="date" name="ln" id="apellidos" required=""><br><br>

			<!-- CONVERSION MONEDA -->

			<label for="direc">Descuento:</label>
			<input type="text" name="dir" id="direcc" required=""><br><br>

			<label for="local">Subtotal:</label>
			<input type="text" name="lc" id="loc" required=""><br><br>

			<label for="mpio">IVA:</label>
			<input type="text" name="mp" id="mcp" required=""><br><br>
			<!-- dropdown ?? -->

			<label for="entid">Ret. ISR:</label>
			<input type="text" name="et" id="ent" required=""><br><br>

			<label for="phone">Ret. IVA:</label>
			<input type="tel" name="tphone" id="phone"><br><br>
			<!-- aplica retencion (selector si/no) -->

			<label for="email">IEPS:</label>
			<input type="text" name="em" id="mail" required=""><br><br>

			<label for="cuenta">Imps. Locales:</label>
			<input type="text" name="cta" id="cnta" required=""><br><br>

			<label for="cuenta">Total:</label>
			<input type="text" name="cta" id="cnta" required=""><br><br>

			<button>Aceptar</button>
		</form>

		<table>
			<tr>
				<th>Folio</th>
				<th>Fecha</th>
				<th>RFC</th>
				<th>Nombre Proveedor</th>
				<th>Cuenta</th>
				<th>Grupo</th>
				<th>Metodo de Pago</th>
				<th>Forma de Pago</th>
				<th>Moneda</th>
				<th>Concepto</th>
				<th>Importe</th>
				<th>IVA</th>
				<th>Total</th>
			</tr>
			<tr>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
		</table>
	</div>
	
    </body>
</html>
