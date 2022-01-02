select distinct l1.num as ConsecutiveNums
from logs as l1
inner join logs as l2 on l1.id+1=l2.id
inner join logs as l3 on l1.id+2=l3.id
where l1.num=l2.num and l1.num=l3.num
