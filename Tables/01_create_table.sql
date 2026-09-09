CREATE TABLE people (
    id int,
    name varchar (100),
    age int,
    email varchar (50),
    created date
);

CREATE TABLE people2 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created date
);

CREATE TABLE people3 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar (50),
    created datetime,
    UNIQUE (id)
);

CREATE TABLE people4 (
    id int NOT NULL,
    name varchar (100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE (id),
    PRIMARY KEY(Id)
);

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