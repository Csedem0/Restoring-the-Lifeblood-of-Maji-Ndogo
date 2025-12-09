
-- To use the Database
USE md_water_services ;
-- Disable safe update mode (allows UPDATE/DELETE without a key)
SET SQL_SAFE_UPDATES = 0;
-- Show all the datatypes of the column
DESCRIBE md_water_services.employee;
-- To show all the tables in the database
SHOW TABLES;
-- Using Select *
SELECT * FROM md_water_services.location LIMIT 5;
SELECT * FROM md_water_services.visits LIMIT 5;
SELECT * FROM md_water_services.water_source LIMIT 5;
SELECT * FROM md_water_services.water_quality LIMIT 5;
SELECT * FROM md_water_services.data_dictionary;

-- SQL queries to find all the unique type of water sources
SELECT DISTINCT type_of_water_source FROM md_water_services.water_source;
-- retrieves all records from this table where the time_in_queue is more than 500
SELECT * FROM md_water_services.visits WHERE time_in_queue >= 500;

-- Query to find records where the subject_quality_score is 10 -- only looking for home taps -- and where the source was visited a second time.
SELECT * FROM md_water_services.water_quality WHERE subjective_quality_score =10 AND visit_count =2;

-- Table with contamination/pollution data for all of the well sources
SELECT * FROM md_water_services.well_pollution LIMIT 5;

-- Query that checks if the results is Clean but the biological column is > 0.01.
SELECT * FROM md_water_services.well_pollution WHERE results = 'Clean' AND biological > 0.01;

-- Search for the word Clean with additional characters after it. As this is what separates incorrect descriptions from the records that should have "Clean".
SELECT * FROM md_water_services.well_pollution WHERE results = 'Clean' AND biological > 0.01 AND description  LIKE 'Clean%';

/* Looking at the results we can see two different descriptions that we need to fix:
1. All records that mistakenly have Clean Bacteria: E. coli should updated to Bacteria: E. coli
2. All records that mistakenly have Clean Bacteria: Giardia Lamblia should updated to Bacteria: Giardia Lamblia
The second issue we need to fix is in our results column. We need to update the results column from Clean to Contaminated: Biological where the biological column has a value greater than 0.01.
*/
/*−− Case 1a: Update descriptions that mistakenly mention
`Clean Bacteria: E. coli` to `Bacteria: E. coli`*/
UPDATE 
	md_water_services.well_pollution 
SET 
	description ='Bacteria: E. coli'
WHERE 
	description ='Clean Bacteria: E. coli';

/*−− Case 1b: Update the descriptions that mistakenly mention
`Clean Bacteria: Giardia Lamblia` to `Bacteria: Giardia Lamblia*/
UPDATE 
	md_water_services.well_pollution 
SET 
	description ='Giardia Lamblia'
WHERE 
	description ='Clean Bacteria: Giardia Lamblia';
    
/*−− Case 2: Update the `result` to `Contaminated: Biological` where
`biological` is greater than 0.01 plus current results is `Clean`*/
UPDATE
	md_water_services.well_pollution
SET
	results = 'Contaminated: Biological'
WHERE
	biological > 0.01 AND results = 'Clean';

