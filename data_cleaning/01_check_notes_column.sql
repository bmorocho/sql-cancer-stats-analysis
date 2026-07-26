#`Notes` appears empty, double checking if there is data

SELECT COUNT(*) 
FROM cancer_stats 
WHERE notes IS NULL OR notes = ''
;
