-- Consulta 1:
-- SELECT * FROM users WHERE NOT email='sabrina@gmail.com';
-- Muestra todos los usuarios que NO tienen ese correo electrónico.
-- NOT invierte la condición.
SELECT * FROM users WHERE NOT email='sabrina@gmail.com';

-- Consulta 2:
-- SELECT * FROM users WHERE NOT email='sabrina@gmail.com' AND age=21;
-- Muestra usuarios que no tienen ese email y además tienen 21 años.
-- AND exige que se cumplan ambas condiciones a la vez.
SELECT * FROM users WHERE NOT email='sabrina@gmail.com' AND age=21;

-- Consulta 3:
-- SELECT * FROM users WHERE NOT email='sabrina@gmail.com' OR age=21;
-- Muestra usuarios que no tienen ese email o que tienen 21 años.
-- OR devuelve resultados si cumple al menos una de las dos condiciones.
SELECT * FROM users WHERE NOT email='sabrina@gmail.com' OR age=21;