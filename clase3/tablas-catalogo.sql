# tablas proyecto catalogo

create table marcas
(
    idMarca smallint unsigned primary key auto_increment,
    marca varchar(45) unique not null
);

create table categorias
(
    idCategoria smallint unsigned primary key auto_increment,
    categoria varchar(45) unique not null
);

create table productos
(
    idProducto mediumint unsigned primary key auto_increment,
    producto varchar(45) unique not null,
    precio decimal(10,2) not null,
    idMarca smallint unsigned not null,
    idCategoria smallint unsigned not null,
    descripcion varchar(100) not null,
    imagen varchar(45) not null,
    activo boolean not null,
    -- relaciones
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);