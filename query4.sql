/*Query for slide 4*/

/*How many monthly payments did the top 10 paying customers make in 2007 and the amount for each month for the first annual quarter*/

WITH top_10 AS (
	SELECT full_name, SUM(amount)
	  FROM (
		SELECT CONCAT (c.first_name, ' ', c.last_name) AS full_name, p.amount
		  FROM customer c
		  JOIN payment p
		    ON c.customer_id = p.customer_id 
		       ) table_1
	GROUP BY 1
	ORDER BY 2 DESC
	LIMIT 10),

all_payment AS (
	SELECT full_names, date_trunc, COUNT(*), SUM(amount)
	  FROM (
		SELECT CONCAT(c.first_name, ' ', c.last_name) AS full_names, DATE_TRUNC('month', p.payment_date), p.amount
		  FROM customer c
		  JOIN payment p
		    ON c.customer_id = p.customer_id and p.payment_date between '2007-01-01' and '2007-12-31'
			) table_2
	GROUP BY 1,2) 

SELECT gp.date_trunc AS month, tp.full_name, gp.count AS payment_count, gp.sum AS total_amount
  FROM top_10 tp
  JOIN all_payment gp
    ON tp.full_name = gp.full_names
 WHERE gp.date_trunc BETWEEN '2007-01-01' AND '2007-03-31'
ORDER BY 2, 1