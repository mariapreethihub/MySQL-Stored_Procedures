**Stored_Procedures**

        A stored procedure in MySQL is a set of SQL statements that are saved and can be reused.It allows you to
        encapsulate complex logic into a single callable unit, which can take parameters and return results. 

   **Syntax:**
       DELIMITER //
       
       CREATE PROCEDURE procedure_name ([parameters])
       
       BEGIN
       
       SQL statements;
       
       END //
       
       DELIMITER ;
       
  **Different types of Procedures in MySQL:**

      Stored procedures can accept IN, OUT, or INOUT parameters.

      1.Procedure with IN parameter: Input parameter (default).
      2.Procedure with OUT parameter: Output parameter.
      3.Procedure with INOUT parameter : Both input and output parameter.
      
  **Steps to create and use Stored Procedures:**

     1.Create a Stored Procedure -Use the CREATE PROCEDURE statement.

      Syntax:
      DELIMITER //
      CREATE PROCEDURE procedure_name ([parameters])
      BEGIN
      SQL statements;
      END //
      DELIMITER ;
      
    2.Call a Stored Procedure-Use the CALL statement to execute the procedure.
      Syntax: CALL procedure_name();

    3. Modify a Stored Procedure -To Modify: Drop and recreate the procedure (MySQL doesn’t allow direct modification).
      
    4. Drop a stored procedure -To completely removes the stored procedure from the database.
       Syntax :DROP PROCEDURE procedure_name;
      
    5. To check existing Stored Procedure -To show created stored procedure.
       Syntax :SHOW CREATE PROCEDURE procedure_name;

      
**Benefits of Stored Procedures:**
    1.Performance: Precompiled and stored in the database.
    
    2.Reusability: Can be reused across applications.
    
    3.Security: Users can execute procedures without accessing underlying data directly.
    
    4.Maintainability: Centralized business logic reduces redundancy.
    
    5.Simplification of Complex Queries:Simplify and store complex SQL operations for reuse, reducing redundancy and error-prone queries.






