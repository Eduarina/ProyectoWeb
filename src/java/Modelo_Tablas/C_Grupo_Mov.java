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
public class C_Grupo_Mov {
    private int ID_Egreso;
    private String Descripcion;
    private int status;
    private String usuario;

    public C_Grupo_Mov(int ID_Egreso, String Descripcion, int status, String usuario) {
        this.ID_Egreso = ID_Egreso;
        this.Descripcion = Descripcion;
        this.status = status;
        this.usuario = usuario;
    }

    public int getID_Egreso() {
        return ID_Egreso;
    }

    public void setID_Egreso(int ID_Egreso) {
        this.ID_Egreso = ID_Egreso;
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
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }


    
}
