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