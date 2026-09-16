-- CREATE DATABASE sqltest;
-- USE sqltest;

-- CREATE TABLE users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     gender ENUM('Male', 'Female', 'Other'),
--     dob DATE,
--     salary DECIMAL(10,2),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- INSERT INTO users (name, email, gender, dob, salary) VALUES
-- ('Aarav', 'aarav@gmail.com', 'Male', '1995-05-14', 65000),
-- ('Ananya', 'ananya@gmail.com', 'Female', '1990-11-23', 72000),
-- ('Raj', 'raj@gmail.com', 'Male', '1988-02-17', 58000),
-- ('Sneha', 'sneha@gmail.com', 'Female', '2000-08-09', 50000),
-- ('Farhan', 'farhan@gmail.com', 'Male', '1993-12-30', 61000),
-- ('Priyanka', 'priyanka@gmail.com', 'Female', '1985-07-12', 84000),
-- ('Aisha', 'aisha@gmail.com', 'Female', '1997-03-25', 56000),
-- ('Aditya', 'aditya@gmail.com', 'Male', '1992-06-17', 69000),
-- ('Meera', 'meera@gmail.com', 'Female', '1989-09-05', 77000),
-- ('Ishaan', 'ishaan@gmail.com', 'Male', '2001-10-02', 45000),
-- ('Tanvi', 'tanvi@gmail.com', 'Female', '1994-04-18', 62000),
-- ('Rohan', 'rohan@gmail.com', 'Male', '1986-12-01', 75000),
-- ('Zoya', 'zoya@gmail.com', 'Female', '1998-01-15', 54000),
-- ('Karan', 'karan@gmail.com', 'Male', '1990-08-22', 68000),
-- ('Nikita', 'nikita@gmail.com', 'Female', '1987-03-10', 71000);

-- CREATE TABLE addresses (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     street VARCHAR(150),
--     city VARCHAR(100),
--     state VARCHAR(100),
--     pincode VARCHAR(10),
--     FOREIGN KEY (user_id) REFERENCES users(id)
-- );

