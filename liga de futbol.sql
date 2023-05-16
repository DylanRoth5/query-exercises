-- create table Pais(
--     idPais int primary KEY,
--     Nombre char(35) not null
-- )
-- exec sp_columns Pais;
-- select * from Pais;

-- create table Provincia(
--     idProvincia int primary key,
--     Nombre char(35) not null,
--     idPais int FOREIGN KEY REFERENCES Pais(idPais)
-- )

-- exec sp_columns Provincia
-- select * from Provincia


-- create table Localidad(
--     idLocalidad int primary key,
--     Nombre char(35) not null,
--     idProvincia int FOREIGN KEY REFERENCES Provincia(idProvincia)
-- )

-- exec sp_columns Localidad
-- select * from Localidad

-- create table Estadio(
--     idEstadio int primary key,
--     Nombre char(35) not null,
--     capacidad int not null,
--     fechaCreacion date not null,
-- )

-- exec sp_columns Estadio
-- select * from Estadio


-- create table Equipo(
--     idEquipo int primary key,
--     Nombre char(35) not null,
--     fechaFundacion date not null,
--     idLocalidad int FOREIGN KEY REFERENCES Localidad(idLocalidad)
-- )

-- alter table Equipo
-- ADD idEstadio int FOREIGN key REFERENCES Estadio(idEstadio)

-- exec sp_columns Equipo
-- select * from Equipo


-- create table Posicion(
--     idPosicion int primary key,
--     Nombre char(35) not null,
-- )

-- exec sp_columns Posicion
-- select * from Posicion


-- create table Jugador(
--     idJugador int primary key,
--     Nombre char(35) not null,
--     Apellido char(35) not null,
--     DNI varchar(8) not null,
--     fechaNacimiento date not null,
--     idPosicion int FOREIGN KEY REFERENCES Posicion(idPosicion)
-- )

-- exec sp_columns Jugador
-- select * from Jugador

-- create table Plantel(
--     idPlantel int primary key,
--     fechaDesde date not null,
--     fechaHasta date,
--     idJugador int FOREIGN KEY REFERENCES Jugador(idJugador),
--     idEquipo int FOREIGN KEY REFERENCES Equipo(idEquipo)
-- )

-- exec sp_columns Plantel
-- select * from Plantel

-- create table Temporada(
--     idTemporada int primary key,
--     cantidadFechas int not null,
--     FechaInicio date not null,
--     FechaFin date not null
-- )

-- exec sp_columns Temporada
-- select * from Temporada

-- create table Partido(
--     idPartido int primary key,
--     NroFecha date not null,
--     Fecha date not null,
--     idTemporada int FOREIGN KEY REFERENCES Temporada(idTemporada)
-- )

-- exec sp_columns Partido
-- select * from Partido

-- create table PartidoPlantel(
--     idPartidoPlantel int primary key,
--     Locale char(35) not null,
--     Titular char(35) not null,
--     idPartido int FOREIGN KEY REFERENCES Partido(idPartido),
--     idPlantel int FOREIGN KEY REFERENCES Plantel(idPlantel)
-- )

-- exec sp_columns PartidoPlantel
-- select * from PartidoPlantel

-- create table Gol(
--     idGol int primary key,
--     minuto time not null,
--     idPartidoPlantel int FOREIGN KEY REFERENCES PartidoPlantel(idPartidoPlantel)
-- )

-- exec sp_columns Gol
-- select * from Gol


-- create table Tarjeta(
--     idTarjeta int primary key,
--     minuto time not null,
--     TipoTarjeta varchar(8),
--     idPartidoPlantel int FOREIGN KEY REFERENCES PartidoPlantel(idPartidoPlantel)
-- )

-- exec sp_columns Tarjeta
-- select * from Tarjeta