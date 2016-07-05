SELECT 
  books.title AS "Title",
  editions.publication AS "Publication"

FROM
  books 
  LEFT JOIN editions ON (books.id = editions.book_id);
