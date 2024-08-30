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
    medicine_recipe_id (FK): numero desde la entidad receta 

## Recipe
    recipe_id (PK): Identificador receta
    recipe_name: Nombre de la receta (Texto) 
    recipe_patient_id (FK): Identificador de receta descrita al paciente (Numero)
    recipe_doctor_id (FK): Identificador de receta descrita por el doctor (Numero)
   
 ## Shipment
    shipment_id (PK): Identificador unico del envio
    shipment_medicine_id (FK): Numero desde la entidad medicamento
    shipment_patient_id (FK): Identificador unico del paciente (Numero o alfanumerico)
    shipment_date: Fecha de envio (Numero)

Relaciones entre Entidades

Patient y Recipe:
Receta tiene a recipe_patient_id que es llave foranea y se refiere a patient_id en Patient, significa que una receta se asocia a un paciente especifico.

Doctor y Recipe:
Receta tiene a recipe_doctor_id que es llave foranea y se refiere a doctor_id en Doctor, significa que una receta es escrita por un doctor especifico.

Medicine y Formula:
Medicine tiene a medicine_recipe_id que es llave foranea y se refiere a recipe_id en Receta, significa que un medicamento se asocia a una receta especifica.

Patient y Shipment:
Shipment tiene a shipment_patient_id que es llave foranea y se refiere a patient_id en Patient, significa que un envio esta dirigido a un paciente especifico.

Medicine y Shipment:
Shipment tiene a Shipment_medicine_id que es llave foranea y se refiere a medicine_id en Medicina, significa que el medicamento se enviara.
