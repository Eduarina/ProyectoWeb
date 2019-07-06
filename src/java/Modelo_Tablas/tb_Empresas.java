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
public class tb_Empresas {
    private int ID_Empresa;
    private String Nombre;
    private String RFC;
    private String Direccion;
    private String Ciudad;
    private String Estado;
    private int Status; 
    private String Usuario;

    public tb_Empresas(int ID_Empresa, String Nombre, String RFC, String Direccion, String Ciudad, String Estado, int Status, String Usuario) {
        this.ID_Empresa = ID_Empresa;
        this.Nombre = Nombre;
        this.RFC = RFC;
        this.Direccion = Direccion;
        this.Ciudad = Ciudad;
        this.Estado = Estado;
        this.Status = Status;
        this.Usuario = Usuario;
    }

    public tb_Empresas() {
        
    }

    public int getID_Empresa() {
        return ID_Empresa;
    }

    public void setID_Empresa(int ID_Empresa) {
        this.ID_Empresa = ID_Empresa;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getRFC() {
        return RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
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
