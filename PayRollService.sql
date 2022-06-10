--UC1-Creating database--
Create database Payroll_Service;
--UC2-Creating Table
Create table Employee_Payroll
(Id int Primary Key not null,
 Name varchar(25) not null,
 Salary Decimal,
 StartDate Date
);
select*from Employee_Payroll;

--UC3-Inserting details into employee_payroll table--
Insert into Employee_Payroll 
(Id,Name,Salary,StartDate)
values
(101,'Fatma',25000,'2022.5.7'),
(102,'Anita',65000,'2022.4.7'),
(103,'Amit',28000,'2022.3.7'),
(104,'Sana',27000,'2022.1.7'),
(105,'Mukesh',55000,'2021.5.7');


--UC4 Displaying all employee record from Employee_payroll--

SELECT * FROM employee_payroll

--UC5 Display specific employee details from Employee_payroll table--

Select Id,Salary,StartDate from Employee_Payroll Where Name='Anita'
Select StartDate from Employee_Payroll where(StartDate between'2022.04.07'And GETDATE())

--UC6 Adding new colomn in table--
Alter Table Employee_payroll Add Gender Varchar(1);
Update Employee_Payroll Set Gender='M' Where Id in(103,105);
Update Employee_Payroll Set Gender='F' Where Id in(101,102,104);

--UC7 Using pre define method calculating sum,avg,min,max of salary--
select sum(Salary),Min(salary),Max(Salary),Count(Id)from Employee_Payroll Group by Gender;

--UC9 Adding new colomn in employee_payroll table--
Alter Table Employee_payroll Add BasicPay Decimal,Deductions Decimal,TaxablePay Decimal,IncomeTex Decimal,NetPay Decimal;
Update Employee_Payroll Set BasicPay=87000,Deductions=43000,TaxablePay=78111,IncomeTex=47000,NetPay=47800 
where Id=105;

