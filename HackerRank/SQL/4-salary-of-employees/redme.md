# SQL Exercise: Employee Salary Query

## Problem Statement

Write a query that retrieves a list of employee names from the `Employee` table where:

- The employee has a salary greater than 2000 per month.
- The employee has been with the company for less than 10 months.

The results should be sorted by `employee_id` in ascending order.

### Link to Exercise

You can find the original problem statement and details [here](https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true).

## Input Format

The `Employee` table contains the following columns:

| Column        | Type    |
|---------------|---------|
| employee_id   | Integer |
| name          | String  |
| months        | Integer |
| salary        | Integer |

## Example

### Input
Assume the `Employee` table contains:

| employee_id | name   | months | salary |
|-------------|--------|--------|--------|
| 1           | Alice  | 8      | 2500   |
| 2           | Bob    | 12     | 1800   |
| 3           | Charlie| 5      | 2200   |
| 4           | David  | 9      | 2100   |

### Output
The query should return:

| name    |
|---------|
| Alice   |
| Charlie |
| David   |

## SQL Query

Below is the SQL query that solves the problem:

```sql
SELECT name
FROM Employee
WHERE salary > 2000
  AND months < 10
ORDER BY employee_id ASC;
