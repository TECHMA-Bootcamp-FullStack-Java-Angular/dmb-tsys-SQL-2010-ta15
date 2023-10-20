-- drop database ud14_ej1;

CREATE DATABASE IF NOT EXISTS ud14_ej1;

USE ud14_ej1;

CREATE TABLE despachos (
  ID INT auto_increment primary key,
  capacidad int
);


CREATE TABLE  director (
  DNI VARCHAR(10) primary key,
  nombre_apellidos VARCHAR(100),
  despacho INT,
  DNI_jefe VARCHAR(10),
  FOREIGN KEY (DNI_jefe) REFERENCES director (DNI)  on delete cascade on update cascade
);


INSERT INTO despachos (capacidad) VALUES
	(50),
	(10),
	(10),
	(5),
	(5),
	(60),
	(10),
	(5),
	(5),
	(5),
	(6),
	(6);

INSERT INTO director (DNI, nombre_apellidos, despacho, DNI_jefe) VALUES
	("12345678A", "Sergi Alberich", 1 , null),
	("12345678J", "Robert López Machuca", 6, "12345678A"),
    ("12345678B", "Ainara Blanco Iza", 1, "12345678J"),
    ("12345678C", "Jan Campo-Cossío", 1, null),
    ("12345678D", "Alejandro Carayol Rodriguez", 1, null),
    ("12345678E", "Manel Castellví Cerezuela", 4, "12345678A"),
    ("12345678F", "Joan Carles Escobar", 5, "12345678A"),
    ("12345678G", "Adrián Gallego Morillas", 6, "12345678A"),
    ("12345678H", "Asier González Arranz", 5, "12345678J"),
    ("12345678I", "Jordi Mallafre Gazquez", 6, "12345678J"),
    ("12345678K", "Marc Pellicer", 10, "12345678A"),
    ("12345678L", "Oriol Melo Santanà", 11, "12345678A"),
    ("12345678M", "Carla Velasco Fabregas", 12, "12345678A"); 