--####################################### VIEW #1 (Total Service Cost for Dentist)
CREATE VIEW TotalCostPerDentist AS
SELECT Dentist.DentistID, Dentist.Name, Dentist.Surname, SUM(Service.Cost) AS TotalServiceCost
FROM Dentist
JOIN Visit ON Dentist.DentistID = Visit.DentistID
JOIN Service ON Visit.VisitID = Service.VisitID
GROUP BY Dentist.DentistID, Dentist.Name, Dentist.Surname;

	SELECT *
	FROM TotalCostPerDentist
	WHERE TotalServiceCost > 100;


DROP VIEW IF EXISTS TotalCostPerDentist;

--####################################### JOINS #1 (Last visit)
SELECT Patient.Name, Patient.Surname, MAX(Visit.Date) AS LastVisitDate
FROM Patient
JOIN Visit ON Patient.PatientID = Visit.PatientID
GROUP BY Patient.Name, Patient.Surname;

--####################################### JOINS #2 (Service provided during visit)
SELECT Patient.Name AS PatientName, Dentist.Name AS DentistName, Service.ServiceName, Visit.Date
FROM Service
JOIN Visit ON Service.VisitID = Visit.VisitID
JOIN Patient ON Visit.PatientID = Patient.PatientID
JOIN Dentist ON Visit.DentistID = Dentist.DentistID;



--####################################### SUBQUERY #1 (Patient on a specific date)
SELECT Patient.Name, Patient.Surname
FROM Patient
WHERE Patient.PatientID IN (
    SELECT Visit.PatientID
    FROM Visit
    WHERE Visit.Date = '2023-01-11 10:00:00.0000000'
);
--####################################### SUBQUERY #2 (Service costs higher than average)
SELECT Service.ServiceName, Service.Cost
FROM Service
WHERE Service.Cost > (
    SELECT AVG(Cost) FROM Service
);



--####################################### AGGREGATE #1 (Average cost of services)
SELECT Clinic.ClinicID, Clinic.Clinic_Name, AVG(ServiceCatalog.Cost) AS AverageServiceCost
FROM Clinic
JOIN ServiceCatalog ON Clinic.ClinicID = ServiceCatalog.ClinicID
GROUP BY Clinic.ClinicID, Clinic.Clinic_Name;

--####################################### AGGREGATE #2 (TOTAL Revenue per Clinic)
SELECT Clinic.ClinicID, Clinic.Clinic_Name, SUM(Payment.Amount) AS TotalRevenue
FROM Clinic
JOIN Customer ON Clinic.ClinicID = Customer.ClinicID
JOIN Payment ON Customer.CustomerID = Payment.CustomerID
GROUP BY Clinic.ClinicID, Clinic.Clinic_Name;

--####################################### AGGREGATE #3 Additional (MAX and MIN Cost per Clinic)
SELECT Clinic.Clinic_Name, MAX(ServiceCatalog.Cost) AS MaxServiceCost, MIN(ServiceCatalog.Cost) AS MinServiceCost
FROM Clinic
JOIN ServiceCatalog ON Clinic.ClinicID = ServiceCatalog.ClinicID
GROUP BY Clinic.Clinic_Name;





--####################################### GROUPING #1 (Total Numb. of Visits per Clinic)
SELECT Clinic.ClinicID, Clinic.Clinic_Name, COUNT(Visit.VisitID) AS TotalVisits
FROM Clinic
JOIN Dentist ON Clinic.ClinicID = Dentist.ClinicID
JOIN Visit ON Dentist.DentistID = Visit.DentistID
GROUP BY Clinic.ClinicID, Clinic.Clinic_Name;

--####################################### GROUPING #2 (Total Payment each Customer)
SELECT Customer.CustomerID, Customer.Name, SUM(Payment.Amount) AS TotalPayments
FROM Customer
JOIN Payment ON Customer.CustomerID = Payment.CustomerID
GROUP BY Customer.CustomerID, Customer.Name;



--####################################### ORDER #1
SELECT Name, Surname, DateOfBirth, DATEDIFF(year, DateOfBirth, GETDATE()) AS Age
FROM Patient 
ORDER BY Age;





--Dentist visits hiestst
--SELECT Dentist.DentistID, Dentist.Name, COUNT(Visit.VisitID) AS NumberOfVisits
--FROM Dentist
--JOIN Visit ON Dentist.DentistID = Visit.DentistID
--GROUP BY Dentist.DentistID, Dentist.Name
--ORDER BY COUNT(Visit.VisitID) DESC

