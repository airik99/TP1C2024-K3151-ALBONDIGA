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

IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'obtenerCuatrimestre')
DROP FUNCTION ALBONDIGA.obtenerCuatrimestre;

/* --------------------------------------------- Limpiar tablas --------------------------------------------- */
IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Categoria_x_Subcategoria')
DROP TABLE ALBONDIGA.BI_Dimension_Categoria_x_Subcategoria;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Hechos_Pago')
DROP TABLE ALBONDIGA.BI_Hechos_Pago;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Hechos_Ticket')
DROP TABLE ALBONDIGA.BI_Hechos_Ticket;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Hechos_Envio')
DROP TABLE ALBONDIGA.BI_Hechos_Envio;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Hechos_Promociones')
DROP TABLE ALBONDIGA.BI_Hechos_Promociones;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Subcategoria')
DROP TABLE ALBONDIGA.BI_Dimension_Subcategoria;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Categoria')
DROP TABLE ALBONDIGA.BI_Dimension_Categoria;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Medio_Pago')
DROP TABLE ALBONDIGA.BI_Dimension_Medio_Pago;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Turnos')
DROP TABLE ALBONDIGA.BI_Dimension_Turnos;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Rango_Etario')
DROP TABLE ALBONDIGA.BI_Dimension_Rango_Etario;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Sucursal')
DROP TABLE ALBONDIGA.BI_Dimension_Sucursal;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Localidad')
DROP TABLE ALBONDIGA.BI_Dimension_Localidad;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Provincia')
DROP TABLE ALBONDIGA.BI_Dimension_Provincia;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Tiempo')
DROP TABLE ALBONDIGA.BI_Dimension_Tiempo;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dimension_Tipo_Caja')
DROP TABLE ALBONDIGA.BI_Dimension_Tipo_Caja;

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

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Sucursal')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Sucursal
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Tipo_Caja')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Tipo_Caja
GO


IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Provincia')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Provincia
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Localidad')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Localidad
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Rango_Etario')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Rango_Etario
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Turnos')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Turnos
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Medio_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Medio_Pago
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Categoria')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Categoria
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Subcategoria')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Subcategoria
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Tiempo')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Tiempo
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Hechos_Ticket')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Hechos_Ticket
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Hechos_Envio')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Hechos_Envio
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Hechos_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Hechos_Pago
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Hechos_Promociones')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Hechos_Promociones
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Dimension_Categoria_x_Subcategoria')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Dimension_Categoria_x_Subcategoria
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
	ELSE BEGIN SET @rango = 'Desconocido'; END
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
	ELSE BEGIN SET @rango = 'Fuera de rango'; END
    RETURN @rango;
END
GO

CREATE FUNCTION ALBONDIGA.obtenerCuatrimestre (@fecha DATETIME)
RETURNS INT
AS
BEGIN
    DECLARE @cuatrimestre VARCHAR(2)

    IF MONTH(@fecha) BETWEEN 1 AND 4
        SET @cuatrimestre = 1
    ELSE IF MONTH(@fecha) BETWEEN 5 AND 8
        SET @cuatrimestre = 2
    ELSE 
        SET @cuatrimestre = 3

    RETURN @cuatrimestre
END
GO

/* --------------------------------------------- Creacion de tablas --------------------------------------------- */
-- Crear dimensiones
CREATE TABLE ALBONDIGA.BI_Dimension_Tiempo (
    id_tiempo INT IDENTITY(1,1) PRIMARY KEY,
    año INT,
    cuatrimestre INT,
    mes INT
);

CREATE TABLE ALBONDIGA.BI_Dimension_Provincia (
    id_provincia INT PRIMARY KEY,
    provincia NVARCHAR(100),
);

