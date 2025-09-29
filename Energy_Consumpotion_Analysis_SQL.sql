CREATE DATABASE ENERGYDB2;
USE ENERGYDB2;

-- 1. country table
CREATE TABLE country (
    CID VARCHAR(10) PRIMARY KEY,
    Country VARCHAR(100) UNIQUE
);

-- 2. emission_3 table
CREATE TABLE emission_3 (
    country VARCHAR(100),
    energy_type VARCHAR(50),
    year INT,
    emission INT,
    per_capita_emission DOUBLE,
    FOREIGN KEY (country) REFERENCES country(Country)
);

-- 3. population table
CREATE TABLE population (
    countries VARCHAR(100),
    year INT,
    Value DOUBLE,
    FOREIGN KEY (countries) REFERENCES country(Country)
);

-- 4. production table
CREATE TABLE production (
    country VARCHAR(100),
    energy VARCHAR(50),
    year INT,
    production INT,
    FOREIGN KEY (country) REFERENCES country(Country)
);

-- 5. gdp_3 table
CREATE TABLE gdp_3 (
    Country VARCHAR(100),
    year INT,
    Value DOUBLE,
    FOREIGN KEY (Country) REFERENCES country(Country)
);

-- 6. consumption table
CREATE TABLE consumption (
    country VARCHAR(100),
    energy VARCHAR(50),
    year INT,
    consumption INT,
    FOREIGN KEY (country) REFERENCES country(Country)
);

SELECT * FROM COUNTRY;
SELECT * FROM EMISSION_3;
SELECT * FROM POPULATION;
SELECT * FROM PRODUCTION;
SELECT * FROM GDP_3;
SELECT * FROM CONSUMPTION;


-- Q1] What is the total emission per country for the most recent year available?
select country, sum(emission) as Total_emission
from emission_3
where year = (select max(year) from emission_3)
group by country;

-- Q2] What are the top 5 countries by GDP in the most recent year?
select c.country,gdp.year,sum(gdp.value)as total_gdp
from country c
join gdp_3 gdp
on c.country = gdp.country
where gdp.year = (select max(year) from gdp_3)
group by c.country,gdp.year
order by gdp.year desc,total_gdp desc 
limit 5;

-- Q3] Compare energy production and consumption by country and year. 
select c.country,p.year,p.energy,p.production ,cons.consumption
from country c
join production p
on c.country = p.country
join consumption cons
on p.country = cons.country
and p.year = cons.year
and p.energy =  cons.energy
order by p.production desc;

-- Q4] Which energy types contribute most to emissions across all countries?
select c.country,e.energy_type, sum(e.emission) as Emi
from country c
join emission_3 as e
on c.country = e.country
group by c.country,e.energy_type
order by Emi desc;

--


