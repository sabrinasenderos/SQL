-- Consulta 1:
-- SELECT name, int_date AS 'fecha de inicio de programación' FROM users WHERE age BETWEEN 20 AND 25;
-- Muestra el nombre y la fecha de inicio, pero renombra la columna con un alias más claro.
-- AS sirve para cambiar el nombre de la salida en la consulta.
SELECT name, int_date AS 'fecha de inicio de programación' FROM users WHERE age BETWEEN 20 AND 25;

-- Consulta 2:
-- SELECT name, int_date AS "fecha de inicio de programación" FROM users WHERE name="sabrina";
-- Muestra la fecha de inicio de la persona llamada sabrina.
-- También usa un alias para hacer más legible la columna.
SELECT name, int_date AS "fecha de inicio de programación" FROM users WHERE name="sabrina";

-- Consulta 3:
-- SELECT CONCAT(name,surname) FROM users;
-- Une el nombre y el apellido en una sola columna.
-- CONCAT permite concatenar texto o valores de columnas.
SELECT CONCAT(name,surname) FROM users;

-- Consulta 4:
-- SELECT CONCAT('Nombre: ', name,', Apellido: ', surname) FROM users;
-- Genera una cadena con texto fijo más los valores de las columnas name y surname.
-- Se usa para crear textos legibles a partir de datos.
SELECT CONCAT('Nombre: ', name,', Apellido: ', surname) FROM users;

-- Consulta 5:
-- SELECT CONCAT('Nombre: ', name,', Apellido: ', surname) AS 'Nombre completo' FROM users;
-- Crea una salida formateada con el nombre completo y le asigna el alias 'Nombre completo'.
-- Es útil para que la consulta se entienda mejor visualmente.
SELECT CONCAT('Nombre: ', name,', Apellido: ', surname) AS 'Nombre completo' FROM users;