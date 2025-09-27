# Proyecto biblioteca personal

> Vamos a planificar un proyecto de una biblioteca personal donde vamos a almacenar títulos de varios libros

> Podríamos crear una tabla llamada libros
> lista tabla podríamos tener columnas para almacenar
1. título
2. año de publicación
3. género literario
4. compañía editorial
5. isbn

> tablas propuestas:

    -- tabla generos 
    CREATE TABLE generos 
    ( 
        idGenero TINYINT UNSIGNED NOT NULL AUTO_INCREMENT, 
        genero VARCHAR(30) NOT NULL, 
        PRIMARY KEY (idGenero) 
    );

    -- tabla editoriales
    CREATE TABLE editoriales (
        idEditorial TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
        editorial VARCHAR(50) NOT NULL,
        PRIMARY KEY (idEditorial)
    );
    
    -- tabla libros
    CREATE TABLE libros 
    (
        idLibro SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
        titulo VARCHAR(100) NOT NULL,
        anio DATE,
        idGenero TINYINT UNSIGNED NOT NULL,
        idEditorial TINYINT UNSIGNED NOT NULL,
        isbn VARCHAR(20) NOT NULL,
        PRIMARY KEY (idLibro),
        UNIQUE KEY uk_isbn (isbn), 

        CONSTRAINT fk_libros_genero
        FOREIGN KEY (idGenero) REFERENCES generos (idGenero)
        CONSTRAINT fk_libros_editorial
        FOREIGN KEY (idEditorial) REFERENCES editoriales (idEditorial)
    );