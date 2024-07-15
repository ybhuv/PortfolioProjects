/*
Mental Health of International Students in Japan Exploration

Skills used: 
Selecting Data, Filtering Records, Aggregate Functions, Sorting & Grouping

*/

-- Code to view all the data of students in this Japanese university -- 

SELECT * 
FROM students;
-- Retrieve variables from inter_dom, todep, tosc, and toas tables.
-- Use COUNT() to get the total number of students.
-- Use AVG() to find the average levels of depression, social connectedness, and acculturative stress.

-- Start coding here--
SELECT stay, COUNT(inter_dom) AS count_int, 
		ROUND(AVG(todep),2) AS average_phq,ROUND(AVG(tosc),2) AS average_scs,
		ROUND(AVG(toas),2) AS average_as
FROM students
-- Filter international students using WHERE.
-- Group data by stay duration using GROUP BY.
-- Arrange data in descending order using ORDER BY.
-- Limit output to 9 rows using LIMIT.

WHERE inter_dom = 'Inter'
GROUP BY students.stay 
ORDER BY stay DESC
LIMIT 9;





