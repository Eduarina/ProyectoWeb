/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.C_Grupo_Mov;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 01
 */
public class Consulta_Grupo {
     private Clase_conexion origenDatos;
   
    public Consulta_Grupo() {
       //origenDatos = new Clase_conexion();
    }
    
    public List<C_Grupo_Mov> getEstados(){
        List<C_Grupo_Mov> estados = new ArrayList<>();
        
        Connection con = null;
        Statement miStatement = null;
        ResultSet miResultset = null;
        
        
        try{
            con =  origenDatos.getConexion();
            
            String sql= "select *from C_Grupo_Mov";
            miStatement = con.createStatement();
            miResultset = miStatement.executeQuery(sql);
            
            while(miResultset.next()){
                int Id_GrupoMov = miResultset.getInt("Id_GrupoMov");
                String Descripcion = miResultset.getString("Descripcion");
                int Status = miResultset.getInt("Status");
                String Usuario = miResultset.getString("Usuario");
                
                
                C_Grupo_Mov temp = new C_Grupo_Mov(Id_GrupoMov,Descripcion,Status,Usuario);
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
