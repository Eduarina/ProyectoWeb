/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.sql.DataSource;

/**
 *
 * @author Eduar
 */
public class Consultas_Extras {

    private Clase_conexion conexion = null;
    private PreparedStatement miStatement=null;
    private ResultSet rs = null;
    private String sql;
    private int i;
    //private DataSource origenDatos;
   
    public Consultas_Extras(DataSource origen) {}

    public Usuarios checkLogin(String[] names) {
        Usuarios user = null;
        try {
            conexion = Clase_conexion.getInstance();
            sql = "SELECT * FROM usuarios WHERE Nom_usuario = ? AND Contrasena = ?";
            miStatement = conexion.getConexion().prepareStatement(sql);
            for(i=0; i < names.length; i++){
                miStatement.setString((i+1), names[i]);
            }
            rs = miStatement.executeQuery();
            if( rs.next() ){
                int status = rs.getInt(4);
                if(status == 1){
                    user = new Usuarios();
                    user.setId_Usuario( rs.getInt(1) );
                    user.setNom_Usuario( rs.getString(2) );
                }
            }
        } catch (Exception e) {
        }
        return user;
    }
    
}
