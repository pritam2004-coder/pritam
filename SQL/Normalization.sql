create database ProjectManagementSystem;
use ProjectManagementSystem;
drop database ProjectManagementSystem;

CREATE TABLE departments (
dept_id INT PRIMARY KEY AUTO_INCREMENT,
dept_name VARCHAR(225) NOT NULL, 
location VARCHAR(225)
);

CREATE TABLE employees (
emp_id INT PRIMARY KEY AUTO_INCREMENT, 
emp_name VARCHAR(225) NOT NULL, 
dept_id INT, 
salary DECIMAL,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE projects (
proj_id INT PRIMARY KEY AUTO_INCREMENT, 
proj_name VARCHAR(225) NOT NULL, 
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE employee_project (
    emp_id INT,
    proj_id INT,
    assigned_date DATE,
    PRIMARY KEY (emp_id, proj_id),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (proj_id) REFERENCES projects(proj_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


drop table departments;
drop table employees;
drop table projects;
drop table employee_project;

INSERT INTO departments (dept_name, location) VALUES
('HR', 'Mumbai'),
('Finance', 'Delhi'),
('IT', 'Bangalore'),
('Marketing', 'Pune'),
('Operations', 'Hyderabad');

INSERT INTO employees (emp_name, dept_id, salary) VALUES
('Amit Sharma', 1, 450000),
('Neha Patel', 2, 55000),
('Rajesh Kumar', 3, 60000),
('Priya Singh', 3, 52000),
('Ankit Verma', 4, 48000),
('Sonal Mehta', 5, 50000);

INSERT INTO projects (proj_name, dept_id) VALUES
('Recruitment System', 1),
('Annual Budgeting', 2),
('Website Development', 3),
('Mobile App Launch', 3),
('Ad Campaign 2025', 4),
('Supply Chain Optimization', 5);

INSERT INTO employee_project (emp_id, proj_id, assigned_date) VALUES
(1, 1, '2025-01-15'),  
(2, 2, '2025-02-01'),  
(3, 3, '2025-02-10'),  
(4, 3, '2025-02-12'),  
(4, 4, '2025-03-01'),  
(5, 5, '2025-03-05'),  
(6, 6, '2025-03-07');  



select * from departments;
select * from employees;
select * from projects;
select * from employee_project;

select emp_name, dept_name
from epmloyees e
inner join departments d
on e.dept_id = d.dept_id
