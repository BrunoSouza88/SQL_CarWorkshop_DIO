-- Retrieve specific columns from the Customer table
SELECT customer_id, name, phone FROM Customer;

-- Retrieve vehicles of a specific brand / services performed on a specific date
SELECT * FROM Vehicle WHERE brand = 'Toyota';
SELECT * FROM Service WHERE date = '2022-01-01';

-- Calculate the total value of services performed on a vehicle
SELECT vehicle_id, SUM(value) AS TotalValue
FROM Service
GROUP BY vehicle_id;

-- Retrieve customers sorted by name in ascending order
SELECT * FROM Customer ORDER BY name ASC;

-- Retrieve vehicles that have had more than 5 services performed
SELECT vehicle_id, COUNT(*) AS NumberOfServices
FROM Service
GROUP BY vehicle_id
HAVING COUNT(*) > 5;

-- Retrieve service details including customer name and vehicle model
SELECT Service.service_id, Customer.name AS CustomerName, Vehicle.model AS VehicleModel
FROM Service
INNER JOIN Vehicle ON Service.vehicle_id = Vehicle.vehicle_id
INNER JOIN Customer ON Vehicle.customer_id = Customer.customer_id;
