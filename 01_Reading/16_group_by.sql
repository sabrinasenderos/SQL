-- Consulta 1:
-- SELECT MAX(age) FROM users GROUP BY age;
-- Agrupa los usuarios por edad y devuelve el valor máximo de cada grupo.
-- GROUP BY se usa para agrupar filas con el mismo valor en una columna.
SELECT MAX(age) FROM users GROUP BY age;

-- Consulta 2:
-- SELECT COUNT(age), age FROM users GROUP BY age;
-- Cuenta cuántos usuarios hay por cada edad.
-- La agrupación permite obtener resultados por cada valor distinto de age.
SELECT COUNT(age), age FROM users GROUP BY age;

-- Consulta 3:
-- SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC;
-- Cuenta por edad y ordena el resultado de menor a mayor edad.
-- ORDER BY se aplica después de la agrupación.
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC;

-- Consulta 4:
-- SELECT COUNT(age), age FROM users WHERE age > 22 GROUP BY age ORDER BY age ASC;
-- Primero filtra usuarios mayores de 22 años.
-- Después agrupa por edad y muestra cuántos hay en cada grupo.
SELECT COUNT(age), age FROM users WHERE age > 22 GROUP BY age ORDER BY age ASC;