-- Consulta 1:
-- SELECT * FROM users WHERE email IS NULL;
-- Muestra los usuarios cuyo campo email no tiene valor.
-- IS NULL se usa para comprobar valores nulos.
SELECT * FROM users WHERE email IS NULL;

-- Consulta 2:
-- SELECT * FROM users WHERE email IS NOT NULL;
-- Muestra los usuarios que tienen un email registrado.
-- IS NOT NULL indica que el valor no es nulo.
SELECT * FROM users WHERE email IS NOT NULL;

-- Consulta 3:
-- SELECT * FROM users WHERE email IS NOT NULL AND age=21;
-- Devuelve usuarios con email registrado y edad 21.
-- Aquí se combinan dos condiciones con AND.
SELECT * FROM users WHERE email IS NOT NULL AND age=21;

-- Consulta 4:
-- SELECT name, surname, IFNULL(age,0) AS age FROM users;
-- Muestra nombre, apellido y la edad, pero reemplaza los valores nulos por 0.
-- IFNULL(valor, reemplazo) sirve para evitar errores con datos vacíos.
SELECT name, surname, IFNULL(age,0) AS age FROM users;

