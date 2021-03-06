DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  -- CREATE id, name COLUMNS
  id INT auto_increment,
  department VARCHAR(30),
  PRIMARY KEY (id)
);

CREATE TABLE role (
  -- CREATE id AS INTERGER,
  id INT auto_increment,
  -- title AS VARCHAR
  title VARCHAR(30),
  -- salary AS DECIMAL
  salary DECIMAL(10,2),
  -- department_id AS INTEGER
  department_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES department(id)
  -- MAKE department_id AS FOREIGN KEY REFERENCING department TABLE AND
  -- MAKE AN CONSTRAINT 'ON DELETEN CASCADE' (WITHOUT QUOTES) ON THIS FOREIGN KEY
);

CREATE TABLE employee (
  -- CREATE COLUMNS
  --  id AS INT
  id INT auto_increment,
  --  first_name AS VARCHAR 
  first_name VARCHAR(30),
  -- last_name AS VARCHAR
  last_name VARCHAR(30),
  --  role_id AS INTEGER
  role_id INT,
  -- manager_id AS INT
  manager_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES role(id)
  -- MAKE role_id AS FOREIGN KEY REFERENCING role TABLE AND MAKE CONSTRAINT ON DELETE CASCADE ON THIS FOREIGN KEY
  -- MAKE manager_id AS FOREIGN KEY REFERENCING employee TABLE ITSELF AND MAKE CONSTRAINT ON DELETE SET NULL ON THIS FOREIGN KEY
);