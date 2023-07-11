CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50),
  phone VARCHAR(15),
  address VARCHAR(100)
);

CREATE TABLE Vehicle (
  vehicle_id INT PRIMARY KEY,
  customer_id INT,
  brand VARCHAR(50),
  model VARCHAR(50),
  year INT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Service (
  service_id INT PRIMARY KEY,
  vehicle_id INT,
  description VARCHAR(100),
  date DATE,
  value DECIMAL(10, 2),
  FOREIGN KEY (vehicle_id) REFERENCES Vehicle(vehicle_id)
);

