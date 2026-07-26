#Renaming columns to make them easier to work with/standardize them

ALTER TABLE cancer_stats
RENAME COLUMN `Leading Cancer Sites` TO `leading_cancer_sites`,
RENAME COLUMN `Age-Adjusted Rate` to `age_adjusted_rate`,
RENAME COLUMN `States` TO `state`,
RENAME COLUMN `Count` TO `count`,
RENAME COLUMN `Population` TO `population`
;
