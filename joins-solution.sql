-- 1. Get all customers and their addresses.
SELECT "customers".first_name, "customers".last_name, "addresses".street, "addresses".city, "addresses".state, "addresses".zip FROM "addresses"
JOIN "customers" ON "addresses".customer_id = "customers".id
;

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT "orders".id, "orders".order_date, "line_items".quantity, "products".description FROM "orders"
JOIN "line_items" ON "line_items".order_id = "orders".id
JOIN "products" ON "line_items".product_id = "products".id;
