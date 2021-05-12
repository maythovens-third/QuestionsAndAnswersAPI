const model = require('../models/model.js');

module.exports = {
  getQuestions: (req, res) => {
    // res.send('Hello World!')

    let product_id = req.query.product_id;
    let count = req.query.count;
    let page = req.query.page;

    model.getQuestionsModel(product_id, count, page, (err, result) => {
      if (err) {
        console.log(err);
        res.status(400).send(err);
      }
      res.status(200).send(result);
    });
  },
  getAnswers: (req, res) => {

  }
};