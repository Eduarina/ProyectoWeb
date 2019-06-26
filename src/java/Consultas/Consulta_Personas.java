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
    
    private DataSource origenDatos;
   
    public Consulta_Personas(DataSource origen) {
       origenDatos = origen;
    }

    public List<tb_Personas> getPersonas(){
         try {
            List<tb_Personas> lista = new ArrayList<>();
            Connection conexion =null;
            Statement miStatement=null;
            ResultSet rs = null;
            
            conexion = origenDatos.getConnection();
            String sql = "SELECT * FROM tb_personas";
            miStatement = conexion.createStatement();
            rs = miStatement.executeQuery(sql);
            while(rs.next()){
               tb_Personas nuevo = new tb_Personas();
               nuevo.setCP( rs.getString("CP") );
               nuevo.setDireccion( rs.getString("Direccion") );
               lista.add(nuevo);
            }
            return lista;
         } catch (SQLException ex) {
            return null;
         }
    }
    
    public void Insertar_Datos(tb_Personas constructor) {
        Connection conexion =null;
        PreparedStatement miStatement=null;
        ResultSet rs = null;
         int estatus=1;
        
        try{
            conexion=origenDatos.getConnection();
            String sql = "INSERT INTO tb_personas (Nombre, RFC, Direccion, Localidad, Municipio, Entidad, CP, Telefono, E_mail, Nombre_Empresa, Cliente_Proveedor, Status )"+
                        "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
            miStatement = conexion.prepareStatement(sql);
            miStatement.setString(1, constructor.getNombre());
            miStatement.setString(2, constructor.getRFC());
            miStatement.setString(3, constructor.getDireccion());
            miStatement.setString(4, constructor.getLocalidad());
            miStatement.setString(5, constructor.getMunicipio());
            miStatement.setString(6, constructor.getEntidad());
            miStatement.setString(7, constructor.getCP());
            miStatement.setString(8, constructor.getTelefono());
            miStatement.setString(9, constructor.getE_mail());
            miStatement.setString(10, constructor.getNombre_Empresa());
            miStatement.setInt(11, constructor.getProveedor_Cliente());
            miStatement.setInt(12, estatus);
            miStatement.executeUpdate();
        }catch(Exception e){
            System.out.println(e.toString());
        }
    }
    
    

}
