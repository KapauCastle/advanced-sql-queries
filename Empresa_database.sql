-- Crear base de datos
CREATE DATABASE IF NOT EXISTS EmpresaEmpleados;
USE EmpresaEmpleados;

-- Tabla Departamentos
CREATE TABLE Departamentos (
    depto_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT NOT NULL,
    ubicacion TEXT
);

-- Tabla Empleados
CREATE TABLE Empleados (
    empleado_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT NOT NULL,
    apellido TEXT NOT NULL,
    email TEXT,
    depto_id INT,
    FOREIGN KEY (depto_id) REFERENCES Departamentos(depto_id)
);

-- Tabla Proyectos
CREATE TABLE Proyectos (
    proyecto_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre TEXT NOT NULL,
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin DATE
);

-- Tabla AsignacionesDeProyectos
CREATE TABLE AsignacionesDeProyectos (
    asignacion_id INT PRIMARY KEY AUTO_INCREMENT,
    proyecto_id INT,
    empleado_id INT,
    horas_asignadas INT NOT NULL,
    FOREIGN KEY (proyecto_id) REFERENCES Proyectos(proyecto_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id)
);

-- Datos para Departamentos
INSERT INTO Departamentos (depto_id, nombre, ubicacion) VALUES
(1, 'Tecnología', 'Ciudad de México'),
(2, 'Recursos Humanos', 'Ciudad de México'),
(3, 'Marketing', 'Guadalajara');

-- Datos para Empleados  
INSERT INTO Empleados (empleado_id, nombre, apellido, email, depto_id) VALUES
(1, 'Juan', 'Pérez', 'juan.perez@empresa.com', 1),
(2, 'María', 'López', 'maria.lopez@empresa.com', 1),
(3, 'Carlos', 'García', 'carlos.garcia@empresa.com', 2),
(4, 'Ana', 'Hernández', 'ana.hernandez@empresa.com', 3),
(5, 'Luis', 'Ramírez', 'luis.ramirez@empresa.com', 3);

-- Datos para Proyectos
INSERT INTO Proyectos (proyecto_id, nombre, descripcion, fecha_inicio, fecha_fin) VALUES
(1, 'Sistema Interno', 'Desarrollo del sistema interno de la empresa', '2025-01-01', '2025-06-30'),
(2, 'Portal Clientes', 'Portal web para clientes', '2025-03-01', '2025-12-31'),
(3, 'Campaña Publicitaria', 'Campaña marketing digital', '2025-02-15', '2025-05-31');

-- Datos para AsignacionesDeProyectos
INSERT INTO AsignacionesDeProyectos (asignacion_id, proyecto_id, empleado_id, horas_asignadas) VALUES
(1, 1, 1, 120), (2, 1, 2, 80), (3, 1, 3, 40),
(4, 2, 1, 60), (5, 2, 2, 100), (6, 2, 4, 50),
(7, 3, 4, 90), (8, 3, 5, 70);

