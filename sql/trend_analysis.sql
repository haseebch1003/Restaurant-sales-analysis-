/* =====================================================
   Trend Analysis: Orders by Day of Week
   ===================================================== */
SELECT
    DATENAME(WEEKDAY, order_date) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(WEEKDAY, order_date);


/* =====================================================
   Trend Analysis: Orders by Month
   ===================================================== */
SELECT
    DATENAME(MONTH, order_date) AS order_month,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY total_orders DESC;
