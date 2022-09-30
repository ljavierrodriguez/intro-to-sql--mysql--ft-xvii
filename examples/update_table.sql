/* 
 UPDATE <table_name> SET field=value, field2=value2, ....fieldn=valuen WHERE <condition>
 */

UPDATE users SET email='hugo@gmail.com' WHERE id=2;

UPDATE users SET email='hugo@gmail.com', phone='123456' WHERE id=2;


UPDATE contador SET counter = counter + 1;