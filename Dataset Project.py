import pandas as pd
#seller
seller_id = [101,101,101,101,101,101,101,101,101,101,
             102,102,102,102,102,
             103,103,103,103,103,
             104,104,104,104,104,
             105,105,105,105,105,
             106,106,106,106,106,
             107,107,107,107,107,
             108,
             109,109,109,
             110,
             111,111,111,111,111]

product_id = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
              21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,
              41,42,43,44,45,46,47,48,49,50]

kota_id = [3171,3171,3171,3171,3171,3171,3171,3171,3171,3171,
           3172,3172,3172,3172,3172,
           3173,3173,3173,3173,3173,
           3174,3174,3174,3174,3174,
           3175,3175,3175,3175,3175,
           3573,3573,3573,3573,3573,
           3578,3578,3578,3578,3578,
           3471,
           3273,3273,3273,
           1371,
           1375,1375,1375,1375,1375]

nama = ["Masha Branscomb","Masha Branscomb","Masha Branscomb","Masha Branscomb","Masha Branscomb",
        "Masha Branscomb","Masha Branscomb","Masha Branscomb","Masha Branscomb","Masha Branscomb",
       
        "Tamas Kinnon","Tamas Kinnon","Tamas Kinnon","Tamas Kinnon","Tamas Kinnon",
        "Sylvan	Godson","Sylvan	Godson","Sylvan	Godson","Sylvan	Godson","Sylvan	Godson",
        "Esma Forsdicke","Esma Forsdicke","Esma Forsdicke","Esma Forsdicke","Esma Forsdicke",
        "Saunders Mayling","Saunders Mayling","Saunders Mayling","Saunders Mayling","Saunders Mayling",
        "Dorey Portinari","Dorey Portinari","Dorey Portinari","Dorey Portinari","Dorey Portinari",
        "Curran	Ainsworth","Curran	Ainsworth","Curran	Ainsworth","Curran	Ainsworth","Curran	Ainsworth",
        "Eli Mathevet",
        "Isidora Diddams","Isidora Diddams","Isidora Diddams",
        "Donella Searchfield",
        "Obidiah Clovan","Obidiah Clovan","Obidiah Clovan","Obidiah Clovan","Obidiah Clovan"]

email = ["masha@gmail.com","masha@gmail.com","masha@gmail.com","masha@gmail.com","masha@gmail.com",
         "masha@gmail.com","masha@gmail.com","masha@gmail.com","masha@gmail.com","masha@gmail.com",
      
         "tamas@gmail.com","tamas@gmail.com","tamas@gmail.com","tamas@gmail.com","tamas@gmail.com",
         "sylvan@gmail.com","sylvan@gmail.com","sylvan@gmail.com","sylvan@gmail.com","sylvan@gmail.com",
         "esma@gmail.com","esma@gmail.com","esma@gmail.com","esma@gmail.com","esma@gmail.com",
         "saunders@gmail.com","saunders@gmail.com","saunders@gmail.com","saunders@gmail.com","saunders@gmail.com",
         "dorey@gmail.com","dorey@gmail.com","dorey@gmail.com","dorey@gmail.com","dorey@gmail.com",
         "curran@gmail.com","curran@gmail.com","curran@gmail.com","curran@gmail.com","curran@gmail.com",
         "eli@gmail.com",
         "isidora@gmail.com","isidora@gmail.com","isidora@gmail.com",
         "donella@gmail.com",
         "obidiah@gmail.com","obidiah@gmail.com","obidiah@gmail.com","obidiah@gmail.com","obidiah@gmail.com"]

no_telp = [9807599768,9807599768,9807599768,9807599768,9807599768,
           9807599768,9807599768,9807599768,9807599768,9807599768,

           9158214996,9158214996,9158214996,9158214996,9158214996,
           9312016626,9312016626,9312016626,9312016626,9312016626,
           3034001203,3034001203,3034001203,3034001203,3034001203,
           9749279369,9749279369,9749279369,9749279369,9749279369,
           7354065906,7354065906,7354065906,7354065906,7354065906,
           7941320019,7941320019,7941320019,7941320019,7941320019,
           3386914366,
           8431341593,8431341593,8431341593,
           7075966305,
           8581188311,8581188311,8581188311,8581188311,8581188311,]

seller = {'seller_id': seller_id, 'product_id': product_id, 'kota_id': kota_id, 'nama': nama, 'email': email, 'no_telp': no_telp}

