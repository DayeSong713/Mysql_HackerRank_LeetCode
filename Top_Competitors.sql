select h.hacker_id, h.name
from submissions as s
inner join hackers as h on h.hacker_id=s.hacker_id 
inner join challenges as c on c.challenge_id=s.challenge_id
inner join difficulty as d on c.difficulty_level=d.difficulty_level
where d.score=s.score
group by h.hacker_id, h.name
having count(distinct s.submission_id)>1
order by count(distinct s.submission_id) desc, h.hacker_id
