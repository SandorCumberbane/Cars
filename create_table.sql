DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
	car_id SMALLSERIAL PRIMARY KEY,
	car_name VARCHAR(50),
	car_company VARCHAR(50),
	max_speed INT,
	acceleration NUMERIC,
	market_price NUMERIC
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
	('718 Cayenne', 'Porsche', 248, 6.0, 118981.27);
	
SELECT *
FROM cars;