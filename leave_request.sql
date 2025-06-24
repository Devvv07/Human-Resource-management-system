use hrms;

# Leave Request Table

CREATE TABLE leave_request (
req_id INT PRIMARY KEY,
emp_id INT,
dept_id VARCHAR(50),
start_date DATE,
end_date DATE,
location VARCHAR(50),
status VARCHAR(20) NOT NULL,
reason varchar(30),
CONSTRAINT chk_status CHECK (status IN ('Approve','Reject')),
FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
FOREIGN KEY (dept_id) REFERENCES department(dept_id));

INSERT INTO leave_request(req_id, emp_id, dept_id, start_date, end_date, location, status, reason)
VALUES(1,  37, "D001", STR_TO_DATE("05-01-2016","%d-%m-%Y"), STR_TO_DATE("07-01-2016","%d-%m-%Y"), "mumbai",  "Approve", "Personal"),
(2,  47, "D001", STR_TO_DATE("10-02-2017","%d-%m-%Y"), STR_TO_DATE("11-02-2017","%d-%m-%Y"), "mumbai",  "Reject",  "Workload"),
(3,  53, "D003", STR_TO_DATE("15-03-2018","%d-%m-%Y"), STR_TO_DATE("20-03-2018","%d-%m-%Y"), "hyderabad","Approve","Vacation"),
(4,  62, "D005", STR_TO_DATE("01-04-2019","%d-%m-%Y"), STR_TO_DATE("03-04-2019","%d-%m-%Y"), "mumbai",  "Reject",  "Deadline"),
(5,  55, "D008", STR_TO_DATE("10-05-2020","%d-%m-%Y"), STR_TO_DATE("12-05-2020","%d-%m-%Y"), "hyderabad","Approve","Medical"),
(6,  56, "D004", STR_TO_DATE("20-05-2021","%d-%m-%Y"), STR_TO_DATE("22-05-2021","%d-%m-%Y"), "mumbai",  "Reject",  "No leave"),
(7,  40, "D009", STR_TO_DATE("05-06-2022","%d-%m-%Y"), STR_TO_DATE("07-06-2022","%d-%m-%Y"), "banglore","Approve","Wedding"),
(8,  48, "D007", STR_TO_DATE("15-06-2023","%d-%m-%Y"), STR_TO_DATE("17-06-2023","%d-%m-%Y"), "delhi",   "Reject",  "Staff shortage"),
(9,  39, "D001", STR_TO_DATE("01-07-2015","%d-%m-%Y"), STR_TO_DATE("05-07-2015","%d-%m-%Y"), "mumbai",  "Approve","Conference"),
(10, 50, "D004", STR_TO_DATE("10-07-2016","%d-%m-%Y"), STR_TO_DATE("12-07-2016","%d-%m-%Y"), "mumbai", "Reject",  "Urgent work"),
(11, 61, "D002", STR_TO_DATE("20-08-2017","%d-%m-%Y"), STR_TO_DATE("22-08-2017","%d-%m-%Y"), "banglore","Approve","Training"),
(12, 42, "D003", STR_TO_DATE("15-09-2018","%d-%m-%Y"), STR_TO_DATE("17-09-2018","%d-%m-%Y"), "hyderabad","Reject","Busy"),
(13, 53, "D004", STR_TO_DATE("05-10-2019","%d-%m-%Y"), STR_TO_DATE("07-10-2019","%d-%m-%Y"), "mumbai", "Approve","Health"),
(14, 44, "D004", STR_TO_DATE("15-11-2020","%d-%m-%Y"), STR_TO_DATE("17-11-2020","%d-%m-%Y"), "mumbai", "Reject",  "Family"),
(15, 58, "D008", STR_TO_DATE("01-12-2021","%d-%m-%Y"), STR_TO_DATE("03-12-2021","%d-%m-%Y"), "hyderabad","Approve","Religious"),
(16, 49, "D003", STR_TO_DATE("10-12-2022","%d-%m-%Y"), STR_TO_DATE("12-12-2022","%d-%m-%Y"), "hyderabad","Reject","Upgrade"),
(17, 50, "D001", STR_TO_DATE("05-01-2023","%d-%m-%Y"), STR_TO_DATE("07-01-2023","%d-%m-%Y"), "mumbai", "Approve","Personal"),
(18, 37, "D001", STR_TO_DATE("10-02-2024","%d-%m-%Y"), STR_TO_DATE("12-02-2024","%d-%m-%Y"), "mumbai", "Reject",  "Collide"),
(19, 39, "D005", STR_TO_DATE("15-03-2016","%d-%m-%Y"), STR_TO_DATE("17-03-2016","%d-%m-%Y"), "mumbai", "Approve","Workshop"),
(20, 40, "D006", STR_TO_DATE("01-04-2017","%d-%m-%Y"), STR_TO_DATE("03-04-2017","%d-%m-%Y"), "delhi",  "Reject",  "Training"),
(21, 52, "D006", STR_TO_DATE("10-05-2018","%d-%m-%Y"), STR_TO_DATE("12-05-2018","%d-%m-%Y"), "delhi",  "Approve","Conference"),
(22, 59, "D007", STR_TO_DATE("20-06-2019","%d-%m-%Y"), STR_TO_DATE("22-06-2019","%d-%m-%Y"), "delhi",  "Reject",  "Pending"),
(23, 60, "D010", STR_TO_DATE("05-07-2020","%d-%m-%Y"), STR_TO_DATE("07-07-2020","%d-%m-%Y"), "hyderabad","Approve","Research"),
(24, 54, "D010", STR_TO_DATE("15-08-2021","%d-%m-%Y"), STR_TO_DATE("17-08-2021","%d-%m-%Y"), "hyderabad","Reject",  "Project"),
(25, 56, "D008", STR_TO_DATE("01-09-2022","%d-%m-%Y"), STR_TO_DATE("03-09-2022","%d-%m-%Y"), "hyderabad","Approve","Festival"),
(26, 58, "D009", STR_TO_DATE("10-10-2023","%d-%m-%Y"), STR_TO_DATE("12-10-2023","%d-%m-%Y"), "banglore","Reject",  "Budget"),
(27, 49, "D002", STR_TO_DATE("20-11-2015","%d-%m-%Y"), STR_TO_DATE("22-11-2015","%d-%m-%Y"), "banglore","Approve","Maintenance"),
(28, 42, "D005", STR_TO_DATE("05-12-2016","%d-%m-%Y"), STR_TO_DATE("07-12-2016","%d-%m-%Y"), "mumbai",  "Reject",  "Short notice"),
(29, 44, "D007", STR_TO_DATE("15-01-2017","%d-%m-%Y"), STR_TO_DATE("17-01-2017","%d-%m-%Y"), "delhi",  "Approve","Training"),
(30, 48, "D009", STR_TO_DATE("25-02-2018","%d-%m-%Y"), STR_TO_DATE("27-02-2018","%d-%m-%Y"), "banglore","Reject",  "Client");
