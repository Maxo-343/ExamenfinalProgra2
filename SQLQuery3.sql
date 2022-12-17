Create database Vehiculo

use Vehiculo


create table Placa
(
	IDplaca int identity,
	NumPlaca nvarchar(6),
	Idusuario int,
	Monto money default 0,
	constraint Pk_IDplaca Primary key(IDplaca),
	constraint Fk_Idusuario Foreign key(Idusuario) References Usuarios(IDusuarios),
)

alter table Placa add constraint UQ_Placa_NumPlaca unique (NumPlaca);

create table Usuarios
(
	IDusuarios int identity,
	Usuario varchar (50),
	Clave varchar (30),
	Nombre varchar (50),
	Apellido varchar (50),
	constraint Pk_IDusuarios Primary key(IDusuarios),
)

alter table	Usuarios add constraint UQ_Usuarios_Usuario unique (Usuario);

create procedure ConsultarUsuario
  as
    begin
	select IDusuarios, Usuario, Clave, Nombre, Apellido from Usuarios
	end

Create procedure InsertarUsuario
  @Usuarios varchar(50),
  @Clave varchar(30),
  @Nombre varchar(50), 
  @Apellido varchar (50)
  as
    begin
	insert into Usuarios (Usuario, Clave, Nombre, Apellido) values (@Usuarios, @Clave, @Nombre, @Apellido)
	end

create procedure BorrarUsuario
  @Codigo int
  as
    begin
	delete Usuarios where IDusuarios=@Codigo 
	end

Exec BorrarUsuario 1
Exec InsertarUsuario 'MTR', '123', 'Max', 'Torres'
Exec ConsultarUsuario

create procedure ConsultarPlaca
  as
    begin
	select IDplaca, NumPlaca, Idusuario, Monto from Placa
	end

Create procedure InsertarPlaca
  @NumPlaca nvarchar(6),
  @IDusuario int,
  @Monto money
  as
    begin
	insert into Placa (NumPlaca, Idusuario, Monto) values (@NumPlaca, @IDusuario, @Monto)
	end

create procedure BorrarPlaca
  @Codigo int
  as
    begin
	delete Placa where IDplaca=@Codigo 
	end

Exec BorrarPlaca 3
Exec InsertarPlaca '126743', 4, 5000
Exec ConsultarPlaca