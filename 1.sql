CREATE VIEW younger_users AS
SELECT name, surname, city, gender 
FROM users
WHERE DATE_PART('year', AGE(birthday)) <= 20;
