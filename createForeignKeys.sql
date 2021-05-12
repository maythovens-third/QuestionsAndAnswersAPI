USE QA;

ALTER TABLE questions ADD FOREIGN KEY (product_id) REFERENCES products (id);
ALTER TABLE answers ADD FOREIGN KEY (question_id) REFERENCES questions (id);
ALTER TABLE photos ADD FOREIGN KEY (answer_id) REFERENCES answers (id);