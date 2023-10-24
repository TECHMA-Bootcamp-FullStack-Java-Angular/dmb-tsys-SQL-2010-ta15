drop database if exists investigadores;

create database if not exists investigadores ;

use investigadores;

CREATE TABLE facultad (
    codigo INT AUTO_INCREMENT,
    nombre NVARCHAR(100),
    PRIMARY KEY (codigo)
);

CREATE TABLE investigadores (
    dni VARCHAR(8),
    nomApels NVARCHAR(255),
    facultad INT,
    FOREIGN KEY (facultad)
        REFERENCES facultad (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (dni)
);

CREATE TABLE equipos (
    numSerie CHAR(4),
    nombre NVARCHAR(100),
    facultad INT,
    FOREIGN KEY (facultad)
        REFERENCES facultad (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (numSerie)
);

CREATE TABLE reserva (
    dni VARCHAR(8),
    numSerie CHAR(4),
    comienzo DATETIME,
    fin DATETIME,
    FOREIGN KEY (dni)
        REFERENCES investigadores (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (numSerie)
        REFERENCES equipos (numSerie)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (dni , numSerie)
);
    
insert into facultad (nombre) values ('Facultad de Bellas Artes');
insert into facultad (nombre) values ('Facultad de Filosofía');
insert into facultad (nombre) values ('Facultad de Biología');
insert into facultad (nombre) values ('Facultad de Matemáticas');
insert into facultad (nombre) values ('Facultad de Geología');
insert into facultad (nombre) values ('Facultad de Arquitectura');
insert into facultad (nombre) values ('Facultad de Letras');
insert into facultad (nombre) values ('Facultad de Psicología');
insert into facultad (nombre) values ('Facultad de Ciencias de la Computación');
insert into facultad (nombre) values ('Facultad de Economía');

insert into investigadores (dni, nomApels, facultad) values ('38706882', 'Aubert Bunting', 1);
insert into investigadores (dni, nomApels, facultad) values ('86929171', 'Ricki Gribble', 2);
insert into investigadores (dni, nomApels, facultad) values ('30922133', 'Isabelle Kohnemann', 3);
insert into investigadores (dni, nomApels, facultad) values ('82703769', 'Van Cheverton', 4);
insert into investigadores (dni, nomApels, facultad) values ('49706511', 'Dorolice Skelly', 5);
insert into investigadores (dni, nomApels, facultad) values ('80436578', 'Cori Venable', 6);
insert into investigadores (dni, nomApels, facultad) values ('40378753', 'Xenia Warlaw', 7);
insert into investigadores (dni, nomApels, facultad) values ('71204916', 'Carey McNuff', 8);
insert into investigadores (dni, nomApels, facultad) values ('49115641', 'Dov Waterhouse', 9);
insert into investigadores (dni, nomApels, facultad) values ('48935752', 'Prissie Stoak', 10);

insert into equipos (numSerie, nombre, facultad) values ('UH08', 'Equipo Chi', 1);
insert into equipos (numSerie, nombre, facultad) values ('AP26', 'Equipo Epsilon', 2);
insert into equipos (numSerie, nombre, facultad) values ('VC56', 'Equipo Theta', 3);
insert into equipos (numSerie, nombre, facultad) values ('QU65', 'Equipo Phi', 4);
insert into equipos (numSerie, nombre, facultad) values ('DU22', 'Equipo Zeta', 5);
insert into equipos (numSerie, nombre, facultad) values ('LS08', 'Equipo Alpha', 6);
insert into equipos (numSerie, nombre, facultad) values ('QL93', 'Equipo Psi', 7);
insert into equipos (numSerie, nombre, facultad) values ('OC05', 'Equipo Lambda', 8);
insert into equipos (numSerie, nombre, facultad) values ('DB94', 'Equipo Kappa', 9);
insert into equipos (numSerie, nombre, facultad) values ('HI75', 'Equipo Omega', 10);

insert into reserva (dni, numSerie, comienzo, fin) values ('38706882', 'UH08', '2023-09-30', '2024-07-21');
insert into reserva (dni, numSerie, comienzo, fin) values ('71204916', 'UH08', '2023-01-17', '2024-03-04');
insert into reserva (dni, numSerie, comienzo, fin) values ('86929171', 'DU22', '2023-07-19', '2023-12-22');
insert into reserva (dni, numSerie, comienzo, fin) values ('86929171', 'QU65', '2023-12-22', null);
insert into reserva (dni, numSerie, comienzo, fin) values ('49706511', 'QU65', '2022-11-26', '2024-02-07');
insert into reserva (dni, numSerie, comienzo, fin) values ('48935752', 'HI75', '2023-09-18', null);
insert into reserva (dni, numSerie, comienzo, fin) values ('30922133', 'AP26', '2023-08-23', '2024-06-04');
insert into reserva (dni, numSerie, comienzo, fin) values ('30922133', 'LS08', '2023-09-05', '2024-03-20');
insert into reserva (dni, numSerie, comienzo, fin) values ('49115641', 'AP26', '2023-10-20', null);
insert into reserva (dni, numSerie, comienzo, fin) values ('82703769', 'AP26', '2022-11-20', '2024-02-20');