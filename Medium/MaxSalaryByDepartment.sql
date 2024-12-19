SELECT
    Department.name AS Department,
    Employee.name AS Employee,
    Employee.salary AS Salary
FROM
    Employee
JOIN
    Department ON Department.id = Employee.departmentId
WHERE
    Employee.salary = (
        SELECT MAX(salary)
        FROM Employee e
        WHERE e.departmentId = Employee.departmentId
    );