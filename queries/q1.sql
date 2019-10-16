SELECT count(*) AS total,
    sum(case when present = '1' then 1 else 0 end) AS present,
    sum(case when present = '0' then 1 else 0 end) AS absent
FROM attexam
WHERE attid=1
