-- Consulta 1:
-- SELECT * FROM users HAVING age > 30;
-- Filtra resultados usando una condición sobre columnas o agregados.
-- HAVING se utiliza normalmente cuando se trabaja con GROUP BY o funciones agregadas.
SELECT * FROM users HAVING age > 30;

-- Consulta 2:
-- SELECT COUNT(age) FROM users HAVING COUNT(age) > 4;
-- Cuenta cuántos valores de edad existen.
-- Luego muestra el resultado solo si el conteo es mayor que 4.
SELECT COUNT(age) FROM users HAVING COUNT(age) > 4;

