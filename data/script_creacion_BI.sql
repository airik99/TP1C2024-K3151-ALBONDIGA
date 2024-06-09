USE GD1C2024
GO

/* --------------------------------------------- Limpiar funciones --------------------------------------------- */

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'obtenerHora')
DROP FUNCTION ALBONDIGA.obtenerHora;

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'rangoHorario')
DROP FUNCTION ALBONDIGA.rangoHorario;

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'edadActual')
DROP FUNCTION ALBONDIGA.edadActual;

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'rangoEtario')
DROP FUNCTION ALBONDIGA.rangoEtario;

/* --------------------------------------------- Limpiar tablas --------------------------------------------- */
IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Pago')
DROP TABLE ALBONDIGA.BI_Pago;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Producto')
DROP TABLE ALBONDIGA.BI_Producto;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Ticket')
DROP TABLE ALBONDIGA.BI_Ticket;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Envio')
DROP TABLE ALBONDIGA.BI_Envio;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Subcategoria')
DROP TABLE ALBONDIGA.BI_Subcategoria;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Categoria')
DROP TABLE ALBONDIGA.BI_Categoria;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Medio_Pago')
DROP TABLE ALBONDIGA.BI_Medio_Pago;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Turnos')
DROP TABLE ALBONDIGA.BI_Turnos;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Rango_Etario')
DROP TABLE ALBONDIGA.BI_Rango_Etario;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Sucursal')
DROP TABLE ALBONDIGA.BI_Sucursal;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Localidad')
DROP TABLE ALBONDIGA.BI_Localidad;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Provincia')
DROP TABLE ALBONDIGA.BI_Provincia;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Tiempo')
DROP TABLE ALBONDIGA.BI_Tiempo;

/* --------------------------------------------- Limpiar vistas --------------------------------------------- */
IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_TicketPromedioMensual')
    DROP VIEW ALBONDIGA.V_TicketPromedioMensual;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_CantidadUnidadesPromedio')
    DROP VIEW ALBONDIGA.V_CantidadUnidadesPromedio;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_VentasRangoEtarioAnual')
    DROP VIEW ALBONDIGA.V_VentasRangoEtarioAnual;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_VentasTurnoLocalidad')
    DROP VIEW ALBONDIGA.V_VentasTurnoLocalidad;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_PorcentajeDescuentoMensual')
    DROP VIEW ALBONDIGA.V_PorcentajeDescuentoMensual;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_Top3CategoriasDescuento')
    DROP VIEW ALBONDIGA.V_Top3CategoriasDescuento;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_CumplimientoEnvios')
    DROP VIEW ALBONDIGA.V_CumplimientoEnvios;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_EnviosRangoEtarioClientes')
    DROP VIEW ALBONDIGA.V_EnviosRangoEtarioClientes;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_Top5LocalidadesCostoEnvio')
    DROP VIEW ALBONDIGA.V_Top5LocalidadesCostoEnvio;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_Top3SucursalesPagosCuotas')
    DROP VIEW ALBONDIGA.V_Top3SucursalesPagosCuotas;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_PromedioCuotaRangoEtario')
    DROP VIEW ALBONDIGA.V_PromedioCuotaRangoEtario;

IF EXISTS (SELECT [name] FROM sys.views WHERE [name] = 'V_PorcentajeDescuentoMedioPago')
    DROP VIEW ALBONDIGA.V_PorcentajeDescuentoMedioPago;

/* --------------------------------------------- Limpiar procedures --------------------------------------------- */

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Sucursal')
	DROP PROCEDURE ALBONDIGA.migrar_BI_Sucursal
GO

/* --------------------------------------------- Creacion de funciones --------------------------------------------- */
CREATE FUNCTION ALBONDIGA.edadActual(@fecha_nacimiento datetime2(3)) RETURNS int AS 
BEGIN DECLARE @edad int;
      DECLARE @fecha_actual datetime2(3) = GETDATE();
      SET @edad = DATEDIFF(YEAR, @fecha_nacimiento, @fecha_actual);
      IF (MONTH(@fecha_nacimiento) > MONTH(@fecha_actual) OR (MONTH(@fecha_nacimiento) = MONTH(@fecha_actual) AND DAY(@fecha_nacimiento) > DAY(@fecha_actual)))
        SET @edad = @edad - 1;
    RETURN @edad;
END;
GO

CREATE FUNCTION ALBONDIGA.rangoEtario(@edad INT) RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @rango VARCHAR(20);
    IF (@edad < 25) BEGIN SET @rango = '< 25'; END
    ELSE IF (@edad >= 25 AND @edad < 35) BEGIN SET @rango = '25 - 35'; END
    ELSE IF (@edad >= 35 AND @edad < 50) BEGIN SET @rango = '35 - 50'; END
    ELSE IF (@edad >= 50) BEGIN SET @rango = '> 50'; END
    RETURN @rango;
