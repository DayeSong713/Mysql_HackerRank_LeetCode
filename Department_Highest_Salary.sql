select d.name as Department, e.name as Employee, e.salary
from employee as e
inner join (select departmentid, max(salary) as max_sal
from employee
group by departmentid) as dh on e.departmentid=dh.departmentid
and e.salary=dh.max_sal
inner join department as d on e.departmentid=d.id
