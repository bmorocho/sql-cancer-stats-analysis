#Q6: Use DENSE_RANK() to rank states by total cancer cases within each cancer type

SELECT leading_cancer_sites, state, count,
	DENSE_RANK() OVER(PARTITION BY leading_cancer_sites ORDER BY count DESC) as rank_row
FROM cancer_stats
;