END
GO

CREATE FUNCTION ALBONDIGA.obtenerHora(@fechaHora DATETIME) RETURNS INT
AS
BEGIN
    DECLARE @hora INT;
    SET @hora = DATEPART(HOUR, @fechaHora);
    RETURN @hora;
END
GO

CREATE FUNCTION ALBONDIGA.rangoHorario(@hora INT) RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @rango VARCHAR(20);
    IF (@hora >= 8 AND @hora < 12) BEGIN SET @rango = '08:00 - 12:00'; END
    ELSE IF (@hora >= 12 AND @hora < 16) BEGIN SET @rango = '12:00 - 16:00'; END
    ELSE IF (@hora >= 16 AND @hora < 20) BEGIN SET @rango = '16:00 - 20:00'; END
    RETURN @rango;
END
GO

/* --------------------------------------------- Creacion de tablas --------------------------------------------- */
-- Crear dimensiones
CREATE TABLE ALBONDIGA.BI_Tiempo (
    id_tiempo INT IDENTITY(1,1) PRIMARY KEY,
    año INT,
    cuatrimestre INT,
    mes INT
);

CREATE TABLE ALBONDIGA.BI_Provincia (
    id_provincia INT IDENTITY(1,1) PRIMARY KEY,
    provincia NVARCHAR(100),
);

