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
public class C_FormaPago {
    private int ID_FormaPago;
    private String Descripcion;
    private int status;
    private String Usuario;

    public C_FormaPago(int ID_FormaPago, String Descripcion, int status, String Usuario) {
        this.ID_FormaPago = ID_FormaPago;
        this.Descripcion = Descripcion;
        this.status = status;
        this.Usuario = Usuario;
    }

    public int getID_FormaPago() {
        return ID_FormaPago;
    }

    public void setID_FormaPago(int ID_FormaPago) {
        this.ID_FormaPago = ID_FormaPago;
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
