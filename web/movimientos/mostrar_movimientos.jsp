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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/mostrar.css">
    </head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<div>
		<form>
			<label for="movto">Movimiento:</label>
			<input type="radio" name="movtos" id="ingr" value="ingreso">
			<label for="ingreso"> Ingreso </label>
			<input type="radio" name="movtos" id="egre" value="egreso">
			<label for="egreso"> Egreso</label>
			<input type="radio" name="movtos" id="todo" value="todos">
			<label for="all"> Ambos</label><br><br>
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
			<label for="fech">Fecha:</label>
			<input type="date" name="fech"><br><br>
			<label>Persona:</label>
			<input type="select" name="ppl"><br><br>
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
				<td><button class="modif">Edit</button></td>
				<td><a href="baja?info=movimiento&id=${data.ID_Persona}" class="eliminar"><img width="20" height="20" src="https://images.ecosia.org/jnuw2NONcI2KMfsY1Y3EhQLZ-to=/0x390/smart/https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2017%2F02%2F23%2F08%2F46%2Fgarbage-2091534_960_720.png" id="trash"></a></td>
			</tr>
		</table>
	</div>

</body>
</html>