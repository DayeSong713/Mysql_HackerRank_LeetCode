select hackers.hacker_id, hackers.name, count(*) challenges_created
  from challenges
       inner join hackers on challenges.hacker_id=hackers.hacker_id
 group by hackers.hacker_id, hackers.name
having challenges_created= (select count(hacker_id)
                              from challenges
                             group by hacker_id
                             order by count(hacker_id) desc
                             limit 1)
        or challenges_created in (select challenges_created
                                    from ( select hacker_id, count(*) as challenges_created
                                             from challenges
                                            group by hacker_id) sub
                                    group by challenges_created
                                    having count(*)=1)
order by challenges_created desc, hacker_id
