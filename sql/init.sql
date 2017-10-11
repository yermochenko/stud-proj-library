/* deleting old database */
DROP DATABASE IF EXISTS `library_db`;

/* creating new database */
CREATE DATABASE `library_db` DEFAULT CHARACTER SET utf8;

/* using created database as current */
USE `library_db`;

/* creating of tables */
CREATE TABLE `author` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(100) NOT NULL,
    `middle_name` VARCHAR(100),
    `last_name` VARCHAR(100) NOT NULL,
    `birth_year` INTEGER NOT NULL,
    `death_year` INTEGER,
    PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARACTER SET utf8;

CREATE TABLE `book` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(200) NOT NULL,
    `author_id` INTEGER,
    `publish_year` INTEGER NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON UPDATE RESTRICT ON DELETE RESTRICT
) ENGINE=INNODB DEFAULT CHARACTER SET utf8;

/* filling database by test data */
INSERT INTO `author`
(`id`, `first_name`, `middle_name`, `last_name`, `birth_year`, `death_year`)
VALUES
(1,    "Jack",       NULL,          "London",    1876,         1916        ),
(2,    "Joanne",     "Kathleen",    "Rowling",   1965,         NULL        );

INSERT INTO `book`
(`id`, `title`,                                    `author_id`, `publish_year`)
VALUES
(1,    "The Call of the Wild",                     1,           1903          ),
(2,    "The Sea-Wolf",                             1,           1904          ),
(3,    "Hearts of Three",                          1,           1920          ),
(4,    "Harry Potter and the Philosopher's Stone", 2,           1997          ),
(5,    "The Bible",                                NULL,        2017          );