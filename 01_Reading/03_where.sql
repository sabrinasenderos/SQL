-- Consulta 1:
-- SELECT * FROM users WHERE age = 21;
-- Filtra la tabla y muestra solo los usuarios cuya edad es 21.
-- WHERE se utiliza para aplicar condiciones y devolver solo los registros que cumplen esa condición.
SELECT * FROM users WHERE age = 21;

-- Consulta 2:
-- SELECT name FROM users WHERE age = 21;
-- Muestra únicamente el nombre de los usuarios que tienen 21 años.
-- Es útil cuando solo se necesita un campo concreto del conjunto filtrado.
SELECT name FROM users WHERE age = 21;

-- Consulta 3:
-- SELECT DISTINCT age FROM users WHERE age = 21;
-- Primero filtra por edad 21 y luego elimina valores repetidos.
-- En este caso, si existe, el resultado será solo 21.
SELECT DISTINCT age FROM users WHERE age = 21;