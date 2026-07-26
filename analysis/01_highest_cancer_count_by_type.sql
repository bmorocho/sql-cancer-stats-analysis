#Q1: Which cancer type has the highest total case count across all states and what is the total?

SELECT leading_cancer_sites, SUM(count) AS sum_count
FROM cancer_stats
GROUP BY leading_cancer_sites
ORDER BY sum_count DESC
LIMIT 1
;
