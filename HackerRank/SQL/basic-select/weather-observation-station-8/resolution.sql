SELECT DISTINCT CITY
    FROM STATION
    WHERE SUBSTRING(CITY, 1, 1) IN ('A','E','I','O','U') 
    AND 
    SUBSTRING(CITY, LENGTH(CITY), LENGTH(CITY)) IN ('A','E','I','O','U'); 
    