-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Questions'
--
-- ---

DROP DATABASE IF EXISTS QA;

CREATE DATABASE QA;



-- ---
-- Table 'Answers'
--
-- ---

-- DROP TABLE IF EXISTS Answers;

-- CREATE TABLE Answers (
--   id INTEGER AUTO_INCREMENT,
--   question_id INTEGER,
--   body VARCHAR(2000),
--   date_written VARCHAR(2000),
--   answerer_name VARCHAR(2000),
--   answerer_email VARCHAR(2000),
--   reported BINARY,
--   helpful INTEGER,
--   PRIMARY KEY (id)
-- );

-- ---
-- Table 'Photos'
--
-- ---



-- ---
-- Table 'Products'
--
-- ---



-- ---
-- Foreign Keys
-- ---

-- ALTER TABLE Questions ADD FOREIGN KEY (product_id) REFERENCES Products (id);
-- ALTER TABLE Answers ADD FOREIGN KEY (question_id) REFERENCES Questions (id);
-- ALTER TABLE Photos ADD FOREIGN KEY (answer_id) REFERENCES Answers (id);




-- SET @date_written=FROM_UNIXTIME(@date_written/1000);
-- CAST date_written AS VARCHAR;
-- SELECT CAST (date_written as VARCHAR) new_date_written FROM Questions;
-- DELETE FROM Questions WHERE date_written < 1414820763022;
-- DELETE FROM Questions WHERE date_written > 1814820763022;
-- LOAD DATA LOCAL INFILE '../../Downloads/Questions.csv' INTO TABLE


-- ALTER TABLE Questions MODIFY date_written DATE;

-- SET date_written = STR_TO_DATE(@temporary_date_variable, '%m/%d/%Y');


-- ---
-- Table Properties
-- ---

-- ALTER TABLE Questions ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Answers ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Photos ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Products ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO Questions (id,product_id,body,date_written,asker_name,asker_email,reported,helpful) VALUES
-- ('','','','','','','','');
-- INSERT INTO Answers (id,question_id,body,date_written,answerer_name,answerer_email,reported,helpful) VALUES
-- ('','','','','','','','');
-- INSERT INTO Photos (id,answer_id,url) VALUES
-- ('','','');
-- INSERT INTO Products (id) VALUES
-- ('');




