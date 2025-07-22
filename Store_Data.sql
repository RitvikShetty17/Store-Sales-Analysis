SELECT * FROM store_data;

SELECT STATE,COUNT(DISTINCT Customer_Name) AS Customer_count FROM store_data GROUP BY STATE;

-- 1. TOTAL SALES & PROFIT

SELECT ROUND(sum(Sales),2) AS Total_Sales, ROUND(sum(Profit),2) AS Total_Profit From store_data;

-- 2. SALES BY STATES

SELECT State, ROUND(sum(Sales),2) AS Total_Sales From store_data GROUP BY State ORDER BY Total_sales DESC;

-- 3. TOP 5 CUSTOMERS BASED ON SALES

SELECT Customer_Name,ROUND(sum(Sales),2) AS Total_Sales FROM store_data GROUP BY Customer_Name ORDER BY Total_sales DESC LIMIT 5;

-- 4. TOP 10 SELLING PRODUCTS BASED ON SUB-CATEGORY

SELECT DISTINCT SUB_CATEGORY,ROUND(sum(Sales),2) AS Total_Sales FROM store_data GROUP BY SUB_CATEGORY ORDER BY Total_sales DESC LIMIT 10;

-- 5. YEARLY SALES TRENDS

SELECT 
    YEAR(`Order_Date`) AS Year,
    ROUND(SUM(Sales),2) AS yearly_sales
FROM store_data
GROUP BY Year
ORDER BY Year;

-- 6. REPEAT VS NEW CUSTOMERS

WITH Customer_Orders AS (
	SELECT Customer_Name, Customer_ID, COUNT(DISTINCT(Order_ID)) AS Order_Count
    FROM store_data
    GROUP BY Customer_Name
)
SELECT
	CASE 
		WHEN Order_Count > 1 THEN 'Old Customers'
        ELSE 'New Customers' 
	END AS Customer_type,
    COUNT(*) as Customer_count
FROM Customer_Orders
GROUP BY Customer_type;

-- 7. DISCOUNT PROFIT ANALYSIS

SELECT 
  Discount_rate,
  ROUND((Total_Sales / Overall_Sales) * 100, 2) AS Sales_percentage,
  ROUND((Total_Profit / Overall_Profit) * 100, 2) AS Profit_percentage
FROM (
	SELECT 
		CASE
			WHEN Discount = 0 THEN 'No Discount'
            WHEN Discount BETWEEN 0.01 AND 0.1 THEN 'Very Low (0-10%)'
			WHEN Discount BETWEEN 0.1 AND 0.3 THEN 'LOW(0-30%)'
			WHEN Discount BETWEEN 0.3 AND 0.6 THEN 'Medium(30-60%)'
			WHEN Discount > 0.6 THEN 'HIGH(>60%)'
		END AS Discount_rate,
		ROUND(SUM(Profit),2) AS Total_Profit,
		Round(Sum(Sales),2) AS Total_Sales,
	    (SELECT SUM(Sales) FROM store_data) AS Overall_Sales,
        (SELECT SUM(Profit) FROM store_data) AS Overall_Profit
FROM store_data
GROUP BY Discount_rate
) AS rate_summary
ORDER BY Profit_percentage DESC;

-- 8. BEST CATEGORY PER REGION

WITH category_region_sales AS (
	SELECT Category, Region, ROUND(SUM(Sales),2) AS Total_sales
	FROM store_data
	GROUP BY Category,Region
), max_sales_region AS (
	SELECT Region, ROUND(MAX(Total_sales),2) AS Max_sales
    FROM category_region_sales
    GROUP BY Region
)
SELECT c.Category, c.Region, c.Total_sales 
FROM category_region_sales AS c
JOIN max_sales_region AS m
	ON c.Region = m.Region AND c.Total_sales = m.Max_sales;
    
-- 9. PROFIT BY STATES

SELECT State, ROUND(sum(Profit),2) AS Total_Profit From store_data GROUP BY State ORDER BY Total_Profit DESC;

-- 10. SHIPPING MODE PROFITABILITY

SELECT Ship_Mode,ROUND(AVG(Profit),2) AS Avg_Profit,
  CASE 
    WHEN AVG(Profit) > 30 THEN 'High Profitability'
    WHEN AVG(Profit) BETWEEN 5 AND 30 THEN 'Medium Profitability'
    ELSE 'Low Profitability'
  END AS Profitability_tier
FROM store_data
GROUP BY Ship_Mode
ORDER BY Avg_Profit DESC;
