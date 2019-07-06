package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.tb_Personas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
Hacer el filtrado de las personas dependiendo si son ingresos o egresos
 */
public class Consulta_Personas {
    
    private Clase_conexion conexion = null;
    private PreparedStatement miStatement=null;
    private ResultSet rs = null;
    private String sql;
    private int i;

    public Consulta_Personas() {}
  
    public void Insertar_Datos(String []datos, int tipo, String user) {
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "INSERT INTO tb_personas (Nombre, RFC, Direccion, Localidad, Municipio, Entidad, CP, Telefono, E_mail, Nombre_Empresa, Cliente_Proveedor, Status, Usuario)"+
                        "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            for (int i = 0; i < datos.length; i++) {
                miStatement.setString(i+1, datos[i]);
            }
            miStatement.setInt(11, tipo);
            miStatement.setInt(12, 1);
            miStatement.setString(13, user);
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<tb_Personas> getData(int i) {
        List<tb_Personas> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM tb_Personas WHERE Cliente_Proveedor = ? AND status = 1";
            miStatement = conexion.getConexion().prepareStatement(sql);
            miStatement.setInt(1, i);
            rs = miStatement.executeQuery();
            while(rs.next()){
                tb_Personas nuevo = new tb_Personas();
                nuevo.setID_Persona( rs.getInt(1) );
                nuevo.setNombre( rs.getString(2) );
                nuevo.setRFC( rs.getString(3) );
                nuevo.setDireccion( rs.getString(4) );
                nuevo.setLocalidad( rs.getString(5) );
                nuevo.setMunicipio( rs.getString(6) );
                nuevo.setEntidad( rs.getString(7) );
                nuevo.setCP( rs.getString(8) );
                nuevo.setTelefono( rs.getString(9) );
                nuevo.setE_mail( rs.getString(10) );
                nuevo.setNombre_Empresa( rs.getString(11) );
                nuevo.setUsuario( rs.getString(14) );
                lista.add(nuevo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }

    public tb_Personas getPersona(int id) {
        tb_Personas aEditar = null;
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM tb_Personas WHERE Id_Persona = ?";
            miStatement = conexion.getConexion().prepareStatement(sql);
            miStatement.setInt(1, id);
            rs = miStatement.executeQuery();
            if(rs.next()){
                aEditar = new tb_Personas();
                aEditar.setID_Persona( rs.getInt(1) );
                aEditar.setNombre( rs.getString(2) );
                aEditar.setRFC( rs.getString(3) );
                aEditar.setDireccion( rs.getString(4) );
                aEditar.setLocalidad( rs.getString(5) );
                aEditar.setMunicipio( rs.getString(6) );
                aEditar.setEntidad( rs.getString(7) );
                aEditar.setCP( rs.getString(8) );
                aEditar.setTelefono( rs.getString(9) );
                aEditar.setE_mail( rs.getString(10) );
                aEditar.setNombre_Empresa( rs.getString(11) );
                aEditar.setUsuario( rs.getString(14) );
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return aEditar;
    }

    public void Editar_Datos(int id, String[] names, int tipo, String user) {
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "UPDATE `tb_personas` SET `Nombre` = ?, `RFC` = ?, `Direccion` = ?, `Localidad` = ?, `Municipio` = ?, `Entidad` = ?, `CP` = ?, `Telefono` = ?, `E_mail` = ?, `Nombre_Empresa` = ?, `Cliente_Proveedor` = ?, `Usuario` = ? WHERE (`Id_Persona` = ?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            for (int i = 0; i < names.length; i++) {
                miStatement.setString(i+1, names[i]);
            }
            miStatement.setInt(11, tipo);
            miStatement.setString(12, user);
            miStatement.setInt(13, id);
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<tb_Personas> getPersonas() {
        List<tb_Personas> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM tb_Personas";
            Statement nStatement = conexion.getConexion().createStatement();
            rs = nStatement.executeQuery(sql);
            while(rs.next()){
                tb_Personas nuevo = new tb_Personas();
                nuevo.setID_Persona( rs.getInt(1) );
                nuevo.setNombre( rs.getString(2) );
                nuevo.setRFC( rs.getString(3) );
                nuevo.setDireccion( rs.getString(4) );
                nuevo.setLocalidad( rs.getString(5) );
                nuevo.setMunicipio( rs.getString(6) );
                nuevo.setEntidad( rs.getString(7) );
                nuevo.setCP( rs.getString(8) );
                nuevo.setTelefono( rs.getString(9) );
                nuevo.setE_mail( rs.getString(10) );
                nuevo.setNombre_Empresa( rs.getString(11) );
                nuevo.setUsuario( rs.getString(14) );
                lista.add(nuevo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }
}
