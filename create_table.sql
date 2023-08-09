DROP TABLE IF EXISTS cars cascade;
CREATE TABLE cars (
	car_id SMALLSERIAL PRIMARY KEY,
	car_name VARCHAR(50),
	car_company VARCHAR(50),
	max_speed INT,
	acceleration NUMERIC,
	hp INT,
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
	cars (car_name, car_company, max_speed, acceleration, hp, market_price)
VALUES
	('Model S', 'Tesla', 250, 3.2, 670, 106490),
	('Model 3', 'Tesla', 225, 6.1, NULL, 42990),
	('A-Class Limousine', 'Mercedes', 250, 6.4, 224, 44994.88),
	('911 Carrera', 'Porsche', 293, 4.2, 385, 156747.26),
	('718 Cayman', 'Porsche', 275, 5.1, 300, 81215.87),
	('Cayenne', 'Porsche', 248, 6.0, 353, 118981.27),
	('Polo', 'Volkswagen', 171, NULL, 80, 17990),
	('Golf', 'Volkswagen', 202, NULL, 110, 25990),
	('Tiguan', 'Volkswagen', 195, NULL, 130, 34480),
	('Roma', 'Ferrari', 320, 3.4, 620, NULL),
	('A5 Coupé', 'Audi', 228, 8.2, NULL, 45827),
	('Octavia Combi', 'Skoda', 202, NULL, 110, 33390),
	('Corolla', 'Toyota', 180, 9.1, 140, 27090),
	('Prius', 'Toyota', 177, 6.8, 223, 43390),
	('Aygo X', 'Toyota', 158, 14.9, 72, 15440),
	('3er', 'BMW', 230, 5.8, 292, 48350),
	('Model X', 'Tesla', 250, 3.9, 670, 114490),
	('Model Y', 'Tesla', 217, 6.9, NULL, 47990),
	('EQA', 'Mercedes', NULL, 6.0, 292, 53733.66),
	('C-Class T-Model', 'Mercedes', 226, 7.8, 163, 51490),
	('S-Class Limousine', 'Mercedes', 250, 5.6, 313, 118996.59),
	('XM', 'BMW', 250, 4.3, 748, 174100),
	('Fabia', 'Skoda', 171, NULL, 65, 18390),
	('A1 Sportback', 'Audi', 193, NULL, 95, 23353),
	('A3 Sportback', 'Audi', 204, NULL, 110, 30545),
	('A4 Avant', 'Audi', 220, NULL, 150, 43055),
	('Model S Plaid', 'Tesla', 322, 2.1, 1020, 131490),
	('Taigo', 'Volkswagen', 183, NULL, 95, 20990);

INSERT INTO
	customers (customer_name, customer_address, customer_city)
VALUES
	('Hans Gruber', 'Am Graben 1', 'Wien'),
	('Sascha Huber', 'Feldweg 5', 'Salzburg'),
	('Hubert Maierhofer', NULL, 'Graz'),
	('Auto Pfeiffer', 'Industriestraße 12', 'Linz'),
	('Guduc Dragic', 'Ottakringer Strasse 69', 'Wien'),
	('James Westfield', NULL, 'Wien'),
	('Elongated Muskrat', 'Secret Street 1', 'Salzburg');
	
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
	(1, 12),
	(7, 1),
	(7, 2),
	(7, 17),
	(7, 18);

SELECT *
FROM cars;

SELECT *
FROM customers;

SELECT *
FROM orders;