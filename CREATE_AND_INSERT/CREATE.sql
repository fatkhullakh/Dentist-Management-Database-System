CREATE TABLE Clinic(
	ClinicID INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
	Clinic_Name varchar(50) NOT NULL,
	Address varchar(50) NOT NULL,
	Phone_number INT NOT NULL,
	Email VARCHAR(50) CHECK (Email LIKE '%@%.com')
);


CREATE TABLE Customer(
    CustomerID INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
    Name varchar(50) NOT NULL,
    Surname varchar(50) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')) NOT NULL,
    Phone_number VARCHAR(15) NOT NULL,
    PESEL VARCHAR(11),
    Email VARCHAR(50) CHECK (Email LIKE '%@%.com'),
    ClinicID INT REFERENCES Clinic ON DELETE SET NULL
);


ALTER TABLE Customer ALTER COLUMN PESEL VARCHAR(11);


CREATE TABLE Patient(
    PatientID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')) NOT NULL,
    DateOfBirth DATE NOT NULL,
	CustomerID INT REFERENCES Customer(CustomerID) ON DELETE SET NULL
);

-- Create Dentist table
CREATE TABLE Dentist(
    DentistID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Email VARCHAR(50) CHECK (Email LIKE '%@%.com'),
    ClinicID INT REFERENCES	Clinic ON DELETE SET NULL
);


CREATE TABLE ServiceCatalog(
    ServiceCatalogID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    ServiceName NVARCHAR(100) NOT NULL,
    Duration INT NOT NULL, -- Assuming duration is in minutes
    Cost DECIMAL(10, 2) NOT NULL,
	ClinicID INT REFERENCES	Clinic ON DELETE SET NULL
);


CREATE TABLE Visit(
    VisitID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Date DATETIME2 NOT NULL, -- Assuming combined date and time
    PatientID INT FOREIGN KEY REFERENCES Patient(PatientID)  ON UPDATE CASCADE,
    DentistID INT FOREIGN KEY REFERENCES Dentist(DentistID) ON DELETE SET NULL
);


CREATE TABLE Service(
    ServiceID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    ServiceName NVARCHAR(100) NOT NULL,
    Duration INT NOT NULL, -- Assuming duration is in minutes
    Cost DECIMAL(10, 2) NOT NULL,
    ServiceCatalogID INT REFERENCES ServiceCatalog ON DELETE SET NULL,
	VisitID INT REFERENCES Visit ON DELETE SET NULL
);


CREATE TABLE Teeth(
    ToothID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Side CHAR(2) CHECK (side IN ('UR','LR','UL', 'LL')) NOT NULL,  --(UR;for upper right, LR;lower right, UL; upper left, LL;lower left)
    Number INT NOT NULL,
	ServiceID INT REFERENCES Service ON DELETE SET NULL
);



CREATE TABLE Payment(
    PaymentID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    DatePaid DATETIME2 NOT NULL,
    Status NVARCHAR(100) NOT NULL,
    PaymentMethod NVARCHAR(50) NOT NULL,
    CustomerID INT REFERENCES Customer(CustomerID) ON DELETE SET NULL
);



-- Create ActualAvailability table
CREATE TABLE ActualAvailability(
    AvailabilityID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Date DATE NOT NULL,
    Status NVARCHAR(50) NOT NULL,
    DentistID INT FOREIGN KEY REFERENCES Dentist(DentistID) ON DELETE SET NULL
);


CREATE TABLE Appointment(
    AppointmentID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Date DATE NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    CustomerID INT REFERENCES Customer ON DELETE SET NULL,
	AvailabilityID INT REFERENCES ActualAvailability ON DELETE SET NULL
);
  

CREATE TABLE PlannedAvailability(
    PlannedAvailabilityID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    DayOfWeek NVARCHAR(10) CHECK (DayOfWeek IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')),
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    DentistID INT REFERENCES Dentist ON DELETE SET NULL,
);
