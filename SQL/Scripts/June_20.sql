CREATE TABLE customer_db
(
    id serial PRIMARY KEY,
    full_name character varying,
    work_email character varying,
    gender varchar(10)
);

INSERT INTO customer_db(
full_name, work_email, gender)
VALUES
('John','john@data.com','Male'),
('Kelly','kelly@xyz.com','Fale'),
('William','bill@abc.com','Male')

select * from customer_db


CREATE TABLE customer_db
(
    id serial PRIMARY KEY,
    full_name character varying,
    work_email character varying,
    gender varchar(10)
);


CREATE TABLE customer_address
(
    id serial PRIMARY KEY,
    full_name character varying,
    address character varying,
    city varchar(20)
);

INSERT INTO customer_address(
full_name, address, city)
VALUES
('John','New York','Manhattan'),
('Kelly','New York','Queens'),
('William','DC','DC'),
('Sarah','New Jersey','Bergen')

select * from customer_address

select * from customer_db
left outer join customer_address
on customer_db.full_name = customer_address.full_name

select full_name from customer_address
union
select full_name from customer_db