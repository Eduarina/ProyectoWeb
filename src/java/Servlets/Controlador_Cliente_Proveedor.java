/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Consultas.Consulta_Personas;
import Modelo_Tablas.tb_Personas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


/**
 *
 * @author 01
 */

@WebServlet("/Consulta")
public class Controlador_Cliente_Proveedor extends HttpServlet {
    
    Consulta_Personas consulta_people;
    
    @Resource(name="jdbc/PollDatasource")
    private DataSource origen;

    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        consulta_people = new Consulta_Personas(origen);
    }
    
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        obtenerListado(request,response);
        
    }

    @Override  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String instruccion=request.getParameter("instruccion");
            
            switch(instruccion){
                case "insertar":
                    consulta_llenado(request,response);
                    break;
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void consulta_llenado(HttpServletRequest request, HttpServletResponse response) {

        String tipo = request.getParameter("cliente");
        if(tipo == null){
            tipo = request.getParameter("proveedor");
        }
        
         String Nombre= request.getParameter("nom");
         String RFC = request.getParameter("RFC");
         String Direccion = request.getParameter("dir");
         String Localidad = request.getParameter("loc");
         String Municipio = request.getParameter("mpio");
         String Entidad = request.getParameter("ent");
         String CP = request.getParameter("CP");
         String Telefono = request.getParameter("tphone");
         String E_mail = request.getParameter("E-mail");
         String Nombre_Empresa = request.getParameter("nom_e");
        int tipo_insertar = Integer.parseInt(tipo);
        tb_Personas constructor =new tb_Personas(Nombre,RFC,Direccion,Localidad,Municipio,Entidad,CP,Telefono,E_mail,Nombre_Empresa,tipo_insertar);
        consulta_people.Insertar_Datos(constructor);
        obtenerListado(request,response);
    }

    private void obtenerListado(HttpServletRequest request, HttpServletResponse response) {
        try {
            List<tb_Personas> lista = consulta_people.getPersonas();
            request.setAttribute("lista", lista);
            RequestDispatcher miDispatcher = request.getRequestDispatcher("/mostrar_prov.jsp");
            miDispatcher.forward(request, response);
        } catch (Exception ex) {
            System.out.println(ex.toString());
        }
    }

    
    
}
