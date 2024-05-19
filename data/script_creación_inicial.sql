use
GD1C2024
go

/*********************** Limpiar tablas ***********************/
/*IF EXISTS (SELECT name FROM sys.tables WHERE name = 'localidadxrepartidor')
DROP TABLE MargeCreoQueOdioGDD.localidadxrepartidor;
*/

/*********************** Limpiar Store Procedures ***********************/
/*IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'migrar_tipos_medio_pagos')
    DROP PROCEDURE MargeCreoQueOdioGDD.migrar_tipos_medio_pagos;
GO*/

/*********************** Limpiar Funciones ***********************/
/*IF EXISTS(SELECT [name] FROM sys.objects WHERE [name] = 'obtenerFechaReciente')
	DROP FUNCTION MargeCreoQueOdioGDD.obtenerFechaReciente
GO*/

/*********************** Limpiar Schema ***********************/
IF EXISTS (SELECT name FROM sys.schemas WHERE name = 'ALBONDIGA')
BEGIN
	DROP SCHEMA ALBONDIGA
END
GO

/*********************** Creacion de Schema ***********************/
CREATE SCHEMA ALBONDIGA;
GO

/*********************** Creacion de tablas ***********************/

/*********************** Agregamos las FKs ***********************/
/*ALTER TABLE MargeCreoQueOdioGDD.local
ADD CONSTRAINT FK_DIRECCION_LOCAL
FOREIGN KEY (ID_DIRECCION) REFERENCES MargeCreoQueOdioGDD.direccion
*/

/*********************** Creamos Funciones ***********************/

/*********************** Creamos los stores procedures ***********************/

/*********************** Realizamos la ejecución de los stores procedures ***********************/