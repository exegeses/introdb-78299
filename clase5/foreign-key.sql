# creación de foreign keys
-- para crear una foreign keys tenemos dos maneras de hacerlo

-- opción a
create table nombreTabla
(
    id smallint unsigned auto_increment primary key,
    nombre varchar(50) not null,
    idTabla2 tinyint unsigned not null,
    foreign key (idTabla2) references tabla2 (idTabla2)
);

-- opción b
create table nombreTabla
(
    id smallint unsigned auto_increment,
    nombre varchar(50) not null,
    idTabla2 tinyint unsigned not null,
    primary key (id),
    foreign key (idTabla2) references tabla2 (idTabla2)
);