print(seller) 
seller_df = pd.DataFrame(seller)

print(seller_df)

#car_product
product_id = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,
              21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,
              41,42,43,44,45,46,47,48,49,50]

kota_id = [3171,3171,3171,3171,3171,3171,3171,3171,3171,3171,
           3172,3172,3172,3172,3172,
           3173,3173,3173,3173,3173,
           3174,3174,3174,3174,3174,
           3175,3175,3175,3175,3175,
           3573,3573,3573,3573,3573,
           3578,3578,3578,3578,3578,
           3471,
           3273,3273,3273,
           1371,
           1375,1375,1375,1375,1375]

brand = ["Toyota","Toyota","Toyota","Toyota","Toyota","Toyota","Toyota","Toyota","Toyota","Toyota",
         "Toyota","Toyota","Toyota","Toyota","Toyota","Daihatsu","Daihatsu","Daihatsu","Daihatsu","Daihatsu",
         "Daihatsu","Daihatsu","Daihatsu","Daihatsu","Daihatsu","Daihatsu","Daihatsu","Daihatsu","Daihatsu","Daihatsu",
         "Honda","Honda","Honda","Honda","Honda","Honda","Honda","Honda","Honda","Honda","Honda","Honda","Honda","Honda","Honda",
         "Suzuki","Suzuki","Suzuki","Suzuki","Suzuki"]

model = ["Toyota Yaris","Toyota Yaris","Toyota Yaris","Toyota Yaris","Toyota Yaris",
         "Toyota Agya","Toyota Agya","Toyota Agya","Toyota Agya","Toyota Agya",
         "Toyota Calya","Toyota Calya","Toyota Calya","Toyota Calya","Toyota Calya",
         "Daihatsu Ayla","Daihatsu Ayla","Daihatsu Ayla","Daihatsu Ayla","Daihatsu Ayla",
         "Daihatsu Terios","Daihatsu Terios","Daihatsu Terios","Daihatsu Terios","Daihatsu Terios",
         "Daihatsu Xenia","Daihatsu Xenia","Daihatsu Xenia","Daihatsu Xenia","Daihatsu Xenia",
         "Honda Jazz","Honda Jazz","Honda Jazz","Honda Jazz","Honda Jazz",
         "Honda CR-V","Honda CR-V","Honda CR-V","Honda CR-V","Honda CR-V",
         "Honda Civic","Honda Civic","Honda Civic","Honda Civic","Honda Civic",
         "Suzuki Ertiga","Suzuki Ertiga","Suzuki Ertiga","Suzuki Ertiga","Suzuki Ertiga"]

body_type = ["Hatchback","Hatchback","Hatchback","Hatchback","Hatchback","Hatchback","Hatchback","Hatchback","Hatchback","Hatchback",
             "Wagon","Wagon","Wagon","Wagon","Wagon",
             "Hatchback","Hatchback","Hatchback","Hatchback","Hatchback",
             "SUV","SUV","SUV","SUV","SUV",
             "MPV","MPV","MPV","MPV","MPV",
             "Hatchback","Hatchback","Hatchback","Hatchback","Hatchback",
             "SUV","SUV","SUV","SUV","SUV",
             "Hatchback","Sedan","Sedan","Sedan","HatchBack",
             "MPV","MPV","MPV","MPV","MPV"]

year = [2016,2018,2014,2020,2012,2019,2014,2016,2022,2017,
        2019,2019,2017,2016,2016,2016,2019,2015,2017,2017,
        2018,2022,2019,2017,2018,2019,2022,2017,2014,2018,
        2018,2019,2018,2015,2013,2018,2017,2009,2016,2018,
        2018,2010,2013,2013,2019,2015,2018,2016,2012,2018]

price = [175000000,215000000,162000000,220000000,124000000,
         114000000,97000000,110000000,155500000,115500000,
         130000000,137000000,115500000,104000000,107000000,
         83000000,120000000,96000000,115000000,113000000,
         190000000,223000000,189900000,166000000,201000000,
         170000000,220500000,135000000,100000000,159000000,
         236000000,250000000,216000000,192000000,178000000,
         415000000,345000000,116000000,269000000,398500000,
         350000000,165000000,186000000,179000000,397500000,
         125000000,178000000,168000000,100000000,167000000]

