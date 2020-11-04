# lab 1 on SQL joints

SELECT c.category_id,c.name,count(f.film_id) as count FROM sakila.category as c
left join sakila.film_category as f on c.category_id=f.category_id
group by category_id;

SELECT c.category_id,c.name,count(f.film_id) as count FROM sakila.category as c
left join sakila.film_category as f on c.category_id=f.category_id
group by category_id;

select s.first_name, sum(p.amount)as MoneyMoney 
from sakila.staff as s 
left join sakila.payment as p 
on s.staff_id=p.staff_id
where year(payment_date)= 2005 and month(payment_date) = 08
group by s.first_name;

SELECT fa.film_id, f.title, count(fa.actor_id) as count 
FROM sakila.film_actor as fa 
left join sakila.film as f 
on fa.film_id=f.film_id 
group by f.title 
order by count desc;

SELECT c.first_name, c.last_name, sum(p.amount) as amount 
FROM sakila.customer as c 
left join sakila.payment as p 
on c.customer_id = p.customer_id 
group by c.customer_id 
order by c.last_name asc;

# lab 2 on SQL joints
SELECT s.store_id,c.city,co.country  
FROM sakila.store as s 
join sakila.address as a using (address_id)
join sakila.city as c using (city_id)
join sakila.country as co using (country_id) ;

SELECT s.store_id,sum(p.amount) 
FROM sakila.store as s 
join sakila.staff as st using (store_id)
join sakila.payment as p using (staff_id)
group by store_id;

SELECT c.name,avg(f.length) as average
FROM sakila.film as f 
join sakila.film_category as fc using (film_id)
join sakila.category as c using (category_id)
group by c.name
order by average desc;









