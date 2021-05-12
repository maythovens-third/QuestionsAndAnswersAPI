DROP DATABASE IF EXISTS testDatabase;

CREATE DATABASE testDatabase;
-- DROP TABLE IF EXISTS Questions;

USE testDatabase;

CREATE TABLE testTable (
  id INT PRIMARY KEY AUTO_INCREMENT,
  product_id INT,
  body VARCHAR(200)
  -- PRIMARY KEY (id)
);

INSERT INTO testTable (product_id, body) VALUES (5, 'how are you doing');