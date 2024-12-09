
INSERT INTO Clinic (Clinic_Name, Address, Phone_number, Email) VALUES
('Gdansk Dental Care', '123 Harbor St, Gdansk', 123456789, 'info@gdanskdental.com'),
('Baltic Orthodontics', '234 Coastal Ave, Gdansk', 234567890, 'smiles@balticortho.com'),
('Smile Designers Gdansk', '345 Old Town Rd, Gdansk', 345678901, 'contact@smiledesignersgd.com'),
('Seaside Dental Clinic', '456 Seashore Blvd, Gdansk', 456789012, 'hello@seasidedental.com'),
('City Dental Gdansk', '567 City Center St, Gdansk', 567890123, 'appointments@citydentalgd.com'),
('Bright Smiles Clinic', '678 Sunshine Ave, Gdansk', 678901234, 'office@brightsmiles.com'),
('Happy Teeth Dental', '789 Happy St, Gdansk', 789012345, 'info@happyteeth.com'),
('Pomeranian Dental Experts', '890 Long St, Gdansk', 890123456, 'care@pomdental.com'),
('New Age Dentists', '901 New Age Rd, Gdansk', 901234567, 'services@newagedentists.com'),
('Dental Harmony', '101 Harmonic Way, Gdansk', 101234567, 'contact@dentalharmony.com');



INSERT INTO Customer (Name, Surname, Date_Of_Birth, Gender, Phone_number, PESEL, Email, ClinicID) VALUES
('Anna', 'Kowalska', '1990-06-15', 'F', '501234567', '90061512345', 'anna.k@example.com', 1),
('Jan', 'Nowak', '1985-09-24', 'M', '501234568', '85092412345', 'jan.n@example.com', 1),
('Ewa', 'Maj', '1992-12-05', 'F', '501234569', '92120512345', 'ewa.m@example.com', 1),
('Piotr', 'Zajac', '1988-03-14', 'M', '501234570', '88031412345', 'piotr.z@example.com', 1),
('Zofia', 'Kaczmarek', '1976-07-30', 'F', '501234571', '76073012345', 'zofia.k@example.com', 1),
('Krzysztof', 'Jankowski', '1995-11-22', 'M', '501234572', '95112212345', 'krzysztof.j@example.com', 1),
('Agnieszka', 'Wojcik', '1983-04-18', 'F', '501234573', '83041812345', 'agnieszka.w@example.com', 1),
('Tomasz', 'Kaminski', '1991-08-09', 'M', '501234574', '91080912345', 'tomasz.k@example.com', 1),
('Karolina', 'Lewandowska', '1987-02-27', 'F', '501234575', '87022712345', 'karolina.l@example.com', 1),
('Marcin', 'Zielinski', '1993-05-16', 'M', '501234576', '93051612345', 'marcin.z@example.com', 1);


INSERT INTO Patient (Name, Surname, Gender, DateOfBirth) VALUES
('Lukasz', 'Ostrowski', 'M', '1980-02-12'),
('Magdalena', 'Szczepanska', 'F', '1974-07-21'),
('Pawel', 'Dabrowski', 'M', '1982-10-30'),
('Katarzyna', 'Pawlak', 'F', '1989-03-05'),
('Michal', 'Wojciechowski', 'M', '1994-12-14'),
('Dorota', 'Kozlowska', 'F', '1978-08-09'),
('Rafal', 'Jasinska', 'M', '1965-11-22'),
('Justyna', 'Kwiatkowska', 'F', '1991-04-18'),
('Jakub', 'Krawczyk', 'M', '1985-09-19'),
('Alicja', 'Piatek', 'F', '1971-06-30');

INSERT INTO Dentist (Name, Surname, PhoneNumber, Email, ClinicID) VALUES
('Adam', 'Kowalski', '512345678', 'adam.kowalski@clinic1.com', 1),
('Beata', 'Nowak', '512345679', 'beata.nowak@clinic2.com', 2),
('Cezary', 'Lewandowski', '512345680', 'cezary.lewandowski@clinic1.com', 1),
('Dorota', 'Zajac', '512345681', 'dorota.zajac@clinic3.com', 3),
('Ewa', 'Maj', '512345682', 'ewa.maj@clinic4.com', 4),
('Filip', 'Kaminski', '512345683', 'filip.kaminski@clinic5.com', 5),
('Grazyna', 'Wisniewska', '512345684', 'grazyna.wisniewska@clinic1.com', 1),
('Henryk', 'Wójcik', '512345685', 'henryk.wojcik@clinic2.com', 2),
('Iwona', 'Kowalczyk', '512345686', 'iwona.kowalczyk@clinic3.com', 3),
('Jacek', 'Szymanski', '512345687', 'jacek.szymanski@clinic4.com', 4);

INSERT INTO ServiceCatalog (ServiceName, Duration, Cost, ClinicID) VALUES
('Routine Checkup', 30, 100.00, 1),
('Dental Cleaning', 60, 150.00, 1),
('Tooth Extraction', 45, 200.00, 1),
('Cavity Filling', 30, 250.00, 2),
('Root Canal Treatment', 90, 300.00, 2),
('Teeth Whitening', 30, 350.00, 3),
('Dental Implants', 120, 400.00, 3),
('Orthodontic Consultation', 60, 100.00, 4),
('Periodontal Treatment', 90, 150.00, 4),
('Veneers', 85, 500.00, 5);