CREATE TABLE ALBONDIGA.BI_Localidad (
    id_localidad INT IDENTITY(1,1) PRIMARY KEY,
    id_provincia INT,
    localidad NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_Sucursal (
    id_sucursal INT PRIMARY KEY,
    nombre NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_Rango_Etario (
    id_rango_etario INT IDENTITY(1,1) PRIMARY KEY,
    descripcion_rango NVARCHAR(50)
);

CREATE TABLE ALBONDIGA.BI_Turnos (
    id_turno INT IDENTITY(1,1) PRIMARY KEY,
    descripcion_turno NVARCHAR(50)
);

CREATE TABLE ALBONDIGA.BI_Medio_Pago (
    id_medio_pago INT PRIMARY KEY,
    descripcion_medio_pago NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_Categoria (
    id_categoria INT PRIMARY KEY,
    descripcion_categoria NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_SubCategoria (
    id_subcategoria INT PRIMARY KEY,
    descripcion_subcategoria NVARCHAR(100)
);

-- Crear tablas de hechos
CREATE TABLE ALBONDIGA.BI_Ticket (
    id_ticket INT PRIMARY KEY,
    id_tiempo INT,
    id_localidad INT,
    id_sucursal INT,
    id_rango_etario_empleado INT,
    id_turno INT,
    total_venta DECIMAL(18, 2)
);

CREATE TABLE ALBONDIGA.BI_Producto (
    id_producto INT PRIMARY KEY,
    id_ticket INT,
    id_categoria INT,
    id_subcategoria INT,
    cantidad INT,
    precio_unitario DECIMAL(18, 2),
    descuento DECIMAL(18, 2)
);

CREATE TABLE ALBONDIGA.BI_Envio (
    id_envio INT PRIMARY KEY,
    id_cliente INT,
    id_sucursal INT,
    id_tiempo INT,
    costo_envio DECIMAL(18, 2),
    fecha_hora_entrega DATETIME
);

CREATE TABLE ALBONDIGA.BI_Pago (
    id_pago INT PRIMARY KEY,
    id_ticket INT,
    id_medio_pago INT,
    id_tiempo INT,
    importe DECIMAL(18, 2),
    cuotas INT
);

/* --------------------------------------------- Alter Tables --------------------------------------------- */

-- Foreign keys para BI_Localidad
ALTER TABLE ALBONDIGA.BI_Localidad
ADD CONSTRAINT FK_BI_Localidad_Provincia
FOREIGN KEY (id_provincia) REFERENCES ALBONDIGA.BI_Provincia(id_provincia)

-- Foreign keys para BI_Ticket
ALTER TABLE ALBONDIGA.BI_Ticket
ADD CONSTRAINT FK_BI_Ticket_Tiempo
FOREIGN KEY (id_tiempo) REFERENCES ALBONDIGA.BI_Tiempo(id_tiempo);

ALTER TABLE ALBONDIGA.BI_Ticket
ADD CONSTRAINT FK_BI_Ticket_Localidad
FOREIGN KEY (id_localidad) REFERENCES ALBONDIGA.BI_Localidad(id_localidad);

ALTER TABLE ALBONDIGA.BI_Ticket
ADD CONSTRAINT FK_BI_Ticket_Sucursal
FOREIGN KEY (id_sucursal) REFERENCES ALBONDIGA.BI_Sucursal(id_sucursal);

ALTER TABLE ALBONDIGA.BI_Ticket
ADD CONSTRAINT FK_BI_Ticket_RangoEtarioEmpleado
FOREIGN KEY (id_rango_etario_empleado) REFERENCES ALBONDIGA.BI_Rango_Etario(id_rango_etario);

ALTER TABLE ALBONDIGA.BI_Ticket
ADD CONSTRAINT FK_BI_Ticket_Turno
FOREIGN KEY (id_turno) REFERENCES ALBONDIGA.BI_Turnos(id_turno);

-- Foreign keys para BI_Producto
ALTER TABLE ALBONDIGA.BI_Producto
ADD CONSTRAINT FK_BI_Producto_Ticket
FOREIGN KEY (id_ticket) REFERENCES ALBONDIGA.BI_Ticket(id_ticket);

ALTER TABLE ALBONDIGA.BI_Producto
ADD CONSTRAINT FK_BI_Producto_Categoria
FOREIGN KEY (id_categoria) REFERENCES ALBONDIGA.BI_Categoria(id_categoria);

ALTER TABLE ALBONDIGA.BI_Producto
ADD CONSTRAINT FK_BI_Producto_Subcategoria
FOREIGN KEY (id_subcategoria) REFERENCES ALBONDIGA.BI_SubCategoria(id_subcategoria);

-- Foreign keys para BI_Envio
ALTER TABLE ALBONDIGA.BI_Envio
ADD CONSTRAINT FK_BI_Envio_Cliente
FOREIGN KEY (id_cliente) REFERENCES ALBONDIGA.Cliente(id_cliente);

ALTER TABLE ALBONDIGA.BI_Envio
ADD CONSTRAINT FK_BI_Envio_Sucursal
FOREIGN KEY (id_sucursal) REFERENCES ALBONDIGA.BI_Sucursal(id_sucursal);

ALTER TABLE ALBONDIGA.BI_Envio
ADD CONSTRAINT FK_BI_Envio_Tiempo
FOREIGN KEY (id_tiempo) REFERENCES ALBONDIGA.BI_Tiempo(id_tiempo);

-- Foreign keys para BI_Pago
ALTER TABLE ALBONDIGA.BI_Pago
ADD CONSTRAINT FK_BI_Pago_Ticket
FOREIGN KEY (id_ticket) REFERENCES ALBONDIGA.BI_Ticket(id_ticket);

ALTER TABLE ALBONDIGA.BI_Pago
ADD CONSTRAINT FK_BI_Pago_MedioPago
FOREIGN KEY (id_medio_pago) REFERENCES ALBONDIGA.BI_Medio_Pago(id_medio_pago);

ALTER TABLE ALBONDIGA.BI_Pago
ADD CONSTRAINT FK_BI_Pago_Tiempo
FOREIGN KEY (id_tiempo) REFERENCES ALBONDIGA.BI_Tiempo(id_tiempo);
GO

/* -------- Creacion de procedures para cargar todas las tablas utilizando los datos ya migrados al modelo de datos transaccional -------- */
CREATE PROCEDURE ALBONDIGA.migrar_BI_Sucursal
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Sucursal...'
    INSERT INTO BI_Sucursal (id_sucursal, nombre)
    SELECT DISTINCT nro_de_sucursal, nombre
    FROM ALBONDIGA.Sucursal;
END
GO

/* --------------------------------------------- Creacion de vistas --------------------------------------------- */
CREATE VIEW ALBONDIGA.V_TicketPromedioMensual AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_CantidadUnidadesPromedio AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_VentasRangoEtarioAnual AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_VentasTurnoLocalidad AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_PorcentajeDescuentoMensual AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_Top3CategoriasDescuento AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_CumplimientoEnvios AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_EnviosRangoEtarioClientes AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_Top5LocalidadesCostoEnvio AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_Top3SucursalesPagosCuotas AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_PromedioCuotaRangoEtario AS
SELECT 1/* hacer */;
GO

CREATE VIEW ALBONDIGA.V_PorcentajeDescuentoMedioPago AS
SELECT 1/* hacer */;
GO


/* --------------------------------------------- Ejecución de la migración --------------------------------------------- */
EXEC ALBONDIGA.migrar_BI_Sucursal

/* --------------------------------------------- Ejecución de las vistas --------------------------------------------- */
