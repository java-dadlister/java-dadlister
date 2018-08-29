create DATABASE IF NOT EXISTS dad_db;

USE dad_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS the_meats;
DROP TABLE IF EXISTS new_balance;
DROP TABLE IF EXISTS new_dads;
DROP TABLE IF EXISTS thingamajig;
DROP TABLE IF EXISTS exercise;


CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    username VARCHAR(200) NOT NULL,
    password VARCHAR(200) NOT NULL,
    favorite_joke VARCHAR(2500) NOT NULL,
    bio VARCHAR(2500) NOT NULL,
    img_url VARCHAR(150) DEFAULT 'http://via.placeholder.com/300x300',
    PRIMARY KEY (id)
);

CREATE TABLE the_meats (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    users_id INT UNSIGNED NOT NULL,
    the_meat VARCHAR(200) NOT NULL,
    time VARCHAR(50) NOT NULL,
    location VARCHAR(200) NOT NULL,
    dadscription VARCHAR(2500) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);

CREATE TABLE new_balance (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    users_id INT UNSIGNED NOT NULL,
    title VARCHAR(200) NOT NULL,
    dadscription VARCHAR(2500) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users(id)
);

CREATE TABLE new_dads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    users_id INT UNSIGNED NOT NULL,
    title VARCHAR(200) NOT NULL,
    dadscription VARCHAR(2500) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);

CREATE TABLE thingamajig (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    users_id INT UNSIGNED NOT NULL,
    title VARCHAR(200) NOT NULL,
    dadscription VARCHAR(2500) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);

CREATE TABLE exercise (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    users_id INT UNSIGNED NOT NULL,
    title VARCHAR(200) NOT NULL,
    location VARCHAR(200) NOT NULL,
    dadscription VARCHAR(2500) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);


