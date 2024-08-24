(
    SELECT 
        CONCAT(NAME, '(', SUBSTRING(Occupation, 1, 1), ')') AS Result
    FROM 
        OCCUPATIONS
)
UNION
(
    SELECT 
        CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') AS Result
    FROM 
        OCCUPATIONS
    GROUP BY 
        Occupation
)
ORDER BY 
    Result;