INSERT INTO Visit (Date, PatientID, DentistID) VALUES
('2023-01-10 09:00', 1, 1),
('2023-01-10 10:00', 2, 1),
('2023-01-10 11:00', 3, 2),
('2023-01-10 12:00', 4, 2),
('2023-01-11 09:00', 5, 3),
('2023-01-11 10:00', 6, 3),
('2023-01-11 11:00', 7, 4),
('2023-01-11 12:00', 8, 4),
('2023-01-12 09:00', 9, 5),
('2023-01-12 10:00', 10, 5);

-- Assuming ServiceCatalogID 1-10 and VisitID 1-10 are valid IDs.
INSERT INTO Service (ServiceName, Duration, Cost, ServiceCatalogID, VisitID) VALUES
('Routine Checkup', 30, 100.00, 1, 1),
('Dental Cleaning', 60, 150.00, 2, 2),
('Tooth Extraction', 45, 200.00, 3, 3),
('Cavity Filling', 30, 250.00, 4, 4),
('Root Canal Treatment', 90, 300.00, 5, 5),
('Teeth Whitening', 30, 350.00, 6, 6),
('Dental Implants', 120, 400.00, 7, 7),
('Orthodontic Consultation', 60, 100.00, 8, 8),
('Periodontal Treatment', 90, 150.00, 9, 9),
('Veneers', 85, 500.00, 10, 10);


INSERT INTO Teeth (Side, Number, ServiceID) VALUES
('UR', 1, 1),
('LR', 2, 2),
('UL', 3, 3),
('LL', 4, 4),
('UR', 5, 5),
('LR', 6, 6),
('UL', 7, 7),
('LL', 8, 8),
('UR', 9, 9),
('LR', 10, 10);


INSERT INTO Payment (Amount, DatePaid, Status, PaymentMethod, CustomerID) VALUES
(100.00, '2023-01-13', 'Completed', 'Cash', 1),
(150.00, '2023-01-14', 'Completed', 'Credit Card', 2),
(200.00, '2023-01-15', 'Completed', 'Cash', 3),
(250.00, '2023-01-16', 'Pending', 'Debit Card', 4),
(300.00, '2023-01-17', 'Completed', 'Credit Card', 5),
(350.00, '2023-01-18', 'Pending', 'Cash', 6),
(400.00, '2023-01-19', 'Completed', 'Debit Card', 7),
(100.00, '2023-01-20', 'Completed', 'Cash', 8),
(150.00, '2023-01-21', 'Pending', 'Credit Card', 9),
(500.00, '2023-01-22', 'Completed', 'Cash', 10);



INSERT INTO ActualAvailability (Date, Status, DentistID) VALUES
('2023-01-23', 'Available', 1),
('2023-01-24', 'Available', 2),
('2023-01-25', 'Unavailable', 3),
('2023-01-26', 'Available', 4),
('2023-01-27', 'Unavailable', 5),
('2023-01-28', 'Available', 6),
('2023-01-29', 'Available', 7),
('2023-01-30', 'Unavailable', 8),
('2023-01-31', 'Available', 9),
('2023-02-01', 'Available', 10);


INSERT INTO Appointment (Date, StartTime, EndTime, CustomerID, AvailabilityID) VALUES
('2023-02-02', '09:00', '09:30', 1, 1),
('2023-02-03', '10:00', '10:30', 2, 2),
('2023-02-04', '11:00', '11:30', 3, 3),
('2023-02-05', '12:00', '12:30', 4, 4),
('2023-02-06', '13:00', '13:30', 5, 5),
('2023-02-07', '14:00', '14:30', 6, 6),
('2023-02-08', '15:00', '15:30', 7, 7),
('2023-02-09', '16:00', '16:30', 8, 8),
('2023-02-10', '17:00', '17:30', 9, 9),
('2023-02-11', '18:00', '18:30', 10, 10);


INSERT INTO PlannedAvailability (DayOfWeek, StartTime, EndTime, DentistID) VALUES
('Friday', '08:00', '16:00', 5),
('Saturday', '09:00', '14:00', 6),
('Monday', '08:00', '16:00', 7),
('Tuesday', '08:00', '16:00', 8),
('Wednesday', '10:00', '18:00', 9),
('Thursday', '10:00', '18:00', 10),
('Friday', '08:00', '16:00', 1),
('Saturday', '09:00', '14:00', 2),
('Monday', '08:00', '16:00', 3),
('Tuesday', '08:00', '16:00', 4),
('Wednesday', '10:00', '18:00', 5),
('Thursday', '10:00', '18:00', 6),
('Friday', '08:00', '16:00', 7),
('Saturday', '09:00', '14:00', 8),
('Monday', '08:00', '16:00', 9),
('Tuesday', '08:00', '16:00', 10);
