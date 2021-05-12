var fs = require('fs');
const csv = require('fast-csv');
const db = require('./db');
const parseDate = date => {
    // parse number from string
    // if the number is valid date, create Date object from number
    // else create Date object from string
    // return the date
    const dateParsed = parseInt(date);
    const dateFormatted = isNaN(dateParsed) ? new Date(date) : new Date(dateParsed);
    if (dateFormatted.toString() === "Invalid Date") {
      return null;
    } else {
      return dateFormatted;
    }
}
const parseBoolean = bool => {
    // if string is "true" return true, otherwise return false
    return bool.toLowerCase() === "true";
}
const parseRating = rating => {
    // if the rating is greater than 5, return  5
    // else return rating
    // if the rating is a string
    // attempt to parse string, else return 0
}
let counter = 0;
const maxConcurrent = 10;
const numConcurrent = 0;
let isPaused = false;
console.time('readFile');
let csvStream = csv.parseFile("./csv/reviews_temp.csv", {
    headers: true,
    }).transform(record => ({
        ...record,
        date: parseDate(record.date),
        recommend: parseBoolean(record.recommend),
        reported: parseBoolean(record.reported),
        rating: parseRating(record.rating),
        helpfulness: parseRating(record.helpfulness)
    }))
    .on("data", function(record){
        const q = `INSERT INTO reviews SET ?`;
        db.query(q, record, (err) => {
            if (err) {
                throw err
            }
            counter++;
            if (counter % 100 === 0) {
                console.log(counter);
            }
        })
    }).on("end", (count) => {
        console.log(`${count} rows successfully read.`);
        console.timeEnd('readFile');
        db.end();
    }).on("error", err => {
        console.log(err);
    });