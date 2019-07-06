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
public class C_Proyecto {
    private int ID_Proyecto;
    private String Descripcion;
    private int status;
    private String Usuario;

    public C_Proyecto(int ID_Proyecto, String Descripcion, int status, String Usuario) {
        this.ID_Proyecto = ID_Proyecto;
        this.Descripcion = Descripcion;
        this.status = status;
        this.Usuario = Usuario;
    }

    public C_Proyecto() {}

    public int getID_Proyecto() {
        return ID_Proyecto;
    }

    public void setID_Proyecto(int ID_Proyecto) {
        this.ID_Proyecto = ID_Proyecto;
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
