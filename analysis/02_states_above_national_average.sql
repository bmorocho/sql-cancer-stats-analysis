#Q2: Which states have an age adjusted rate above the national average for each cancer type?

SELECT state, cs.leading_cancer_sites, cs.age_adjusted_rate, avg_age_adjusted_rate
FROM (
	SELECT leading_cancer_sites, AVG(age_adjusted_rate) AS avg_age_adjusted_rate
	FROM cancer_stats
	GROUP BY leading_cancer_sites
	) AS avg
JOIN cancer_stats cs
	ON cs.leading_cancer_sites = avg.leading_cancer_sites
WHERE cs.age_adjusted_rate > avg.avg_age_adjusted_rate
;
