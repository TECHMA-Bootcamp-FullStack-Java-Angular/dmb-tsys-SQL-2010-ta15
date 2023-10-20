drop database if exists ta15_03;

create database ta15_03;

use ta15_03;

CREATE TABLE cientificos (
    DNI VARCHAR(8),
    NomApels NVARCHAR(255),
    PRIMARY KEY (DNI)
);

CREATE TABLE proyecto (
    Id CHAR(4),
    Nombre NVARCHAR(255),
    Horas INT,
    PRIMARY KEY (ID)
);

CREATE TABLE asignado_a (
    Cientifico VARCHAR(8),
    Proyecto CHAR(4),
    PRIMARY KEY (Cientifico , Proyecto),
    FOREIGN KEY (Cientifico)
        REFERENCES cientificos (DNI)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (Proyecto)
        REFERENCES proyecto (Id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- INSERT para la tabla cientificos
INSERT INTO cientificos (DNI, NomApels) VALUES 
('11111111', 'Juan Pérez'),
('22222222', 'María Rodríguez'),
('33333333', 'Pedro Sánchez'),
('44444444', 'Ana García'),
('55555555', 'Carlos López');

-- INSERT para la tabla proyecto
INSERT INTO proyecto (Id, Nombre, Horas) VALUES 
('P001', 'Proyecto A', 100),
('P002', 'Proyecto B', 200),
('P003', 'Proyecto C', 150),
('P004', 'Proyecto D', 120),
('P005', 'Proyecto E', 180);

-- INSERT para la tabla asignado_a
INSERT INTO asignado_a (Cientifico, Proyecto) VALUES 
('11111111', 'P001'),
('22222222', 'P002'),
('33333333', 'P003'),
('44444444', 'P004'),
('55555555', 'P005');
