SELECT 
  publishers.name AS "Publisher",
  ROUND(AVG(stock.retail),2) AS "Average Sale Price",
  COUNT(editions.edition) AS "Number of Editions Published"

FROM 
  books
  JOIN editions ON (books.id = editions.book_id)
  JOIN publishers ON (publishers.id = editions.publisher_id)
  JOIN stock ON (stock.isbn = editions.isbn)

GROUP BY
  publishers.name
  
ORDER BY 
  COUNT(editions.edition) DESC;
