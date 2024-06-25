UPDATE books SET ("name") = ROW ('Harry Potter e o Prisioneiro de Azkaban') WHERE id = 1;

UPDATE books SET "authorId" = 1  WHERE id IN (3 , 4);