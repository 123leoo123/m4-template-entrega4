CREATE TABLE books (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(200) NOT NULL,
    "createdAt" TIMESTAMP NOT NULL,
    "autor" INTEGER
);

CREATE TABLE authors (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(200) NOT NULL,
    "bio" TEXT NOT NULL,
    "autorId" INTEGER,
    FOREIGN KEY ("autorId") REFERENCES books ("id") ON DELETE CASCADE
);

CREATE TABLE contact_infos (
    "id" SERIAL PRIMARY KEY,
    "phone" VARCHAR(20) NOT NULL,
    "email" VARCHAR(200) NOT NULL,
    "author" INTEGER UNIQUE NOT NULL,
    "contactId" INTEGER,
    FOREIGN KEY ("contactId") REFERENCES authors ("id") ON DELETE CASCADE
);

CREATE TABLE books_categories (
    "id" SERIAL PRIMARY KEY,
    "bookID" INTEGER NOT NULL,
    "categoryID" INTEGER NOT NULL
);

CREATE TABLE categories (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    "createdAt" TIMESTAMP NOT NULL,
    "updatedAt" TIMESTAMP NOT NULL
);
