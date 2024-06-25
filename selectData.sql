--Leitura de todos os livros.
SELECT * FROM books;

--Leitura de todos os livros da categoria "Fantasia".
SELECT * FROM books JOIN books_categories ON books."id" = books_categories."bookId" WHERE books_categories."categoryId" = 3;

--Leitura de todos os livros com suas respectivas categorias, renomeando colunas para evitar conflito entre chaves.
SELECT books."id" AS "bookId",
       books."name" AS "bookName",
       books."pages" AS "bookPages",
       books."createdAt" AS "bookCreatedAt",
       books."updatedAt" AS "bookUpdatedAt"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId";


--Leitura do livro "Harry Potter" com as informações do autor, renomeando colunas para evitar conflito entre chaves.
SELECT books. "id" AS "bookId",
       books."name" AS "bookName",
       books."pages" AS "bookPages",
       books."createdAt" AS "bookCreatedAt",
       books."updatedAt" AS "bookUpdatedAt",
       authors."name" AS "authorName",
       authors."bio" AS "authorBio"
FROM books
JOIN authors ON books."authorId" = authors."id"
WHERE books."name" = 'Harry Potter';