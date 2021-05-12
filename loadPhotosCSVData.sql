USE QA;

DROP TABLE IF EXISTS photos;

CREATE TABLE photos (
  id INTEGER AUTO_INCREMENT,
  answer_id INTEGER,
  url VARCHAR(2000),
  PRIMARY KEY (id)
);

LOAD DATA LOCAL INFILE '../../Downloads/clean-SDC-data/answers_photos.csv' INTO TABLE photos FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (id, answer_id, url);