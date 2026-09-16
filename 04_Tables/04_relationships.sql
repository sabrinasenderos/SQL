-- Relación 1:1
-- CREATE TABLE dni(...);
-- Crea una tabla que almacena el documento de identidad de un usuario.
-- La relación 1:1 significa que cada usuario tiene un único DNI y cada DNI pertenece a un único usuario.
CREATE TABLE dni(
dni_id int AUTO_INCREMENT PRIMARY KEY,
number_id varchar(9) NOT NULL,
user_id int,
UNIQUE(dni_id),
FOREIGN KEY(user_id) REFERENCES users(user_id)
);

-- Relación 1:N
-- CREATE TABLE companies (...);
-- La tabla companies almacena empresas, cada una con un identificador único.
-- Esta relación 1:N se usa cuando una empresa puede tener muchos usuarios.
CREATE TABLE companies (
company_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(100) NOT NULL
);

-- ALTER TABLE users ... FOREIGN KEY(company_id) REFERENCES companies(company_id);
-- Añade una clave foránea a la tabla users para relacionar cada usuario con una empresa.
-- La referencia asegura que company_id exista en la tabla companies.
ALTER TABLE users 
ADD CONSTRAINT fk_Companies
FOREIGN KEY(company_id) REFERENCES companies(company_id)

-- Relación N:N
-- CREATE TABLE languages (...);
-- La tabla languages guarda los idiomas disponibles.
-- CREATE TABLE users_languages (...);
-- Esta tabla intermedia vincula usuarios y lenguajes, permitiendo una relación muchos a muchos.
-- Un usuario puede saber varios idiomas y cada idioma puede estar asociado a muchos usuarios.
CREATE TABLE languages (
language_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(100) NOT NULL
);

CREATE TABLE users_languages (
    users_language_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    language_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    UNIQUE (user_id, language_id)
);

-- INSERT

INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
INSERT INTO dni (dni_number) VALUES (44444444);

INSERT INTO companies (name) VALUES ('Random');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

UPDATE users SET company_id=1 WHERE user_id =1;
UPDATE users SET company_id=2 WHERE user_id =3;
UPDATE users SET company_id=3 WHERE user_id =5;
UPDATE users SET company_id=1 WHERE user_id =7

INSERT INTO languages (name) VALUES ('english');
INSERT INTO languages (name) VALUES ('spanish');
INSERT INTO languages (name) VALUES ('chinese');
INSERT INTO languages (name) VALUES ('portuguese');
INSERT INTO languages (name) VALUES ('french');
INSERT INTO languages (name) VALUES ('german');

INSERT INTO users_languages (user_id, language_id) VALUES (1, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 5);