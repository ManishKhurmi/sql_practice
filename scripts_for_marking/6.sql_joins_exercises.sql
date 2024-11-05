-- 1. Find the addresses of all the stores in the Pagila database

-- SELECT store_id,
--        address_id,
--        address.address
-- FROM 
--     store
-- INNER JOIN
--     address on store.address_id = address.address_id

-- Practice 
-- SELECT country.country_id,
--        country,
--        city.city
-- FROM 
--     country 
-- INNER JOIN
--     city ON country.country_id = city.country_id
-- WHERE  
--     country = 'India'     

-- 2) Return the first names, last names, addresses, districts and postal code for all the staff in the database

-- SELECT staff_id,
--        first_name,
--        last_name,
--        staff.address_id,
--        address.district,
--        address.postal_code
-- FROM 
--     staff
-- INNER JOIN
--     address ON staff.address_id = address.address_id

-------------
-- 3) Return the first names, last names, addresses, districts and cities of customers who have rented a film
-- rental has rental_id and customer_id. Need to find a link between the latter and address_id
-- customer has address_id and customer_id
-- address has address_id and the relavant columns 

-- Final Solution 
-- SELECT rental_id,
--        first_name,
--        last_name,
--        address,
--        district,
--        city
-- FROM 
--     rental
-- INNER JOIN 
--     customer ON rental.customer_id = customer.customer_id
-- INNER JOIN
--     address ON customer.address_id = address.address_id
-- INNER JOIN 
--     city ON address.city_id = city.city_id

-- Checks 
-- SELECT COUNT(*) FROM rental
-- SELECT COUNT(*) FROM customer
-- SELECT COUNT(*) FROM address 
-- SELECT COUNT(*) FROM city

-- Expecting ~16k rows assuming for each rental there is a customer 

-- SELECT COUNT(*)
-- FROM 
--     rental
-- INNER JOIN 
--     customer ON rental.customer_id = customer.customer_id
-- INNER JOIN
--     address ON customer.address_id = address.address_id
-- INNER JOIN 
--     city ON address.city_id = city.city_id
-- worked as expected 

-- Scratch work 
-- SELECT rental.customer_id,
--        rental_id,
--        first_name,
--        last_name,
--        customer.address_id,
--        district,
--        address.city_id,
--        city
-- FROM 
--     rental
-- INNER JOIN 
--     customer ON rental.customer_id = customer.customer_id
-- INNER JOIN
--     address ON customer.address_id = address.address_id
-- INNER JOIN 
--     city ON address.city_id = city.city_id
-- LIMIT
--     5

-- select * from rental 
-- select * from customer 
-- select * from address 
-- select * from city


-- SELECT country.country_id ,
--        country,
--        city_id
-- FROM 
--     country
-- INNER JOIN 
--     city ON country.country_id = city.country_id
-- WHERE 
--     country = 'Argentina';
----------------------

-- 4) Return the first names, last names, addresses, 
-- districts and cities of customers who have rented a film 
-- between 26/05/2005 and 29/05/2005. 
-- Limit the results to 25 customers and sort the results 
-- by the last names in ascending order

-- SELECT rental_id,
--        rental_date,
--        first_name,
--        last_name,
--        address,
--        district,
--        city
-- FROM 
--     rental
-- INNER JOIN 
--     customer ON rental.customer_id = customer.customer_id
-- INNER JOIN
--     address ON customer.address_id = address.address_id
-- INNER JOIN 
--     city ON address.city_id = city.city_id
-- WHERE
--     rental_date BETWEEN '2005-05-26' and '2005-05-29'
-- LIMIT 
--     25

-- check 
-- SELECT COUNT(*)
-- FROM 
--     rental
-- INNER JOIN 
--     customer ON rental.customer_id = customer.customer_id
-- INNER JOIN
--     address ON customer.address_id = address.address_id
-- INNER JOIN 
--     city ON address.city_id = city.city_id
-- WHERE
--     rental_date BETWEEN '2005-05-26' and '2005-05-29'


-- select rental_date
-- from 
--     rental 
-- WHERE 
--     rental_date BETWEEN '2005-05-26' and '2005-05-29'
-- limit 
--     1 