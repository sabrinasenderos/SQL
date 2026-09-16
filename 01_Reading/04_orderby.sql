-- Consulta 1:
-- SELECT * FROM users ORDER BY age;
-- Ordena los usuarios por la columna age.
-- Si no se indica ASC o DESC, por defecto se ordena de forma ascendente.
SELECT * FROM users ORDER BY age;

-- Consulta 2:
-- SELECT * FROM users ORDER BY age ASC;
-- Ordena los resultados de menor a mayor edad de manera explícita.
-- ASC significa ascendente.
SELECT * FROM users ORDER BY age ASC;

-- Consulta 3:
-- SELECT * FROM users ORDER BY age DESC;
-- Ordena los resultados de mayor a menor edad.
-- DESC significa descendente.
SELECT * FROM users ORDER BY age DESC;

-- Consulta 4:
-- SELECT * FROM users WHERE email='alex123@gmail.com' ORDER BY age DESC;
-- Primero filtra por el email indicado y luego ordena el resultado por edad descendente.
-- Se usa para buscar un usuario concreto y organizar sus resultados.
SELECT * FROM users WHERE email='alex123@gmail.com' ORDER BY age DESC;

-- Consulta 5:
-- SELECT name FROM users WHERE email='alex123@gmail.com' ORDER BY age DESC;
-- Busca al usuario con el email indicado y muestra solo su nombre.
-- Luego ordena el resultado por edad descendente.
SELECT name FROM users WHERE email='alex123@gmail.com' ORDER BY age DESC;

