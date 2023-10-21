DROP DATABASE IF EXISTS ud14_ej2;

CREATE DATABASE IF NOT EXISTS ud14_ej2;

USE ud14_ej2;

CREATE TABLE piezas (
  codigo INT  primary key,
  nombre VARCHAR(15) NOT NULL
);

CREATE TABLE proveedores(
  id VARCHAR(15) primary key,
  nombre VARCHAR(15) NOT NULL
);

CREATE TABLE suministra (
  codigo_pieza INT, 
  id_proveedor VARCHAR(10), 
  precio DOUBLE,
  FOREIGN KEY ( codigo_pieza ) REFERENCES piezas (codigo)  on delete cascade on update cascade,
  FOREIGN KEY ( id_proveedor ) REFERENCES proveedores ( id )  on delete cascade on update cascade,
 PRIMARY KEY (codigo_pieza, id_proveedor )
);

INSERT INTO piezas (codigo, nombre)
VALUES
    (1, 'Tornillo'),
    (2, 'Arandela'),
    (3, 'Tuerca'),
    (4, 'Pasador'),
    (5, 'Remache'),
    (6, 'Perno'),
    (7, 'Brida'),
    (8, 'Clavo'),
    (9, 'Bisagra'),
    (10, 'Junta');

INSERT INTO proveedores (id, nombre)
VALUES
    ('A001', 'Proveedor 1'),
    ('A002', 'Proveedor 2'),
    ('A003', 'Proveedor 3'),
    ('A004', 'Proveedor 4'),
    ('A005', 'Proveedor 5'),
    ('A006', 'Proveedor 6'),
    ('A007', 'Proveedor 7'),
    ('A008', 'Proveedor 8'),
    ('A009', 'Proveedor 9'),
    ('A010', 'Proveedor 10');

INSERT INTO suministra (codigo_pieza, id_proveedor, precio)
VALUES
    (1, 'A001', 100),
    (2, 'A002', 50),
    (3, 'A003', 20),
    (4, 'A004', 30),
    (5, 'A005', 200),
    (6, 'A006', 80),
    (7, 'A007', 150),
    (8, 'A008', 75),
    (9, 'A009', 60);