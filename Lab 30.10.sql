/*1. Display all available tables in the Sakila database.*/
show tables;

/*2. Retrieve all the data from the tables `actor`, `film` and `customer`.*/
select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;

/*3. Retrieve the following columns from their respective tables:*/
/*- 3.1 Titles of all films from the `film` table*/
select distinct title from sakila.film;

/*- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table*/
select distinct name from sakila.language;
    
/*- 3.3 List of first names of all employees from the `staff` table*/
select distinct first_name from sakila.staff;

/*4. Retrieve unique release years.*/
select distinct release_year from sakila.film;

/*5. Counting records for database insights:*/
/*- 5.1 Determine the number of stores that the company has.*/
select count(*) address from sakila.address;

/*- 5.2 Determine the number of employees that the company has.*/
select distinct first_name from sakila.staff;

/*- 5.3 Determine how many films are available for rent and how many have been rented.*/
select * from sakila.rental;

/*- 5.4 Determine the number of distinct last names of the actors in the database.*/
select count(*) last_name from sakila.actor;

/*6. Retrieve the 10 longest films.*/
select length from sakila.film order by length desc limit 10;

/*7.  Use filtering techniques in order to:*/
/*- 7.1 Retrieve all actors with the first name "SCARLETT".*/
select distinct last_name from sakila.actor; 
	
/*BONUS:*/
/*- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.*/
/*-*Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)*/
select title, length > 100 from sakila.film where title like "%Armageddon%";

/*- 7.3 Determine the number of films that include Behind the Scenes content*/
select * from sakila.film;
select count(title) from sakila.film where special_features like "%Behind the Scenes%";
