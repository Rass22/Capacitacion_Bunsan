SELECT users.name, users.handle FROM (SELECT user_id FROM user_skills
WHERE skill_id=(SELECT id FROM skills WHERE name='ELixir') and level = 'competent' OR skill_id = (SELECT id from skills where name = 'AWS')
GROUP BY user_id HAVING COUNT(*)>1) AS mytable INNER JOIN users ON users.id = mytable.user_id;
