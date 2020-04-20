-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

-- What is the largest population size for Gabon in this dataset?
SELECT MAX(population)
FROM population_years
WHERE country = 'Gabon';

-- What were the 10 lowest population countries in 2005?
SELECT country, population
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

-- What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT (country)
FROM population_years
WHERE population > 100 AND year = 2010;

-- How many countries in this dataset have the word "Islands" in their name?
SELECT COUNT(DISTINCT(country)) 'Number of Countries'
FROM population_years
WHERE country LIKE '%Islands%';

-- What is the difference in population between 2000 and 2010 in Indonesia?
SELECT population
FROM population_years
WHERE year = 2000 AND country = 'Indonesia';
SELECT population
FROM population_years 
WHERE year = 2010 AND country = 'Indonesia';
-- Answer is 27.29 millions.
