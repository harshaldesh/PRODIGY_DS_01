
/*Exploratory Data Analysis (EDA)*/

--- Overall passenger distribution by class
SELECT
    Pclass,
    COUNT(*) AS passenger_count
FROM titanic_cleaned
GROUP BY Pclass
ORDER BY Pclass;


--Gender distribution
select sex,count(*) as count from titanic_cleaned group by sex;

--Average age by passenger class
SELECT
    Pclass,
    ROUND(AVG(Age), 2) AS avg_age
FROM titanic_cleaned
GROUP BY Pclass
ORDER BY Pclass;


--Average fare by class
SELECT
    Pclass,
    ROUND(AVG(Fare), 2) AS avg_fare
FROM titanic_cleaned
GROUP BY Pclass
ORDER BY Pclass;

--Passenger distribution by embarkation port
SELECT
    Embarked,
    COUNT(*) AS passenger_count
FROM titanic_cleaned
GROUP BY Embarked;

--Family size analysis
SELECT
    (SibSp + Parch) AS family_size,
    COUNT(*) AS passenger_count
FROM titanic_cleaned
GROUP BY family_size
ORDER BY family_size;

--Age distribution
ALTER TABLE titanic_cleaned
ADD COLUMN age_group VARCHAR(20);

UPDATE titanic_cleaned
SET age_group = CASE
    WHEN Age < 18 THEN 'Child'
    WHEN Age BETWEEN 18 AND 35 THEN 'Young Adult'
    WHEN Age BETWEEN 36 AND 55 THEN 'Adult'
    ELSE 'Senior'
END;

SELECT
    age_group,
    COUNT(*) AS passenger_count
FROM titanic_cleaned
GROUP BY age_group;
