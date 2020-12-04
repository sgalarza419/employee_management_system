-- Drops employee_db if it exists already
DROP DATABASE IF EXISTS employee_db;
-- Creates the "employee_db" database
CREATE DATABASE employee_db;

CREATE TABLE employee(
    id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    PRIMARY KEY (id)
);

-- Drops role_db if it exists already
DROP DATABASE IF EXISTS role_db;
-- Creates the "role_db" database
CREATE DATABASE role_db;

CREATE TABLE employee_role(
    id INT,
    title VARCHAR(30),
    salary VARCHAR(30),
    department_id INT,
    PRIMARY KEY (id)
);

-- Drops department_db if it exists already
DROP DATABASE IF EXISTS department_db;
-- Creates the "department_db" database
CREATE DATABASE department_db;

CREATE TABLE department(
    id INT,
    department_name VARCHAR(30),
    PRIMARY KEY (id)
);