# 📝 SQL Query Task: Occupations

## Overview

This task involves generating two result sets from the `OCCUPATIONS` table:

1. **Alphabetically Ordered List of Names with Occupation Initials**:  
   Generate a list of all names in the `OCCUPATIONS` table, ordered alphabetically, followed by the first letter of each profession enclosed in parentheses.  
   Example: `AnActorName(A)`, `ADoctorName(D)`, `AProfessorName(P)`, `ASingerName(S)`.

2. **Count of Each Occupation**:  
   Query the number of occurrences of each occupation in `OCCUPATIONS`. Sort the results in ascending order by occupation and format them as follows:  
   Example: `There are a total of [occupation_count] [occupation]s.`

---

## 🗂 Input Format

The `OCCUPATIONS` table contains the following columns:

| Column     | Type   |
|------------|--------|
| `Name`     | String |
| `Occupation` | String |

### Occupations:
- The `Occupation` column will only contain one of the following values: `Doctor`, `Professor`, `Singer`, or `Actor`.

### Example Input:

The `OCCUPATIONS` table contains the following records:

| Name     | Occupation |
|----------|------------|
| Samantha | Doctor     |
| Julia    | Actor      |
| Maria    | Actor      |
| Meera    | Singer     |
| Ashley   | Professor  |

---

## 🛠 Task 1: Alphabetically Ordered List of Names with Initials

**Objective**:  
Generate an alphabetically ordered list of all names in `OCCUPATIONS`, followed by the first letter of each profession in parentheses.

### Expected Output:

```sql
Julia(A)
Maria(A)
Ashley(P)
Meera(S)
Samantha(D)
```

---

## 🛠 Task 2: Count of Each Occupation

**Objective**:  
Query the number of occurrences of each occupation in `OCCUPATIONS`. Sort the occupations in ascending order and output them in the following format:

```
There are a total of [occupation_count] [occupation]s.
```

### Expected Output:

```sql
There are a total of 2 actors.
There are a total of 1 doctor.
There are a total of 1 professors.
There are a total of 1 singers.
```

---

## 🔍 Example SQL Queries

### Query 1: Alphabetically Ordered List

```sql
SELECT 
    CONCAT(NAME, '(', SUBSTRING(Occupation, 1, 1), ')') AS NameWithOccupationInitial
FROM 
    OCCUPATIONS
ORDER BY 
    NAME;
```

### Query 2: Count of Each Occupation

```sql
SELECT 
    CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.') AS OccupationCount
FROM 
    OCCUPATIONS
GROUP BY 
    Occupation
ORDER BY 
    COUNT(*) ASC, Occupation ASC;
```

---

## 📝 Notes

- Ensure that your queries handle edge cases where multiple names or occupations have similar values.
- The output should be clean, correctly formatted, and meet the criteria outlined above.
