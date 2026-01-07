CREATE TABLE titanic_cleaned (
    PassengerId INT,
    Pclass INT,
    Last_name VARCHAR(100),
    Title VARCHAR(20),
    First_Name VARCHAR(100),
    Sex VARCHAR(10),
    Age DECIMAL(5,2),
    SibSp INT,
    Parch INT,
    Ticket VARCHAR(50),
    Fare DECIMAL(8,2),
    Cabin VARCHAR(20),
    Embarked CHAR(1)
);

copy titanic_cleaned (
    Pclass,
    Last_name,
    Title,
    First_Name,
    Sex,
    Age,
    SibSp,
    Parch,
    Ticket,
    Fare,
    Cabin,
    Embarked
)
FROM 'C:/Users/ADMIN/Desktop/TITANIC_cleaned.csv'
DELIMITER ','
CSV HEADER
QUOTE '"'
ESCAPE '"';

