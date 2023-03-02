-- find all products
SELECT * FROM bestbuy.products;

-- find all products that cost $1400
SELECT * FROM bestbuy.products
WHERE products.price = 1400.00;

-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products
WHERE p.price= 11.99 or p.price = 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM bestbuy.products
WHERE NOT p.price = 11.99 or p.price=13.99;
-- find all products and sort them by price from greatest to least
SELECT * FROM bestbuy.products
Order by p.price desc;
-- find all employees who don't have a middle initial
SELECT * from bestbuy.products
where MiddleInitial is null;
-- find distinct product prices
select distinct bestbuy.products.price
from bestbuy.products;

-- find all employees whose first name starts with the letter ‘j’
select * from bestbuy.products
where FirstName Like 'J%';
-- find all Macbooks
select * from bestbuy.products
where name = 'macbook';
-- find all products that are on sale
select * from bestbuy.product
where OnSale =1;
-- find the average price of all products
select Avg(products.price) From bestbuy.products;
-- find all Geek Squad employees who don't have a middle initial
select * from bestbuy.employees AS e
where e.MiddleInitial is null and e.title = 'geek squad';
-- find all products from the products table whose stock level is in the range -- 
-- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select * from bestbuy.products 
where stockLevel between 500 and 1200
order by price;
