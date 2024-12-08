BEGIN TRANSACTION;

-- Обновление user_id в таблице LOG1
UPDATE LOG1
SET user_id = SUBSTR(user_id, INSTR(user_id, 'user_'), LENGTH(user_id))
WHERE user_id LIKE '%user_%';

-- Удаление пользователей, у которых user_id не соответствует шаблону
DELETE FROM users
WHERE user_id NOT LIKE 'user_%';

-- Обновление user_id в таблице USERS
UPDATE USERS
SET user_id = REPLACE(user_id, 'U', 'u');

-- Обновление user_time в таблице LOG1
UPDATE LOG1
SET user_time = REPLACE(user_time, '[', '');

-- Удаление записей из LOG1, у которых user_id не соответствует шаблону
DELETE FROM LOG1
WHERE user_id NOT LIKE 'user_%';

COMMIT;