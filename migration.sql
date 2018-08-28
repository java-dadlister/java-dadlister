create DATABASE IF NOT EXISTS dad_db;

USE dad_db;

DROP TABLE IF EXISTS dads;
DROP TABLE IF EXISTS bbq;
DROP TABLE IF EXISTS new_balance;
DROP TABLE IF EXISTS new_dads;
DROP TABLE IF EXISTS thingamajig;
DROP TABLE IF EXISTS exercise;


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

CREATE TABLE bbq (
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    dad_id INT UNSIGNED NOT NULL,
    dad_username     VARCHAR(240) NOT NULL,
    the_meats    VARCHAR(240) NOT NULL,
    time         DATETIME     NOT NULL,
    location     VARCHAR(240) NOT NULL,
    dadscription VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (dad_id) REFERENCES dads (id),
    FOREIGN KEY (dad_username) REFERENCES dads (username)

);

CREATE TABLE new_balance (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    dads_id INT UNSIGNED NOT NULL,
    dad_username VARCHAR(240) NOT NULL,
    title VARCHAR(240) NOT NULL,
    time DATETIME NOT NULL,
    location VARCHAR(240) NOT NULL,
    dadscription VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (dads_id) REFERENCES dads(id),
    FOREIGN KEY (dad_username) REFERENCES dads (username)
);

CREATE TABLE new_dads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    dads_id INT UNSIGNED NOT NULL,
    dad_username VARCHAR(240) NOT NULL,
    title VARCHAR(240) NOT NULL,
    dadscription VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (dads_id) REFERENCES dads (id),
    FOREIGN KEY (dad_username) REFERENCES dads (username)

);

CREATE TABLE thingamajig (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    dads_id INT UNSIGNED NOT NULL,
    dad_username VARCHAR(240) NOT NULL,
    title VARCHAR(240) NOT NULL,
    dadscription VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (dads_id) REFERENCES dads (id),
    FOREIGN KEY (dad_username) REFERENCES dads (username)

);

CREATE TABLE exercise (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    dads_id INT UNSIGNED NOT NULL,
    dad_username VARCHAR(240) NOT NULL,
    title VARCHAR(240) NOT NULL,
    dadscription VARCHAR(255) NOT NULL,
    locationn VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (dads_id) REFERENCES dads (id),
    FOREIGN KEY (dad_username) REFERENCES dads (username)

);

