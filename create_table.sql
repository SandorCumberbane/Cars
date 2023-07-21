DROP TABLE IF EXISTS cars cascade;
CREATE TABLE cars (
	car_id SMALLSERIAL PRIMARY KEY,
	car_name VARCHAR(50),
	car_company VARCHAR(50),
	max_speed INT,
	acceleration NUMERIC,
	market_price NUMERIC
);

DROP TABLE IF EXISTS customers cascade;
CREATE TABLE customers (
	customer_id SMALLSERIAL PRIMARY KEY,
	customer_name VARCHAR(50),
	customer_address VARCHAR(50),
	customer_city VARCHAR(50)
);

DROP TABLE IF EXISTS orders cascade;
CREATE TABLE orders (
	order_id SMALLSERIAL PRIMARY KEY,
	customer_id INTEGER,
	car_id INTEGER,
	CONSTRAINT fk_customer_car
		FOREIGN KEY(customer_id)
			REFERENCES customers(customer_id)
			ON DELETE CASCADE,
		FOREIGN KEY(car_id)
			REFERENCES cars(car_id)
			ON DELETE CASCADE
);


-- Fill Table

INSERT INTO
	cars (car_name, car_company, max_speed, acceleration, market_price)
VALUES
	('Model S', 'Tesla', 250, 3.2, 106490),
	('Model 3', 'Tesla', 225, 6.1, 42990),
	('A-Class Limousine', 'Mercedes', 250, 6.4, 44994.88),
	('911 Carrera', 'Porsche', 293, 4.2, 156747.26),
	('718 Cayman', 'Porsche', 275, 5.1, 81215.87),
	('718 Cayenne', 'Porsche', 248, 6.0, 118981.27),
	('Polo', 'Volkswagen', 171, NULL, 17990),
	('Golf', 'Volkswagen', 202, NULL, 25990),
	('Tiguan', 'Volkswagen', 195, NULL, 34480),
	('Roma', 'Ferrari', NULL, 3.4, NULL),
	('A5 Coupé', 'Audi', 228, 8.2, 45827),
	('Octavia Combi', 'Skoda', NULL, NULL, 33390),
	('Corolla', 'Toyota', 180, 9.1, 27090),
	('Prius', 'Toyota', 177, 6.8, 43390),
	('Aygo X', 'Toyota', 158, 14.9, 15440),
	('3er', 'BMW', 230, 5.8, 48350);

INSERT INTO
	customers (customer_name, customer_address, customer_city)
VALUES
	('Hans Gruber', 'Am Graben 1', 'Wien'),
	('Sascha Huber', 'Feldweg 5', 'Salzburg'),
	('Hubert Maierhofer', NULL, 'Graz'),
	('Auto Pfeiffer', 'Industriestraße 12', 'Linz'),
	('Guduc Dragic', 'Ottakringer Strasse 69', 'Wien'),
	('James Westfield', NULL, 'Wien');
	
INSERT INTO
	orders (customer_id, car_id)
VALUES
	(1, 1),
	(2, 3),
	(3, 4),
	(4, 5),
	(4, 6),
	(4, 6),
	(5, 16),
	(6, 13),
	(6, 14),
	(1, 12);

SELECT *
FROM cars;

SELECT *
FROM customers;

SELECT *
FROM orders;