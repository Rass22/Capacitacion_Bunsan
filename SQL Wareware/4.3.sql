SELECT users.name, users.handle, users.email, COUNT AS count_skills FROM (select user_id, count(user_id) from user_skills group by user_id
having count(*)>0) as mytable inner join users on users.id = mytable.user_id And users.enabled = 't' ORDER BY COUNT, id limit 10;
