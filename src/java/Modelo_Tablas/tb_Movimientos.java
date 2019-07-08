
package Modelo_Tablas;

import java.sql.Date;


public class tb_Movimientos {
    private String Folio;
    private int ID_Movimiento;
    private int ID_Proyecto;
    private int Ingreso_Egreso;
    private Date Fecha;
    private String RFC;
    private int ID_Empresa;
    private int ID_Persona;
    private int ID_Cuenta;
    private int ID_Metodo_Pago;
    private int ID_Forma_Pago;
    private int ID_Moneda;
    private int ID_Tipo_Comprobante;
    private String Concepto;
    private double Precio_Unitario;
    private float Descuento;
    private double Sub_total;
    private float IVA;
    private float Ret_IVA;
    private float Ret_ISR;
    private float IEPS;
    private String UUID;
    private int Impuestos;
    private String rutadoc;
    private float total;
    private String Tipo_Cambio;//
    private String Conversion;//
    private String Ruta_Archivo;//
    private String Status;
    private String Usuario;


    public tb_Movimientos(String Folio, int ID_Movimiento, int ID_Proyecto, int Ingreso_Egreso, Date Fecha, String RFC, int ID_Empresa, int ID_Persona, int ID_Cuenta, int ID_Metodo_Pago, int ID_Forma_Pago, int ID_Moneda, int ID_Tipo_Comprobante, String Concepto, double Precio_Unitario, float Descuento, double Sub_total, float IVA, float Ret_IVA, float Ret_ISR, float IEPS, String UUID, String Tipo_Cambio, String Conversion, String Ruta_Archivo, String Status, String Usuario) {
        this.Folio = Folio;
        this.ID_Movimiento = ID_Movimiento;
        this.ID_Proyecto = ID_Proyecto;
        this.Ingreso_Egreso = Ingreso_Egreso;
        this.Fecha = Fecha;
        this.RFC = RFC;
        this.ID_Empresa = ID_Empresa;
        this.ID_Persona = ID_Persona;
        this.ID_Cuenta = ID_Cuenta;
        this.ID_Metodo_Pago = ID_Metodo_Pago;
        this.ID_Forma_Pago = ID_Forma_Pago;
        this.ID_Moneda = ID_Moneda;
        this.ID_Tipo_Comprobante = ID_Tipo_Comprobante;
        this.Concepto = Concepto;
        this.Precio_Unitario = Precio_Unitario;
        this.Descuento = Descuento;
        this.Sub_total = Sub_total;
        this.IVA = IVA;
        this.Ret_IVA = Ret_IVA;
        this.Ret_ISR = Ret_ISR;
        this.IEPS = IEPS;
        this.UUID = UUID;
        this.Tipo_Cambio = Tipo_Cambio;
        this.Conversion = Conversion;
        this.Ruta_Archivo = Ruta_Archivo;
        this.Status = Status;
        this.Usuario = Usuario;
    }
    
    public tb_Movimientos(String Folio, int ID_Movimiento, int ID_Proyecto, int Ingreso_Egreso, Date Fecha, String RFC, int ID_Empresa, int ID_Persona, int ID_Cuenta, int ID_Metodo_Pago, int ID_Forma_Pago, int ID_Moneda, int ID_Tipo_Comprobante, String Concepto, double Precio_Unitario, float Descuento, double Sub_total, float IVA, float Ret_IVA, float Ret_ISR, float IEPS, String UUID, int Impuestos, String rutadoc, String Status, String Usuario) {
        this.Folio = Folio;
        this.ID_Movimiento = ID_Movimiento;
        this.ID_Proyecto = ID_Proyecto;
        this.Ingreso_Egreso = Ingreso_Egreso;
        this.Fecha = Fecha;
        this.RFC = RFC;
        this.ID_Empresa = ID_Empresa;
        this.ID_Persona = ID_Persona;
        this.ID_Cuenta = ID_Cuenta;
        this.ID_Metodo_Pago = ID_Metodo_Pago;
        this.ID_Forma_Pago = ID_Forma_Pago;
        this.ID_Moneda = ID_Moneda;
        this.ID_Tipo_Comprobante = ID_Tipo_Comprobante;
        this.Concepto = Concepto;
        this.Precio_Unitario = Precio_Unitario;
        this.Descuento = Descuento;
        this.Sub_total = Sub_total;
        this.IVA = IVA;
        this.Ret_IVA = Ret_IVA;
        this.Ret_ISR = Ret_ISR;
        this.IEPS = IEPS;
        this.UUID = UUID;
        this.Impuestos = Impuestos;
        this.rutadoc = rutadoc;
        this.Status = Status;
        this.Usuario = Usuario;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }
    
    
    
