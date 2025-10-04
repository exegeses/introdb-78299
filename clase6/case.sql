# consulta usando CASE .... WHEN ... THEN
SELECT producto, precio,
       CASE
           WHEN precio <= 100 THEN 'precio BAJO'
           WHEN precio >= 600 THEN 'precio ALTO'
           ELSE 'precio MEDIO'
       END AS 'rango de precios'
FROM productos
ORDER BY precio;

-- combinado con subconsulta
SELECT
    producto,
    precio,
    (precio - (SELECT AVG(precio) FROM productos)) AS diferencia_con_promedio,
    CASE
        WHEN (precio - (SELECT AVG(precio) FROM productos)) > 0
            THEN 'más caro'
        WHEN (precio - (SELECT AVG(precio) FROM productos)) < 0
            THEN 'más barato'
        ELSE 'igual al promedio'
        END AS comparacion
FROM productos;