-- 3.1.) Task: Return 10 films who's length is greater than 120 mins  

-- List all tables in Pagila 
-- SELECT table_name FROM information_schema.tables
-- WHERE table_schema = 'public'

-- Find tables that contain the name of films and their length 

-- SELECT  film_id,
--         title,
--         length
-- FROM 
--     film 
-- WHERE 
--     length > 120
-- LIMIT 10

-- 3.2) Task: Return the 10 longest films who's rating is `G`

-- SELECT film_id, 
--        title,
--        rating,
--        length
-- FROM 
--     film 
-- WHERE 
--     rating = 'G'
-- ORDER BY
--     length DESC
-- LIMIT 10;

-- 3.3) Return all transactions where payment has been above $10
-- SELECT * 
-- FROM 
--     film 
-- WHERE 
--     rental_rate > 10 

-- 3.4) Return the (replacement) cost per minute of every movie
-- SELECT title,
--        ROUND((replacement_cost / length), 2) AS replacement_cost_per_minute   
-- FROM
--     film 

-- 3.5) Return the top 10 most expensive films to rent, based on the rental rate per hour of the movie
-- SELECT title,
--        ROUND((rental_rate / rental_duration), 2) AS rental_rate_per_hour
-- FROM 
--     film
-- ORDER BY 
--     rental_rate_per_hour DESC
-- LIMIT 10







