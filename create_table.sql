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
	('A5 Coupé', 'Audi', 228, 8.2, NULL, 45827),
	('A1 Sportback', 'Audi', 193, NULL, 95, 23353),
	('A3 Sportback', 'Audi', 204, NULL, 110, 30545),
	('A4 Avant', 'Audi', 220, NULL, 150, 43055),
	('316d Limousine', 'BMW', 204, 9.8, 122, 48350),
	('330e xDrive Limousine', 'BMW', 230, 5.8, 292, 55400),
	('420i Coupé', 'BMW', 240, 7.5, 184, 59450),
	('520i Limousine', 'BMW', 230, 7.5, 208, 64575.9),
	('XM', 'BMW', 250, 4.3, 748, 174100),
	('Roma', 'Ferrari', 320, 3.4, 620, NULL),
	('A-Class Limousine', 'Mercedes', 250, 6.4, 224, 44994.88),
	('EQA', 'Mercedes', NULL, 6.0, 292, 53733.66),
	('C-Class T-Model', 'Mercedes', 226, 7.8, 163, 51490),
	('S-Class Limousine', 'Mercedes', 250, 5.6, 313, 118996.59),
	('911 Carrera', 'Porsche', 293, 4.2, 385, 156747.26),
	('718 Cayman', 'Porsche', 275, 5.1, 300, 81215.87),
	('Cayenne', 'Porsche', 248, 6.0, 353, 118981.27),
	('Octavia Combi', 'Skoda', 202, NULL, 110, 33390),
	('Fabia', 'Skoda', 171, NULL, 65, 18390),
	('Model S', 'Tesla', 250, 3.2, 670, 106490),
	('Model 3', 'Tesla', 225, 6.1, NULL, 42990),
	('Model X', 'Tesla', 250, 3.9, 670, 114490),
	('Model Y', 'Tesla', 217, 6.9, NULL, 47990),
	('Model S Plaid', 'Tesla', 322, 2.1, 1020, 131490),
	('Corolla', 'Toyota', 180, 9.1, 140, 27090),
	('Prius', 'Toyota', 177, 6.8, 223, 43390),
	('Aygo X', 'Toyota', 158, 14.9, 72, 15440),
	('Polo', 'Volkswagen', 171, NULL, 80, 17990),
	('Golf', 'Volkswagen', 202, NULL, 110, 25990),
	('Tiguan', 'Volkswagen', 195, NULL, 130, 34480),
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
	(2, 10),
	(3, 5),
	(4, 5),
	(4, 6),
	(4, 6),
	(5, 16),
	(6, 13),
	(6, 14),
	(1, 12),
	(7, 20),
	(7, 21),
	(7, 22),
	(7, 23),
	(5, 5),
	(5, 7);

SELECT *
FROM cars;

SELECT *
FROM customers;

SELECT *
FROM orders;