-- Join the film to the film_actor table.

select * from film limit 10
select * from film_actor limit 10

select * from film 
join film_actor on film.film_id = film_actor.film_id
limit 10 


--2.	Join the actor table to the film_actor table
select  * from actor
join film_actor on actor.actor_id = film_actor.actor_id


--3.	Try to join the actor, film_actor, and film table together (3 joins!)

select *  from actor
join film_actor on actor.actor_id = film_actor.actor_id
join film on film.film_id = film_actor.film_id



--Question: List the top 10 customers who had the longest rental duration.
select customer.first_name, customer.last_name, rental.rental_date, 
cast(extract(day from rental_date) as char(2)) ||'-' || cast(extract(month from rental_date) as char(2)) as rental_day,
extract(day from return_date) as Return_day, (return_date-rental_date) as rental_duration from rental 
join customer on rental.customer_id=customer.customer_id
where rental.return_date-rental.rental_date is not null
order by rental_duration desc
limit 10


select * from rental limit 10 

select extract(day from rental_date), extract(month from rental_date)  from rental limit 10 

select cast(extract(day from rental_date) as char(2)) || ' Day of the moonth' as rental_day   from rental limit 10 

select cast(extract(day from rental_date) as char(2)) ||'-' || cast(extract(month from rental_date) as char(2)) as rental_day  from rental limit 10 



select * from actor limit 10 

select * from actor 
where actor_id=1

select 'Actor first name is => 	' || first_name as actor_first_name , 
 'Actor last name is => 	' || last_name as actor_last_name
from actor 
where actor_id=1

select * from rental limit 10 

--2005-05-24 22:54:33
--yyyy-mm-dd hh:mm:ss

--mm-dd-yyyy
select rental_date from rental limit 10 

select to_char(rental_date, 'mm/dd/yyyy') from rental limit 10 

select customer.first_name, customer.last_name, to_char(rental_date, 'mm-dd-yyyy') as rental_date, 
cast(extract(day from rental_date) as char(2)) ||'-' || cast(extract(month from rental_date) as char(2)) as rental_day,
extract(day from return_date) as Return_day, (return_date-rental_date) as rental_duration from rental 
join customer on rental.customer_id=customer.customer_id
where rental.return_date-rental.rental_date is not null
order by rental_duration desc
limit 10


-- group by example and how to use having clause
select * from customer limit 10 
select count(customer_id) from customer
select distinct(store_id) from customer
select distinct(customer_id) from payment


select * from payment limit 10 
select count(*) from payment limit 10 --14,596

--list all distinct customers and their number of transactions
select distinct(customer_id) from payment -- 599 distinct customers
-- 599 distinct customers and their total number of transactions
select customer_id, count(*) as total_count from payment
group by customer_id
order by total_count desc

--list all distinct customers and their number of transactions > 20 
select customer_id, count(*) as total_count from payment
--where customer_id between 148 and 175
group by customer_id
having count(*) > 20
order by total_count 

--subquery
--list all distinct customers and their number of transactions > 20 
select customer_id, count(*) as total_count from payment
--plug in subquery into main query as a condition
where staff_id in (select manager_staff_id from store)
group by customer_id
having count(*) > 20
order by total_count 

select * from store

select staff_id, (select extract(day from date))  from staff




