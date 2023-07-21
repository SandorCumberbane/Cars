SELECT *
FROM cars;

-- Q1: What is the average market price for the different car companies?
SELECT car_company, AVG(market_price) average_market_price
FROM cars
GROUP BY car_company
ORDER BY average_market_price;

-- Q2: Which company has the fastest car?
SELECT car_company, MAX(max_speed) max_speed_company
FROM cars
GROUP BY car_company
ORDER BY max_speed_company DESC
LIMIT 1;

-- Q3: Which cars did Hans Gruber buy?
SELECT car_name, car_company
FROM customers
LEFT JOIN orders
	ON customers.customer_id = orders.customer_id
LEFT JOIN cars
	ON orders.car_id = cars.car_id
WHERE customer_name = 'Hans Gruber';

-- Q3: Which cars were bought from Vienna? What is their total cost?
SELECT car_name, car_company, customer_name, market_price
FROM customers
LEFT JOIN orders
	ON customers.customer_id = orders.customer_id
LEFT JOIN cars
	ON orders.car_id = cars.car_id
WHERE customer_city = 'Wien';

SELECT SUM(market_price)
FROM customers
LEFT JOIN orders
	ON customers.customer_id = orders.customer_id
LEFT JOIN cars
	ON orders.car_id = cars.car_id
WHERE customer_city = 'Wien';

-- Q4: What are the ratios of market price to maximum speed? Which car has the lowest?
SELECT car_name, car_company, max_speed, market_price, market_price/max_speed AS ratio
FROM cars
WHERE market_price/max_speed IS NOT NULL
ORDER BY ratio ASC;

-- Q5: What are the ratios of market price to acceleration? Which car has the lowest?
SELECT car_name, car_company, acceleration, market_price, market_price/acceleration AS ratio
FROM cars
WHERE market_price/acceleration IS NOT NULL
ORDER BY ratio ASC;

-- Q6: What are the ratios of acceleration to maximum speed? Which car has the lowest?
SELECT car_name, car_company, acceleration, max_speed, acceleration/max_speed AS ratio
FROM cars
WHERE acceleration/max_speed IS NOT NULL
ORDER BY ratio ASC;