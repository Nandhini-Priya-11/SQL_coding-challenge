CREATE DATABASE CityHospital_DB;

USE CityHospital_DB;

CREATE TABLE Patients ( 
PatientsID INT PRIMARY KEY AUTO_INCREMENT,
PatientsName VARCHAR(50) NOT NULL,
Age INT,
Gender ENUM('M','F'),
AdmissionDate DATE
);

 ALTER TABLE Patients
ADD COLUMN DoctorAssigned VARCHAR(50);

ALTER TABLE Patients
MODIFY COLUMN PatientsName VARCHAR(100) NOT NULL;

ALTER TABLE Patients
RENAME TO Patient_Info;

TRUNCATE TABLE Patient_Info;

DROP TABLE Patient_Info;


