USE stackly_db;

INSERT INTO actortable VALUES 
(5,"PR",30);

SELECT * FROM actortable WHERE name="Sharukh khan";

UPDATE actortable SET age=60;

set sql_safe_updates=1;

delete from actortable where id=5;
