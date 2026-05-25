-- Crear la base de datos del diagrama Reservas.png.
drop database if exists Hotel;
create database Hotel;
use Hotel;
-- Ingresar registros de prueba.
drop table if exists Huespedes;
drop table if exists Habitacion;
drop table if exists Reservas;

create table Huespedes(
codigo   int auto_increment primary key,
nombre   varchar(45),
apellido varchar(45),
correo   varchar(45),
direccion varchar(45),
ciudad   varchar(45),
pais     varchar(45),
telefono double
);

insert into Huespedes (nombre,apellido,correo,direccion,ciudad,pais,telefono) values
	('Jose','Pare','Jpare23','Servin 2123','BsAs','ARG',5491123435455);
insert into Huespedes (nombre,apellido,correo,direccion,ciudad,pais,telefono) values
	('Julia','Perez','PerezJU98','Porto abregu 98','Sao Paulo','BRA',551145676432);
insert into Huespedes (nombre,apellido,correo,direccion,ciudad,pais,telefono) values
	('Sam','Willys','wsam1996','Suipacha 123','BsAs','ARG',5491133445432);
insert into Huespedes (nombre,apellido,correo,direccion,ciudad,pais,telefono) values
	('Jose','Pare','Jpare23','Servin 2123','BsAs','ARG',5491123435455);
insert into Huespedes (nombre,apellido,correo,direccion,ciudad,pais,telefono) values
	('Marco','Fontella','FONTmarc23','Plaza Iturria 3455','Santa Fe','ARG',5493412349988);
insert into Huespedes (nombre,apellido,correo,direccion,ciudad,pais,telefono) values
	('Paula','Pare','pupias212','Corrales 2323','T.D.F','ARG',54911234352123);
        

create table habitacion(
codigo int auto_increment primary key,
precio double,
piso int,
max_personas tinyint,
cunas  tinyint,
ducha  tinyint,
baño   tinyint,
balcon tinyint
);
    insert into habitacion(precio,piso,max_personas,cunas,ducha,baño,balcon) values
    (120,'2',3,0,1,1,0);
    insert into habitacion(precio,piso,max_personas,cunas,ducha,baño,balcon) values
    (200,'6',4,1,1,1,1);
    insert into habitacion(precio,piso,max_personas,cunas,ducha,baño,balcon) values
    (90,'1',1,0,1,1,0);
    insert into habitacion(precio,piso,max_personas,cunas,ducha,baño,balcon) values
    (450,'10',5,2,2,2,1);
    insert into habitacion(precio,piso,max_personas,cunas,ducha,baño,balcon) values
    (125,'0',5,1,1,1,0);
    insert into habitacion(precio,piso,max_personas,cunas,ducha,baño,balcon) values
    (30,'1',1,0,0,1,0);


create table reservas(
reserva int,
inicio_fecha datetime,
fin_fecha    datetime,
habitacion   int,
huesped      int
);
INSERT INTO Reservas (reservaid, inicio_fecha, fin_fecha, habitacion, huesped) VALUES 
 (234,'2023-08-19','2023-10-19',234,'Juan G');
INSERT INTO Reservas (reservaid, inicio_fecha, fin_fecha, habitacion, huesped) VALUES 
 (222,'2024-05-12','2024-07-19',266,'Luis G');
INSERT INTO Reservas (reservaid, inicio_fecha, fin_fecha, habitacion, huesped) VALUES 
 (290,'2021-08-13','2021-10-12',123,'Juan B');
INSERT INTO Reservas (reservaid, inicio_fecha, fin_fecha, habitacion, huesped) VALUES 
 (454,'2013-08-19','2013-10-19',242,'Julio V');
INSERT INTO Reservas (reservaid, inicio_fecha, fin_fecha, habitacion, huesped) VALUES 
 (234,'2023-08-22','2023-10-23',209,'Jose V');
 
    

show tables;
select * from huespedes;
select * from reservas;
select * from habitacion;
-- Realizar consultas de prueba.
-- 1 -crear Cocina en habitacion
alter table habitacion add cocina varchar(10) after baño;
-- 2 cuantas habitaciones tienen balcon 
select count(*) cantidad_de_habitaciones;
-- 3 -borrar el huesped Paula pare de la tabla Huespedes
delete from huespedes where nombre='Paula Pare';
-- 4 -agregar cantidad de acompañantes en tabla huespedes
alter table huespedes add acompañantes varchar(10);
-- 5 - crear campo precio en la tabla reservas
alter table reservas add precio varchar(5);