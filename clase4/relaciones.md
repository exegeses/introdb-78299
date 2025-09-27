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

> Para lograr esta técnica vamos a mencionar en el listado de tablas (después del **FROM**) únicamente la prabla principal
> luego vamos a utilizar la palabra **JOIN** para mencionar la tabla secundaria
> Y luego después de la palabra **ON** igualamos la clave foránea de la tabla principal con la clave primaria de la tabla secundaria
> (podríamos decir que cada **JOIN** tiene un **ON**)

    SELECT colTabla1, colTabla1, colTabla2
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk; 

    SELECT colTabla1, colTabla1, colTabla2, colTabla3   
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk
      JOIN tabla3  
        ON tabla1.fk = tabla3.pk;

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, categoria  
      FROM productos  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;

    SELECT producto, precio, marca, categoria  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  
