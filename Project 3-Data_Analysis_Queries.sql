SQL
---PROJECT 3: SQL DATA ANALYSIS

-- 1. BASIC DATA EXPLORATION
SELECT* FROM Orders;
SELECT OrderID,Product,Unit_Price,Quantity,Total_Price FROM Orders;
SELECT COUNT(*) AS Total_Orders
FROM Orders;
SELECT COUNT (DISTINCT CustomerID) AS Unique_Customer
FROM Orders;

-- 2. DATA FILTERING
SELECT* 
FROM Orders
WHERE Product = 'Laptop';
SELECT*
FROM Orders
WHERE Total_Price > 2000;
SELECT*
FROM Orders
WHERE Quantity > 3;


-- 3. SALES ANALYSIS
SELECT SUM (Total_Price) AS Total_Sales
FROM Orders;
SELECT SUM (Quantity) AS Total_Quantity
FROM Orders;
SELECT AVG (Total_Price) AS Average_Order_Value
FROM Orders;


-- 4. PAYMENT METHOD ANALYSIS
SELECT Payment_Method,
     count(*) AS Number_of_Orders
FROM Orders
GROUP BY Payment_Method
ORDER BY Number_of_Orders DESC;


-- 5. ORDER STATUS ANALYSIS
SELECT
    Order_Status,
    COUNT(*) AS Number_of_Orders
FROM Orders
GROUP BY Order_Status
ORDER BY Number_of_Orders DESC;


-- 6. COUPON CODE ANALYSIS
SELECT
    Coupon_Code,
    COUNT(*) AS Number_of_Orders
FROM Orders
GROUP BY Coupon_Code
Order BY Number_of_Orders DESC;
