-- ORDER BY
SELECT	*
FROM		post
ORDER BY date_post ASC;  -- ordenar de manera ascendente

SELECT	*
FROM		post
ORDER BY date_post DESC;        -- ordenar de manera descendente

SELECT	*
FROM		post
ORDER BY title ASC;             -- ordenar de manera ascendente orden alfabetico

SELECT	*
FROM		post
ORDER BY title DESC;

SELECT	*
FROM		post
ORDER BY user_id ASC
;


SELECT	*
FROM		post
ORDER BY date_post DESC
LIMIT 5; 

SELECT	MONTHNAME(date_post) AS post_month, status, COUNT(*) AS post_quantity
FROM		post
GROUP BY status, post_month
ORDER BY post_month;

-- HAVING
SELECT	MONTHNAME(date_post) AS post_month, status, COUNT(*) AS post_quantity   -- no es valida
FROM		post
WHERE post_quantity > 1
GROUP BY status, post_month
ORDER BY post_month;

SELECT	MONTHNAME(date_post) AS post_month, status, COUNT(*) AS post_quantity
FROM		post
GROUP BY status, post_month
HAVING post_quantity > 1
ORDER BY post_month;
