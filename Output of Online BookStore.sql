select * from books
select * from customers
select * from orders


--1) Retrieve all books in the "Fiction" genre:
select * from books 
where  Genre = 'Fiction' ;

-- 2) Find books published after the year 1950:
select * from books
where Published_year > 1950 ;

-- 3) List all customers from the Canada:
select * from customers
where country = 'Canada';


-- 4) Show orders placed in November 2023:
select * from orders
where order_date between '2023-11-1'and '2023-11-01';

-- 5) Retrieve the total stock of books available:
select  SUM(stock)as Total_stock
From books;

-- 6) Find the details of the most expensive book:
select * from books
ORDER BY price DESC
Limit 1;


-- 7) Show all customers who ordered more than 1 quantity of a book:
select * from orders
WHERE quantity >1;

-- 8) Retrieve all orders where the total amount exceeds $20:
select * from Orders
WHERE total_amount >20;

-- 9) List all genres available in the Books table:
select DISTINCT genre from books;

-- 10) Find the book with the lowest stock:
select * from books
ORDER BY stock 
Limit 1;

-- 11) Calculate the total revenue generated from all orders:

select SUM (total_amount) as revenue 
FROM orders;


-- 12) Retrieve the total number of books sold for each genre:

SELECT * from Orders;

select b.Genre,SUM(o.Quantity)
FROM Orders o
JOIN Books b ON o.book_id =b.book_id
GROUP BY b.genre

