SELECT Department, SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY Department;

SELECT Department, AVG(Salary) AS AvgSalary
FROM Employee
GROUP BY Department
ORDER BY AvgSalary DESC;

SELECT Department, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department
ORDER BY EmployeeCount DESC;

SELECT Department, MAX(Salary) AS MaxSalary
FROM Employee
GROUP BY Department
ORDER BY MaxSalary DESC;