CREATE TABLE ALBONDIGA.BI_Dimension_Localidad (
    id_localidad INT PRIMARY KEY,
    id_provincia INT,
    localidad NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_Dimension_Sucursal (
    id_sucursal INT PRIMARY KEY,
    nombre NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_Dimension_Tipo_Caja (
    id_tipo_caja INT PRIMARY KEY,
    tipo_caja NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_Dimension_Rango_Etario (
    id_rango_etario INT IDENTITY(1,1) PRIMARY KEY,
    descripcion_rango NVARCHAR(50)
);

CREATE TABLE ALBONDIGA.BI_Dimension_Turnos (
    id_turno INT IDENTITY(1,1) PRIMARY KEY,
    descripcion_turno NVARCHAR(50)
);

CREATE TABLE ALBONDIGA.BI_Dimension_Medio_Pago (
    id_medio_pago INT PRIMARY KEY,
    descripcion_medio_pago NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_Dimension_Categoria (
    id_categoria INT PRIMARY KEY,
    descripcion_categoria NVARCHAR(100)
);

CREATE TABLE ALBONDIGA.BI_Hechos_Ticket (
    id_tiempo INT,
    id_localidad INT,
    id_rango_etario_empleado INT,
    id_turno INT,
	id_tipo_caja INT,
	total_promociones DECIMAL(18, 2),
	cantidad_productos DECIMAL(18, 0),
	cantidad_ventas DECIMAL(18, 0),
	total_descuento_medio_pago DECIMAL(18, 2),
    total_venta DECIMAL(18, 2)
);


CREATE TABLE ALBONDIGA.BI_Hechos_Envio (
    id_rango_etario_cliente INT,
    id_sucursal INT,
    id_tiempo INT,
    costo_envio DECIMAL(18, 2),
    cantidad_envios DECIMAL(18, 0),
	cantidad_envios_en_horarios DECIMAL(18, 0),
	id_localidad_cliente INT
);

CREATE TABLE ALBONDIGA.BI_Hechos_Pago (
    id_medio_pago INT,
	id_tiempo INT,
	id_rango_etario_cliente INT,
	id_sucursal INT,
    total_importe_cuotas DECIMAL(18, 2),
	cuotas DECIMAL(18, 0),
	total_descuento_medio_pago DECIMAL(18, 2)
);

CREATE TABLE ALBONDIGA.BI_Hechos_Promociones (
    id_categoria INT,
	id_tiempo INT,
	total_descuento_promo DECIMAL(18, 2)
);

/* --------------------------------------------- Alter Tables --------------------------------------------- */

-- Foreign keys para BI_Dimension_Localidad
ALTER TABLE ALBONDIGA.BI_Dimension_Localidad
ADD CONSTRAINT FK_BI_Dimension_Localidad_Provincia
FOREIGN KEY (id_provincia) REFERENCES ALBONDIGA.BI_Dimension_Provincia(id_provincia)

-- Foreign keys para BI_Hechos_Ticket
ALTER TABLE ALBONDIGA.BI_Hechos_Ticket
ADD CONSTRAINT FK_BI_Hechos_Ticket_Tipo_Caja
FOREIGN KEY (id_tipo_caja) REFERENCES ALBONDIGA.BI_Dimension_Tipo_Caja(id_tipo_caja);

ALTER TABLE ALBONDIGA.BI_Hechos_Ticket
ADD CONSTRAINT FK_BI_Hechos_Ticket_Tiempo
FOREIGN KEY (id_tiempo) REFERENCES ALBONDIGA.BI_Dimension_Tiempo(id_tiempo);

ALTER TABLE ALBONDIGA.BI_Hechos_Ticket
ADD CONSTRAINT FK_BI_Hechos_Ticket_Localidad
FOREIGN KEY (id_localidad) REFERENCES ALBONDIGA.BI_Dimension_Localidad(id_localidad);

ALTER TABLE ALBONDIGA.BI_Hechos_Ticket
ADD CONSTRAINT FK_BI_Hechos_Ticket_RangoEtarioEmpleado
FOREIGN KEY (id_rango_etario_empleado) REFERENCES ALBONDIGA.BI_Dimension_Rango_Etario(id_rango_etario);

ALTER TABLE ALBONDIGA.BI_Hechos_Ticket
ADD CONSTRAINT FK_BI_Hechos_Ticket_Turno
FOREIGN KEY (id_turno) REFERENCES ALBONDIGA.BI_Dimension_Turnos(id_turno);

-- Foreign keys para BI_Hechos_Envio
ALTER TABLE ALBONDIGA.BI_Hechos_Envio
ADD CONSTRAINT FK_BI_Hechos_Envio_Cliente
FOREIGN KEY (id_rango_etario_cliente) REFERENCES ALBONDIGA.BI_Dimension_Rango_Etario(id_rango_etario);

ALTER TABLE ALBONDIGA.BI_Hechos_Envio
ADD CONSTRAINT FK_BI_Hechos_Envio_Sucursal
FOREIGN KEY (id_sucursal) REFERENCES ALBONDIGA.BI_Dimension_Sucursal(id_sucursal);

ALTER TABLE ALBONDIGA.BI_Hechos_Envio
ADD CONSTRAINT FK_BI_Hechos_Envio_Tiempo
FOREIGN KEY (id_tiempo) REFERENCES ALBONDIGA.BI_Dimension_Tiempo(id_tiempo);

ALTER TABLE ALBONDIGA.BI_Hechos_Envio
ADD CONSTRAINT FK_BI_Hechos_Envio_Localidad
FOREIGN KEY (id_localidad_cliente) REFERENCES ALBONDIGA.BI_Dimension_Localidad(id_localidad);

-- Foreign keys para BI_Hechos_Pago
ALTER TABLE ALBONDIGA.BI_Hechos_Pago
ADD CONSTRAINT FK_BI_Hechos_Pago_MedioPago
FOREIGN KEY (id_medio_pago) REFERENCES ALBONDIGA.BI_Dimension_Medio_Pago(id_medio_pago);

ALTER TABLE ALBONDIGA.BI_Hechos_Pago
ADD CONSTRAINT FK_BI_Hechos_Pago_Tiempo
FOREIGN KEY (id_tiempo) REFERENCES ALBONDIGA.BI_Dimension_Tiempo(id_tiempo);
GO

ALTER TABLE ALBONDIGA.BI_Hechos_Pago
ADD CONSTRAINT FK_BI_Hechos_Pago_Rango_Cliente
FOREIGN KEY (id_rango_etario_cliente) REFERENCES ALBONDIGA.BI_Dimension_Rango_Etario(id_rango_etario);
GO

ALTER TABLE ALBONDIGA.BI_Hechos_Pago
ADD CONSTRAINT FK_BI_Hechos_Pago_Sucursal
FOREIGN KEY (id_sucursal) REFERENCES ALBONDIGA.BI_Dimension_Sucursal(id_sucursal);
GO

-- Foreign keys para BI_Hechos_Promociones
ALTER TABLE ALBONDIGA.BI_Hechos_Promociones
ADD CONSTRAINT FK_BI_Hechos_Promociones_Subcategoria
FOREIGN KEY (id_categoria) REFERENCES ALBONDIGA.BI_Dimension_Categoria(id_categoria);
GO

ALTER TABLE ALBONDIGA.BI_Hechos_Promociones
ADD CONSTRAINT FK_BI_Hechos_Promociones_Tiempo
FOREIGN KEY (id_tiempo) REFERENCES ALBONDIGA.BI_Dimension_Tiempo(id_tiempo);
GO

/* -------- Creacion de procedures para cargar todas las tablas utilizando los datos ya migrados al modelo de datos transaccional -------- */
CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Sucursal
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Sucursal...'
    INSERT INTO BI_Dimension_Sucursal (id_sucursal, nombre)
    SELECT DISTINCT nro_de_sucursal, nombre
    FROM ALBONDIGA.Sucursal
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Provincia
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Provincia...'
    INSERT INTO BI_Dimension_Provincia(id_provincia, provincia)
    SELECT DISTINCT id_provincia, nombre
    FROM ALBONDIGA.Provincia
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Localidad
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Localidad...'
    INSERT INTO BI_Dimension_Localidad (id_localidad, id_provincia, localidad)
    SELECT DISTINCT id_localidad, id_provincia, nombre
    FROM ALBONDIGA.Localidad
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Rango_Etario
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Rango Etario...'
    INSERT INTO BI_Dimension_Rango_Etario (descripcion_rango)
    VALUES ('< 25'), ('25 - 35'), ('35 - 50'), ('> 50'), ('Desconocido')
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Turnos
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Turnos...'
    INSERT INTO BI_Dimension_Turnos (descripcion_turno)
    VALUES ('08:00 - 12:00'), ('12:00 - 16:00'), ('16:00 - 20:00'), ('Fuera de rango')
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Medio_Pago
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Medio Pago...'
    INSERT INTO BI_Dimension_Medio_Pago (id_medio_pago, descripcion_medio_pago)
    SELECT DISTINCT id_medio_pago, medio_pago
    FROM ALBONDIGA.Medio_Pago
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Categoria
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Categoria...'
    INSERT INTO BI_Dimension_Categoria (id_categoria, descripcion_categoria)
    SELECT DISTINCT id_categoria, nombre
    FROM ALBONDIGA.Categoria
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Tipo_Caja
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Tipo_Caja...'
    INSERT INTO BI_Dimension_Tipo_Caja (id_tipo_caja, tipo_caja)
    SELECT DISTINCT id_tipo_caja, tipo_caja
    FROM ALBONDIGA.Tipo_Caja
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Dimension_Tiempo
AS
BEGIN
    PRINT 'Se comienzan a migrar los tiempos...';

    -- Migrar los tiempos de la tabla Ticket
    INSERT INTO ALBONDIGA.BI_Dimension_Tiempo (año, cuatrimestre, mes)
    SELECT DISTINCT 
        YEAR(fecha_y_hora) AS año, 
        ALBONDIGA.obtenerCuatrimestre(fecha_y_hora) AS cuatrimestre, 
        MONTH(fecha_y_hora) AS mes
    FROM ALBONDIGA.Ticket
    WHERE NOT EXISTS (
        SELECT 1 
        FROM ALBONDIGA.BI_Dimension_Tiempo 
        WHERE año = YEAR(fecha_y_hora) 
        AND cuatrimestre = ALBONDIGA.obtenerCuatrimestre(fecha_y_hora) 
        AND mes = MONTH(fecha_y_hora)
    );

    -- Migrar los tiempos de la tabla Envio
    INSERT INTO ALBONDIGA.BI_Dimension_Tiempo (año, cuatrimestre, mes)
    SELECT DISTINCT 
        YEAR(fecha_y_hora_entrega) AS año, 
        ALBONDIGA.obtenerCuatrimestre(fecha_y_hora_entrega) AS cuatrimestre, 
        MONTH(fecha_y_hora_entrega) AS mes
    FROM ALBONDIGA.Envio
    WHERE NOT EXISTS (
        SELECT 1 
        FROM ALBONDIGA.BI_Dimension_Tiempo 
        WHERE año = YEAR(fecha_y_hora_entrega) 
        AND cuatrimestre = ALBONDIGA.obtenerCuatrimestre(fecha_y_hora_entrega) 
        AND mes = MONTH(fecha_y_hora_entrega)
    );

    -- Migrar los tiempos de la tabla Promocion
    INSERT INTO ALBONDIGA.BI_Dimension_Tiempo (año, cuatrimestre, mes)
    SELECT DISTINCT 
        YEAR(fecha_inicio) AS año, 
        ALBONDIGA.obtenerCuatrimestre(fecha_inicio) AS cuatrimestre, 
        MONTH(fecha_inicio) AS mes
    FROM ALBONDIGA.Promocion
    WHERE NOT EXISTS (
        SELECT 1 
        FROM ALBONDIGA.BI_Dimension_Tiempo 
        WHERE año = YEAR(fecha_inicio) 
        AND cuatrimestre = ALBONDIGA.obtenerCuatrimestre(fecha_inicio) 
        AND mes = MONTH(fecha_inicio)
    );

    -- Migrar los tiempos de la tabla Pago
    INSERT INTO ALBONDIGA.BI_Dimension_Tiempo (año, cuatrimestre, mes)
    SELECT DISTINCT 
        YEAR(fecha_y_hora) AS año, 
        ALBONDIGA.obtenerCuatrimestre(fecha_y_hora) AS cuatrimestre, 
        MONTH(fecha_y_hora) AS mes
    FROM ALBONDIGA.Pago
    WHERE NOT EXISTS (
        SELECT 1 
        FROM ALBONDIGA.BI_Dimension_Tiempo 
        WHERE año = YEAR(fecha_y_hora) 
        AND cuatrimestre = ALBONDIGA.obtenerCuatrimestre(fecha_y_hora) 
        AND mes = MONTH(fecha_y_hora)
    );
END;
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Hechos_Ticket
AS
BEGIN
    PRINT 'Migrando datos a la tabla de hechos Ticket...'
    INSERT INTO BI_Hechos_Ticket(id_tiempo, id_localidad, id_rango_etario_empleado, id_turno, id_tipo_caja, total_promociones, cantidad_productos, cantidad_ventas, total_descuento_medio_pago, 
								total_venta)
    SELECT TI.id_tiempo, 
			D.id_localidad, 
			R.id_rango_etario,
			TU.id_turno,
			TC.id_tipo_caja,
			SUM(T.total_promociones),
			(SELECT SUM(PX.cantidad) FROM ALBONDIGA.Producto_x_Ticket PX 
			JOIN ALBONDIGA.Ticket T1 ON T1.id_ticket = PX.id_ticket
			JOIN ALBONDIGA.Sucursal S1 ON S1.nro_de_sucursal = T1.id_sucursal
			JOIN ALBONDIGA.Domicilio D1 ON S1.id_direccion = D1.id_domicilio
			JOIN ALBONDIGA.Empleado E1 ON T1.id_empleado = E1.legajo
			JOIN ALBONDIGA.BI_Dimension_Rango_Etario R1 ON R1.descripcion_rango = ALBONDIGA.rangoEtario(ALBONDIGA.edadActual(E1.fecha_de_nacimiento))
			JOIN ALBONDIGA.BI_Dimension_Turnos TU1 ON TU1.descripcion_turno = ALBONDIGA.rangoHorario(ALBONDIGA.obtenerHora(T1.fecha_y_hora))
			JOIN ALBONDIGA.BI_Dimension_Tiempo TI1 ON TI1.año = YEAR(T1.fecha_y_hora) AND TI1.cuatrimestre = ALBONDIGA.obtenerCuatrimestre(T1.fecha_y_hora) AND TI1.mes = MONTH(T1.fecha_y_hora)
			JOIN ALBONDIGA.Caja C1 ON C1.id_caja = T1.id_caja
			JOIN ALBONDIGA.BI_Dimension_Tipo_Caja TC1 ON TC1.id_tipo_caja = C1.id_tipo_caja
			WHERE TI.id_tiempo = TI1.id_tiempo AND D.id_localidad = D1.id_localidad AND R.id_rango_etario = R1.id_rango_etario AND TU.id_turno = TU1.id_turno AND TC.id_tipo_caja = TC1.id_tipo_caja),
			COUNT(T.id_ticket),
			SUM(T.total_descuento_medio_pago),
			SUM(T.total_venta)
    FROM ALBONDIGA.Ticket T
    JOIN ALBONDIGA.Sucursal S ON S.nro_de_sucursal = T.id_sucursal
    JOIN ALBONDIGA.Domicilio D ON S.id_direccion = D.id_domicilio
    JOIN ALBONDIGA.Empleado E ON T.id_empleado = E.legajo
    JOIN ALBONDIGA.BI_Dimension_Rango_Etario R ON R.descripcion_rango = ALBONDIGA.rangoEtario(ALBONDIGA.edadActual(E.fecha_de_nacimiento))
    JOIN ALBONDIGA.BI_Dimension_Turnos TU ON TU.descripcion_turno = ALBONDIGA.rangoHorario(ALBONDIGA.obtenerHora(T.fecha_y_hora))
    JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON TI.año = YEAR(T.fecha_y_hora) AND TI.cuatrimestre = ALBONDIGA.obtenerCuatrimestre(T.fecha_y_hora) AND TI.mes = MONTH(T.fecha_y_hora)
    JOIN ALBONDIGA.Caja C ON C.id_caja = T.id_caja
    JOIN ALBONDIGA.BI_Dimension_Tipo_Caja TC ON TC.id_tipo_caja = C.id_tipo_caja
	GROUP BY TI.id_tiempo, D.id_localidad, R.id_rango_etario, TU.id_turno, TC.id_tipo_caja
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Hechos_Envio
AS
BEGIN
    PRINT 'Migrando datos a la tabla de hechos Envio...'
    INSERT INTO BI_Hechos_Envio (id_rango_etario_cliente, id_sucursal, id_tiempo, id_localidad_cliente, cantidad_envios, costo_envio, cantidad_envios_en_horarios)
    SELECT R.id_rango_etario, 
			S.id_sucursal, 
			TI.id_tiempo, 
			L.id_localidad,
			COUNT(E.nro_envio),
			SUM(E.costo), 
			SUM(CASE WHEN E.fecha_programada = CAST(E.fecha_y_hora_entrega AS DATE) AND DATEPART(HOUR, E.fecha_y_hora_entrega) BETWEEN E.hora_inicio AND E.hora_fin
                THEN 1 
                ELSE 0 END)
    FROM ALBONDIGA.Envio E
    JOIN ALBONDIGA.Ticket T ON T.id_ticket = E.id_ticket
    JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON TI.año = YEAR(E.fecha_programada) AND TI.cuatrimestre = ALBONDIGA.obtenerCuatrimestre(E.fecha_programada) AND TI.mes = MONTH(E.fecha_programada)
    JOIN ALBONDIGA.Cliente C ON C.id_cliente = E.id_cliente
    JOIN ALBONDIGA.BI_Dimension_Rango_Etario R ON R.descripcion_rango = ALBONDIGA.rangoEtario(ALBONDIGA.edadActual(C.fecha_nacimiento))
    JOIN ALBONDIGA.Domicilio D ON D.id_domicilio = C.id_domicilio
	JOIN ALBONDIGA.BI_Dimension_Localidad L ON L.id_localidad = D.id_localidad
	JOIN ALBONDIGA.BI_Dimension_Provincia P ON L.id_provincia = P.id_provincia
	JOIN ALBONDIGA.BI_Dimension_Sucursal S ON S.id_sucursal = T.id_sucursal
    GROUP BY R.id_rango_etario, S.id_sucursal, TI.id_tiempo, L.id_localidad
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Hechos_Pago
AS
BEGIN
    PRINT 'Migrando datos a la tabla de hechos Pago...'
    INSERT INTO BI_Hechos_Pago (id_medio_pago, id_tiempo, id_rango_etario_cliente, id_sucursal, total_importe_cuotas, cuotas, total_descuento_medio_pago)
	SELECT P.id_medio_pago, 
			TI.id_tiempo, 
			R.id_rango_etario,
			S.id_sucursal,
			SUM(ISNULL(P.importe, 0)) sumatoria_importe,
			ISNULL(DP.cuotas, 0) cuotas, 
			SUM(ISNULL(DMP.total_descuento_aplicado, 0)) sumatoria_descuentos
    FROM ALBONDIGA.Pago P
    LEFT JOIN ALBONDIGA.Detalle_Pago DP ON DP.id_detalle_pago = P.id_detalle_pago
    LEFT JOIN ALBONDIGA.Descuento_Por_Medio_Pago DMP ON P.id_descuento_medio_pago = DMP.id_descuento_medio_pago
    JOIN ALBONDIGA.BI_Dimension_Medio_Pago MP ON P.id_medio_pago = MP.id_medio_pago
    JOIN ALBONDIGA.Ticket T ON T.id_ticket = P.id_ticket
    JOIN ALBONDIGA.Envio E ON E.id_ticket = T.id_ticket
    JOIN ALBONDIGA.Cliente C ON C.id_cliente = E.id_cliente
    JOIN ALBONDIGA.BI_Dimension_Rango_Etario R ON R.descripcion_rango = ALBONDIGA.rangoEtario(ALBONDIGA.edadActual(C.fecha_nacimiento))
    JOIN ALBONDIGA.BI_Dimension_Sucursal S ON T.id_sucursal = S.id_sucursal
    JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON TI.año = YEAR(P.fecha_y_hora) AND TI.cuatrimestre = ALBONDIGA.obtenerCuatrimestre(P.fecha_y_hora) AND TI.mes = MONTH(P.fecha_y_hora)
    GROUP BY TI.id_tiempo, R.id_rango_etario, S.id_sucursal, ISNULL(DP.cuotas, 0), P.id_medio_pago
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Hechos_Promociones
AS
BEGIN
    PRINT 'Migrando datos a la tabla de hechos Promociones...'
    INSERT INTO BI_Hechos_Promociones (id_categoria, id_tiempo, total_descuento_promo)
    SELECT C.id_categoria,
			TI.id_tiempo,
			SUM(PXP.promo_aplicada_descuento)
    FROM ALBONDIGA.Pago P
    JOIN ALBONDIGA.Detalle_Pago DP ON P.id_detalle_pago = DP.id_detalle_pago
    JOIN ALBONDIGA.Producto_X_Ticket PXTI ON P.id_ticket = PXTI.id_ticket
    JOIN ALBONDIGA.Producto PR ON PXTI.id_producto = PR.codigo
	JOIN ALBONDIGA.Categoria_x_Subcategoria CXS ON CXS.id_subcategoria = PR.id_subcategoria
    JOIN ALBONDIGA.Categoria C ON CXS.id_categoria = C.id_categoria
	JOIN ALBONDIGA.Promocion_x_Producto PXP ON PXP.id_producto = PR.codigo
    JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON YEAR(P.fecha_y_hora) = TI.año AND TI.cuatrimestre = ALBONDIGA.obtenerCuatrimestre(P.fecha_y_hora) AND TI.mes = MONTH(P.fecha_y_hora)
    GROUP BY C.id_categoria, TI.id_tiempo
END
GO

/* --------------------------------------------- Creacion de vistas --------------------------------------------- */

-- 1.Ticket Promedio mensual. Valor promedio de las ventas (en $) según la localidad, año y mes. Se calcula en función de la sumatoria del importe de las ventas sobre el total de las mismas.
CREATE VIEW ALBONDIGA.V_TicketPromedioMensual AS
SELECT L.localidad,
		T.año,
		T.mes,
		'$' + CAST(CAST((SUM(HT.total_venta) / SUM(cantidad_ventas)) AS DECIMAL(18, 2)) AS VARCHAR) AS promedio_ventas
FROM ALBONDIGA.BI_Hechos_Ticket HT
JOIN ALBONDIGA.BI_Dimension_Tiempo T ON HT.id_tiempo = T.id_tiempo
JOIN ALBONDIGA.BI_Dimension_Localidad L ON HT.id_localidad = L.id_localidad
GROUP BY L.localidad, T.año, T.mes
GO

-- 2.Cantidad unidades promedio. Cantidad promedio de artículos que se venden en función de los tickets según el turno para cada cuatrimestre de cada año. Se obtiene sumando la cantidad de 
-- artículos de todos los tickets correspondientes sobre la cantidad de tickets. Si un producto tiene más de una unidad en un ticket, para el indicador se consideran todas las unidades.
CREATE VIEW ALBONDIGA.V_CantidadUnidadesPromedio AS
SELECT T.año,
		T.cuatrimestre,
		TU.descripcion_turno,
		CAST(SUM(HT.cantidad_productos) / SUM(HT.cantidad_ventas) AS DECIMAL(18, 0)) AS cantidad_unidades_promedio
FROM ALBONDIGA.BI_Hechos_Ticket HT
JOIN ALBONDIGA.BI_Dimension_Tiempo T ON HT.id_tiempo = T.id_tiempo
JOIN ALBONDIGA.BI_Dimension_Turnos TU ON HT.id_turno = TU.id_turno
GROUP BY T.año, T.cuatrimestre, TU.descripcion_turno
GO

-- 3.Porcentaje anual de ventas registradas por rango etario del empleado según el tipo de caja para cada cuatrimestre. 
-- Se calcula tomando la cantidad de ventas correspondientes sobre el total de ventas anual.
CREATE VIEW ALBONDIGA.V_VentasRangoEtarioAnual AS
SELECT T.año,
		T.cuatrimestre,
		R.descripcion_rango,
		TC.tipo_caja,
		'%' + CAST(CAST(SUM(HT.cantidad_ventas) * 100.0 / (SELECT SUM(cantidad_ventas)
															FROM ALBONDIGA.BI_Hechos_Ticket TK
															JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON TI.id_tiempo = TK.id_tiempo
															WHERE TI.año = T.año) AS DECIMAL(5, 2)) AS VARCHAR) AS porcentaje_ventas
FROM ALBONDIGA.BI_Hechos_Ticket HT
JOIN ALBONDIGA.BI_Dimension_Tiempo T ON HT.id_tiempo = T.id_tiempo
JOIN ALBONDIGA.BI_Dimension_Rango_Etario R ON HT.id_rango_etario_empleado = R.id_rango_etario
JOIN ALBONDIGA.BI_Dimension_Tipo_Caja TC ON HT.id_tipo_caja = TC.id_tipo_caja
GROUP BY T.año, T.cuatrimestre, R.descripcion_rango, TC.tipo_caja
GO

-- 4.Cantidad de ventas registradas por turno para cada localidad según el mes de cada año.
CREATE VIEW ALBONDIGA.V_VentasTurnoLocalidad AS
SELECT TI.año,
		TI.mes,
		TU.descripcion_turno,
		L.localidad,
		SUM(T.cantidad_ventas) ventas
FROM ALBONDIGA.BI_Hechos_Ticket T
JOIN ALBONDIGA.BI_Dimension_Localidad L ON T.id_localidad = L.id_localidad
JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON TI.id_tiempo = T.id_tiempo
JOIN ALBONDIGA.BI_Dimension_Turnos TU ON TU.id_turno = T.id_turno
GROUP BY TI.año, TI.mes, TU.descripcion_turno, L.localidad
GO

-- 5.Porcentaje de descuento aplicados en función del total de los tickets según el mes de cada año.
CREATE VIEW ALBONDIGA.V_PorcentajeDescuentoMensual AS
SELECT T.año,
		T.mes,
		CAST(CAST((SUM(TI.total_descuento_medio_pago + TI.total_promociones) / ISNULL(SUM(TI.total_venta), 1) * 100) AS INT) AS VARCHAR) + '%' AS porcentaje_descuento
FROM ALBONDIGA.BI_Hechos_Ticket TI
JOIN ALBONDIGA.BI_Dimension_Tiempo T ON T.id_tiempo = TI.id_tiempo 
GROUP BY T.año, T.mes
GO

-- 6.Las tres categorías de productos con mayor descuento aplicado a partir de promociones para cada cuatrimestre de cada año.
CREATE VIEW ALBONDIGA.V_Top3CategoriasDescuento AS
WITH Categoria_Descuento AS (
    SELECT C.descripcion_categoria,
			T.año,
			T.cuatrimestre,
			'$' + CAST(CAST(SUM(P.total_descuento_promo) AS DECIMAL(18,2)) AS VARCHAR) AS total_descuento_promo
    FROM ALBONDIGA.BI_Hechos_Promociones P
    JOIN ALBONDIGA.BI_Dimension_Tiempo T ON P.id_tiempo = T.id_tiempo
    JOIN ALBONDIGA.BI_Dimension_Categoria C ON P.id_categoria = C.id_categoria
    GROUP BY C.descripcion_categoria, T.año, T.cuatrimestre
),
Top_Categorias AS (
    SELECT descripcion_categoria,
			año,
			cuatrimestre,
			total_descuento_promo,
			ROW_NUMBER() OVER (PARTITION BY año, cuatrimestre ORDER BY total_descuento_promo DESC) AS rn
    FROM Categoria_Descuento
)
SELECT descripcion_categoria,
		año,
		cuatrimestre,
		total_descuento_promo
FROM Top_Categorias
WHERE rn <= 3
GO

-- 7.Porcentaje de cumplimiento de envíos en los tiempos programados por sucursal por año/mes (desvío)
CREATE VIEW ALBONDIGA.V_CumplimientoEnvios AS
SELECT 
    TI.año,
    TI.mes,
    S.nombre,
    CAST(CAST(SUM(E.cantidad_envios_en_horarios) * 100.0 / SUM(E.cantidad_envios) AS DECIMAL(5, 2)) AS VARCHAR) + '%' AS porcentaje_cumplimiento
FROM ALBONDIGA.BI_Hechos_Envio E
JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON E.id_tiempo = TI.id_tiempo
JOIN ALBONDIGA.BI_Dimension_Sucursal S ON E.id_sucursal = S.id_sucursal
GROUP BY TI.año, TI.mes, S.nombre
GO

-- 8.Cantidad de envíos por rango etario de clientes para cada cuatrimestre de cada año.
CREATE VIEW ALBONDIGA.V_EnviosRangoEtarioClientes AS
SELECT TI.año,
		TI.cuatrimestre,
		R.descripcion_rango,
		SUM(E.cantidad_envios) AS cantidad_envios
FROM ALBONDIGA.BI_Hechos_Envio E
JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON E.id_tiempo = TI.id_tiempo
JOIN ALBONDIGA.BI_Dimension_Rango_Etario R ON E.id_rango_etario_cliente = R.id_rango_etario
GROUP BY TI.año, TI.cuatrimestre, R.descripcion_rango
GO

-- 9.Las 5 localidades (tomando la localidad del cliente) con mayor costo de envío.
CREATE VIEW ALBONDIGA.V_Top5LocalidadesCostoEnvio AS
SELECT TOP 5 L.localidad,
			SUM(E.costo_envio) AS total_costo_envio
FROM ALBONDIGA.BI_Hechos_Envio E
JOIN ALBONDIGA.BI_Dimension_Localidad L ON E.id_localidad_cliente = L.id_localidad
JOIN ALBONDIGA.BI_Dimension_Provincia P ON P.id_provincia = L.id_provincia
GROUP BY L.localidad
ORDER BY 2 DESC
GO

-- 10.Las 3 sucursales con el mayor importe de pagos en cuotas, según el medio de pago, mes y año. Se calcula sumando los importes totales de todas las ventas en cuotas.
-- Crear la vista para las 3 sucursales con el mayor importe de pagos en cuotas, según el medio de pago, mes y año
CREATE VIEW ALBONDIGA.V_Top3SucursalesPagosCuotas AS
SELECT TOP 3 S.nombre,
			MP.descripcion_medio_pago,
			TI.mes,
			TI.año,
			'$' + CAST(SUM(HP.total_importe_cuotas) AS VARCHAR) AS total_importe_cuotas
FROM ALBONDIGA.BI_Hechos_Pago HP
JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON TI.id_tiempo = HP.id_tiempo
JOIN ALBONDIGA.BI_Dimension_Sucursal S ON S.id_sucursal = HP.id_sucursal
JOIN ALBONDIGA.BI_Dimension_Medio_Pago MP ON MP.id_medio_pago = HP.id_medio_pago
WHERE HP.total_importe_cuotas > 0
GROUP BY S.nombre, MP.descripcion_medio_pago, TI.mes, TI.año
ORDER BY total_importe_cuotas DESC;
GO

-- 11.Promedio de importe de la cuota en función del rango etareo del cliente.
CREATE VIEW ALBONDIGA.V_PromedioCuotaRangoEtario AS
SELECT R.descripcion_rango AS rango_etario,
      '$' + CAST(CAST(AVG(P.total_importe_cuotas / P.cuotas) AS DECIMAL(18, 2)) AS VARCHAR) AS promedio_importe_cuota
FROM ALBONDIGA.BI_Hechos_Pago P
JOIN ALBONDIGA.BI_Dimension_Rango_Etario R ON P.id_rango_etario_cliente = R.id_rango_etario
WHERE P.cuotas > 0
GROUP BY R.descripcion_rango
GO

-- 12.Porcentaje de descuento aplicado por cada medio de pago en función del valor de total de pagos sin el descuento, por cuatrimestre. Es decir, total de descuentos 
-- sobre el total de pagos más el total de descuentos.
CREATE VIEW ALBONDIGA.V_PorcentajeDescuentoMedioPago AS
SELECT MP.descripcion_medio_pago,
		TI.cuatrimestre,
		TI.año,
		'%' + CAST(CAST((SUM(P.total_descuento_medio_pago) * 100.0) / SUM(P.total_importe_cuotas + P.total_descuento_medio_pago) AS DECIMAL(18, 2)) AS VARCHAR) AS porcentaje_descuento
FROM  ALBONDIGA.BI_Hechos_Pago P
JOIN ALBONDIGA.BI_Dimension_Medio_Pago MP ON P.id_medio_pago = MP.id_medio_pago
JOIN ALBONDIGA.BI_Dimension_Tiempo TI ON P.id_tiempo = TI.id_tiempo
GROUP BY MP.descripcion_medio_pago, TI.cuatrimestre, TI.año
GO

/* --------------------------------------------- Ejecución de la migración --------------------------------------------- */
EXEC ALBONDIGA.migrar_BI_Dimension_Sucursal
EXEC ALBONDIGA.migrar_BI_Dimension_Tipo_Caja
EXEC ALBONDIGA.migrar_BI_Dimension_Provincia
EXEC ALBONDIGA.migrar_BI_Dimension_Localidad
EXEC ALBONDIGA.migrar_BI_Dimension_Medio_Pago
EXEC ALBONDIGA.migrar_BI_Dimension_Rango_Etario
EXEC ALBONDIGA.migrar_BI_Dimension_Tiempo
EXEC ALBONDIGA.migrar_BI_Dimension_Categoria
EXEC ALBONDIGA.migrar_BI_Dimension_Turnos
EXEC ALBONDIGA.migrar_BI_Hechos_Ticket
EXEC ALBONDIGA.migrar_BI_Hechos_Envio
EXEC ALBONDIGA.migrar_BI_Hechos_Pago
EXEC ALBONDIGA.migrar_BI_Hechos_Promociones

/* --------------------------------------------- Vistas --------------------------------------------- */
/*SELECT * FROM ALBONDIGA.V_TicketPromedioMensual;
SELECT * FROM ALBONDIGA.V_CantidadUnidadesPromedio;
SELECT * FROM ALBONDIGA.V_VentasRangoEtarioAnual;
SELECT * FROM ALBONDIGA.V_VentasTurnoLocalidad;
SELECT * FROM ALBONDIGA.V_PorcentajeDescuentoMensual;
SELECT * FROM ALBONDIGA.V_Top3CategoriasDescuento;
SELECT * FROM ALBONDIGA.V_CumplimientoEnvios;
SELECT * FROM ALBONDIGA.V_EnviosRangoEtarioClientes;
SELECT * FROM ALBONDIGA.V_Top5LocalidadesCostoEnvio;
SELECT * FROM ALBONDIGA.V_Top3SucursalesPagosCuotas;
SELECT * FROM ALBONDIGA.V_PromedioCuotaRangoEtario;
SELECT * FROM ALBONDIGA.V_PorcentajeDescuentoMedioPago;*/