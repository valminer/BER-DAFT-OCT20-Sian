SELECT f.title, count(i.inventory_id) FROM sakila.inventory as i
join sakila.film as f using (film_id)
where title = 'Hunchback Impossible';

select title, length from sakila.film
where length > (select avg(length) from sakila.film);

select first_name, last_name from sakila.actor 
where actor_id in (select actor_id
from sakila.film_actor
where film_id = (
select film_id
from sakila.film
where title = 'ALONE TRIP'
)
);

select title from sakila.film 
where film_id in 
(select film_id from film_category 
where category_id in 
(select category_id from category 
where name = 'Family')); 

select first_name,last_name,email, country from customer as c
join address as a using (address_id)
join city as ci using (city_id)
join country as co using (country_id)
where country = 'Canada'; 

select first_name,last_name,email from customer 
where address_id in 
(select address_id from address 
where city_id in
(select city_id from city 
where country_id = 
(select country_id from country 
where country = 'Canada')));

select title from film where film_id in
(select film_id in film_actor where  