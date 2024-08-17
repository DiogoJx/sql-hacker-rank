SELECT 
    CASE 
        WHEN A + B > C AND C + A > B AND B + C > A 
            THEN
                CASE 
                    WHEN A = B AND A = C THEN 'Equilateral'
                    WHEN A = B OR A = C OR B = C THEN 'Isosceles'
                    WHEN A <> B AND A <> C AND B <> C THEN 'Scalene'
                END 
            ELSE 
                'Not A Triangle'
    END
FROM
TRIANGLES  