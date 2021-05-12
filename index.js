const express = require('express');
const app = express();

const main = require('./src/main.js'));

const port = process.env.PORT || 8080;
app.listen(port, () => {
  console.log(`google-scraper: listening on port ${port}`);
});


exports.app = functions.http.onRequest(app);
module.exports = { app };

main();
