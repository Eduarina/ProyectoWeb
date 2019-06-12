/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.tb_Status;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class Consulta_Status {

    private Clase_conexion origenDatos;
   
    public Consulta_Status() {
       origenDatos = new Clase_conexion();
    }
    
    public List<tb_Status> getEstados(){
        List<tb_Status> estados = new ArrayList<>();
        
        Connection con = null;
        Statement miStatement = null;
        ResultSet miResultset = null;
        
        
        try{
            con =  origenDatos.getConexion();
            
            String sql= "select *from tb_Status";
            miStatement = con.createStatement();
            miResultset = miStatement.executeQuery(sql);
            
            while(miResultset.next()){
                int id_Status = miResultset.getInt("Id_Status");
                String Descripcion = miResultset.getString("Descripcion");
                
                
                tb_Status temp = new tb_Status(id_Status,Descripcion);
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



/*
NOTA :los statament son para decir que se hara algo en la BD
STATEMENT es unicamente para mandar select y  solo hacer sin mover
PREPARESTATEMENT es para hacee modificaciones en las tablas (va con valores)*/
