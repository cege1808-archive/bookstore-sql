SELECT 
  publishers.isbn

FROM
  books 
  JOIN editions ON (books.id = editions.book_id)
  JOIN publishers ON (publishers.id = editions.publisher_id)

WHERE 
  publishers.name = 'Random House';

  
