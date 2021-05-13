const model = require('../models/model.js');

module.exports = {
  getQuestions: (req, res) => {
    let product_id = req.query.product_id;
    let count = req.query.count;
    let page = req.query.page;

    model.getQuestions(product_id, count, page, (err, questions) => {
      if (err) {
        console.log(err);
        res.status(400).send(err);
      }
      res.status(200).send(questions);
    });
  },
  getAnswers: (req, res) => {
    let question_id = req.params.question_id;
    let count = req.query.count;
    let page = req.query.page;

    model.getAnswers(question_id, count, page, (err, answers) => {
      if (err) {
        res.status(400).send();
      } else {
        res.status(200).send(answers);
      }
    });
  },
  addQuestion: (req, res) => {
    const question = req.body;
    console.log(req.body);
    model.addQuestion(question, (err, data) => {
      if (err) {
        res.status(400).send();
      } else {
        res.status(200).send('successfully posted question!');
      }
    });
  }
};