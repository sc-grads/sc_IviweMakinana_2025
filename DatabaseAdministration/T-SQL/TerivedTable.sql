-- derived table
SELECT ENumber, EmployeeFirstName, EmployeeLastName
FROM (
    SELECT E.EmployeeNumber AS ENumber, E.EmployeeFirstName, 
           E.EmployeeLastName, T.EmployeeNumber AS TNumber, 
           SUM(T.Amount) AS TotalAmount
    FROM tblEmployeee AS E
    LEFT JOIN tblTransaction AS T
        ON E.EmployeeNumber = T.EmployeeNumber
    GROUP BY E.EmployeeNumber, T.EmployeeNumber, E.EmployeeFirstName, 
             E.EmployeeLastName
) AS newTable
WHERE TNumber IS NULL
ORDER BY ENumber, TNumber, EmployeeFirstName, EmployeeLastName