SELECT *
FROM post
WHERE state = 'active'   -- sentencias

SELECT *                -- LIKE
FROM post
WHERE title LIKE '%escandalo%';                 -- 'propiedad%'  comienzan con la propiedad
                                                -- '%propiedad'  termina con la propiedad

SELECT *                -- fecha
FROM post
WHERE date_post > '2025-01-01';

SELECT *                -- fecha BETWEEN
FROM post
WHERE date_post BETWEEN '2023-01-01' AND '2025-12-31';

SELECT *                -- fech YEAR()
FROM post
WHERE YEAR(date_post) BETWEEN '2023' AND '2025';


---- WHERE NULL - NO NULL
SELECT *
FROM post
WHERE category_id IS NULL;

SELECT *                                -- AND
FROM post
WHERE category_id IS NOT NULL
    AND status = 'active'
    AND id < 50 
    AND category_id = 2;

