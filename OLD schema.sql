-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Questions'
--
-- ---
DROP

DROP TABLE IF EXISTS `Questions`;

CREATE TABLE `Questions` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `product_id` INTEGER NULL DEFAULT NULL,
  `body` VARCHAR NULL DEFAULT NULL,
  `date_written` VARCHAR NULL DEFAULT NULL,
  `asker_name` VARCHAR NULL DEFAULT NULL,
  `asker_email` VARCHAR NULL DEFAULT NULL,
  `reported` BINARY NULL DEFAULT NULL,
  `helpful` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Answers'
--
-- ---

DROP TABLE IF EXISTS `Answers`;

CREATE TABLE `Answers` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `question_id` INTEGER NULL DEFAULT NULL,
  `body` VARCHAR NULL DEFAULT NULL,
  `date_written` VARCHAR NULL DEFAULT NULL,
  `answerer_name` VARCHAR NULL DEFAULT NULL,
  `answerer_email` VARCHAR NULL DEFAULT NULL,
  `reported` BINARY NULL DEFAULT NULL,
  `helpful` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Photos'
--
-- ---

DROP TABLE IF EXISTS `Photos`;

CREATE TABLE `Photos` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `answer_id` INTEGER NULL DEFAULT NULL,
  `url` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Products'
--
-- ---

DROP TABLE IF EXISTS `Products`;

CREATE TABLE `Products` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `Questions` ADD FOREIGN KEY (product_id) REFERENCES `Products` (`id`);
ALTER TABLE `Answers` ADD FOREIGN KEY (question_id) REFERENCES `Questions` (`id`);
ALTER TABLE `Photos` ADD FOREIGN KEY (answer_id) REFERENCES `Answers` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Questions` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Answers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Photos` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Products` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Questions` (`id`,`product_id`,`body`,`date_written`,`asker_name`,`asker_email`,`reported`,`helpful`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `Answers` (`id`,`question_id`,`body`,`date_written`,`answerer_name`,`answerer_email`,`reported`,`helpful`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `Photos` (`id`,`answer_id`,`url`) VALUES
-- ('','','');
-- INSERT INTO `Products` (`id`) VALUES
-- ('');





-- -- ---
-- -- Globals
-- -- ---

-- -- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- -- SET FOREIGN_KEY_CHECKS=0;

-- -- ---
-- -- Table 'Questions'
-- --
-- -- ---

-- DROP DATABASE IF EXISTS QuestionsAndAnswers;

-- CREATE DATABASE QuestionsAndAnswers;

-- USE QuestionsAndAnswers;


-- CREATE TABLE `Questions` (
-- --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
-- --   `product_id` INTEGER NULL DEFAULT NULL,
-- --   `body` VARCHAR NULL DEFAULT NULL,
-- --   `date_written` VARCHAR NULL DEFAULT NULL,
-- --   `asker_name` VARCHAR NULL DEFAULT NULL,
-- --   `asker_email` VARCHAR NULL DEFAULT NULL,
-- --   `reported` BINARY NULL DEFAULT NULL,
-- --   `helpful` INTEGER NULL DEFAULT NULL,
-- --   PRIMARY KEY (`id`)
-- -- );




-- -- DROP DATABASE IF EXISTS testDatabase;

-- -- CREATE DATABASE testDatabase;
-- -- -- DROP TABLE IF EXISTS Questions;

-- -- USE testDatabase;

-- -- CREATE TABLE testTable (
-- --   id INT PRIMARY KEY AUTO_INCREMENT,
-- --   product_id INT,
-- --   body VARCHAR(200)
-- --   -- PRIMARY KEY (id)
-- -- );

-- -- INSERT INTO testTable (product_id, body) VALUES (5, 'how are you doing');




-- -- Below is commented out
-- -- CREATE TABLE `Questions` (
-- --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
-- --   `product_id` INTEGER NULL DEFAULT NULL,
-- --   `body` VARCHAR NULL DEFAULT NULL,
-- --   `date_written` VARCHAR NULL DEFAULT NULL,
-- --   `asker_name` VARCHAR NULL DEFAULT NULL,
-- --   `asker_email` VARCHAR NULL DEFAULT NULL,
-- --   `reported` BINARY NULL DEFAULT NULL,
-- --   `helpful` INTEGER NULL DEFAULT NULL,
-- --   PRIMARY KEY (`id`)
-- -- );

-- -- -- ---
-- -- -- Table 'Answers'
-- -- --
-- -- -- ---

-- -- DROP TABLE IF EXISTS `Answers`;

-- -- CREATE TABLE `Answers` (
-- --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
-- --   `question_id` INTEGER NULL DEFAULT NULL,
-- --   `body` VARCHAR NULL DEFAULT NULL,
-- --   `date_written` VARCHAR NULL DEFAULT NULL,
-- --   `answerer_name` VARCHAR NULL DEFAULT NULL,
-- --   `answerer_email` VARCHAR NULL DEFAULT NULL,
-- --   `reported` BINARY NULL DEFAULT NULL,
-- --   `helpful` INTEGER NULL DEFAULT NULL,
-- --   PRIMARY KEY (`id`)
-- -- );

-- -- -- ---
-- -- -- Table 'Photos'
-- -- --
-- -- -- ---

-- -- DROP TABLE IF EXISTS `Photos`;

-- -- CREATE TABLE `Photos` (
-- --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
-- --   `answer_id` INTEGER NULL DEFAULT NULL,
-- --   `url` INTEGER NULL DEFAULT NULL,
-- --   PRIMARY KEY (`id`)
-- -- );

-- -- -- ---
-- -- -- Table 'Products'
-- -- --
-- -- -- ---

-- -- DROP TABLE IF EXISTS `Products`;

-- -- CREATE TABLE `Products` (
-- --   `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
-- --   PRIMARY KEY (`id`)
-- -- );

-- -- -- ---
-- -- -- Foreign Keys
-- -- -- ---

-- -- ALTER TABLE `Questions` ADD FOREIGN KEY (product_id) REFERENCES `Products` (`id`);
-- -- ALTER TABLE `Answers` ADD FOREIGN KEY (question_id) REFERENCES `Questions` (`id`);
-- -- ALTER TABLE `Photos` ADD FOREIGN KEY (answer_id) REFERENCES `Answers` (`id`);

-- -- -- ---
-- -- -- Table Properties
-- -- -- ---

-- -- -- ALTER TABLE `Questions` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- -- ALTER TABLE `Answers` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- -- ALTER TABLE `Photos` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- -- -- ALTER TABLE `Products` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- -- -- ---
-- -- -- Test Data
-- -- -- ---

-- -- -- INSERT INTO `Questions` (`id`,`product_id`,`body`,`date_written`,`asker_name`,`asker_email`,`reported`,`helpful`) VALUES
-- -- -- ('','','','','','','','');
-- -- -- INSERT INTO `Answers` (`id`,`question_id`,`body`,`date_written`,`answerer_name`,`answerer_email`,`reported`,`helpful`) VALUES
-- -- -- ('','','','','','','','');
-- -- -- INSERT INTO `Photos` (`id`,`answer_id`,`url`) VALUES
-- -- -- ('','','');
-- -- -- INSERT INTO `Products` (`id`) VALUES
-- -- -- ('');