DROP DATABASE IF EXISTS `CatsDB`;
CREATE DATABASE CatsDB DEFAULT CHARACTER SET utf8;

USE CatsDB;

DROP TABLE IF EXISTS `CatColors`;
CREATE TABLE CatColors (
  id INT NOT NULL AUTO_INCREMENT,
  name_en VARCHAR(64),
  name_jp VARCHAR(64),
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'red tabby'
, '茶トラ'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'silver tabby'
, 'サバトラ'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'brown tabby'
, 'キジトラ'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'spotted'
, 'ヒョウ柄'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'calico'
, '三毛'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'bicolor'
, 'ブチ'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'tortoiseshell'
, 'サビ'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'pointed'
, 'シャム'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'black'
, '黒'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'white'
, '白'
);

INSERT INTO CatColors (name_en, name_jp)
VALUES (
  'grey'
, '灰'
);
