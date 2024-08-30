# MODELO RELACIONAL PARA UN HOSPITAL

Integrantes
Maria Silva Padilla/Jesus Lopez Rubio

## Patient
    patient_id (PK) LLave primaria
    patient_nombre: Nombre del paciente (Texto)
    patient_birthday: Fecha de nacimiento (fecha)
    patient_email: Direccion de correo del paciente (Texto o alfanumerico)
    patient_address: Direccion del paciente (texto o numero)   

## Doctor 
    doctor_id (PK) Identificador unico de doctor
    doctor_name: Nombre del doctor (Texto)
    doctor_specialty: Especialidad del doctor (Texto)
    doctor_email: Direccion de correo del doctor (Texto o alfanumerico)

## Medicine
    medicine_id (PK): Identificador unico del medicamento
    medicine_name: Nombre del medicamento (Texto)
    medicine_description: Descripcion del medicamento (Texto)
    medicine_factory: Nombre de fabrica (Texto)
    medicine_formula_id (FK): numero desde la entidad formula 

## formula 
   formula_id (PK): Identificador formula
   formula_name: Nombre de la formula (Texto) 
   formula_patient_id (FK): Identificador de formula descrita al paciente (Numero)
   formula_doctor_id (FK): Identificador de formula descrita por el doctor (Numero)
   
 ## Shipment
    shipment_id (PK): Identificador unico del envio
    shipment_medicine_id (FK): Numero desde la entidad medicamento
    shipment_patient_id (FK): Identificador unico del paciente (Numero o alfanumerico)
    shipment_date: Fecha de envio (Numero)

Relaciones entre Entidades

Patient y Formula:
Formula tiene a formula_patient_id que es llave foranea y se refiere a patient_id en Patient, significa que una formula se asocia a un paciente especifico.
Doctor y Formula:
Formula tiene a formula_doctor_id que es llave foranea y se refiere a doctor_id en Doctor, significa que una formula es escrita por un doctor especifico.
Medicine y Formula:
Medicine tiene a medicine_formula_id que es llave foranea y se refiere a formula_id en Formula, significa que un medicamento se asocia a una formula especifica.
Patient y Shipment:
Shipment tiene a shipment_patient_id que es llave foranea y se refiere a patient_id en Patient, significa que un envio esta dirigido a un paciente especifico.
Medicine y Shipment:
Shipment tiene a shipment_medicine_id que es llave foranea y se refiere a medicine_id en Medicine, significa que el medicamento se enviara.
