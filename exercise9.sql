SELECT 
  editions.book_id AS "Book ID",
  SUM(stock.stock) AS "Stock"
  
FROM
  editions
  JOIN stock ON (editions.isbn = stock.isbn)
  
GROUP BY
  editions.book_id

ORDER BY 
  SUM(stock.stock) DESC

LIMIT 1;

