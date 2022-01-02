select case when g.grade<8 then null else s.name end as name,
       g.grade, s.marks
from students as s
inner join grades as g on s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name , s.marks
