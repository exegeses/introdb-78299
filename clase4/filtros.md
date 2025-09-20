# Filtrado de resultados
> Filtrar resultados de una consulta significa que vamos a traer únicamente los registros que cumplan con una condición
> para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condicion

    SELECT campo, campo  
      FROM tabla  
      WHERE condicion;  

> Práctica: 
> obtener nombre y precio de los productos con un precio hasta 800

    SELECT producto, precio  
      FROM productos  
     WHERE precio <= 800;  

> obtener nombre y precio de los productos con un precio entre 100 y 800

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 100  
        AND precio <= 800;  

## Rangos 
> cuando queremos hacer una consulta que tenga un límite inferior y un límite superior, podemos utilizar la palabra reservada **BETWEEN**

    SELECT producto, precio  
      FROM productos  
     WHERE precio BETWEEN 100 AND 800;  

> obtener nombre y precio de producto de la marca Xiaomi (idMarca = 16)

    select producto, precio, idMarca 
      FROM productos  
      where idMarca = 16;  

> obtener nombre y precio de producto de la marca Xiaomi (idMarca = 16) y de la marca Amazon (idMarca = 11)

    select producto, precio, idMarca 
      FROM productos  
      where idMarca = 11    
        OR  idMarca = 16;  

> función IN()

    select producto, precio, idMarca 
      FROM productos  
      where idMarca IN(11, 16);  

### order de consulta: 
> nota: a la hora de escribir una consulta tenemos un orden que respetar

    SELECT [*, campo, campo]  
      FROM [tabla/s]
      WHERE condicion
      ORDER BY [campo]
    