-- Consulta 1:
-- SELECT * FROM users LIMIT 3;
-- Muestra únicamente las primeras 3 filas de la tabla users.
-- LIMIT se usa para restringir la cantidad de resultados que se devuelven.
SELECT * FROM users LIMIT 3;

-- Consulta 2:
-- SELECT * FROM users WHERE NOT email='@gmail.com' OR age=21 LIMIT 2;
-- Primero filtra usuarios según las condiciones indicadas.
-- Luego limita la salida a 2 resultados.
SELECT * FROM users WHERE NOT email='@gmail.com' OR age=21 LIMIT 2;

