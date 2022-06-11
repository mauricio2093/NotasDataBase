-- Lo que quieres mostrar = SELECT
-- De donde voy a tomar los datos = FROM
-- Los filtros de los datos que quieres mostrar = WHERE
-- Los rubros por los que me interesa agrupar mi información = GROUP BY
-- El orden en que quiero presentar mi información ORDER BY
-- Los filtros que quiero que mis datos agrupados tengan HAVING

-- ¿Cuántos tags tienen cada post?
SELECT  post.title, COUNT(*) AS num_labels
FROM    post
    INNER JOIN post_labels ON post.id = post_labels.post_id
    INNER JOIN labels ON labels.id = post_labels.label_id
GROUP BY post.id;

-- ¿Cuál es el tag que mas se repite?
SELECT  labels.label, COUNT(*) AS ocurrencias
FROM labels
    INNER JOIN post_labels ON labels.id = post_labels.label_id
GROUP BY labels.id
ORDER BY ocurrencias DESC;

-- Los tags que tiene un post separados por comas
SELECT  post.title, GROUP_CONCAT(label)
FROM    post
    INNER JOIN post_labels ON post.id = post_labels.post_id
    INNER JOIN labels ON labels.id = post_labels.label_id
GROUP BY post.id;

-- ¿Que label no tiene ningun post asociado?
SELECT	*
FROM	labels 
	LEFT JOIN post_labels on labels.id = post_labels.label_id
WHERE	post_labels.label_id IS NULL;

-- Las categorías ordenadas por numero de post
SELECT c.category, COUNT(*) AS cant_post
FROM    categorys AS c
    INNER JOIN post AS p on c.id = p.category_id
GROUP BY c.id
ORDER BY cant_post DESC;

-- ¿Cuál es la categoría que tiene mas post?
SELECT c.category, COUNT(*) AS cant_post
FROM    categorys AS c
    INNER JOIN post AS p on c.id = p.category_id
GROUP BY c.id
ORDER BY cant_post DESC
LIMIT 1;

-- ¿Que usuario ha contribuido con mas post?
SELECT u.nickname, COUNT(*) AS cant_post
FROM    usuarios AS u
    INNER JOIN post AS p on u.id = p.usuario_id
GROUP BY u.id
ORDER BY cant_post DESC
LIMIT 1;

-- ¿De que categorías escribe cada usuario?
SELECT u.nickname, COUNT(*) AS cant_post,  GROUP_CONCAT(category)
FROM    usuarios AS u
    INNER JOIN post AS p ON u.id = p.usuario_id
    INNER JOIN categorys AS c ON c.id = p.category_id
GROUP BY u.id;

-- ¿Que usuario no tiene ningun post asociado?
SELECT	*
FROM	usuarios 
	LEFT JOIN post on usuarios.id = post.usuario_id
WHERE	post.usuario_id IS NULL
