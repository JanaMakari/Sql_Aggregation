WITH totalEarningsTable AS (
    SELECT salary * months AS total_earnings
    FROM Employee
)
SELECT
    MAX(total_earnings) ,
    COUNT(*)
FROM
    totalEarningsTable
WHERE
    total_earnings = (SELECT MAX(total_earnings) FROM totalEarningsTable);