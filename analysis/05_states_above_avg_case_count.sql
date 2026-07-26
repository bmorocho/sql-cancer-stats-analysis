#Q5: Which states have a case count above the average case count for each cancer type?

SELECT *
FROM(
	SELECT leading_cancer_sites, state, count, 
		AVG(count) OVER(PARTITION BY leading_cancer_sites) as avg_count
	FROM cancer_stats
) as avg_table
WHERE count > avg_count
;
