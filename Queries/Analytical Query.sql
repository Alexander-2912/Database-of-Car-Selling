--Analytical Query
--No 1
SELECT *
FROM car_product
RIGHT JOIN bid
  ON car_product.product_id = bid.product_id
  
CREATE MATERIALIZED VIEW jumlah_model
AS
SELECT model, COUNT(model) as count_product
FROM car_product
GROUP BY model;

SELECT * 
FROM jumlah_model

SELECT car_product.model, count_product, COUNT(bid.product_id) as count_bid
FROM car_product
LEFT JOIN bid
  ON car_product.product_id = bid.product_id
LEFT JOIN jumlah_model
	ON car_product.model = jumlah_model.model
GROUP BY car_product.model, count_product
ORDER BY count_bid DESC;

--No 2
SELECT nama_kota, brand, model, year, price, AVG(price) OVER (PARTITION BY nama_kota) as avg_car_city
FROM car_product
JOIN seller
  ON seller.product_id = car_product.product_id
JOIN location
  ON seller.kota_id = location.kota_id
GROUP BY nama_kota, brand, model,year, price
ORDER BY avg_car_city ASC;

--No 3
SELECT 	model, 
	user_id, 
	bid_date as first_bid_date,
	LEAD(bid_date,1) OVER(PARTITION BY bid_date ORDER BY bid_date) as next_bid_date,
	bid.price as first_bid_price,
	LEAD(bid.price,1) OVER(PARTITION BY bid_date ORDER BY bid.price) as next_bid_price
FROM bid
JOIN car_product
	ON bid.product_id = car_product.product_id
WHERE model = 'Toyota Yaris'
ORDER BY user_id;

--No 4
SELECT car_product.model, AVG(car_product.price) as avg_price
FROM car_product
GROUP BY model;

SELECT	car_product.model,
	AVG(car_product.price) as avg_price,
	AVG(bid_price) as avg_bid_6month
FROM bid
JOIN car_product
  ON car_product.product_id = bid.product_id
WHERE bid_date BETWEEN '2022-01-01' AND '2022-06-30'
GROUP BY car_product.model;


--No 5
SELECT brand, model,
  AVG(CASE WHEN EXTRACT(MONTH FROM bid_date) = 1 THEN bid_price END) AS month1_avg,
  AVG(CASE WHEN EXTRACT(MONTH FROM bid_date) = 2 THEN bid_price END) AS month2_avg,
  AVG(CASE WHEN EXTRACT(MONTH FROM bid_date) = 3 THEN bid_price END) AS month3_avg,
  AVG(CASE WHEN EXTRACT(MONTH FROM bid_date) = 4 THEN bid_price END) AS month4_avg,
  AVG(CASE WHEN EXTRACT(MONTH FROM bid_date) = 5 THEN bid_price END) AS month5_avg,
  AVG(CASE WHEN EXTRACT(MONTH FROM bid_date) = 6 THEN bid_price END) AS month6_avg
FROM bid
JOIN car_product
  ON car_product.product_id = bid.product_id
WHERE bid_date BETWEEN '2022-01-01' AND '2022-06-30'  AND model = 'Toyota Yaris'
GROUP BY car_product.brand, car_product.model;
