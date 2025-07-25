/* Find Customer Referee */
/*

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
 

Find the names of the customer that are not referred by the customer with id = 2.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
Output: 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+

*/

SELECT name
FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;

-- -- The query selects the names of customers from the Customer table where the referee_id is either NULL (indicating they were not referred by anyone) or not equal to 2 (indicating they were not referred by the customer with id = 2).
-- -- The result will contain a single column named "name" that lists the names of customers who were not referred by the customer with id = 2.     
-- -- The result format is a single column with the names of the customers who meet the specified conditions.