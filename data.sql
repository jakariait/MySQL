-- Active: 1736485997480@@127.0.0.1@33061@blog
--Inserting demo author data
INSERT INTO authors (author_name) VALUES 
    ('John Doe'),
    ('Jane Doe'),
    ('John Smith'),
    ('Jane Smith'),
    ('John Brown');

--Inserting demo categories data
INSERT INTO categories (category_name) VALUES 
    ('Technology'),
    ('Science'),
    ('Health'),
    ('Business'),
    ('Entertainment');

--Inserting demo blog data
INSERT INTO blogs (title, body, author_id, category_id) VALUES
      ('Blog 1', 'This is blog 1', 1, 1),
      ('Blog 2', 'This is blog 2', 2, 2),
      ('Blog 3', 'This is blog 3', 3, 3),
      ('Blog 4', 'This is blog 4', 4, 4),
      ('Blog 5', 'This is blog 5', 5, 5);

-- Authors Table:
-- 1. How do you add a new author to the authors table? 
INSERT INTO authors(author_name) VALUES('New Author');

-- 2. How do you retrieve all authors from the authors table? 
SELECT * FROM authors

-- 3. How do you retrieve a specific author by their ID from the authors table? 
SELECT * FROM authors WHERE id = 1;

-- 4. How do you update an author’s name in the authors table? 
UPDATE authors SET author_name = 'John Smith' WHERE id = 1;

-- 5. How do you delete an author by their ID from the authors table?
DELETE FROM authors WHERE id = 11;

--Categories Table:
-- 6. How do you add a new category to the categories table? 
INSERT INTO categories(category_name) VALUES('Sports');

-- 7. How do you retrieve all categories from the categories table?
SELECT * FROM categories;

-- 8. How do you retrieve a specific category by its ID from the categories table?
SELECT * FROM categories WHERE id = 6;

-- 9. How do you update a category’s name in the categories table?
UPDATE categories SET category_name = 'Music' WHERE id = 6;

-- 10. How do you delete a category by its ID from the categories table? 
DELETE FROM categories WHERE id = 1;

--Blogs Table: 
-- 11. How do you add a new blog to the blogs table?
INSERT INTO blogs(title, body, author_id, category_id) VALUES
('Inserting one', 'This is custom inserting one blogs into', 2, 2);

-- 12. How do you retrieve all blogs from the blogs table? 
SELECT * FROM blogs;

-- 13. How do you retrieve a specific blog by its ID from the blogs table?
SELECT * FROM blogs WHERE id = 6;

-- 14. How do you retrieve all blogs with their category and author information? 
SELECT blogs.title, blogs.body, categories.category_name, authors.author_name
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;

-- 15. How do you update a blog’s title in the blogs table? 
UPDATE blogs SET title = 'Blog 6' WHERE id = 6;

-- 16. How do you update a blog’s category or author in the blogs table?
UPDATE blogs SET author_id = 3, category_id = 3 WHERE id = 2;

-- 17. How do you delete a blog by its ID from the blogs table?
DELETE FROM blogs WHERE id = 6;

--Specific Queries: 
-- 18. How do you get all blogs written by a specific author?
SELECT blogs.title, authors.author_name
FROM blogs
JOIN authors ON blogs.author_id = authors.id
WHERE authors.id = 3;

-- 19. How do you get all blogs under a specific category? 
SELECT blogs.title, categories.category_name 
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.category_name = 'Health';
