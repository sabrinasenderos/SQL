SELECT name, int_date AS 'fecha de inicio de programación' FROM users WHERE age BETWEEN 20 AND 25

SELECT name, int_date AS "fecha de inicio de programación" FROM users WHERE name="sabrina" 

SELECT CONCAT(name,surname)FROM users

SELECT CONCAT('Nombre: ', name,', Apellido: ', surname) FROM users

SELECT CONCAT('Nombre: ', name,', Apellido: ', surname) AS 'Nombre completo' FROM users