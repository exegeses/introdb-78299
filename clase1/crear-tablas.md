# Crear tablas en sql

> Para crear una tabla dentro de una base de datos utilizamos el comando **CREATE TABLE**

> Nota: para poder interactuar con una base de datos debemos activarla primero
> para activar una base de datos utilizamos el comando:

    USE nombreBase;  

> Sintaxis:

    CREATE TABLE nombreTabla  
    (
        nombreCampo tipoDato [modificadores],  
        nombreCampo2 tipoDato [modificadores],  
        nombreCampo3 tipoDato [modificadores],  
        nombreCampoX tipoDato [modificadores]  
    );  

> Ejemplo práctico:

    CREATE TABLE personas  
    (  
        id int auto_increment primary key,  
        apellido varchar(40) not null,  
        nombre varchar(50) not null,  
        dni int unique not null,  
        alta date not null
    );  