CREATE TABLE department (
  id INTEGER  AUTO_INCREMENT NOT NULL,
  dept_name VARCHAR(30) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INTEGER AUTO_INCREMENT NOT NULL,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department (id),
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INTEGER AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INTEGER NULL,
  manager_id INTEGER NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES role(id)
);