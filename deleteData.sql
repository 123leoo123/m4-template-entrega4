DELETE FROM books WHERE id = 2
RETURNING *;

DELETE FROM authors WHERE id = 2
RETURNING *;

DELETE FROM authors WHERE id = 3
RETURNING *;