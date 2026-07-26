#Checking for duplicate data

SELECT *
FROM (
	SELECT leading_cancer_sites, state,
		ROW_NUMBER() OVER(PARTITION BY state, leading_cancer_sites ORDER BY state) AS row_num
	FROM cancer_stats
    ) AS row_table
WHERE row_num > 1
;
