--Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.





SELECT 
	C.company_code,
	C.founder,
	COUNT(DISTINCT LM.lead_manager_code),
	COUNT(DISTINCT SM.senior_manager_code),
	COUNT(DISTINCT M.manager_code),
	COUNT(DISTINCT E.employee_code)   
FROM Company C
JOIN Lead_Manager LM ON LM.company_code = C.company_code
JOIN Senior_Manager SM ON SM.company_code = C.company_code
JOIN Manager M ON M.company_code = C.company_code
JOIN Employee E ON E.company_code = C.company_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code;