# consulta
/*
    titulo, nombre, anio
*/
SELECT titulo, nombre, anio
FROM libros
JOIN libros_autores
  ON libros.idLibro = libros_autores.idLibro
JOIN autores
  ON libros_autores.idAutor = autores.idAutor;

/*
    titulo, nombre, anio
    genero, editorial
*/
SELECT
        titulo,
        nombre,
        anio,
        genero,
        editorial
from libros as l
join generos as g
on g.idGenero = l.idGenero
join editoriales as e
on e.idEditorial = l.idEditorial
join libros_autores as la
on l.idLibro = la.idLibro
join autores as a
    on a.idAutor = la.idAutor;

