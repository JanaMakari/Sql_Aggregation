with MiscalculatedSalaries AS (
    select 
        CAST(REPLACE(CAST(Salary AS CHAR), '0', '') AS UNSIGNED) AS modified_salary
    from EMPLOYEES
)
select 
    CEILING(AVG(employees.salary) - AVG(MiscalculatedSalaries.modified_salary)) 
from 
    employees, MiscalculatedSalaries;