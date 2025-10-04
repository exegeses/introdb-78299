# subconsultas - una consulta dentro de otra consulta
/*
implementamos la su consulta dentro de paréntesis
Del mismo modo que con las operaciones aritméticas,
el código dentro de los paréntesis se resuelve primeroDel mismo modo que con las operaciones aritméticas, el código dentro de los paréntesis se resuelve primero
*/

-- avg. average = promedio
SELECT producto, precio
    from productos
    WHERE precio < ( SELECT AVG(precio) FROM productos);

-- -------
SELECT
    producto,
    precio,
    ( precio - ( SELECT AVG(precio) FROM productos) )
        AS diferencia_con_promedio
FROM productos;

-- ------
SELECT producto, precio
FROM productos
WHERE precio = (
                    SELECT MAX(precio) FROM productos
                );

-- combinado con case
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