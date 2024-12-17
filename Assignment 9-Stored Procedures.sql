--CREATING DATABASE COMPANY
create database Company;
use Company;

--CREATING TABLE WORKER

create table Worker(
Worker_Id INT Primary Key,FirstName CHAR(25),LastName CHAR(25),Salary INT,
JoiningDate DATETIME,Department CHAR(25));

--INSERTION-STORED PROCEDURE USING IN PARAMETER

1. Create a stored procedure that takes in IN parameters for 
all the columns in the Worker table and adds a new record to the
table and then invokes the procedure call.

DELIMITER //
create procedure add_record(IN Wid int,IN Fname char(25),IN Lname char(25),
IN Psalary int,IN Jdate datetime,IN depart char(25))
BEGIN
insert into Worker values(Wid,Fname,Lname,Psalary,Jdate,depart);
END //
DELIMITER ;
CALL add_record(1,'John','Joseph',50000,'2024-12-15 03:30:00','IT');
CALL add_record(2,'Thomas','Mathew',40000,'2024-12-15 03:45:00','IT');
CALL add_record(3,'Varghese','Peter',35000,'2024-12-15 03:50:00','Marketing');
CALL add_record(4,'Bastin','Xavier',60000,'2024-12-15 04:00:00','Marketing');
CALL add_record(5,'Philip','George',50000,'2024-12-15 04:10:00','IT');
CALL add_record(6,'Sebastin','Xavier',20000,'2024-12-15 04:15:00','HR');

select * from Worker;
--CREATING STORED PROCEDURE WITH IN AND OUT PARAMTER

 2. Write stored procedure takes in an IN parameter for WORKER_ID and an OUT 
 parameter for SALARY. It should retrieve the salary of the worker with the given
 ID and returns it in the p_salary parameter. Then make the procedure call.
 
 DELIMITER //
 create procedure user_salary(IN wid int,OUT p_salary int)
 BEGIN
 select Salary into p_salary from Worker where wid=Worker_Id;
 END //
 DELIMITER ;
 
 CALL user_salary(4,@p_salary);
 select @p_salary as Worker_Salary;
 
 --UPDATION-STORED PROCEDURE USING IN PARAMETER
 
  3. Create a stored procedure that takes in IN parameters for WORKER_ID and 
  DEPARTMENT. It should update the department of the worker with the given ID. 
  Then make a procedure call.
  
  DELIMITER //
  create procedure update_department(IN WORK_ID int,IN DEPART CHAR(25))
  BEGIN
  update Worker set Department = DEPART where Worker_Id=WORK_ID;
  END //
  DELIMITER ;

  set @DEPART='Marketing';
  CALL update_department(4,@DEPART);
  select @DEPART as Worker_Department;
  select * from Worker;
  
   4. Write a stored procedure that takes in an IN parameter for DEPARTMENT
   and an OUT parameter for p_workerCount. It should retrieve the number of workers
   in the given department and returns it in the p_workerCount parameter. Make procedure call. 
   
   DELIMITER //
   create procedure worker_count(IN Dept CHAR(25),OUT p_workercount int)
   BEGIN
   select count(Worker_Id) into p_workercount from Worker where Dept=Department;
   END //
   DELIMITER ;
   CALL worker_count('IT',@p_workercount);
   select @p_workercount as No_of_Workers;
   select * from Worker;
   
   
   5. Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT 
   parameter for p_avgSalary. It should retrieve the average salary of all workers in 
   the given department and returns it in the p_avgSalary parameter and call the procedure.
   
   DELIMITER //
   create procedure worker_avgsalary(IN DEPART CHAR(25),OUT p_avgSalary int)
   BEGIN
   select avg(Salary) into p_avgSalary from Worker where DEPART=Department;
   END //
   DELIMITER ;
   CALL worker_avgsalary('Marketing',@p_avgSalary);
   select @DEPART as Department_Name,@p_avgSalary as Average_Salary;
   select * from Worker;
  
  drop database Company;
 