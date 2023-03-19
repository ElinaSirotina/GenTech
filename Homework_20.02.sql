---Домашнее задание

SELECT fullname, TEXT 
FROM messages AS m 
JOIN users AS u ON m.recipient_id = u.user_id 
WHERE m.author_id = 1