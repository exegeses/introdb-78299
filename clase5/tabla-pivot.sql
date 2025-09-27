# tabla intermedia o pivot
create table productos_proveedores
(
    idProducto mediumint unsigned not null,
    idProveedor tinyint unsigned not null,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores (idProveedor)
);