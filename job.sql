use hrms;

 # Job details
 
 create table job(
 job_id varchar(8) primary key,
 job_title varchar(60),
 dept_id varchar(8),
 department_name varchar(20),
 min_salary bigint,
 max_salary bigint);
 
INSERT INTO job(job_id, job_title, dept_id, department_name, min_salary, max_salary)
VALUES("J001", "Sales Manager","D001", "gemline",60000, 120000),
("J002", "Sales Representative","D001", "gemline",40000,80000),
("J003", "Marketing Lead","D002", "star",65000, 130000),
("J004", "Social Media Specialist","D002", "star",35000,70000),
("J005", "Software Engineer","D003", "starlink",70000, 150000),
("J006", "Data Analyst","D003", "starlink",  50000,90000),
("J007", "DevOps Engineer","D003", "starlink",80000, 160000),
("J008", "Finance Manager","D004", "golden",75000, 140000),
("J009", "Accountant", "D004", "golden",45000,  85000),
("J010", "HR Coordinator", "D005", "silver",40000,  80000),
("J011", "Recruiter", "D005", "silver",35000,70000),
("J012", "Operations Supervisor", "D006", "rock",60000, 110000),
("J013", "Supply Chain Analyst", "D006", "rock",50000,  90000),
("J014", "Quality Engineer","D007", "stone",50000, 100000),
("J015", "Supply Chain Manager","D008", "diamond",70000, 140000),
("J016", "Logistics Coordinator","D008","diamond",40000, 80000),
("J017", "Customer Service Rep","D009","crown",30000, 60000),
("J018", "Research Scientist","D010", "red",80000, 160000);
 
 select * from job;
