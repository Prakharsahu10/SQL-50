/* Rising Temperature */
/*

Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 

Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation: 
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).

*/

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

-- The query selects the IDs from the Weather table (w1) where the temperature is higher than the previous day's temperature (w2).
-- It uses a self-join on the Weather table to compare each day's temperature with the previous day's temperature based on the recordDate.  
-- The DATEDIFF function is used to ensure that the comparison is made with the previous day.
-- The result will contain a single column named "id" that lists the IDs of the dates where the temperature was higher than the previous day.
-- The result format is a single column with the IDs of the dates that meet the condition.
-- The JOIN condition ensures that only pairs of records where the recordDate of w1 is exactly one day after the recordDate of w2 are considered.