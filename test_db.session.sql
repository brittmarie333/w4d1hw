--How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
--How many payments were made between $3.99 and $5.99?
SELECT SUM(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
--What film does the store have the most of? (search in inventory)
SELECT SUM(film_id)
FROM inventory;
--How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';
--What store employee (get the id) sold the most rentals?
SELECT SUM(staff_id) 
FROM rental;
--How many different district names are there?
SELECT SUM(store_id)
FROM store;
--What film has the most actors in it? 
--(use film_actor table and get film_id)
SELECT MAX(actor_id)
FROM film_actor
GROUP BY film_id;
--From store_id 1, how many customers have a last name ending with ‘es’? 
--(use customer table)
SELECT last_name
FROM store
WHERE last_name = '__es'
GROUP BY store_id1;
-- this one really confused me 
--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT SUM(amount)
FROM payment
WHERE amount >=4.99
GROUP BY rental_id > 250;
--Within the film table, how many rating categories are there? 
--And what rating has the most movies total?
SELECT MAX(rating)
FROM film
GROUP BY film_id;