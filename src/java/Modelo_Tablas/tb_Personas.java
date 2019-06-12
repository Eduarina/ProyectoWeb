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
public class tb_Personas {
    private int ID_Persona;
    private String Nombre;
    private String RFC;
    private String Direccion;
    private String Localidad;
    private String Municipio;
    private String Entidad;
    private String CP;
    private String Telefono;
    private String E_mail;
    private String Nombre_Empresa;
    private int Proveedor_Cliente;
    private int status;
    private String usuario;

    public tb_Personas(int ID_Persona, String Nombre, String RFC, String Direccion, String Localidad, String Municipio, String Entidad, String CP, String Telefono, String E_mail, String Nombre_Empresa, int Proveedor_Cliente, int status, String usuario) {
        this.ID_Persona = ID_Persona;
        this.Nombre = Nombre;
        this.RFC = RFC;
        this.Direccion = Direccion;
        this.Localidad = Localidad;
        this.Municipio = Municipio;
        this.Entidad = Entidad;
        this.CP = CP;
        this.Telefono = Telefono;
        this.E_mail = E_mail;
        this.Nombre_Empresa = Nombre_Empresa;
        this.Proveedor_Cliente = Proveedor_Cliente;
        this.status = status;
        this.usuario = usuario;
    }

    public tb_Personas(int id_Personas, String Nombre, String RFC, String Direccion, String Localidad, String Municipio, String Entidad, String CP, String Telefono, String E_mail) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public tb_Personas() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getID_Persona() {
        return ID_Persona;
    }

    public void setID_Persona(int ID_Persona) {
        this.ID_Persona = ID_Persona;
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

    public String getLocalidad() {
        return Localidad;
    }

    public void setLocalidad(String Localidad) {
        this.Localidad = Localidad;
    }

    public String getMunicipio() {
        return Municipio;
    }

    public void setMunicipio(String Municipio) {
        this.Municipio = Municipio;
    }

    public String getEntidad() {
        return Entidad;
    }

    public void setEntidad(String Entidad) {
        this.Entidad = Entidad;
    }

    public String getCP() {
        return CP;
    }

    public void setCP(String CP) {
        this.CP = CP;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getE_mail() {
        return E_mail;
    }

    public void setE_mail(String E_mail) {
        this.E_mail = E_mail;
    }

    public String getNombre_Empresa() {
        return Nombre_Empresa;
    }

    public void setNombre_Empresa(String Nombre_Empresa) {
        this.Nombre_Empresa = Nombre_Empresa;
    }

    public int getProveedor_Cliente() {
        return Proveedor_Cliente;
    }

    public void setProveedor_Cliente(int Proveedor_Cliente) {
        this.Proveedor_Cliente = Proveedor_Cliente;
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

    public tb_Personas(String Nombre, String RFC, String Direccion, String Localidad, String Municipio, String Entidad, String CP, String Telefono, String E_mail, String Nombre_Empresa, int Proveedor_Cliente) {
        this.Nombre = Nombre;
        this.RFC = RFC;
        this.Direccion = Direccion;
        this.Localidad = Localidad;
        this.Municipio = Municipio;
        this.Entidad = Entidad;
        this.CP = CP;
        this.Telefono = Telefono;
        this.E_mail = E_mail;
        this.Nombre_Empresa = Nombre_Empresa;
        this.Proveedor_Cliente = Proveedor_Cliente;
    }

    
    
}

