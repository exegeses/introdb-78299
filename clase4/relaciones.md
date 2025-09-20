# Consultas con relaciones entre tablas

> si queremos consultar datos provenientes de dos o más tablas debemos relacionar dichas tablas
> para lograrlo tenemos dos técnicas

## Table relation

> Para lograr esta técnica debemos mencionar en el listado de las tablas (después del **FROM**)
todas las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**) igualamos la clave foránea de la tabla principal con la clave primaria de la tabla secundaria

    SELECT colTabla1, colTabla1, colTabla2
      FROM tabla1, tabla2  
     WHERE tabla1.fk = tabla2.pk; 

    SELECT colTabla1, colTabla1, colTabla2, colTabla3
      FROM tabla1, tabla2, tabla3  
     WHERE tabla1.fk = tabla2.pk  
       AND tabla1.fk = tabla3.pk;  

> Ejemplo práctico: 
> obtener producto, precio, marca, categoria


    SELECT producto, precio, marca  
      FROM productos, marcas  
     WHERE productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, categoria  
      FROM productos, categorias  
     WHERE productos.idCategoria = categorias.idCategoria;

    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
     WHERE productos.idMarca = marcas.idMarca  
       AND productos.idCategoria = categorias.idCategoria; 


## Join