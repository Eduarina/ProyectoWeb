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
public class updateController extends HttpServlet {
        
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String from = request.getParameter("info");
        int id = Integer.parseInt( request.getParameter("id") );
        RequestDispatcher rd = null;
        switch(from){
            case "cliente":
            case "prov":
                tb_Personas editar = consulta_CliPro.getPersona(id);
                request.setAttribute("editar", editar);
                request.setAttribute("from", from);
                rd = request.getRequestDispatcher("/cliente_proveedor/modif_cliente.jsp");
                break;
            case "cuentas":
                tb_Cuentas cuenta = consulta_cuentas.getCuenta(id);
                request.setAttribute("editar", cuenta);
                List<C_Grupo_Mov> lista = consulta_cuentas.getGrupos();
                request.setAttribute("grupos", lista);
                rd = request.getRequestDispatcher("/cuenta_grupo/modif_cuenta.jsp");
                break;
            case "grupos":
                C_Grupo_Mov grupo = consulta_cuentas.getGrupo(id);
                request.setAttribute("editar", grupo);
                rd = request.getRequestDispatcher("/cuenta_grupo/modif_grupo.jsp");
                break;
            case "movimientos":
                tb_Movimientos movi = consulta_mie.getMovimiento(id);
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
                request.setAttribute("movimiento",movi);
                rd = request.getRequestDispatcher("movimientos/modif_ingreso.jsp");
                    break;
        }
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tipo = request.getParameter("tipo");
        RequestDispatcher rd = null;
        String result;
        switch( tipo ){
            case "cliente_proveedor":
                result = consulta_llenado(request,response);
                String from = request.getParameter("cliente");
                if(from.equalsIgnoreCase("1"))
                    response.sendRedirect("mostrar?info=clientes");
                else
                    response.sendRedirect("/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/mostrar?info=prov");
                break;
            case "cuenta":
                result = llenado_cuenta(request,response);
                response.sendRedirect("mostrar?info=ctas_gpos");
                break;
            case "grupo":
                result = llenado_gpos(request,response);
                response.sendRedirect("mostrar?info=ctas_gpos");
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
                result = llenado_mvto(request,response);
                response.sendRedirect("mostrar?info=movimientos");
                break;
        }
        //rd.forward(request, response);
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
        int id = Integer.parseInt( request.getParameter("ID") );
        consulta_CliPro.Editar_Datos(id, names, tipo_insertar, user);
        return "Correcto";
        
    }

    private String llenado_cuenta(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String user = (String) session.getAttribute("user");
        String des = request.getParameter("desc");
        int grupo = Integer.parseInt( request.getParameter("grupos") );
        int id = Integer.parseInt( request.getParameter("ID") );
        consulta_cuentas.editaCuentas(id, des, grupo, user);
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
        int id = Integer.parseInt( request.getParameter("id") );
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
        String namesReales[] = {"des","iva","ret_isr","ret_iva","ieps"};
        float datosReales[] = new float[5];
        for (int i = 0; i < namesReales.length; i++) {
            if( i == 1 ){
                int valor = Integer.parseInt( request.getParameter(namesReales[i]) );
                switch(valor){
                    case 1:
                        datosReales[i] = (float) 0.16;
                        break;
                    case 2:
                        datosReales[i] = (float) 0.15;
                        break;
                    default:
                        datosReales[i] = (float) 0.0;
                }
            }else{
                datosReales[i] = Float.parseFloat( request.getParameter(namesReales[i]) );   
            }
        }
        String namesDobles[] = {"precio","subt","total"};
        double datosDobles[] = new double[3];
        for (int i = 0; i < namesDobles.length; i++) {
            double valor = Double.parseDouble( request.getParameter(namesDobles[i]) );
            datosDobles[i] = Double.parseDouble( request.getParameter(namesDobles[i]) );
        }
        consulta_mie.actualizaDatos( id, user, datosString, datosEnteros, datosDobles, datosReales );
        return "Correcto";
    }

    private String llenado_gpos(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String user = (String) session.getAttribute("user");
        String desc = request.getParameter("des");
        int id = Integer.parseInt( request.getParameter("ID") );
        consulta_cuentas.editarGPO(id, desc, user);
        return "Correcto";
    }
    
}
