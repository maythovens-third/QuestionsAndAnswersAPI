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

// app.param('product_id', (req, res, next, product_id) => {
//   next();
// });

// route handler for /questions endpoint with optional questionId parameter
app.get('/qa/questions/:product_id/:page/:co', (req, res) => {
  // res.send('Hello World!')

  let product_id = req.query.product_id;
  // var page = req.query.page;
  let count = req.query.count;
  let page = req.query.page;
  // if product_id parameter is specified
    let queryToUse;
    if (product_id) {
      queryToUse = `SELECT * FROM questions WHERE product_id = ${product_id} LIMIT ${(page || 1) * (count || 5) - (count || 5)}, ${(count || 5)}`;
    } else {
      queryToUse = `SELECT * FROM questions LIMIT ${(page || 1) * (count || 5) - (count || 5)}, ${(count || 5)}`;
    }

    db.query(queryToUse, (err, result) => {
      if (err) {
              console.log(err);
              res.status(400).send(err);
          }
            res.status(200).send(result);


      });

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

});

app.get('/qa/questions/:question_id/answers' , (req, res) => {

})



app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})