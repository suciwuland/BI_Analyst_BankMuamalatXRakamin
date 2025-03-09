SELECT 
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    (o.Quantity * p.Price) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city,
FROM `poetic-fact-451915-s7.bi_bankmuamalat.orders` o
JOIN `poetic-fact-451915-s7.bi_bankmuamalat.customers` c ON o.CustomerID = c.CustomerID
JOIN `poetic-fact-451915-s7.bi_bankmuamalat.products` p ON o.ProdNumber = p.ProdNumber
JOIN `poetic-fact-451915-s7.bi_bankmuamalat.product_category` pc ON p.Category = pc.CategoryID
ORDER BY o.Date ASC;
