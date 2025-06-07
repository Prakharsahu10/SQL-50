/* Arcticle Views 1 */
/*
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+
There is no primary key (column with unique values) for this table, the table may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
Note that equal author_id and viewer_id indicate the same person.
 

Write a solution to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.

The result format is in the following example.

 

Example 1:

Input: 
Views table:
+------------+-----------+-----------+------------+
| article_id | author_id | viewer_id | view_date  |
+------------+-----------+-----------+------------+
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |
+------------+-----------+-----------+------------+
Output: 
+------+
| id   |
+------+
| 4    |
| 7    |
+------+

*/
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id 
ORDER BY id ASC;

-- The query selects distinct author IDs from the Views table where the author ID matches the viewer ID, indicating that the author viewed their own article. The results are then ordered by the author ID in ascending order.
--
-- The DISTINCT keyword ensures that each author ID appears only once in the result set, even if they viewed multiple articles.

-- The WHERE clause filters the rows to include only those where the author viewed their own article, which is determined by checking if the author_id is equal to the viewer_id.

-- The result will contain a single column named "id" that lists the IDs of authors who viewed at least one of their own articles.

-- The result format is a single column with the author IDs sorted in ascending order.