-- Crear base de datos con MySQL
CREATE DATABASE hospital;

USE Hospital;

--Crear tabla Patient
CREATE TABLE Patient (
    patient_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    patient_name TEXT (225) NOT NULL,
    Patient_birthday TEXT,
    Patient_email TEXT (225),
    Patient_address TEXT (255)
);

--Crear tabla Doctor
CREATE TABLE Doctor (
    doctor_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    doctor_name TEXT (225) NOT NULL,
    doctor_specialty TEXT (225),
    doctor_email TEXT (225)
);

-- Crear tabla Medicina
CREATE Medicine (
    medicine_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    medicine_name TEXT (225) NOT NULL,
    medicine_description TEXT (100),
    medicine_factory TEXT (100),
    medicine_recipe_id INTEGER,
    FOREIGN KEY (medicine_recipe_id) REFERENCES Recipe(recipe_id)
);

-- Crear la tabla Receta
CREATE TABLE Recipe (
    recipe_id INTEGER AUTO_INCREMENT PRIMARY KEY, 
    recipe_name TEXT(100) NOT NULL,
    patient_id INTEGER,
    doctor_id INTEGER,
    FOREIGN KEY (recipe_patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (recipe_doctor_id) REFERENCES Doctor(doctor_id)
);

--Crear tabla Envio
CREATE TABLE Shipment (
    shipment_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    medicine_id INTEGER,
    patient_id INTEGER,
    Patient_address TEXT (255) ,
    shipment_date TEXT NOT NULL,
    FOREING KEY (shipment_medicine_id) REFERENCES Medicine(medicine_id),
    FOREING KEY (Shipment_patient_id) REFERENCES Patient(patient_id)
);
