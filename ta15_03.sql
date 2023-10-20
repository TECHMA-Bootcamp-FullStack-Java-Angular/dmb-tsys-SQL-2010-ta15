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


INSERT INTO cientificos (DNI, NomApels) VALUES 
('11111111', 'Juan Pérez'),
('22222222', 'María Rodríguez'),
('33333333', 'Pedro Sánchez'),
('44444444', 'Ana García'),
('55555555', 'Carlos López'),
('66666666', 'Laura Martínez'),
('77777777', 'Luis González'),
('88888888', 'Elena Fernández'),
('99999999', 'Javier Pérez'),
('10101010', 'Jordi Garcia');


INSERT INTO proyecto (Id, Nombre, Horas) VALUES 
('P001', 'Proyecto A', 100),
('P002', 'Proyecto B', 200),
('P003', 'Proyecto C', 150),
('P004', 'Proyecto D', 120),
('P005', 'Proyecto E', 180),
('P006', 'Proyecto F', 220),
('P007', 'Proyecto G', 130),
('P008', 'Proyecto H', 190),
('P009', 'Proyecto I', 140),
('P010', 'Proyecto J', 250);


INSERT INTO asignado_a (Cientifico, Proyecto) VALUES 
('11111111', 'P001'),
('22222222', 'P002'),
('33333333', 'P003'),
('44444444', 'P004'),
('55555555', 'P005'),
('66666666', 'P006'),
('77777777', 'P007'),
('88888888', 'P008'),
('99999999', 'P009'),
('10101010', 'P010');
