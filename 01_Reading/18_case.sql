-- Consulta 1:
-- SELECT *, CASE WHEN age > 17 THEN 'Es mayor de edad' ELSE 'Es menor de edad' END AS agetext FROM users;
-- Evalúa si cada usuario es mayor de edad.
-- Si la edad es mayor que 17, devuelve 'Es mayor de edad'; si no, devuelve 'Es menor de edad'.
-- CASE funciona como una estructura IF/ELSE dentro de SQL.
SELECT *,
CASE
WHEN age > 17 THEN ('Es mayor de edad')
ELSE 'Es menor de edad'
END AS agetext
FROM users;

-- Consulta 2:
-- SELECT *, CASE WHEN age > 18 THEN 'Es mayor de edad' WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad' ELSE 'Es menor de edad' END AS '¿Es mayor de edad?' FROM users;
-- Evalúa varias condiciones para clasificar a cada usuario según su edad.
-- Esta versión permite distinguir entre mayor de edad y recién cumplido 18 años.
SELECT *,
CASE
WHEN age > 18 THEN 'Es mayor de edad'
WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad'
ELSE 'Es menor de edad'
END AS '¿Es mayor de edad?'
FROM users;

-- Consulta 3:
-- SELECT *, CASE WHEN age > 17 THEN True ELSE False END AS '¿Es mayor de edad?' FROM users;
-- Devuelve un valor booleano para indicar si cada usuario es mayor de edad.
-- Es útil cuando necesitamos una respuesta lógica de tipo verdadero/falso.
SELECT *,
CASE
WHEN age > 17 THEN True
ELSE False
END AS '¿Es mayor de edad?'
FROM users;
