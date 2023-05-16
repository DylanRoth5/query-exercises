if OBJECT_ID('libros') is NOT NULL
    DROP TABLE libros;

CREATE TABLE libros(
    titulo VARCHAR(80),
    autor VARCHAR(40),
    editorial VARCHAR(30),
    precio FLOAT,
    cantidad integer
);

exec sp_columns libros;

insert into libros(titulo,autor,editorial,precio,cantidad) values ('milibro','borge','pluton',1500.50,200);
select * from libros;

insert into libros(titulo,autor,editorial,precio,cantidad) 
    values ('luna de pluton','dross','milibro',20000.99,200);
select * from libros;