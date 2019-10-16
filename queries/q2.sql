SELECT AVG(mark) into @myVar FROM examresult WHERE examid=1;
SELECT
	count(id) as total,
	@myVar AS avg,
	sum(case when mark < @myVar then 1 else 0 end) AS belowaverage,
	sum(case when mark >= @myVar then 1 else 0 end) AS aboveaverage,
FROM examresult
WHERE examid=1
