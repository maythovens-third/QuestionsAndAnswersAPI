USE QA;

DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
  id INT AUTO_INCREMENT,
  product_id INTEGER,
  body VARCHAR(2000),
  date_written VARCHAR(2000),
  asker_name VARCHAR(2000),
  asker_email VARCHAR(2000),
  reported TINYINT,
  helpful INT,
  PRIMARY KEY (id)
);

LOAD DATA LOCAL INFILE '../../Downloads/clean-SDC-data/questions.csv' INTO TABLE questions FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (id,product_id,body,date_written,asker_name,asker_email,reported,helpful);
UPDATE questions SET date_written = FROM_UNIXTIME(date_written/1000);