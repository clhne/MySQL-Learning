select (count(*) + 1) div 2 from income;
select income as median from (select a1.name,a1.income, count(*) as rank from income as a1, income as a2 
where a1.income < a2.income or (a1.income = a2.income and a1.name <= a2.name)
group by a1.name, a1.income
order by rank) a3
where rank = (select (count(*) + 1) div 2 from income);

