create database hrms;

use hrms;

create table employees
(emp_id int primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
email varchar(20),
phone_no int unique,
hire_date date,
salary int,
manager_id varchar(8));

insert into employees(first_name,last_name,email,phone_no,hire_date,salary,manager_id)
 values("om","parikar","om342@gmail.com",987654321,STR_TO_DATE('21-02-2020', '%d-%m-%Y'),150000,"M0011"),
 ("ekta","kapoor","ektaa31@gmail.com",135792460,STR_TO_DATE('03-06-2015', '%d-%m-%Y'),85000,"M0022"),
 ("ravi","sinha","ravi2000@gmail.com",463728618,STR_TO_DATE('28-03-2012', '%d-%m-%Y'),93000,"M0011"),
 ("govind","malhotra","govind21@gmail.com",483729835,STR_TO_DATE('11-09-2017', '%d-%m-%Y'),115000,"M0011"),
 ("ravi","kapoor","ravi987@gmail.com",132753452,STR_TO_DATE('23-01-2012', '%d-%m-%Y'),100000,"M0022"),
 ("Dev","parikar","dev2550@gmail.com",874532675,STR_TO_DATE('19-04-2015', '%d-%m-%Y'),99000,"M0033");

select * from employees;

create table department(
dept_id varchar(8) primary key,
emp_id int,
dept_name varchar(50),
location varchar(20),
manager_id varchar(8),
foreign key(emp_id) references employees(emp_id));

insert into department values("D001",2,"gemline","mumbai","M0011");
insert into department values("D002",1,"star","Banglore","M0022");
insert into department values("D003",3,"starlink","delhi","M0022");
insert into department values("D004",2,"golden","mumbai","M0011");
insert into department values("D005",6,"silver","hydrabad","M0011");
insert into department values("D006",4,"rock","surat","M0011");
insert into department values("D007",7,"stone","assam","M0011");
insert into department values("D008",5,"diamond","mumbai","M0011");
insert into department values("D009",3,"crown","delhi","M0022");
insert into department values("D0010",4,"red","surat","M0011");

select * from department;

create table leave_request(
emp_id int,
dept_id varchar(50),
start_date date,
end_date date,
location varchar(50),
foreign key(emp_id) references employees(emp_id),
foreign key(dept_id) references department(dept_id));

insert into leave_request values(5,"D008",STR_TO_DATE('12-12-2022', '%d-%m-%Y'),STR_TO_DATE('23-12-2022', '%d-%m-%Y'),"mumbai");
insert into leave_request values(4,"D006",STR_TO_DATE('11-04-2020', '%d-%m-%Y'),STR_TO_DATE('01-05-2020', '%d-%m-%Y'),"surat");
insert into leave_request values(6,"D005",STR_TO_DATE('21-03-2019', '%d-%m-%Y'),STR_TO_DATE('23-03-2019', '%d-%m-%Y'),"hydrabad");
insert into leave_request values(7,"D007",STR_TO_DATE('15-08-2018', '%d-%m-%Y'),STR_TO_DATE('25-08-2018', '%d-%m-%Y'),"assam");
insert into leave_request values(3,"D003",STR_TO_DATE('11-04-2022', '%d-%m-%Y'),STR_TO_DATE('13-04-2022', '%d-%m-%Y'),"delhi");
insert into leave_request values(2,"D004",STR_TO_DATE('05-06-2019', '%d-%m-%Y'),STR_TO_DATE('10-06-2019', '%d-%m-%Y'),"mumbai");

select * from leave_request;
 