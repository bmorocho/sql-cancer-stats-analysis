#Checking remaining data for blank cells

SELECT COUNT(*)
FROM cancer_stats
WHERE leading_cancer_sites = '' 
	OR state = '' 
    OR count IS NULL
    OR age_adjusted_rate IS NULL
;
