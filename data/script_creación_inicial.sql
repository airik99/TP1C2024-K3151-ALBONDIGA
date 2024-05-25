use
GD1C2024
go

--------------------------- Limpiar tablas --------------------------- 
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Categoria_x_Subcategoria')
DROP TABLE ALBONDIGA.Categoria_x_Subcategoria;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Producto_x_Ticket')
DROP TABLE ALBONDIGA.Producto_x_Ticket;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Reglas_x_Promocion')
DROP TABLE ALBONDIGA.Reglas_x_Promocion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Promocion_x_Producto')
DROP TABLE ALBONDIGA.Promocion_x_Producto;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Promocion_x_Ticket')
DROP TABLE ALBONDIGA.Promocion_x_Ticket;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Pago')
DROP TABLE ALBONDIGA.Pago;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Envio')
DROP TABLE ALBONDIGA.Envio;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Ticket')
DROP TABLE ALBONDIGA.Ticket;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Detalle_Pago')
DROP TABLE ALBONDIGA.Detalle_Pago;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Caja')
DROP TABLE ALBONDIGA.Caja;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Empleado')
DROP TABLE ALBONDIGA.Empleado;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Sucursal')
DROP TABLE ALBONDIGA.Sucursal;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Tarjeta')
DROP TABLE ALBONDIGA.Tarjeta;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Supermercado')
DROP TABLE ALBONDIGA.Supermercado;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Cliente')
DROP TABLE ALBONDIGA.Cliente;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Domicilio')
DROP TABLE ALBONDIGA.Domicilio;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Descuento_Por_Medio_Pago')
DROP TABLE ALBONDIGA.Descuento_Por_Medio_Pago;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Medio_Pago')
DROP TABLE ALBONDIGA.Medio_Pago;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Producto')
DROP TABLE ALBONDIGA.Producto;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Localidad')
DROP TABLE ALBONDIGA.Localidad;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Tipo_Caja')
DROP TABLE ALBONDIGA.Tipo_Caja;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Sub_Categoria')
DROP TABLE ALBONDIGA.Sub_Categoria;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Categoria')
DROP TABLE ALBONDIGA.Categoria;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Regla')
DROP TABLE ALBONDIGA.Regla;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Promocion')
DROP TABLE ALBONDIGA.Promocion;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Tipo_Comprobante')
DROP TABLE ALBONDIGA.Tipo_Comprobante;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Tipo_Medio_Pago')
DROP TABLE ALBONDIGA.Tipo_Medio_Pago;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Provincia')
DROP TABLE ALBONDIGA.Provincia;

IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Estado_Envio')
DROP TABLE ALBONDIGA.Estado_Envio;

--------------------------- Limpiar Store Procedures ---------------------------
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Estado_Envio')
    DROP PROCEDURE ALBONDIGA.migrar_Estado_Envio;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Provincia')
    DROP PROCEDURE ALBONDIGA.migrar_Provincia;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Tipo_Medio_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_Tipo_Medio_Pago;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Tipo_Comprobante')
    DROP PROCEDURE ALBONDIGA.migrar_Tipo_Comprobante;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Promocion')
    DROP PROCEDURE ALBONDIGA.migrar_Promocion;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Regla')
    DROP PROCEDURE ALBONDIGA.migrar_Regla;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Categoria')
    DROP PROCEDURE ALBONDIGA.migrar_Categoria;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Sub_Categoria')
    DROP PROCEDURE ALBONDIGA.migrar_Sub_Categoria;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Tipo_Caja')
    DROP PROCEDURE ALBONDIGA.migrar_Tipo_Caja;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Localidad')
    DROP PROCEDURE ALBONDIGA.migrar_Localidad;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Producto')
    DROP PROCEDURE ALBONDIGA.migrar_Producto;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Medio_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_Medio_Pago;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Descuento_Por_Medio_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_Descuento_Por_Medio_Pago;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Domicilio')
    DROP PROCEDURE ALBONDIGA.migrar_Domicilio;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Cliente')
    DROP PROCEDURE ALBONDIGA.migrar_Cliente;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Supermercado')
    DROP PROCEDURE ALBONDIGA.migrar_Supermercado;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Tarjeta')
    DROP PROCEDURE ALBONDIGA.migrar_Tarjeta;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Sucursal')
    DROP PROCEDURE ALBONDIGA.migrar_Sucursal;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Empleado')
    DROP PROCEDURE ALBONDIGA.migrar_Empleado;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Caja')
    DROP PROCEDURE ALBONDIGA.migrar_Caja;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Detalle_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_Detalle_Pago;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Ticket')
    DROP PROCEDURE ALBONDIGA.migrar_Ticket;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Envio')
    DROP PROCEDURE ALBONDIGA.migrar_Envio;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_Pago;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Promocion_x_Ticket')
    DROP PROCEDURE ALBONDIGA.migrar_Promocion_x_Ticket;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Promocion_x_Producto')
    DROP PROCEDURE ALBONDIGA.migrar_Promocion_x_Producto;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Reglas_x_Promocion')
    DROP PROCEDURE ALBONDIGA.migrar_Reglas_x_Promocion;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Producto_x_Ticket')
    DROP PROCEDURE ALBONDIGA.migrar_Producto_x_Ticket;
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_Categoria_x_Subcategoria')
    DROP PROCEDURE ALBONDIGA.migrar_Categoria_x_Subcategoria;
GO

