-- SELECT title, 
--        release_year, 
--        rental_rate,
-- CASE
--     WHEN rental_rate > 0 AND rental_rate < 2.99 THEN 'discount'
--     WHEN rental_rate >= 2.99 AND rental_rate < 4.99 THEN 'regular'
--     ELSE 'premium'
-- END AS quality
-- FROM 
--     film
-- LIMIT 10

-- 1) How many rented films do not have a return date 

-- select * from rental limit 1 

-- select count(*) as count_no_return_date
-- from rental 
-- where return_date is null 
--183

-- 2) What is the total amount of payments that the business has recieved

-- select * from payment limit 1 

-- SELECT SUM(amount)
-- from payment
-- £67416.51

-- 3) What is the total amount of payments that the business has received between the dates 25/01/2007 and 29/01/2007
-- SELECT SUM(amount) as total_payment_amount
-- from payment
-- WHERE payment_date BETWEEN '2007-01-25' and '2007-01-29'
-- £2813.28

--4) When was the earliest transaction made?
-- SELECT MAX(payment_date) as latest_payment_date 
-- from payment
-- 2007-05-15

-- 5) When was the last transaction over $10 made?
-- SELECT MAX(payment_date) as last_transaction_over_10_dollars
-- from payment 
-- where amount > 10
-- 2007-04-30

--********
-- 6)* What is the price of the highest value film the business has? 
-- -- define highest value film the business has as the one with the highest replacement cost  

-- select title, 
--        replacement_cost + rental_rate as film_with_max_value
-- from film 
-- order by replacement_cost + rental_rate DESC
-- LIMIT 1 
-- BLINDNESS GUN
-- This is not a complete solution. As 'value' should be determined as the film which generates the most revenue for the firm 

--7) What is the average length of films?
-- SELECT ROUND(AVG(length), 2) as average_length_of_film 
-- from film 
-- 115.27 mins 

--8) What is the average length of films who's rental cost is under $2.99

-- SELECT ROUND(AVG(length), 2) as average_length_of_film,
--        ROUND(AVG(CASE WHEN rental_rate < 2.99 then length END), 2) AS average_length_of_low_cost_films
-- from 
--     film 
-- 112.91
