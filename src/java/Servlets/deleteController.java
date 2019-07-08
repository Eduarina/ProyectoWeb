/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Consultas.Consulta_Cuentas;
import Consultas.Consulta_Personas;
import Consultas.Consultas_Extras;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Eduar
 */
@WebServlet(name = "deleteController", urlPatterns = {"/baja"})
public class deleteController extends HttpServlet {
    private Consultas_Extras consulta_extras;
    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        consulta_extras = new Consultas_Extras();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String campo = "", nuevo = "";
        String tabla = request.getParameter("info");
        switch(tabla){
            case "cliente":
            case "prov":
                if( tabla.equals("cliente") )
                    nuevo = "clientes";
                else
                    nuevo = "prov";
                tabla = "tb_Personas";
                campo = "Id_Persona";
                break;
            case "cuentas":
                tabla = "tb_cuentas";
                campo = "Id_Cuenta";
                nuevo = "ctas_gpos";
                break;
            case "grupos":
                    tabla = "ct_grupomovi";
                    campo = "Id_GrupoMov";
                    nuevo = "ctas_gpos";
                break;
                case "proyecto":
                    tabla = "ct_proyecto";
                    campo = "Id_Proyectos";
                    nuevo = "proyectos";
                break;
                case "empresa":
                    tabla = "tb_empresa";
                    campo = "Id_Empresa";
                    nuevo = "empresas";
                break;
                case "movimientos":
                    tabla = "tb_movimientos";
                    campo = "Folio";
                    nuevo = "movimientos";
                break;
        }
        int id = Integer.parseInt( request.getParameter("id") );
        consulta_extras.daBaja(tabla, campo, id);
        response.sendRedirect("mostrar?info="+nuevo);
        
    }
}
