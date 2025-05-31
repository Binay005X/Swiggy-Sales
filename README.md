# Swiggy-Sales

# Swiggy Sales SQL Case Study

## 📌 Project Overview
This project focuses on analyzing Swiggy's sales data using SQL. The goal was to derive meaningful insights that can guide business decisions. It involved working with multiple tables and executing complex SQL queries, including joins, aggregations, and subqueries.

---

## 🎯 Objectives
- Extract insights on customer behavior and restaurant performance
- Analyze order patterns and city-based metrics
- Identify delivery trends and operational efficiencies
- Solve 13 business-critical queries using SQL

---

## 🗃️ Database Creation
A relational database was created containing the following tables:
- **Customers**
- **Restaurants**
- **Orders**
- **Delivery_Partners**
- **Order_Details**

Each table was populated with sample data to simulate a real-world Swiggy dataset. Foreign keys were defined to maintain relational integrity.

---

## 🧱 Table Creation
SQL `CREATE TABLE` statements were used to define schema with appropriate data types:

```sql
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Restaurants (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    rating FLOAT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    restaurant_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    delivery_partner_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

CREATE TABLE Delivery_Partners (
    partner_id INT PRIMARY KEY,
    name VARCHAR(100)
);
```

# Key Findings

- Customers in Delhi: Only 3 customers reside in Delhi.

- Restaurant Ratings in Mumbai: The average restaurant rating in Mumbai is 3.23.

- Active Customers: 23 customers have placed at least one order.

- Customer Orders: A breakdown of total orders per customer was generated.

- Restaurant Revenue: Calculated total revenue per restaurant.

- Top Restaurants: Identified top 5 restaurants with the highest average ratings.

- Inactive Customers: Filtered customers who never placed an order.

- Orders in Mumbai: Detailed order count by customers in Mumbai.

- Recent Activity: Displayed orders placed in the last 30 days.

- Delivery Performance: Listed delivery partners who completed more than one delivery.

- Frequent Customers: Found customers who placed orders on exactly three different days.

- Top Partner: "Suresh Reddy" worked with the most unique customers.

- Shared City Orders: Found customers in the same city ordering from the same restaurants on different dates.
