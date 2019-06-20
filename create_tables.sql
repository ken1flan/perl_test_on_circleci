DROP TABLE IF EXISTS `Cats`;

CREATE TABLE cats (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(64),
  color VARCHAR(64),
  PRIMARY KEY(id)
);

INSERT INTO cats
VALUES (
  'りん'
, 'シャム'
);

INSERT INTO cats
VALUES (
  'たろう'
, 'シャム'
);

INSERT INTO cats
VALUES (
  'じろう'
, '白'
);
