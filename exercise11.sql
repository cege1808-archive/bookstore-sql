SELECT 
  authors.id AS "ID",
  (authors.first_name ||' '|| authors.last_name) AS "Full Name",
  COUNT(books.id) AS "Number of Books"

FROM 
  books
  JOIN authors ON (authors.id = books.author_id)

GROUP BY
  authors.id

ORDER BY
  COUNT(books.id) DESC;
  