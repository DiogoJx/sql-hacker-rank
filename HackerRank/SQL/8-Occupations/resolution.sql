SET @row_number = 0;
SET @doctor_number = 0;
SET @professor_number = 0;
SET @singer_number = 0;
SET @actor_number = 0;

SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT 
        Name, Occupation,
        CASE 
            WHEN Occupation = 'Doctor' THEN @doctor_number := @doctor_number + 1
            WHEN Occupation = 'Professor' THEN @professor_number := @professor_number + 1
            WHEN Occupation = 'Singer' THEN @singer_number := @singer_number + 1
            WHEN Occupation = 'Actor' THEN @actor_number := @actor_number + 1
        END AS RowNum
    FROM Occupations
    ORDER BY Occupation, Name
) AS TempTable
GROUP BY RowNum
ORDER BY RowNum;