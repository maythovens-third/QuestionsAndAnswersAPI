const db = require('../../database/db.js');

module.exports = {
  getQuestionsModel: (product_id, count, page, callback) => {

    let queryToUse;

    // if product_id parameter is specified
      if (product_id) {
        queryToUse = `SELECT * FROM questions WHERE product_id = ${product_id} LIMIT ${(page || 1) * (count || 5) - (count || 5)}, ${(count || 5)}`;
      } else {
        queryToUse = `SELECT * FROM questions LIMIT ${(page || 1) * (count || 5) - (count || 5)}, ${(count || 5)}`;
      }

      db.query(queryToUse, callback);
  }
}