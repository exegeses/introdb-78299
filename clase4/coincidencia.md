# consultas de coincidencia

> las consultas de coincidencia se utilizan para obtener registros que como condición contenga una cadena de caractéres

> vamos a traer las columnas producto, precio y descripción de todos los productos que en la columna descripcion contengan la palabra "inalámbrico"

    SELECT producto, precio, descripcion  
      FROM productos    
      WHERE descripcion LIKE '%inalambrico%';

> utilizamos la palabra reservada **LIKE**
> (en vez del símbolo **=**)
> en combinación con el caracter **%** (porcentaje)
> como una especie de comodín que podría ocupar 1 (uno), varios o incluso ningún carácter