/* Query for slide 1 */ 

/*Question 1: What were the most rented films and their categories?*/

WITH table_1 AS (SELECT f.title AS film_title, c.name AS category_name, r.inventory_id
  		   FROM film f
		   JOIN film_category fc
  		     ON f.film_id = fc.film_id
		   JOIN category c
		     ON c.category_id = fc.category_id
		   JOIN inventory i
		     ON f.film_id = i.film_id
		   JOIN rental r
		     ON r.inventory_id = i.inventory_id
		  WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music'))

SELECT film_title, category_name, COUNT(inventory_id) AS rental_count
  FROM table_1
GROUP BY 1, 2
HAVING COUNT(inventory_id) >= 30
ORDER BY 2, 1