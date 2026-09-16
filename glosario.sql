-- GLOSARIO SQL
-- Este archivo reúne las funciones y sentencias más importantes que hemos visto en el proyecto.
-- Su objetivo es servir como referencia rápida para recordar qué hace cada una y cómo se usa.

-- 1) SELECT
-- Se usa para consultar datos de una o varias columnas de una tabla.
-- Ejemplo:
SELECT * FROM users;
SELECT name FROM users;

-- 2) DISTINCT
-- Elimina filas duplicadas en los resultados.
-- Ejemplo:
SELECT DISTINCT age FROM users;

-- 3) WHERE
-- Filtra los registros según una condición.
-- Ejemplo:
SELECT * FROM users WHERE age = 21;

-- 4) ORDER BY
-- Ordena el resultado por una columna.
-- ASC = ascendente, DESC = descendente.
-- Ejemplo:
SELECT * FROM users ORDER BY age ASC;
SELECT * FROM users ORDER BY age DESC;

-- 5) LIKE
-- Busca patrones de texto dentro de una columna.
-- % representa cualquier combinación de caracteres.
-- Ejemplo:
SELECT * FROM users WHERE email LIKE '%gmail.com';
SELECT * FROM users WHERE email LIKE 'alex%';

-- 6) AND, OR, NOT
-- Permiten combinar varias condiciones lógicas.
-- AND: todas deben cumplirse.
-- OR: basta con que se cumpla una.
-- NOT: invierte una condición.
-- Ejemplo:
SELECT * FROM users WHERE age > 18 AND email IS NOT NULL;
SELECT * FROM users WHERE NOT email = 'sabrina@gmail.com';

-- 7) LIMIT
-- Limita el número de filas devueltas.
-- Ejemplo:
SELECT * FROM users LIMIT 3;

-- 8) IS NULL / IS NOT NULL
-- Se usan para comprobar si un valor es nulo o no.
-- Ejemplo:
SELECT * FROM users WHERE email IS NULL;
SELECT * FROM users WHERE email IS NOT NULL;

-- 9) IFNULL()
-- Reemplaza un valor NULL por otro valor indicado.
-- Ejemplo:
SELECT name, IFNULL(age, 0) AS age FROM users;

-- 10) MAX() y MIN()
-- Devuelven el valor máximo o mínimo de una columna.
-- Ejemplo:
SELECT MAX(age) FROM users;
SELECT MIN(age) FROM users;

-- 11) COUNT()
-- Cuenta registros.
-- COUNT(*) cuenta todas las filas.
-- COUNT(columna) cuenta solo valores no nulos.
-- Ejemplo:
SELECT COUNT(*) FROM users;
SELECT COUNT(age) FROM users;

-- 12) SUM()
-- Suma los valores de una columna numérica.
-- Ejemplo:
SELECT SUM(age) FROM users;

-- 13) AVG()
-- Calcula la media de una columna numérica.
-- Ejemplo:
SELECT AVG(age) FROM users;

-- 14) IN
-- Comprueba si un valor está dentro de una lista de posibilidades.
-- Ejemplo:
SELECT * FROM users WHERE name IN ('sabrina', 'alex');

-- 15) BETWEEN
-- Selecciona valores dentro de un rango.
-- Ejemplo:
SELECT * FROM users WHERE age BETWEEN 20 AND 25;

-- 16) AS
-- Crea alias para columnas o expresiones.
-- Ejemplo:
SELECT name AS nombre FROM users;
SELECT CONCAT(name, surname) AS nombre_completo FROM users;

-- 17) CONCAT()
-- Une varios textos o columnas en una sola cadena.
-- Ejemplo:
SELECT CONCAT('Nombre: ', name, ', Apellido: ', surname) FROM users;

-- 18) GROUP BY
-- Agrupa filas por un valor concreto para hacer cálculos por grupo.
-- Ejemplo:
SELECT COUNT(age), age FROM users GROUP BY age;

-- 19) HAVING
-- Filtra resultados de consultas con funciones agregadas.
-- Ejemplo:
SELECT COUNT(age) FROM users HAVING COUNT(age) > 4;

-- 20) CASE
-- Permite crear condiciones tipo IF/ELSE dentro de SQL.
-- Ejemplo:
SELECT *,
CASE
    WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;

-- 21) CREATE TABLE
-- Crea una nueva tabla con sus columnas y restricciones.
-- Ejemplo:
CREATE TABLE people (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(50),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY (id)
);

-- 22) NOT NULL
-- Indica que una columna no puede quedar vacía.
-- Ejemplo:
CREATE TABLE people2 (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL
);

-- 23) UNIQUE
-- Evita valores duplicados en una columna o conjunto de columnas.
-- Ejemplo:
CREATE TABLE people3 (
    id INT NOT NULL,
    UNIQUE (id)
);

-- 24) PRIMARY KEY
-- Define la clave principal de una tabla.
-- Identifica de forma única cada fila.
-- Ejemplo:
CREATE TABLE people4 (
    id INT NOT NULL,
    PRIMARY KEY (id)
);

-- 25) CHECK
-- Comprueba que un valor cumple una condición.
-- Ejemplo:
CREATE TABLE people5 (
    age INT,
    CHECK (age >= 18)
);

-- 26) DEFAULT
-- Asigna un valor por defecto si no se especifica uno al insertar datos.
-- Ejemplo:
CREATE TABLE people6 (
    created DATETIME DEFAULT CURRENT_TIMESTAMP()
);

-- 27) AUTO_INCREMENT
-- Genera un valor numérico automáticamente y creciente.
-- Ejemplo:
CREATE TABLE people7 (
    id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id)
);

-- 28) ALTER TABLE
-- Permite modificar la estructura de una tabla.
-- Se puede añadir, renombrar o eliminar columnas.
-- Ejemplo:
ALTER TABLE people8 ADD surname VARCHAR(150);
ALTER TABLE people8 RENAME COLUMN surname TO description;
ALTER TABLE people8 DROP COLUMN description;

-- 29) DROP TABLE
-- Elimina una tabla y todos sus datos.
-- Ejemplo:
DROP TABLE people8;

-- 30) FOREIGN KEY
-- Crea una relación entre dos tablas para asegurar integridad referencial.
-- Ejemplo:
CREATE TABLE companies (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

ALTER TABLE users
ADD CONSTRAINT fk_Companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);

-- 31) RELACIONES 1:1, 1:N y N:N
-- 1:1: cada registro de una tabla se relaciona con uno de otra.
-- 1:N: un registro de una tabla puede estar relacionado con muchos de otra.
-- N:N: muchos registros de una tabla pueden relacionarse con muchos de otra por medio de una tabla intermedia.
-- Ejemplo:
CREATE TABLE users_languages (
    user_id INT,
    language_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);

-- Consejos de uso:
-- - Usa SELECT para leer datos.
-- - Usa WHERE para filtrar.
-- - Usa GROUP BY para agrupar.
-- - Usa HAVING para filtrar resultados agregados.
-- - Usa CASE para condiciones complejas.
-- - Usa FOREIGN KEY para mantener relaciones entre tablas.
-- - Usa CHECK, NOT NULL y UNIQUE para garantizar la calidad de los datos.
