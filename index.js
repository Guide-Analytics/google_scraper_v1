const express = require('express');
const app = express();

const mmFn = require('./src/main.js'));

export.mainFn = async (req, res) => {
  const port = process.env.PORT || 8080;
  app.listen(port, () => {
    console.log(`google-scraper: listening on port ${port}`);
  });

  mmFn();

};
