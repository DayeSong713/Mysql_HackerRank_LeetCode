select x,y
from functions as fun1
where x=y
group by x,y
having count(*)>1

union 

select fun1.x,fun1.y
from functions as fun1
inner join functions as fun2 on fun1.x=fun2.y and fun1.y=fun2.x and fun1.x<fun1.y
order by x
