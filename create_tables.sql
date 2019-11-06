SET character_set_server = utf8;

DROP DATABASE IF EXISTS `circleci`;
CREATE DATABASE circleci DEFAULT CHARACTER SET utf8;

USE circleci;

DROP TABLE IF EXISTS `Cats`;
CREATE TABLE cats (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(64),
  color VARCHAR(64),
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO cats (name, color)
VALUES (
  'りん'
, 'シャム'
);

INSERT INTO cats (name, color)
VALUES (
  'たろう'
, 'シャム'
);

INSERT INTO cats (name, color)
VALUES (
  'じろう'
, '白'
);
