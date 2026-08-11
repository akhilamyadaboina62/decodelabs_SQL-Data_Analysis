SELECT sub_category, SUM(sales) AS total_sales
FROM sales_data
GROUP BY sub_category
ORDER BY total_sales DESC;
SELECT
    sub_category,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY sub_category
ORDER BY total_profit DESC;
SELECT
    region,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;
SELECT
    region,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY region
ORDER BY total_profit DESC;
SELECT
    segment,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY segment
ORDER BY total_sales DESC;
SELECT
    segment,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY segment
ORDER BY total_profit DESC;
SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT
    product_name,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;
SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;
SELECT
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    SUM(quantity) AS total_quantity,
    ROUND(AVG(discount), 2) AS average_discount
FROM sales_data;
