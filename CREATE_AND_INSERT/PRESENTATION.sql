--Fatkhullakh Turakhonv 192066, 12/15/2023, Topic: Dentist - services, customers, visits, payments
/*
Goal of Project
The goal of this project is to create a robust database system for a
dental clinic that centralizes management of patient services,
appointments, and financial transactions, with the intent to streamline
clinic operations, improve patient service delivery, and facilitate easier
access to and management of patient records

Customer (CustomerID, Name, Surname, PhoneNumber, Email, Address, Gender, Data Of Birth, PESEL, have REF Clinic)

Patient (PatientID, Name, Surname, DateOfBirth, Gender, is_a REF Customer)

Visit (VisitID, Date, Time, went_to REF Patient, generate REF Payment)

Payment (PaymentID, Amount, PaymentDate, PaymentMethod, Status, does theREF Customer)

Appointment (AppointmentID, Date, StartTime, EndTime, ReasonForVisit,is_booked_by REF Customer, is_during REF Actual Availability)

Actual Availability (AvailabilityID, DateTime, Status, realization_to REF PlannedAvailability)

Planned Availability (PlanAvailID, DayOfWeek, StartTime, EndTime, have REFDentist)

Dentist (DentistID, Name, Surname, PhoneNumber, Email, PESEL, works_at REFClinic)

Clinic (ClinicID, Name, Address, PhoneNumber, Email)

Service Catalog (ServCatalogID, ServiceName, Description, Duration, Cost,is_offered_by REF Clinic)

Service Done (ServiceID, Name, Description, Cost, Duration, is chosen from REFServiceCatalog, is done during REF Visit)

Teeth (TeethID, ToothNumber, ToothSide, fix REF Service)

*/
SELECT * FROM Customer WHERE Gender = 'F'
SELECT * FROM Payment WHERE Status = 'Pending'
SELECT * FROM PlannedAvailability WHERE DayOfWeek = 'Monday'

DELETE FROM Customer Where Gender = 'M';

UPDATE Dentist SET PhoneNumber = '777777777' WHERE PhoneNumber = '512345678'


DELETE FROM Dentist WHERE DentistID = 1;