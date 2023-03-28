SELECT name, surname, message_count,
       DENSE_RANK() OVER (ORDER BY message_count DESC) as ranking
FROM (
  SELECT user_id, COUNT(*) as message_count
  FROM messages
  GROUP BY user_id
) AS user_message_counts
JOIN users ON users.id = user_message_counts.user_id
ORDER BY message_count DESC;
