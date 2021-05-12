DROP DATABASE IF EXISTS QA;

CREATE DATABASE QA;

USE QA;

DROP TABLE IF EXISTS Questions;

CREATE TABLE Questions (
  id INT AUTO_INCREMENT,
  product_id INTEGER,
  body VARCHAR(2000),
  date_written VARCHAR(2000),
  asker_name VARCHAR(2000),
  asker_email VARCHAR(2000),
  reported BINARY,
  helpful INT,
  PRIMARY KEY (id)
);

-- ---
-- Table 'Answers'
--
-- ---

DROP TABLE IF EXISTS Answers;

CREATE TABLE Answers (
  id INTEGER AUTO_INCREMENT,
  question_id INTEGER,
  body VARCHAR(2000),
  date_written VARCHAR(2000),
  answerer_name VARCHAR(2000),
  answerer_email VARCHAR(2000),
  reported BINARY,
  helpful INTEGER,
  PRIMARY KEY (id)
);

-- ---
-- Table 'Photos'
--
-- ---

DROP TABLE IF EXISTS Photos;

CREATE TABLE Photos (
  id INTEGER AUTO_INCREMENT,
  answer_id INTEGER,
  url INTEGER,
  PRIMARY KEY (id)
);

-- ---
-- Table 'Products'
--
-- ---

DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
  id INTEGER AUTO_INCREMENT,
  PRIMARY KEY (id)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE Questions ADD FOREIGN KEY (product_id) REFERENCES Products (id);
ALTER TABLE Answers ADD FOREIGN KEY (question_id) REFERENCES Questions (id);
ALTER TABLE Photos ADD FOREIGN KEY (answer_id) REFERENCES Answers (id);