-- 1. Dates in SQL 

--1.1) Find the unique special features of a film 

-- select DISTINCT special_features as unique_special_features_of_films
-- from 
--     film 

--1.2) Which 3 days are the most profitable for the business?
-- select * from payment limit 10
-- group by the day then sum the amount 

-- SELECT DATE_TRUNC('day', payment_date) AS payment_day,
--        sum(amount) AS total_daily_amount 
-- FROM payment
-- GROUP BY
--     payment_day
-- ORDER BY
--     total_daily_amount DESC
-- LIMIT 3
-- 2007-04-30, 2007-03-21, 2007-03-01

--1.3) Return the total sales per day, along with the number of movies rented for that day

-- select DATE_TRUNC('day', payment_date) as payment_day,
--        COUNT(payment_id) as total_sales_per_day,
--        COUNT(rental_id) as total_rentals_per_day
-- from 
--     payment
-- GROUP BY
--     payment_day 
-- ORDER BY 
--     payment_day ASC
-- LIMIT 1 

-- 1.4) Find the id's of all customers who have spent over $100 over the course of their membership

-- SELECT customer_id,
--        SUM(amount) as total_spent_by_customer
-- FROM
--     payment
-- GROUP BY
--     customer_id
-- HAVING
--     sum(amount) > 100
-- ORDER BY
--     customer_id ASC

-- 2) Using Aggregrated Function 

--2.1) List the last names of actors, as well as how many actors have that last name. 

-- select 
--        last_name,
--        count(last_name) as count_same_last_name
-- from 
--     actor
-- GROUP BY
--     last_name
-- ORDER BY
--     count_same_last_name DESC

-- Check 
-- SELECT last_name
-- from actor
-- where last_name = 'KILMER'

-- 2.2) How many customers are there per store? 
-- Return the number of customers and the store id.

-- select store_id, 
--        COUNT(customer_id) number_of_customers
-- from customer
-- GROUP BY
--     store_id

-- 2.3)When was the earliest order placed per customer? 
-- Return the customer ids, the rental dates, and the customer's name  

-- select customer.customer_id ,
--        first_name,
--        last_name,
--        MAX(rental_date) as latest_rental_date
-- from 
--     customer
-- INNER JOIN
--     rental ON customer.customer_id = rental.customer_id
-- GROUP BY
--     customer.customer_id, first_name, last_name
-- ORDER BY
--     customer_id ASC

-- 4) What was the largest order placed per customer? 
-- Return the customer ids and the amounts 

-- select customer_id,
--        sum(amount) as total_spent_by_customer
-- from payment 
-- GROUP BY
--     customer_id 
-- ORDER BY
--     total_spent_by_customer DESC
-- LIMIT 1



     