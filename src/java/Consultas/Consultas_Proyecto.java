/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Eduar
 */
public class Consultas_Proyecto {

    private Clase_conexion conexion = null;
    private PreparedStatement miStatement=null;
    private ResultSet rs = null;
    private String sql;
    private int i;

    public Consultas_Proyecto() {}
    
    public void insertar(String[] names, String user) {
        try {
            conexion = Clase_conexion.getInstance();
            sql = "INSERT INTO ct_proyecto (`Descripcion`, `Usuario`, `Status` ) VALUES (?, ?, ?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            miStatement.setString(1 , names[1]);
            miStatement.setString(2, user);
            miStatement.setInt(2, 1);
            boolean execute = miStatement.execute();
            if( execute == true )
                return;
            return;
        } catch (SQLException ex) {
            return;
        }
    }
    
}
