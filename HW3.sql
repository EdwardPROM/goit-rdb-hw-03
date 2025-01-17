-- 1. Напишіть SQL команду, за допомогою якої можна:
-- 1.1 вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
USE mydb;
SELECT *
FROM products; 
-- 1.2 вибрати тільки стовпчики name, phone з таблиці shippers,
USE mydb;
SELECT name, phone
FROM shippers; 
-- 2. Напишіть SQL команду, за допомогою якої можна знайти середнє, максимальне та мінімальне 
-- значення стовпчика price таблички products, та перевірте правильність її виконання в MySQL Workbench*.*
USE mydb;
SELECT avg(price) as avg,
max(price) as max,
min(price) as min
FROM products;
-- 3. Напишіть SQL команду, за допомогою якої можна обрати унікальні значення колонок category_id та price таблиці products.
-- Оберіть порядок виведення на екран за спаданням значення price та виберіть тільки 10 рядків.
USE mydb;
SELECT DISTINCT
category_id,
price
FROM products
ORDER BY price DESC
LIMIT 10
-- 4. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків), 
-- які знаходиться в цінових межах від 20 до 100, та перевірте правильність її виконання в MySQL Workbench.
USE mydb;
SELECT 
count(id) as product_amount
FROM products
WHERE price >= 20 and price <= 100;
-- 5. Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків) та середню ціну (price) 
-- у кожного постачальника (supplier_id), 
-- та перевірте правильність її виконання в MySQL Workbench.
USE mydb;
SELECT
supplier_id,  
count(id) as product_amount,
avg(price) as avg_price
FROM products
GROUP BY supplier_id;