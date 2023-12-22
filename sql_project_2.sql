create database mobile_data
use mobile_data
select * from mobile_analysis

1)--check mobile features and price list--
select phone_name , price 
from mobile_analysis;
2)--find out price of 5 most expensive phones--
 select phone_name , price
 from mobile_analysis
 order by price desc; #189900 #189900 #189900 #189900 #179900
3)--find out price of 5 most cheapest phones--
 select phone_name , price
 from mobile_analysis
 order by price asc; #4040 #4040 #4499 #5199 #5499
 4)--list of top samsung phones with price and all features--
 select phone_name , price
 from mobile_analysis
 where brands = "samsung"
 order by price desc
 limit 5  #164999 #164999 #119999 #118999 #118999
 5)--must have andriod phone list then top 5 high price andriod phones--
  select phone_name , brands , price , operating_system_type
  from mobile_analysis
  where operating_system_type = "android"
  order by price desc
  limit 5       #164999 #164999 #119999 #118999 #118999
  6)--must have andriod phone list then top lower price aandriod--
   select phone_name , brands , price , operating_system_type
  from mobile_analysis
  where operating_system_type = "android"
  order by price asc
  limit 5     #4040 #4040 #4499 #4499 #5199
7)--must have ios phone list then top high price ios phones--
 select brands , price , operating_system_type
  from mobile_analysis
  where operating_system_type = "ios"
  order by price desc
  limit 5     	#189900 #189900 #189900 #189900 #179900
  8)--must have ios phone list then top lower price ios phones--
  select phone_name , brands , price , operating_system_type
  from mobile_analysis
  where operating_system_type = "ios"
  order by price asc
  limit 5   #43900 #43900 #43900 #43900 #43900 
  9) write a query which phone support 5g and also top 5 phones with 5g support--
  select * from mobile_analysis where 5g_availability = "yes" order by price desc limit 5 
  10)--total price of all mobile is to be found with brand name--
  select brands , sum(price) 
  from mobile_analysis
  group by brands



 

 

