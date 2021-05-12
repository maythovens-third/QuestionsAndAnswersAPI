USE QA;

DROP TABLE IF EXISTS answers;

CREATE TABLE answers (
  id INTEGER AUTO_INCREMENT,
  question_id INTEGER,
  body VARCHAR(2000),
  date_written VARCHAR(2000),
  answerer_name VARCHAR(2000),
  answerer_email VARCHAR(2000),
  reported TINYINT,
  helpful INTEGER,
  PRIMARY KEY (id)
);

LOAD DATA LOCAL INFILE '../../Downloads/clean-SDC-data/answers.csv' INTO TABLE answers FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (id,question_id,body,date_written,answerer_name,answerer_email,reported,helpful);
UPDATE answers SET date_written = FROM_UNIXTIME(date_written/1000);