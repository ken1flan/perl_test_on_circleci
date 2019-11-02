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
  'Rin'
, 'Siamese'
);

INSERT INTO cats (name, color)
VALUES (
  'Taro'
, 'Siamese'
);

INSERT INTO cats (name, color)
VALUES (
  'Jiro'
, 'White'
);
