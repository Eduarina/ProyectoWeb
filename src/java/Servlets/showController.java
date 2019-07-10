/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Consultas.*;
import Modelo_Tablas.*;
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
    private Consulta_Empresas consulta_empresa;
    private Consulta_Movimiento_IE consulta_mie;
    
    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        consulta_CliPro = new Consulta_Personas();
        consulta_cuentas = new Consulta_Cuentas();
        consulta_extras = new Consultas_Extras();
        consulta_empresa = new Consulta_Empresas();
        consulta_mie = new Consulta_Movimiento_IE();
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
                List<C_Proyecto> proyectos = consulta_extras.getProyectos();
                List<C_Grupo_Mov> grupitos = consulta_cuentas.getGrupos();
                List<tb_Empresas> empresas = consulta_empresa.getEmpresas();
                List<tb_Cuentas> cuenta = consulta_cuentas.getCuentas();
                List<C_MetodoPago> metodos = consulta_extras.getMetodos();
                List<C_FormaPago> formas = consulta_extras.getFormas();
                List<C_Monedas> monedas = consulta_extras.getMonedas();
                List<C_Tipo_Comprobante> tipos = consulta_extras.getTipos();
                List<tb_Personas> personas = this.consulta_CliPro.getPersonas();
                request.setAttribute("empresas", empresas);
                request.setAttribute("proyectos", proyectos);
                request.setAttribute("cuentas", cuenta);
                request.setAttribute("grupos", grupitos);
                request.setAttribute("metodos", metodos);
                request.setAttribute("formas", formas);
                request.setAttribute("monedas", monedas);
                request.setAttribute("tipos", tipos);
                request.setAttribute("personas", personas);
                List<tb_Movimientos> movimientos = consulta_mie.getMovimientos();
                    request.setAttribute("movimientos", movimientos);
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
        String names[] = {"movto","emp", "proyecto", "fech", "person" };
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

}
