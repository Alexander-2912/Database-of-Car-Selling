CREATE TABLE seller(
	seller_id int NOT NULL,
	product_id int NOT NULL,
	kota_id int NOT NULL,
	nama VARCHAR(40) NOT NULL,
	email VARCHAR(40) NOT NULL,
	no_telp VARCHAR(40) NOT NULL
);

ALTER TABLE seller
ADD FOREIGN KEY (product_id) REFERENCES car_product(product_id),
ADD FOREIGN KEY (kota_id) REFERENCES location(kota_id);

CREATE TABLE car_product (
	product_id int PRIMARY KEY,
	kota_id int NOT NULL,
	FOREIGN KEY(kota_id) REFERENCES location(kota_id),
	brand VARCHAR(40) NOT NULL,
	model VARCHAR(40) NOT NULL,
	body_type VARCHAR(40) NOT NULL,
	year int NOT NULL,
	price int NOT NULL,
	date_post DATE NOT NULL
);

CREATE TABLE location(
	kota_id int PRIMARY KEY,
	nama_kota VARCHAR(40) NOT NULL,
	kordinat POINT NOT NULL
);

CREATE TABLE bid(
	bid_id int PRIMARY KEY,
	user_id int NOT NULL,
	product_id int NOT NULL,
	FOREIGN KEY(product_id) REFERENCES car_product(product_id),
	bid_date DATE NOT NULL,
	price int NOT NULL,
	bid_price int NOT NULL,
	bid_status VARCHAR(20) NOT NULL
);