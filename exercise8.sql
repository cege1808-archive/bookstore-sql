SELECT 
  AVG (cost) AS "Average Cost",
  AVG (retail) AS "Average Retail",
  AVG (retail - cost) AS "Average Profit"

FROM
  stock;
