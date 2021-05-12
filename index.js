const express = require('express');
const app = express();

app.get('/', (req, res) => {

});

const port = process.env.PORT || 8080;
app.listen(port, () => {
  console.log(`google-scraper: listening on port ${port}`);
});
