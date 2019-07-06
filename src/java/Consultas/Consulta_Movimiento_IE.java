/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Consultas;

import Conexion.Clase_conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
            String sql = "INSERT INTO `tb_movimientos` (`Folio`, `Fecha`, `RFC`, `Concepto`, `UUID`, `Id_Proyecto`, `Ingreso_Egreso`, `Id_Empresas`, `Id_Personas`, `Id_Cuenta`, `Id_MetodoPago`, `Id_FormPago`, `Id_Monedas`, `Id_TipoComprobante`, `Impuestos_locales`, `Precio_Unitario`, `Subtotal`, `Total`, `Descuento`, `IVA`, `Ret_IVA`, `Ret_ISR`, `IEPS`, `Status`, `Usuario`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
            miStatement.executeUpdate();
        }   catch (SQLException ex) {
            Logger.getLogger(Consulta_Personas.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
