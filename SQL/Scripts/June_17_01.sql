select * from language

select * from film limit 10 

select distinct(language_id) from 


select * from film where language_id in (1,2,3,4,5,6,,7,8,9)

select language_id 
from language


select * 
from film 
where language_id 
in (select language_id from language)


select * from film 

-- give me all the films which have rental rate > avg rental rate

select round(avg(rental_rate),2) from film

select * from film where rental_rate>2.98

select title, release_year, language_id from film where rental_rate> (select round(avg(rental_rate),2) from film)


select actor_id, count(*) as count from film_actor 
where actor_id in (select actor_id from actor)
group by actor_id
order by count desc

select * from actor limit 10



--list all the movies where rental rate is > min

select min(rental_rate) from film

select * from film where rental_rate > (select min(rental_rate) from film)





