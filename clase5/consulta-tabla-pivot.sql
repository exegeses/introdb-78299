# consulta a través de una tabla pivot
/*
    Obtener producto, precio (tabla productos)
    Razón social, teléfono (tabla proveedores)
*/
select producto, precio, razonsocial, telefono
from productos
join productos_proveedores
  on productos.idProducto = productos_proveedores.idProducto
join proveedores
  on productos_proveedores.idProveedor = proveedores.idProveedor;