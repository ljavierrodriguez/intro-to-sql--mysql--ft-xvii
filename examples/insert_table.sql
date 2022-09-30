/* 
 INSERT INTO <table_name> (field1, field2, ...fieldn) VALUES (value1, value2. ...valuen);
 */

INSERT INTO
    users (name, email, phone)
VALUES (
        'Lus J',
        'lrodriguez@4geeks.co',
        '123456'
    );

INSERT INTO comments (comment, users_id) VALUES ('Esto es SQL puro', 1);

INSERT INTO
    users (name, phone)
VALUES ('Hugo', '123'), ('Paco', '456'), ('Rodrigo', '789');

INSERT INTO contador (counter) VALUES (0);