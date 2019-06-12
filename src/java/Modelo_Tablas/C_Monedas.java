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
public class C_Monedas {
    private int ID_Monedas;
    private String Descripcion;
    private int status;
    private String Usuario;

    public C_Monedas(int ID_Monedas, String Descripcion, int status, String Usuario) {
        this.ID_Monedas = ID_Monedas;
        this.Descripcion = Descripcion;
        this.status = status;
        this.Usuario = Usuario;
    }

    public int getID_Monedas() {
        return ID_Monedas;
    }

    public void setID_Monedas(int ID_Monedas) {
        this.ID_Monedas = ID_Monedas;
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
