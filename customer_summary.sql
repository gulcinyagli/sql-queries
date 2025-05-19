-- Gender'e göre toplam müşteri ve ortalama gelir
SELECT gender,
       COUNT(*) AS customer_count,
       ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM customers
GROUP BY gender
ORDER BY avg_monthly_charges DESC;
