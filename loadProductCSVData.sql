USE QA;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
  id INTEGER AUTO_INCREMENT,
  PRIMARY KEY (id)
);

LOAD DATA LOCAL INFILE '../../Downloads/clean-SDC-data/product.csv' INTO TABLE products FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS (id);
-- UPDATE products SET date_written = FROM_UNIXTIME(date_written/1000);