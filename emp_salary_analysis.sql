create database hr_project;
use hr_project;

create table department (
dept_id int primary key,
dept_name varchar(30) not null,
city varchar(20)
);

insert into department values
(1,'IT','pune'),
(2,'HR','pune'),
(3,'Testing','delhi'),
(4,'Management','thane'),
(5,'Operations','mumbai');

create table emp (
id int primary key,
name varchar(30) not null,
address varchar(20),
designation varchar(30),
salary int check (salary > 0),
dept_id int,
foreign key (dept_id) references department(dept_id)
);

insert into emp values
(111,'saad','pune','data_analyst',60000,1),
(112,'ram','ayodhya','tester',40000,3),
(113,'akshay','satara','developer',55000,1),
(114,'suraj','delhi','tester',35000,3),
(115,'soumya','haryana','HR',25000,2),
(116,'aalia','pune','HR',28000,2),
(117,'rushikesh','banglore','guard',18000,5),
(118,'miko','china','developer',66000,1),
(119,'sudha','pune','HR',19000,2),
(120,'aahana','ayodhya','manager',52000,4),
(121,'shubham','thane','helper',25000,5),
(122,'peter','new_york','data_scientist',80000,1),
(123,'toff','china','QA_eng',74000,3),
(124,'zuko','korea','team_leader',26500,4),
(125,'katara','antartica','Business_analyst',35000,4);

select * from emp;
alter table emp rename column address to city;

alter table emp add age int;

update emp set age=28 where id in (111,123);
update emp set age=24 where id in (112,113,117,120,121);
update emp set age=25 where id=114;
update emp set age=26 where id in (115,116);
update emp set age=27 where id in (118,122);
update emp set age=30 where id in (119,124,125);

select * from emp;


create table bonus (
bonus_id int primary key auto_increment,
emp_id int not null,
bonus_amount int not null,
year int default 2025,
foreign key (emp_id) references emp(id)
);


insert into bonus (emp_id, bonus_amount, year) values
(111,4500,2024),
(111,5000,2025),
(112,2000,2025),
(113,4000,2025),
(118,6000,2025),
(120,3000,2025),
(122,8000,2025),
(123,5500,2025);

select * from department;
select * from emp;
select * from bonus;

select sum(salary) as total_salary_expense from emp;

select designation, avg(salary) as avg_salary
from emp
group by designation
order by avg_salary desc
limit 1;



select d.dept_name, sum(e.salary) as total_salary
from emp e
inner join department d on e.dept_id = d.dept_id
group by d.dept_name
order by total_salary desc
limit 1;

select name, designation, salary
from emp
order by salary desc
limit 3;

select salary as second_max_salary
from emp
order by salary desc
limit 1 offset 1;

select city, count(id) as total_employees
from emp
group by city
order by total_employees desc
limit 1;

select e.name, e.designation, b.bonus_amount, b.year
from emp e
inner join bonus b on e.id = b.emp_id
order by b.bonus_amount desc;

select e.id, e.name, e.designation
from emp e
left join bonus b on e.id = b.emp_id
where b.emp_id is null;

select d.dept_name, count(e.id) as total_employees
from department d
inner join emp e on d.dept_id = e.dept_id
group by d.dept_name
having count(e.id) > 2;

select concat(upper(name), ' - ', designation) as employee_info
from emp
where salary between 30000 and 60000
order by salary;