    public String getFolio() {
        return Folio;
    }

    public void setFolio(String Folio) {
        this.Folio = Folio;
    }

    public int getID_Movimiento() {
        return ID_Movimiento;
    }

    public void setID_Movimiento(int ID_Movimiento) {
        this.ID_Movimiento = ID_Movimiento;
    }

    public int getID_Proyecto() {
        return ID_Proyecto;
    }

    public void setID_Proyecto(int ID_Proyecto) {
        this.ID_Proyecto = ID_Proyecto;
    }

    public int getIngreso_Egreso() {
        return Ingreso_Egreso;
    }

    public void setIngreso_Egreso(int Ingreso_Egreso) {
        this.Ingreso_Egreso = Ingreso_Egreso;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    public String getRFC() {
        return RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    public int getID_Empresa() {
        return ID_Empresa;
    }

    public void setID_Empresa(int ID_Empresa) {
        this.ID_Empresa = ID_Empresa;
    }

    public int getID_Persona() {
        return ID_Persona;
    }

    public void setID_Persona(int ID_Persona) {
        this.ID_Persona = ID_Persona;
    }

    public int getID_Cuenta() {
        return ID_Cuenta;
    }

    public void setID_Cuenta(int ID_Cuenta) {
        this.ID_Cuenta = ID_Cuenta;
    }

    public int getID_Metodo_Pago() {
        return ID_Metodo_Pago;
    }

    public void setID_Metodo_Pago(int ID_Metodo_Pago) {
        this.ID_Metodo_Pago = ID_Metodo_Pago;
    }

    public int getID_Forma_Pago() {
        return ID_Forma_Pago;
    }

    public void setID_Forma_Pago(int ID_Forma_Pago) {
        this.ID_Forma_Pago = ID_Forma_Pago;
    }

    public int getID_Moneda() {
        return ID_Moneda;
    }

    public void setID_Moneda(int ID_Moneda) {
        this.ID_Moneda = ID_Moneda;
    }

    public int getID_Tipo_Comprobante() {
        return ID_Tipo_Comprobante;
    }

    public void setID_Tipo_Comprobante(int ID_Tipo_Comprobante) {
        this.ID_Tipo_Comprobante = ID_Tipo_Comprobante;
    }

    public String getConcepto() {
        return Concepto;
    }

    public void setConcepto(String Concepto) {
        this.Concepto = Concepto;
    }

    public double getPrecio_Unitario() {
        return Precio_Unitario;
    }

    public void setPrecio_Unitario(double Precio_Unitario) {
        this.Precio_Unitario = Precio_Unitario;
    }

    public float getDescuento() {
        return Descuento;
    }

    public void setDescuento(float Descuento) {
        this.Descuento = Descuento;
    }

    public double getSub_total() {
        return Sub_total;
    }

    public void setSub_total(double Sub_total) {
        this.Sub_total = Sub_total;
    }

    public float getIVA() {
        return IVA;
    }

    public void setIVA(float IVA) {
        this.IVA = IVA;
    }

    public float getRet_IVA() {
        return Ret_IVA;
    }

    public void setRet_IVA(float Ret_IVA) {
        this.Ret_IVA = Ret_IVA;
    }

    public float getRet_ISR() {
        return Ret_ISR;
    }

    public void setRet_ISR(float Ret_ISR) {
        this.Ret_ISR = Ret_ISR;
    }

    public float getIEPS() {
        return IEPS;
    }

    public void setIEPS(float IEPS) {
        this.IEPS = IEPS;
    }

    public String getUUID() {
        return UUID;
    }

    public void setUUID(String UUID) {
        this.UUID = UUID;
    }

    public String getTipo_Cambio() {
        return Tipo_Cambio;
    }

    public void setTipo_Cambio(String Tipo_Cambio) {
        this.Tipo_Cambio = Tipo_Cambio;
    }

    public String getConversion() {
        return Conversion;
    }

    public void setConversion(String Conversion) {
        this.Conversion = Conversion;
    }

    public String getRuta_Archivo() {
        return Ruta_Archivo;
    }

    public void setRuta_Archivo(String Ruta_Archivo) {
        this.Ruta_Archivo = Ruta_Archivo;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public int getImpuestos() {
        return Impuestos;
    }

    public void setImpuestos(int Impuestos) {
        this.Impuestos = Impuestos;
    }

    public String getRutadoc() {
        return rutadoc;
    }

    public void setRutadoc(String rutadoc) {
        this.rutadoc = rutadoc;
    }

    
    
}
