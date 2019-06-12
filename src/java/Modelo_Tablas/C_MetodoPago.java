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
public class C_MetodoPago {
    private int ID_Metodo_Pago;
    private String Descripcion;
    private int status;
    private String Usuario;

    public C_MetodoPago(int ID_Metodo_Pago, String Descripcion, int status, String Usuario) {
        this.ID_Metodo_Pago = ID_Metodo_Pago;
        this.Descripcion = Descripcion;
        this.status = status;
        this.Usuario = Usuario;
    }

    public int getID_Metodo_Pago() {
        return ID_Metodo_Pago;
    }

    public void setID_Metodo_Pago(int ID_Metodo_Pago) {
        this.ID_Metodo_Pago = ID_Metodo_Pago;
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
