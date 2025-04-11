# 📊 Proyecto: Sistema de Gestión de Ventas con SQL Server

Este proyecto implementa un sistema de gestión de ventas utilizando **SQL Server**. El objetivo es demostrar el diseño y manejo de bases de datos relacionales,
aplicando buenas prácticas en la organización de los datos y realizando consultas SQL relevantes.

---

## 🚀 Funcionalidades

- Creación de la base de datos `GestionVentas`.
- Creación de tablas relacionadas:
  - Clientes
  - Empleados
  - Productos
  - Ventas
  - DetalleVentas
- Inserción de registros en cada tabla.
- Consultas SQL utilizando:
  - `JOIN`
  - `SUM`,
  - `MIN`,
  - `COUNT`
  - `ORDER BY`,
  - `GROUP BY`
- Relaciones entre tablas mediante claves foráneas.
- Operaciones básicas de mantenimiento de datos ( `UPDATE`, `DELETE`).

---

## 🗃️ Estructura de la Base de Datos

Las tablas del proyecto se relacionan de la siguiente manera:

- **Clientes**: Almacena la información de los clientes registrados.
- **Empleados**: Registra los datos de los empleados que realizan las ventas.
- **Productos**: Contiene información de los productos disponibles (nombre, precio y descripción).
- **Ventas**: Guarda las transacciones realizadas, asociando cliente, empleado, total y fecha.
- **DetalleVentas**: Desglosa cada venta, especificando los productos vendidos y la cantidad.

---

## 📝 Consultas Realizadas

- **Productos más vendidos**: Muestra los productos ordenados según la cantidad total vendida.
- **Venta mínima por empleado**: Encuentra la venta de menor valor que realizó cada empleado.
- **Clientes con más compras**: Lista a los clientes según el monto total gastado.
- **Clientes con más de una compra**: Filtra solo los que compraron más de una vez.

---

## 💾 Requisitos

- SQL Server o cualquier gestor compatible.
- Ejecutar el script SQL en el entorno de tu preferencia.

---

## ⚙️ Ejecución del Proyecto

1. Crear la base de datos y las tablas ejecutando el script `GestionVentas.sql`.
2. Insertar los registros de ejemplo proporcionados.
3. Ejecutar las consultas avanzadas para analizar los datos.
4. Realizar pruebas con actualizaciones y eliminaciones.

---

¡Gracias por revisar este proyecto!  


