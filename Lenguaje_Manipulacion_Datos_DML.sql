USE Northwind
--Lenguaje de Manipulaci�n de Datos (DML)

/*Situaci�n: El equipo de ventas desea registrar nuevos clientes en la base de datos.
Inserta un nuevo registro en la tabla Customers con la siguiente informaci�n:
CustomerID: 'NEW01'
CompanyName: 'New Horizons Ltd.'
ContactName: 'Juan P�rez'
Country: 'Mexico'*/

SELECT * FROM customers

INSERT customers (customer_id, company_name, contact_name, country)
VALUES ('NEW01','New Horizons Ltd.','Juan P�rez','Mexico')

SELECT * FROM customers
WHERE customer_id = 'NEW01'

/* Situaci�n: Necesitamos actualizar los datos de contacto de varios clientes
debido a un cambio en el �rea de ventas.
1- Actualiza el campo ContactTitle de todos los clientes en el pa�s 'USA' a 'Regional Manager' */

SELECT country, contact_title FROM customers
WHERE country = 'USA'

UPDATE customers 
SET contact_title = 'Regional Manager'
WHERE country = 'USA'

/* Situaci�n: Se ha decidido realizar una fusi�n de dos clientes en uno solo y eliminar el registro duplicado.
1- Fusiona los pedidos de un cliente en el registro de otro cliente en la tabla Orders.
Puedes usar los campos CustomerID para identificar a los clientes.
2- Elimina el cliente duplicado de la tabla Customers. */

UPDATE orders
SET customer_id = 'ALFKI'
WHERE customer_id = 'ANTON'

SELECT * FROM orders WHERE customer_id = 'ALFKI';

SELECT * FROM customers
WHERE customer_id = 'ANTON'

DELETE customers 
WHERE customer_id = 'ANTON'

SELECT * FROM orders WHERE customer_id = 'ANTON';

