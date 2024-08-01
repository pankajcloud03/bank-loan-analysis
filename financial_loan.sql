SELECT * FROM financial_loan

SET datestyle = 'ISO, DMY';

SELECT
    DATE_PART('month', issue_date) AS month_number,
    TO_CHAR(issue_date, 'Month') AS month_name,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_received_amount
FROM financial_loan
GROUP BY DATE_PART('month', issue_date), TO_CHAR(issue_date, 'Month')
ORDER BY month_number;
	
SELECT
    address_state,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_received_amount
FROM
    financial_loan
GROUP BY address_state
ORDER BY address_state;

SELECT
    term AS loan_term,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_received_amount
FROM
    financial_loan
GROUP BY term
ORDER BY term;

SELECT
    emp_length AS Emp_service_tenure,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_received_amount
FROM
    financial_loan
GROUP BY emp_length
ORDER BY emp_length;


SELECT
    purpose,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_received_amount
FROM
    financial_loan
GROUP BY purpose
ORDER BY purpose;


SELECT
    home_ownership,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_received_amount
FROM
    financial_loan
GROUP BY home_ownership
ORDER BY home_ownership;


