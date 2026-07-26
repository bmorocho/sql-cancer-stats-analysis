#Removing columns not needed for data analysis

ALTER TABLE cancer_stats
DROP COLUMN `Notes`,
DROP COLUMN `States Code`,
DROP COLUMN `Crude Rate`,
DROP COLUMN `Leading Cancer Sites Code`
;
