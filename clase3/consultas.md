# consultas en SQL

> Podemos realizar consultas
1. Servidor de base de datos
2. Base de datos
3. Tablas
4. Vistas

## Consultas a Server

    -- listar todas las bases de datos de nuestro server  
    show databases;

> la palabra reservada más importante o al menos la más utilizada para las consultas es **SELECT**

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a bases  

    -- listar todas las tablas de una base
    show tables;

## Consultas a tablas

    -- mostrar la estructura de una tabla  
    describe nombreTabla
    
> para realizar consultas a una tabla y que nos devuelva una grilla de resultados 
> vamos a utilizar la palabra reservada **SELECT** acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;    
    SELECT * FROM marcas;  
    SELECT * FROM proveedores;  

> cuando luego de la palabra **SELECT** utilizamos * (arterisco)
> vamos a traer los datos de todas las columnas que contenga esa tabla
> sin embargo en algunas ocasiones vamos a necesitar traer datos de únicamente algunas de las columnas (no todas)
> vamos a necesitar especificar luego de la palabra **SELECT** cada una de las columnas separadas por comas (en lugar de *)

    SELECT campo, campo, campo  
        FROM tabla;  

    SELECT razonSocial, telefono   
        from proveedores;  

    SELECT producto, precio  
      FROM productos;

### orden de resultados
> Para ordenar los resultados según una columna en particular tenemos el modificador **ORDER BY**

    SELECT * FROM marcas  
      ORDER BY idMarca;  

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio;  

> si luego del modificador **ORDER BY** 
> utilizamos la palabra **DESC** vamos a generar un orden descendente

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio DESC;  

> Podemos usar dos creiterios de orden

    SELECT producto, precio  
      FROM productos  
      ORDER BY idMarca, precio;  
