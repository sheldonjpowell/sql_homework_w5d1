--CONDITIONAL STATEMENTS
--select *
--from film
--where rating = 'NC-17'
--where rating = 'NC-17'

--select *
--from film
--where title LIKE 'Chamber Italian'

--LIKE (_) (%)
-- % - WILDCARD OPERATOR (look for ANY matching text)
-- _ - UNDERSCORE OPERATOR - look for one of ANY single character

--select *
--from film
--where title LIKE 'Chamber%'

--select *
--from film
--where title LIKE 'C%'

--select *
--from film
--where title LIKE 'C% B%'

--select *
--from film
--where title LIKE 'C% %h'

--select *
--from film
--where title LIKE 'C% ____h'

--select *
--from film
--where title LIKE 'C___n _l%h'

--omit this
--select *
--from film
--where title LIKE 'C%t' and  like 'D%b'

--select *
--from payment
--where amount between 2.99 and 4.99

--select *
--from payment
--where amount = 2.99 or amount = 4.99

--select *
--from payment
--where customer_id = 415 or amount = 2.99

--select *
--from payment
--where customer_id = 415 and amount = 2.99

--select *
--from payment
--where not staff_id = 2

--select *
--from payment
--order by amount
--limit 10

--select customer_id, avg(amount) as avg_amount
--from payment
--group by customer_id
--order by avg_amount desc
--limit 5

--SELECT *
--FROM film
--
--select film_id, title, release_year
--from film

-- Which districts are represented in our database? What districts do our customer come from?
--select distinct district 
--from address

--select customer_id , CONCAT(first_name, ' ', last_name, ' ', '(', email, ')') as full_info
--from customer

--select customer_id, AVG(amount) as average_transaction_amount
--from payment
--group by customer_id


-- Homework

--Q1

select *
from actor 
where last_name like 'Wahlberg' 

--a. 2


--Q2
--select *
--from payment
--count amount between 3.99 and 5.99
--
select count(amount)
from payment  
where amount between 3.99 and 5.99

-- a. 5,563




--Q3
select film_id, count(film_id) as film_count
from inventory 
group by film_id 
order by film_count desc

--Q4

select *
from customer 
where last_name = 'Williams'

--a. 1


--Q5
 
select *
from rental 

--Q6
select count(distinct district)
from address

--a. 378

--Q7

select film_id, count(actor_id) as actor
from film_actor 
group by film_id 
order by actor desc

--a. 508/ lambs Cincinatti

--Q8

select count(*)
from customer
where store_id = 1 and last_name LIKE '%es'

--a. 13

--Q9

--select *
--from payment
--where customer_id between 380 and 430
----group by customer_id 
--having count(payment_id) > 250

--select distinct amount, count(amount) as total
--from payment
--where customer_id between 380 and 430
--group by amount
--having count(amount) > 250

select amount
from payment
where customer_id between 380 and 430
group by amount 
having count(payment_id) > 250

--a. 3


--Q10

select rating, count(rating)
from film 
group by rating

--a. PG-13/223














