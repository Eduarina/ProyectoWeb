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
        <link rel="stylesheet" type="text/css" href="CSS/nuevos.css">
        <script>
            function aplicaIVA(){
                var ret = document.getElementById("ret");
                var data = "", dataS = "", dataI = "", dataT = "";
                if( ret.checked == true ){
                    var subt = parseFloat( document.getElementById("subt").value, 0.0 );
                    var iva = document.getElementById("iva").value;
                    switch(iva){
                        case "1":
                            iva = 0.16;
                            break;
                            case "2":
                                iva = 0.15;
                            break;
                    }
                    data = subt*(1+iva);
                    dataS = subt*0.1;
                    dataI = (subt * iva )*2/3;
                    var ieps = parseFloat( document.getElementById("ieps").value, 0.0);
                    var imp = parseFloat( document.getElementById("cnta").value,0.0 );
                    var 
                    dataT = data - dataS - dataI + ieps+imp;
                }
                
                document.getElementById("neto").value = data;
                document.getElementById("ris").value = round(dataS,2);
                document.getElementById("riv").value = round(dataI,2);
                document.getElementById("tota").value = dataT;
                
            }
        </script>
    </head>
    <body>
        <jsp:include page="../menu.jsp" ></jsp:include>
            <div>
                <form action="" method="post" id="formulario" class="ief">
                    <input type="hidden" value="movimiento" name="tipo">
                    <label for="movto">Movimiento:</label>
                    <input type="radio" name="movtos" id="ingr" value="3" checked="">
                    <label for="ingreso" class="ie"> Ingreso </label>
                    <input type="radio" name="movtos" id="egre" value="4">
                    <label for="egreso" class="ie"> Egreso</label><br><br><br>

                    <label for="empresa">Empresa:</label>
                    <select name="empresa">
                    <c:forEach items="${empresas}" var="emp">
                        <option value="${emp.ID_Empresa}">${emp.nombre}</option>
                    </c:forEach>
                </select><br><br>

                <label for="email">Proyecto:</label>
                <select name="proyecto">
                    <c:forEach items="${proyectos}" var="proyecto">
                        <option value="${proyecto.ID_Proyecto}">${proyecto.descripcion}</option>
                    </c:forEach>
                </select><br><br>

                <label for="folio">Folio:</label>
                <input type="text" name="folio" id="nombre" required=""><br><br>

                <label for="fecha">Fecha:</label>
                <input type="date" name="fecha" id="apellidos" required=""><br><br>

                <label for="rfc">RFC:</label>
                <input type="text" name="rfc" id="direcc" required=""><br><br>

                <label for="name">Nombre:</label>
                <select name="name">
                    <c:forEach items="${personas}" var="persona">
                        <option value="${persona.ID_Persona}">${persona.nombre}</option>
                    </c:forEach>
                </select><br><br>

                <label for="cuenta">Cuenta:</label>
                <select name="cuenta">
                    <c:forEach items="${cuentas}" var="cuenta">
                        <option value="${cuenta.ID_Cuenta}">${cuenta.descripcion}</option>
                    </c:forEach>
                </select><br><br>

                <label for="metodo">Metodo de Pago:</label>
                <select name="metodo">
                    <c:forEach items="${metodos}" var="metodo">
                        <option value="${metodo.ID_Metodo_Pago}">${metodo.descripcion}</option>
                    </c:forEach>
                </select><br><br>

                <label for="forma">Forma de Pago:</label>
                <select name="forma">
                    <c:forEach items="${formas}" var="forma">
                        <option value="${forma.ID_FormaPago}">${forma.descripcion}</option>
                    </c:forEach>
                </select><br><br>

                <label for="moneda">Moneda:</label>
                <select name="moneda">
                    <c:forEach items="${monedas}" var="moneda">
                        <option value="${moneda.ID_Monedas}">${moneda.descripcion}</option>
                    </c:forEach>
                </select><br><br>

                <label for="tipo">Tipo comprobante:</label>
                <select name="tipo">
                    <c:forEach items="${tipos}" var="tipo">
                        <option value="${tipo.ID_Tipo_Comprobante}">${tipo.descripcion}</option>
                    </c:forEach>				
                </select><br><br>

                <label for="precio">Precio Unitario:</label>
                <input type="text" name="precio" id="apellidos" required=""><br><br>

                <label for="des">Descuento:</label>
                <input type="text" name="des" id="direcc" required=""><br><br><br>

                <label for="subt">Subtotal:</label>
                <input name="subt" id="subt" required=""><br><br>

                <label for="iva">IVA:</label>
                <!--<input type="dropdown" name="iva1">-->
                <select name="iva" id="iva">
                    <option value="1">16%</option>
                    <option value="2">10%</option>
                    <option value="3">N/A%</option>
                </select><br><br>
                
                <label for="ieps">IEPS:</label>
                <input type="text" name="ieps" id="ieps" required=""><br><br>

                <label for="ilocales">Imps. Locales:</label>
                <input type="text" name="ilocales" id="cnta" required=""><br><br>
                
                <label for="ret">Aplica Retención</label>
                <input type="checkbox" id="ret" onchange="aplicaIVA();" name="ret"><br><br>

                <label for="subt">Subtotal:</label>
                <input name="subt" id="neto" required=""><br><br>
                
                <label for="entid">Ret. ISR:</label>
                <input name="ret_isr" id="ris" readonly="readonly"><br><br>

                <label for="phone">Ret. IVA:</label>
                <input name="ret_iva" id="riv" readonly="readonly"><br><br>

                <label for="total">Total:</label>
                <input name="total" id="tota" readonly="readonly"><br><br>

                <label for="uuid">UUID:</label>
                <input type="text" name="uuid" id="loc" required=""><br><br>

                <label for="file">Archivo:</label>
                <input type="file" name="file" id="loc"><br><br>

                <label for="cto">Concepto:</label>
                <textarea name="cto"></textarea><br><br><br><br>

                <button>Aceptar</button>
            </form>
        </div>

    </body>
</html>
