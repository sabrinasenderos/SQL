-- Consulta 1:
-- SELECT * FROM users WHERE email LIKE '%gmail.com';
-- Busca todos los usuarios cuyo email termina en gmail.com.
-- El símbolo % indica que puede haber cualquier texto antes o después.
SELECT * FROM users WHERE email LIKE '%gmail.com';

-- Consulta 2:
-- SELECT * FROM users WHERE email LIKE 'alex%';
-- Busca todos los emails que empiezan por "alex".
-- El % al final indica que puede continuar con cualquier texto después.
SELECT * FROM users WHERE email LIKE 'alex%';

-- Consulta 3:
-- SELECT * FROM users WHERE email LIKE '%@%';
-- Busca todos los emails que contienen el símbolo @.
-- Sirve para comprobar si un campo tiene formato de correo.
SELECT * FROM users WHERE email LIKE '%@%';

