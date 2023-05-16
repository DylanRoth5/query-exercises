if OBJECT_ID('empleados') is not NULL
    drop table empleados;

create table empleados(
    nombre varchar(30),
    documento varchar(8),
    sexo varchar(1),
    domicilio VARCHAR(40),
    sueldobasico float
);

exec sp_columns empleados;

insert into empleados (nombre,documento,sexo,domicilio,sueldobasico)
    values ('juan',4364578,'m','san martin',500);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico)
    values ('ana',3476580,'f','tom y jerry',8600);
insert into empleados (nombre,documento,sexo,domicilio,sueldobasico)
    values ('paula',467375,'f','la loma',15);

select * from empleados