/* =====================================================
   KPI: Total Revenue
   ===================================================== */
SELECT
    SUM(total_price) AS total_revenue
FROM pizza_sales;


/* =====================================================
   KPI: Average Order Value
   ===================================================== */
SELECT
    SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value
FROM pizza_sales;


/* =====================================================
   KPI: Total Pizzas Sold
   ===================================================== */
SELECT
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales;


/* =====================================================
   KPI: Total Orders
   ===================================================== */
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;


/* =====================================================
   KPI: Average Pizzas Per Order
   ===================================================== */
SELECT
    CAST(
        SUM(quantity) * 1.0 / COUNT(DISTINCT order_id)
        AS DECIMAL(10,2)
    ) AS avg_pizzas_per_order
FROM pizza_sales;
