-- Crear base de datos y usarla
CREATE DATABASE GestionVentas;

USE GestionVentas;

-- Crear tabla Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15) NOT NULL,
    Email VARCHAR(50) NOT NULL
);

-- Crear tabla Empleados 
CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY IDENTITY,
    NombreEmpleado VARCHAR(50) NOT NULL,
    Cargo VARCHAR(50) NOT NULL,
    FechaContratacion DATE NOT NULL
);

-- Crear tabla Productos 
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY IDENTITY,
    NombreProducto VARCHAR(50) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Descripcion VARCHAR(100)
);

-- Crear tabla Ventas
CREATE TABLE Ventas (
    VentaID INT PRIMARY KEY IDENTITY,
    ClienteID INT,
    EmpleadoID INT,
    Fecha DATE NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)
);

-- Crear tabla DetalleVentas
CREATE TABLE DetalleVentas (
    DetalleID INT PRIMARY KEY IDENTITY,
    VentaID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    FOREIGN KEY (VentaID) REFERENCES Ventas(VentaID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

-- Insertar Clientes
INSERT INTO Clientes (Nombre, Direccion, Telefono, Email)
VALUES 
('Juan Perez', 'Calle 123', '3001234567', 'juan@mail.com'),
('Ana García', 'Avenida 45', '3109876543', 'ana@mail.com'),
('Carlos Rojas', 'Carrera 50', '3012345678', 'carlosr@mail.com'),
('María Torres', 'Calle 90', '3156789012', 'maria.t@mail.com'),
('Jorge Muñoz', 'Diagonal 20', '3112345678', 'jorge.m@mail.com'),
('Paula Gutiérrez', 'Transversal 15', '3208765432', 'paula.g@mail.com'),
('Daniela Ruiz', 'Autopista Norte', '3123456789', 'daniela.r@mail.com'),
('Fernando López', 'Calle 10', '3198765432', 'fernando.l@mail.com'),
('Gabriela Mendoza', 'Avenida 68', '3145678901', 'gabriela.m@mail.com'),
('Ricardo Gómez', 'Calle 25', '3187654321', 'ricardo.g@mail.com');

-- Insertar Empleados
INSERT INTO Empleados (NombreEmpleado, Cargo, FechaContratacion)
VALUES 
('Carlos Ruiz', 'Vendedor', '2023-01-15'),
('Luis Fernández', 'Gerente', '2022-03-10'),
('Andrea Morales', 'Cajera', '2021-05-20'),
('Pedro Valencia', 'Supervisor', '2022-07-30'),
('Diana Ortiz', 'Asistente', '2023-03-01'),
('Roberto Ríos', 'Vendedor', '2023-06-10'),
('Laura Peña', 'Vendedora', '2024-01-25'),
('Javier González', 'Supervisor', '2023-02-15'),
('Carmen Silva', 'Cajera', '2022-08-18'),
('Esteban Pardo', 'Asistente', '2023-04-22');

-- Insertar Productos
INSERT INTO Productos (NombreProducto, Precio, Descripcion)
VALUES 
('Laptop', 1500.00, 'Computadora portátil'),
('Teclado', 50.00, 'Teclado mecánico USB'),
('Mouse', 25.00, 'Mouse óptico inalámbrico'),
('Monitor', 300.00, 'Monitor LED 24 pulgadas'),
('Impresora', 250.00, 'Impresora multifunción'),
('USB 16GB', 20.00, 'Memoria USB de 16GB'),
('Auriculares', 40.00, 'Auriculares con micrófono'),
('Webcam', 60.00, 'Webcam HD'),
('Disco Duro', 100.00, 'HDD 1TB externo'),
('Tablet', 400.00, 'Tablet Android 10 pulgadas');

-- Insertar Ventas
INSERT INTO Ventas (ClienteID, EmpleadoID, Fecha, Total)
VALUES 
(1, 1, '2024-04-01', 1550.00),
(2, 2, '2024-04-01', 75.00),
(3, 3, '2024-04-01', 300.00),
(4, 4, '2024-04-01', 500.00),
(5, 5, '2024-04-01', 400.00),
(6, 6, '2024-04-01', 40.00),
(7, 7, '2024-04-01', 60.00),
(8, 8, '2024-04-01', 100.00),
(9, 9, '2024-04-01', 20.00),
(10, 10, '2024-04-01', 80.00);

-- Insertar DetalleVentas
INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES 
(1, 1, 1, 1500.00),
(1, 2, 1, 50.00),
(2, 3, 3, 25.00),
(3, 4, 1, 300.00),
(4, 5, 1, 250.00),
(4, 6, 5, 20.00),
(5, 10, 1, 400.00),
(6, 7, 1, 40.00),
(7, 8, 1, 60.00),
(8, 9, 1, 100.00);


-- Seleccionar las tablas
SELECT * FROM  Clientes;
SELECT * FROM Empleados
SELECT * FROM Productos
SELECT * FROM Ventas

