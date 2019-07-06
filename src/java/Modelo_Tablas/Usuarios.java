/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo_Tablas;

/**
 *
 * @author Eduar
 */
public class Usuarios {
    
    private int Id_Usuario;
    private String Nom_Usuario;
    private String Nombre;
    private String Apellido;
    private int Sexo;
    private String Fecha_Nacimiento;
    private String Telefono;
    private int Status;

    public Usuarios() {
    }
    
    public Usuarios(int Id_Usuario, String Nom_Usuario, String Nombre, String Apellido, int Sexo, String Fecha_Nacimiento, String Telefono) {
        this.Id_Usuario = Id_Usuario;
        this.Nom_Usuario = Nom_Usuario;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Sexo = Sexo;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Telefono = Telefono;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    
    
    public int getId_Usuario() {
        return Id_Usuario;
    }

    public void setId_Usuario(int Id_Usuario) {
        this.Id_Usuario = Id_Usuario;
    }

    public String getNom_Usuario() {
        return Nom_Usuario;
    }

    public void setNom_Usuario(String Nom_Usuario) {
        this.Nom_Usuario = Nom_Usuario;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public int getSexo() {
        return Sexo;
    }

    public void setSexo(int Sexo) {
        this.Sexo = Sexo;
    }

    public String getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(String Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    
    
    
    
}
