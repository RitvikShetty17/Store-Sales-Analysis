
# Superstore Sales Analysis Project

Sales data analysis project focused on uncovering key insights from a retail sales dataset using SQL and Power BI. This project aims to help business stakeholders understand sales performance, customer behavior, product profitability, and areas for strategic improvements.

---

## Project Description – Superstore Sales Analysis

**Overview:**

The Superstore Sales Analysis project is a comprehensive business intelligence case study that focuses on uncovering trends, patterns, and insights from a retail sales dataset. This project simulates a real-world retail analytics scenario where the goal is to support strategic decision-making using data.

Using a combination of SQL and Power BI, the analysis covers various dimensions including sales, profit, customer behavior, discount effectiveness, and regional performance.

---

## Project Objectives

- Analyze sales and profitability metrics across various segments.
- Identify high-performing products, regions, and customers.
- Evaluate discounting strategies and their impact on profit.
- Understand customer purchasing patterns (new vs. returning).
- Provide actionable insights to help reduce customer churn and boost revenue.

---

## Steps Taken:

**Data Extraction and Preparation:**

A retail dataset was loaded into a MySQL environment using the provided .sql script.

Performed cleaning with excel and exploratory queries in MySQL to understand the schema and data types.

Verified data consistency, duplicate orders, and handled anomalies like NULL values or edge cases.

**Data Analysis with SQL:**

Wrote over 10+ structured queries to answer targeted business questions.

Used advanced SQL concepts like:

CTEs for repeat vs. new customer classification

CASE statements for discount banding

Aggregation and window functions

**Topics covered include:**

Top performing states, products, and customers

Sales and profit distribution

Discount vs. profitability analysis

Shipping mode profitability

Regional category performance

**Visualization with Power BI:**

Imported SQL outputs and built an interactive dashboard using Power BI.

Created dynamic visuals including:

Bar charts for top customers/products

Line graphs for year-wise trends

Heatmaps for state-wise profitability

Donut charts and filters for discount tiers, regions, and customer type

Added slicers for user-driven exploration across multiple dimensions.

---

## Tools & Technologies Used

| Tool        | Purpose                                 |
|-------------|------------------------------------------|
| **Excel**   | Data Cleaning                            |
| **SQL**     | Data querying and business logic         |
| **Power BI**| Data visualization and dashboarding      |
| **.pbix**   | Power BI project file (dashboard layout) |
| **.sql**    | SQL scripts for all business analysis    |

---

## Business Questions Solved

1. **Total Sales & Profit Overview**
   - Measured the overall financial performance of the store.

2. **Sales by State**
   - Ranked states by sales volume to identify top markets.

3. **Top 5 Customers**
   - Identified key customers driving the highest revenue.

4. **Top 10 Sub-Categories**
   - Found the best-selling product segments.

5. **Year-wise Sales Trends**
   - Tracked the growth or decline in annual sales.

6. **Repeat vs. New Customers**
   - Segmented customers based on order frequency to measure retention.

7. **Discount Impact on Profitability**
   - Evaluated how different discount tiers affect revenue and profit.

8. **Best Category per Region**
   - Analyzed which product category performs best in each region.

9. **Profit by State**
   - Compared profitability across all states.

10. **Shipping Mode Profitability**
    - Identified which shipping modes lead to better profits.

---

## Key Insights

- California, New York, and Texas are the top three states in terms of sales and profit.
- Chairs and Phones dominate sub-category sales.
- Customers with repeat orders form a significant share of total orders, indicating potential for loyalty-based strategies.
- Higher discounts generally reduce profitability, especially discounts over 30%.
- Standard Class shipping has the widest usage, but First Class provides better average profitability.
- Regional performance varies by product category, suggesting the need for location-specific strategies.

---

## Improvements & Recommendations

- **Loyalty Program:** Focus on retaining high-value customers using discounts or reward points.
- **Targeted Discounts:** Offer low to medium-tier discounts selectively to avoid hurting profit margins.
- **Optimize Shipping:** Shift more customers toward profitable shipping modes.
- **Inventory Planning:** Prioritize top-selling sub-categories like Chairs, Phones, and Storage.

---

## Project Files

- `Store_Data.sql` — Raw SQL queries used for analysis.
- `Superstore_sales.pbix` — Power BI Dashboard visualizing all key metrics and trends.

---

## Conclusion

This Superstore Sales Analysis project demonstrates the power of combining SQL for robust data analysis and Power BI for interactive visualizations. By diving into customer behavior, sales patterns, and profitability drivers, we derived actionable insights that can help guide strategic decisions in marketing, inventory management, and customer retention.


The findings highlight the importance of customer segmentation, discount optimization, and regional strategies to maximize profit. With a data-driven approach, businesses can significantly improve their decision-making capabilities and overall performance.

