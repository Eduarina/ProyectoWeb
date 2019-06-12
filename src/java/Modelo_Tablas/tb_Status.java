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
public class tb_Status {
    private int ID_Status;
    private String Descripcion;

    public tb_Status(int ID_Status, String Descripcion) {
        this.ID_Status = ID_Status;
        this.Descripcion = Descripcion;
    }

    
    
    public tb_Status(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getID_Status() {
        return ID_Status;
    }

    public void setID_Status(int ID_Status) {
        this.ID_Status = ID_Status;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    @Override
    public String toString() {
        return "tb_Status{" + "ID_Status=" + ID_Status + ", Descripcion=" + Descripcion + '}';
    }

        
}
