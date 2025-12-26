/* =====================================================
   Product Analysis: Percent of Total Sales by Category
   ===================================================== */
SELECT
    pizza_category,
    CAST(
        SUM(total_price) * 100.0 /
        (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10,2)
    ) AS percent_of_total_sales
FROM pizza_sales
GROUP BY pizza_category
ORDER BY percent_of_total_sales DESC;


/* =====================================================
   Product Analysis: Top 5 Pizzas by Revenue
   ===================================================== */
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC;
