/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import Modelo_Tablas.Usuarios;
import Modelo_Tablas.tb_Movimientos;
import java.sql.Date;
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
public class Consulta_Movimiento_IE {
    
    private Clase_conexion conexion = null;
    private PreparedStatement miStatement=null;
    private Statement statement = null;
    private ResultSet rs = null;
    private String sql;
    private int i;

    public Consulta_Movimiento_IE() {
    }
    
    
    public void insertaDatos(String user, String[] datosString, int[] datosEnteros, double[] datosDobles, float[] datosReales) {
     try {
            int i = 1;
            conexion = Clase_conexion.getInstance();
            sql = "SELECT Id_Movimiento from tb_movimientos ORDER BY Id_Movimiento DESC";
            Statement st = conexion.getConexion().createStatement();
            rs = st.executeQuery(sql);
            int idMov = -1;
            if( rs.next() ){
                idMov = rs.getInt(1);
            }
            sql = "INSERT INTO `tb_movimientos` (`Folio`, `Fecha`, `RFC`, `Concepto`, `UUID`, `Id_Proyecto`, `Ingreso_Egreso`, `Id_Empresas`, `Id_Personas`, `Id_Cuenta`, `Id_MetodoPago`, `Id_FormPago`, `Id_Monedas`, `Id_TipoComprobante`, `Impuestos`, `Precio_Unitario`, `Subtotal`, `Total`, `Descuento`, `IVA`, `Ret_IVA`, `Ret_ISR`, `IEPS`, `Status`, `Usuario`, Id_Movimiento) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            miStatement = conexion.getConexion().prepareStatement(sql);
            for (int j = 0; j < datosString.length; j++) {
                miStatement.setString(i, datosString[j]);
                i++;
            }
            for (int j = 0; j < datosEnteros.length; j++) {
                miStatement.setInt(i, datosEnteros[j]);
                i++;
            }
            for (int j = 0; j < datosDobles.length; j++) {
                miStatement.setDouble(i, datosDobles[j]);
                i++;
            }
            for (int j = 0; j < datosReales.length; j++) {
                miStatement.setFloat(i, datosReales[j]);
                i++;
            }
            miStatement.setInt(i, 1);
            miStatement.setString(i+1, user);
            miStatement.setInt(i+2, (idMov+1));
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<tb_Movimientos> getMovimientos() {
        List<tb_Movimientos> lista = new ArrayList<>();
        try {
            conexion = Clase_conexion.getInstance();
            sql = "SELECT * FROM tb_movimientos";
            Statement statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            while(rs.next()){
                String folio = rs.getString("Folio");
                int idmov = rs.getInt("Id_Movimiento");
                int idpro = rs.getInt("Id_Proyecto");
                int ingegre= rs.getInt("Ingreso_Egreso");
                Date fecha= rs.getDate("Fecha");
                String rfc =  rs.getString("RFC");
                int idemp= rs.getInt("Id_Empresas");
                int idper = rs.getInt("Id_Personas");
                int idcuent = rs.getInt("Id_Cuenta");
                int idmetpag = rs.getInt("Id_MetodoPago");
                int idformpag = rs.getInt("Id_FormPago");
                int idMon = rs.getInt("Id_Monedas");
                int idtipcompr = rs.getInt("Id_TipoComprobante");
                String concep = rs.getString("Concepto");
                double preuni = rs.getDouble("Precio_Unitario");
                float descuent = rs.getFloat("Descuento");
                double subtt = rs.getDouble("Subtotal");
                float iva = rs.getFloat("IVA");
                float rtiva = rs.getFloat("Ret_IVA");
                float rtisr= rs.getFloat("Ret_ISR");
                float ieps = rs.getFloat("IEPS");
                String uuid = rs.getString("UUID");
                String impuest = rs.getString("Tipo_Cambio");
                int imp = rs.getInt("Impuestos");
                String ruta = rs.getString("Ruta_Archivo");
                String status = rs.getString("Status");
                String usuario = rs.getString("Usuario");
                tb_Movimientos nuevo = new tb_Movimientos(folio,idmov,idpro,ingegre,fecha,rfc,
                            idemp,idper,idcuent,idmetpag,idformpag,idMon,idtipcompr,concep,preuni,descuent,
                subtt,iva,rtiva,rtisr,ieps,uuid,impuest,imp,ruta,status,usuario);    
                nuevo.setTotal( rs.getFloat("Total") );
                lista.add(nuevo);
            }
        } catch (Exception e) {
                System.out.println(e);
        }
        return lista;
    }

    public tb_Movimientos getMovimiento(int id) {
        tb_Movimientos lista = new tb_Movimientos();
        try {
            conexion = Clase_conexion.getInstance();
            sql = "SELECT * FROM tb_movimientos WHERE folio = "+id;
            Statement statement = conexion.getConexion().createStatement();
            rs = statement.executeQuery(sql);
            if(rs.next()){
                lista.setFolio( rs.getString("Folio") );
                lista.setID_Movimiento( rs.getInt("Id_Movimiento") );
                lista.setID_Proyecto( rs.getInt("Id_Proyecto") );
                lista.setIngreso_Egreso( rs.getInt("Ingreso_Egreso") );
                lista.setFecha( rs.getDate("Fecha") );
                lista.setRFC( rs.getString("RFC") );
                lista.setID_Empresa( rs.getInt("Id_Empresas") );
                lista.setID_Persona( rs.getInt("Id_Personas") );
                lista.setID_Cuenta( rs.getInt("Id_Cuenta") );
                lista.setID_Metodo_Pago( rs.getInt("Id_MetodoPago") );
                lista.setID_Forma_Pago( rs.getInt("Id_FormPago") );
                lista.setID_Moneda( rs.getInt("Id_Monedas") );
                lista.setID_Tipo_Comprobante( rs.getInt("Id_TipoComprobante") );
                lista.setConcepto( rs.getString("Concepto") );
                lista.setPrecio_Unitario( rs.getDouble("Precio_Unitario") );
                lista.setDescuento( rs.getFloat("Descuento") );
                lista.setSub_total( rs.getDouble("Subtotal") );
                lista.setIVA( rs.getFloat("IVA") );
                lista.setRet_IVA( rs.getFloat("Ret_IVA") );
                lista.setRet_ISR( rs.getFloat("Ret_ISR") );
                lista.setIEPS( rs.getFloat("IEPS") );
                lista.setUUID( rs.getString("UUID") );
                lista.setImpuestos( rs.getInt("Impuestos_Locales") );
                lista.setRuta_Archivo( rs.getString("Ruta_Archivo") );
                lista.setStatus( rs.getString("Status") );
                lista.setUsuario( rs.getString("Usuario") );
                lista.setTotal( rs.getFloat("Total") );
            }
        } catch (Exception e) {
        }
        return lista;
    }

    public void actualizaDatos(int id, String user, String[] datosString, int[] datosEnteros, double[] datosDobles, float[] datosReales) {
        try {
            int i = 1;
            conexion = Clase_conexion.getInstance();
            sql = "UPDATE `tb_movimientos` SET `Folio` = ?, `Fecha`=?, `RFC`=?, `Concepto`=?, `UUID`=?, `Id_Proyecto`=?, `Ingreso_Egreso`=?, `Id_Empresas`=?, `Id_Personas`=?, `Id_Cuenta`=?, `Id_MetodoPago`=?, `Id_FormPago`=?, `Id_Monedas`=?, `Id_TipoComprobante`=?, `Impuestos_locales`=?, `Precio_Unitario`=?, `Subtotal`=?, `Total`=?, `Descuento`=?, `IVA`=?, `Ret_IVA`=?, `Ret_ISR`=?, `IEPS`=?, `Status`=?, `Usuario`=?, Id_Movimiento =? WHERE Folio = "+id;
            miStatement = conexion.getConexion().prepareStatement(sql);
            for (int j = 0; j < datosString.length; j++) {
                miStatement.setString(i, datosString[j]);
                i++;
            }
            for (int j = 0; j < datosEnteros.length; j++) {
                miStatement.setInt(i, datosEnteros[j]);
                i++;
            }
            for (int j = 0; j < datosDobles.length; j++) {
                miStatement.setDouble(i, datosDobles[j]);
                i++;
            }
            for (int j = 0; j < datosReales.length; j++) {
                miStatement.setFloat(i, datosReales[j]);
                i++;
            }
            miStatement.setInt(i, 1);
            miStatement.setString(i+1, user);
            miStatement.setInt(i+2, id);
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
