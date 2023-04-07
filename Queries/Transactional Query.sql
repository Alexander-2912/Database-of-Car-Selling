--Transactional Query
--No 1
SELECT product_id, brand, model, year, price
FROM car_product
WHERE year >= 2015;

--No 2
INSERT INTO bid (bid_id, user_id, product_id, bid_date, price, bid_price, bid_status)
VALUES (90, 1, 2, '2022-02-14', 215000000, 220000000, 'sent');

--No 3
SELECT seller.product_id, brand, model, year, price, date_post
FROM seller
INNER JOIN car_product
ON seller.product_id = car_product.product_id
WHERE seller.nama = 'Masha Branscomb';

--No 4
SELECT product_id, brand, model, year, price
FROM car_product
WHERE model LIKE '%Yaris'
ORDER BY price ASC;

--No 5
CREATE FUNCTION public.distance(point1 POINT, point2 POINT)
RETURNS float AS $$
DECLARE
	lon1 float := radians(point1[0]);
	lat1 float := radians(point1[1]);
	lon2 float := radians(point2[0]);
	lat2 float := radians(point2[1]);
  	
	dlon float:= lon2 - lon1;
  	dlat float:= lat2 - lat1;
	a float;
	c float;
	r float := 6371;
	jarak float;
BEGIN
	a:= sin(dlat/2)^2 + cos(lat1) * cos(lat2) * sin(dlon/2)^2;
	c:= 22 * asin(sqrt(a));
	jarak := r * c;
	
	RETURN jarak;
END;
$$ LANGUAGE plpgsql;

SELECT product_id, brand, model, year, price, distance((SELECT location.kordinat 
							FROM seller
							JOIN location 
							ON seller.kota_id = location.kota_id
							WHERE seller.kota_id = 3173 LIMIT 1
							),
							(SELECT location.kordinat 
							FROM car_product
							JOIN location 
							ON car_product.kota_id = location.kota_id
							WHERE car_product.kota_id = 3173 LIMIT 1
							))
FROM car_product
WHERE kota_id = 3173;
