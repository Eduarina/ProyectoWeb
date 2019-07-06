/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Consultas.Consulta_Cuentas;
import Consultas.Consulta_Personas;
import Consultas.Consultas_Extras;
import Modelo_Tablas.C_Grupo_Mov;
import Modelo_Tablas.C_Proyecto;
import Modelo_Tablas.tb_Cuentas;
import Modelo_Tablas.tb_Personas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Eduar
 */
public class showController extends HttpServlet {

    private HttpSession session;
    private Consulta_Personas consulta_CliPro;
    private Consulta_Cuentas consulta_cuentas;
    private Consultas_Extras consulta_extras;
    
    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        consulta_CliPro = new Consulta_Personas();
        consulta_cuentas = new Consulta_Cuentas();
        consulta_extras = new Consultas_Extras();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String tipo = request.getParameter("info");
        RequestDispatcher rd = null;
        List<tb_Personas> lista = null;
        switch(tipo){
            case "clientes":
                lista = consulta_CliPro.getData(1);
                rd = request.getRequestDispatcher("cliente_proveedor/mostrar_clientes.jsp");
                request.setAttribute("datos", lista);
                break;
            case "prov":
                lista = consulta_CliPro.getData(2);
                rd = request.getRequestDispatcher("cliente_proveedor/mostrar_prov.jsp");
                request.setAttribute("datos", lista);
                break;
            case "ctas_gpos":
                List<tb_Cuentas> cuentas = consulta_cuentas.getCuentas();
                List<C_Grupo_Mov> grupos = consulta_cuentas.getGrupos();
                request.setAttribute( "cuentas", cuentas );
                request.setAttribute( "grupos", grupos);
                rd = request.getRequestDispatcher("cuenta_grupo/mostrar_ctas_gpos.jsp");
                break;
            case "movimientos":
                rd = request.getRequestDispatcher("movimientos/mostrar_movimientos.jsp");
                break;
            case "proyectos":
                List<C_Proyecto> nuevaLista = consulta_extras.getData();
                rd = request.getRequestDispatcher("proyecto/mostrar_proyecto.jsp");
                request.setAttribute("proyectos", nuevaLista);
                break;
        }
        rd.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

}
