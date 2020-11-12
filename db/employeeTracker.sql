DROP DATABASE IF EXISTS employeeTracker;
CREATE DATABASE employeeTracker;

USE employeeTracker;

CREATE TABLE department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  d_name VARCHAR(30)
);

CREATE TABLE role (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  INDEX dep_ind (department_id),
);

CREATE TABLE employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  INDEX role_ind (role_id),
  manager_id INT,
  INDEX man_ind (manager_id),
);