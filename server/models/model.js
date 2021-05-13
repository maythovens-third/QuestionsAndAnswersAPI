const db = require('../../database/db.js');

module.exports = {
  getQuestions: (product_id, count, page, callback) => {

    let queryToUse;

    // if product_id parameter is specified
      if (product_id) {
        queryToUse = `SELECT * FROM questions WHERE product_id = ${product_id} LIMIT ${(page || 1) * (count || 5) - (count || 5)}, ${(count || 5)}`;
        // INNER JOIN answers ON questions.id = answers.question_id
      } else {
        queryToUse = `SELECT * FROM questions LIMIT ${(page || 1) * (count || 5) - (count || 5)}, ${(count || 5)}`;
        // INNER JOIN answers ON questions.id = answers.question_id
      }

      db.query(queryToUse, callback);
  },
  getAnswers: (question_id, count, page, callback) => {

    //(question_id route parameter is required)
    let queryToUse = `SELECT * FROM answers WHERE question_id = ${question_id} LIMIT ${(page || 1) * (count || 5) - (count || 5)}, ${(count || 5)}`;

    db.query(queryToUse, callback);
  },
  addQuestion: (question, callback) => {
    const {body, name, email, product_id} = question;
    let queryToUse = `INSERT INTO questions (body, asker_name, asker_email, product_id)
                      VALUES (${body}, ${name}, ${email}, ${product_id})`;
    db.query(queryToUse, callback);
  },
  // addAnswer: (answer, question_id, callback) => {
  //   const {body, name, email, photos} = answer;
  //   let queryToUse = `INSERT INTO answers {body, answerer_name, anwerer_email, }`
  // }
};