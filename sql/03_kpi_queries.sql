/* ============================
   KPI: Total Revenue
   ============================ */
SELECT SUM(total_price) AS total_revenue
FROM pizza_sales;

/* ============================
   KPI: Average Order Value
   ============================ */
SELECT
    SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value
FROM pizza_sales;
