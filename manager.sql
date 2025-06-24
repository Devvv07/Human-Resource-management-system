use hrms;

# Manager Table
 
 create table manager(
 manager_id varchar(8) primary key,
 manager_name varchar(20),
 join_date date,
 location varchar(20),
 dob date,
 gender varchar(20),
dept_id varchar(15),
 salary bigint,
 foreign key(dept_id) references department(dept_id));
 
 insert into manager(manager_id,manager_name,join_date,location,dob,gender,dept_id,salary)  
 values("M0011","rakesh Gehlot",STR_TO_DATE('12-08-2012', '%d-%m-%Y'),"mumbai",STR_TO_DATE('02-12-1988', '%d-%m-%Y'),"male","D001",231000),
 ("M0022","priya desai",STR_TO_DATE('22-10-2011', '%d-%m-%Y'),"banglore",STR_TO_DATE('13-11-1994', '%d-%m-%Y'),"female","D002",190000),
 ("M0033","suresh goswami",STR_TO_DATE('14-06-2014', '%d-%m-%Y'),"hyderabad",STR_TO_DATE('22-06-1985', '%d-%m-%Y'),"male","D003",321000),
 ("M0055","ankit gaekwad",STR_TO_DATE('19-01-2009', '%d-%m-%Y'),"mumbai",STR_TO_DATE('16-07-1981', '%d-%m-%Y'),"male","D004",430000),
 ("M0066","reshma sekhawat",STR_TO_DATE('13-08-2011', '%d-%m-%Y'),"hyderabad",STR_TO_DATE('18-03-1980', '%d-%m-%Y'),"female","D010",370000),
 ("M0077","meena desai",STR_TO_DATE('10-09-2015', '%d-%m-%Y'),"delhi",STR_TO_DATE('19-10-1990', '%d-%m-%Y'),"female","D006",255000),
 ("M0088","shiv shinde",STR_TO_DATE('26-03-2009', '%d-%m-%Y'),"banglore",STR_TO_DATE('27-12-1981', '%d-%m-%Y'),"male","D009",287000),
("M0099","raj sekhawat",STR_TO_DATE('12-11-2010', '%d-%m-%Y'),"delhi",STR_TO_DATE('28-10-1998', '%d-%m-%Y'),"male","D007",300000);
 
 select * from manager;
