
-- Count total number of passengers
SELECT COUNT(*) AS total_passengers
FROM titanic_cleaned;

-- Display first 10 records
SELECT *
FROM titanic_cleaned
LIMIT 10;

-- Check for missing values in key columns
SELECT
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS missing_age,
    SUM(CASE WHEN Cabin IS NULL THEN 1 ELSE 0 END) AS missing_cabin,
    SUM(CASE WHEN Embarked IS NULL THEN 1 ELSE 0 END) AS missing_embarked
FROM titanic_cleaned;

--Handle missing Age (replace with average age)
UPDATE titanic_cleaned
SET Age = (
    SELECT ROUND(AVG(Age), 2)
    FROM titanic_cleaned
    WHERE Age IS NOT NULL
)
WHERE Age IS NULL;


--Handle missing Cabin
UPDATE titanic_cleaned
SET Cabin = 'Unknown'
WHERE Cabin IS NULL;

select * from titanic_cleaned limit 10;
