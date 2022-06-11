-- GROUP BY
SELECT	status, COUNT(*) AS post_number
FROM		post
GROUP BY status;

SELECT	YEAR(date_post) AS post_year, COUNT(*) AS post_number
FROM		post
GROUP BY post_year;

SELECT	MONTHNAME(date_post) AS post_month, COUNT(*) AS post_number
FROM		post
GROUP BY post_month;

SELECT	status, MONTHNAME(date_post) AS post_date, COUNT(*) AS post_number
FROM		post
GROUP BY status, post_date;

SELECT	status, SUM(id) AS suma_id
FROM		post
GROUP BY status;
