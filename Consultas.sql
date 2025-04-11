USE GestionVentas

-- Consulta: Productos más vendidos
SELECT p.NombreProducto, SUM(d.Cantidad) AS TotalVendido
FROM DetalleVentas d
JOIN Productos p ON d.ProductoID = p.ProductoID
GROUP BY p.NombreProducto
ORDER BY TotalVendido DESC;

-- Consulta: Venta más baja por empleado
SELECT e.NombreEmpleado, MIN(v.Total) AS VentaMinima
FROM Ventas v
JOIN Empleados e ON v.EmpleadoID = e.EmpleadoID
GROUP BY e.NombreEmpleado;

-- Consulta: Clientes con más compras
SELECT c.Nombre AS NombreCliente, SUM(v.Total) AS TotalCompras
FROM Clientes c
JOIN Ventas v ON c.ClienteID = v.ClienteID
GROUP BY c.Nombre
ORDER BY TotalCompras DESC;

-- BONUS: Actualización de producto
UPDATE Productos
SET Precio = 30.00
WHERE NombreProducto = 'Mouse';

-- BONUS: Eliminación segura de cliente sin ventas
DELETE FROM Clientes
WHERE ClienteID NOT IN (SELECT DISTINCT ClienteID FROM Ventas);


