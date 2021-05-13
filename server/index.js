// const express = require('express');
// const { Client } = require('pg');
// const connectionString = 'postgres://richard:postgres@localhost:5432/postgres';
// const client = new Client({
//     connectionString: connectionString
// });
// client.connect();
// var app = express();
// app.set('port', process.env.PORT || 3000);
// app.get('/testdb', function (req, res, next) {
//     client.query('SELECT * FROM Employee where id = $1', [1], function (err, result) {
//         if (err) {
//             console.log(err);
//             res.status(400).send(err);
//         }
//         res.status(200).send(result.rows);
//     });
//     // console.log('hello world!')
// });
// app.listen(3000, function () {
//     console.log('Server is running.. on Port 3000');
// });

const express = require('express');
const app = express();
const port = 3000;
// const controllers = require('./controllers');
const path = require('path');
const db = require('../database/db.js')
const controller = require('./controllers/controller.js');

app.use(express.json());
app.use(express.urlencoded({extended: false}));
// app.param('product_id', (req, res, next, product_id) => {
//   next();
// });

// route handler for /questions endpoint with optional questionId parameter
app.get('/qa/questions/', controller.getQuestions);
app.get('/qa/questions/:question_id/answers', controller.getAnswers);
app.post('/qa/questions', controller.addQuestion);
// app.post('/qa/questions/:question_id/answers', controller.addAnswer);
// app.put('/qa/questions/:question_id/helpful', controller.markQuestionAsHelpful);
// app.put('/qa/questions/:question_id/report', controller.reportQuestion);
// app.put('/qa/answers/:answer_id/helpful', controller.markAnswerAsHelpful);
// app.put('/qa/answers/:answer_id/report', controller.reportAnswer);
// app.get('/qa/questions/:question_id/answers' , (req, res) => {

// })



app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
// if product_id parameter is not specified
// else {
//   // console.log(product_id);
//   // console.log('how are you doing');
//   db.query(`SELECT * FROM questions LIMIT 3`, (err, result) => {
//     if (err) {
//             console.log(err);
//             res.status(400).send(err);
//         }
//           res.status(200).send(result);


//     });
// }