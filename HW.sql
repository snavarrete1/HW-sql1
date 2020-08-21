--1.How many actors are there with the last name 'Wahlberg'?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
--Answer is 2--

--2.How many payments were made between $3.99 and $5.99?
SELECT *
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Answer is 5,607 payments

--3.What film does the store have the most of?
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY inventory.film_id
ORDER BY COUNT(film_id);
--The answer is 193(CrossRoads Casualties)

--4.How many customers have the last name 'William'?
SELECT last_name
FROM customer
WHERE last_name = 'William';
--The answer is zero

--5.What store employee(get the id)sold the most rentals?
SELECT staff_id COUNT(*)
FROM rental
GROUP BY staff_id
ORDER BY COUNT LIMIT 1;
--The answer is staff_id #2 with 8,004

--6.How many different dictrict names are there?
SELECT DISTINCT(district)
FROM address; 
--There are 378 different districts

--7. What film has the most actors in it?
SELECT COUNT(*), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(*) DESC
LIMIT 1;
--The answer is film_id #508 with 15 actors

--8. From store_id 1, how many customers have a last name ending with 'es'?
SELECT COUNT(last_name)
FROM customer 
WHERE last_name LIKE '%es' AND store_id = 1;
--The answer is 13

--9. How many payment amounts(4.99,5.99,etc)had a number of rentals above 250 for customers with ids between 380 and 430?
SELECT amount, COUNT(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id)>250;
--The answer is 290 for 2.99, 281 for 4.99, 269 for 0.99

--10. Within the film table,how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(title) 
FROM film
GROUP BY rating
ORDER BY title DESC
LIMIT 1;


