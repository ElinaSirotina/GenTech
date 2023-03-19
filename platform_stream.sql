---Задача 1

SELECT users.fullname, sum(donations.amount) as sum_total
FROM donations
JOIN users on donations.donator_id=users.user_id
GROUP BY users.fullname
ORDER BY sum_total DESC
LIMIT 1

---Задача 2
SELECT users.fullname, sum(donations.amount) as sum_total
FROM donations
LEFT JOIN streams on donations.stream_id=streams.stream_id
LEFT JOIN users on users.user_id=streams.user_id
GROUP BY users.fullname
ORDER BY sum_total
LIMIT 3

---Задача 3
create database if not exists onlinechat;
use onlinechat;

create table if not exists users(
    user_id integer PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(255) NOT NULL,
    email VARCHAR(64) NOT NULL,
    is_blocked BOOLEAN DEFAULT false,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);