select * from healthcare_dataset;


select count(*) AS Total_patient from healthcare_dataset;

select sum(Billing_Amount) AS Total_Revenue from healthcare_dataset;

select AVG(Billing_Amount) AS Avg_Cost from healthcare_dataset;

select Medical_Condition, COUNT(*) AS Cases from healthcare_dataset
GROUP BY Medical_Condition
ORDER BY Cases DESC;

Select Gender, COUNT(*) FROM healthcare_dataset
GROUP BY Gender;

SELECT AVG(DATEDIFF(day, Date_of_Admission, Discharge_Date)) AS AVG_STAY 
FROM healthcare_dataset;



-- CHARTS REQUIREMENT

SELECT Medical_Condition, SUM(Billing_Amount) AS Revenue
FROM healthcare_dataset
GROUP BY Medical_Condition
ORDER BY Revenue DESC;

SELECT Medical_Condition, AVG(DATEDIFF(day, Date_of_Admission, Discharge_Date)) AS Avg_Stay
from healthcare_dataset
GROUP BY Medical_Condition
ORDER BY Avg_Stay DESC;

SELECT FORMAT(Date_of_Admission, 'yyyy-MM') AS Month, COUNT(*) AS Patients
FROM healthcare_dataset
GROUP BY FORMAT(Date_of_Admission, 'yyyy-MM')
ORDER BY Month;

SELECT Gender, SUM(Billing_Amount) AS Revenue FROM healthcare_dataset
GROUP BY Gender;

SELECT Top 10 *
FROM healthcare_dataset
ORDER BY Billing_Amount DESC;

SELECT Hospital, SUM(Billing_Amount) AS Total_Revenue from healthcare_dataset
GROUP BY Hospital
ORDER BY Total_Revenue DESC;

SELECT  Admission_Type, COUNT(*) AS Total_Admissions FROM healthcare_dataset
GROUP BY Admission_Type
ORDER BY Total_Admissions;

SELECT 
UPPER(LEFT(Name, 1)) + LOWER(SUBSTRING(Name,2,LEN(Name))) AS Clean_Name, * FROM healthcare_dataset;

UPDATE healthcare_dataset 
SET Name= UPPER(LEFT(Name, 1))+ LOWER(SUBSTRING(Name, 2, LEN(Name)))