--------------------------- Limpiar Funciones ---------------------------
/*IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'obtenerFechaReciente')
	DROP FUNCTION MargeCreoQueOdioGDD.obtenerFechaReciente
GO*/

--------------------------- Limpiar Schema ---------------------------
IF EXISTS (SELECT name FROM sys.schemas WHERE name = 'ALBONDIGA')
BEGIN
	DROP SCHEMA ALBONDIGA
END
GO

--------------------------- Crear Schema ---------------------------
CREATE SCHEMA ALBONDIGA;
GO

--------------------------- Crear tablas ---------------------------
CREATE TABLE ALBONDIGA.Estado_Envio (
    id_estado_envio INT IDENTITY(1,1) PRIMARY KEY,
    descripcion NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Provincia (
    id_provincia INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Tipo_Medio_Pago (
    id_tipo_medio_pago INT IDENTITY(1,1) PRIMARY KEY,
    tipo_pago NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Tipo_Comprobante (
    id_tipo_comprobante INT IDENTITY(1,1) PRIMARY KEY,
    tipo NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Promocion (
	id_promocion INT IDENTITY(1,1) PRIMARY KEY,
    codigo DECIMAL(18,0) NOT NULL,
    descuento_aplicado DECIMAL(18,2) NOT NULL,
    descripcion NVARCHAR(255) NOT NULL,
    fecha_inicio DATETIME NOT NULL,
    fecha_fin DATETIME NOT NULL
);

CREATE TABLE ALBONDIGA.Regla (
    id_regla INT IDENTITY(1,1) PRIMARY KEY,
	aplica_misma_marca DECIMAL(18,0) NOT NULL,
    aplica_misma_prod DECIMAL(18,0) NOT NULL,
    cant_aplicable_descuento DECIMAL(18,0) NOT NULL,
    cant_aplicable_regla DECIMAL(18,0) NOT NULL,
    cant_maxima_producto DECIMAL(18,0) NOT NULL,
    descripcion NVARCHAR(255) NOT NULL,
    descuento_aplicar_porcentaje DECIMAL(18,2) NOT NULL
);

CREATE TABLE ALBONDIGA.Categoria (
    id_categoria INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Sub_Categoria (
    id_subcategoria INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Tipo_Caja (
    id_tipo_caja INT IDENTITY(1,1) PRIMARY KEY,
    tipo_caja NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Localidad (
    id_localidad INT IDENTITY(1,1) PRIMARY KEY,
    id_provincia INT NOT NULL,
    nombre NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Producto (
    codigo INT IDENTITY(1,1) PRIMARY KEY, --INT PRIMARY KEY NOT NULL, NO FIGURA NINGUN CODIGO DE PRODUCTO QUE PODAMOS USAR COMO PK
    nombre NVARCHAR(255) NOT NULL,
    precio_unitario DECIMAL(18,2) NOT NULL,
    marca NVARCHAR(255) NOT NULL,
    descripcion NVARCHAR(255) NOT NULL,
    id_subcategoria INT NOT NULL
);

CREATE TABLE ALBONDIGA.Medio_Pago (
    id_medio_pago INT IDENTITY(1,1) PRIMARY KEY,
    id_tipo_medio_pago INT NOT NULL,
    medio_pago NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Descuento_Por_Medio_Pago (
    codigo INT PRIMARY KEY NOT NULL,
    id_medio_pago INT NOT NULL,
    descripcion NVARCHAR(255) NOT NULL,
    fecha_inicio DATETIME NOT NULL,
    fecha_fin DATETIME NOT NULL,
    tope DECIMAL(18,2) NOT NULL,
    descuento_porcentaje DECIMAL(18,2) NOT NULL
);

CREATE TABLE ALBONDIGA.Domicilio (
    id_domicilio INT IDENTITY(1,1) PRIMARY KEY,
    calle_y_numero NVARCHAR(255) NOT NULL,
    id_localidad INT NOT NULL
);

CREATE TABLE ALBONDIGA.Cliente (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL,
    apellido NVARCHAR(255) NOT NULL,
    dni DECIMAL(18,0) NOT NULL,
    fecha_registro DATETIME NOT NULL,
    telefono DECIMAL(18,0) NOT NULL,
    mail NVARCHAR(255) NOT NULL,
    fecha_nacimiento DATETIME NOT NULL,
    id_domicilio INT NOT NULL
);

CREATE TABLE ALBONDIGA.Supermercado (
    id_supermercado INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL,
    razon_social NVARCHAR(255) NOT NULL,
    cuit NVARCHAR(255) NOT NULL,
    ingresos_brutos NVARCHAR(255) NOT NULL,
    id_domicilio INT NOT NULL,
    fecha_inicio_actividad DATETIME NOT NULL,
    condicion_fiscal NVARCHAR(255) NOT NULL
);

CREATE TABLE ALBONDIGA.Tarjeta (
    id_tarjeta INT IDENTITY(1,1) PRIMARY KEY,
    -- id_cliente INT NOT NULL, EN LA TABLA MAESTRA SON TODOS NULLS LOS CLIENTES, LAS TARJETAS NO ESTAN LIGADOS A LOS CLIENTES
    nro_tarjeta NVARCHAR(255) NOT NULL,
    fecha_vencimiento DATETIME NOT NULL
);

CREATE TABLE ALBONDIGA.Sucursal (
    nro_de_sucursal INT IDENTITY(1,1) PRIMARY KEY,
    id_supermercado INT NOT NULL,
    nombre NVARCHAR(255) NOT NULL,
    id_direccion INT NOT NULL
);

CREATE TABLE ALBONDIGA.Empleado (
    legajo INT IDENTITY(1,1) PRIMARY KEY,
    id_sucursal INT NOT NULL,
    nombre NVARCHAR(255) NOT NULL,
    apellido NVARCHAR(255) NOT NULL,
    dni DECIMAL(18,0) NOT NULL,
    fecha_registro DATETIME NOT NULL,
    telefono DECIMAL(18,0) NOT NULL,
    mail NVARCHAR(255) NOT NULL,
    fecha_de_nacimiento DATE NOT NULL
);

CREATE TABLE ALBONDIGA.Caja (
	id_caja INT IDENTITY(1,1) PRIMARY KEY, -- numero no puede ser PK porque hay un mismo numero de caja en distintas sucursales, cambiarlo en el der
    numero INT NOT NULL,
    id_sucursal INT NOT NULL,
    id_tipo_caja INT NOT NULL
);

CREATE TABLE ALBONDIGA.Detalle_Pago (
    id_detalle_pago INT IDENTITY(1,1) PRIMARY KEY,
    --id_cliente INT NOT NULL,
    id_tarjeta INT NOT NULL,
    cuotas DECIMAL(18,0) NOT NULL
);

CREATE TABLE ALBONDIGA.Ticket (
    nro_de_ticket INT PRIMARY KEY NOT NULL,
    id_sucursal INT NOT NULL,
    fecha_y_hora DATETIME NOT NULL,
    id_caja INT NOT NULL,
    id_empleado INT NOT NULL,
    id_tipo_de_comprobante INT NOT NULL,
    sub_total_ticket DECIMAL(18,2) NOT NULL,
    total_promociones DECIMAL(18,2) NOT NULL,
    total_descuento_medio_pago DECIMAL(18,2) NOT NULL,
    total_venta DECIMAL(18,2) NOT NULL
);

CREATE TABLE ALBONDIGA.Envio (
    nro_envio INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_ticket INT NOT NULL,
    costo DECIMAL(18,2) NOT NULL,
    fecha_programada DATETIME NOT NULL,
    hora_inicio DECIMAL(18,0) NOT NULL,
    hora_fin DECIMAL(18,0) NOT NULL,
    fecha_y_hora_entrega DATETIME NOT NULL,
    id_estado_envio INT NOT NULL
);

CREATE TABLE ALBONDIGA.Pago (
    nro_pago INT IDENTITY(1,1) PRIMARY KEY,
    fecha_y_hora DATETIME NOT NULL,
    id_ticket INT NOT NULL,
    id_medio_pago INT NOT NULL,
    id_detalle_pago INT NOT NULL,
    id_descuento_por_medio_pago INT,
    importe DECIMAL(18,2) NOT NULL
);

CREATE TABLE ALBONDIGA.Promocion_x_Ticket (
    id_promocion INT NOT NULL,
    nro_de_ticket INT NOT NULL
);

CREATE TABLE ALBONDIGA.Promocion_x_Producto (
    id_promocion INT NOT NULL,
    id_producto INT NOT NULL,
    promo_aplicada_descuento DECIMAL(18,2) NOT NULL
);

CREATE TABLE ALBONDIGA.Reglas_x_Promocion (
    id_promocion INT NOT NULL,
    id_regla INT NOT NULL
);

CREATE TABLE ALBONDIGA.Producto_x_Ticket (
    id_producto INT NOT NULL,
    id_ticket INT NOT NULL,
    cantidad DECIMAL(18,0) NOT NULL,
    total_por_producto DECIMAL(18,2) NOT NULL
);

CREATE TABLE ALBONDIGA.Categoria_x_Subcategoria (
    id_categoria INT NOT NULL,
    id_subcategoria INT NOT NULL
);

--------------------------- Agregar FKs ---------------------------
ALTER TABLE ALBONDIGA.Localidad
ADD CONSTRAINT FK_Localidad_Provincia
FOREIGN KEY (id_provincia) REFERENCES ALBONDIGA.Provincia(id_provincia);

ALTER TABLE ALBONDIGA.Producto
ADD CONSTRAINT FK_Producto_Subcategoria
FOREIGN KEY (id_subcategoria) REFERENCES ALBONDIGA.Sub_Categoria(id_subcategoria);

ALTER TABLE ALBONDIGA.Medio_Pago
ADD CONSTRAINT FK_Medio_Pago_Tipo_Medio_Pago
FOREIGN KEY (id_tipo_medio_pago) REFERENCES ALBONDIGA.Tipo_Medio_Pago(id_tipo_medio_pago);

ALTER TABLE ALBONDIGA.Descuento_Por_Medio_Pago
ADD CONSTRAINT FK_Descuento_Por_Medio_Pago_Medio_Pago
FOREIGN KEY (id_medio_pago) REFERENCES ALBONDIGA.Medio_Pago(id_medio_pago);

ALTER TABLE ALBONDIGA.Domicilio
ADD CONSTRAINT FK_Domicilio_Localidad
FOREIGN KEY (id_localidad) REFERENCES ALBONDIGA.Localidad(id_localidad);

ALTER TABLE ALBONDIGA.Cliente
ADD CONSTRAINT FK_Cliente_Domicilio
FOREIGN KEY (id_domicilio) REFERENCES ALBONDIGA.Domicilio(id_domicilio);
/*
ALTER TABLE ALBONDIGA.Tarjeta
ADD CONSTRAINT FK_Tarjeta_Cliente
FOREIGN KEY (id_cliente) REFERENCES ALBONDIGA.Cliente(id_cliente);*/

ALTER TABLE ALBONDIGA.Sucursal
ADD CONSTRAINT FK_Sucursal_Supermercado
FOREIGN KEY (id_supermercado) REFERENCES ALBONDIGA.Supermercado(id_supermercado);

ALTER TABLE ALBONDIGA.Sucursal
ADD CONSTRAINT FK_Sucursal_Direccion
FOREIGN KEY (id_direccion) REFERENCES ALBONDIGA.Domicilio(id_domicilio);

ALTER TABLE ALBONDIGA.Empleado
ADD CONSTRAINT FK_Empleado_Sucursal
FOREIGN KEY (id_sucursal) REFERENCES ALBONDIGA.Sucursal(nro_de_sucursal);

ALTER TABLE ALBONDIGA.Caja
ADD CONSTRAINT FK_Caja_Sucursal
FOREIGN KEY (id_sucursal) REFERENCES ALBONDIGA.Sucursal(nro_de_sucursal);

ALTER TABLE ALBONDIGA.Caja
ADD CONSTRAINT FK_Caja_Tipo_Caja
FOREIGN KEY (id_tipo_caja) REFERENCES ALBONDIGA.Tipo_Caja(id_tipo_caja);

/*ALTER TABLE ALBONDIGA.Detalle_Pago
ADD CONSTRAINT FK_Detalle_Pago_Cliente
FOREIGN KEY (id_cliente) REFERENCES ALBONDIGA.Cliente(id_cliente);*/

ALTER TABLE ALBONDIGA.Detalle_Pago
ADD CONSTRAINT FK_Detalle_Pago_Tarjeta
FOREIGN KEY (id_tarjeta) REFERENCES ALBONDIGA.Tarjeta(id_tarjeta);

ALTER TABLE ALBONDIGA.Ticket
ADD CONSTRAINT FK_Ticket_Sucursal
FOREIGN KEY (id_sucursal) REFERENCES ALBONDIGA.Sucursal(nro_de_sucursal);

ALTER TABLE ALBONDIGA.Ticket
ADD CONSTRAINT FK_Ticket_Caja
FOREIGN KEY (id_caja) REFERENCES ALBONDIGA.Caja(id_caja);

ALTER TABLE ALBONDIGA.Ticket
ADD CONSTRAINT FK_Ticket_Empleado
FOREIGN KEY (id_empleado) REFERENCES ALBONDIGA.Empleado(legajo);

ALTER TABLE ALBONDIGA.Ticket
ADD CONSTRAINT FK_Ticket_Tipo_Comprobante
FOREIGN KEY (id_tipo_de_comprobante) REFERENCES ALBONDIGA.Tipo_Comprobante(id_tipo_comprobante);

ALTER TABLE ALBONDIGA.Envio
ADD CONSTRAINT FK_Envio_Cliente
FOREIGN KEY (id_cliente) REFERENCES ALBONDIGA.Cliente(id_cliente);

ALTER TABLE ALBONDIGA.Envio
ADD CONSTRAINT FK_Envio_Ticket
FOREIGN KEY (id_ticket) REFERENCES ALBONDIGA.Ticket(nro_de_ticket);

ALTER TABLE ALBONDIGA.Envio
ADD CONSTRAINT FK_Envio_Estado_Envio
FOREIGN KEY (id_estado_envio) REFERENCES ALBONDIGA.Estado_Envio(id_estado_envio);

ALTER TABLE ALBONDIGA.Pago
ADD CONSTRAINT FK_Pago_Ticket
FOREIGN KEY (id_ticket) REFERENCES ALBONDIGA.Ticket(nro_de_ticket);

ALTER TABLE ALBONDIGA.Pago
ADD CONSTRAINT FK_Pago_Medio_Pago
FOREIGN KEY (id_medio_pago) REFERENCES ALBONDIGA.Medio_Pago(id_medio_pago);

ALTER TABLE ALBONDIGA.Pago
ADD CONSTRAINT FK_Pago_Detalle_Pago
FOREIGN KEY (id_detalle_pago) REFERENCES ALBONDIGA.Detalle_Pago(id_detalle_pago);

ALTER TABLE ALBONDIGA.Pago
ADD CONSTRAINT FK_Pago_Descuento_Por_Medio_Pago
FOREIGN KEY (id_descuento_por_medio_pago) REFERENCES ALBONDIGA.Descuento_Por_Medio_Pago(codigo);

ALTER TABLE ALBONDIGA.Promocion_x_Ticket
ADD CONSTRAINT FK_Promocion_x_Ticket_Promocion
FOREIGN KEY (id_promocion) REFERENCES ALBONDIGA.Promocion(id_promocion);

ALTER TABLE ALBONDIGA.Promocion_x_Ticket
ADD CONSTRAINT FK_Promocion_x_Ticket_Ticket
FOREIGN KEY (nro_de_ticket) REFERENCES ALBONDIGA.Ticket(nro_de_ticket);

ALTER TABLE ALBONDIGA.Promocion_x_Producto
ADD CONSTRAINT FK_Promocion_x_Producto_Promocion
FOREIGN KEY (id_promocion) REFERENCES ALBONDIGA.Promocion(id_promocion);

ALTER TABLE ALBONDIGA.Promocion_x_Producto
ADD CONSTRAINT FK_Promocion_x_Producto_Producto
FOREIGN KEY (id_producto) REFERENCES ALBONDIGA.Producto(codigo);

ALTER TABLE ALBONDIGA.Reglas_x_Promocion
ADD CONSTRAINT FK_Reglas_x_Promocion_Promocion
FOREIGN KEY (id_promocion) REFERENCES ALBONDIGA.Promocion(id_promocion);

ALTER TABLE ALBONDIGA.Reglas_x_Promocion
ADD CONSTRAINT FK_Reglas_x_Promocion_Regla
FOREIGN KEY (id_regla) REFERENCES ALBONDIGA.Regla(id_regla);

ALTER TABLE ALBONDIGA.Producto_x_Ticket
ADD CONSTRAINT FK_Producto_x_Ticket_Producto
FOREIGN KEY (id_producto) REFERENCES ALBONDIGA.Producto(codigo);

ALTER TABLE ALBONDIGA.Producto_x_Ticket
ADD CONSTRAINT FK_Producto_x_Ticket_Ticket
FOREIGN KEY (id_ticket) REFERENCES ALBONDIGA.Ticket(nro_de_ticket);

ALTER TABLE ALBONDIGA.Categoria_x_Subcategoria
ADD CONSTRAINT FK_Categoria_x_Subcategoria_Categoria
FOREIGN KEY (id_categoria) REFERENCES ALBONDIGA.Categoria(id_categoria);

ALTER TABLE ALBONDIGA.Categoria_x_Subcategoria
ADD CONSTRAINT FK_Categoria_x_Subcategoria_Subcategoria
FOREIGN KEY (id_subcategoria) REFERENCES ALBONDIGA.Sub_Categoria(id_subcategoria);
GO

--------------------------- Crear Funciones ---------------------------

--------------------------- Crear stores procedures ---------------------------
CREATE PROCEDURE ALBONDIGA.migrar_Estado_Envio
 AS
  BEGIN
	PRINT 'Se comienzan a migrar los estados de envio...'
    INSERT INTO Estado_Envio(descripcion)
		SELECT DISTINCT Maestra.ENVIO_ESTADO AS descripcion FROM gd_esquema.Maestra WHERE ENVIO_ESTADO IS NOT NULL
  END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Provincia
AS
BEGIN
    PRINT 'Se comienzan a migrar las provincias...'
    INSERT INTO Provincia(nombre)
		SELECT DISTINCT CLIENTE_PROVINCIA AS nombre FROM gd_esquema.Maestra WHERE CLIENTE_PROVINCIA IS NOT NULL
		SELECT DISTINCT SUCURSAL_PROVINCIA AS nombre FROM gd_esquema.Maestra WHERE SUCURSAL_PROVINCIA IS NOT NULL
        SELECT DISTINCT SUPER_PROVINCIA AS nombre FROM gd_esquema.Maestra WHERE SUPER_PROVINCIA IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Tipo_Medio_Pago
AS
BEGIN
    PRINT 'Se comienzan a migrar los tipos de medio de pago...'
    INSERT INTO Tipo_Medio_Pago(tipo_pago)
		SELECT DISTINCT PAGO_TIPO_MEDIO_PAGO AS tipo_pago FROM gd_esquema.Maestra WHERE PAGO_TIPO_MEDIO_PAGO IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Tipo_Comprobante
AS
BEGIN
    PRINT 'Se comienzan a migrar los tipos de comprobante...'
    INSERT INTO Tipo_Comprobante(tipo)
		SELECT DISTINCT TICKET_TIPO_COMPROBANTE AS tipo from gd_esquema.Maestra WHERE TICKET_TIPO_COMPROBANTE IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Promocion
AS
BEGIN
    PRINT 'Se comienzan a migrar las promociones...'
    INSERT INTO Promocion(codigo, descuento_aplicado, descripcion, fecha_inicio, fecha_fin)
		SELECT DISTINCT PROMO_CODIGO AS codigo, 
						PROMO_APLICADA_DESCUENTO AS descuento_aplicado,
						PROMOCION_DESCRIPCION AS descripcion,
						PROMOCION_FECHA_INICIO AS fecha_inicio,
						PROMOCION_FECHA_INICIO AS fecha_fin
		from gd_esquema.Maestra WHERE PROMO_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Regla
AS
BEGIN
    PRINT 'Se comienzan a migrar las reglas...'
    INSERT INTO Regla(aplica_misma_marca, aplica_misma_prod, cant_aplicable_descuento, cant_aplicable_regla, cant_maxima_producto, descripcion, descuento_aplicar_porcentaje)
		SELECT DISTINCT REGLA_APLICA_MISMA_MARCA AS aplica_misma_marca,
						REGLA_APLICA_MISMO_PROD AS aplica_misma_prod,
						REGLA_CANT_APLICA_DESCUENTO AS cant_aplicable_descuento,
						REGLA_CANT_APLICABLE_REGLA AS cant_aplicable_regla,
						REGLA_CANT_MAX_PROD AS cant_maxima_producto,
						REGLA_DESCRIPCION AS descripcion,
						REGLA_DESCUENTO_APLICABLE_PROD AS descuento_aplicar_porcentaje
		FROM gd_esquema.Maestra 
		WHERE REGLA_APLICA_MISMA_MARCA IS NOT NULL AND REGLA_APLICA_MISMO_PROD IS NOT NULL AND REGLA_CANT_APLICA_DESCUENTO IS NOT NULL
		AND REGLA_CANT_MAX_PROD IS NOT NULL AND REGLA_DESCRIPCION IS NOT NULL AND REGLA_DESCUENTO_APLICABLE_PROD IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Categoria
AS
BEGIN
    PRINT 'Se comienzan a migrar las categorias...'
    INSERT INTO Categoria(nombre)
		SELECT DISTINCT PRODUCTO_CATEGORIA AS nombre FROM gd_esquema.Maestra WHERE PRODUCTO_CATEGORIA IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Sub_Categoria
AS
BEGIN
    PRINT 'Se comienzan a migrar las subcategorias...'
    INSERT INTO Sub_Categoria(nombre)
		SELECT DISTINCT PRODUCTO_SUB_CATEGORIA AS nombre FROM gd_esquema.Maestra WHERE PRODUCTO_SUB_CATEGORIA IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Tipo_Caja
AS
BEGIN
    PRINT 'Se comienzan a migrar los tipos de caja...'
    INSERT INTO Tipo_Caja(tipo_caja)
		SELECT DISTINCT CAJA_TIPO AS tipo FROM gd_esquema.Maestra WHERE CAJA_TIPO IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Localidad
AS
BEGIN
    PRINT 'Se comienzan a migrar las localidades...'
    INSERT INTO Localidad(nombre, id_provincia)
		SELECT DISTINCT CLIENTE_LOCALIDAD AS nombre, P1.id_provincia FROM gd_esquema.Maestra
		INNER JOIN Provincia P1 ON P1.nombre = CLIENTE_PROVINCIA 
		WHERE CLIENTE_LOCALIDAD IS NOT NULL
		UNION
		SELECT DISTINCT SUCURSAL_LOCALIDAD AS nombre, P2.id_provincia FROM gd_esquema.Maestra
		INNER JOIN Provincia P2 ON P2.nombre = SUCURSAL_PROVINCIA
		WHERE SUCURSAL_LOCALIDAD IS NOT NULL
		UNION
		SELECT DISTINCT SUPER_LOCALIDAD AS nombre, P3.id_provincia FROM gd_esquema.Maestra
		INNER JOIN Provincia P3 ON P3.nombre = SUPER_PROVINCIA
		WHERE SUPER_LOCALIDAD IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Producto
AS
BEGIN
    PRINT 'Se comienzan a migrar los productos...'
    INSERT INTO Producto(nombre, precio_unitario, marca, descripcion, id_subcategoria)
		SELECT DISTINCT PRODUCTO_NOMBRE AS nombre, -- REVISAR ESTO DESPUES, EN LA MAESTRA NO HAY NINGUN CODIGO, SOLO EST� EL NOMBRE
						PRODUCTO_PRECIO AS precio_unitario,
						PRODUCTO_MARCA AS marca,
						PRODUCTO_DESCRIPCION AS descripcion,
						SC.id_subcategoria AS id_subcategoria
		FROM gd_esquema.Maestra
		INNER JOIN Sub_Categoria SC ON SC.nombre = PRODUCTO_SUB_CATEGORIA
		WHERE PRODUCTO_NOMBRE IS NOT NULL AND PRODUCTO_MARCA IS NOT NULL AND PRODUCTO_PRECIO IS NOT NULL AND PRODUCTO_DESCRIPCION IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Medio_Pago
AS
BEGIN
    PRINT 'Se comienzan a migrar los medios de pago...'
    INSERT INTO Medio_Pago(medio_pago, id_tipo_medio_pago)
		SELECT DISTINCT PAGO_MEDIO_PAGO AS medio_pago, T.id_tipo_medio_pago
		FROM gd_esquema.Maestra
		INNER JOIN Tipo_Medio_Pago T ON T.tipo_pago = PAGO_TIPO_MEDIO_PAGO
		WHERE PAGO_MEDIO_PAGO IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Descuento_Por_Medio_Pago
AS
BEGIN
    PRINT 'Se comienzan a migrar los descuentos por medio de pago...'
    INSERT INTO Descuento_Por_Medio_Pago(codigo, id_medio_pago, descripcion, fecha_inicio, fecha_fin, tope, descuento_porcentaje)
		SELECT DISTINCT DESCUENTO_CODIGO AS codigo,
				T.id_tipo_medio_pago AS id_medio_pago,
				DESCUENTO_DESCRIPCION AS descripcion,
				DESCUENTO_FECHA_INICIO AS fecha_inicio,
				DESCUENTO_FECHA_FIN AS fecha_fin,
				DESCUENTO_TOPE AS tope,
				DESCUENTO_PORCENTAJE_DESC AS descuento_porcentaje
		FROM gd_esquema.Maestra
		INNER JOIN Tipo_Medio_Pago T ON T.tipo_pago = PAGO_TIPO_MEDIO_PAGO
		WHERE DESCUENTO_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Domicilio
AS
BEGIN
    PRINT 'Se comienzan a migrar los domicilios...'
    INSERT INTO Domicilio(calle_y_numero, id_localidad)
		SELECT DISTINCT CLIENTE_DOMICILIO, L1.id_localidad
		FROM gd_esquema.Maestra
		INNER JOIN Localidad L1 ON L1.nombre = CLIENTE_LOCALIDAD
		INNER JOIN Provincia P1 ON P1.nombre = CLIENTE_PROVINCIA AND L1.id_provincia = P1.id_provincia
		WHERE CLIENTE_DOMICILIO IS NOT NULL
		UNION
		SELECT DISTINCT SUPER_DOMICILIO, L2.id_localidad 
		FROM gd_esquema.Maestra
		INNER JOIN Localidad L2 ON L2.nombre = SUPER_LOCALIDAD
		INNER JOIN Provincia P2 ON P2.nombre = SUPER_PROVINCIA AND L2.id_provincia = P2.id_provincia
		WHERE SUPER_DOMICILIO IS NOT NULL
		UNION
		SELECT DISTINCT SUCURSAL_DIRECCION, L3.id_localidad
		FROM gd_esquema.Maestra
		INNER JOIN Localidad L3 ON L3.nombre = SUCURSAL_LOCALIDAD
		WHERE SUCURSAL_DIRECCION IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Cliente
AS
BEGIN
    PRINT 'Se comienzan a migrar los clientes...'
    INSERT INTO Cliente(nombre, apellido, dni, fecha_registro, telefono, mail, fecha_nacimiento, id_domicilio)
		SELECT DISTINCT CLIENTE_NOMBRE AS nombre,
						CLIENTE_APELLIDO AS apellido,
						CLIENTE_DNI AS dni,
						CLIENTE_FECHA_REGISTRO AS fecha_registro,
						CLIENTE_TELEFONO AS telefono,
						CLIENTE_MAIL AS mail,
						CLIENTE_FECHA_NACIMIENTO AS fecha_nacimiento,
						D.id_domicilio AS id_domicilio 
		FROM gd_esquema.Maestra
		INNER JOIN Domicilio D ON D.calle_y_numero = CLIENTE_DOMICILIO
		INNER JOIN Localidad L ON L.nombre = CLIENTE_LOCALIDAD AND L.id_localidad = D.id_localidad
		INNER JOIN Provincia P ON P.nombre = CLIENTE_PROVINCIA AND P.id_provincia = L.id_provincia
		WHERE CLIENTE_NOMBRE IS NOT NULL AND CLIENTE_DNI IS NOT NULL AND CLIENTE_DOMICILIO IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Supermercado
AS
BEGIN
    PRINT 'Se comienzan a migrar los supermercados...'
    INSERT INTO Supermercado(nombre, razon_social, cuit, ingresos_brutos, id_domicilio, fecha_inicio_actividad, condicion_fiscal)
		SELECT DISTINCT SUPER_NOMBRE AS nombre,
						SUPER_RAZON_SOC AS razon_social,
						SUPER_CUIT AS cuit,
						SUPER_IIBB AS ingresos_brutos,
						D.id_domicilio AS id_domicilio,
						SUPER_FECHA_INI_ACTIVIDAD AS fecha_inicio_actividad,
						SUPER_CONDICION_FISCAL AS condicion_fiscal 
		FROM gd_esquema.Maestra
		INNER JOIN Domicilio D ON D.calle_y_numero = SUPER_DOMICILIO
		INNER JOIN Localidad L ON L.nombre = SUPER_LOCALIDAD AND L.id_localidad = D.id_localidad
		INNER JOIN Provincia P ON P.nombre = SUPER_PROVINCIA AND P.id_provincia = L.id_provincia
		WHERE SUPER_NOMBRE IS NOT NULL AND SUPER_RAZON_SOC IS NOT NULL AND SUPER_CUIT IS NOT NULL AND SUPER_IIBB IS NOT NULL AND SUPER_FECHA_INI_ACTIVIDAD IS NOT NULL
		AND SUPER_DOMICILIO IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Tarjeta
AS
BEGIN
    PRINT 'Se comienzan a migrar las tarjetas...'
	INSERT INTO Tarjeta(nro_tarjeta, fecha_vencimiento)
		SELECT DISTINCT PAGO_TARJETA_NRO AS nro_tarjeta,
						PAGO_TARJETA_FECHA_VENC AS fecha_vencimiento 
	FROM gd_esquema.Maestra
	WHERE PAGO_TARJETA_NRO IS NOT NULL AND PAGO_TARJETA_FECHA_VENC IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Sucursal
AS
BEGIN
    PRINT 'Se comienzan a migrar las sucursales...'
	INSERT INTO Sucursal(nombre, id_supermercado, id_direccion)
		SELECT DISTINCT SUCURSAL_NOMBRE AS nombre,
						S.id_supermercado AS id_supermercado,
						D.id_domicilio AS id_direccion
		FROM gd_esquema.Maestra
		INNER JOIN Supermercado S ON S.nombre = SUPER_NOMBRE AND S.cuit = SUPER_CUIT
		INNER JOIN Domicilio D ON D.calle_y_numero = SUCURSAL_DIRECCION
		WHERE SUCURSAL_NOMBRE IS NOT NULL AND SUCURSAL_DIRECCION IS NOT NULL AND SUCURSAL_LOCALIDAD IS NOT NULL AND SUCURSAL_PROVINCIA IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Empleado
AS
BEGIN
    PRINT 'Se comienzan a migrar los empleados...'
		INSERT INTO Empleado(id_sucursal,nombre,apellido,dni,fecha_registro,telefono,mail,fecha_de_nacimiento)
			SELECT DISTINCT
			s.nro_de_sucursal as id_sucursal,
			m.EMPLEADO_NOMBRE as nombre,
			m.EMPLEADO_APELLIDO as apellido,
			m.EMPLEADO_DNI as dni,
			m.EMPLEADO_FECHA_REGISTRO as fecha_registro,
			m.EMPLEADO_TELEFONO as telefono,
			m.EMPLEADO_MAIL as mail,
			m.EMPLEADO_FECHA_NACIMIENTO as fecha_de_nacimiento
			FROM gd_esquema.Maestra m
			INNER JOIN Sucursal s on s.nombre = m.SUCURSAL_NOMBRE
			WHERE 
			EMPLEADO_NOMBRE is not null and 
			EMPLEADO_APELLIDO is not null and 
			EMPLEADO_DNI is not null and 
			EMPLEADO_FECHA_REGISTRO is not null and
			EMPLEADO_TELEFONO is not null and
			EMPLEADO_MAIL is not null and
			EMPLEADO_FECHA_NACIMIENTO is not null
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Caja
AS
BEGIN
    PRINT 'Se comienzan a migrar las cajas...'
	INSERT INTO Caja(numero, id_sucursal, id_tipo_caja)
		SELECT DISTINCT CAJA_NUMERO AS numero,
						S.nro_de_sucursal AS id_sucursal,
						T.id_tipo_caja AS id_tipo_caja
		FROM gd_esquema.Maestra
		INNER JOIN Sucursal S ON S.nombre = SUCURSAL_NOMBRE
		INNER JOIN Tipo_Caja T ON T.tipo_caja = CAJA_TIPO
		WHERE CAJA_NUMERO IS NOT NULL
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Detalle_Pago
AS
BEGIN
    PRINT 'Se comienzan a migrar los detalles de pago...'
		INSERT INTO Detalle_Pago(id_tarjeta,cuotas)
			SELECT DISTINCT
			t.id_tarjeta as id_tarjeta,
			m.PAGO_TARJETA_CUOTAS
			FROM gd_esquema.Maestra m
			INNER JOIN Tarjeta t on t.nro_tarjeta = m.PAGO_TARJETA_NRO
			WHERE m.PAGO_TARJETA_CUOTAS is not null

END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Ticket
AS
BEGIN
    PRINT 'Se comienzan a migrar los tickets...'
    /* comportamiento del procedure */
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Envio
AS
BEGIN
    PRINT 'Se comienzan a migrar los envios...'
    /* comportamiento del procedure */
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Pago
AS
BEGIN
    PRINT 'Se comienzan a migrar los pagos...'
    /* comportamiento del procedure */
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Promocion_x_Ticket
AS
BEGIN
    PRINT 'Se comienzan a migrar las promociones por ticket...'
    /* comportamiento del procedure */
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Promocion_x_Producto
AS
BEGIN
    PRINT 'Se comienzan a migrar las promociones por producto...'
    /* comportamiento del procedure */
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Reglas_x_Promocion
AS
BEGIN
    PRINT 'Se comienzan a migrar las reglas por promocion...'
    /* comportamiento del procedure */
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Producto_x_Ticket
AS
BEGIN
    PRINT 'Se comienzan a migrar los productos por ticket...'
    /* comportamiento del procedure */
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_Categoria_x_Subcategoria
AS
BEGIN
    PRINT 'Se comienzan a migrar las categorias por subcategoria...'
    /* comportamiento del procedure */
END
GO

--------------------------- Ejecutar stores procedures ---------------------------
/*LOS QUE YA FUNCIONAN*/

EXEC ALBONDIGA.migrar_Estado_Envio;
EXEC ALBONDIGA.migrar_Provincia;
EXEC ALBONDIGA.migrar_Tipo_Medio_Pago;
EXEC ALBONDIGA.migrar_Tipo_Comprobante;
EXEC ALBONDIGA.migrar_Promocion;
EXEC ALBONDIGA.migrar_Regla;
EXEC ALBONDIGA.migrar_Categoria;
EXEC ALBONDIGA.migrar_Sub_Categoria;
EXEC ALBONDIGA.migrar_Tipo_Caja;
EXEC ALBONDIGA.migrar_Localidad;
EXEC ALBONDIGA.migrar_Producto;
EXEC ALBONDIGA.migrar_Medio_Pago;
EXEC ALBONDIGA.migrar_Descuento_Por_Medio_Pago;
EXEC ALBONDIGA.migrar_Domicilio;
EXEC ALBONDIGA.migrar_Cliente;
EXEC ALBONDIGA.migrar_Supermercado;
EXEC ALBONDIGA.migrar_Tarjeta;
EXEC ALBONDIGA.migrar_Sucursal;
EXEC ALBONDIGA.migrar_Empleado;
EXEC ALBONDIGA.migrar_Caja;
EXEC ALBONDIGA.migrar_Detalle_Pago;

/*
EXEC ALBONDIGA.migrar_Ticket;
EXEC ALBONDIGA.migrar_Envio;
EXEC ALBONDIGA.migrar_Pago;
EXEC ALBONDIGA.migrar_Promocion_x_Ticket;
EXEC ALBONDIGA.migrar_Promocion_x_Producto;
EXEC ALBONDIGA.migrar_Reglas_x_Promocion;
EXEC ALBONDIGA.migrar_Producto_x_Ticket;
EXEC ALBONDIGA.migrar_Categoria_x_Subcategoria;
*/
