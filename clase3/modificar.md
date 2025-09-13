# Modificación de registros en SQL

> para modificar los datos de una tabla utilizamos el comando **UPDATE**
> debemos especificar un filtro utilizando la palabra reservada **WHERE** seguida de una condición


> Sintaxis:  

    UPDATE nombreTabla  
       SET  
           nombreCampo = valor,  
           nombreCampo2 = valor2  
     WHERE condición;  

> Ejemplo práctico  

    UPDATE proveedores  
       SET  
           razonSocial = 'Tecnored S.R.L'  
     WHERE idProveedor = 8;  

    UPDATE proveedores    
       SET  
            teleforno = '011-4555-1008',  
            email = 'info@mundotec.com'  
     WHERE  cuit = 30841234560;  