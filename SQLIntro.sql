-- find all products
SELECT * FROM products;
-- find all products that cost $1400
SELECT * FROM products
WHERE price = 1400.00;
-- find all products that cost $11.99 or $13.99
SELECT * FROM products
WHERE price= 11.99 or price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
WHERE NOT price = 11.99 or price=13.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM products
Order by price desc;
-- find all employees who don't have a middle initial
SELECT * from employees
where middleinitial is null;
-- find distinct product prices
select distinct (price) from products;
-- find all employees whose first name starts with the letter ‘j’
select * from employees
where FirstName Like 'J%';
-- find all Macbooks
select * from products
where name like '%macbook%';
-- find all products that are on sale
select * from products
where OnSale = 1;
-- find the average price of all products
select Avg(price) From products;
-- find all Geek Squad employees who don't have a middle initial
SELECT * from employees
where Title like '%Geek Squad%' AND middleInitial is null;
-- find all products from the products table whose stock level is in the range -- 
-- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from products 
where stockLevel between 500 and 1200
order by price;
