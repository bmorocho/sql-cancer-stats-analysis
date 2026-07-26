#Q4: Find the top 3 states with the highest age adjusted rate per cancer type using ROW_NUMBER()

SELECT *
FROM (
	SELECT leading_cancer_sites, state, age_adjusted_rate,
		ROW_NUMBER() OVER(PARTITION BY leading_cancer_sites ORDER BY age_adjusted_rate DESC) as row_num
	FROM cancer_stats
	) AS rank_table
WHERE row_num <= 3 
;
