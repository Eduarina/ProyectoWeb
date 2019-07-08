/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Consultas.Consulta_Personas;
import Consultas.Consultas_Extras;
import Modelo_Tablas.Usuarios;
import Utilirias.Utils;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

/**
 *
 * @author Eduar
 */
public class indexController extends HttpServlet {
    
    private Consultas_Extras consultas;
    //private RequestDispatcher rd;
    
    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        consultas = new Consultas_Extras();
        //consultas = new Consultas_Extras(origen);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("action");
        
        
        if( accion != null ){
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("/RO_DELAP_CONSTRUCCION_SAPI_DE_CV/");
        }else{
            HttpSession session = request.getSession();
            String idUser = (String) session.getAttribute("user");
            RequestDispatcher rd;
            if( idUser != null){
             rd = request.getRequestDispatcher("vista_general.jsp");   
            }else{
             rd = request.getRequestDispatcher("inicio_sesion.jsp");   
            }
            rd.forward(request, response);
        }
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("accion");
        
        switch(action){
            
            case "login":
                checkLogin(request,response);
                break;
            
        }
    }

    private void checkLogin(HttpServletRequest request, HttpServletResponse response) {
        String []names = {"user","pw"};
        RequestDispatcher rd;
        for(int i = 0; i < names.length; i++){
            names[i] = request.getParameter(names[i]);
        }
        names[1] = Utils.getMD5( names[1] );
        Usuarios user = consultas.checkLogin(names);
        if( user != null ){
            if( user.getId_Usuario() != 0 ){
                HttpSession session = request.getSession();
                session.setAttribute("user", user.getNom_Usuario());
                session.setAttribute("id", user.getId_Usuario());
                session.setAttribute("tipo", user.getTipo());
                rd = request.getRequestDispatcher("vista_general.jsp");
            }else{
                request.setAttribute("error", "El usuario no esta activo");
                rd = request.getRequestDispatcher("inicio_sesion.jsp");
            }
        }else{
            request.setAttribute("error", "Usuario/Contraseña Incorrecta");
            rd = request.getRequestDispatcher("inicio_sesion.jsp");
        }
        
        try {
            rd.forward(request, response);
        }catch (Exception ex) {
            Logger.getLogger(indexController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}