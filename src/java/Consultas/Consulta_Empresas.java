/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.C_Grupo_Mov;
import Modelo_Tablas.tb_Empresas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Eduar
 */
public class Consulta_Empresas {
    
    private Clase_conexion conexion = null;
    private PreparedStatement miStatement=null;
    private ResultSet rs = null;
    private String sql;
    private int i;

    public Consulta_Empresas() {}

    public void insertar(String[] names, String user) {
        try {
            conexion = Clase_conexion.getInstance();
            sql = "INSERT INTO tb_empresa (`Nombre`, `RFC`, `Direccion`, `Ciudad`, `Estado`, `Status`, Usuario) VALUES (?, ?, ?, ?, ?, ?, ?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            for (i = 0; i < names.length; i++) {
                miStatement.setString((i+1), names[i]);
            }
            miStatement.setInt(i+1, 1);
            miStatement.setString(i+2, user);
            boolean execute = miStatement.execute();
            if( execute == true )
                return;
            return;
        } catch (SQLException ex) {
            return;
        }
    }

    public List<tb_Empresas> getEmpresas() {
        List<tb_Empresas> lista = new ArrayList<>();
        Statement statement = null;
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM tb_empresa WHERE Status = 1";
            statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            while(rs.next()){
                tb_Empresas nuevo = new tb_Empresas();
                nuevo.setID_Empresa( rs.getInt(1) );
                nuevo.setNombre( rs.getString(2) );
                nuevo.setRFC( rs.getString(3) );
                nuevo.setDireccion( rs.getString(4) );
                nuevo.setCiudad( rs.getString(5) );
                nuevo.setEstado( rs.getString(6) );
                nuevo.setStatus( rs.getInt(7) );
                nuevo.setUsuario( rs.getString(8) );
                lista.add(nuevo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consulta_Cuentas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }
    
    
    
}
