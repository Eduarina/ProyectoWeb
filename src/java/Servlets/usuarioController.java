/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;


import Consultas.Consultas_Usuario;
import Modelo_Tablas.*;
import Utilirias.Utils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class usuarioController extends HttpServlet {
    
    private Consultas_Usuario consultas;
    //private RequestDispatcher rd;
    
    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        consultas = new Consultas_Usuario();
        //consultas = new Consultas_Extras(origen);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String accion = request.getParameter("action");
        RequestDispatcher rd = null;
        switch(accion){
            case "crear":
                rd = request.getRequestDispatcher("/usuario/crear_usuario.jsp");
                break;
            case "mostrar":
                List<Usuarios> lista = consultas.getUsuarios();
                request.setAttribute("usuarios", lista);
                rd = request.getRequestDispatcher("/usuario/consulta_usuarios.jsp");
                break;
            case "configuracion":
                int id = (int) session.getAttribute("id");
                Usuarios me = consultas.getMe(id);
                request.setAttribute("me", me);
                rd = request.getRequestDispatcher("/usuario/configuracion.jsp");
                break;
        }
        rd.forward(request, response);
            
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("accion");
        switch(action){
            
            case "inserta":
                newUsuario(request,response);
                break;
            case "configuracion":
                editaUsuario(request,response);
                break;
            
        }
        
    }

    private void newUsuario(HttpServletRequest request, HttpServletResponse response) {
        try {
            String []names = {"nom", "ln", "bday", "tphone", "user", "pw", "sexM"};
            int tam = names.length;
            for (int i = 0; i < tam; i++) {
                names[i] = request.getParameter(names[i]);
            }
            if( names[tam-1].equals("") ){
                names[ tam-1 ] = request.getParameter("sexF");
            }
            names[ tam-2 ] = Utils.getMD5( names[ tam-2 ] );
            String result = consultas.insertaUsuario(names);
            request.setAttribute("error", result);
            response.sendRedirect("usuarios?action=crear");
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    private void editaUsuario(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        int id = (int) session.getAttribute("id");
        try {
            String []names = {"nom", "ln", "tphone", "user", "pw"};
            int tam = names.length;
            for (int i = 0; i < tam; i++) {
                names[i] = request.getParameter(names[i]);
            }
            names[ tam-2 ] = Utils.getMD5( names[ tam-2 ] );
            String result = consultas.editaUsuario(names, id);
            request.setAttribute("error", result);
            response.sendRedirect("usuarios?action=configuracion");
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

}
