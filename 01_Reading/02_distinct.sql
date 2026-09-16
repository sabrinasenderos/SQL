-- Consulta 1:
-- SELECT DISTINCT * FROM users;
-- Esta consulta elimina filas duplicadas y muestra solo una vez cada registro repetido.
-- Se usa para evitar resultados repetidos cuando la tabla contiene datos duplicados.
SELECT DISTINCT * FROM users;

-- Consulta 2:
-- SELECT DISTINCT age FROM users;
-- Esta consulta muestra solo las edades distintas que existen en la tabla.
-- Es útil para saber qué valores únicos tiene la columna age.
SELECT DISTINCT age FROM users;

-- Consulta 3:
-- SELECT DISTINCT name FROM users;
-- Esta consulta devuelve los nombres únicos de la tabla users.
-- Sirve para identificar valores diferentes en una columna sin repetirlos.
SELECT DISTINCT name FROM users;
