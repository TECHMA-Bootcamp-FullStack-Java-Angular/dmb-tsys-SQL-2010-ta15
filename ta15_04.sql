drop database if exists ta15_04;

create database ta15_04;

use ta15_04;

CREATE TABLE productos (
    Codigo INT AUTO_INCREMENT,
    Nombre NVARCHAR(100) NOT NULL,
    Precio INT NOT NULL,
    PRIMARY KEY (Codigo)
);

CREATE TABLE cajeros (
    Codigo INT AUTO_INCREMENT,
    NomApels NVARCHAR(255) NOT NULL,
    PRIMARY KEY (Codigo)
);

CREATE TABLE maquinas_registradores (
    Codigo INT AUTO_INCREMENT,
    Piso INT NOT NULL,
    PRIMARY KEY (Codigo)
);

CREATE TABLE venta (
    Cajero INT,
    Maquina INT,
    Producto INT,
    PRIMARY KEY (Cajero , Maquina , Producto),
    FOREIGN KEY (Cajero)
        REFERENCES cajeros (Codigo)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (Maquina)
        REFERENCES maquinas_registradores (Codigo)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (Producto)
        REFERENCES productos (Codigo)
        ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO productos (Nombre, Precio) VALUES
('Producto 1', 100),
('Producto 2', 200),
('Producto 3', 150),
('Producto 4', 120),
('Producto 5', 180),
('Producto 6', 220),
('Producto 7', 130),
('Producto 8', 90),
('Producto 9', 250),
('Producto 10', 175);


INSERT INTO cajeros (NomApels) VALUES
('Cajero 1'),
('Cajero 2'),
('Cajero 3'),
('Cajero 4'),
('Cajero 5'),
('Cajero 6'),
('Cajero 7'),
('Cajero 8'),
('Cajero 9'),
('Cajero 10');

INSERT INTO maquinas_registradores (Piso) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

INSERT INTO venta (Cajero, Maquina, Producto) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 3),
(2, 1, 4),
(3, 2, 5),
(4, 5, 6),
(5, 6, 7),
(6, 7, 8),
(7, 8, 9),
(8, 9, 10);