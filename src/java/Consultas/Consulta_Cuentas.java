/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.tb_Cuentas;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 01
 */
public class Consulta_Cuentas {
        private Clase_conexion origenDatos;
   
    public Consulta_Cuentas() {
       origenDatos = new Clase_conexion();
    }
    
    public List<tb_Cuentas> getEstados(){
        List<tb_Cuentas> estados = new ArrayList<>();
        
        Connection con = null;
        Statement miStatement = null;
        ResultSet miResultset = null;
        
        
        try{
            con =  origenDatos.getConexion();
            
            String sql= "select *from tb_Cuentas";
            miStatement = con.createStatement();
            miResultset = miStatement.executeQuery(sql);
            
            while(miResultset.next()){
                int Id_Cuenta = miResultset.getInt("Id_Cuenta");
                String Descripcion = miResultset.getString("Descripcion");
                int Grupo = miResultset.getInt("Grupo");                
                int Status = miResultset.getInt("Status");
                String Usuario = miResultset.getString("Usuario");
                
                
                tb_Cuentas temp = new tb_Cuentas(Id_Cuenta,Descripcion,Grupo,Status,Usuario);
                estados.add(temp);
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if(origenDatos.getConexion()!= null) origenDatos.getConexion().close();
                if(miStatement !=null) miStatement.close();
            }catch(Exception e){}
        }
        return estados;
    }
}
