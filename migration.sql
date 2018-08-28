create DATABASE IF NOT EXISTS dad_db;

USE dad_db;

DROP TABLE IF EXISTS dads;

CREATE TABLE dads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(240) NOT NULL,
    last_name VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    username VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    bio VARCHAR(255) NOT NULL,
    img_url VARCHAR(2083) DEFAULT 'http://via.placeholder.com/300x300',
    PRIMARY KEY (id)
);


