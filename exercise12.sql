SELECT 
  books.title AS "Title"

FROM 
  books
  JOIN editions ON (books.id = editions.book_id)

WHERE 
  editions.type = 'h' AND
  EXISTS (SELECT * FROM editions WHERE editions.type = 'p');
