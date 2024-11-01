--step 1: add false data to frame emily33

INSERT INTO user_logs (type, old_username, new_username, old_password, new_password)
SELECT 'update', 'admin', 'admin', (
    SELECT "password"
    FROM "users"
    WHERE "username" = 'admin'
),(
    SELECT "password"
    FROM "users"
    WHERE "username" = 'emily33'
);

-- Step 2 : update the admin's password to "oops!"
UPDATE users
SET password = '982c0381c279d139fd221fce974916e7'
WHERE username = 'admin';


-- Step3 : Erase logs of the password change
DELETE FROM user_logs
WHERE new_password = '982c0381c279d139fd221fce974916e7';

--step 4: see what happened
SELECT * FROM user_logs;
SELECT * from users;