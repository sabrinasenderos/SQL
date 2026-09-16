-- Archivo: 01_create_table.sql
-- Este archivo muestra distintas formas de crear tablas en SQL.
-- Cada ejemplo añade restricciones y propiedades para controlar la estructura de los datos.

-- Tabla 1:
-- CREATE TABLE people (...);
-- Crea una tabla básica sin restricciones especiales.
-- Sirve como ejemplo mínimo de estructura de una tabla.
CREATE TABLE people (
    id int,
    name varchar (100),
    age int,
    email varchar (50),
    created date
);

-- Tabla 2:
-- CREATE TABLE people2 (...);
-- Crea una tabla con la columna id y name obligatorias (NOT NULL).
-- NOT NULL evita que los datos queden vacíos en esos campos.
CREATE TABLE people2 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created date
);

-- Tabla 3:
-- CREATE TABLE people3 (...);
-- Añade la restricción UNIQUE (id) para asegurar que no haya ids duplicados.
-- Esto evita repeticiones en la clave principal de ejemplo.
CREATE TABLE people3 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created datetime,
    UNIQUE (id)
);

-- Tabla 4:
-- CREATE TABLE people4 (...);
-- Define PRIMARY KEY(Id) para convertir id en clave primaria.
-- También mantiene la unicidad de cada registro.
CREATE TABLE people4 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE (id),
    PRIMARY KEY(Id)
);

-- Tabla 5:
-- CREATE TABLE people5 (...);
-- Añade CHECK (age>=18) para impedir registrar usuarios menores de edad.
-- CHECK valida que los valores cumplan una condición determinada.
CREATE TABLE people5 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE (id),
    PRIMARY KEY(Id),
    CHECK (age>=18)
);

-- Tabla 6:
-- CREATE TABLE people6 (...);
-- Hace que la columna created tome la fecha actual por defecto con DEFAULT CURRENT_TIMESTAMP().
-- Esto reduce errores al insertar registros nuevos.
CREATE TABLE people6 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (id),
    PRIMARY KEY(Id),
    CHECK (age>=18)
);

-- Tabla 7:
-- CREATE TABLE people7 (...);
-- Usa AUTO_INCREMENT para que id aumente automáticamente cada vez que se inserta un registro.
-- Es muy útil para claves primarias numéricas.
CREATE TABLE people7 (
    id int NOT NULL AUTO_INCREMENT,
    name varchar (100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (id),
    PRIMARY KEY(Id),
    CHECK (age>=18)
);