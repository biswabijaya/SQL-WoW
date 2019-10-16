# SQL-WoW
 Advance SQL Data Manipulation Techniques
Q1. SQL To select count of total and different values in a same column, presented in a single row

SELECT count(*) AS total,
    sum(case when present = '1' then 1 else 0 end) AS present,
    sum(case when present = '0' then 1 else 0 end) AS absent
FROM attexam
WHERE attid=1

Q2. SQL To find and store average mark in a variable, and use it to find below and average data.

SELECT AVG(mark) into @myVar FROM examresult WHERE examid=1;
SELECT
	count(id) as total,
	@myVar AS avg,
	sum(case when mark < @myVar then 1 else 0 end) AS belowaverage,
	sum(case when mark >= @myVar then 1 else 0 end) AS aboveaverage,
FROM examresult
WHERE examid=1
