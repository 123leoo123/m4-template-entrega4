INSERT INTO books ("name", "pages", "createdAt", "updatedAt", "authorId")
VALUES ('Harry Potter', 325, NOW(), NOW(), 2),
       ('Jogos Vorazes', 276, NOW(), NOW(), NULL),
       ('One Piece - Volume 1', 120, NOW(), NOW(), NULL),
       ('One Piece - Volume 2', 137, NOW(), NOW(), NULL)
       RETURNING *;

UPDATE books SET ("name") = ROW ('Harry Potter e o Prisioneiro de Azkaban') WHERE id = 1;

UPDATE books SET "authorId" = 1  WHERE id IN (3 , 4);