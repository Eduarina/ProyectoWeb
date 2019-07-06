/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.Usuarios;
import Modelo_Tablas.tb_Personas;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Consultas_Usuario {

    private Clase_conexion conexion = null;
    private PreparedStatement miStatement=null;
    private ResultSet rs = null;
    private String sql;
    private int i;

    public Consultas_Usuario() {}
    
    public String insertaUsuario(String[] names) {
        try {
            conexion = Clase_conexion.getInstance();
            sql = "INSERT INTO usuarios (`Nombre`, `Apellido`, `Fecha_Nacimiento`, `Telefono`, `Nom_usuario`, `Contrasena`, `Sexo`, `Status`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            for (i = 0; i < names.length; i++) {
                miStatement.setString((i+1), names[i]);
            }
            miStatement.setInt(i+1, 1);
            boolean execute = miStatement.execute();
            if( execute == true )
                return "Correcto";
            return "Incorrecto";
        } catch (SQLException ex) {
            return "No se pudo establecer conexion a la base de datos";
        }
    }

    public List<Usuarios> getUsuarios() {
        List<Usuarios> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            sql = "SELECT * FROM usuarios";
            Statement statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            while(rs.next()){
                Usuarios nuevo = new Usuarios();
                nuevo.setId_Usuario( rs.getInt(1) ) ;
                nuevo.setNom_Usuario( rs.getString(2) );
                nuevo.setStatus( rs.getInt(4) );
                nuevo.setNombre( rs.getString(5) );
                nuevo.setApellido( rs.getString(6) );
                nuevo.setFecha_Nacimiento( rs.getString(8) );
                nuevo.setTelefono( rs.getString(9) );
                if( rs.getString( 7 ).equalsIgnoreCase("masculino") )
                    nuevo.setSexo(1);
                else
                    nuevo.setSexo(2);
                lista.add(nuevo);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public Usuarios getMe(int id) {
        Usuarios aEditar = null;
        try {
            conexion = Clase_conexion.getInstance();
            sql = "SELECT * FROM usuarios WHERE Id_Usuario = "+id;
            Statement statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            if(rs.next()){
                aEditar= new Usuarios();
                aEditar.setId_Usuario( rs.getInt(1) ) ;
                aEditar.setNom_Usuario( rs.getString(2) );
                aEditar.setStatus( rs.getInt(4) );
                aEditar.setNombre( rs.getString(5) );
                aEditar.setApellido( rs.getString(6) );
                aEditar.setFecha_Nacimiento( rs.getString(8) );
                aEditar.setTelefono( rs.getString(9) );
                if( rs.getString( 7 ).equalsIgnoreCase("masculino") )
                    aEditar.setSexo(1);
                else
                    aEditar.setSexo(2);
            }
        } catch (Exception e) {
        }
        return aEditar;
    }

    public String editaUsuario(String[] names, int id) {
        try {
            conexion = Clase_conexion.getInstance();
            sql = "UPDATE usuarios  SET `Nombre` = ?, `Apellido` = ?, `Telefono` = ? , `Nom_usuario` = ? , `Contrasena` = ? WHERE Id_Usuario = "+id;
            miStatement = conexion.getConexion().prepareStatement(sql);
            for (i = 0; i < names.length; i++) {
                miStatement.setString((i+1), names[i]);
            }
            boolean execute = miStatement.execute();
            if( execute == true )
                return "Correcto";
            return "Incorrecto";
        } catch (SQLException ex) {
            return "No se pudo establecer conexion a la base de datos";
        }
    }
    
}
