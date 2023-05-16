if OBJECT_ID('peliculas') is not NULL
    drop table peliculas;

create table peliculas(
    nombre VARCHAR(50),
    actor VARCHAR(50),
    duracion integer,
    cantidad INTEGER
);

exec sp_columns peliculas;

insert into peliculas (nombre,actor,duracion,cantidad)
    values ('mision','tom',128,3);
insert into peliculas (nombre,actor,duracion,cantidad)
    values ('beast','mister',120,8);
insert into peliculas (nombre,actor,duracion,cantidad)
    values ('kick','jerry',59,15);

select * from peliculas;