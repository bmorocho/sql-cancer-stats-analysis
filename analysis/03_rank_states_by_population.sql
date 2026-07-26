#Q3: Rank states by population size within each cancer type

SELECT leading_cancer_sites, state, population,
	RANK() OVER(PARTITION BY leading_cancer_sites ORDER BY population DESC) AS rank_row
FROM cancer_stats
;
