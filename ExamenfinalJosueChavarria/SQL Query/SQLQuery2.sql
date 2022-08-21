--Crear DB
CREATE DATABASE ExamenFinal

--Crear Tablas
CREATE TABLE Mae_Articulos
(
	Codigo_Articulo INT IDENTITY(1,1) PRIMARY KEY,
	Descripcion_Articulo VARCHAR(30),
	Codigo_Tipo INT,
	Precio_Articulo MONEY,
	Costo_Articulo MONEY,
	cantidad INT
	constraint fk_Codigo_Tipo Foreign key (Codigo_Tipo) References Tipo_Articulo(Codigo_Tipo) /* LLave forenea */
)

CREATE TABLE Tipo_Articulo
(
	Codigo_Tipo INT IDENTITY(1,1) PRIMARY KEY,
	Descripcion_tipo VARCHAR(50)

)

CREATE TABLE Usuarios
(
	Codigo_Usuario INT IDENTITY(1,1) PRIMARY KEY,
	Nombre_Usuario VARCHAR(30),
	Clave_Usuario VARCHAR(30)unique,
	Tipo_Usuario INT
	constraint fk_Tipo_Usuario Foreign key (Tipo_Usuario) References Tipos_Usuario(Codigo_tipoUsuario) /* LLave forenea */

)

CREATE TABLE Tipos_Usuario
(
	Codigo_tipoUsuario INT IDENTITY(1,1) PRIMARY KEY,
	Descripcion_tipoUsuario VARCHAR(30)
)

create TABLE ARTICULOSAuditoria
(
	Codigo_Articulo INT IDENTITY(1,1) PRIMARY KEY,
	Descripcion_Articulo VARCHAR(30),
	Codigo_Tipo INT,
	Precio_Articulo MONEY,
	Costo_Articulo MONEY,
	cantidad INT,
	Fecha date,
	Motivo varchar(30)
)

--Stored Procedure

CREATE PROCEDURE Login
@USUARIO varchar(30),
@CLAVE varchar(30)
AS
	BEGIN
		SELECT Nombre_Usuario, Clave_Usuario, Tipo_Usuario from Usuarios where Nombre_Usuario = @USUARIO and Clave_Usuario = @CLAVE
	END

CREATE PROCEDURE Check
@USUARIO varchar(30)
AS
	BEGIN
		SELECT Tipo_Usuario from Usuarios where Nombre_Usuario = @USUARIO
	END

CREATE PROCEDURE ConsultarArticulo
AS
	BEGIN
		SELECT * From Mae_Articulos
	END

CREATE PROCEDURE ConsultarTipoArticulo
AS
	BEGIN
		SELECT * From Tipo_Articulo
	END

CREATE PROCEDURE ConsultarUsuarios
AS
	BEGIN
		SELECT * From Usuarios
	END

CREATE PROCEDURE ConsultarTipoUsuario
AS
	BEGIN
		SELECT * From Tipos_Usuario
	END

CREATE PROC ADDUSERS
	@USUARIO varchar(30),
	@CLAVE varchar(30),
	@TUSUARIO INT
 AS
	BEGIN
		INSERT INTO Usuarios(Nombre_Usuario,Clave_Usuario,Tipo_Usuario) values (@USUARIO,@CLAVE,@TUSUARIO)
	END

Create PROC AddArticulos
	@Descripcion varchar(30),
	@PRECIO money,
	@Costo money,
	@TipoArti int,
	@Cantidad int
 AS
	BEGIN
		INSERT INTO Mae_Articulos(Descripcion_Articulo,Codigo_Tipo,Precio_Articulo,Costo_Articulo,cantidad) values (@Descripcion,@TipoArti,@PRECIO,@Costo,@Cantidad)
	END	

CREATE PROC AddTipoArticulo
	@Descripcion varchar(30)
 AS
	BEGIN
		INSERT INTO Tipo_Articulo(Descripcion_tipo) values (@Descripcion)
END

CREATE PROC AddTipoUsuario
	@Descripcion varchar(30)
 AS
	BEGIN
		INSERT INTO Tipos_Usuario(Decripcion_tipoUsuario) values (@Descripcion)
	END	

	
