use hrms;

# Department Table 

create table department(
dept_id varchar(8) primary key,
dept_name varchar(50),
location varchar(20),
manager_id varchar(8));

insert into department values("D001","gemline","mumbai","M0011");
insert into department values("D002","star","banglore","M0022");
insert into department values("D003","starlink","hyderabad","M0033");
insert into department values("D004","golden","mumbai","M0055");
insert into department values("D005","silver","mumbai","M0055");
insert into department values("D006","rock","delhi","M0077");
insert into department values("D007","stone","delhi","M0099");
insert into department values("D008","diamond","hyderabad","M0033");
insert into department values("D009","crown","banglore","M0088");
insert into department values("D010","red","hyderabad","M0066");

select * from department;
