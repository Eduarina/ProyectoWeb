use rodlp;

select *from tb_status;
select *from ct_formaspago;
select *from ct_monedas;
select *from ct_metodopago;
select *from ct_tipocomprobante;
select *from ct_proyecto;
select *from ct_grupomovi;
select *from tb_cuentas;
select *from tb_empresa;
select *from tb_personas;

insert into tb_status(Descripcion)
values  ('Alta'),
		('Baja'),
        ('Terminado'),
        ('Cancelado'),
        ('Pendiente');

insert into ct_formaspago(Descripcion,Status,Usuario)
values  ('Pago en una sola exhibicion',1,current_user()),
		('Pago en parcialidades',1,current_user());
        
        
insert into ct_monedas(Descripcion,Status,Usuario)
values  ('Peso Mexicano',1,current_user()),
		('Dolar Estadounidense',1,current_user()),
        ('Euro',1,current_user()),
        ('Libra',2,current_user());
        
insert into ct_metodopago(Descripcion,Status,Usuario)
values  ('Efectivo',1,current_user()),
		('Cheque',1,current_user()),
        ('Transferencia',1,current_user()),
        ('Tarjeta de credito',1,current_user()),
        ('Monederos electronicos',1,current_user()),
        ('Dinero electronico',1,current_user()),
        ('Tarjetas digitales',1,current_user()),
        ('Vales de despensa',1,current_user()),
        ('Bienes',1,current_user()),
        ('Servicio',1,current_user()),
        ('Por cuenta a terceros',1,current_user()),
        ('Dacion en pagos',1,current_user()),
        ('Pagos por subrogacion',1,current_user()),
        ('NA',1,current_user()),
        ('Otros',1,current_user());
        
insert into ct_tipocomprobante(Descripcion,Status,Usuario)
values  ('Comprobante de ingreso',1,current_user()),
		('Comprobante de egreso',1,current_user()),
        ('Comprobante de Traslado',1,current_user()),
        ('Comprobante de recepcion',1,current_user()),
        ('Comprobante de nomina',1,current_user()),
        ('Comprobante de palabra',2,current_user());

insert into ct_proyecto(Descripcion,Status,Usuario)
values  ('Proyecto del Hotel Mocambo',1,current_user()),
		('Proyecto Casino Winpot',1,current_user()),
        ('Proyecto Restaurant El jaibon',1,current_user()),
        ('Farmacia Similares Cuahtemoc',2,current_user()),
        ('Proyecto Autopista',2,current_user());
        
insert into ct_grupomovi(Descripcion,Status,Usuario)
values  ('Gastos internos',1,current_user()),
		('Gastos externos',1,current_user()),
        ('Otros gastos',1,current_user()),
        ('Ganancias',1,current_user()),
        ('No hubo gastos',1,current_user());
        
insert into tb_cuentas(Descripcion,Grupo,Status,Usuario)
values  ('gasto de luz',1,1,current_user()),
		('pago personal',1,1,current_user()),
        ('pago internte',1,1,current_user()),
        ('pago de hotel winpot',4,1,current_user()),
        ('pago honorarios',3,1,current_user());
        
insert into tb_empresa(Nombre,RFC,Direccion,Ciudad,Estado,Status,Usuario)
values  ('Prideco SA','P192NH2','Carretera Federal Ver-Xal','Veracruz','Veracruz',1,current_user()),
		('Spiry Incorporation','SPI567GH1', 'Hermandad #69 Col.Hidalgo','Veracruz','Veracruz',1,current_user()),
        ('Tubos de Monterrey','TBM10AC23','Barrio San Nicolas SN Col. Hogera','Monterrey','Nuevo Leon',1,current_user()),
        ('Casino Winpot','WIP1029POT','Enrique Segoviano #8 Col.Vencidad','Mexico','Mexico',1,current_user());
        
insert into tb_personas(Nombre,RFC,Direccion,Localidad,Municipio,Entidad,CP,Telefono,E_mail,Cliente_Proveedor,Status,Usuario)
values  ('Roberto Garcia','RBG12HV32','Real Mandiga #13','Alvarado','Boca del rio','Veracruz','91072','22901929102','robernaruto@gamil.com',1,1,current_user());


insert into tb_movimientos(Folio,Id_Movimiento,Id_Proyecto,Ingreso_Egreso,Fecha,RFC,Id_Empresas,Id_Personas,Id_Cuenta,Id_MetodoPago,Id_FormPago,Id_Monedas,Id_TipoComprobante,Concepto,Precio_Unitario,Descuento,Subtotal,IVA,Ret_IVA,Ret_ISR,IEPS,Total,UUID,Tipo_Cambio,Conversion,Ruta_Archivo,Status,Usuario)
values();