if OBJECT_ID('usuarios') is NOT NULL
    DROP TABLE usuarios;

CREATE TABLE usuarios(
    nombre VARCHAR(30),
    clave VARCHAR(10)
);

INSERT into usuarios(nombre,clave) VALUES('dylan','005');

SELECT * FROM usuarios;

INSERT into usuarios(nombre,clave) VALUES('valen','45');

SELECT * FROM usuarios;