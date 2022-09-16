/* Query for slide 2 */

/*In four groups of rental duration length, which quartile group (s) had the most number of rents for each movie category*/

WITH table_1 AS (
		SELECT f.title, c.name, f.rental_duration, NTILE(4) OVER (ORDER BY f.rental_duration) AS standard_quartile
  		FROM film f
  	  JOIN film_category fc
   	    ON f.film_id = fc.film_id
 		  JOIN category c
 		    ON c.category_id = fc.category_id
 		 WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')), 

category_quartile AS (
		SELECT name AS category, standard_quartile, COUNT(*) AS rental_count
 			FROM table_1
	GROUP BY 1,2
	ORDER BY 1,3 DESC),

rental_count_max AS (
		SELECT category, MAX(rental_count)
			FROM category_quartile
	GROUP BY 1)

SELECT rm.category AS movie_category, cq.standard_quartile, cq.rental_count
	FROM rental_count_max rm
	JOIN category_quartile cq
		ON rm.category = cq.category AND rm.max = cq.rental_count
ORDER BY 1;
