
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(120),
    phone VARCHAR(50),
    PRIMARY KEY(id),
    UNIQUE KEY(email)
);

DROP TABLE IF EXISTS comments;

CREATE TABLE IF NOT EXISTS comments (
    id INTEGER NOT NULL AUTO_INCREMENT,
    comment MEDIUMTEXT NOT NULL,
    data DATETIME default CURRENT_TIMESTAMP,
    users_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS roles_users;

CREATE TABLE roles_users (
    roles_id INTEGER NOT NULL,
    users_id INTEGER NOT NULL,
    UNIQUE KEY (roles_id, users_id),
    FOREIGN KEY (roles_id) REFERENCES roles (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);