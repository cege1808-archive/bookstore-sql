SELECT 
  editions.isbn AS "ISBN",
  books.title AS "Book Title",
  stock.stock AS "Stock Available",
  stock.retail AS "Retail Price" 

FROM
  books 
  JOIN editions ON (books.id = editions.book_id)
  JOIN publishers ON (publishers.id = editions.publisher_id)
  JOIN stock ON (editions.isbn = stock.isbn)

WHERE 
  publishers.name = 'Random House' AND
  stock.stock > 0;
  