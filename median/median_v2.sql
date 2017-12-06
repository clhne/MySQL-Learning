use lcl;
show tables;
select * from income
order by income;
SELECT avg(t1.income) as median_val FROM (
SELECT @rownum:=@rownum+1 as `row_number`, d.income
  FROM income d,  (SELECT @rownum:=0) r
  WHERE 1
  -- put some where clause here
  ORDER BY d.income
) as t1, 
(
  SELECT count(*) as total_rows
  FROM income d
  WHERE 1
  -- put same where clause here
) as t2
WHERE 1
AND t1.row_number in ( floor((total_rows+1)/2), floor((total_rows+2)/2) );