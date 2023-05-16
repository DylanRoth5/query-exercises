-- if OBJECT_ID('cancionesDB') is not NULL
use master;
alter database cancionesDB set single_user with rollback immediate;

