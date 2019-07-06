/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.C_Grupo_Mov;
import Modelo_Tablas.tb_Cuentas;
import java.sql.Connection;
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
 * @author 01
 */
public class Consulta_Cuentas {
    
    private Clase_conexion conexion = null;
    private PreparedStatement miStatement=null;
    private Statement statement = null;
    private ResultSet rs = null;
    private String sql;
    private int i;

    
    public Consulta_Cuentas() {}
    
//    public List<tb_Cuentas> getEstados(){
//        List<tb_Cuentas> estados = new ArrayList<>();
//        
//        Connection con = null;
//        Statement miStatement = null;
//        ResultSet miResultset = null;
//        
//        
//        try{
//            con =  origenDatos.getConexion();
//            
//            String sql= "select *from tb_Cuentas";
//            miStatement = con.createStatement();
//            miResultset = miStatement.executeQuery(sql);
//            
//            while(miResultset.next()){
//                int Id_Cuenta = miResultset.getInt("Id_Cuenta");
//                String Descripcion = miResultset.getString("Descripcion");
//                int Grupo = miResultset.getInt("Grupo");                
//                int Status = miResultset.getInt("Status");
//                String Usuario = miResultset.getString("Usuario");
//                
//                
//                tb_Cuentas temp = new tb_Cuentas(Id_Cuenta,Descripcion,Grupo,Status,Usuario);
//                estados.add(temp);
//            }
//        }catch(Exception e){
//            e.printStackTrace();
//        }finally{
//            try{
//                if(origenDatos.getConexion()!= null) origenDatos.getConexion().close();
//                if(miStatement !=null) miStatement.close();
//            }catch(Exception e){}
//        }
//        return estados;
//    }

    public void insertaCuentas(String desc, int grupo,  String user) {
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "INSERT INTO tb_cuentas  (`Descripcion`, `Grupo`, `Status`, `Usuario`) "+
                        "VALUES (?,?,?,?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            miStatement.setString(1, desc);
            miStatement.setInt(2, grupo);
            miStatement.setInt(3, 1);
            miStatement.setString(4, user);
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<C_Grupo_Mov> getGrupos() {
        List<C_Grupo_Mov> lista = new ArrayList<>();
        
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM ct_grupomovi WHERE Status = 1";
            statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            while(rs.next()){
                C_Grupo_Mov nuevo = new C_Grupo_Mov();
                nuevo.setID_Egreso( rs.getInt(1) );
                nuevo.setDescripcion( rs.getString(2) );
                nuevo.setUsuario( rs.getString(4) );
                lista.add(nuevo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consulta_Cuentas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }

    public List<tb_Cuentas> getCuentas() {
        List<tb_Cuentas> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM tb_cuentas WHERE Status = 1";
            statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            while(rs.next()){
                tb_Cuentas nuevo = new tb_Cuentas();
                nuevo.setID_Cuenta( rs.getInt(1) );
                nuevo.setDescripcion( rs.getString(2) );
                nuevo.setGrupo( rs.getInt(3) );
                nuevo.setStatus( rs.getInt(4) );
                nuevo.setUsuario( rs.getString(5) );
                lista.add(nuevo);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consulta_Cuentas.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }

    public tb_Cuentas getCuenta(int id) {
        tb_Cuentas aEditar = null;
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM tb_cuentas WHERE Id_Cuenta = "+id;
            statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            if(rs.next()){
                aEditar = new tb_Cuentas();
                aEditar.setID_Cuenta( rs.getInt(1) );
                aEditar.setDescripcion( rs.getString(2) );
                aEditar.setGrupo( rs.getInt(3) );
                aEditar.setStatus( rs.getInt(4) );
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consulta_Cuentas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return aEditar;
    }

    public C_Grupo_Mov getGrupo(int id) {
        C_Grupo_Mov aEditar = null;
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM ct_grupomovi WHERE Id_GrupoMov= "+id;
            statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            if(rs.next()){
                aEditar = new C_Grupo_Mov();
                aEditar.setID_Egreso(rs.getInt(1) );
                aEditar.setDescripcion( rs.getString(2) );
                aEditar.setStatus( rs.getInt(3) );
                aEditar.setUsuario( rs.getString(4) );
            }
        } catch (SQLException ex) {
            Logger.getLogger(Consulta_Cuentas.class.getName()).log(Level.SEVERE, null, ex);
        }
        return aEditar;
    }

    public void insertarGPO(String desc, String user) {
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "INSERT INTO ct_grupomovi  (`Descripcion`, `Status`, `Usuario`) "+
                        "VALUES (?,?,?,?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            miStatement.setString(1, desc);
            miStatement.setInt(2, 1);
            miStatement.setString(3, user);
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editarGPO(int id, String desc, String user) {
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "UPDATE `ct_grupomovi` SET `Descripcion` = ?, `Usuario` = ?  WHERE (`Id_GrupoMov` = ?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            miStatement.setString(1, desc);
            miStatement.setString(2, user);
            miStatement.setInt(3, id);
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editaCuentas(int id, String des, int grupo, String user) {
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "UPDATE `tb_cuentas` SET `Descripcion` = ?, `Grupo` = ?, `Usuario` = ? WHERE (`Id_Cuenta` = ?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            miStatement.setString(1, des);
            miStatement.setInt(2, grupo);
            miStatement.setString(3, user);
            miStatement.setInt(4, id);
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
