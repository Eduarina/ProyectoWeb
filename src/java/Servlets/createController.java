/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Consultas.*;
import Modelo_Tablas.*;
import java.io.IOException;
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
public class createController extends HttpServlet {

    private HttpSession session;
    private Consulta_Personas consulta_CliPro;
    private Consulta_Cuentas consulta_cuentas;
    private Consulta_Empresas consulta_empresa;
    private Consulta_Movimiento_IE consulta_mie;
    private Consultas_Extras consultas_extras;
    private Consultas_Proyecto consulta_proyecto;
    
    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        consulta_CliPro = new Consulta_Personas();
        consulta_cuentas = new Consulta_Cuentas();
        consulta_empresa = new Consulta_Empresas();
        consulta_mie = new Consulta_Movimiento_IE();
        consultas_extras = new Consultas_Extras();
        consulta_proyecto = new Consultas_Proyecto();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String info = request.getParameter("info");
        RequestDispatcher rd = null;
        switch(info){
            case "cliente_proveedor":
                rd = request.getRequestDispatcher("cliente_proveedor/nuevo_cliente_proveedor.jsp");
                break;
            case "cuenta":
                List<C_Grupo_Mov> lista = consulta_cuentas.getGrupos();
                request.setAttribute("grupos", lista);
                rd = request.getRequestDispatcher("cuenta_grupo/nuevo_cuenta.jsp");
                break;
            case "grupo":
                rd = request.getRequestDispatcher("cuenta_grupo/nuevo_grupo.jsp");
                break;
            case "movimiento":
                List<C_Proyecto> proyectos = consultas_extras.getProyectos();
                List<tb_Empresas> empresas = consulta_empresa.getEmpresas();
                List<tb_Cuentas> cuentas = consulta_cuentas.getCuentas();
                List<C_MetodoPago> metodos = consultas_extras.getMetodos();
                List<C_FormaPago> formas = consultas_extras.getFormas();
                List<C_Monedas> monedas = consultas_extras.getMonedas();
                List<C_Tipo_Comprobante> tipos = consultas_extras.getTipos();
                List<tb_Personas> personas = this.consulta_CliPro.getPersonas();
                request.setAttribute("empresas", empresas);
                request.setAttribute("proyectos", proyectos);
                request.setAttribute("cuentas", cuentas);
                request.setAttribute("metodos", metodos);
                request.setAttribute("formas", formas);
                request.setAttribute("monedas", monedas);
                request.setAttribute("tipos", tipos);
                request.setAttribute("personas", personas);
                rd = request.getRequestDispatcher("movimientos/nuevo_ingreso_egreso.jsp");
                break;
            case "empresa":
                rd = request.getRequestDispatcher("nuevo_empresa.jsp");
                break;
            case "proyecto":
                //result = llenado_empresa(request,response);
                rd = request.getRequestDispatcher("proyecto/nuevo_proyecto.jsp");
                break;
        }
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tipo = request.getParameter("tipo");
        RequestDispatcher rd = null;
        String result;
        switch( tipo ){
            case "cliente_proveedor":
                result = consulta_llenado(request,response);
                rd = request.getRequestDispatcher("/cliente_proveedor/nuevo_cliente_proveedor.jsp");
                break;
            case "cuenta":
                result = llenado_cuenta(request,response);
                List<C_Grupo_Mov> lista = consulta_cuentas.getGrupos();
                request.setAttribute("grupos", lista);
                rd = request.getRequestDispatcher("/cuenta_grupo/nuevo_cuenta.jsp");
                break;
            case "grupo":
                result = llenado_gpos(request,response);
                rd = request.getRequestDispatcher("cuenta_grupo/nuevo_grupo.jsp");
                break;
            case "empresa":
                result = llenado_empresa(request,response);
                rd = request.getRequestDispatcher("/nuevo_empresa.jsp");
                break;
            case "proyecto":
                result = llenado_proyecto(request,response);
                rd = request.getRequestDispatcher("proyecto/nuevo_proyecto.jsp");
                break;
            case "movimiento":
                List<C_Proyecto> proyectos = consultas_extras.getProyectos();
                List<tb_Empresas> empresas = consulta_empresa.getEmpresas();
                List<tb_Cuentas> cuentas = consulta_cuentas.getCuentas();
                List<C_MetodoPago> metodos = consultas_extras.getMetodos();
                List<C_FormaPago> formas = consultas_extras.getFormas();
                List<C_Monedas> monedas = consultas_extras.getMonedas();
                List<C_Tipo_Comprobante> tipos = consultas_extras.getTipos();
                List<tb_Personas> personas = this.consulta_CliPro.getPersonas();
                request.setAttribute("empresas", empresas);
                request.setAttribute("proyectos", proyectos);
                request.setAttribute("cuentas", cuentas);
                request.setAttribute("metodos", metodos);
                request.setAttribute("formas", formas);
                request.setAttribute("monedas", monedas);
                request.setAttribute("tipos", tipos);
                request.setAttribute("personas", personas);
                result = llenado_mvto(request,response);
                rd = request.getRequestDispatcher("movimientos/nuevo_ingreso_egreso.jsp");
                break;
        }
        rd.forward(request, response);
    }

    private String consulta_llenado(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String user = (String) session.getAttribute("user");
        String tipo = request.getParameter("cliente");
        String []names = {"nom", "RFC", "dir", "loc", "mpio", "ent", "CP", "tphone", "E-mail", "nom_e"};
        for (int i = 0; i < names.length; i++) {
            names[i] = request.getParameter(names[i]);
        }
        int tipo_insertar = Integer.parseInt(tipo);
        consulta_CliPro.Insertar_Datos(names, tipo_insertar, user);
        return "Correcto";
        
    }

    private String llenado_cuenta(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String user = (String) session.getAttribute("user");
        String des = request.getParameter("desc");
        int grupo = Integer.parseInt( request.getParameter("grupos") );
        consulta_cuentas.insertaCuentas(des, grupo, user);
        return "Correcto";
    }

    private String llenado_empresa(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String []names = {"nom","ln","dir","cd","es"};
        for (int i = 0; i < names.length; i++) {
            names[i] = request.getParameter(names[i]);
        }
        String user = (String) session.getAttribute("user");
        consulta_empresa.insertar(names,user);
        return "Correcto";
    }

    private String llenado_proyecto(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String []names = {"nom","emp"};
        for (int i = 0; i < names.length; i++) {
            names[i] = request.getParameter(names[i]);
        }
        String user = (String) session.getAttribute("user");
        consulta_proyecto.insertar(names,user);
        return "Correcto";
    }

    private String llenado_mvto(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String user = (String)session.getAttribute("user");
        String namesStrings[] = {"folio","fecha","rfc","uuid","cto"};
        String datosString[] = new String[5];
        for (int i = 0; i < namesStrings.length; i++) {
            datosString[i] = request.getParameter(namesStrings[i]);
        }
        String namesEnteros[] = {"proyecto","movtos","empresa","name","cuenta","metodo","forma","moneda","moneda","ilocales"};
        int datosEnteros[] = new int[10];
        for (int i = 0; i < namesEnteros.length; i++) {
            datosEnteros[i] = Integer.parseInt( request.getParameter(namesEnteros[i]) );
        }
        String namesDobles[] = {"precio","subt","total"};
        double datosDobles[] = new double[3];
        for (int i = 0; i < namesDobles.length; i++) {
            datosDobles[i] = Double.parseDouble( request.getParameter(namesDobles[i]) );
        }
        String namesReales[] = {"des","iva","ret_isr","ret_iva","ieps"};
        float datosReales[] = new float[5];
        for (int i = 0; i < namesReales.length; i++) {
            datosReales[i] = Float.parseFloat( request.getParameter(namesReales[i]) );
        }
        consulta_mie.insertaDatos( user, datosString, datosEnteros, datosDobles, datosReales );
        return "Correcto";
    }

    private String llenado_gpos(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String user = (String) session.getAttribute("user");
        String desc = request.getParameter("des");
        consulta_cuentas.insertarGPO(desc, user);
        return "Correcto";
    }
    
}
