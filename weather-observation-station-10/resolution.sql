SELECT DISTINCT CITY
    FROM STATION
    WHERE SUBSTRING(CITY,LENGTH(CITY), LENGTH(CITY)) NOT IN ('A','E','I','O','U');