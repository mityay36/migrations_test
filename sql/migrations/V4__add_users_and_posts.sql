WITH u AS(
    INSERT INTO users (name)
    VALUES ("Alice"), ("Bob")
    RETURNING id
)
INSERT into posts (text, owner)
select concat("My ", u.id, "post"), u.id
from u;