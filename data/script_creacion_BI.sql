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

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Provincia')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Provincia
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Localidad')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Localidad
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Rango_Etario')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Rango_Etario
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Turnos')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Turnos
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Medio_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Medio_Pago
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Categoria')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Categoria
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_SubCategoria')
    DROP PROCEDURE ALBONDIGA.migrar_BI_SubCategoria
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Tiempo')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Tiempo
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Ticket')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Ticket
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Producto')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Producto
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Envio')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Envio
GO

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_BI_Pago')
    DROP PROCEDURE ALBONDIGA.migrar_BI_Pago
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
CREATE TABLE ALBONDIGA.BI_Tiempo (
    id_tiempo INT IDENTITY(1,1) PRIMARY KEY,
    año INT,
    cuatrimestre INT,
    mes INT
);

CREATE TABLE ALBONDIGA.BI_Provincia (
    id_provincia INT PRIMARY KEY,
    provincia NVARCHAR(100),
);

CREATE TABLE ALBONDIGA.BI_Localidad (
    id_localidad INT PRIMARY KEY,
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
	id_rango_etario_cliente INT,
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

ALTER TABLE ALBONDIGA.BI_Pago
ADD CONSTRAINT FK_BI_Pago_Rango_Cliente
FOREIGN KEY (id_rango_etario_cliente) REFERENCES ALBONDIGA.BI_Rango_Etario(id_rango_etario);
GO

/* -------- Creacion de procedures para cargar todas las tablas utilizando los datos ya migrados al modelo de datos transaccional -------- */
CREATE PROCEDURE ALBONDIGA.migrar_BI_Sucursal
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Sucursal...'
    INSERT INTO BI_Sucursal (id_sucursal, nombre)
    SELECT DISTINCT nro_de_sucursal, nombre
    FROM ALBONDIGA.Sucursal
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Provincia
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Provincia...'
    INSERT INTO BI_Provincia(id_provincia, provincia)
    SELECT DISTINCT id_provincia, nombre
    FROM ALBONDIGA.Provincia
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Localidad
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Localidad...'
    INSERT INTO BI_Localidad (id_localidad, id_provincia, localidad)
    SELECT DISTINCT id_localidad, id_provincia, nombre
    FROM ALBONDIGA.Localidad
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Rango_Etario
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Rango Etario...'
    INSERT INTO BI_Rango_Etario (descripcion_rango)
    VALUES ('< 25'), ('25 - 35'), ('35 - 50'), ('> 50')
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Turnos
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Turnos...'
    INSERT INTO BI_Turnos (descripcion_turno)
    VALUES ('08:00 - 12:00'), ('12:00 - 16:00'), ('16:00 - 20:00')
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Medio_Pago
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Medio Pago...'
    INSERT INTO BI_Medio_Pago (id_medio_pago, descripcion_medio_pago)
    SELECT DISTINCT id_medio_pago, medio_pago
    FROM ALBONDIGA.Medio_Pago
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Categoria
AS
BEGIN
    PRINT 'Migrando datos a la dimensión Categoria...'
    INSERT INTO BI_Categoria (id_categoria, descripcion_categoria)
    SELECT DISTINCT id_categoria, nombre
    FROM ALBONDIGA.Categoria
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_SubCategoria
AS
BEGIN
    PRINT 'Migrando datos a la dimensión SubCategoria...'
    INSERT INTO BI_SubCategoria (id_subcategoria, descripcion_subcategoria)
    SELECT DISTINCT id_subcategoria, nombre
    FROM ALBONDIGA.Sub_Categoria
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Tiempo
AS
BEGIN
    PRINT 'Se comienzan a migrar los tiempos...';

    -- Migrar los tiempos de la tabla Ticket
    INSERT INTO ALBONDIGA.BI_Tiempo (año, cuatrimestre, mes)
    SELECT DISTINCT 
        YEAR(fecha_y_hora) AS año, 
        ALBONDIGA.obtenerCuatrimestre(fecha_y_hora) AS cuatrimestre, 
        MONTH(fecha_y_hora) AS mes
    FROM ALBONDIGA.Ticket
    WHERE NOT EXISTS (
        SELECT 1 
        FROM ALBONDIGA.BI_Tiempo 
        WHERE año = YEAR(fecha_y_hora) 
        AND cuatrimestre = ALBONDIGA.obtenerCuatrimestre(fecha_y_hora) 
        AND mes = MONTH(fecha_y_hora)
    );

    -- Migrar los tiempos de la tabla Envio
    INSERT INTO ALBONDIGA.BI_Tiempo (año, cuatrimestre, mes)
    SELECT DISTINCT 
        YEAR(fecha_y_hora_entrega) AS año, 
        ALBONDIGA.obtenerCuatrimestre(fecha_y_hora_entrega) AS cuatrimestre, 
        MONTH(fecha_y_hora_entrega) AS mes
    FROM ALBONDIGA.Envio
    WHERE NOT EXISTS (
        SELECT 1 
        FROM ALBONDIGA.BI_Tiempo 
        WHERE año = YEAR(fecha_y_hora_entrega) 
        AND cuatrimestre = ALBONDIGA.obtenerCuatrimestre(fecha_y_hora_entrega) 
        AND mes = MONTH(fecha_y_hora_entrega)
    );

    -- Migrar los tiempos de la tabla Promocion
    INSERT INTO ALBONDIGA.BI_Tiempo (año, cuatrimestre, mes)
    SELECT DISTINCT 
        YEAR(fecha_inicio) AS año, 
        ALBONDIGA.obtenerCuatrimestre(fecha_inicio) AS cuatrimestre, 
        MONTH(fecha_inicio) AS mes
    FROM ALBONDIGA.Promocion
    WHERE NOT EXISTS (
        SELECT 1 
        FROM ALBONDIGA.BI_Tiempo 
        WHERE año = YEAR(fecha_inicio) 
        AND cuatrimestre = ALBONDIGA.obtenerCuatrimestre(fecha_inicio) 
        AND mes = MONTH(fecha_inicio)
    );

    -- Migrar los tiempos de la tabla Pago
    INSERT INTO ALBONDIGA.BI_Tiempo (año, cuatrimestre, mes)
    SELECT DISTINCT 
        YEAR(fecha_y_hora) AS año, 
        ALBONDIGA.obtenerCuatrimestre(fecha_y_hora) AS cuatrimestre, 
        MONTH(fecha_y_hora) AS mes
    FROM ALBONDIGA.Pago
    WHERE NOT EXISTS (
        SELECT 1 
        FROM ALBONDIGA.BI_Tiempo 
        WHERE año = YEAR(fecha_y_hora) 
        AND cuatrimestre = ALBONDIGA.obtenerCuatrimestre(fecha_y_hora) 
        AND mes = MONTH(fecha_y_hora)
    );
END;
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Producto
AS
BEGIN
    PRINT 'Migrando datos a la tabla de hechos Producto...'
    INSERT INTO BI_Producto (id_producto, id_ticket, id_categoria, id_subcategoria, cantidad, precio_unitario, descuento)
    SELECT DISTINCT P.codigo, 
					PT.id_ticket, 
					CS.id_categoria, 
					SC.id_subcategoria, 
					PT.cantidad, 
					P.precio_unitario, 
					PP.promo_aplicada_descuento
    FROM ALBONDIGA.Producto P
    JOIN ALBONDIGA.Producto_x_Ticket PT ON P.codigo = PT.id_producto
    JOIN ALBONDIGA.Sub_Categoria SC ON P.id_subcategoria = SC.id_subcategoria
	JOIN ALBONDIGA.Categoria_x_Subcategoria CS ON CS.id_subcategoria = SC.id_subcategoria
	JOIN ALBONDIGA.Promocion_x_Ticket PTI ON PTI.id_ticket = PT.id_ticket
	JOIN ALBONDIGA.Promocion_x_Producto PP ON PP.id_producto = PT.id_producto
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Ticket
AS
BEGIN
    PRINT 'Migrando datos a la tabla de hechos Ticket...'
    INSERT INTO BI_Ticket (id_ticket, id_tiempo, id_localidad, id_sucursal, id_rango_etario_empleado, id_turno, total_venta)
    SELECT DISTINCT T.id_ticket, 
					TI.id_tiempo, 
					D.id_localidad, 
					T.id_sucursal, 
					R.id_rango_etario,
					TU.id_turno,
					T.total_venta
    FROM ALBONDIGA.Ticket T
    JOIN ALBONDIGA.Sucursal S ON S.nro_de_sucursal = T.id_sucursal
	JOIN ALBONDIGA.Domicilio D ON S.id_direccion = D.id_domicilio
    JOIN ALBONDIGA.Empleado E ON T.id_empleado = E.legajo
	JOIN ALBONDIGA.BI_Rango_Etario R ON R.descripcion_rango = ALBONDIGA.rangoEtario(ALBONDIGA.edadActual(E.fecha_de_nacimiento))
	JOIN ALBONDIGA.BI_Turnos TU ON TU.descripcion_turno = ALBONDIGA.rangoHorario(ALBONDIGA.obtenerHora(T.fecha_y_hora))
	JOIN ALBONDIGA.BI_Tiempo TI ON TI.año = YEAR(T.fecha_y_hora) AND TI.cuatrimestre = ALBONDIGA.obtenerCuatrimestre(T.fecha_y_hora) AND TI.mes = MONTH(T.fecha_y_hora)
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Envio
AS
BEGIN
    PRINT 'Migrando datos a la tabla de hechos Envio...'
    INSERT INTO BI_Envio (id_envio, id_cliente, id_sucursal, id_tiempo, costo_envio, fecha_hora_entrega)
    SELECT DISTINCT E.nro_envio, 
					E.id_cliente, 
					T.id_sucursal, 
					TI.id_tiempo, 
					E.costo, 
					E.fecha_y_hora_entrega
    FROM ALBONDIGA.Envio E
	JOIN ALBONDIGA.Ticket T ON T.id_ticket = E.id_ticket
	JOIN ALBONDIGA.BI_Tiempo TI ON TI.año = YEAR(E.fecha_programada) AND TI.cuatrimestre = ALBONDIGA.obtenerCuatrimestre(E.fecha_programada) AND TI.mes = MONTH(E.fecha_programada)
END
GO

CREATE PROCEDURE ALBONDIGA.migrar_BI_Pago
AS
BEGIN
    PRINT 'Migrando datos a la tabla de hechos Pago...'
    INSERT INTO BI_Pago (id_pago, id_ticket, id_medio_pago, id_tiempo, id_rango_etario_cliente, importe, cuotas)
    SELECT DISTINCT P.nro_pago, 
					T.id_ticket, 
					P.id_medio_pago, 
					TI.id_tiempo, 
					R.id_rango_etario,
					P.importe, 
					DP.cuotas
    FROM ALBONDIGA.Pago P
	JOIN ALBONDIGA.Detalle_Pago DP ON DP.id_detalle_pago = P.id_detalle_pago
	JOIN ALBONDIGA.BI_Tiempo TI ON TI.año = YEAR(P.fecha_y_hora) AND TI.cuatrimestre = ALBONDIGA.obtenerCuatrimestre(P.fecha_y_hora) AND TI.mes = MONTH(P.fecha_y_hora)
	JOIN ALBONDIGA.Ticket T ON T.id_ticket = P.id_ticket
	JOIN ALBONDIGA.Envio E ON E.id_ticket = T.id_ticket
	JOIN ALBONDIGA.Cliente C ON C.id_cliente = E.id_cliente
	JOIN ALBONDIGA.BI_Rango_Etario R ON R.descripcion_rango = ALBONDIGA.rangoEtario(ALBONDIGA.edadActual(C.fecha_nacimiento))
END
GO

/* --------------------------------------------- Creacion de vistas --------------------------------------------- */

--Ticket Promedio mensual. Valor promedio de las ventas (en $) según la localidad, año y mes. Se calcula en función de la sumatoria del importe de las ventas sobre el total de las mismas.
CREATE VIEW ALBONDIGA.V_TicketPromedioMensual AS
SELECT 
    TI.año,
	TI.mes,
    L.localidad,
    '$'+CAST(AVG(T.total_venta) as varchar) AS total_ventas
FROM ALBONDIGA.BI_Ticket T
JOIN ALBONDIGA.BI_Tiempo TI ON TI.id_tiempo = T.id_tiempo
JOIN ALBONDIGA.BI_Localidad L ON T.id_localidad = L.id_localidad
GROUP BY TI.año, TI.mes, L.localidad
GO

-- Cantidad unidades promedio. Cantidad promedio de artículos que se venden en función de los tickets según el turno para cada cuatrimestre de cada año. Se obtiene sumando la cantidad de 
-- artículos de todos los tickets correspondientes sobre la cantidad de tickets. Si un producto tiene más de una unidad en un ticket, para el indicador se consideran todas las unidades.
/*CREATE VIEW ALBONDIGA.V_CantidadUnidadesPromedio AS
SELECT T.año,
       T.cuatrimestre,
       TU.descripcion_turno,
       SUM(P.cantidad) / COUNT(DISTINCT TK.id_ticket) ????
FROM ALBONDIGA.BI_Ticket TK
JOIN ALBONDIGA.BI_Producto P ON TK.id_ticket = P.id_ticket ?????
JOIN ALBONDIGA.BI_Tiempo T ON TK.id_tiempo = T.id_tiempo
JOIN ALBONDIGA.BI_Turnos TU ON TU.id_turno = TK.id_turno
GROUP BY T.año, T.cuatrimestre, TU.descripcion_turno
GO*/


-- Porcentaje anual de ventas registradas por rango etario del empleado según el tipo de caja para cada cuatrimestre. Se calcula tomando la cantidad de ventas correspondientes sobre el total de ventas anual.
/*CREATE VIEW ALBONDIGA.V_VentasRangoEtarioAnual AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO
*/
-- Cantidad de ventas registradas por turno para cada localidad según el mes de cada año.
/*CREATE VIEW ALBONDIGA.V_VentasTurnoLocalidad AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

-- Porcentaje de descuento aplicados en función del total de los tickets según el mes de cada año.
/*CREATE VIEW ALBONDIGA.V_PorcentajeDescuentoMensual AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

-- Las tres categorías de productos con mayor descuento aplicado a partir de promociones para cada cuatrimestre de cada año.
/*CREATE VIEW ALBONDIGA.V_Top3CategoriasDescuento AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

-- Porcentaje de cumplimiento de envíos en los tiempos programados por sucursal por año/mes (desvío)
/*CREATE VIEW ALBONDIGA.V_CumplimientoEnvios AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

-- Cantidad de envíos por rango etario de clientes para cada cuatrimestre de cada año.
/*CREATE VIEW ALBONDIGA.V_EnviosRangoEtarioClientes AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

-- Las 5 localidades (tomando la localidad del cliente) con mayor costo de envío.
/*CREATE VIEW ALBONDIGA.V_Top5LocalidadesCostoEnvio AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

-- Las 3 sucursales con el mayor importe de pagos en cuotas, según el medio de pago, mes y año. Se calcula sumando los importes totales de todas las ventas en cuotas.
/*CREATE VIEW ALBONDIGA.V_Top3SucursalesPagosCuotas AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

-- Promedio de importe de la cuota en función del rango etareo del cliente.
/*CREATE VIEW ALBONDIGA.V_PromedioCuotaRangoEtario AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

-- Porcentaje de descuento aplicado por cada medio de pago en función del valor de total de pagos sin el descuento, por cuatrimestre. Es decir, total de descuentos 
-- sobre el total de pagos más el total de descuentos.
/*CREATE VIEW ALBONDIGA.V_PorcentajeDescuentoMedioPago AS
SELECT 1 from ALBONDIGA.BI_Categoria
GO*/

/* --------------------------------------------- Ejecución de la migración --------------------------------------------- */
EXEC ALBONDIGA.migrar_BI_Sucursal
EXEC ALBONDIGA.migrar_BI_Provincia
EXEC ALBONDIGA.migrar_BI_Localidad
EXEC ALBONDIGA.migrar_BI_Medio_Pago
EXEC ALBONDIGA.migrar_BI_Rango_Etario
EXEC ALBONDIGA.migrar_BI_Tiempo
EXEC ALBONDIGA.migrar_BI_Categoria
EXEC ALBONDIGA.migrar_BI_Turnos
EXEC ALBONDIGA.migrar_BI_SubCategoria
EXEC ALBONDIGA.migrar_BI_Ticket
--EXEC ALBONDIGA.migrar_BI_Producto ESTA EN BUCLE CREO, NO TERMINA MAS. ARREGLAR
EXEC ALBONDIGA.migrar_BI_Envio
--EXEC ALBONDIGA.migrar_BI_Pago NO FUNCIONA


-- ME PARECE QUE NECESITAMOS TRAERNOS LO DE LA CAJA Y LOS PRODUCTOS X TICKET