date_post = ["2022-01-01","2022-01-01","2022-01-02","2022-01-03","2022-01-04","2022-01-04","2022-01-04","2022-01-05","2022-01-06","2022-01-06",
             "2022-01-07","2022-01-07","2022-01-08","2022-01-08","2022-01-09","2022-01-10","2022-01-11","2022-01-11","2022-01-12","2022-01-12",
             "2022-01-13","2022-01-14","2022-01-14","2022-01-15","2022-01-01","2022-01-02","2022-01-03","2022-01-04","2022-01-05","2022-01-05",
             "2022-01-06","2022-01-06","2022-01-07","2022-01-08","2022-01-08","2022-01-09","2022-01-09","2022-01-10","2022-01-10","2022-01-10",
             "2022-01-11","2022-01-12","2022-01-12","2022-01-13","2022-01-14","2022-01-14","2022-01-14","2022-01-15","2022-01-15","2022-01-15"]

car_product = {'product_id': product_id, 'kota_id': kota_id, 'brand': brand, 'model': model, 'body_type': body_type, 'year': year, 'price': price, 'date_post': date_post}

print(car_product) 
car_product_df = pd.DataFrame(car_product)

print(car_product_df)

#location
kota_id = [3171,
           3172,
           3173,
           3174,
           3175,
           3573,
           3578,
           3471,
           3273,
           1371,
           1375]

nama_kota = ["Kota Jakarta Pusat",
             
             "Kota Jakarta Utara",
             "Kota Jakarta Barat",
             "Kota Jakarta Selatan",
             "Kota Jakarta Timur",
             "Kota Malang",
             "Kota Surabaya",
             "Kota Yogyakarta",
             "Kota Bandung",
             "Kota Padang",
             "Kota Bukittinggi"]

kordinat = [(-6.186486, 106.834091),
            (-6.121435, 106.774124),
            (-6.1352, 106.813301),
            (-6.300641, 106.814095),
            (-6.264451, 106.895859),
            (-7.981894, 112.626503),
            (-7.289166, 112.734398),
            (-7.797224, 110.368797),
            (-6.9147444, 107.6098111),
            (-0.95, 100.3530556),
            (-0.3055556, 100.3691667)]

location = {'kota_id': kota_id, 'nama_kota': nama_kota, 'kordinat': kordinat}

print(location) 
location_df = pd.DataFrame(location)

print(location_df)

#bid
bid_id = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,
          26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,
          51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,
          76,77,78,79,80,81,82,83,84,85,86,87,88,89]

user_id = [19,  20,     4,      4,      1,      11,     15,     23,     22,     9,
           22,  20,     7,      3,      20,     25,     18,     25,     7,      22,
           17,  23,     10,     1,      25,     23,     20,     25,     24,     2,
           17,  25,     14,     18,     18,     5,      12,     22,     4,      19,
           3,   6,      9,      5,      11,     25,     8,      25,     21,     20,
           21,  4,      11,     6,      16,     9,      1,      11,     20,     13,
           22,  9,      16,     16,     5,      24,     16,     12,     25,     6,
           24,  16,     17,     8,      10,     14,     13,     20,     10,     21,
           13,  19,     25,     21,     3,      24,     13,     19,     3]

product_id = [1,1,1,    2,2,    3,3,      4,4,4,       5,5,      6,6,           #14
              7,7,      8,      9,        10,10,       11,11,    12,12,         #10
              13,       14,14,  15,15,15, 16,          17,17,    18,18,18,      #12
              19,       20,     21,21,    22,22,       23,23,    24,24,24,      #11
              25,25,    26,     27,27,    28,          29,29,    30,             #9
              31,31,    32,     33,33,    34,          35,35,    36,36,         37,37,         #12
              38,38,  39,       40,40,       41,41,    42,            #8
              43,43,    44,44,  45,       46,46,46,    47,       48,48,         #11
              49,       50]                                                     #2
                                                                                
