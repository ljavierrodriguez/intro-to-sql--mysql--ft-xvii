/* 
 DELETE FROM <table_name> WHERE condition;
 */

DELETE FROM comments WHERE id = 1 ;

DELETE FROM users AS u
WHERE u.id IN (
        SELECT id
        FROM users
        WHERE id > 2
    );

DELETE FROM users WHERE id IN (3, 4);