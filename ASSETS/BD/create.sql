--Crear tabla Usuarios
CREATE TABLE Usuario (
    No_Cuenta SERIAL PRIMARY KEY,
    Nombre VARCHAR(100),
    Sexo CHAR(1),
    Fecha_Nacimiento DATE,
    Fecha_Ingreso DATE,
    Calle VARCHAR(255),
    Colonia VARCHAR(100),
    Codigo_Postal VARCHAR(10),
    Poblacion VARCHAR(100),
    Localidad VARCHAR(100),
    Telefono VARCHAR(15),
    CURP VARCHAR(18),
    Afiliacion_IMSS VARCHAR(11),
    Rol_ID INT,
    FOREIGN KEY (Rol_ID) REFERENCES Rol(ID)
);

-- Crear la tabla de roles
CREATE TABLE Rol (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(50) UNIQUE
);

-- Crear tabla carrera
 create table Carrera (
 	clave INT,
 	nombre_carrera VARCHAR(50),
 	duracion INT
 );
 
-- Crear la tabla para llevar el control de semestres
CREATE TABLE Semestres (
    Numero INT PRIMARY KEY
);

-- Crear la tabla para materias
CREATE TABLE Materias (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(255),
    Creditos INT
);

-- Crear tabla intermedia para relacionar materias con semestres
CREATE TABLE Materias_Semestres (
    ID SERIAL PRIMARY KEY,
    Materia_ID INT,
    Semestre_ID INT,
    Calificacion INT, -- Agrega esta columna para la calificación
    FOREIGN KEY (Materia_ID) REFERENCES Materias(ID),
    FOREIGN KEY (Semestre_ID) REFERENCES Semestres(Numero)
);