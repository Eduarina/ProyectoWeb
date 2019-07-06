/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo_Tablas;

/**
 *
 * @author 01
 */
public class C_Tipo_Comprobante {
    private int ID_Tipo_Comprobante;
    private String Descripcion;
    private int status;
    private String Usuario;

    public C_Tipo_Comprobante(int ID_Tipo_Comprobante, String Descripcion, int status, String Usuario) {
        this.ID_Tipo_Comprobante = ID_Tipo_Comprobante;
        this.Descripcion = Descripcion;
        this.status = status;
        this.Usuario = Usuario;
    }

    public C_Tipo_Comprobante() {}

    public int getID_Tipo_Comprobante() {
        return ID_Tipo_Comprobante;
    }

    public void setID_Tipo_Comprobante(int ID_Tipo_Comprobante) {
        this.ID_Tipo_Comprobante = ID_Tipo_Comprobante;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }
    
    
   
    
    
}
