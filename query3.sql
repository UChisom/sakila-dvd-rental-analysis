/* Query for slide 3*/

/*Question - What is the monthly comparison between the two stores on their retail order count*/

SELECT monthly_date AS rental_month, date_part AS rental_year, stora store_id, COUNT(inventory_id) AS count_rentals
  FROM (
	SELECT s.store_id stora, r.inventory_id, DATE_PART('month', r.rental_date) AS monthly_date, DATE_PART('year', r.rental_date)
	  FROM rental r
	  JOIN staff sf
	    ON r.staff_id = sf.staff_id
	  JOIN store s
	    ON sf.store_id = s.store_id
	     ) table_1
GROUP BY 1,2,3
ORDER BY 4 DESC