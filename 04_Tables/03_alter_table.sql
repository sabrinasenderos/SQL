-- Consulta 1:
-- ALTER TABLE people8 ADD surname varchar (150);
-- Añade una nueva columna llamada surname a la tabla people8.
-- Se usa para ampliar la estructura de la tabla con un nuevo campo.
ALTER TABLE people8
ADD surname varchar (150);

-- Consulta 2:
-- ALTER TABLE people8 RENAME COLUMN surname TO description;
-- Renombra la columna surname por description.
-- Es útil cuando se quiere cambiar el nombre de un campo por uno más claro.
ALTER TABLE people8
RENAME COLUMN surname TO description;

-- Consulta 3:
-- ALTER TABLE people8 MODIFY COLUMN description varchar (250);
-- Cambia el tipo de dato o la longitud de la columna description.
-- Se usa para ajustar la estructura de la tabla a nuevas necesidades.
ALTER TABLE people8
MODIFY COLUMN description varchar (250);

-- Consulta 4:
-- ALTER TABLE people8 DROP COLUMN description;
-- Elimina la columna description de la tabla.
-- Se usa cuando ya no es necesaria la información almacenada en ese campo.
ALTER TABLE people8
DROP COLUMN description;