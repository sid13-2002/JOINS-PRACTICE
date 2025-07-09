-- Task1
use art_studio_data;
-- INNER JOIN — Customers Who Placed Orders
SELECT 
    c.customer_id,
    c.name,
    c.art_style,
    o.item_ordered,
    o.quantity,
    o.price_per_unit
FROM customers c
INNER JOIN art_orders o
ON c.customer_id = o.customer_id;

-- LEFT JOIN — All Customers, With or Without Orders
SELECT 
    c.customer_id,
    c.name,
    c.art_style,
    o.item_ordered,
    o.quantity,
    o.price_per_unit
FROM customers c
LEFT JOIN art_orders o
ON c.customer_id = o.customer_id;

-- RIGHT JOIN — All Orders, With or Without Matching Customers
SELECT 
    c.customer_id,
    c.name,
    c.art_style,
    o.item_ordered,
    o.quantity,
    o.price_per_unit
FROM customers c
RIGHT JOIN art_orders o
ON c.customer_id = o.customer_id;

-- FULL OUTER JOIN (Simulated using UNION)
SELECT 
    c.customer_id,
    c.name,
    c.art_style,
    o.item_ordered,
    o.quantity,
    o.price_per_unit
FROM customers c
LEFT JOIN art_orders o ON c.customer_id = o.customer_id
UNION
SELECT 
    c.customer_id,
    c.name,
    c.art_style,
    o.item_ordered,
    o.quantity,
    o.price_per_unit
FROM customers c
RIGHT JOIN art_orders o ON c.customer_id = o.customer_id;

SELECT * 
FROM customers c
LEFT JOIN art_orders o
ON c.customer_id = O.customer_id
UNION
SELECT * 
FROM customers c
RIGHT JOIN art_orders o
ON c.customer_id = O.customer_id;