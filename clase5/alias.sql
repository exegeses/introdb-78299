# Alias en SQL
/*
Podemos renombrar el iniciado de una columna utilizando un alias
La columna no se va a renombrar de manera permanente
sino que es únicamente para el reporte
Podemos implementar un alias con la palabra reservada **AS**
*/

SELECT
       idProducto AS id,
       producto AS Producto,
       precio AS Contado,
       precio * 1.05 AS Lista,
       marca AS Marca,
       categoria AS Categoría
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria;

-- también podemos utilizar alias para los nombres de las tablas
SELECT
    idProducto AS id,
    producto AS Producto,
    precio AS Contado,
    precio * 1.05 AS Lista,
    marca AS Marca,
    categoria AS Categoría
FROM productos AS p
 JOIN marcas AS m
    ON p.idMarca = m.idMarca
 JOIN categorias AS c
    ON p.idCategoria = c.idCategoria;