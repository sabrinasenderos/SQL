-- Comando que nos sirve para obtener los datos comunes de ambas tablas.

SELECT * FROM users
INNER JOIN dni;

--Este es el inner join reflejado en una tabla 1:1
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

-- Se puede escribir sin el 'INNER'
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

-- Más ejemplos de inner join junto a otros commandos, podemos hacerlos tan complejos como queramos
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC;

SELECT name, number_id FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

-- INNER JOIN 1:N
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

--puedes hacerlo del revés solo que te saldrá la misma información pero en diferente orden
SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

SELECT companies.name, users.name FROM companies
JOIN users
ON companies.company_id = users.company_id;

SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

SELECT users.name, languages.name
FROM users
JOIN users_languages ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;