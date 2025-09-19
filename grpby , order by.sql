CREATE TABLE Employeee (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employeee (EmpID, FirstName, LastName, Department, Salary) VALUES
(1, 'JOHN', 'DOE', 'HR', 55000),
(2, 'JANE', 'SMITH', 'IT', 60000),
(3, 'BOB', 'JOHNSON', 'IT', 62000),
(4, 'ALICE', 'WILLIAMS', 'HR', 54000),
(5, 'EVA', 'DAVIS', 'FINANCE', 58000),
(6, 'MIKE', 'BROWN', 'FINANCE', 59000);

SELECT Department, SUM(Salary) AS TotalSalary
FROM Employeee
GROUP BY Department
ORDER BY TotalSalary DESC;

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employeee
GROUP BY Department
ORDER BY AvgSalary DESC;

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department
ORDER BY EmployeeCount DESC;


SELECT Department, MAX(Salary) AS HighestSalary
FROM Employee
GROUP BY Department
ORDER BY HighestSalary DESC;

