/* Create employees table */
CREATE TABLE emps (
empNo INT PRIMARY KEY,
empName VARCHAR(10),
hireDate DATETIME,
sallary NUMERIC(7,2), /* up to 7 digits allowed in total for the column (precision), and 2 decimal points (scale) */
bonus NUMERIC(7,2) NULL, /* may also be NULL */
deptNo INT);
BEGIN; /* populate employees table */
 INSERT INTO emps VALUES (0001,'Elizabeth Mercado','12-17-1990',18000,NULL,008);
 INSERT INTO emps VALUES (0002,'Louann Scudder','02-02-1998',52000,NULL,003);
 INSERT INTO emps VALUES (0003,'Corrina Convery','01-02-1996',25000,1400,003);
 INSERT INTO emps VALUES (0004,'Agueda Resendes','04-02-1990',27000,NULL,002);
 INSERT INTO emps VALUES (0005,'Ambrose Fujimoto','06-23-1994',22500,NULL,004);
 INSERT INTO emps VALUES (0006,'Shea Hieb','05-01-1993',54000,400,001);
 INSERT INTO emps VALUES (0007,'Clementine Aburto','09-22-1997',25000,NULL,001);
 INSERT INTO emps VALUES (0008,'Laverne Koepke','03-30-1997',32000,NULL,002);
 INSERT INTO emps VALUES (0009,'Amado Kitt','01-01-1990',75000,NULL,007);
 INSERT INTO emps VALUES (0010,'Donetta Silliman','08-09-1994',56000,NULL,002);
 INSERT INTO emps VALUES (0011,'Zada Oscar','03-15-1996',34000,NULL,006);
 INSERT INTO emps VALUES (0012,'Meta Bickers','04-16-1998',18000,NULL,007);
 INSERT INTO emps VALUES (0013,'Emelia Graeber','12-03-2000',30000,NULL,004);
 INSERT INTO emps VALUES (0014,'Hyacinth Legleiter','10-12-1995',35000,500,006);
END;

/* Create department table */
CREATE TABLE dept (
deptNo INT NOT NULL,
depName VARCHAR(14),
location VARCHAR(13));
BEGIN; /* populate department table */
 INSERT INTO dept VALUES (001,'ADMIN','BRIGHTON');
 INSERT INTO dept VALUES (002,'MAINTENANCE','BRIGHTON');
 INSERT INTO dept VALUES (003,'SALES','LONDON');
 INSERT INTO dept VALUES (004,'IT','LONDON');
 INSERT INTO dept VALUES (005,'CS','BRIGHTON');
 INSERT INTO dept VALUES (006,'PRODUCTION','PORTSMOUTH');
 INSERT INTO dept VALUES (007,'OPERATIONS','PORTSMOUTH');
 INSERT INTO dept VALUES (008,'PURCHASING','BRIGHTON');

END;

/* Query all data in employees table */
SELECT * FROM emps;

/* Query all admins  */
SELECT * FROM emps
WHERE deptNo = 001;

/* Query all stuff working in Brighton offices*/
SELECT
empNo, empName,
depName, location
FROM emps, dept
WHERE emps.deptNo = dept.deptNo
AND dept.location='Brighton';

/* Query all available data for all employees (outer join)*/
SELECT * FROM emps
JOIN dept
ON dept.deptNo = emps.deptNo;
