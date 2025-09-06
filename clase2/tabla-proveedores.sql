# script para la creación de la tabla proveedores

create table proveedores
(
    idProveedor tinyint unsigned auto_increment primary key,
    razonSocial varchar(60) not null,
    cuit bigint unsigned unique not null,
    telefono varchar(20) not null,
    email varchar(50) not null,
    direccion varchar(100) not null
);
