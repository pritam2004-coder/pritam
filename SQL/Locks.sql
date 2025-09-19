-- 10/09/2025
-- Lock :- 
-- a lock is a machanism used to control cocurrenct access to data.
-- Types of Locks
-- 1) shared lock:- multipal transaction can read same data simultaneously, but oje can write until lock is relased
-- we can achive shared lock using(lock in share mode/for share)

-- 2) Exclusive locks(with locks):- only one transaction car read/write the ocke data , other
-- are locked
-- when open person puts an exclusive lock on the table 
-- the other user cant read or write from that table
-- we can achive exclusive lock using (for update)

-- 3) Table locks:- Entire table is locked
-- tale locks have tow tyoes
-- i) read lock.:- read are available from the tabke but write is not posssibal
-- How to unlock a table???
   unlock tables;
-- ii) write lock.:- read and write both are not possibal
   lock table products write;
   select * from products;
   unlock tables;

-- 4) Row locked:- only specific row locked
-- Row locks are a Two types: 
-- i) shared row lock
-- ii) Exclusive row lock

-- 5) Page / gap locks:- MOre fine grained locks used internally by InnoDB 
-- create two custmer should be named Santosh
 
 create user 'prit'@'localhost'identified by 'prit';
 create user 'san'@'localhost'identified by 'san';
 