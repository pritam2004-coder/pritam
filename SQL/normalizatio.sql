-- Normalization --- :
-- normalization is the process of organizing data in arelational databse to reduce redundancy(duplicate data) and improve
-- data integrity(accuracy and consistency)

--  why do need normalization :
-- 1) to remove duplicate date(avoid storuing the same information multi[ale times)
-- 2) to avoide update anomalies(if one value change, it shouldn't required changing it in many place)
-- 3) to avoid insertion anomalies(we should to able to insert new date without extra unnecesary info)
-- 4) to avoid deletion anomalies(deleting onr record shouldn't cause accedental loss of other usefull data)
-- 5) to make queries


-- there are 6 types of normal form
-- 1NF, 2NF, 3NF, 4NF, 5NF, BCNF
-- 1) 1NF (first nomal form):-
-- i) Each colomn contains atomitt valiues(individual value)
-- ii) Each colomn contains values of thr same type 
-- iii) Each row is unique(typicvally ensuare by the primary key)
-- iv) no repating groups of colomns

-- 2) 2NF( second normal form) :-
-- i) should be in 1NF
-- ii) dosent have any partialy dependancy ( a non-key colomn depend only on part of a composite primary key ) 

-- 3) 3NF(third normal form) :-->
-- i) should be in 2NF
-- ii) on transative dependancy ( a non key colomn depends on another key colomn ):-
-- should be in 3NF
-- 3NF allows a functionsl dependancy where the hand side (x)
-- is not a suoer key if y  is a 


-- 4) BCNF(Boyce-codd normal form)(3.5NF)
-- should be in 

-- super key :-
-- candidate key:-

-- Functional dependencty(FD):-
-- in arelational database a functional dependancy is aralashtionshi between two sets of attribuits of a  table.
-- if attribute ( or set of attributes) x determines attributes ( or set of attributs)
-- y we write it as x --> y
-- for every value of x there is exactly one value of y.alter

-- Types of fundamental dependencies:-
-- 1) Trivial FD:
-- if y is a subset of x
-- example rool_no name ) name

-- 2) Non-Travial FD:-
-- if y not subset 


-- SET OPERSTOERS :- 
-- se operators in sql are used combine the result of two or  more select queries into single result
-- Types of set operatoter
-- union, intersection, differntiaattion/minus

create table science_students(s_id int primary key,
s_name varchar(225));
create table arts_students(s_id int primary key,
s_name varchar(225));

insert into science_students values(101, "prit"),(102,"sahil"),(103,"sourabh");
insert into arts_students values(101, "rushi"),(102,"sahil"),(103,"sanket");

select * from science_students;
select * from arts_students;

-- Types of
-- union, intersection, differntiaattion/minus

create database normalization;
use normalization;
drop database normalization;
create table book_order(
order_id int,
customer_name varchar(225),
customer_email varchar(225),
customer_address varchar(225),
customer_phone_number varchar(225),
book_isbn varchar(225),
book_title varchar(225),
book_price varchar(225),
order_date varchar(225),
quantity varchar(225),
total_pride decimal(9,2)
);

insert into book_order(order_id, customer_name, customer_email, customer_address, customer_phone_number, book_isbn, book_title,
book_price, order_date, quantity, total_pride) values
(1, 'Amit', 'amit@gmail.com', 'Delhi', '9876543210',
 '978-0140449136', 'The Odyssey', 499.00, '2025-09-01', 2, 998.00),

(2, 'Priya Mehta', 'priya.mehta@yahoo.com', 'Mumbai, India', '9988776655',
 '978-0062316097', 'Sapiens: A Brief History of Humankind', 799.00, '2025-09-01', 1, 799.00),

(3, 'Rohit Verma', 'rohit.verma@outlook.com', 'Bangalore, India', '9123456780',
 '978-0439139595', 'Harry Potter and the Goblet of Fire', 650.00, '2025-08-28', 3, 1950.00);
 
 select * from book_order;
 

