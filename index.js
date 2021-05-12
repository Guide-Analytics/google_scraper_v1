const express = require('express');
const app = express();

app.use('/', require('./src/main'));

const port = process.env.PORT || 8080;
app.listen(port, () => {
  console.log(`google-scraper: listening on port ${port}`);
});