-- INSERT INTO addresses (user_id, street, city, state, pincode) VALUES
-- (1, 'MG Road', 'Mumbai', 'Maharashtra', '400001'),
-- (2, 'Park Street', 'Kolkata', 'West Bengal', '700016'),
-- (3, 'FC Road', 'Pune', 'Maharashtra', '411004'),
-- (4, 'Civil Lines', 'Nagpur', 'Maharashtra', '440001'),
-- (5, 'Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
-- (6, 'Indiranagar', 'Bangalore', 'Karnataka', '560038'),
-- (7, 'Andheri Road', 'Mumbai', 'Maharashtra', '400053'),
-- (8, 'Connaught Place', 'Delhi', 'Delhi', '110001'),
-- (9, 'Salt Lake', 'Kolkata', 'West Bengal', '700091'),
-- (10, 'Viman Nagar', 'Pune', 'Maharashtra', '411014'),
-- (11, 'Gandhi Nagar', 'Ahmedabad', 'Gujarat', '380009'),
-- (12, 'Kothrud', 'Pune', 'Maharashtra', '411038'),
-- (13, 'Hitech City', 'Hyderabad', 'Telangana', '500081'),
-- (14, 'Thane Road', NULL, 'Maharashtra', '400601');

select * from users;
-- select name, email, salary
-- from users;

-- select name, gender, salary
-- from users
-- where gender = 'female' and salary > 60000;

-- select name, salary 
-- from users
-- where salary between 55000 and 75000
-- order by salary desc;

-- select name, email 
-- from users
-- where name like 'A%';

-- alter table users
-- add column phone varchar(15);

-- update users
-- set salary = salary + 5000
-- where salary < 60000;

-- delete from users
-- where id = 10;

-- select name, dob
-- from users
-- where dob is null;

-- select name, salary 
-- from users
-- order by salary desc
-- limit 3;

-- select avg(salary) 
-- from users;

-- select gender, 
-- count(*) as user_count
-- from users
-- group by gender;

-- select gender,
-- avg(salary) as avg_salary
-- from users
-- group by gender
-- having avg_salary > 65000;

-- select upper(name), 
-- email 
-- from users;

-- select name, 
-- timestampdiff(year, dob, curdate()) as age
-- from users;

-- set autocommit = 0;

-- update users
-- set salary = salary + 10000;

-- rollback;

-- start transaction;

-- update users
-- set salary = salary+5000
-- where id = 1;

-- commit;

-- alter table users
-- add constraint unique_phone unique (phone);

-- select users.name, addresses.city
-- from users
-- left join addresses
-- on users.id = addresses.user_id;

-- select users.name
-- from users
-- left join addresses
-- on users.id = addresses.user_id
-- where addresses.user_id is null;

-- select users.name, addresses.city
-- from users
-- right join addresses
-- on users.id = addresses.user_id;

-- alter table users
-- add constraint chk_salary check (salary >= 0);

-- select users.name, addresses.city 
-- from users
-- inner join addresses
-- on users.id = addresses.user_id
-- where addresses.state = 'Maharashtra';

-- CREATE TABLE employees (
--     id INT PRIMARY KEY,
--     name VARCHAR(100),
--     manager_id INT
-- );

-- INSERT INTO employees (id, name, manager_id) VALUES
-- (1, 'Rahul', NULL),
-- (2, 'Amit', 1),
-- (3, 'Priya', 1),
-- (4, 'Karan', 2),
-- (5, 'Sneha', 2),
-- (6, 'Rohit', 3),
-- (7, 'Neha', 3);

-- select * from employees;

-- select e.name as employee,
-- m.name as manager
-- from employees e
-- left join employees m
-- on e.manager_id = m.id;

-- select e.name as employee,
-- m.name as manager
-- from employees e
-- inner join employees m
-- on e.manager_id = m.id;

-- select e.name as employee,
-- m.name as manager
-- from employees e
-- inner join employees m
-- on e.manager_id = m.id
-- where m.name = 'Rahul';

-- select e.name as employee,
-- m.name as manager
-- from employees e
-- inner join employees m
-- on m.manager_id = e.id;

-- select e.name as employee,
-- m.name as manager
-- from employees e
-- inner join employees m
-- on e.manager_id = m.id
-- where m.name = 'Amit';

-- select name from users
-- union
-- select name from users;

-- select name from users
-- union all
-- select name from users;

-- select name from users
-- union
-- select name from employees
-- order by name;

-- SELECT name, email
-- FROM users
-- UNION
-- SELECT name, NULL
-- FROM employees;

-- create view rich_users as 
-- select * from users
-- where salary > 70000;

-- select * from rich_users; 

-- drop view rich_users;

-- show indexes from users;

-- select name, salary 
-- from users
-- where salary > (select avg(salary) from users);

-- SELECT name, salary,
-- (SELECT AVG(salary) FROM users) AS average_salary
-- FROM users;

-- CREATE TABLE refer (
--     id INT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     gender ENUM('Male', 'Female', 'Other'),
--     salary DECIMAL(10,2),
--     ref_id INT,

--     foreign key (ref_id) 
--     references refer(id)
--     
-- );

-- INSERT INTO refer
-- (id, name, gender, salary, ref_id)
-- VALUES
-- (1, 'Aarav', 'Male', 80000, NULL),
-- (2, 'Sneha', 'Female', 75000, 1),
-- (3, 'Raj', 'Male', 72000, 1),
-- (4, 'Fatima', 'Female', 85000, 2),
-- (5, 'Priya', 'Female', 70000, NULL);

select * from refer;

-- select gender,
-- avg(salary) as avg_salary
-- from refer
-- group by gender;

-- select ref_id, count(*) as total_refered
-- from refer
-- where ref_id is not  null
-- group by ref_id;

-- SELECT ref_id, COUNT(*) AS total_referred
-- FROM refer
-- WHERE ref_id IS NOT NULL
-- GROUP BY ref_id
-- HAVING COUNT(*) > 1;

-- SELECT gender, COUNT(*) AS total_users
-- FROM users
-- GROUP BY gender WITH ROLLUP;

