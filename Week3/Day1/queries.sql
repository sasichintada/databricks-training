-- 1. ABS
SELECT ABS(-100) AS absolute_value;

-- 2. ROUND
SELECT emp_name, ROUND(base_salary,0) AS rounded_salary FROM employee_salary;
SELECT emp_name, ROUND(base_salary,2) AS rounded_2dec FROM employee_salary;

-- 3. CEIL
SELECT emp_name, CEIL(base_salary) AS ceil_salary FROM employee_salary;

-- 4. FLOOR
SELECT emp_name, FLOOR(base_salary) AS floor_salary FROM employee_salary;

-- 5. TRUNCATE
SELECT emp_name, TRUNCATE(base_salary,1) AS truncated_salary FROM employee_salary;

-- 6. MOD
SELECT emp_name, MOD(experience_years,2) AS mod_value FROM employee_salary;

-- 7. POWER / POW
SELECT POWER(2,3) AS power_result;
SELECT POW(5,2) AS pow_result;

-- 8. SQRT
SELECT SQRT(64) AS square_root;

-- 9. SIGN
SELECT emp_name, SIGN(base_salary) AS sign_value FROM employee_salary;

-- 10. RAND
SELECT RAND() AS random_value;

-- 11. FORMAT
SELECT emp_name, FORMAT(base_salary,2) AS formatted_salary FROM employee_salary;

-- 12. GREATEST
SELECT emp_name,
GREATEST(base_salary,IFNULL(bonus,0)) AS highest_value
FROM employee_salary;

-- 13. LEAST
SELECT emp_name,
LEAST(base_salary,IFNULL(bonus,0)) AS lowest_value
FROM employee_salary;