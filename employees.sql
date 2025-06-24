use hrms;

# Employees Table 

create table employees
(emp_id int primary key auto_increment,
first_name varchar(30),
last_name varchar(30),
email varchar(50),
phone_no bigint unique,
hire_date date,
dob date,
salary int,
gender varchar(6),
job_id varchar(8),
dept_id varchar(8),
foreign key(job_id) references job(job_id),
foreign key(dept_id) references department(dept_id));

INSERT INTO employees(first_name,last_name,email,phone_no,hire_date,dob,salary,gender,job_id,dept_id)VALUES
("Amit","Sharma","amit.sharma1@mail.com",9012345601,STR_TO_DATE("12-08-2012","%d-%m-%Y"),STR_TO_DATE("02-12-1988","%d-%m-%Y"),220000,"male","J001","D001"),
("Sonia","Sharma","sonia.sharma@mail.com",9012345602,STR_TO_DATE("22-10-2011","%d-%m-%Y"),STR_TO_DATE("13-11-1994","%d-%m-%Y"),180000,"female","J002","D001"),
("Aarav","Patel","aarav.patel@mail.com",9012345603,STR_TO_DATE("14-06-2014","%d-%m-%Y"),STR_TO_DATE("22-06-1985","%d-%m-%Y"),250000,"male","J005","D003"),
("Neha","Patel","neha.patel@mail.com",9012345604,STR_TO_DATE("19-01-2009","%d-%m-%Y"),STR_TO_DATE("16-07-1981","%d-%m-%Y"),200000,"female","J003","D005"),
("Vikram","Khan","vikram.khan@mail.com",9012345605,STR_TO_DATE("13-08-2011","%d-%m-%Y"),STR_TO_DATE("18-03-1980","%d-%m-%Y"),270000,"male","J016","D008"),
("Rhea","Khan","rhea.khan@mail.com",9012345606,STR_TO_DATE("10-09-2015","%d-%m-%Y"),STR_TO_DATE("19-10-1990","%d-%m-%Y"),230000,"female","J008","D004"),
("Kabir","Mehta","kabir.mehta@mail.com",9012345607,STR_TO_DATE("26-03-2009","%d-%m-%Y"),STR_TO_DATE("27-12-1981","%d-%m-%Y"),210000,"male","J017","D009"),
("Ishita","Mehta","ishita.mehta@mail.com",9012345608,STR_TO_DATE("12-11-2010","%d-%m-%Y"),STR_TO_DATE("28-10-1998","%d-%m-%Y"),190000,"female","J014","D007"),
("Raj","Singh","raj.singh@mail.com",9012345609,STR_TO_DATE("21-02-2020","%d-%m-%Y"),STR_TO_DATE("10-05-1990","%d-%m-%Y"),150000,"male","J002","D001"),
("Meera","Singh","meera.singh@mail.com",9012345610,STR_TO_DATE("15-07-2018","%d-%m-%Y"),STR_TO_DATE("15-07-1994","%d-%m-%Y"),78000,"female","J010","D004"),
("Priya","Reddy","priya.reddy@mail.com",9012345611,STR_TO_DATE("03-06-2015","%d-%m-%Y"),STR_TO_DATE("15-11-1988","%d-%m-%Y"),85000,"female","J004","D002"),
("Aditya","Reddy","aditya.reddy@mail.com",9012345612,STR_TO_DATE("28-03-2012","%d-%m-%Y"),STR_TO_DATE("22-09-1985","%d-%m-%Y"),93000,"male","J006","D003"),
("Sakshi","Verma","sakshi.verma@mail.com",9012345613,STR_TO_DATE("11-09-2017","%d-%m-%Y"),STR_TO_DATE("05-07-1982","%d-%m-%Y"),115000,"female","J009","D004"),
("Nikhil","Verma","nikhil.verma@mail.com",9012345614,STR_TO_DATE("19-04-2015","%d-%m-%Y"),STR_TO_DATE("30-12-1991","%d-%m-%Y"),130000,"male","J010","D004"),
("Tanya","Gupta","tanya.gupta@mail.com",9012345615,STR_TO_DATE("11-08-2017","%d-%m-%Y"),STR_TO_DATE("18-06-1993","%d-%m-%Y"),111000,"female","J005","D003"),
("Yash","Gupta","yash.gupta@mail.com",9012345616,STR_TO_DATE("14-11-2012","%d-%m-%Y"),STR_TO_DATE("07-02-1986","%d-%m-%Y"),160000,"male","J007","D003"),
("Sneha","Chopra","sneha.chopra@mail.com",9012345617,STR_TO_DATE("20-02-2020","%d-%m-%Y"),STR_TO_DATE("02-10-1990","%d-%m-%Y"),99000,"female","J011","D005"),
("Diya","Chopra","diya.chopra@mail.com",9012345618,STR_TO_DATE("01-11-2019","%d-%m-%Y"),STR_TO_DATE("01-11-1992","%d-%m-%Y"),93000,"female","J011","D005"),
("Anil","Chopra","anil.chopra@mail.com",9012345619,STR_TO_DATE("10-09-2024","%d-%m-%Y"),STR_TO_DATE("13-08-1995","%d-%m-%Y"),76000,"male","J006","D003"),
("Neeta","Kumar","neeta.kumar@mail.com",9012345620,STR_TO_DATE("05-05-2016","%d-%m-%Y"),STR_TO_DATE("20-05-1992","%d-%m-%Y"),88000,"female","J002","D001"),
("Aakash","Kumar","aakash.kumar@mail.com",9012345621,STR_TO_DATE("01-01-2020","%d-%m-%Y"),STR_TO_DATE("01-02-1993","%d-%m-%Y"),95000,"male","J013","D006"),
("Vivaan","Sharma","vivaan.sharma@mail.com",9012345622,STR_TO_DATE("12-12-2021","%d-%m-%Y"),STR_TO_DATE("12-12-1993","%d-%m-%Y"),99000,"male","J002","D001"),
("Vikas","Shah","vikas.shah@mail.com",9012345623,STR_TO_DATE("20-03-2014","%d-%m-%Y"),STR_TO_DATE("20-03-1987","%d-%m-%Y"),105000,"male","J014","D007"),
("Rina","Shah","rina.shah@mail.com",9012345624,STR_TO_DATE("22-08-2019","%d-%m-%Y"),STR_TO_DATE("22-08-1991","%d-%m-%Y"),83000,"female","J009","D004"),
("Karan","Malhotra","karan.malhotra@mail.com",9012345625,STR_TO_DATE("10-10-2021","%d-%m-%Y"),STR_TO_DATE("10-10-1993","%d-%m-%Y"),95000,"male","J012","D006"),
("Pooja","Malhotra","pooja.malhotra@mail.com",9012345626,STR_TO_DATE("12-12-2018","%d-%m-%Y"),STR_TO_DATE("12-12-1992","%d-%m-%Y"),89000,"female","J015","D008"),
("Ananya","Verma","ananya.verma@mail.com",9012345627,STR_TO_DATE("05-01-2020","%d-%m-%Y"),STR_TO_DATE("05-11-1992","%d-%m-%Y"),96000,"female","J003","D005"),
("Rohan","Gupta","rohan.gupta@mail.com",9012345628,STR_TO_DATE("10-03-2019","%d-%m-%Y"),STR_TO_DATE("10-09-1990","%d-%m-%Y"),102000,"male","J005","D003");

select * from employees;