CREATE PROC DelUsers
	@USUARIO varchar(30),
	@CODIGO int
 AS
	BEGIN
		DELETE From Usuarios where Nombre_Usuario = @USUARIO and Codigo_Usuario = @CODIGO
	END

CREATE PROC DelTipoUsers
	@CODIGO int
 AS
	BEGIN
		DELETE From Tipos_Usuario where Codigo_tipoUsuario = @CODIGO
	END

CREATE PROC DelTipoArticulos
	@CODIGO int
 AS
	BEGIN
		DELETE From Tipo_Articulo where Codigo_Tipo = @CODIGO
	END

CREATE PROC DelArticulos
	@Codigo int
 AS
	BEGIN
		DELETE from Mae_Articulos where Codigo_Articulo = @CODIGO
	END	

CREATE PROC UpdUsuarios
	@USUARIO varchar(30),
	@CLAVE varchar(30),
	@TUSUARIO INT,
	@Codigo int
 AS
	BEGIN
		UPDATE Usuarios SET Nombre_Usuario = @USUARIO, Clave_Usuario = @CLAVE where Codigo_Usuario = @Codigo
	END

CREATE PROC UpdTipoUsuarios
	@Descripcion varchar(30),
	@Codigo int
 AS
	BEGIN
		UPDATE Tipos_Usuario SET Decripcion_tipoUsuario = @Descripcion where Codigo_tipoUsuario = @Codigo
	END

CREATE PROC UpdTipoArticulos
	@Descripcion varchar(30),
	@Codigo int
 AS
	BEGIN
		UPDATE Tipo_Articulo SET Descripcion_tipo = @Descripcion where Codigo_Tipo = @Codigo
	END

CREATE PROC UpdArticulos
	@Descripcion varchar(30),
	@TipArti int,
	@PRECIO money,
	@Costo money,
	@Cantidad int,
	@Codigo int
 AS
	BEGIN
		UPDATE Mae_Articulos SET Descripcion_Articulo = @Descripcion, Codigo_Tipo = @TipArti, Precio_Articulo = @PRECIO, Costo_Articulo = @Costo, cantidad = @Cantidad where Codigo_Articulo = @Codigo
	END

CREATE PROC RepoCostoInv
AS
	BEGIN
		SELECT Descripcion_Articulo, Costo_Articulo, cantidad, cantidad * Costo_Articulo as [COSTO DE INVENTARIO]
		From Mae_Articulos
	END

CREATE PROC RepoProyGanan
AS
	BEGIN
		SELECT Descripcion_Articulo, Costo_Articulo, cantidad, cantidad * Costo_Articulo as [COSTO DE INVENTARIO], Precio_Articulo * cantidad as [Valor de la Venta], (Precio_Articulo * cantidad) - (cantidad * Costo_Articulo) as [GANANCIAS] 
		From Mae_Articulos
	END

CREATE PROC RepoArticulos
AS
	BEGIN
		SELECT MA.Codigo_Articulo, MA.Descripcion_Articulo, MA.Precio_Articulo, MA.Costo_Articulo, MA.cantidad, MA.Codigo_Tipo, TP.Descripcion_Tipo
		From Mae_Articulos MA
		inner join Tipo_Articulo TP on TP.Codigo_Tipo = MA.Codigo_Tipo

	END

-- Triggers

CREATE trigger Trigger_Articulos
 on Mae_Articulos
 After Insert, Delete
 as 
   begin
		SET NOCOUNT ON;
		insert into ARTICULOSAuditoria (Descripcion_Articulo, Codigo_Tipo, Precio_Articulo, Costo_Articulo, cantidad, Fecha,MOTIVO)
		select i.Descripcion_Articulo, i.Codigo_Tipo, i.Precio_Articulo, i.Costo_Articulo, i.cantidad, GETDATE(), 'AGREGADO' from inserted i
		union all
		select d.Descripcion_Articulo, d.Codigo_Tipo, d.Precio_Articulo, d.Costo_Articulo, d.cantidad, GETDATE(), 'BORRADO' from deleted d
   end

Select * From Tipos_Usuario