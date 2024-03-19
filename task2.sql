SELECT number
FROM generate_series(1, 10) AS numbers(number)
WHERE number % 2 = 0;
