-- Challenge 1: Average salary per department (only departments with more than 2 employees)

-- Step 1: Create table (for demo purposes)
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Step 2: Load data (for MySQL, use LOAD DATA INFILE)
-- Or manually insert for small dataset
INSERT INTO employees (employee_id, name, department, salary) VALUES
(1,'Chris Origi','IT',80000),
(2,'Alice Mwangi','Finance',75000),
(3,'Bob Kamau','IT',90000),
(4,'Diana Ochieng','HR',65000),
(5,'Charles Otieno','Finance',72000),
(6,'Grace Wanjiku','IT',88000),
(7,'John Mutua','HR',60000);

-- Step 3: Query average salary per department (only for departments with more than 2 employees)
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY avg_salary DESC;

