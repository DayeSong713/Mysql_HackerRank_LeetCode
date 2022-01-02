select distinct b1.n,
       case when b1.p is null then 'Root'
            when b2.n is null then 'Leaf'
            else 'Inner'
        end
from bst b1
left join bst b2 on b1.n=b2.p
order by b1.n
