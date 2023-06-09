toc.dat                                                                                             0000600 0004000 0002000 00000015644 14414060207 0014447 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           {            tes3    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    49587    tes3    DATABASE     {   CREATE DATABASE tes3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE tes3;
                postgres    false         �            1255    49639    distance(point, point)    FUNCTION     �  CREATE FUNCTION public.distance(point1 point, point2 point) RETURNS double precision
    LANGUAGE plpgsql
    AS $$
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
$$;
 ;   DROP FUNCTION public.distance(point1 point, point2 point);
       public          postgres    false         �            1259    49621    bid    TABLE     �   CREATE TABLE public.bid (
    bid_id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    bid_date date NOT NULL,
    price integer NOT NULL,
    bid_price integer NOT NULL,
    bid_status character varying(20) NOT NULL
);
    DROP TABLE public.bid;
       public         heap    postgres    false         �            1259    49611    car_product    TABLE     9  CREATE TABLE public.car_product (
    product_id integer NOT NULL,
    kota_id integer NOT NULL,
    brand character varying(40) NOT NULL,
    model character varying(40) NOT NULL,
    body_type character varying(40) NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL,
    date_post date NOT NULL
);
    DROP TABLE public.car_product;
       public         heap    postgres    false         �            1259    49633    jumlah_model    MATERIALIZED VIEW     �   CREATE MATERIALIZED VIEW public.jumlah_model AS
 SELECT car_product.model,
    count(car_product.model) AS count_product
   FROM public.car_product
  GROUP BY car_product.model
  WITH NO DATA;
 ,   DROP MATERIALIZED VIEW public.jumlah_model;
       public         heap    postgres    false    216         �            1259    49601    location    TABLE     �   CREATE TABLE public.location (
    kota_id integer NOT NULL,
    nama_kota character varying(40) NOT NULL,
    kordinat point NOT NULL
);
    DROP TABLE public.location;
       public         heap    postgres    false         �            1259    49588    seller    TABLE     �   CREATE TABLE public.seller (
    seller_id integer NOT NULL,
    product_id integer NOT NULL,
    kota_id integer NOT NULL,
    nama character varying(40) NOT NULL,
    email character varying(40) NOT NULL,
    no_telp character varying(40) NOT NULL
);
    DROP TABLE public.seller;
       public         heap    postgres    false                   0    49621    bid 
   TABLE DATA           b   COPY public.bid (bid_id, user_id, product_id, bid_date, price, bid_price, bid_status) FROM stdin;
    public          postgres    false    217       3345.dat           0    49611    car_product 
   TABLE DATA           k   COPY public.car_product (product_id, kota_id, brand, model, body_type, year, price, date_post) FROM stdin;
    public          postgres    false    216       3344.dat           0    49601    location 
   TABLE DATA           @   COPY public.location (kota_id, nama_kota, kordinat) FROM stdin;
    public          postgres    false    215       3343.dat           0    49588    seller 
   TABLE DATA           V   COPY public.seller (seller_id, product_id, kota_id, nama, email, no_telp) FROM stdin;
    public          postgres    false    214       3342.dat z           2606    49625    bid bid_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pkey PRIMARY KEY (bid_id);
 6   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_pkey;
       public            postgres    false    217         x           2606    49615    car_product car_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT car_product_pkey PRIMARY KEY (product_id);
 F   ALTER TABLE ONLY public.car_product DROP CONSTRAINT car_product_pkey;
       public            postgres    false    216         v           2606    49605    location location_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (kota_id);
 @   ALTER TABLE ONLY public.location DROP CONSTRAINT location_pkey;
       public            postgres    false    215         ~           2606    49626    bid bid_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.car_product(product_id);
 A   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_product_id_fkey;
       public          postgres    false    216    217    3192         }           2606    49616 $   car_product car_product_kota_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT car_product_kota_id_fkey FOREIGN KEY (kota_id) REFERENCES public.location(kota_id);
 N   ALTER TABLE ONLY public.car_product DROP CONSTRAINT car_product_kota_id_fkey;
       public          postgres    false    216    215    3190         {           2606    49645    seller seller_kota_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_kota_id_fkey FOREIGN KEY (kota_id) REFERENCES public.location(kota_id);
 D   ALTER TABLE ONLY public.seller DROP CONSTRAINT seller_kota_id_fkey;
       public          postgres    false    215    214    3190         |           2606    49640    seller seller_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.car_product(product_id);
 G   ALTER TABLE ONLY public.seller DROP CONSTRAINT seller_product_id_fkey;
       public          postgres    false    3192    214    216                    0    49633    jumlah_model    MATERIALIZED VIEW DATA     /   REFRESH MATERIALIZED VIEW public.jumlah_model;
          public          postgres    false    218    3348                                                                                                    3345.dat                                                                                            0000600 0004000 0002000 00000007624 14414060207 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        90	1	2	2022-02-14	215000000	220000000	sent
1	19	1	2022-04-26	175000000	170000000	sent
2	20	1	2022-06-14	175000000	180000000	sent
3	4	1	2022-05-17	175000000	178000000	sent
4	4	2	2022-01-19	215000000	200000000	sent
5	1	2	2022-02-13	215000000	230000000	sent
6	11	3	2022-06-19	162000000	145000000	sent
7	15	3	2022-03-13	162000000	170000000	sent
8	23	4	2022-03-07	220000000	210000000	sent
9	22	4	2022-04-15	220000000	225000000	sent
10	9	4	2022-01-26	220000000	240000000	sent
11	22	5	2022-03-19	124000000	120000000	sent
12	20	5	2022-05-30	124000000	110000000	sent
13	7	6	2022-01-16	114000000	110000000	sent
14	3	6	2022-04-26	114000000	120000000	sent
15	20	7	2022-02-15	97000000	90000000	sent
16	25	7	2022-03-19	97000000	100000000	sent
17	18	8	2022-05-24	110000000	120000000	sent
18	25	9	2022-05-25	155500000	145500000	sent
19	7	10	2022-05-27	115500000	125500000	sent
20	22	10	2022-04-07	115500000	135500000	sent
21	17	11	2022-06-22	130000000	125000000	sent
22	23	11	2022-05-22	130000000	120000000	sent
23	10	12	2022-01-18	137000000	139000000	sent
24	1	12	2022-05-06	137000000	147000000	sent
25	25	13	2022-05-18	115500000	114500000	sent
26	23	14	2022-04-22	104000000	100000000	sent
27	20	14	2022-04-15	104000000	95000000	sent
28	25	15	2022-03-09	107000000	109000000	sent
29	24	15	2022-03-19	107000000	117000000	sent
30	2	15	2022-02-18	107000000	104000000	sent
31	17	16	2022-02-11	83000000	80000000	sent
32	25	17	2022-05-09	120000000	125000000	sent
33	14	17	2022-01-30	120000000	130000000	sent
34	18	18	2022-04-16	96000000	94000000	sent
35	18	18	2022-06-06	96000000	92000000	sent
36	5	18	2022-03-30	96000000	90000000	sent
37	12	19	2022-02-16	115000000	119000000	sent
38	22	20	2022-05-18	113000000	110000000	sent
39	4	21	2022-04-28	190000000	195000000	sent
40	19	21	2022-05-13	190000000	200000000	sent
41	3	22	2022-06-27	223000000	225000000	sent
42	6	22	2022-04-10	223000000	230000000	sent
43	9	23	2022-04-25	189900000	188700000	sent
44	5	23	2022-01-27	189900000	190000000	sent
45	11	24	2022-05-18	166000000	168000000	sent
46	25	24	2022-05-18	166000000	170000000	sent
47	8	24	2022-05-28	166000000	173000000	sent
48	25	25	2022-05-17	201000000	202000000	sent
49	21	25	2022-05-15	201000000	204000000	sent
50	20	26	2022-01-22	170000000	160000000	sent
51	21	27	2022-03-29	220500000	225500000	sent
52	4	27	2022-05-18	220500000	227500000	sent
53	11	28	2022-06-27	135000000	130000000	sent
54	6	29	2022-01-18	100000000	101000000	sent
55	16	29	2022-01-17	100000000	102000000	sent
56	9	30	2022-03-18	159000000	160000000	sent
57	1	31	2022-04-21	236000000	238000000	sent
58	11	31	2022-01-17	236000000	240000000	sent
59	20	32	2022-03-21	250000000	253000000	sent
60	13	33	2022-04-09	216000000	210000000	sent
61	22	33	2022-06-14	216000000	208000000	sent
62	9	34	2022-01-27	192000000	190000000	sent
63	16	35	2022-04-15	178000000	170000000	sent
64	16	35	2022-04-05	178000000	165000000	sent
65	5	36	2022-03-29	415000000	417000000	sent
66	24	36	2022-03-04	415000000	419000000	sent
67	16	37	2022-06-11	345000000	347000000	sent
68	12	37	2022-05-05	345000000	349000000	sent
69	25	38	2022-06-11	116000000	118000000	sent
70	6	38	2022-06-04	116000000	110000000	sent
71	24	39	2022-04-18	269000000	270000000	sent
72	16	40	2022-05-30	398500000	399500000	sent
73	17	40	2022-02-28	398500000	397000000	sent
74	8	41	2022-01-25	350000000	355000000	sent
75	10	41	2022-02-01	350000000	357000000	sent
76	14	42	2022-03-03	165000000	164000000	sent
77	13	43	2022-02-28	186000000	190000000	sent
78	20	43	2022-06-03	186000000	192000000	sent
79	10	44	2022-04-04	179000000	180000000	sent
80	21	44	2022-02-27	179000000	181000000	sent
81	13	45	2022-04-19	397500000	395500000	sent
82	19	46	2022-05-23	125000000	124000000	sent
83	25	46	2022-04-08	125000000	127000000	sent
84	21	46	2022-02-19	125000000	130000000	sent
85	3	47	2022-05-16	178000000	180000000	sent
86	24	48	2022-03-10	168000000	170000000	sent
87	13	48	2022-03-05	168000000	171000000	sent
88	19	49	2022-06-25	100000000	101000000	sent
89	3	50	2022-05-25	167000000	170000000	sent
\.


                                                                                                            3344.dat                                                                                            0000600 0004000 0002000 00000005765 14414060207 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	3171	Toyota	Toyota Yaris	Hatchback	2016	175000000	2022-01-01
2	3171	Toyota	Toyota Yaris	Hatchback	2018	215000000	2022-01-01
3	3171	Toyota	Toyota Yaris	Hatchback	2014	162000000	2022-01-02
4	3171	Toyota	Toyota Yaris	Hatchback	2020	220000000	2022-01-03
5	3171	Toyota	Toyota Yaris	Hatchback	2012	124000000	2022-01-04
6	3171	Toyota	Toyota Agya	Hatchback	2019	114000000	2022-01-04
7	3171	Toyota	Toyota Agya	Hatchback	2014	97000000	2022-01-04
8	3171	Toyota	Toyota Agya	Hatchback	2016	110000000	2022-01-05
9	3171	Toyota	Toyota Agya	Hatchback	2022	155500000	2022-01-06
10	3171	Toyota	Toyota Agya	Hatchback	2017	115500000	2022-01-06
11	3172	Toyota	Toyota Calya	Wagon	2019	130000000	2022-01-07
12	3172	Toyota	Toyota Calya	Wagon	2019	137000000	2022-01-07
13	3172	Toyota	Toyota Calya	Wagon	2017	115500000	2022-01-08
14	3172	Toyota	Toyota Calya	Wagon	2016	104000000	2022-01-08
15	3172	Toyota	Toyota Calya	Wagon	2016	107000000	2022-01-09
16	3173	Daihatsu	Daihatsu Ayla	Hatchback	2016	83000000	2022-01-10
17	3173	Daihatsu	Daihatsu Ayla	Hatchback	2019	120000000	2022-01-11
18	3173	Daihatsu	Daihatsu Ayla	Hatchback	2015	96000000	2022-01-11
19	3173	Daihatsu	Daihatsu Ayla	Hatchback	2017	115000000	2022-01-12
20	3173	Daihatsu	Daihatsu Ayla	Hatchback	2017	113000000	2022-01-12
21	3174	Daihatsu	Daihatsu Terios	SUV	2018	190000000	2022-01-13
22	3174	Daihatsu	Daihatsu Terios	SUV	2022	223000000	2022-01-14
23	3174	Daihatsu	Daihatsu Terios	SUV	2019	189900000	2022-01-14
24	3174	Daihatsu	Daihatsu Terios	SUV	2017	166000000	2022-01-15
25	3174	Daihatsu	Daihatsu Terios	SUV	2018	201000000	2022-01-01
26	3175	Daihatsu	Daihatsu Xenia	MPV	2019	170000000	2022-01-02
27	3175	Daihatsu	Daihatsu Xenia	MPV	2022	220500000	2022-01-03
28	3175	Daihatsu	Daihatsu Xenia	MPV	2017	135000000	2022-01-04
29	3175	Daihatsu	Daihatsu Xenia	MPV	2014	100000000	2022-01-05
30	3175	Daihatsu	Daihatsu Xenia	MPV	2018	159000000	2022-01-05
31	3573	Honda	Honda Jazz	Hatchback	2018	236000000	2022-01-06
32	3573	Honda	Honda Jazz	Hatchback	2019	250000000	2022-01-06
33	3573	Honda	Honda Jazz	Hatchback	2018	216000000	2022-01-07
34	3573	Honda	Honda Jazz	Hatchback	2015	192000000	2022-01-08
35	3573	Honda	Honda Jazz	Hatchback	2013	178000000	2022-01-08
36	3578	Honda	Honda CR-V	SUV	2018	415000000	2022-01-09
37	3578	Honda	Honda CR-V	SUV	2017	345000000	2022-01-09
38	3578	Honda	Honda CR-V	SUV	2009	116000000	2022-01-10
39	3578	Honda	Honda CR-V	SUV	2016	269000000	2022-01-10
40	3578	Honda	Honda CR-V	SUV	2018	398500000	2022-01-10
41	3471	Honda	Honda Civic	Hatchback	2018	350000000	2022-01-11
42	3273	Honda	Honda Civic	Sedan	2010	165000000	2022-01-12
43	3273	Honda	Honda Civic	Sedan	2013	186000000	2022-01-12
44	3273	Honda	Honda Civic	Sedan	2013	179000000	2022-01-13
45	1371	Honda	Honda Civic	HatchBack	2019	397500000	2022-01-14
46	1375	Suzuki	Suzuki Ertiga	MPV	2015	125000000	2022-01-14
47	1375	Suzuki	Suzuki Ertiga	MPV	2018	178000000	2022-01-14
48	1375	Suzuki	Suzuki Ertiga	MPV	2016	168000000	2022-01-15
49	1375	Suzuki	Suzuki Ertiga	MPV	2012	100000000	2022-01-15
50	1375	Suzuki	Suzuki Ertiga	MPV	2018	167000000	2022-01-15
\.


           3343.dat                                                                                            0000600 0004000 0002000 00000000755 14414060207 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3171	Kota Jakarta Pusat	(-6.186486,106.834091)
3172	Kota Jakarta Utara	(-6.121435,106.774124)
3173	Kota Jakarta Barat	(-6.1352,106.813301)
3174	Kota Jakarta Selatan	(-6.300641,106.814095)
3175	Kota Jakarta Timur	(-6.264451,106.895859)
3573	Kota Malang	(-7.981894,112.626503)
3578	Kota Surabaya	(-7.289166,112.734398)
3471	Kota Yogyakarta	(-7.797224,110.368797)
3273	Kota Bandung	(-6.9147444,107.6098111)
1371	Kota Padang	(-0.95,100.3530556)
1375	Kota Bukittinggi	(-0.3055556,100.3691667)
\.


                   3342.dat                                                                                            0000600 0004000 0002000 00000005320 14414060207 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        101	1	3171	Masha Branscomb	masha@gmail.com	9807599768
101	2	3171	Masha Branscomb	masha@gmail.com	9807599768
101	3	3171	Masha Branscomb	masha@gmail.com	9807599768
101	4	3171	Masha Branscomb	masha@gmail.com	9807599768
101	5	3171	Masha Branscomb	masha@gmail.com	9807599768
101	6	3171	Masha Branscomb	masha@gmail.com	9807599768
101	7	3171	Masha Branscomb	masha@gmail.com	9807599768
101	8	3171	Masha Branscomb	masha@gmail.com	9807599768
101	9	3171	Masha Branscomb	masha@gmail.com	9807599768
101	10	3171	Masha Branscomb	masha@gmail.com	9807599768
102	11	3172	Tamas Kinnon	tamas@gmail.com	9158214996
102	12	3172	Tamas Kinnon	tamas@gmail.com	9158214996
102	13	3172	Tamas Kinnon	tamas@gmail.com	9158214996
102	14	3172	Tamas Kinnon	tamas@gmail.com	9158214996
102	15	3172	Tamas Kinnon	tamas@gmail.com	9158214996
103	16	3173	Sylvan\tGodson	sylvan@gmail.com	9312016626
103	17	3173	Sylvan\tGodson	sylvan@gmail.com	9312016626
103	18	3173	Sylvan\tGodson	sylvan@gmail.com	9312016626
103	19	3173	Sylvan\tGodson	sylvan@gmail.com	9312016626
103	20	3173	Sylvan\tGodson	sylvan@gmail.com	9312016626
104	21	3174	Esma Forsdicke	esma@gmail.com	3034001203
104	22	3174	Esma Forsdicke	esma@gmail.com	3034001203
104	23	3174	Esma Forsdicke	esma@gmail.com	3034001203
104	24	3174	Esma Forsdicke	esma@gmail.com	3034001203
104	25	3174	Esma Forsdicke	esma@gmail.com	3034001203
105	26	3175	Saunders Mayling	saunders@gmail.com	9749279369
105	27	3175	Saunders Mayling	saunders@gmail.com	9749279369
105	28	3175	Saunders Mayling	saunders@gmail.com	9749279369
105	29	3175	Saunders Mayling	saunders@gmail.com	9749279369
105	30	3175	Saunders Mayling	saunders@gmail.com	9749279369
106	31	3573	Dorey Portinari	dorey@gmail.com	7354065906
106	32	3573	Dorey Portinari	dorey@gmail.com	7354065906
106	33	3573	Dorey Portinari	dorey@gmail.com	7354065906
106	34	3573	Dorey Portinari	dorey@gmail.com	7354065906
106	35	3573	Dorey Portinari	dorey@gmail.com	7354065906
107	36	3578	Curran\tAinsworth	curran@gmail.com	7941320019
107	37	3578	Curran\tAinsworth	curran@gmail.com	7941320019
107	38	3578	Curran\tAinsworth	curran@gmail.com	7941320019
107	39	3578	Curran\tAinsworth	curran@gmail.com	7941320019
107	40	3578	Curran\tAinsworth	curran@gmail.com	7941320019
108	41	3471	Eli Mathevet	eli@gmail.com	3386914366
109	42	3273	Isidora Diddams	isidora@gmail.com	8431341593
109	43	3273	Isidora Diddams	isidora@gmail.com	8431341593
109	44	3273	Isidora Diddams	isidora@gmail.com	8431341593
110	45	1371	Donella Searchfield	donella@gmail.com	7075966305
111	46	1375	Obidiah Clovan	obidiah@gmail.com	8581188311
111	47	1375	Obidiah Clovan	obidiah@gmail.com	8581188311
111	48	1375	Obidiah Clovan	obidiah@gmail.com	8581188311
111	49	1375	Obidiah Clovan	obidiah@gmail.com	8581188311
111	50	1375	Obidiah Clovan	obidiah@gmail.com	8581188311
\.


                                                                                                                                                                                                                                                                                                                restore.sql                                                                                         0000600 0004000 0002000 00000014565 14414060207 0015375 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE tes3;
--
-- Name: tes3; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE tes3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';


ALTER DATABASE tes3 OWNER TO postgres;

\connect tes3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: distance(point, point); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.distance(point1 point, point2 point) RETURNS double precision
    LANGUAGE plpgsql
    AS $$
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
$$;


ALTER FUNCTION public.distance(point1 point, point2 point) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bid (
    bid_id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    bid_date date NOT NULL,
    price integer NOT NULL,
    bid_price integer NOT NULL,
    bid_status character varying(20) NOT NULL
);


ALTER TABLE public.bid OWNER TO postgres;

--
-- Name: car_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car_product (
    product_id integer NOT NULL,
    kota_id integer NOT NULL,
    brand character varying(40) NOT NULL,
    model character varying(40) NOT NULL,
    body_type character varying(40) NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL,
    date_post date NOT NULL
);


ALTER TABLE public.car_product OWNER TO postgres;

--
-- Name: jumlah_model; Type: MATERIALIZED VIEW; Schema: public; Owner: postgres
--

CREATE MATERIALIZED VIEW public.jumlah_model AS
 SELECT car_product.model,
    count(car_product.model) AS count_product
   FROM public.car_product
  GROUP BY car_product.model
  WITH NO DATA;


ALTER TABLE public.jumlah_model OWNER TO postgres;

--
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    kota_id integer NOT NULL,
    nama_kota character varying(40) NOT NULL,
    kordinat point NOT NULL
);


ALTER TABLE public.location OWNER TO postgres;

--
-- Name: seller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seller (
    seller_id integer NOT NULL,
    product_id integer NOT NULL,
    kota_id integer NOT NULL,
    nama character varying(40) NOT NULL,
    email character varying(40) NOT NULL,
    no_telp character varying(40) NOT NULL
);


ALTER TABLE public.seller OWNER TO postgres;

--
-- Data for Name: bid; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bid (bid_id, user_id, product_id, bid_date, price, bid_price, bid_status) FROM stdin;
\.
COPY public.bid (bid_id, user_id, product_id, bid_date, price, bid_price, bid_status) FROM '$$PATH$$/3345.dat';

--
-- Data for Name: car_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.car_product (product_id, kota_id, brand, model, body_type, year, price, date_post) FROM stdin;
\.
COPY public.car_product (product_id, kota_id, brand, model, body_type, year, price, date_post) FROM '$$PATH$$/3344.dat';

--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.location (kota_id, nama_kota, kordinat) FROM stdin;
\.
COPY public.location (kota_id, nama_kota, kordinat) FROM '$$PATH$$/3343.dat';

--
-- Data for Name: seller; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seller (seller_id, product_id, kota_id, nama, email, no_telp) FROM stdin;
\.
COPY public.seller (seller_id, product_id, kota_id, nama, email, no_telp) FROM '$$PATH$$/3342.dat';

--
-- Name: bid bid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pkey PRIMARY KEY (bid_id);


--
-- Name: car_product car_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT car_product_pkey PRIMARY KEY (product_id);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (kota_id);


--
-- Name: bid bid_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.car_product(product_id);


--
-- Name: car_product car_product_kota_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT car_product_kota_id_fkey FOREIGN KEY (kota_id) REFERENCES public.location(kota_id);


--
-- Name: seller seller_kota_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_kota_id_fkey FOREIGN KEY (kota_id) REFERENCES public.location(kota_id);


--
-- Name: seller seller_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.car_product(product_id);


--
-- Name: jumlah_model; Type: MATERIALIZED VIEW DATA; Schema: public; Owner: postgres
--

REFRESH MATERIALIZED VIEW public.jumlah_model;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           