const express = require('express');
const app = express();
const port = 3000;
// const controllers = require('./controllers');
const path = require('path');
const db = require('../database/db.js')
const controller = require('./controllers/controller.js');

app.use(express.json());
app.use(express.urlencoded({extended: false}));

// route handler for /questions endpoint with optional questionId parameter
app.get('/qa/questions/', controller.getQuestions);
app.get('/qa/questions/:question_id/answers', controller.getAnswers);
app.post('/qa/questions', controller.addQuestion);

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
