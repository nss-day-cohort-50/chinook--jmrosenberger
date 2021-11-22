SELECT BillingCountry AS Country, SUM(Total) AS Total_Sales
FROM Invoice
GROUP BY Country;
