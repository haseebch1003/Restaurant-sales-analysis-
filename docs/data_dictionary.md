# Data Dictionary

This document describes the structure and meaning of each column in the pizza sales dataset used for analysis.

## Table: pizza_sales

| Column Name     | Data Type | Description |
|-----------------|----------|-------------|
| order_id        | Integer  | Unique identifier for each customer order |
| order_date      | Date     | Date on which the order was placed |
| order_time      | Time     | Time at which the order was placed |
| pizza_name      | Text     | Name of the pizza ordered |
| pizza_category  | Text     | Category of pizza such as Classic, Chicken, Supreme, or Veggie |
| pizza_size      | Text     | Size of the pizza such as S, M, L, XL |
| quantity        | Integer  | Number of pizzas ordered for the given pizza name |
| unit_price      | Decimal  | Price of a single pizza unit |
| total_price     | Decimal  | Total price for the pizza line item (quantity multiplied by unit price) |

## Notes and Assumptions

- Each row represents a single pizza line item within an order
- An order may contain multiple rows if multiple pizzas were purchased
- Revenue calculations are based on the total_price column
- Order level metrics use distinct order_id values