bid_date = ["2022-04-26","2022-06-14","2022-05-17","2022-01-19","2022-02-13","2022-06-19","2022-03-13","2022-03-07","2022-04-15","2022-01-26",
            "2022-03-19","2022-05-30","2022-01-16","2022-04-26","2022-02-15","2022-03-19","2022-05-24","2022-05-25","2022-05-27","2022-04-07",
            "2022-06-22","2022-05-22","2022-01-18","2022-05-06","2022-05-18","2022-04-22","2022-04-15","2022-03-09","2022-03-19","2022-02-18",
            "2022-02-11","2022-05-09","2022-01-30","2022-04-16","2022-06-06","2022-03-30","2022-02-16","2022-05-18","2022-04-28","2022-05-13",
            "2022-06-27","2022-04-10","2022-04-25","2022-01-27","2022-05-18","2022-05-18","2022-05-28","2022-05-17","2022-05-15","2022-01-22",
            "2022-03-29","2022-05-18","2022-06-27","2022-01-18","2022-01-17","2022-03-18","2022-04-21","2022-01-17","2022-03-21","2022-04-09",
            "2022-06-14","2022-01-27","2022-04-15","2022-04-05","2022-03-29","2022-03-04","2022-06-11","2022-05-05","2022-06-11","2022-06-04",
            "2022-04-18","2022-05-30","2022-02-28","2022-01-25","2022-02-01","2022-03-03","2022-02-28","2022-06-03","2022-04-04","2022-02-27",
            "2022-04-19","2022-05-23","2022-04-08","2022-02-19","2022-05-16","2022-03-10","2022-03-05","2022-06-25","2022-05-25"]
            
price = [175000000,175000000,175000000,     215000000,215000000,     162000000,162000000,
         220000000,220000000,220000000,     124000000,124000000,     114000000,114000000,
         
         97000000,97000000,                 110000000,               155500000,
         115500000,115500000,               130000000,130000000,     137000000,137000000,
         
         115500000,                         104000000,104000000,     107000000,107000000,107000000,
         83000000,                          120000000,120000000,     96000000,96000000,96000000,
         
         115000000,                         113000000,               190000000,190000000,
         223000000,223000000,               189900000,189900000,     166000000,166000000,166000000,
         
         201000000,201000000,               170000000,               220500000,220500000,
         135000000,                         100000000,100000000,     159000000,     
         
         236000000,236000000,               250000000,               216000000,216000000,
         192000000,                         178000000,178000000,     415000000,415000000,
         
         345000000,345000000,               116000000,116000000,     269000000,
         398500000,398500000,               350000000,350000000,     165000000,
         
         186000000,186000000,               179000000,179000000,     397500000,     
         125000000,125000000,125000000,     178000000,               168000000,168000000,
         100000000,                         167000000]     



bid_price = [170000000,180000000,178000000,     200000000,230000000,    145000000,170000000, #7
             210000000,225000000,240000000,     120000000,110000000,    110000000,120000000, #14

             90000000,100000000,                120000000,              145500000,               #18
             125500000,135500000,               125000000,120000000,    139000000,147000000, #24

             114500000,                         100000000,95000000,     109000000,117000000,104000000, #30
             80000000,                          125000000,130000000,    94000000,92000000,90000000, #36

             119000000,                         110000000,              195000000,200000000, #40
             225000000,230000000,               188700000,190000000,    168000000,170000000,173000000, #47

             202000000,204000000,               160000000,              225500000,227500000, #52
             130000000,                         101000000,102000000,    160000000, #56

             238000000,240000000,               253000000,              210000000,208000000, #61
             190000000,                         170000000,165000000,    417000000,419000000, #66

             347000000,349000000,               118000000,110000000,    270000000, #71
             399500000,397000000,               355000000,357000000,    164000000, #76

             190000000,192000000,               180000000,181000000,    395500000, #81

             124000000,127000000,130000000,     180000000,              170000000,171000000, #87
             101000000,                         170000000] #89

bid_status = ["sent","sent","sent","sent","sent","sent","sent","sent","sent","sent",
              "sent","sent","sent","sent","sent","sent","sent","sent","sent","sent",
              "sent","sent","sent","sent","sent","sent","sent","sent","sent","sent",
              "sent","sent","sent","sent","sent","sent","sent","sent","sent","sent",
              "sent","sent","sent","sent","sent","sent","sent","sent","sent","sent",
              "sent","sent","sent","sent","sent","sent","sent","sent","sent","sent",
              "sent","sent","sent","sent","sent","sent","sent","sent","sent","sent",
              "sent","sent","sent","sent","sent","sent","sent","sent","sent","sent",
              "sent","sent","sent","sent","sent","sent","sent","sent","sent"]

bid = {'bid_id': bid_id, 'user_id': user_id, 'product_id': product_id, 'bid_date': bid_date, 'price': price, 'bid_price': bid_price, 'bid_status': bid_status}

print(bid) 
bid_df = pd.DataFrame(bid)

print(bid_df)




bid_df.to_csv('bid.csv', index=False)
location_df.to_csv('location.csv', index=False)

car_product_df.to_csv('car_product.csv', index=False)
seller_df.to_csv('seller.csv', index=False)