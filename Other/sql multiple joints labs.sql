SELECT s.store_id,c.city,co.country  
FROM sakila.store as s 
join sakila.address as a using (address_id)
join sakila.city as c using (city_id)
join sakila.country as co using (country_id) ;