use cars;
-- READ DATA--
SELECT * FROM car_dekho;

-- Total cars: To get a count of total records --
SELECT  COUNT(*) FROM car_dekho;

-- Manager asks the employee how many cars are available in 2023? --
SELECT COUNT(*) FROM car_dekho WHERE year = 2023;

-- Manager asks employee for the availability of cars in year: 2020, 2021, 2022--
-- use Group by -- 
SELECT COUNT(*) FROM car_dekho WHERE year in (2020,2021,2022) GROUP BY year;

-- Client asks to print the total of all cars by year. -- 
SELECT year, COUNT(*) FROM car_dekho GROUP BY year;

-- Client asks about the number of diesel cars in year 2020 -- 
SELECT COUNT(*) FROM car_dekho WHERE year = 2020 AND fuel = "diesel";

-- Client asks about the info of petrol cars in year 2020 -- 
SELECT * FROM car_dekho WHERE YEAR = 2020 AND fuel = "petrol";

-- Manager asks for all the fuel cars in all the years -- 
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "petrol" group by year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "diesel" group by year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "cng" group by year;

-- Manager asks for the year's which has more than 100 cars -- 
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*)>100;

--  Manager asks for the car count between years 2015- 2023 --
SELECT COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023;

--  Manager asks for the car deltails between years 2015- 2023 --
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;

-- END -- 