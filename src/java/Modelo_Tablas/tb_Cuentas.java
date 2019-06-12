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
public class tb_Cuentas {
    private int ID_Cuenta;
    private  String Descripcion;
    private int Grupo;
    private int Status;
    private  String Usuario;

    public tb_Cuentas(int ID_Cuenta, String Descripcion, int Grupo, int Status, String Usuario) {
        this.ID_Cuenta = ID_Cuenta;
        this.Descripcion = Descripcion;
        this.Grupo = Grupo;
        this.Status = Status;
        this.Usuario = Usuario;
    }

    public int getID_Cuenta() {
        return ID_Cuenta;
    }

    public void setID_Cuenta(int ID_Cuenta) {
        this.ID_Cuenta = ID_Cuenta;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public int getGrupo() {
        return Grupo;
    }

    public void setGrupo(int Grupo) {
        this.Grupo = Grupo;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

 
    
    
}
