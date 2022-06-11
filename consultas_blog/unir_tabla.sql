SELECT *
FROM users
    LEFT JOIN post ON users.id = post.user_id
WHERE post.user_id IS NULL;

SELECT *                                            -- solo los del lado de user q no tienen relacion con post
FROM users
    RIGHT JOIN post ON users.id = post.user_id
WHERE post.user_id IS NULL;

SELECT *                                            --interseccion
FROM users
    INNER JOIN post ON users.id = post.user_id;

SELECT *                                                    -- no sirve en mysql
FROM users
    FULL OUTER JOIN post ON users.id = post.user_id;


SELECT *                                          -- UNION de todos los post asociados y sin asociar
FROM users
    LEFT JOIN post ON users.id = post.user_id
UNION
SELECT *
FROM users
    RIGHT JOIN post ON users.id = post.user_id;

SELECT *                                          -- diferencia simetrica no tienen relacion entre ellos
FROM users
    LEFT JOIN post ON users.id = post.user_id
WHERE post.user_id IS NULL
UNION
SELECT *
FROM users
    RIGHT JOIN post ON users.id = post.user_id
WHERE post.user_id IS NULL;

