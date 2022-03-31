DROP TABLE IF EXISTS genre;

CREATE TABLE genre (
                       id   serial  NOT NULL  UNIQUE PRIMARY KEY,
                       name  VARCHAR(255) NOT NULL UNIQUE
);