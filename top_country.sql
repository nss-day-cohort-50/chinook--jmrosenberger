SELECT BillingCountry AS Country, SUM(Total) AS Total_Sales
FROM Invoice
GROUP BY BillingCountry
ORDER BY Total DESC
LIMIT 1
