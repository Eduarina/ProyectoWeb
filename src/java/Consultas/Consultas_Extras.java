/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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

    public Consultas_Extras() {
        
    }

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
                    user.setTipo( rs.getInt("Tipo") );
                }
            }
        } catch (Exception e) {
        }
        return user;
    }

    public List<C_MetodoPago> getMetodos() {
        List<C_MetodoPago> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM ct_metodopago";
            miStatement = conexion.getConexion().prepareStatement(sql);
            rs = miStatement.executeQuery();
            while( rs.next() ){
                C_MetodoPago nuevo = new C_MetodoPago();
                nuevo.setID_Metodo_Pago( rs.getInt(1) );
                nuevo.setDescripcion( rs.getString(2) );
                nuevo.setStatus( rs.getInt(3) );
                nuevo.setUsuario( rs.getString(4) );
                lista.add(nuevo);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }

    public List<C_FormaPago> getFormas() {
        List<C_FormaPago> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM ct_formaspago";
            miStatement = conexion.getConexion().prepareStatement(sql);
            rs = miStatement.executeQuery();
            while( rs.next() ){
                C_FormaPago nuevo = new C_FormaPago();
                nuevo.setID_FormaPago(rs.getInt(1) );
                nuevo.setDescripcion( rs.getString(2) );
                nuevo.setStatus( rs.getInt(3) );
                nuevo.setUsuario( rs.getString(4) );
                lista.add(nuevo);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }

    public List<C_Monedas> getMonedas() {
        List<C_Monedas> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM ct_monedas";
            miStatement = conexion.getConexion().prepareStatement(sql);
            rs = miStatement.executeQuery();
            while( rs.next() ){
                C_Monedas nuevo = new C_Monedas();
                nuevo.setID_Monedas(rs.getInt(1) );
                nuevo.setDescripcion( rs.getString(2) );
                nuevo.setStatus( rs.getInt(3) );
                nuevo.setUsuario( rs.getString(4) );
                lista.add(nuevo);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }

    public List<C_Tipo_Comprobante> getTipos() {
        List<C_Tipo_Comprobante> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM ct_tipocomprobante";
            miStatement = conexion.getConexion().prepareStatement(sql);
            rs = miStatement.executeQuery();
            while( rs.next() ){
                C_Tipo_Comprobante nuevo = new C_Tipo_Comprobante();
                nuevo.setID_Tipo_Comprobante(rs.getInt(1) );
                nuevo.setDescripcion( rs.getString(2) );
                nuevo.setStatus( rs.getInt(3) );
                nuevo.setUsuario( rs.getString(4) );
                lista.add(nuevo);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }

    public List<C_Proyecto> getProyectos() {
        List<C_Proyecto> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM ct_proyecto ";
            miStatement = conexion.getConexion().prepareStatement(sql);
            rs = miStatement.executeQuery();
            while( rs.next() ){
                C_Proyecto nuevo = new C_Proyecto();
                nuevo.setID_Proyecto(rs.getInt(1) );
                nuevo.setDescripcion( rs.getString(2) );
                nuevo.setStatus( rs.getInt(3) );
                nuevo.setUsuario( rs.getString(4) );
                lista.add(nuevo);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }

    public void daBaja(String tabla, String campo, int id) {
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "UPDATE "+tabla+ " SET status = 2 WHERE "+campo+" = "+id;
            Statement statement = conexion.getConexion().createStatement();
            statement.execute(sql);
        }catch(Exception e){
             System.out.println(e);
        }
    }

    public List<C_Proyecto> getData() {
        List<C_Proyecto> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            String sql = "SELECT * FROM ct_proyecto";
            miStatement = conexion.getConexion().prepareStatement(sql);
            rs = miStatement.executeQuery();
            while( rs.next() ){
                C_Proyecto nuevo = new C_Proyecto();
                nuevo.setID_Proyecto(rs.getInt(1) );
                nuevo.setDescripcion( rs.getString(2) );
                nuevo.setStatus( rs.getInt(3) );
                nuevo.setUsuario( rs.getString(4) );
                lista.add(nuevo);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        return lista;
    }
    
}
