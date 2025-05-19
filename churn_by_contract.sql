-- Sözleşme türüne göre churn oranı (%)
SELECT contract_type,
       COUNT(*) AS total_customers,
       SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY contract_type
ORDER BY churn_rate_pct DESC;
