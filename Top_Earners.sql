solution 1


select months*salary as earnings, count(*)
from employee
group by earnings
having earnings=(select max(salary*months) from employee


solution 2


select salary * months as earnings, count(*)
from employee
group by earnings
order by earnings Desc
limit 1)
