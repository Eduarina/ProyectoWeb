/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author 01
 */
public class Clase_conexion {
    
    private static Clase_conexion db;
    private Connection con;
    private String url = "jdbc:mysql://localhost:3306/rodlp";
    private String user = "root";
    private String pass = "12345a";
    
    public Clase_conexion() throws SQLException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.out.println("Error");
        }
    }
    
    public Connection getConexion(){
        return  con; 
    }
    
    public static Clase_conexion getInstance() throws SQLException{
        if ( db == null)
            db = new Clase_conexion();
        else if ( db.getConexion().isClosed() )
            db = new Clase_conexion();
        return db;
    }
    
}
