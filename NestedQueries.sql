SELECT new_table_projection.date, COUNT(*) AS post_count
FROM (
    SELECT DATE(MIN(date_post)) AS date, YEAR(date_post) AS post_year
    FROM post
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date 
ORDER BY new_table_projection.date;

SELECT *
FROM post
WHERE date_post = (
	SELECT MAX(date_post)
	FROM post
);

SELECT MAX(date_post)
FROM post;
