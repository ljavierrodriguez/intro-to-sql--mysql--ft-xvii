/* 

users
roles
roles_users
comments

 */


 /* 

SELECT * FROM <table_name>;
SELECT fields, fields1 FROM <table_name> 
SELECT * FROM <table_name>  WHERE <field> = <value>;
*/

SELECT name, phone FROM users WHERE id >= 5 and id <= 10;


SELECT * FROM users WHERE phone IS NOT NULL;


SELECT * FROM users AS u 
LEFT JOIN comments AS c ON u.id = c.users_id;

SELECT * FROM users AS u 
RIGHT JOIN comments AS c ON u.id = c.users_id;


SELECT * FROM roles_users as ru
LEFT JOIN roles as rol ON ru.roles_id = rol.id
LEFT JOIN users as usr ON ru.users_id = usr.id;